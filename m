Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E394154972
	for <lists+spice-devel@lfdr.de>; Thu,  6 Feb 2020 17:42:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38C7D6FAAA;
	Thu,  6 Feb 2020 16:42:36 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com
 [IPv6:2607:f8b0:4864:20::1043])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D5646FA2A
 for <spice-devel@lists.freedesktop.org>; Thu,  6 Feb 2020 10:21:38 +0000 (UTC)
Received: by mail-pj1-x1043.google.com with SMTP id fa20so2298583pjb.1
 for <spice-devel@lists.freedesktop.org>; Thu, 06 Feb 2020 02:21:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=65YCJWjmfa0dliaE550tSY04e76y2grCHCxkgLjYGTY=;
 b=JO1iff/34azRNsCJWuyQdMmo0+BMDGw8xLDgbJayQfa2Wr3x9hvNKjEC9si2xt9hLU
 Qn3VrGbHx+w4wJ0a3B4jKlvOslj4L5y19yTGhCj+ixnGlqsiv3oeRARGIYG6LqLJIQbN
 +lgH7mutosxR9wpVIWMqt7HaQp5Lyhtorlps8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=65YCJWjmfa0dliaE550tSY04e76y2grCHCxkgLjYGTY=;
 b=lcqywQKvxClu2QbVA8AowOOxrVE49v6/N3DPqrEqWJR3xGz3IP2VCSiB2sKP5VP46Y
 EIEq9pka8evKoxXpun+DEK9f8lTS0LAR+k8FQQnPIPVl5j+jNgRow0OHfmB6LXi1hJhy
 12ygWAZumpj5Ukep0apO1jMI6GNSw4hhRs6RkmcI+QYdhipy3aBYkio4G6lcBnV2EFll
 g3LXtLFbkXzulZVdkdtBymgDsk/vj1WhfzniNrTZg+sf7DIIWm3wSG/U2HzgB2l4ZACN
 DYp1RE4tPQQaiqljNzS99FQgumtfaijfT2OgVmufLeZXvLbTtBHemjbHKrEFfEQRtIwh
 uxQQ==
X-Gm-Message-State: APjAAAX4Tohq7ImUSApoZmPqousG2JJPgDdE8f8UVVeTKYhQi75T1gyx
 gePP0CdG1FlmqGwz1kDgJPZ2sw==
X-Google-Smtp-Source: APXvYqz7vrHjYJa2VsWiHyLLmLkXvkFDvyB7pGNu0tbjfuMFjWsRB+XKHYg2Xgg0Gug/BMXmh8ARcQ==
X-Received: by 2002:a17:90a:cc02:: with SMTP id
 b2mr3189756pju.137.1580984498064; 
 Thu, 06 Feb 2020 02:21:38 -0800 (PST)
Received: from keiichiw1.tok.corp.google.com
 ([2401:fa00:8f:203:863a:e217:a16c:53f2])
 by smtp.gmail.com with ESMTPSA id v4sm2590270pff.174.2020.02.06.02.21.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 02:21:37 -0800 (PST)
From: Keiichi Watanabe <keiichiw@chromium.org>
To: virtio-dev@lists.oasis-open.org
Date: Thu,  6 Feb 2020 19:20:58 +0900
Message-Id: <20200206102058.247258-3-keiichiw@chromium.org>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
In-Reply-To: <20200206102058.247258-1-keiichiw@chromium.org>
References: <20200206102058.247258-1-keiichiw@chromium.org>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 06 Feb 2020 16:42:34 +0000
Subject: [Spice-devel] [PATCH v3 2/2] virtio-video: Define a feature for
 exported objects from different virtio devices
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
Cc: samiullah.khawaja@opensynergy.com, alexlau@chromium.org,
 kiran.pawar@opensynergy.com, acourbot@chromium.org, dstaessens@chromium.org,
 tfiga@chromium.org, hverkuil@xs4all.nl, stevensd@chromium.org,
 kraxel@redhat.com, daniel@ffwll.ch, spice-devel@lists.freedesktop.org,
 dmitry.sepp@opensynergy.com, marcheu@chromium.org, dgreid@chromium.org,
 egranata@google.com, posciak@chromium.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Define a new feature in the virtio-video protocol to use objects
exported from different virtio devices as video buffers.

Signed-off-by: Keiichi Watanabe <keiichiw@chromium.org>
---
 virtio-video.tex | 58 +++++++++++++++++++++++++++++++++++++++++-------
 1 file changed, 50 insertions(+), 8 deletions(-)

diff --git a/virtio-video.tex b/virtio-video.tex
index 2eeee53..5d7451f 100644
--- a/virtio-video.tex
+++ b/virtio-video.tex
@@ -30,12 +30,16 @@ \subsection{Feature bits}
   non-contiguous memories for video buffers. Without this flag, the
   driver and device MUST use video buffers that are contiguous in the
   device-side.
+\item[VIRTIO_VIDEO_F_RESOURCE_VIRTIO_OBJECT (2)] Object exported by
+  another virtio device can be used for video buffers.
 \end{description}
 
 \devicenormative{\subsubsection}{Feature bits}{Device Types / Video
   Device / Feature bits}
 
