Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CCB2154971
	for <lists+spice-devel@lfdr.de>; Thu,  6 Feb 2020 17:42:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 161AD6FAA9;
	Thu,  6 Feb 2020 16:42:36 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com
 [IPv6:2607:f8b0:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 263226FA2A
 for <spice-devel@lists.freedesktop.org>; Thu,  6 Feb 2020 10:21:24 +0000 (UTC)
Received: by mail-pf1-x444.google.com with SMTP id 185so2908828pfv.3
 for <spice-devel@lists.freedesktop.org>; Thu, 06 Feb 2020 02:21:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=285hGBeyDEuWuK9GHboTvoJ1nNlVTOiPiFz7p6gTZeA=;
 b=IRl6ADxEeaZcVHXBlmaucyLsfDiAsQttS9Aqmb3Aso5XIP9d9q5Aseia8xYcrYSYW8
 BU9m26hP2MM1p+/TqGNNS12aJ+CvdrHetPbo1LXceBgX3iS26BPyIEGwBqSnrQmK3s+7
 nnu+Mk1jFxdbJN1PeVWXtHCr9bJ2r8U0Mytk0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=285hGBeyDEuWuK9GHboTvoJ1nNlVTOiPiFz7p6gTZeA=;
 b=bPlxiikqPAeLS4ZfmdNhD8jFFp4Q+vVR4UdJkh0qtnLdwuM0EiLB0WMyPN6Sps0qst
 Mslw2xDcRQD1rgJMkCvXsJRwPSQ0NHk8CxKtUKYqQ0QNCiytR5A9CG64UtKg5t1qh5Dk
 13jZZYSyVd0q/7qv7mtqRiio2nCqM5Ba0ZyJ9U1woFeBX/A4FeQ11VeKYWbldkXJVac0
 SenHkndOxGwTObfzKuL2RYjAmvtn8MHJFShxXVXseCM/5QO96tu9WyFsSWV1MQ56St2b
 ipkviP/1lAQDTaBq91ZmR9IRZqW0RmQOu6w+6wujpXLePUNq/rDOn7B0M7dXkUcWsxN2
 oKuw==
X-Gm-Message-State: APjAAAWF3quLKkQ8j5rfVu4t4HcTk7ph48fcvbCxSaBHTAS4GkCykSjT
 +xUWsE63mTAclr70Go+IMed2VA==
X-Google-Smtp-Source: APXvYqwioWvoPL68xYIS9mGhV815DwhJrP/awpaRlx+n3TRUM43A/CgAVvfggHPktEvIamFzeA/7Hw==
X-Received: by 2002:a62:2b8a:: with SMTP id r132mr2895675pfr.56.1580984479973; 
 Thu, 06 Feb 2020 02:21:19 -0800 (PST)
Received: from keiichiw1.tok.corp.google.com
 ([2401:fa00:8f:203:863a:e217:a16c:53f2])
 by smtp.gmail.com with ESMTPSA id v4sm2590270pff.174.2020.02.06.02.21.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 02:21:19 -0800 (PST)
From: Keiichi Watanabe <keiichiw@chromium.org>
To: virtio-dev@lists.oasis-open.org
Date: Thu,  6 Feb 2020 19:20:56 +0900
Message-Id: <20200206102058.247258-1-keiichiw@chromium.org>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 06 Feb 2020 16:42:34 +0000
Subject: [Spice-devel] [PATCH v3 0/2] Virtio video device specification
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

Hi,
Here is the 3rd version of virtio-video patches.

This patch set consists of two changes.
The first patch adds the virtio-video protocol. This is an updated version of v2 patch [1].
The second patch adds a new feature to use exported objects from different virtio devices, which are proposed in [2], as video buffers.

PDFs are avaliable below:
* full version [3]
* only virtio-video section (first patch) [4]
* only virtio-video section (first+second patch) [5]

Best regards,
Keiichi

[1] https://markmail.org/thread/yb25fim2dqfuktgf
[2] https://markmail.org/message/2p5zgfanuv3fgwcu
[3] https://drive.google.com/file/d/1Kl3M6weAm0vV1kj9A5dq2yypLXe_6TS2/view?usp=sharing
[4] https://drive.google.com/file/d/1fN_6lft3RPuFKOnBm6P6XCy3fF7wwnu5/view?usp=sharing
[5] https://drive.google.com/file/d/1jOsS2WdVhL4PpcWLO8Zukq5J0fXDiWn-/view?usp=sharing

Changes v2 -> v3:
* Rename controlq -> commandq.
* Add {QUERY,GET,SET}_CONTROL for bitrate, profile and level.
* Update the definition of virtio_video_format_desc.
  - Remove fields for profiles and levels.
  - Define fields for memory layouts.
  - Stop using FOURCC and define enum virtio_video_format.
* Add a feature flag for non-contiguous memories.
* Add a new section for buffer lifecycle.
* Change RESOURCE_DESTROY to RESOURCE_DESTROY_ALL.
* Add fields in virtio_video_config.
* Remove constants like *_UNDEFINED or *_UNSPEC.
* Rename some constants and structs.
* Change structures and orders of subsections and paragraphs.
* Add more detailed description for each command.
* Address review comments.
* Add a feature for exported objects as a separate patch.

Dmitry Sepp (1):
  virtio-video: Add virtio video device specification

Keiichi Watanabe (1):
  virtio-video: Define a feature for exported objects from different
    virtio devices

 .gitignore                        |    1 +
 content.tex                       |    1 +
 images/video-buffer-lifecycle.dot |   18 +
 make-setup-generated.sh           |    8 +
 virtio-video.tex                  | 1030 +++++++++++++++++++++++++++++
 5 files changed, 1058 insertions(+)
 create mode 100644 .gitignore
 create mode 100644 images/video-buffer-lifecycle.dot
 create mode 100644 virtio-video.tex

--
2.25.0.341.g760bfbb309-goog
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
