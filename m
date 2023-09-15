Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 611187A1250
	for <lists+spice-devel@lfdr.de>; Fri, 15 Sep 2023 02:33:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A56110E49E;
	Fri, 15 Sep 2023 00:33:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7DD510E14C
 for <spice-devel@lists.freedesktop.org>; Fri, 15 Sep 2023 00:33:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694737982; x=1726273982;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KlgqdCFNqT0YgtGPQWwZQq35JbQ28oenbf1Uytgbxr0=;
 b=QBK4VEbMe9/WpKXfKTDzEV3+HFNBOtS/cXig/u6JQdEd6AF+A3CeFkJj
 QbjyYfGrDzSVv9AiXStrE31MyiVeVuFWYaU4QRLQEc9GZVHX5XdKPgguJ
 eNYipzy8RaGOFHP+ty36QANeUKovzSwDOi2wvFmSDoMeE+dRNl55eFdfB
 xlF0HGjzxbGmSodubUz/z6Zi+eygCvFhePPZeAqoiaIF5mLfIbecNxMOe
 z3vCNjtzHilVyr3FMObXNU1F9RDkE0oNff/RuP5KJXDGU1SoP3pMAzZkd
 eHQRVKaBK8lBaGEcwzlChiAwmTiQyGt9h9eI0u9lYDPq8TecXrDoOElAo A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="359378162"
X-IronPort-AV: E=Sophos;i="6.02,147,1688454000"; d="scan'208";a="359378162"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 17:33:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="918442358"
X-IronPort-AV: E=Sophos;i="6.02,147,1688454000"; d="scan'208";a="918442358"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 17:33:02 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 14 Sep 2023 17:12:12 -0700
Message-Id: <20230915001215.531746-5-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230915001215.531746-1-vivek.kasireddy@intel.com>
References: <20230915001215.531746-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH 2/4] channel-display-gst: Add "byte-stream" as
 the stream format for h264
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
 Jin Chung Teng <jin.chung.teng@intel.com>, Dongwon Kim <dongwon.kim@intel.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Adding the string "stream-format=byte-stream" to decoder capabilities
(dec_caps) for h264/h265 codecs stops Gstreamer from complaining
about missing stream format.

Cc: Frediano Ziglio <freddy77@gmail.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>
Cc: Jin Chung Teng <jin.chung.teng@intel.com>
Cc: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 src/channel-display-priv.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/src/channel-display-priv.h b/src/channel-display-priv.h
index 66c9cff..1a7590a 100644
--- a/src/channel-display-priv.h
+++ b/src/channel-display-priv.h
@@ -177,7 +177,7 @@ static const struct {
      * (hardcoded in spice-server), let's add it here to avoid the warning.
      */
     { SPICE_DISPLAY_CAP_CODEC_H264, "h264",
-      "h264parse ! avdec_h264", "video/x-h264" },
+      "h264parse ! avdec_h264", "video/x-h264,stream-format=byte-stream" },
 
     /* SPICE_VIDEO_CODEC_TYPE_VP9 */
     { SPICE_DISPLAY_CAP_CODEC_VP9, "vp9",
@@ -185,7 +185,7 @@ static const struct {
 
     /* SPICE_DISPLAY_CAP_CODEC_H265 */
     { SPICE_DISPLAY_CAP_CODEC_H265, "h265",
-      "h265parse ! avdec_h265", "video/x-h265" },
+      "h265parse ! avdec_h265", "video/x-h265,stream-format=byte-stream" },
 
 };
 
-- 
2.39.2

