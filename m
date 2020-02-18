Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F9F1632AB
	for <lists+spice-devel@lfdr.de>; Tue, 18 Feb 2020 21:11:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AA676EA75;
	Tue, 18 Feb 2020 20:11:00 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7443A6EA75
 for <spice-devel@lists.freedesktop.org>; Tue, 18 Feb 2020 20:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=codeweavers.com; s=6377696661; h=Message-Id:Date:Subject:To:From:Sender:
 Reply-To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1SLOjaZbQq8qTwt1KexhW23M8OCEsYJYrDGyFz8eH6o=; b=NkTw55AxrkxBwOEP20+3U6nOLv
 8lJHYAwkojeTXJtH2CZxgL7L5nQu9pZ+gOUBBIUWS2Fnf7EQ8es/3GiDoX2asQRS5741y9XQaKPQz
 YIIuqcqR8L6HSEPiRVAdOzPOg95urN6SSo94p+ICYN5XMF6DbgE9hFm4O9LJ7PNNRhs8=;
Received: from foghorn.codeweavers.com ([50.203.203.242]
 helo=localhost.localdomain)
 by mail.codeweavers.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <hverbeet@codeweavers.com>)
 id 1j48wD-0000F4-1L
 for spice-devel@lists.freedesktop.org; Tue, 18 Feb 2020 13:53:45 -0600
From: Henri Verbeet <hverbeet@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 18 Feb 2020 13:53:37 -0600
Message-Id: <20200218195337.4080-8-hverbeet@codeweavers.com>
X-Mailer: git-send-email 2.11.0
Subject: [Spice-devel] [PATCH x11spice 8/8] Do not provide a stub
 client_monitors_config in the QXLInterface.
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

From: Jeremy White <jwhite@codeweavers.com>

Using NULL causes the server to relay the message on to the agent,
which does a superior job to anything we currently want to do.

Signed-off-by: Jeremy White <jwhite@codeweavers.com>
Acked-by: Henri Verbeet <hverbeet@codeweavers.com>
---
 src/spice.c | 27 +++------------------------
 1 file changed, 3 insertions(+), 24 deletions(-)

diff --git a/src/spice.c b/src/spice.c
index 08a5d09..e9beec0 100644
--- a/src/spice.c
+++ b/src/spice.c
@@ -334,29 +334,6 @@ static void update_area_complete(QXLInstance *qin G_GNUC_UNUSED,
     g_debug("TODO: %s UNIMPLEMENTED!", __func__);
 }
 
-static int client_monitors_config(QXLInstance *qin G_GNUC_UNUSED,
-                                  VDAgentMonitorsConfig *monitors_config)
-{
-    uint i;
-    if (!monitors_config) {
-        /* a NULL is used as a test to see if we support this function */
-        g_debug("%s: NULL monitors_config", __func__);
-        return TRUE;
-    }
-
-    g_debug("%s: [num %d|flags 0x%x]", __func__, monitors_config->num_of_monitors,
-            monitors_config->flags);
-    for (i = 0; i < monitors_config->num_of_monitors; i++)
-        g_debug("  %d:[height %d|width %d|depth %d|x %d|y %d]", i,
-                monitors_config->monitors[i].height,
-                monitors_config->monitors[i].width,
-                monitors_config->monitors[i].depth,
-                monitors_config->monitors[i].x, monitors_config->monitors[i].y);
-
-    g_debug("TODO: %s UNIMPLEMENTED", __func__);
-    return FALSE;
-}
-
 /* spice sends AT scancodes (with a strange escape).
  * But xf86PostKeyboardEvent expects scancodes. Apparently most of the time
  * you just need to add MIN_KEYCODE, see xf86-input-keyboard/src/atKeynames
@@ -545,7 +522,9 @@ void initialize_spice_instance(spice_t *s)
         .flush_resources = flush_resources,
         .async_complete = async_complete,
         .update_area_complete = update_area_complete,
-        .client_monitors_config = client_monitors_config,
+        .client_monitors_config = NULL,     /* Specifying NULL here causes
+                                               the better logic in the agent
+                                               to operate */
         .set_client_capabilities = NULL,    /* Allowed to be unset */
     };
 
-- 
2.11.0

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
