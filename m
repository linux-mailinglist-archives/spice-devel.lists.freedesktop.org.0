Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08AFE7B4B32
	for <lists+spice-devel@lfdr.de>; Mon,  2 Oct 2023 07:41:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49A9D10E128;
	Mon,  2 Oct 2023 05:41:13 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D07710E115
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Oct 2023 05:41:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696225263; x=1727761263;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eHCmse99xGTmF8BPAkzk5AqT2RJisix7mLhScYfXHZU=;
 b=ad/x2ZTpT+eEHK0Tk4RJsuz+CCIMfDq3jotUyDWhw7nZLkUDqfb0RLZI
 t4dhxUOBgF0ibjw9XLcGNZ20LRhSbJpp03CRCGGZvj3YMNGWxQbbs5of8
 /MCb5UtNpq/lyfYdkxbkRjYa9LffdUJ5wPiLKrWxULBUjBrB9bR5m53xg
 M1SJKa0ZjIp5L4nHBBV3TgpmnsS123QLaCkeC1UZV5wPlvZ3vyMy7HD4G
 1Sf5VNGMP+b4fHcCe/6TD7OzWI7XIPkCdDE+AVilgIa641UcB9UD0+rbl
 K/6UH+49SuexBfbVzcAeeT2RzH5btHH2oLPKbcwKiOLQLAlf4pB6ajs9o A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10850"; a="372935846"
X-IronPort-AV: E=Sophos;i="6.03,193,1694761200"; d="scan'208";a="372935846"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2023 22:41:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10850"; a="785682728"
X-IronPort-AV: E=Sophos;i="6.03,193,1694761200"; d="scan'208";a="785682728"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2023 22:41:02 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Sun,  1 Oct 2023 22:20:22 -0700
Message-Id: <20231002052026.2994546-2-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231002052026.2994546-1-vivek.kasireddy@intel.com>
References: <20231002052026.2994546-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH 1/2] channel-display-gst: Prefer playbin3 to
 playbin (v2)
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
Cc: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>,
 Dongwon Kim <dongwon.kim@intel.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

From: Jin Chung Teng <jin.chung.teng@intel.com>

If playbin3 is available (checked in Gstreamer registry), it
makes sense to prefer it given the major improvements and
features it offers including the capability to handle higher
bitrates.

v2: (Frediano)
- Cache the playbin3 is available check
- Keep the playbin name for playbin3 element as well

Cc: Frediano Ziglio <freddy77@gmail.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>
Cc: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
Signed-off-by: Jin Chung Teng <jin.chung.teng@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 src/channel-display-gst.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/src/channel-display-gst.c b/src/channel-display-gst.c
index 36db3a3..5c9927b 100644
--- a/src/channel-display-gst.c
+++ b/src/channel-display-gst.c
@@ -495,11 +495,17 @@ static gboolean create_pipeline(SpiceGstDecoder *decoder)
     GstElement *playbin, *sink;
     SpiceGstPlayFlags flags;
     GstCaps *caps;
+    static bool playbin3_supported = true;
 
-    playbin = gst_element_factory_make("playbin", "playbin");
+    playbin = playbin3_supported ?
+              gst_element_factory_make("playbin3", "playbin") : NULL;
     if (playbin == NULL) {
-        spice_warning("error upon creation of 'playbin' element");
-        return FALSE;
+        playbin3_supported = false;
+        playbin = gst_element_factory_make("playbin", "playbin");
+        if (playbin == NULL) {
+            spice_warning("error upon creation of 'playbin' element");
+            return FALSE;
+        }
     }
 
     /* Passing the pipeline to widget, try to get window handle and
-- 
2.39.2

