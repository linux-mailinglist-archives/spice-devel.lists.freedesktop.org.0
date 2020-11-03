Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F9DA2A40A1
	for <lists+spice-devel@lfdr.de>; Tue,  3 Nov 2020 10:49:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC8956E89F;
	Tue,  3 Nov 2020 09:49:13 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA8846E89E
 for <spice-devel@lists.freedesktop.org>; Tue,  3 Nov 2020 09:49:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1604396950;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=PFlEppi1c6ye1rNfr0zcW0a7jWC/vP2EptCy3fDtylM=;
 b=Aj2IyQtXLHjQjoR1d3j7uKtwJMosibXOtF+ZO9lt3/cpj6+Fmp3Ys/MOL/SmZw66Q38F3a
 BMBJq1UsQQEB1Zoej7SP0Dug/4ir0N80bhk95em6h4Qd8+okDJZjL+fGSCR71nVMr7jP4A
 fyG9RuTf01I6/NkGxLnje2A3OMw67kU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-333-7a8v4xhWPjm52P2VvvVYdQ-1; Tue, 03 Nov 2020 04:49:09 -0500
X-MC-Unique: 7a8v4xhWPjm52P2VvvVYdQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5C44B1016CF8
 for <spice-devel@lists.freedesktop.org>; Tue,  3 Nov 2020 09:48:54 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.16])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 367A1385;
 Tue,  3 Nov 2020 09:48:53 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue,  3 Nov 2020 09:48:33 +0000
Message-Id: <20201103094834.7691-9-fziglio@redhat.com>
In-Reply-To: <20201103094834.7691-1-fziglio@redhat.com>
References: <20201103094834.7691-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=fziglio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Spice-devel] [PATCH vd_agent_linux 09/10] vdagentd: do not allow
 to use an already used file-xfer id
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
 src/vdagentd/vdagentd.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/src/vdagentd/vdagentd.c b/src/vdagentd/vdagentd.c
index 8437779..78378aa 100644
--- a/src/vdagentd/vdagentd.c
+++ b/src/vdagentd/vdagentd.c
@@ -404,6 +404,13 @@ static void do_client_file_xfer(VirtioPort *vport,
                "Cancelling client file-xfer request %u",
                s->id, VD_AGENT_FILE_XFER_STATUS_ERROR, (void*) &error, detail_size);
             return;
+        } else if (g_hash_table_lookup(active_xfers, GUINT_TO_POINTER(s->id)) != NULL) {
+            // id is already used -- client is confused
+            send_file_xfer_status(vport,
+               "File transfer ID is already used. "
+               "Cancelling client file-xfer request %u",
+               s->id, VD_AGENT_FILE_XFER_STATUS_ERROR, NULL, 0);
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
