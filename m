Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A26D36653E8
	for <lists+spice-devel@lfdr.de>; Wed, 11 Jan 2023 06:42:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D1F610E6E7;
	Wed, 11 Jan 2023 05:42:16 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AACE710E6E7
 for <spice-devel@lists.freedesktop.org>; Wed, 11 Jan 2023 05:42:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673415733; x=1704951733;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ohvmO11ya7nC4GEAelDDnwDO64+UBltPG8ZTLo8ThQA=;
 b=Dkm9aIKbBuq0rHziiF6Dvf9v6Ai8bexg44dA/LT43CIO24Jf8SXMKJSM
 DYSwErd5BHfMOIt381y1/wlu35vkZJm9KHnx4oSuMmdVKmeg+hBibietE
 NYYwz40V1dn/n7dXNlJX7sWCzzwrIA/9bwDwkTIrS/zQI6d5uweJEVCwa
 bT6Q9DMqvC5Y/KkffMVnaKIa2LELozuGIiuf+YVAPoi9uqjIhx29wpn8w
 fK+KSwD/j0zXvc011D0/M9+/tJ7lHkFc7Vk36Hu+3Zg1MLb/ksP//sT7U
 EQsJwEV1f2Z98cmlGMzTdmEdmYp+Vt4E+r7A2YL218dENzqurdRb9Zrqy A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="321027222"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="321027222"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2023 21:42:13 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="634832408"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="634832408"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2023 21:42:12 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 10 Jan 2023 21:22:35 -0800
Message-Id: <20230111052239.781285-1-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [RFC v1 0/4] gstreamer-encoder: Use a dmabuf
 allocator if the drawable has a valid fd
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

Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Marc-André Lureau <marcandre.lureau@redhat.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>

Vivek Kasireddy (4):
  red-parse-qxl: Extract the dmabuf fd from the scanout
  display-channel: Add the asyncs associated with dmabuf encode
  gstreamer-encoder: Use a dmabuf allocator if the drawable has a valid
    fd
  video-stream: Force stream creation for a valid dmabuf fd

 meson.build                |  2 +-
 server/dcc-send.cpp        | 28 ++++++++++++++++++++++++
 server/display-channel.cpp |  9 ++++++++
 server/display-channel.h   |  2 ++
 server/gstreamer-encoder.c | 44 +++++++++++++++++++++++++++++++++++---
 server/red-parse-qxl.cpp   |  8 +++++++
 server/red-parse-qxl.h     |  1 +
 server/red-qxl.cpp         | 26 ++++++++++++++++++++++
 server/red-qxl.h           |  1 +
 server/spice-qxl.h         |  2 ++
 server/spice-server.syms   |  1 +
 server/video-encoder.h     |  7 ++++++
 server/video-stream.cpp    | 14 +++++++++---
 13 files changed, 138 insertions(+), 7 deletions(-)

-- 
2.37.2

