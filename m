Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96EF5284B60
	for <lists+spice-devel@lfdr.de>; Tue,  6 Oct 2020 14:09:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A9DC6E1DE;
	Tue,  6 Oct 2020 12:09:29 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F27C56E456
 for <spice-devel@lists.freedesktop.org>; Tue,  6 Oct 2020 12:09:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1601986167;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nCzk34DOtpR1s/zaEBjchJ23KF7xq5szy5TY5TSx5V8=;
 b=flk7vk73vYZU50TC0oUyzDJo2Ndrywh4FKNntXeevyRIFhJ83TV1PXJOwbLjPABK41IkTe
 Bt8DYXvBS6h9aUyru7A2v+WIpt25SBasQe0NJQHNPgrWYMok6Vn0s/4OPm2ab/sJiICtau
 mWydMc15Vc+ZnDQNd1qXhcESQKb2KWM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-462-msb00FwwP1GtEggmTVK7kA-1; Tue, 06 Oct 2020 08:09:24 -0400
X-MC-Unique: msb00FwwP1GtEggmTVK7kA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B07AF87950B;
 Tue,  6 Oct 2020 12:09:23 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.40.194.31])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id CE8875C1BD;
 Tue,  6 Oct 2020 12:09:21 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue,  6 Oct 2020 13:08:59 +0100
Message-Id: <20201006120901.17027-5-fziglio@redhat.com>
In-Reply-To: <20201006120901.17027-1-fziglio@redhat.com>
References: <20201006120901.17027-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=fziglio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Spice-devel] [PATCH spice-common 4/6] quic: Avoid possible buffer
 overflow in find_bucket
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

Proved by fuzzing the code.

Signed-off-by: Frediano Ziglio <freddy77@gmail.com>
Acked-by: Uri Lublin <uril@redhat.com>
---
 common/quic_family_tmpl.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/common/quic_family_tmpl.c b/common/quic_family_tmpl.c
index 8a5f7d2..6cc051b 100644
--- a/common/quic_family_tmpl.c
+++ b/common/quic_family_tmpl.c
@@ -103,7 +103,12 @@ static s_bucket *FNAME(find_bucket)(Channel *channel, const unsigned int val)
 {
     spice_extra_assert(val < (0x1U << BPC));
 
-    return channel->_buckets_ptrs[val];
+    /* The and (&) here is to avoid buffer overflows in case of garbage or malicious
+     * attempts. Is much faster then using comparisons and save us from such situations.
+     * Note that on normal build the check above won't be compiled as this code path
+     * is pretty hot and would cause speed regressions.
+     */
+    return channel->_buckets_ptrs[val & ((1U << BPC) - 1)];
 }
 
 #undef FNAME
-- 
2.26.2

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
