Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE13786AA43
	for <lists+spice-devel@lfdr.de>; Wed, 28 Feb 2024 09:41:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6B0610E9CC;
	Wed, 28 Feb 2024 08:41:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W8Dj5G0O";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F164710E9DA
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Feb 2024 08:41:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709109717; x=1740645717;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=le9SC4d5YcO2VMABr3SXE5M6OVnfN9jPXOVIGV9DZLk=;
 b=W8Dj5G0O3KV4hCz9wNSLNyi1p1+zBWVWnZTF2s2x3q9l+/7KzotXXXXF
 tNZDwntxBlCHyErrrp1vghSgvtkL9MVDmMUjNvBBVqDlJlQue6R1Z3dDa
 n6wVRr+Otg7eiXIZhjJgqK6BOJBZGp30VKFxxsj3ieJ8PFb8TltPEW0KJ
 MxaK3Ox8/+X0ePhW4M76ti8K3MAl7w6aWvVhKr/oBt7HFA8Hmv3AzLiYB
 THQR3fq9Z6y5+TmuPCcsnn2GVK7bsGrdXv+lg2Fr/ISNB+gusw+ZExev8
 upHQxG9KlEt+pe+n/wuOFZughM7JwKAKrQyGD4V8FAt/45kOYsZY2P7SR w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="3615919"
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; 
   d="scan'208";a="3615919"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 00:41:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; 
   d="scan'208";a="7925967"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.132])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 00:41:55 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Cc: Vivek Kasireddy <vivek.kasireddy@intel.com>,
 Frediano Ziglio <freddy77@gmail.com>, Gerd Hoffmann <kraxel@redhat.com>,
 =?UTF-8?q?Marc-Andr=C3=A9=20Lureau?= <marcandre.lureau@redhat.com>,
 Dongwon Kim <dongwon.kim@intel.com>
Subject: [PATCH v4 0/5] dcc: Create a stream for non-gl/remote clients that
 want to use dmabuf (v4)
Date: Wed, 28 Feb 2024 00:15:14 -0800
Message-ID: <20240228081730.1374127-1-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

This version is tested together with following (required) patches in qemu:
https://gitlab.freedesktop.org/Vivek/qemu/-/commits/spice_gl_on_v2

Changelog:

v4:
- Test with Virgl enabled
- Associate dmabuf's y0_top with stream's top_down variable

v3:
- Updated the second patch to have a new primary surface created
  whenever a new stream gets created. This will avoid having to
  trigger primary surface creation from Qemu. And, this change
  also fixes the following error seen with v2:
  ../server/display-channel.cpp:2074:display_channel_create_surface:
  condition `!display->priv->surfaces[surface_id]' failed
- Rebase all patches on master

v2:
- Update all patches to address review comments from Frediano
- Tested this series with msdkh264enc/dec plugins that will be added
  in another patch series

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
 server/dcc-send.cpp              | 153 ++++++++++++++++++++++------
 server/dcc.cpp                   |  31 ++++--
 server/dcc.h                     |   6 ++
 server/display-channel-private.h |   1 +
 server/display-channel.cpp       |   1 +
 server/gstreamer-encoder.c       | 164 +++++++++++++++++++++++++------
 server/video-encoder.h           |  13 +++
 server/video-stream.cpp          | 147 ++++++++++++++++++++-------
 server/video-stream.h            |   2 +
 10 files changed, 417 insertions(+), 103 deletions(-)

-- 
2.43.0

