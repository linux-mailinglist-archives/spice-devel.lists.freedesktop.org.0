Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 818B2284B5E
	for <lists+spice-devel@lfdr.de>; Tue,  6 Oct 2020 14:09:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E46C66E461;
	Tue,  6 Oct 2020 12:09:23 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B50776E456
 for <spice-devel@lists.freedesktop.org>; Tue,  6 Oct 2020 12:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1601986161;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=EKXsQ2VtW4liWRuy95n6cq81gzNT98Ca4xtWZkmWPMM=;
 b=NXXe+4Upq1rGMytK0ifUQS8JpN2Ep2pGilrOOdnMDOUxQs7s9ssj5Eu8Dkg8jH8b6fXCBh
 bJq1iwft31B+ijXbaCta1/Um/fhi5+n/HthRGXxRgY3LwofQuzXZj3pG4to6UGIzytNbqj
 KjzVGt0l8MkP3X5tYKg3H8bER5QVh84=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-79-tZ1v6sK7OWagHdqa-c_UtQ-1; Tue, 06 Oct 2020 08:09:19 -0400
X-MC-Unique: tZ1v6sK7OWagHdqa-c_UtQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 97D1E10866AB;
 Tue,  6 Oct 2020 12:09:18 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.40.194.31])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id D955B5C1BD;
 Tue,  6 Oct 2020 12:09:15 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue,  6 Oct 2020 13:08:57 +0100
Message-Id: <20201006120901.17027-3-fziglio@redhat.com>
In-Reply-To: <20201006120901.17027-1-fziglio@redhat.com>
References: <20201006120901.17027-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=fziglio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Spice-devel] [PATCH spice-common 2/6] quic: Check image size in
 quic_decode_begin
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Cc: Frediano Ziglio <freddy77@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

From: Frediano Ziglio <freddy77@gmail.com>

Avoid some overflow in code due to images too big or
negative numbers.

Signed-off-by: Frediano Ziglio <freddy77@gmail.com>
Acked-by: Uri Lublin <uril@redhat.com>
---
 common/quic.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/common/quic.c b/common/quic.c
index bc753ca..6815316 100644
--- a/common/quic.c
+++ b/common/quic.c
@@ -56,6 +56,9 @@ typedef uint8_t BYTE;
 #define MINwminext 1
 #define MAXwminext 100000000
 
+/* Maximum image size in pixels, mainly to avoid possible integer overflows */
+#define SPICE_MAX_IMAGE_SIZE (512 * 1024 * 1024 - 1)
+
 typedef struct QuicFamily {
     unsigned int nGRcodewords[MAXNUMCODES];      /* indexed by code number, contains number of
                                                     unmodified GR codewords in the code */
@@ -1165,6 +1168,16 @@ int quic_decode_begin(QuicContext *quic, uint32_t *io_ptr, unsigned int num_io_w
     height = encoder->io_word;
     decode_eat32bits(encoder);
 
+    if (width <= 0 || height <= 0) {
+        encoder->usr->warn(encoder->usr, "invalid size\n");
+        return QUIC_ERROR;
+    }
+
+    /* avoid too big images */
+    if ((uint64_t) width * height > SPICE_MAX_IMAGE_SIZE) {
+        encoder->usr->error(encoder->usr, "image too large\n");
+    }
+
     quic_image_params(encoder, type, &channels, &bpc);
 
     if (!encoder_reset_channels(encoder, channels, width, bpc)) {
-- 
2.26.2

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
