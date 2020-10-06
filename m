Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 71471284B5D
	for <lists+spice-devel@lfdr.de>; Tue,  6 Oct 2020 14:09:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A453F6E1AA;
	Tue,  6 Oct 2020 12:09:21 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A92036E1AA
 for <spice-devel@lists.freedesktop.org>; Tue,  6 Oct 2020 12:09:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1601986159;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=G9o+L7+CNNU2Nqzk+yw8ibAZYt8BUUDszTKXyScVSPE=;
 b=AEK2eNdglyE4qLwm+sY7DkB37e4hANSVmshT9wmU7hgY6KVcKeIU+RWhoT729525TzwRyR
 yiz5D6uDmxYyZo+8jL8496EsV10N+DXAeIc8p8INdU+alPMuD16aowhAoYSGON8OpkmcQR
 kzYb+SilSZx4pULf33JKIJxM2Rrwn8w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-459-6ZK8_G_fPMiaSoSLwofTrA-1; Tue, 06 Oct 2020 08:09:16 -0400
X-MC-Unique: 6ZK8_G_fPMiaSoSLwofTrA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1CBBA801817;
 Tue,  6 Oct 2020 12:09:15 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.40.194.31])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3AA885C1BD;
 Tue,  6 Oct 2020 12:09:09 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue,  6 Oct 2020 13:08:56 +0100
Message-Id: <20201006120901.17027-2-fziglio@redhat.com>
In-Reply-To: <20201006120901.17027-1-fziglio@redhat.com>
References: <20201006120901.17027-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=fziglio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Spice-devel] [PATCH spice-common 1/6] quic: Check we have some
 data to start decoding quic image
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

All paths already pass some data to quic_decode_begin but for the
test check it, it's not that expensive test.
Checking for not 0 is enough, all other words will potentially be
read calling more_io_words but we need one to avoid a potential
initial buffer overflow or deferencing an invalid pointer.

Signed-off-by: Frediano Ziglio <freddy77@gmail.com>
Acked-by: Uri Lublin <uril@redhat.com>
---
 common/quic.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/quic.c b/common/quic.c
index e2dee0f..bc753ca 100644
--- a/common/quic.c
+++ b/common/quic.c
@@ -1136,7 +1136,7 @@ int quic_decode_begin(QuicContext *quic, uint32_t *io_ptr, unsigned int num_io_w
     int channels;
     int bpc;
 
-    if (!encoder_reset(encoder, io_ptr, io_ptr_end)) {
+    if (!num_io_words || !encoder_reset(encoder, io_ptr, io_ptr_end)) {
         return QUIC_ERROR;
     }
 
-- 
2.26.2

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
