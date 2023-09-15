Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B3E7A124E
	for <lists+spice-devel@lfdr.de>; Fri, 15 Sep 2023 02:33:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4537010E14C;
	Fri, 15 Sep 2023 00:33:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EB7B10E14C
 for <spice-devel@lists.freedesktop.org>; Fri, 15 Sep 2023 00:33:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694737982; x=1726273982;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=j52j5ouSkLL1DnFYyV+Cv1WkWR+1cDp8M0/ZMffo/gY=;
 b=cbB1borya1ij1ZopEiYS3x1E2WvstuDGIs733fQwLcizPH96u7EfJM8Z
 G9z3bOdgof4SqG9LpAzc7M7RxswEy8RL2p6ds/XmiujkBzZZOZ7NOvLTW
 rNulcD+0Su3gPeQy2wIsFSro/7LGuuIa2NPl5D7nqSAkv+eoHYRxGGXYV
 VVIoQXcNzYgyXc97ktpH+ZqNDrQmKRkWghOSjiM2MjkD8/quaKlvkoECI
 0MBmTZcZv7d0umBocgCehLserUbZo2ZVna/BohlwJW9ma5PG333n6cerZ
 LoTU847ktX2QcRy1hiPNVCzzUJ8Z0CKCmpIpFIoDLY8yS7DoNsKMyIHwR A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="359378154"
X-IronPort-AV: E=Sophos;i="6.02,147,1688454000"; d="scan'208";a="359378154"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 17:33:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="918442344"
X-IronPort-AV: E=Sophos;i="6.02,147,1688454000"; d="scan'208";a="918442344"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 17:33:00 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 14 Sep 2023 17:12:08 -0700
Message-Id: <20230915001215.531746-1-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH 0/4] spice/gstreamer: Use h/w based
 encoders/decoders with Intel GPUs if possible (v2)
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
Cc: Dongwon Kim <dongwon.kim@intel.com>,
 Jin Chung Teng <jin.chung.teng@intel.com>, Gerd Hoffmann <kraxel@redhat.com>,
 Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

This patch series includes a patch for Spice (server) to
automatically select h/w based encoder elements and another one
for Spice-gtk (client) to automatically select h/w based decoder
elements with Intel GPUs when these two conditions are met:
- An Intel GPU is available and is active (driver loaded)
- The relevant h/w based encoder/decoder elements are registered
  (i.e, Intel Media SDK Gstreamer plugin (libgstmsdk.so) and associated
  libraries (such as va or vaapi) are properly installed).

When tested on a Gen 12 Intel GPU (codenamed AlderLake/TigerLake)
with Qemu/Spice + h/w encoder elements, we noticed that the time
to encode a 1920x1080 BGRx frame was reduced to ~2-3 ms compared
to ~12-16 ms with a s/w encoder (x264enc). Other advantages
include reduced overall CPU utilization.

However, once these patches are applied, the only way to force
Spice/Spice-gtk to fallback to s/w based encoder/decoder is to
remove the msdk and or vaapi plugins from GST_PLUGIN_PATH. This
might be desirable for debugging purposes or for other reasons.

v2:
- Added several bugfix patches to this series
- Moved udev helper to determine GPU Vendor to spice-common repo
- Refactored the code to prioritize plugins in the order msdk > va > vaapi

Cc: Frediano Ziglio <freddy77@gmail.com>
Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Marc-André Lureau <marcandre.lureau@redhat.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>
Cc: Jin Chung Teng <jin.chung.teng@intel.com>
Cc: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>

Vivek Kasireddy (4):
  channel-display-gst: Prefer playbin3 to playbin
  channel-display-gst: Add "byte-stream" as the stream format for h264
  channel-display-gst: Don't unref appsink and pipeline objects
  channel-display-gst: Use h/w based decoders with Intel GPUs if
    possible (v2)

 src/channel-display-gst.c  | 232 ++++++++++++++++++++++++++++++++-----
 src/channel-display-priv.h |   4 +-
 2 files changed, 205 insertions(+), 31 deletions(-)

-- 
2.39.2

