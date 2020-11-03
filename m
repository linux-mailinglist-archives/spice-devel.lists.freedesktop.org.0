Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 596062A40A2
	for <lists+spice-devel@lfdr.de>; Tue,  3 Nov 2020 10:49:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35D256E8A0;
	Tue,  3 Nov 2020 09:49:14 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4026B6E89E
 for <spice-devel@lists.freedesktop.org>; Tue,  3 Nov 2020 09:49:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1604396951;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vcJOrjNdCi6ESvxXDv06TLoZxokSlGD2e1+RgAaM6Po=;
 b=F3ggSjtpOu/twsIIUlgLvUg1BiKMh65urv9Ek/mgUBE58+rLFE9J2NjwMGB6yvVzEyloZ+
 h3+R9vbO10zwCOiOs+2mO3jh3fwhVSlZuvERqNWtfg1rjmgMRTbXDLSaBuk5+6Cg0DOuav
 mQKRWpou9x8aKaNI8C1vnpF8D332Poc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-268-5794DAR0NwSkJYib0wkyoQ-1; Tue, 03 Nov 2020 04:49:08 -0500
X-MC-Unique: 5794DAR0NwSkJYib0wkyoQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F1312E9EED;
 Tue,  3 Nov 2020 09:48:48 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.16])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 913AD385;
 Tue,  3 Nov 2020 09:48:44 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue,  3 Nov 2020 09:48:29 +0000
Message-Id: <20201103094834.7691-5-fziglio@redhat.com>
In-Reply-To: <20201103094834.7691-1-fziglio@redhat.com>
References: <20201103094834.7691-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=fziglio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Spice-devel] [PATCH vd_agent_linux 05/10] Avoids user session
 hijacking
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

Avoids user hijacking sessions by reusing PID.
In theory an attacker could:
- open a connection to the daemon;
- fork and exit the process but keep the file descriptor open
  (inheriting or duplicating it in forked process);
- force OS to recycle the initial PID, by creating many short lived
  processes.
Daemon would detect the old PID as having the new session.
Check the user to avoid such replacements.

This issue was reported by SUSE security team.

Signed-off-by: Frediano Ziglio <freddy77@gmail.com>
Acked-by: Uri Lublin <uril@redhat.com>
---
 src/vdagent-connection.c | 13 +++++++------
 src/vdagent-connection.h | 13 +++++++++----
 src/vdagentd/vdagentd.c  | 31 +++++++++++++++++++++++++++----
 3 files changed, 43 insertions(+), 14 deletions(-)

diff --git a/src/vdagent-connection.c b/src/vdagent-connection.c
index ff8b88d..8e47e79 100644
--- a/src/vdagent-connection.c
+++ b/src/vdagent-connection.c
@@ -142,24 +142,25 @@ void vdagent_connection_destroy(gpointer p)
     g_object_unref(self);
 }
 
-gint vdagent_connection_get_peer_pid(VDAgentConnection *self,
-                                     GError           **err)
+PidUid vdagent_connection_get_peer_pid_uid(VDAgentConnection *self,
+                                           GError           **err)
 {
     VDAgentConnectionPrivate *priv = vdagent_connection_get_instance_private(self);
     GSocket *sock;
     GCredentials *cred;
-    gint pid = -1;
+    PidUid pid_uid = { -1, -1 };
 
-    g_return_val_if_fail(G_IS_SOCKET_CONNECTION(priv->io_stream), pid);
+    g_return_val_if_fail(G_IS_SOCKET_CONNECTION(priv->io_stream), pid_uid);
 
     sock = g_socket_connection_get_socket(G_SOCKET_CONNECTION(priv->io_stream));
     cred = g_socket_get_credentials(sock, err);
     if (cred) {
-        pid = g_credentials_get_unix_pid(cred, err);
+        pid_uid.pid = g_credentials_get_unix_pid(cred, err);
+        pid_uid.uid = g_credentials_get_unix_user(cred, err);
         g_object_unref(cred);
     }
 
-    return pid;
+    return pid_uid;
 }
 
 /* Performs single write operation,
diff --git a/src/vdagent-connection.h b/src/vdagent-connection.h
index 9d5a212..c515a79 100644
--- a/src/vdagent-connection.h
+++ b/src/vdagent-connection.h
@@ -92,10 +92,15 @@ void vdagent_connection_write(VDAgentConnection *self,
 /* Synchronously write all queued messages to the output stream. */
 void vdagent_connection_flush(VDAgentConnection *self);
 
-/* Returns the PID of the foreign process connected to the socket
- * or -1 with @err set. */
-gint vdagent_connection_get_peer_pid(VDAgentConnection *self,
-                                     GError           **err);
+typedef struct PidUid {
+    pid_t pid;
+    uid_t uid;
+} PidUid;
+
+/* Returns the PID and UID of the foreign process connected to the socket
+ * or fill @err set. */
+PidUid vdagent_connection_get_peer_pid_uid(VDAgentConnection *self,
+                                           GError           **err);
 
 G_END_DECLS
 
diff --git a/src/vdagentd/vdagentd.c b/src/vdagentd/vdagentd.c
index 8462889..fc22338 100644
--- a/src/vdagentd/vdagentd.c
+++ b/src/vdagentd/vdagentd.c
@@ -952,16 +952,28 @@ static gboolean remove_active_xfers(gpointer key, gpointer value, gpointer conn)
         return 0;
 }
 
+/* Check a given process has a given UID */
+static bool check_uid_of_pid(pid_t pid, uid_t uid)
+{
+    char fn[128];
+    struct stat st;
+
+    snprintf(fn, sizeof(fn), "/proc/%u/status", (unsigned) pid);
+    if (stat(fn, &st) != 0 || st.st_uid != uid) {
+        return false;
+    }
+    return true;
+}
+
 static void agent_connect(UdscsConnection *conn)
 {
     struct agent_data *agent_data;
     agent_data = g_new0(struct agent_data, 1);
     GError *err = NULL;
-    gint pid;
 
     if (session_info) {
-        pid = vdagent_connection_get_peer_pid(VDAGENT_CONNECTION(conn), &err);
-        if (err || pid <= 0) {
+        PidUid pid_uid = vdagent_connection_get_peer_pid_uid(VDAGENT_CONNECTION(conn), &err);
+        if (err || pid_uid.pid <= 0) {
             static const char msg[] = "Could not get peer PID, disconnecting new client";
             if (err) {
                 syslog(LOG_ERR, "%s: %s", msg, err->message);
@@ -974,7 +986,18 @@ static void agent_connect(UdscsConnection *conn)
             return;
         }
 
-        agent_data->session = session_info_session_for_pid(session_info, pid);
+        agent_data->session = session_info_session_for_pid(session_info, pid_uid.pid);
+
+        /* Check that the UID of the PID did not change, this should be done after
+         * computing the session to avoid race conditions.
+         * This can happen as vdagent_connection_get_peer_pid_uid get information
+         * from the time of creating the socket, but the process in the meantime
+         * have been replaced */
+        if (!check_uid_of_pid(pid_uid.pid, pid_uid.uid)) {
+            agent_data_destroy(agent_data);
+            udscs_server_destroy_connection(server, conn);
+            return;
+        }
     }
 
     g_object_set_data_full(G_OBJECT(conn), "agent_data", agent_data,
-- 
2.26.2

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
