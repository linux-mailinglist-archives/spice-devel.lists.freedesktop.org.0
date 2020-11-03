Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 50BE52A40A3
	for <lists+spice-devel@lfdr.de>; Tue,  3 Nov 2020 10:49:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F2186E8A4;
	Tue,  3 Nov 2020 09:49:15 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D862F6E89F
 for <spice-devel@lists.freedesktop.org>; Tue,  3 Nov 2020 09:49:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1604396951;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nrVIiRX5mhsZutuENvms2ufws9mx3dTVLOsd0TO4Iwo=;
 b=UJMhUEM0wbI2AYpNp27TQcI6be0JI5MWRKd/b5kEU1sLiJIK6bZKoEwViJQsdIyieK4ZbR
 /SJImDZA6bdaEHBjU3K2PORJrsT+jJ8aMKmK51Db+fWUobXVsViOWg27PQBwuaSxh2cRKc
 CVvWOkY1w1qg3y1j0jNSOXb8q+87dCE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-293-R1cJUfGeP6SngQkGgWYXhA-1; Tue, 03 Nov 2020 04:49:08 -0500
X-MC-Unique: R1cJUfGeP6SngQkGgWYXhA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3573B8030DD;
 Tue,  3 Nov 2020 09:48:50 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.16])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 5321021E8F;
 Tue,  3 Nov 2020 09:48:49 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue,  3 Nov 2020 09:48:30 +0000
Message-Id: <20201103094834.7691-6-fziglio@redhat.com>
In-Reply-To: <20201103094834.7691-1-fziglio@redhat.com>
References: <20201103094834.7691-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=fziglio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Spice-devel] [PATCH vd_agent_linux 06/10] Better check for sessions
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

Do not allow other users to hijack a session checking that
the process is launched by the owner of the session.

Signed-off-by: Frediano Ziglio <freddy77@gmail.com>
Acked-by: Uri Lublin <uril@redhat.com>
---
 src/vdagentd/console-kit.c        | 67 +++++++++++++++++++++++++++++++
 src/vdagentd/dummy-session-info.c |  5 +++
 src/vdagentd/session-info.h       |  3 ++
 src/vdagentd/systemd-login.c      |  9 +++++
 src/vdagentd/vdagentd.c           | 10 ++++-
 5 files changed, 93 insertions(+), 1 deletion(-)

diff --git a/src/vdagentd/console-kit.c b/src/vdagentd/console-kit.c
index fcdb0b6..77429bc 100644
--- a/src/vdagentd/console-kit.c
+++ b/src/vdagentd/console-kit.c
@@ -568,3 +568,70 @@ exit:
     }
     return ret;
 }
+
+uid_t session_info_uid_for_session(struct session_info *info, const char *session)
+{
+    DBusError error;
+    DBusMessage *message = NULL;
+    DBusMessage *reply = NULL;
+    uint32_t uid;
+    uid_t ret = -1;
+    const char *err_msg;
+
+    g_return_val_if_fail(info != NULL, ret);
+    g_return_val_if_fail(info->connection != NULL, ret);
+    g_return_val_if_fail(info->active_session != NULL, ret);
+
+    dbus_error_init(&error);
+
+    err_msg = "(console-kit) Unable to create dbus message for GetUnixUser";
+    message = dbus_message_new_method_call(INTERFACE_CONSOLE_KIT,
+                                           session,
+                                           INTERFACE_CONSOLE_KIT_SESSION,
+                                           "GetUnixUser");
+    if (message == NULL) {
+        goto exit;
+    }
+
+    err_msg = "(console-kit) GetUnixUser failed";
+    reply = dbus_connection_send_with_reply_and_block(info->connection,
+                                                      message,
+                                                      -1,
+                                                      &error);
+    if (reply == NULL || dbus_error_is_set(&error)) {
+        goto exit;
+    }
+
+    dbus_error_init(&error);
+    err_msg = "(console-kit) fail to get session-type from reply";
+    if (!dbus_message_get_args(reply,
+                               &error,
+                               DBUS_TYPE_UINT32, &uid,
+                               DBUS_TYPE_INVALID)) {
+        goto exit;
+    }
+
+    if (info->verbose) {
+        syslog(LOG_DEBUG, "(console-kit) unix user is '%u'", (unsigned) uid);
+    }
+
+    err_msg = NULL;
+    ret = uid;
+
+exit:
+    if (err_msg) {
+        if (dbus_error_is_set(&error)) {
+            syslog(LOG_ERR, "%s: %s", err_msg, error.message);
+            dbus_error_free(&error);
+        } else {
+            syslog(LOG_ERR, "%s", err_msg);
+        }
+    }
+    if (reply != NULL) {
+        dbus_message_unref(reply);
+    }
+    if (message != NULL) {
+        dbus_message_unref(message);
+    }
+    return ret;
+}
diff --git a/src/vdagentd/dummy-session-info.c b/src/vdagentd/dummy-session-info.c
index 7fd1eea..137c01a 100644
--- a/src/vdagentd/dummy-session-info.c
+++ b/src/vdagentd/dummy-session-info.c
@@ -55,3 +55,8 @@ gboolean session_info_session_is_locked(G_GNUC_UNUSED struct session_info *si)
 {
     return FALSE;
 }
