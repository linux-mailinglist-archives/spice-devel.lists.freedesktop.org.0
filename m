Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7107B4B2D
	for <lists+spice-devel@lfdr.de>; Mon,  2 Oct 2023 07:41:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37A8E10E111;
	Mon,  2 Oct 2023 05:41:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3A3C10E111
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Oct 2023 05:41:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696225263; x=1727761263;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=P9fkA73HWU0MGjJ8QYggv0o3njZEfbCDzDobxM4bfUc=;
 b=a/rVWFhZ8bSeDm8UbXDB4aksQCE3HQmr99ftdtn0Pqngf32ENeRtsxsH
 N8kCSoSM9szLpMqlEOUkfI51Y2RivjcXpzNEJ+w4wLB0irHVQFUkD3vPO
 CRz3cWaja7JgN5bhD/fWJlpv/VfsgErPlklU54RsOSaEjlR0Qu5jKm5k8
 yxk8Gfh8KPwIM2AN0KzKbzdeG3zhLuPjwwk3Sc4z4XxL59LsLCf+YfQ+2
 BYD7qPx7Qe6pCgFV+1cuLS+QrxxkCNCZgTDcFxFrcW9+4zaHucrGzWPBS
 +QZZUxcJx1hdRN8rvLxpE6LsdtpjtT7SKGjcTX0xElzZNZEBXbYUq1F9i g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10850"; a="372935845"
X-IronPort-AV: E=Sophos;i="6.03,193,1694761200"; d="scan'208";a="372935845"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2023 22:41:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10850"; a="785682724"
X-IronPort-AV: E=Sophos;i="6.03,193,1694761200"; d="scan'208";a="785682724"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2023 22:41:02 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Sun,  1 Oct 2023 22:20:21 -0700
Message-Id: <20231002052026.2994546-1-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH 0/2] spice/gstreamer: Use h/w based
 encoders/decoders with Intel GPUs if possible (v3)
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
Cc: Dongwon Kim <dongwon.kim@intel.com>, Gerd Hoffmann <kraxel@redhat.com>,
 Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

This patch series includes a patch for Spice (server) to
automatically select h/w based encoder elements and another one
for Spice-gtk (client) to automatically select h/w based decoder
elements with Intel GPUs when these two conditions are met:
- An Intel GPU is available and is active
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

v3:
- Updated all patches to include review suggestions from Frediano
- Temporarily dropped the "Don't unref appsink and pipeline objects" patch

Cc: Frediano Ziglio <freddy77@gmail.com>
Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Marc-André Lureau <marcandre.lureau@redhat.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>
Cc: Jin Chung Teng <jin.chung.teng@intel.com>
Cc: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>

Vivek Kasireddy (2):
  channel-display-gst: Prefer playbin3 to playbin (v2)
  channel-display-gst: Use h/w based decoders with Intel GPUs if
    possible (v3)

 src/channel-display-gst.c | 228 +++++++++++++++++++++++++++++++++-----
 1 file changed, 203 insertions(+), 25 deletions(-)

-- 
2.39.2

