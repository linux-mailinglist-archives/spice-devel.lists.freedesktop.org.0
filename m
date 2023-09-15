Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD267A1252
	for <lists+spice-devel@lfdr.de>; Fri, 15 Sep 2023 02:33:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED59E10E5B3;
	Fri, 15 Sep 2023 00:33:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB74510E2C0
 for <spice-devel@lists.freedesktop.org>; Fri, 15 Sep 2023 00:33:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694737982; x=1726273982;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2Xi9umorCNijqAbWHfxpZ8+AxYLrVBTqTNPnXn9NhIw=;
 b=N579qFS6B4sjyNkGpaZC/mW+20zjO8lDV1dDgFOHpDyBPf/0cCeYs7TA
 cJYEe19Y2O5z7NGfBEevY5dpe8q4ZtKQv7Gn81U8KrwNsKLSXnk2y2bkV
 NsZwBx730Nl8D6eqHLDO5i4jVOBWxZ4BL2umcLCBPxnS32zOdOu7lKznl
 zMDIoct7t/C7cIRhyph7+FqZNL1jVM6PiKaARBTLTKjQ+2piMw2LTAyiC
 6/ItHUwMsfvXuGwsFsyG+cYOh8eh8BCubVvClklPNFLvBGHqsdPp80xi9
 Cfp/TO+mdzKmMJrajbcon6QPGyh1hUE16Ln4sRxi4ML0K98fbQW8Nnkzy w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="359378160"
X-IronPort-AV: E=Sophos;i="6.02,147,1688454000"; d="scan'208";a="359378160"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 17:33:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="918442355"
X-IronPort-AV: E=Sophos;i="6.02,147,1688454000"; d="scan'208";a="918442355"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 17:33:01 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 14 Sep 2023 17:12:11 -0700
Message-Id: <20230915001215.531746-4-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230915001215.531746-1-vivek.kasireddy@intel.com>
References: <20230915001215.531746-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH 1/2] gstreamer-encoder: Use NV12 as the
 default vpp conversion format
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

From: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>

Using NV12 as the output format for the videoconvert element would
allow us to pair a s/w based encoder with a h/w based decoder for
decoding the stream as most h/w based decoders only accept NV12 as
the input format given its popularity.

Cc: Frediano Ziglio <freddy77@gmail.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>
Signed-off-by: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
Signed-off-by: Jin Chung Teng <jin.chung.teng@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 server/gstreamer-encoder.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/server/gstreamer-encoder.c b/server/gstreamer-encoder.c
index d8af91f1..057509b5 100644
--- a/server/gstreamer-encoder.c
+++ b/server/gstreamer-encoder.c
@@ -918,7 +918,7 @@ static gboolean create_pipeline(SpiceGstEncoder *encoder)
 #ifdef HAVE_GSTREAMER_0_10
     const gchar *converter = "ffmpegcolorspace";
 #else
-    const gchar *converter = "videoconvert";
+    const gchar *converter = "videoconvert ! video/x-raw,format=NV12";
 #endif
     const gchar* gstenc_name = get_gst_codec_name(encoder);
     if (!gstenc_name) {
-- 
2.39.2

