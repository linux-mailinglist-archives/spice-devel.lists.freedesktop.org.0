Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65DEC909CEC
	for <lists+spice-devel@lfdr.de>; Sun, 16 Jun 2024 12:15:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 567F210E02B;
	Sun, 16 Jun 2024 10:15:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Edf38d7T";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com
 [209.85.128.170])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5710C10E02B
 for <spice-devel@lists.freedesktop.org>; Sun, 16 Jun 2024 10:15:53 +0000 (UTC)
Received: by mail-yw1-f170.google.com with SMTP id
 00721157ae682-6316253dc52so25835557b3.0
 for <spice-devel@lists.freedesktop.org>; Sun, 16 Jun 2024 03:15:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1718532952; x=1719137752; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=u7FG5pnG7d5Cj41SA/E2hhhnXc5xoXpLRzb4o6fTKFA=;
 b=Edf38d7TYMKOq+ugNdSMlyHAOw3uxi1XI2qYl1wRMBq9NSsL0fXldR+1BEViqYst7a
 rXT9Ya6RlSrEWSFwryHygOg+lyHYIqrVQSpGvns3Es6wOYM/gGowzw/pcwPz4Vq59iDW
 trv4cArMqHqtTuv2eAy95hMlyYW3v/k4faE1/+T/3GQfEb5x1rea3e7hGsA4qlj4KAmq
 665a25/8ym5wLyi93QlWO2SFYfOLHZc107JhaVUkSz5ctk4pKI3PFqweV+ZlYUcNSJtG
 IZMLtX2sEvA1FfE9Q6ouBdw9pvkwuNk6w4Mcyrszpd0RTrEKyrlGkq6TVEr/ueGw+/z5
 49bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718532952; x=1719137752;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=u7FG5pnG7d5Cj41SA/E2hhhnXc5xoXpLRzb4o6fTKFA=;
 b=v16oXynYgvpGZFhYycYEEzKs537ZaHPxnlJcMWF/x2CvBYFxmCyD1vg3vix3gzrfuj
 H06saJ98lf/W8sOusH/u6HOVVdqugQmD21cEYYM6nI13X9ctFS4ZlT7GZomdLvd2hiT5
 qhUWfqx/Deq9GcfocuvsAAbB0o4MEfaevSgyVqVvilkmO++8HsYJ/Q/cQEEdfW1v0CzV
 2hzGKhQGMiU3gWE2nkrpWlwbUrjm3hRbbe40yKDlLk0DuWYweT9FoDpEFSJAkpq9Z4uG
 8YcdeeKyPCTACMOAgRf3fnhCpsidr8R6rWqNo/kmF59kMh9rffqNEobZwz21uHdKhg3j
 qwfQ==
X-Gm-Message-State: AOJu0YyTeKrB7i1HRqtkAIJQa7nTwrO8bgngSb4wjmDJ8y1YOCwVmIS1
 s7Zn9mBGbTykOF4nKyYPnh32y0GJxOhAnWqPVTSI02PkTBmwg7vIs3Ed3kBfjS30H0DkiFNSXtw
 VOakj6EcT07eRfIWYSU/F9b5RY+4=
X-Google-Smtp-Source: AGHT+IHjcBExGh8CcgKkCF5XWgYuHZeypQzMq1mI28uC48XcF5kLgCa1KMksU5jJ3DYkTcz1wH13+sw/aZy1qQus8+U=
X-Received: by 2002:a0d:e6cf:0:b0:618:ce10:2fcd with SMTP id
 00721157ae682-6322295a61emr58963667b3.26.1718532952001; Sun, 16 Jun 2024
 03:15:52 -0700 (PDT)
MIME-Version: 1.0
References: <20240610183703.684420-1-vivek.kasireddy@intel.com>
In-Reply-To: <20240610183703.684420-1-vivek.kasireddy@intel.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Sun, 16 Jun 2024 11:15:40 +0100
Message-ID: <CAHt6W4fiGXBp6uUkduWm6K3wxCEFtJZbP9aT=cFYxU0g9x_qjg@mail.gmail.com>
Subject: Re: [PATCH v8 0/6] dcc: Create a stream for non-gl/remote clients
 that want to use dmabuf (v8)
To: Vivek Kasireddy <vivek.kasireddy@intel.com>
Cc: spice-devel@lists.freedesktop.org, Gerd Hoffmann <kraxel@redhat.com>, 
 =?UTF-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?= <marcandre.lureau@redhat.com>, 
 Dongwon Kim <dongwon.kim@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

Hi,
   I spent quite some time this weekend trying to use this new series
but I'm getting all blank screen for some reasons. Last time I got
something so the encoder was working on the system.
I also had to do some changes for compatibility, most of the CI is not
even compiling at the moment. Which distro are you using? I'll try to
set up one similar.
I saw the changes in Qemu. As I said Qemu side cannot detect correctly
if you are using a remote client or not, these patches are good for a
time being but that's a wrong solution. Not that I have something
better concrete at the moment, as I said I'm still trying this series.

