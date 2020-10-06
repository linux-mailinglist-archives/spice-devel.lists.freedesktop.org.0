Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25C1C284B5F
	for <lists+spice-devel@lfdr.de>; Tue,  6 Oct 2020 14:09:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F7916E138;
	Tue,  6 Oct 2020 12:09:26 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 161986E138
 for <spice-devel@lists.freedesktop.org>; Tue,  6 Oct 2020 12:09:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1601986164;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+zToWmSFuh7AToU2ffZWlOJwUpTXHRbEkVwoqNo3F5M=;
 b=QasjymFiL14bUcvkJTOdC4WMMo0AQva+Q0CifA+/OcaVqYsDJf7rtnWviwdRrrdmuHPPPo
 OYb6DgSFrdNazpCMtKq0Z3reilgWYr+QqxC+X/1hQxJ5zVpSvmo5Cee/zxUEeknlpZwY9L
 QSGUoOjlrD5ADoC6oK28FoxwgwP05yI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-433-ZYLCms02O4imcNTfybDSAw-1; Tue, 06 Oct 2020 08:09:22 -0400
X-MC-Unique: ZYLCms02O4imcNTfybDSAw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0E6EF8030A8;
 Tue,  6 Oct 2020 12:09:21 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.40.194.31])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 304E45C1BD;
 Tue,  6 Oct 2020 12:09:18 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue,  6 Oct 2020 13:08:58 +0100
Message-Id: <20201006120901.17027-4-fziglio@redhat.com>
In-Reply-To: <20201006120901.17027-1-fziglio@redhat.com>
References: <20201006120901.17027-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=fziglio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Spice-devel] [PATCH spice-common 3/6] quic: Check RLE lengths
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

Avoid buffer overflows decoding images. On compression we compute
lengths till end of line so it won't cause regressions.
Proved by fuzzing the code.

Signed-off-by: Frediano Ziglio <freddy77@gmail.com>
Acked-by: Uri Lublin <uril@redhat.com>
---
 common/quic_tmpl.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/common/quic_tmpl.c b/common/quic_tmpl.c
index ecd6f3f..ebae992 100644
--- a/common/quic_tmpl.c
+++ b/common/quic_tmpl.c
@@ -563,7 +563,11 @@ static void FNAME_DECL(uncompress_row_seg)(const PIXEL * const prev_row,
 do_run:
         state->waitcnt = stopidx - i;
         run_index = i;
-        run_end = i + decode_state_run(encoder, state);
+        run_end = decode_state_run(encoder, state);
+        if (run_end < 0 || run_end > (end - i)) {
+            encoder->usr->error(encoder->usr, "wrong RLE\n");
+        }
+        run_end += i;
 
         for (; i < run_end; i++) {
             UNCOMPRESS_PIX_START(&cur_row[i]);
-- 
2.26.2

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