+
+uid_t session_info_uid_for_session(struct session_info *si, const char *session)
+{
+    return -1;
+}
diff --git a/src/vdagentd/session-info.h b/src/vdagentd/session-info.h
index c8edb86..96aa8d3 100644
--- a/src/vdagentd/session-info.h
+++ b/src/vdagentd/session-info.h
@@ -40,4 +40,7 @@ char *session_info_session_for_pid(struct session_info *ck, uint32_t pid);
 gboolean session_info_session_is_locked(struct session_info *si);
 gboolean session_info_is_user(struct session_info *si);
 
+/* get owner of a given session */
+uid_t session_info_uid_for_session(struct session_info *si, const char *session);
+
 #endif
diff --git a/src/vdagentd/systemd-login.c b/src/vdagentd/systemd-login.c
index 2d2311c..42ccc5f 100644
--- a/src/vdagentd/systemd-login.c
+++ b/src/vdagentd/systemd-login.c
@@ -394,3 +394,12 @@ gboolean session_info_is_user(struct session_info *si)
 
     return ret;
 }
+
+uid_t session_info_uid_for_session(struct session_info *si, const char *session)
+{
+    uid_t ret = -1;
+    if (sd_session_get_uid(session, &ret) < 0) {
+        return -1;
+    }
+    return ret;
+}
diff --git a/src/vdagentd/vdagentd.c b/src/vdagentd/vdagentd.c
index fc22338..59aa523 100644
--- a/src/vdagentd/vdagentd.c
+++ b/src/vdagentd/vdagentd.c
@@ -988,12 +988,20 @@ static void agent_connect(UdscsConnection *conn)
 
         agent_data->session = session_info_session_for_pid(session_info, pid_uid.pid);
 
+        uid_t session_uid = session_info_uid_for_session(session_info, agent_data->session);
+
         /* Check that the UID of the PID did not change, this should be done after
          * computing the session to avoid race conditions.
          * This can happen as vdagent_connection_get_peer_pid_uid get information
          * from the time of creating the socket, but the process in the meantime
          * have been replaced */
-        if (!check_uid_of_pid(pid_uid.pid, pid_uid.uid)) {
+        if (!check_uid_of_pid(pid_uid.pid, pid_uid.uid) ||
+            /* Check that the user launching the Agent is the same as session one
+             * or root user.
+             * This prevents session hijacks from other users. */
+            (pid_uid.uid != 0 && pid_uid.uid != session_uid)) {
+            syslog(LOG_ERR, "UID mismatch: UID=%u PID=%u suid=%u", pid_uid.uid,
+                   pid_uid.pid, session_uid);
             agent_data_destroy(agent_data);
             udscs_server_destroy_connection(server, conn);
             return;
-- 
2.26.2

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