Regards,
  Frediano

Il giorno lun 10 giu 2024 alle ore 20:03 Vivek Kasireddy
<vivek.kasireddy@intel.com> ha scritto:
>
> For clients that cannot accept a dmabuf fd directly (such as those
> running on a remote system), this patch series provides a way for
> the Spice server to stream the gl/dmabuf data/buffer instead. This
> is mostly done by enabling the creation of Gst memory using a dmabuf
> fd as the source. This ability is useful given that dmabuf is the
> standard mechanism for sharing buffers between various drivers and
> userspace in many Graphics and Media usecases. Currently, this is
> tested with Qemu and remote-viewer using the x264enc/avdec_h264
> and msdkh264enc/dec plugins to stream the Guest/VM desktop but it
> can be easily extended to other plugins and applications.
>
> Here is roughly how things work:
> - The application (e.g, Qemu) chooses its preferred codec (a Gstreamer
>   one) and calls gl_scanout (to update the fd) followed by gl_draw.
> - In response, the Spice server checks to see if the client is capable
>   of accepting a dmabuf fd directly or not. If yes, the fd is forwarded
>   directly to the client; otherwise, a new stream is created.
> - The Spice server then sends the dmabuf fd to the Gstreamer encoder
>   which uses it as an input for creating an encoded buffer which is then
>   sent to the client.
> - Once the encoding process is done, an async completion cookie is sent
>   to the application.
>
> Here is a link to the previous version that used a drawable to share
> the dmabuf fd with the Gstreamer encoder:
> https://lists.freedesktop.org/archives/spice-devel/2023-January/052948.ht=
ml
>
> This version is tested together with following (required) patches in qemu=
:
> https://gitlab.freedesktop.org/Vivek/qemu/-/commits/spice_gl_on_v4
>
> Changelog:
>
> v8:
> - Added a new gstreamer-encoder patch to this series to convert drm forma=
t
>   shared by the VMM to the appropriate Gstreamer format.
>
> v7:
> - Revert back to the previous design where we do not share fd with the st=
ream
>   and scanout is the sole owner of the fd. This is because sharing fd own=
ership
>   opens up a lot of corner cases.
>
> v6: (Frediano)
> - Properly share ownership of the dmabuf fd between stream and scanout
> - Ensure that a newly created stream is associated with all connected cli=
ents
>
> v5:
> - Addressed review comments from Frediano mainly regarding adding autocon=
f
>   support for gstreamer-allocators dependency and not needing to access
>   scanout as part of gl draw operation
>
> v4:
> - Test with Virgl enabled
> - Associate dmabuf's y0_top with stream's top_down variable
>
> v3:
> - Updated the second patch to have a new primary surface created
>   whenever a new stream gets created. This will avoid having to
>   trigger primary surface creation from Qemu. And, this change
>   also fixes the following error seen with v2:
>   ../server/display-channel.cpp:2074:display_channel_create_surface:
>   condition `!display->priv->surfaces[surface_id]' failed
> - Rebase all patches on master
>
> v2:
> - Update all patches to address review comments from Frediano
> - Tested this series with msdkh264enc/dec plugins that will be added
>   in another patch series
>
> Cc: Frediano Ziglio <freddy77@gmail.com>
> Cc: Gerd Hoffmann <kraxel@redhat.com>
> Cc: Marc-Andr=C3=A9 Lureau <marcandre.lureau@redhat.com>
> Cc: Dongwon Kim <dongwon.kim@intel.com>
>
> Vivek Kasireddy (6):
>   dcc: Check to see if the client supports multiple codecs (v2)
>   dcc: Create a stream associated with gl_draw for non-gl clients (v6)
>   dcc-send: Encode and send gl_draw stream data to the remote client
>     (v4)
>   gstreamer-encoder: Add an encoder function that takes dmabuf fd as
>     input (v3)
>   gstreamer-encoder: Map the drm format to appropriate Gstreamer format
>   video-stream: Don't stop a stream associated with gl_draw (v2)
>
>  configure.ac                     |   2 +-
>  meson.build                      |   2 +-
>  server/dcc-send.cpp              | 159 ++++++++++++++++----
>  server/dcc.cpp                   |  31 ++--
>  server/dcc.h                     |   6 +
>  server/display-channel-private.h |   1 +
>  server/display-channel.cpp       |   1 +
>  server/gstreamer-encoder.c       | 246 ++++++++++++++++++++++++++-----
>  server/video-encoder.h           |  14 ++
>  server/video-stream.cpp          | 205 ++++++++++++++++++++++----
>  server/video-stream.h            |   4 +
>  11 files changed, 563 insertions(+), 108 deletions(-)
>
> --
> 2.45.1
>
