Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D5AC12488E
	for <lists+spice-devel@lfdr.de>; Wed, 18 Dec 2019 14:41:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC56B6E2DA;
	Wed, 18 Dec 2019 13:41:55 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com
 [IPv6:2607:f8b0:4864:20::1041])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAB6D6E44F
 for <spice-devel@lists.freedesktop.org>; Wed, 18 Dec 2019 13:02:30 +0000 (UTC)
Received: by mail-pj1-x1041.google.com with SMTP id m13so853950pjb.2
 for <spice-devel@lists.freedesktop.org>; Wed, 18 Dec 2019 05:02:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JzaO5WtpgwLAmsU8nrkRKlactThbvdf9yWb4bZzd9rc=;
 b=ggip1Gf2w1baqbQS4dPCE3q1Xqo5Q4689csRCQMDxOI/vijCYIMp1Oox6ul3Sdm0VW
 u60YB4kuZTNnacJzX1EC9oyKYFrpOtlrmzmsHYKJxUJ4WQuLRE9gUQ63sYI9VmpjxbTV
 hqDcX5XhL/8sUIHdsgee0el4UyNHZ3B+aT6FY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JzaO5WtpgwLAmsU8nrkRKlactThbvdf9yWb4bZzd9rc=;
 b=sK2l9t9Z4Ps+OhtRwPHeBSSOq4xm5jyHlfB9DoxjVHFVcHNKK67+OHMtbhF23bzsjg
 d3hbJA1O2h9VlzhF8jXaybCJjkNFPhdo5sulVD0/uhGf33jABJ0hNj2x/GoUzV7wCiT3
 MuGRFhIsh51vkVhsdM3hJ1FvdMW34z03wiIHtNDQf6gzXN0P325js4tVK/DPzYiX3lFM
 frJuQztaaGS4wSEFQpNhVqSkPg74M26DN5b59tpUNQUrpi185dfRGGv+2duAXEmaL/pc
 6knCFRrJ0H+YTCpoROV9i33s35UCd1kdMObwsYztuTBy5yCp4SZvyXYST76nrNjZl3tW
 3Q6w==
X-Gm-Message-State: APjAAAW8lRjxWG7KeGz7U+ZrSoEoGuSTHXw5cpiGCuLxH76HhWKM1oUZ
 qgi4BSbusFYa3LrS9STB46eNbA==
X-Google-Smtp-Source: APXvYqwKenAGbhdh9Zb7DJKpUcOwRRwak1iLnbY4ofgN7GrJutJu2vCrM7ulrIUbIN6KNrYkDJhGOw==
X-Received: by 2002:a17:902:9a8e:: with SMTP id
 w14mr2482069plp.315.1576674150416; 
 Wed, 18 Dec 2019 05:02:30 -0800 (PST)
Received: from keiichiw1.tok.corp.google.com
 ([2401:fa00:8f:203:863a:e217:a16c:53f2])
 by smtp.gmail.com with ESMTPSA id p17sm3283796pfn.31.2019.12.18.05.02.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 05:02:29 -0800 (PST)
From: Keiichi Watanabe <keiichiw@chromium.org>
To: virtio-dev@lists.oasis-open.org
Date: Wed, 18 Dec 2019 22:02:13 +0900
Message-Id: <20191218130214.170703-1-keiichiw@chromium.org>
X-Mailer: git-send-email 2.24.1.735.g03f4e72817-goog
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 18 Dec 2019 13:41:55 +0000
Subject: [Spice-devel] [PATCH v2 0/1] VirtIO video device specification
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
Cc: keiichiw@chromium.org, alexlau@chromium.org, acourbot@chromium.org,
 tfiga@chromium.org, hverkuil@xs4all.nl, stevensd@chromium.org,
 kraxel@redhat.com, daniel@ffwll.ch, spice-devel@lists.freedesktop.org,
 dmitry.sepp@opensynergy.com, marcheu@chromium.org, dgreid@chromium.org,
 egranata@google.com, posciak@chromium.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi,
This is the 2nd version of virtio-video patch. The PDF is available in [1].
The first version was sent at [2].

Any feedback would be appreciated. Thank you.

Best,
Keiichi

[1]: https://drive.google.com/drive/folders/1eT5fEckBoor2iHZR4f4GLxYzFMVapOFx?usp=sharing
[2]: https://markmail.org/message/gc6h25acct22niut

Change log:

v2:
* Removed functionalities except encoding and decoding.
* Splited encoder and decoder into different devices that use the same protocol.
* Replaced GET_FUNCS with GET_CAPABILITY.
* Updated structs for capabilities.
  - Defined new structs and enums such as image formats, profiles, range (min,
  max, step), etc
    * For virtio_video_pixel_format, chose a naming convention that is used
      in DRM. We removed XBGR, NV21 and I422, as they are not used in the
      current draft implementation. https://lwn.net/Articles/806416/
  - Removed virtio_video_control, whose usage was not documented yet and which
    is not necessary for the simplest decoding scenario.
  - Removed virtio_video_desc, as it is no longer needed.
* Updated struct virtio_video_config for changes around capabilities.
* Added a way to represent supported combinations of formats.
  - A field "mask" in virtio_video_format_desc plays this role.
* Removed VIRTIO_VIDEO_T_STREAM_{START,STOP} because they don't play any meaningful roles.
* Removed VIRTIO_VIDEO_T_STREAM_{ATTACH, DETACH}_BACKING and merged them into RESOURCE_{CREATE, DESTROY}.
* Added a way to notify/specify resource creation method.
  - Added a feature flag.
  - Defined enum virtio_video_mem_type.
  - Added new fields in video_stream_create.
* Modified fields in virtio_video_params.
  - Added crop information.
* Removed enum virtio_video_channel_type because we can get this information by image format.
* Renamed virtio_video_pin to virtio_video_buf_type.
  - It's similar to V4L2_BUF_TYPE_VIDEO_{OUTPUT, CAPTURE}.
* Added an error event.
* Reordered some subsections.
* Changed styles to make it consistent with other devices.

Dmitry Sepp (1):
  virtio-video: Add virtio video device specification

 content.tex      |   1 +
 virtio-video.tex | 579 +++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 580 insertions(+)
 create mode 100644 virtio-video.tex

--
2.24.1.735.g03f4e72817-goog
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