-The device MUST offer VIRTIO_VIDEO_F_RESOURCE_GUEST_PAGES.
+The device MUST offer at least either
+VIRTIO_VIDEO_F_RESOURCE_GUEST_PAGES or
+VIRTIO_VIDEO_F_RESOURCE_VIRTIO_OBJECT.
 
 \subsection{Device configuration layout}
 \label{sec:Device Types / Video Device / Device configuration layout}
@@ -182,8 +186,9 @@ \subsubsection{Command Virtqueue}
 The device MUST return its capability with \field{
   virtio_video_capability_resp} that includes the following fields:
 \begin{description}
-\item[\field{num_descs}] is a number of \field{virtio_video_format_desc}
-  that follow. The value MUST not exceed 64.
+\item[\field{num_descs}] is a number of
+  \field{virtio_video_format_desc} that follow. The value MUST not
+  exceed 64.
 \end{description}
 
 The format description \field{virtio_video_format_desc} is defined as
@@ -299,6 +304,7 @@ \subsubsection{Command Virtqueue}
 \begin{lstlisting}
 enum virtio_video_mem_type {
         VIRTIO_VIDEO_MEM_TYPE_GUEST_PAGES,
+        VIRTIO_VIDEO_MEM_TYPE_VIRTIO_OBJECT,
 };
 
 struct virtio_video_stream_create {
@@ -310,13 +316,19 @@ \subsubsection{Command Virtqueue}
         u8 tag[64];
 };
 \end{lstlisting}
+
 \begin{description}
 \item[\field{in_mem_type, out_mem_type}] is a type of buffer
-  management for input /output buffers. The driver MUST set a value in
+  management for input/output buffers. The driver MUST set a value in
   \field{enum virtio_video_mem_type} that the device reported a
   corresponding feature bit.
 \begin{description}
-\item[\field{VIRTIO_VIDEO_MEM_TYPE_GUEST_PAGES}] Use guest pages.
+\item[\field{VIRTIO_VIDEO_MEM_TYPE_GUEST_PAGES}] Use guest pages. The
+  driver MUST not set this value if a feature bit
+  VIRTIO_VIDEO_F_RESOURCE_GUEST_PAGES is not set.
+\item[\field{VIRTIO_VIDEO_MEM_TYPE_VIRTIO_OBJECT}] Use object exported
+  by another virtio device. The driver MUST not set this value if a
+  feature bit VIRTIO_VIDEO_F_RESOURCE_VIRTIO_OBJECT is not set.
 \end{description}
 \item[\field{coded_format}] is the encoded format that will be
   processed.
@@ -365,7 +377,13 @@ \subsubsection{Command Virtqueue}
         le32 num_planes;
         le32 plane_offsets[VIRTIO_VIDEO_MAX_PLANES];
         le32 num_entries[VIRTIO_VIDEO_MAX_PLANES];
-        /* Followed by struct virtio_video_mem_entry entries[] */
+        /*
+         * Followed by either
+         * - struct virtio_video_mem_entry entries[]
+         *   for VIRTIO_VIDEO_MEM_TYPE_GUEST_PAGES
+         * - struct virtio_video_object_entry entries[]
+         *   for VIRTIO_VIDEO_MEM_TYPE_VIRTIO_OBJECT
+         */
 };
 \end{lstlisting}
 \begin{description}
@@ -387,8 +405,13 @@ \subsubsection{Command Virtqueue}
   used.
 \end{description}
 
-The \field{virtio_video_resource_create} is followed by an array of
-\field{virtio_video_mem_entry} defined as follows:
+The data following \field{virtio_video_resource_create} depend on a
+type of \field{virtio_video_mem_type} specified in
+\field{virtio_video_stream_create}.
+\begin{itemize*}
+\item When \field{VIRTIO_VIDEO_MEM_TYPE_GUEST_PAGES} was specified,
+  \field{virtio_video_resource_create} is followed by an array of
+  \field{virtio_video_mem_entry} defined as follows:
 \begin{lstlisting}
 struct virtio_video_mem_entry {
         le64 addr;
@@ -403,6 +426,25 @@ \subsubsection{Command Virtqueue}
 The number of \field{virtio_video_mem_entry} MUST be equal to the sum
 of integers in the array \field{num_entries}.
 
+\item When \field{VIRTIO_VIDEO_MEM_TYPE_VIRTIO_OBJECT} was specified,
+  \field{virtio_video_resource_create} is followed by an array of
+  \field{virtio_video_object_entry} defined as follows:
+
+\begin{lstlisting}
+struct virtio_video_object_entry {
+        le64 uuid_low;
+        le64 uuid_high;
+};
+\end{lstlisting}
+\begin{description}
+\item[\field{uuid_low, uuid_high}] is a UUID of the resource.
+\end{description}
+If \field{planes_layout} is VIRTIO_VIDEO_PLANES_LAYOUT_SINGLE_BUFFER,
+the number of \field{virtio_video_object_entry} MUST be one. If it is
+VIRTIO_VIDEO_PLANES_LAYOUT_PER_PLANE, the number MUST be equal to
+\field{num_planes}.
+\end{itemize*}
+
 \item[VIRTIO_VIDEO_CMD_RESOURCE_DESTROY_ALL] Invalidate all the
   resource descriptor created so far.
 \begin{lstlisting}
-- 
2.25.0.341.g760bfbb309-goog

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
