Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29BD52A409A
	for <lists+spice-devel@lfdr.de>; Tue,  3 Nov 2020 10:49:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CACB6E0B9;
	Tue,  3 Nov 2020 09:49:07 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E704C6E0B9
 for <spice-devel@lists.freedesktop.org>; Tue,  3 Nov 2020 09:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1604396944;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/lpHC9c0vPgEdF7T1D+d7B/cBLra8vLPPEQS6eypLzk=;
 b=gtgs9NRQo+VdFZXPgItWAM3sO7EpFrpx+cV/eOHCHk7h0qX24yk4kwe0vtVFL9bg8hfLzn
 NffROc+y7Pr1OdJXSfqZNeb+HN/0v4nJov5deIK6HIFbae0IilOcm9qVCeCF7SeFZAU0jP
 WQWmasyv5qJpJuq8QY9gfa4JYV1HwLs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-580-mI5AILJjO26s6kcntNPhhA-1; Tue, 03 Nov 2020 04:49:02 -0500
X-MC-Unique: mI5AILJjO26s6kcntNPhhA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E2ABA80EFBF
 for <spice-devel@lists.freedesktop.org>; Tue,  3 Nov 2020 09:48:52 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.16])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 041D3385;
 Tue,  3 Nov 2020 09:48:51 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue,  3 Nov 2020 09:48:32 +0000
Message-Id: <20201103094834.7691-8-fziglio@redhat.com>
In-Reply-To: <20201103094834.7691-1-fziglio@redhat.com>
References: <20201103094834.7691-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=fziglio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Spice-devel] [PATCH vd_agent_linux 08/10] cleanup active_xfers
 when the client disconnects
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

From: Uri Lublin <uril@redhat.com>

Signed-off-by: Uri Lublin <uril@redhat.com>
Acked-by: Frediano Ziglio <fziglio@redhat.com>
---
 src/vdagentd/vdagentd.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/src/vdagentd/vdagentd.c b/src/vdagentd/vdagentd.c
index 92885b5..8437779 100644
--- a/src/vdagentd/vdagentd.c
+++ b/src/vdagentd/vdagentd.c
@@ -168,6 +168,7 @@ static void send_capabilities(VirtioPort *vport,
 
 static void do_client_disconnect(void)
 {
+    g_hash_table_remove_all(active_xfers);
     if (client_connected) {
         udscs_server_write_all(server, VDAGENTD_CLIENT_DISCONNECTED, 0, 0,
                                NULL, 0);
-- 
2.26.2

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
