Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD7A8D2EAC
	for <lists+spice-devel@lfdr.de>; Wed, 29 May 2024 09:44:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98A8E1128EE;
	Wed, 29 May 2024 07:44:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AFf1+1WZ";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD8551128EE
 for <spice-devel@lists.freedesktop.org>; Wed, 29 May 2024 07:44:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716968661; x=1748504661;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GdHSSmbyCOfGADQo6mJU1waB4qpyXbCpe+6Ow6h5VKg=;
 b=AFf1+1WZcbdVP+TZSmkGrHWBWWgKfLncFAuNDPIQo7Pt/1ILzgksgcnz
 zTOw60euYbEoedjqCIRkGmn5Iz4sX3tSR8FmzNlDVLytRRmL9/02FQk9m
 3XjsFTEjIOgGcNn+mg93Sqe2Igi80zivWSthiPtvMV/bp3WITw6OE0Ueh
 MI6Khm9/x9WIQ+pOW8sJlZf8JMHPnmYB3QlnIVbJfHaRnhmddd139/7NY
 zglsBUso3xIjYfAhUKNR6WaqY+Izy+wwpt6YMofsfeQcB+hO7lbJsmY70
 cy/yLVd0HRrPhx8w+oS18huQ3b3bleFcptwjr2v8tjWp+r/PW3ggYzl7+ w==;
X-CSE-ConnectionGUID: NLbN0cBZQp2UiFw0Pc4nbw==
X-CSE-MsgGUID: PsXmJz94Q4+KHyj6GM9Zqw==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13540829"
X-IronPort-AV: E=Sophos;i="6.08,197,1712646000"; d="scan'208";a="13540829"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 00:44:20 -0700
X-CSE-ConnectionGUID: 0iVe1cWGQLSwAmqGZpsNZg==
X-CSE-MsgGUID: 4gwly4zFQAmXiiqFI0FAVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,197,1712646000"; d="scan'208";a="35371501"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.132])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 00:44:20 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Cc: Vivek Kasireddy <vivek.kasireddy@intel.com>,
 Frediano Ziglio <freddy77@gmail.com>, Gerd Hoffmann <kraxel@redhat.com>,
 =?UTF-8?q?Marc-Andr=C3=A9=20Lureau?= <marcandre.lureau@redhat.com>,
 Dongwon Kim <dongwon.kim@intel.com>
Subject: [PATCH v7 0/5] dcc: Create a stream for non-gl/remote clients that
 want to use dmabuf (v7)
Date: Wed, 29 May 2024 00:16:34 -0700
Message-ID: <20240529071832.208908-1-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.45.1
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

v7:
- Revert back to the previous design where we do not share fd with the stream
  and scanout is the sole owner of the fd. This is because share fd ownership
  opens up a lot of corner cases.

v6: (Frediano)
- Properly share ownership of the dmabuf fd between stream and scanout
- Ensure that a newly created stream is associated with all connected clients

v5:
- Addressed review comments from Frediano mainly regarding adding autoconf
  support for gstreamer-allocators dependency and not needing to access
  scanout as part of gl draw operation

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
  dcc: Create a stream associated with gl_draw for non-gl clients (v6)
  dcc-send: Encode and send gl_draw stream data to the remote client
    (v4)
  gstreamer-encoder: Add an encoder function that takes dmabuf fd as
    input (v3)
  video-stream: Don't stop a stream associated with gl_draw (v2)

 configure.ac                     |   2 +-
 meson.build                      |   2 +-
 server/dcc-send.cpp              | 158 +++++++++++++++++++-----
 server/dcc.cpp                   |  31 +++--
 server/dcc.h                     |   6 +
 server/display-channel-private.h |   1 +
 server/display-channel.cpp       |   1 +
 server/gstreamer-encoder.c       | 165 ++++++++++++++++++++-----
 server/video-encoder.h           |  13 ++
 server/video-stream.cpp          | 205 ++++++++++++++++++++++++++-----
 server/video-stream.h            |   4 +
 11 files changed, 486 insertions(+), 102 deletions(-)

-- 
2.45.1

