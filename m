Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3FB02A40A0
	for <lists+spice-devel@lfdr.de>; Tue,  3 Nov 2020 10:49:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 927406E89E;
	Tue,  3 Nov 2020 09:49:12 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FC1D6E89E
 for <spice-devel@lists.freedesktop.org>; Tue,  3 Nov 2020 09:49:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1604396950;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=8if6UFky4py4XwEEM/IfW+t5eGr6YkYqJi3B29cCVuI=;
 b=LbRYWVj6fEeghctL8HvZ49WzNmTS4l7OtsCk7BbuiOXVngdzAhxXCKntUF95H6rOBxy7v4
 7mPtfccdwstqVT0kVlWPF1uPcyoYfKYXUIicKBPyyetCA6CFhW4S+gcAF2V52reZgD7R7P
 2AG/mw9VonY/8i2LIlUl23mGYFa3PIY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-301-cLW7_0nsOi6ffDCUD4aovg-1; Tue, 03 Nov 2020 04:49:06 -0500
X-MC-Unique: cLW7_0nsOi6ffDCUD4aovg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2656010B9CC9;
 Tue,  3 Nov 2020 09:48:44 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.16])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 5FB0A385;
 Tue,  3 Nov 2020 09:48:43 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue,  3 Nov 2020 09:48:28 +0000
Message-Id: <20201103094834.7691-4-fziglio@redhat.com>
In-Reply-To: <20201103094834.7691-1-fziglio@redhat.com>
References: <20201103094834.7691-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=fziglio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Spice-devel] [PATCH vd_agent_linux 04/10] Avoids unlimited agent
 connections
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

Limit the number of agents that can be connected.
Avoids reaching the maximum number of files in a process.
Beside one file descriptor per agent the daemon open just some
other fixed number of files.

This issue was reported by SUSE security team.

Signed-off-by: Frediano Ziglio <freddy77@gmail.com>
---
 src/udscs.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/src/udscs.c b/src/udscs.c
index 7c99eed..3df67b3 100644
--- a/src/udscs.c
+++ b/src/udscs.c
@@ -30,6 +30,12 @@
 #include "vdagentd-proto-strings.h"
 #include "vdagent-connection.h"
 
+// Maximum number of connected agents.
+// Avoid DoS from agents.
+// As each connection end up taking a file descriptor is good to have a limit
+// less than the number of file descriptors in the process (by default 1024).
+#define MAX_CONNECTED_AGENTS 128
+
 struct _UdscsConnection {
     VDAgentConnection parent_instance;
     int debug;
@@ -254,6 +260,12 @@ static gboolean udscs_server_accept_cb(GSocketService    *service,
     struct udscs_server *server = user_data;
     UdscsConnection *new_conn;
 
+    /* prevents DoS having too many agents attached */
+    if (g_list_length(server->connections) >= MAX_CONNECTED_AGENTS) {
+        syslog(LOG_ERR, "Too many agents connected");
+        return TRUE;
+    }
+
     new_conn = g_object_new(UDSCS_TYPE_CONNECTION, NULL);
     new_conn->debug = server->debug;
     new_conn->read_callback = server->read_callback;
-- 
2.26.2

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
