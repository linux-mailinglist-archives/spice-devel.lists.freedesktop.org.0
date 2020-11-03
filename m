Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C533B2A409C
	for <lists+spice-devel@lfdr.de>; Tue,  3 Nov 2020 10:49:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A48B76E89B;
	Tue,  3 Nov 2020 09:49:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 679C26E89B
 for <spice-devel@lists.freedesktop.org>; Tue,  3 Nov 2020 09:49:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1604396948;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=WqlFmKYKQ2R03dzyeOQgKuNeHdQXmz6jXLw/lDEliiQ=;
 b=cDSrWQidjT+k0KYzTGgUF7BiMFZSZtIOoDRdxWiBA17zlUOeEJMQJa3k8mWedb25RVKgyw
 Mge7fVFjNGbqd/9lyRzCDm4LvXB9zo+4XcNAOZbR9AIfplrS5BxerrsKc4h1uMJwJYfYaw
 QQ2r4e5R4qbs/woAKB7ycpeZbBE791A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-270-S-ZcKxepMeerX3LjGfGayA-1; Tue, 03 Nov 2020 04:49:06 -0500
X-MC-Unique: S-ZcKxepMeerX3LjGfGayA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4B1E810B9CB3;
 Tue,  3 Nov 2020 09:48:41 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.16])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E3788385;
 Tue,  3 Nov 2020 09:48:39 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue,  3 Nov 2020 09:48:26 +0000
Message-Id: <20201103094834.7691-2-fziglio@redhat.com>
In-Reply-To: <20201103094834.7691-1-fziglio@redhat.com>
References: <20201103094834.7691-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=fziglio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Spice-devel] [PATCH vd_agent_linux 02/10] Avoids unchecked file
 transfer IDs allocation and usage
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

Avoid agents allocating file transfers.
The "active_xfers" entries are now inserted when client start sending
files.
Also different agents cannot mess with other agent transfers as a
transfer is bound to a single agent.

This issue was reported by SUSE security team.

Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
Acked-by: Uri Lublin <uril@redhat.com>
---
 src/vdagentd/vdagentd.c | 28 ++++++++++++++++++++++------
 1 file changed, 22 insertions(+), 6 deletions(-)

diff --git a/src/vdagentd/vdagentd.c b/src/vdagentd/vdagentd.c
index a2b74bb..f15989d 100644
--- a/src/vdagentd/vdagentd.c
+++ b/src/vdagentd/vdagentd.c
@@ -381,9 +381,11 @@ static void do_client_file_xfer(VirtioPort *vport,
                s->id, VD_AGENT_FILE_XFER_STATUS_SESSION_LOCKED, NULL, 0);
             return;
         }
-        udscs_write(active_session_conn, VDAGENTD_FILE_XFER_START, 0, 0,
-                    data, message_header->size);
-        return;
+        msg_type = VDAGENTD_FILE_XFER_START;
+        id = s->id;
+        // associate the id with the active connection
+        g_hash_table_insert(active_xfers, GUINT_TO_POINTER(id), active_session_conn);
+        break;
     }
     case VD_AGENT_FILE_XFER_STATUS: {
         VDAgentFileXferStatusMessage *s = (VDAgentFileXferStatusMessage *)data;
@@ -408,6 +410,12 @@ static void do_client_file_xfer(VirtioPort *vport,
         return;
     }
     udscs_write(conn, msg_type, 0, 0, data, message_header->size);
+
+    // client told that transfer is ended, agents too stop the transfer
+    // and release resources
+    if (message_header->type == VD_AGENT_FILE_XFER_STATUS) {
+        g_hash_table_remove(active_xfers, GUINT_TO_POINTER(id));
+    }
 }
 
 static void forward_data_to_session_agent(uint32_t type, uint8_t *data, size_t size)
@@ -1012,6 +1020,15 @@ static void do_agent_file_xfer_status(UdscsConnection             *conn,
     const gchar *log_msg = NULL;
     guint data_size = 0;
 
+    UdscsConnection *task_conn = g_hash_table_lookup(active_xfers, task_id);
+    if (task_conn == NULL || task_conn != conn) {
+        // Protect against misbehaving agent.
+        // Ignore the message, but do not disconnect the agent, to protect against
+        // a misbehaving client that tries to disconnect a good agent
+        // e.g. by sending a new task and immediately cancelling it.
+        return;
+    }
+
     /* header->arg1 = file xfer task id, header->arg2 = file xfer status */
     switch (header->arg2) {
         case VD_AGENT_FILE_XFER_STATUS_NOT_ENOUGH_SPACE:
@@ -1026,10 +1043,9 @@ static void do_agent_file_xfer_status(UdscsConnection             *conn,
     send_file_xfer_status(virtio_port, log_msg, header->arg1, header->arg2,
                           data, data_size);
 
-    if (header->arg2 == VD_AGENT_FILE_XFER_STATUS_CAN_SEND_DATA)
-        g_hash_table_insert(active_xfers, task_id, conn);
-    else
+    if (header->arg2 != VD_AGENT_FILE_XFER_STATUS_CAN_SEND_DATA) {
         g_hash_table_remove(active_xfers, task_id);
+    }
 }
 
 static void agent_read_complete(UdscsConnection *conn,
-- 
2.26.2

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
