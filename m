Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 70AF16BC5F0
	for <lists+spice-devel@lfdr.de>; Thu, 16 Mar 2023 07:05:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A52910E0F8;
	Thu, 16 Mar 2023 06:05:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8857410E0A0
 for <spice-devel@lists.freedesktop.org>; Thu, 16 Mar 2023 06:05:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678946701; x=1710482701;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IG3STk5KCWhm6eEaqjHM41Jx/E0oPRqpKuHSolq8crA=;
 b=cOruFTP8Fi3utK6GNw/EnuDaim2SJNreN25T6N3n+aZ7hK+Ps98wwRm9
 QD8xrBkiRdl1p7cGMUpbAuKS52fSP385gah7Bp649MRJqGHiJfKazXejG
 cvSb1DLvfYCxsQImuGC+jKuaQCubR81Xp3ud6FFu+fO78Yra78/tStmRR
 GzTHlp5GY//yJame6uzl+uci+sOS2uyZc31HKQiVj3hzmWd4t4JwWDs4m
 j+RH8Bb/ki8nyn7w+ot1peeDP2JmPF3TCuD3g9QN6muFHdK82ns44KIgm
 ym5z6z65dWtJ5FemrW2+ufKICtsd5MHl2wX/PYFIB5PTz2gKy5ynbM6wL A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="365588948"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="365588948"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 23:05:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="790141472"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="790141472"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 23:05:00 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 15 Mar 2023 22:44:53 -0700
Message-Id: <20230316054458.1546085-1-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH v1 0/5] dcc: Create a stream for non-gl/remote
 clients that want to use dmabuf
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
only used/tested with Qemu and remote-viewer using the x264enc/dec
codec to stream the Guest/VM desktop but it can be easily extended
to other plugins and applications.

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

Cc: Frediano Ziglio <freddy77@gmail.com>
Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Marc-André Lureau <marcandre.lureau@redhat.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>

Vivek Kasireddy (5):
  dcc: Check to see if the client supports multiple codecs
  dcc: Create a stream associated with gl_draw for non-gl clients
  dcc-send: Encode and send gl_draw stream data to the remote client
  gstreamer-encoder: Add an encoder function that takes dmabuf fd as
    input
  video-stream: Don't stop a stream if a gl_draw operation is pending

 meson.build                      |   2 +-
 server/dcc-private.h             |   4 ++
 server/dcc-send.cpp              |  89 ++++++++++++++++++++++-
 server/dcc.cpp                   |  36 +++++++---
 server/display-channel-private.h |   6 ++
 server/gstreamer-encoder.c       | 119 ++++++++++++++++++++++++++++++-
 server/video-encoder.h           |  13 ++++
 server/video-stream.cpp          |  65 ++++++++++++++++-
 server/video-stream.h            |   2 +
 9 files changed, 319 insertions(+), 17 deletions(-)

-- 
2.37.2

