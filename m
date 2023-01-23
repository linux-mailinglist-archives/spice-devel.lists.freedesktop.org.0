Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA6456776ED
	for <lists+spice-devel@lfdr.de>; Mon, 23 Jan 2023 10:01:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 428E410E329;
	Mon, 23 Jan 2023 09:01:27 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BBCE10E329
 for <spice-devel@lists.freedesktop.org>; Mon, 23 Jan 2023 09:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674464485; x=1706000485;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zp6WlXsrM9i/C+UqaYuo5e+SnJLcZbhCxN1yBx15apY=;
 b=gNvzUnN7czvu+N4Atf6M0YxzJ88f122D8SlKp6NaIT5Tz5QRR/dZf2ki
 iLFGuCN1dP8xWTkMXRcBcV/5QdGVgU1/iQ/T5af0rWA7SacWpFwl2n0N8
 YBYCL2N4w511Pk3Hy8dj6qFtpHNXGCKdTtgbiJvr8XoZp+C+iT9v1t2Z5
 vzdSbo6Rfa29Tnez9afekQ1RjTqWfuOXpOYvGtoyA+onr5kU0toevb7BD
 wB6dSVNEZAkRt1xdZQHW1UO+aIxvwhYZuuGxNB4utPMh9egfq0YIcVgAo
 6Ib+pICpbxCuvHGLqXKVl4rEqOHkSzoGgzcZ+IhNK0HwCyY1H1V4tGvFr w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="388352351"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="388352351"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 01:01:24 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="990340355"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="990340355"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 01:01:11 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 23 Jan 2023 00:41:18 -0800
Message-Id: <20230123084123.1038341-1-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [RFC v2 0/5] gstreamer-encoder: Use a dmabuf
 allocator if the drawable has a valid fd (v2)
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

This patch series enables creation of Gst memory using a dmabuf fd
as the source. This ability is useful given that dmabuf is the
standard mechanism for sharing buffers between various drivers and
userspace in many Graphics and Media usecases. Currently, this is
only used/tested with Qemu and remote-viewer using the x264enc/dec
codec to stream the Guest desktop but it can be extended to other
plugins and applications.

Here is the flow of things from the Spice server side:
- The application calls gl_scanout (to update the fd) and gl_draw_async
  and also sets the flag to indicate whether it is dealing with a local
  or remote client.
- Create a new drawable and extract the dmabuf fd from the scanout
  as a response to QXL_CMD_DRAW cmd sent by the application.
- Share the drawable's copy of the fd with the Encoder.
- Send the async completion cookie to the application once the encoder
  is done using the fd.

v2:
- Used the already existing gl_scanout and gl_draw_async APIs instead
  of adding new ones.
- Slightly refactored and improved the commits and their messages.

Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Marc-André Lureau <marcandre.lureau@redhat.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>

Vivek Kasireddy (5):
  gstreamer-encoder: Use a dmabuf allocator for a valid fd
  display-channel: Extract the dmabuf fd from the scanout
  display-channel: Share the drawable's copy of fd with the encoder
  video-stream: Force stream creation for a valid dmabuf fd
  red-qxl: Add a new parameter to gl_scanout and gl_draw_async

 meson.build                |  2 +-
 server/dcc-send.cpp        | 30 ++++++++++++++++++++++++
 server/display-channel.cpp | 23 ++++++++++++++++++
 server/display-channel.h   |  4 ++++
 server/gstreamer-encoder.c | 48 +++++++++++++++++++++++++++++++++++---
 server/red-qxl.cpp         | 14 +++++++----
 server/spice-qxl.h         |  4 ++--
 server/video-encoder.h     |  7 ++++++
 server/video-stream.cpp    | 11 ++++++++-
 9 files changed, 132 insertions(+), 11 deletions(-)

-- 
2.37.2

