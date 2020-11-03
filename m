Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F42A2A40A4
	for <lists+spice-devel@lfdr.de>; Tue,  3 Nov 2020 10:49:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 400B96E8A2;
	Tue,  3 Nov 2020 09:49:15 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8907D6E89F
 for <spice-devel@lists.freedesktop.org>; Tue,  3 Nov 2020 09:49:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1604396952;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=CmEt1jOpwgAAWGjqe5bCZOWR32JuyB5rJAenJ8zaXP4=;
 b=W0MfvnfP8k6BgxXQfLmbLr0ZksVIMSwXVr9YiW7rxYz77f0ObX6eNtwAVkg7jPm/25DL8O
 ZML5MyESLZlpMM98JIDW8q27LlC/KaeRovLViwVdk1hFVT0mN36He/qnYok/CuKCff6wsk
 4XJgy2SNe1ESj9IYqcBmRHy5aDDTfMI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-178-yxC0pG5PPj-QZpVVqijBGA-1; Tue, 03 Nov 2020 04:49:10 -0500
X-MC-Unique: yxC0pG5PPj-QZpVVqijBGA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AEB93EC1B6;
 Tue,  3 Nov 2020 09:48:51 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.16])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 9FBA2385;
 Tue,  3 Nov 2020 09:48:50 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue,  3 Nov 2020 09:48:31 +0000
Message-Id: <20201103094834.7691-7-fziglio@redhat.com>
In-Reply-To: <20201103094834.7691-1-fziglio@redhat.com>
References: <20201103094834.7691-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=fziglio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Spice-devel] [PATCH vd_agent_linux 07/10] vdagentd: Limit number
 of agents per session to 1
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

Signed-off-by: Frediano Ziglio <freddy77@gmail.com>
Acked-by: Uri Lublin <uril@redhat.com>
---
 src/vdagentd/vdagentd.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/src/vdagentd/vdagentd.c b/src/vdagentd/vdagentd.c
index 59aa523..92885b5 100644
--- a/src/vdagentd/vdagentd.c
+++ b/src/vdagentd/vdagentd.c
@@ -952,6 +952,20 @@ static gboolean remove_active_xfers(gpointer key, gpointer value, gpointer conn)
         return 0;
 }
 
+/* Check if this connection matches the passed session */
+static int connection_matches_session(UdscsConnection *conn, void *priv)
+{
+    const char *session = priv;
+    const struct agent_data *agent_data = g_object_get_data(G_OBJECT(conn), "agent_data");
+
+    if (!agent_data || !agent_data->session ||
+        strcmp(agent_data->session, session) != 0) {
+        return 0;
+    }
+
+    return 1;
+}
+
 /* Check a given process has a given UID */
 static bool check_uid_of_pid(pid_t pid, uid_t uid)
 {
@@ -1006,6 +1020,16 @@ static void agent_connect(UdscsConnection *conn)
             udscs_server_destroy_connection(server, conn);
             return;
         }
+
+        // Check there are no other connection for this session
+        // Note that "conn" is not counted as "agent_data" is still not attached to it
+        if (udscs_server_for_all_clients(server, connection_matches_session,
+                                         agent_data->session) > 0) {
+            syslog(LOG_ERR, "An agent is already connected for this session");
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
