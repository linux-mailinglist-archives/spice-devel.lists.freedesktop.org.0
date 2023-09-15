Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAF787A1251
	for <lists+spice-devel@lfdr.de>; Fri, 15 Sep 2023 02:33:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B457B10E5B0;
	Fri, 15 Sep 2023 00:33:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86C2010E2C0
 for <spice-devel@lists.freedesktop.org>; Fri, 15 Sep 2023 00:33:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694737983; x=1726273983;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tAlKrExf3E3y7UlCynHXhkXfpkHJbAduMNwGKG6ubV0=;
 b=GHCSSWcG6hcsrzlKXejtt7IhhEHN7HoDvdMQ9gRcIMuzZoyC7IS9g8Um
 WuiRVLReh0rvy2ezjNMr7fMi9aWtjp0bi9q38Xi1E4q//NHaC60rGf4zF
 W1uSc4nS3TQF4/yOUVb+LQS+Pgt2aZq8cd4jXymIlPWf62eeikz/RPcDL
 p7Cs53NpoOv/O7mdfdXVcXRA/i1yr/cZZausDsQMJPs1OyyRXZLQjS8sm
 /O6eBhsoXJw8GYJJr8da0C7wR6RmW0ValgHi2gs5yTAR/6NF7ColJn57h
 Oywq73d+1s2go/Odde+QjD92joWCEmGFODZNNbR/NTUa3shLE8rSNTMJQ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="359378168"
X-IronPort-AV: E=Sophos;i="6.02,147,1688454000"; d="scan'208";a="359378168"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 17:33:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="918442365"
X-IronPort-AV: E=Sophos;i="6.02,147,1688454000"; d="scan'208";a="918442365"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 17:33:02 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 14 Sep 2023 17:12:14 -0700
Message-Id: <20230915001215.531746-7-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230915001215.531746-1-vivek.kasireddy@intel.com>
References: <20230915001215.531746-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH 3/4] channel-display-gst: Don't unref appsink
 and pipeline objects
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

It looks like setting the Gst pipeline state to GST_STATE_NULL
would cause all the references on most of the objects associated
with the pipeline to be dropped; therefore, there is no need
to explicitly unref them while freeing the pipeline. This patch
prevents the following errors from showing up when remote-viewer
is closed:

(remote-viewer:64344): GStreamer-CRITICAL **: 00:31:04.278:
Trying to dispose object "appsink0", but it still has a parent
"pipeline0".
You need to let the parent manage the object instead of unreffing the
object directly.

[MOS]:  CRITICAL - mos_bo_unreference:166: Input null ptr

[MOS]:  CRITICAL - mos_bo_unreference:166: Input null ptr

Cc: Frediano Ziglio <freddy77@gmail.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>
Cc: Jin Chung Teng <jin.chung.teng@intel.com>
Cc: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 src/channel-display-gst.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/src/channel-display-gst.c b/src/channel-display-gst.c
index 3f46a65..ad0ac99 100644
--- a/src/channel-display-gst.c
+++ b/src/channel-display-gst.c
@@ -353,10 +353,6 @@ static void free_pipeline(SpiceGstDecoder *decoder)
 
     gst_element_set_state(decoder->pipeline, GST_STATE_NULL);
     gst_object_unref(decoder->appsrc);
-    if (decoder->appsink) {
-        gst_object_unref(decoder->appsink);
-    }
-    gst_object_unref(decoder->pipeline);
     gst_object_unref(decoder->clock);
     decoder->pipeline = NULL;
 }
-- 
2.39.2

