Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 713E86776F2
	for <lists+spice-devel@lfdr.de>; Mon, 23 Jan 2023 10:01:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E24CF10E330;
	Mon, 23 Jan 2023 09:01:41 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDC0F10E055
 for <spice-devel@lists.freedesktop.org>; Mon, 23 Jan 2023 09:01:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674464499; x=1706000499;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/vgev4S18qeRqQn9Yh26C+8SoJxzIHfIIYq5bYEy/tA=;
 b=eurieXBfp+OktMnDRTEoEbxRzqVxB8JkQyPfBBxPsQzVyjNSUq3fT2BZ
 Ht7V5BvW/EbuX6SjN/JlXf9OAk8pwv1mmRj6fWWOa5bCaWaqyLum6DPlJ
 bF4uV65CJqlFRqAmBcvM/x702UvpUBdEPvVxyBO1z2itYc8p2TlmjV5pS
 av73EHnuIwfz03z/UqhPtAJXAlCyizHxtG0525cd4CN91UIDdp2UvZOH7
 bT34KCcJlPiZ5TreihvABRJJsTa5YGfUQtthdz3Q7K3crHvvq+VJSBk7Y
 9kA+GXfl+U2jx7xBa9cZRmtCJTT61U73ORguUhY/TCZe6SNwmeqMloPrO g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="388352372"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="388352372"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 01:01:39 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="990340367"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="990340367"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 01:01:11 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 23 Jan 2023 00:41:22 -0800
Message-Id: <20230123084123.1038341-5-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230123084123.1038341-1-vivek.kasireddy@intel.com>
References: <20230123084123.1038341-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [RFC v2 4/5] video-stream: Force stream creation for
 a valid dmabuf fd
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

If a drawable contains a valid dmabuf fd, then it makes sense to
create a stream for it right away.

Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Marc-André Lureau <marcandre.lureau@redhat.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 server/video-stream.cpp | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/server/video-stream.cpp b/server/video-stream.cpp
index 28b42d91..8b957373 100644
--- a/server/video-stream.cpp
+++ b/server/video-stream.cpp
@@ -218,6 +218,9 @@ static bool is_next_stream_frame(const Drawable *candidate,
     if (!candidate->streamable) {
         return FALSE;
     }
+    if (candidate->dmabuf_fd > 0) {
+        return TRUE;
+    }
 
     if (candidate->creation_time - other_time >
             (stream ? RED_STREAM_CONTINUOUS_MAX_DELTA : RED_STREAM_DETECTION_MAX_DELTA)) {
@@ -448,7 +451,7 @@ static bool video_stream_add_frame(DisplayChannel *display,
         frame_drawable->last_gradual_frame = last_gradual_frame;
     }
 
-    if (is_stream_start(frame_drawable)) {
+    if (is_stream_start(frame_drawable) || frame_drawable->dmabuf_fd > 0) {
         display_channel_create_stream(display, frame_drawable);
         return TRUE;
     }
-- 
2.37.2

