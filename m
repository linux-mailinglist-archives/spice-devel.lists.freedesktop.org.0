Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B94D2A409E
	for <lists+spice-devel@lfdr.de>; Tue,  3 Nov 2020 10:49:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F368E6E89C;
	Tue,  3 Nov 2020 09:49:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 933E06E89C
 for <spice-devel@lists.freedesktop.org>; Tue,  3 Nov 2020 09:49:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1604396948;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=xK5Qmmq+DnqBxK86F+fBZ7BljzB0o8mrjRqtuin14JI=;
 b=IM9aUHwYu0CuUbcJdtiLJvXBSPmrdGZWqvSfjdAZa9rlMmNdB/fPnDZSptNUU87F3TBvkW
 tac7BnNjwajM6szlxd+kjJ2N/tDie35Rt47Xs8USc6UHC5aCAqtLaCFJ8ruEBlveZwSXgw
 DRQ6nauzgOrO53OZ9qnY2Qr7RoP1lnY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-436-kyjcVLL9Nui5TPcxBvqNAg-1; Tue, 03 Nov 2020 04:49:06 -0500
X-MC-Unique: kyjcVLL9Nui5TPcxBvqNAg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 088B680365A;
 Tue,  3 Nov 2020 09:48:43 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.16])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id AE38E21EC3;
 Tue,  3 Nov 2020 09:48:41 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue,  3 Nov 2020 09:48:27 +0000
Message-Id: <20201103094834.7691-3-fziglio@redhat.com>
In-Reply-To: <20201103094834.7691-1-fziglio@redhat.com>
References: <20201103094834.7691-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=fziglio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Spice-devel] [PATCH vd_agent_linux 03/10] Avoids uncontrolled
 "active_xfers" allocations
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

Limit the number of active file transfers possibly causing DoSes
consuming memory in "active_xfers".

This issue was reported by SUSE security team.

Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
Acked-by: Uri Lublin <uril@redhat.com>
---
 src/vdagentd/vdagentd.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/src/vdagentd/vdagentd.c b/src/vdagentd/vdagentd.c
index f15989d..8462889 100644
--- a/src/vdagentd/vdagentd.c
+++ b/src/vdagentd/vdagentd.c
@@ -47,6 +47,14 @@
 
 #define DEFAULT_UINPUT_DEVICE "/dev/uinput"
 
+// Maximum number of transfers active at any time.
+// Avoid DoS from client.
+// As each transfer could likely end up taking a file descriptor
+// it is good to have a limit less than the number of file descriptors
+// in the process (by default 1024). The daemon do not open file
+// descriptors for the transfers but the agents do.
+#define MAX_ACTIVE_TRANSFERS 128
+
 struct agent_data {
     char *session;
     int width;
@@ -380,6 +388,21 @@ static void do_client_file_xfer(VirtioPort *vport,
                "Cancelling client file-xfer request %u",
                s->id, VD_AGENT_FILE_XFER_STATUS_SESSION_LOCKED, NULL, 0);
             return;
+        } else if (g_hash_table_size(active_xfers) >= MAX_ACTIVE_TRANSFERS) {
+            VDAgentFileXferStatusError error = {
+                GUINT32_TO_LE(VD_AGENT_FILE_XFER_STATUS_ERROR_GLIB_IO),
+                GUINT32_TO_LE(G_IO_ERROR_TOO_MANY_OPEN_FILES),
+            };
+            size_t detail_size = sizeof(error);
+            if (!VD_AGENT_HAS_CAPABILITY(capabilities, capabilities_size,
+                                         VD_AGENT_CAP_FILE_XFER_DETAILED_ERRORS)) {
+                detail_size = 0;
+            }
+            send_file_xfer_status(vport,
+               "Too many transfers ongoing. "
+               "Cancelling client file-xfer request %u",
+               s->id, VD_AGENT_FILE_XFER_STATUS_ERROR, (void*) &error, detail_size);
+            return;
         }
         msg_type = VDAGENTD_FILE_XFER_START;
         id = s->id;
-- 
2.26.2

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
