Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B26A47BAA
	for <lists+spice-devel@lfdr.de>; Thu, 27 Feb 2025 12:15:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3A2810EAAF;
	Thu, 27 Feb 2025 11:15:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=rz.uni-freiburg.de header.i=@rz.uni-freiburg.de header.b="ScunwDPI";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from b1422.mx.srv.dfn.de (b1422.mx.srv.dfn.de [194.95.235.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66BE810EAAC
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Feb 2025 11:15:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 rz.uni-freiburg.de; h=content-transfer-encoding:mime-version
 :references:in-reply-to:x-mailer:message-id:date:date:subject
 :subject:from:from:received; s=s1; t=1740654483; x=1742468884;
 bh=TVxgBJxmZfiHsWtX8JFHPCWQpRFrk1VLF7e9y8dPpiQ=; b=ScunwDPIGZRx
 aGUR69nA4H1Mpb3RPLToKXVCPbnx1OXnKFGPpb+rX8sQXWkUZp+1U5KLuu42aH6q
 Rinl45/9V9tuEVF1s2hOiu2LXYUG0bPd6bQV4/LRqAbhcEDnRGBXkpuc+nuTNX2b
 X6N7jYgN42R0CMmV3bb0cVbnplpkVZg=
Received: from fe1.uni-freiburg.de (fe1.uni-freiburg.de [132.230.2.221])
 by b1422.mx.srv.dfn.de (Postfix) with ESMTP id B495E2601EE
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Feb 2025 12:08:03 +0100 (CET)
Received: from [2001:7c0:2517:a:4b56:9ec4:d188:b1a0] (account
 michael.scherle@rz.uni-freiburg.de HELO rz-10-126-20-105.eduroam-rz.privat)
 by mail.uni-freiburg.de (CommuniGate Pro SMTP 6.3.19)
 with ESMTPSA id 46276786; Thu, 27 Feb 2025 12:07:56 +0100
From: Michael Scherle <michael.scherle@rz.uni-freiburg.de>
To: spice-devel@lists.freedesktop.org
Cc: Michael Scherle <michael.scherle@rz.uni-freiburg.de>
Subject: [PATCH 10/10] dcc-send: Fix freeze when video stream is stopped
 during ongoing draw
Date: Thu, 27 Feb 2025 12:07:21 +0100
Message-ID: <5245ba7dd46644371b7c2b8495e4650ec987c598.1740651328.git.michael.scherle@rz.uni-freiburg.de>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <cover.1740651328.git.michael.scherle@rz.uni-freiburg.de>
References: <cover.1740651328.git.michael.scherle@rz.uni-freiburg.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Prevent a freeze that occurs if the video stream is stopped while a
gl draw is in progress (e.g., when the client requests a new codec).
Ensure proper cleanup of the ongoing gl draw.

Signed-off-by: Michael Scherle <michael.scherle@rz.uni-freiburg.de>
---
 server/dcc-send.cpp | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/server/dcc-send.cpp b/server/dcc-send.cpp
index 7bc20a22..71873563 100644
--- a/server/dcc-send.cpp
+++ b/server/dcc-send.cpp
@@ -2383,6 +2383,10 @@ static void marshall_gl_draw(DisplayChannelClient *dcc,
         spice_marshall_msg_display_gl_draw(m, &p->draw);
     } else if (DCC_TO_DC(dcc)->priv->gl_draw_stream) {
         red_marshall_gl_draw_stream(dcc, m);
+    } else if (dcc->priv->gl_draw_ongoing) {
+        DisplayChannel *display = DCC_TO_DC(dcc);
+        dcc->priv->gl_draw_ongoing = false;
+        display_channel_gl_draw_done(display);
     } else {
         spice_warning("nothing to send to the client");
     }
-- 
2.48.1

