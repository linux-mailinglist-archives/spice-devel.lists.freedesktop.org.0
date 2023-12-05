Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F2B2804C6E
	for <lists+spice-devel@lfdr.de>; Tue,  5 Dec 2023 09:32:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2E5210E4B8;
	Tue,  5 Dec 2023 08:32:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 682E110E4BA
 for <spice-devel@lists.freedesktop.org>; Tue,  5 Dec 2023 08:32:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701765156; x=1733301156;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZEMFFRB9M6eSL/8uVp2Iu2sRik8dZG3J6TAlV+7q9fU=;
 b=AWJNaYqaNBSaeWVbXuKRJDWIp2BL+pGUTj16mJ5rSqw/Z0k7ywr4jRrL
 EdVLAVItPe+6z2FvtYbHCzCO/xiCNXf8Cyxc6kSk89BS49XT4F80C38xY
 +WhHed0+f+jS+s2F1hqkOQFNBShsYo7yJ/7T7ICF21G9nlOFP8ykmLPrW
 GNAe7gRQz2altMRCoblDrXfp1/e5Lrn7kgrG4zg1yCnTkpSltSTgozOQd
 Tig9qbSISJiaQzemZNvQSbawwE+iKV8QotfwSSFiaiIeBY6t5q0ju98S9
 UOa5qLcjWWmdswp6kozaRf1WMKfje1EhyNUNc5ddUNsM02hcbUmwuBhRV g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="397758880"
X-IronPort-AV: E=Sophos;i="6.04,251,1695711600"; d="scan'208";a="397758880"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 00:32:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="841371987"
X-IronPort-AV: E=Sophos;i="6.04,251,1695711600"; d="scan'208";a="841371987"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.132])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 00:32:35 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Tue,  5 Dec 2023 00:07:54 -0800
Message-Id: <20231205080759.2347381-1-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH v3 0/5] dcc: Create a stream for non-gl/remote
 clients that want to use dmabuf (v3)
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
Cc: Dongwon Kim <dongwon.kim@intel.com>, Gerd Hoffmann <kraxel@redhat.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

For clients that cannot accept a dmabuf fd directly (such as those
running on a remote system), this patch series provides a way for
the Spice server to stream the gl/dmabuf data/buffer instead. This
is mostly done by enabling the creation of Gst memory using a dmabuf
fd as the source. This ability is useful given that dmabuf is the
standard mechanism for sharing buffers between various drivers and
userspace in many Graphics and Media usecases. Currently, this is
tested with Qemu and remote-viewer using the x264enc/avdec_h264 
and msdkh264enc/dec plugins to stream the Guest/VM desktop but it
can be easily extended to other plugins and applications.

Here is roughly how things work:
- The application (e.g, Qemu) chooses its preferred codec (a Gstreamer
  one) and calls gl_scanout (to update the fd) followed by gl_draw.
- In response, the Spice server checks to see if the client is capable
  of accepting a dmabuf fd directly or not. If yes, the fd is forwarded
  directly to the client; otherwise, a new stream is created.
- The Spice server then sends the dmabuf fd to the Gstreamer encoder
  which uses it as an input for creating an encoded buffer which is then
  sent to the client.
- Once the encoding process is done, an async completion cookie is sent
  to the application.

Here is a link to the previous version that used a drawable to share
the dmabuf fd with the Gstreamer encoder:
https://lists.freedesktop.org/archives/spice-devel/2023-January/052948.html

v2:
- Update all patches to address review comments from Frediano
- Tested this series with msdkh264enc/dec plugins that will be added
  in another patch series

v3:
- Updated the second patch to have a new primary surface created
  whenever a new stream gets created. This will avoid having to
  trigger primary surface creation from Qemu.
- Rebase all patches on master

Cc: Frediano Ziglio <freddy77@gmail.com>
Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Marc-André Lureau <marcandre.lureau@redhat.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>

Vivek Kasireddy (5):
  dcc: Check to see if the client supports multiple codecs (v2)
  dcc: Create a stream associated with gl_draw for non-gl clients (v3)
  dcc-send: Encode and send gl_draw stream data to the remote client
    (v2)
  gstreamer-encoder: Add an encoder function that takes dmabuf fd as
    input (v2)
  video-stream: Don't stop a stream associated with gl_draw (v2)

 meson.build                      |   2 +-
 server/dcc-send.cpp              | 152 ++++++++++++++++++++++------
 server/dcc.cpp                   |  31 ++++--
 server/dcc.h                     |   6 ++
 server/display-channel-private.h |   1 +
 server/display-channel.cpp       |   1 +
 server/gstreamer-encoder.c       | 164 +++++++++++++++++++++++++------
 server/video-encoder.h           |  13 +++
 server/video-stream.cpp          | 134 ++++++++++++++++++-------
 server/video-stream.h            |   2 +
 10 files changed, 403 insertions(+), 103 deletions(-)

-- 
2.39.2

