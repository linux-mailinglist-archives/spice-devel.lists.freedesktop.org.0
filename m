Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F87C6F00DB
	for <lists+spice-devel@lfdr.de>; Thu, 27 Apr 2023 08:37:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2A0D10EAAD;
	Thu, 27 Apr 2023 06:37:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03B7E10EAAC
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Apr 2023 06:37:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682577466; x=1714113466;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hwTiC2JQ6Rj2uc+c/dFeCRPN5c/rJ1zSs+N3vNW5y50=;
 b=Ge2yim4xGzrGKc7OacDVWGGEgcOqBvJZM3n6EQUl/e+/pdqvwxKmlEu8
 ijTmGg2jwJyIy8GhK2oE2fc2fNt7rL/hMT2bq9CCm7tBDnSSpoBQIIC0B
 vyobR2olxseB3dMRyToxruGK12gRpjgAXUrtH0dCQsFAkOxrsDjIlWN9C
 2xvN+lPeKzDrdfzPORQZ3x6YakNLhiWQJU+nf4ARi5xaThBx582m4y4bf
 qlTYfuntrVIhUCPqYSP3Z3C0imrJ8rynTyJlhPygfRwGJVb/O4t0c/7DO
 pERWICdK/mWwvmVjh6/ja1C0kkEj1It70Sne09GajJ7hq6BXakrXZFr/H A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="336285557"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="336285557"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 23:37:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="758953653"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="758953653"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 23:37:44 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 26 Apr 2023 23:15:59 -0700
Message-Id: <20230427061601.1488225-1-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH 0/1] spice/gstreamer: Use h/w based
 encoders/decoders with Intel GPUs if possible
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
	Hazwan Arif <hazwan.arif.mazlan@intel.com>, Teng@freedesktop.org,
	Gerd Hoffmann <kraxel@redhat.com>,
	Jin Chung <jin.chung.teng@intel.com>, Mazlan@freedesktop.org
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

This two patch series includes a patch for Spice (server) to
automatically select h/w based encoder elements and another one
for Spice-gtk (client) to automatically select h/w based decoder
elements with Intel GPUs when these two conditions are met:
- An Intel GPU is available and is active (driver loaded)
- The relevant h/w based encoder/decoder elements are registered
  (i.e, Intel Media SDK Gstreamer plugin (libgstmsdk.so) and associated
  libraries (such as vaapi) are properly installed).

When tested on a Gen 12 Intel GPU (codenamed AlderLake/TigerLake)
with Qemu/Spice + h/w encoder elements, we noticed that the time
to encode a 1920x1080 BGRx frame was reduced to ~2-3 ms compared
to ~12-16 ms with a s/w encoder (x264enc). Other advantages
include reduced overall CPU utilization.

However, once these patches are applied, the only way to force
Spice/Spice-gtk to fallback to s/w based encoder/decoder is to
remove the msdk and or vaapi plugins from GST_PLUGIN_PATH. This
might be desirable for debugging purposes or for other reasons.

Cc: Frediano Ziglio <freddy77@gmail.com>
Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Marc-André Lureau <marcandre.lureau@redhat.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>
Cc: Mazlan, Hazwan Arif <hazwan.arif.mazlan@intel.com>
Cc: Teng, Jin Chung <jin.chung.teng@intel.com>

Vivek Kasireddy (1):
  channel-display-gst: Use h/w based decoders with Intel GPUs if
    possible

 meson.build               |   3 +
 src/channel-display-gst.c | 195 ++++++++++++++++++++++++++++++++++++++
 2 files changed, 198 insertions(+)

-- 
2.39.2

