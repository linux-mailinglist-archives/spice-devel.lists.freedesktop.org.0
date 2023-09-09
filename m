Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 666717995E6
	for <lists+spice-devel@lfdr.de>; Sat,  9 Sep 2023 04:09:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19D2D10E113;
	Sat,  9 Sep 2023 02:09:42 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49F9E10E0CE
 for <spice-devel@lists.freedesktop.org>; Sat,  9 Sep 2023 02:09:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694225379; x=1725761379;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OObCYWAouiDhvgxJdZQnVGjbELJQr2xrlqU97Uc+K/Y=;
 b=lDYf9ORQrXVIZf8b5eg+jwpx3iwV2kOriXgwGcJ8YNdt0u6CRY1MCsNl
 3CHUtNmnhfTMlkXRNDmSaP37+dz0eRBMtBgZEK3SB2F+XTufEYMHwzWl5
 IKAisolSKa+LB0Nx97ROn0TfFlro2zlOuSfwK58l2IuQD2wmfg1TL5KuV
 KkIPfMaHAf1vIPenstyuZTUhbJuPETXTBw3/MTPOMPHQx1dyGSdxwZX7Y
 Ezr37M6iip5GWVQWP4mN7eT7FhXSn3Af0P8oYjflSylqXzBisTTghoQtp
 giTV3tpcDXdcESpIKrqGyy0EUm8Z0sxTphc7fyzB8Jp8v0YFRYfNPn8UT g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="358090411"
X-IronPort-AV: E=Sophos;i="6.02,238,1688454000"; d="scan'208";a="358090411"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 19:09:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="832857049"
X-IronPort-AV: E=Sophos;i="6.02,238,1688454000"; d="scan'208";a="832857049"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 19:09:24 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Fri,  8 Sep 2023 18:48:38 -0700
Message-Id: <20230909014843.260583-1-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH v2 0/5] dcc: Create a stream for non-gl/remote
 clients that want to use dmabuf (v2)
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

Cc: Frediano Ziglio <freddy77@gmail.com>
Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Marc-André Lureau <marcandre.lureau@redhat.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>

Vivek Kasireddy (5):
  dcc: Check to see if the client supports multiple codecs (v2)
  dcc: Create a stream associated with gl_draw for non-gl clients (v2)
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
 server/video-stream.cpp          | 120 +++++++++++++++-------
 server/video-stream.h            |   2 +
 10 files changed, 389 insertions(+), 103 deletions(-)

-- 
2.39.2

