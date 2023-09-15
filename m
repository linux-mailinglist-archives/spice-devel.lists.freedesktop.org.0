Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B4D7A124F
	for <lists+spice-devel@lfdr.de>; Fri, 15 Sep 2023 02:33:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E73B210E2C0;
	Fri, 15 Sep 2023 00:33:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C60210E2C0
 for <spice-devel@lists.freedesktop.org>; Fri, 15 Sep 2023 00:33:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694737982; x=1726273982;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LXTOo036GTHuQM+Wdl5MpdgAmAAGYRz4b2rkJ0KLeIs=;
 b=TQY0CKbYUloLbQVNV+FpbMbD9ApqgP2+MPCDGiXQrzb+4I8vJHVl0uhI
 NbTNnkmCjTqqMRPwaIAdD0BckzzwaGwfQYQr6QBdt9WnmpLmqbgpLFMKR
 0HtmU2fIMvMx9ZH0r4oq8+9nssvHH9hbY8tvqlaxMEtET/HpPuP041b/4
 JwTwXNdfopkFdc7Go7HMPGpVJoDLJ9bwU4NdUG5AvdLgIUCukgNel2NDI
 XtmD83JB4AE8n15rF4B3J+H3xKltBCS7ZEeNQEPCNADjD53EXjtM3gYkM
 VZkDSCbbvQWM7mP4viDj8/8CROanCqFdFRZ1TUvwUfZUn7oROIWgaQ6IX w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="359378155"
X-IronPort-AV: E=Sophos;i="6.02,147,1688454000"; d="scan'208";a="359378155"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 17:33:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="918442347"
X-IronPort-AV: E=Sophos;i="6.02,147,1688454000"; d="scan'208";a="918442347"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 17:33:01 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 14 Sep 2023 17:12:09 -0700
Message-Id: <20230915001215.531746-2-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230915001215.531746-1-vivek.kasireddy@intel.com>
References: <20230915001215.531746-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH 1/4] channel-display-gst: Prefer playbin3 to
 playbin
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
 Dongwon Kim <dongwon.kim@intel.com>, Jin Chung Teng <jin.chung.teng@intel.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

From: Jin Chung Teng <jin.chung.teng@intel.com>

If playbin3 is available (checked in Gstreamer registry), it
makes sense to prefer it given the major improvements and
features it offers including the capability to handle higher
bitrates.

Cc: Frediano Ziglio <freddy77@gmail.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>
Cc: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
Signed-off-by: Jin Chung Teng <jin.chung.teng@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 src/channel-display-gst.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/src/channel-display-gst.c b/src/channel-display-gst.c
index 36db3a3..3f46a65 100644
--- a/src/channel-display-gst.c
+++ b/src/channel-display-gst.c
@@ -496,10 +496,13 @@ static gboolean create_pipeline(SpiceGstDecoder *decoder)
     SpiceGstPlayFlags flags;
     GstCaps *caps;
 
-    playbin = gst_element_factory_make("playbin", "playbin");
+    playbin = gst_element_factory_make("playbin3", "playbin3");
     if (playbin == NULL) {
-        spice_warning("error upon creation of 'playbin' element");
-        return FALSE;
+        playbin = gst_element_factory_make("playbin", "playbin");
+        if (playbin == NULL) {
+            spice_warning("error upon creation of 'playbin' element");
+            return FALSE;
+        }
     }
 
     /* Passing the pipeline to widget, try to get window handle and
-- 
2.39.2

