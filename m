Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A486C8CFC63
	for <lists+spice-devel@lfdr.de>; Mon, 27 May 2024 11:03:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BC3910E55F;
	Mon, 27 May 2024 09:03:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FdGv+P++";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com
 [209.85.219.181])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 283BC10E55F
 for <spice-devel@lists.freedesktop.org>; Mon, 27 May 2024 09:03:14 +0000 (UTC)
Received: by mail-yb1-f181.google.com with SMTP id
 3f1490d57ef6-df4dda88ce9so5484372276.3
 for <spice-devel@lists.freedesktop.org>; Mon, 27 May 2024 02:03:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1716800593; x=1717405393; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=0PU19scSNAY+NQUw92K8tNTU9K2BQiU87Kid2yR9Vz0=;
 b=FdGv+P++/zlUpjw1uYwKX2Cn0nexnOWX5bfUikFOa1DbeRr63fkvmD6Xrnh1nGrHrT
 8lp+FQRPP17RkN0qKOdvJubtBweza1PFW1Pztobp/SJD6VUHyerdWDGqDeMlNZNkfYHj
 3bAPDcydtpCA6fnK27WpKHD5BdmTr4Ha8rYlQ0T8P/Hhoia/mi4rfW0nZAoKCMizg7lY
 oV/eABMjI6NydjnVsUBGMxXexnGsDgllghsWT9UxXVRprJEDAhmHqR2f5l0v5108Tmxg
 cbFjhzcmWdlXKPMXb2q+gXzkIb8/EWnvXx4uL/1GqZJAgMalZruxKRtjoLZqFLINs9tx
 qepQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1716800593; x=1717405393;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=0PU19scSNAY+NQUw92K8tNTU9K2BQiU87Kid2yR9Vz0=;
 b=NzMp9Q61A4lbQGlN7Ci3LCS30sryNOKLbjKvNC6HComyVmgZsoVN8p0V0i/5VTYxKk
 tmX++jMb5ashX+jl36Ugoi6V6vqap+RQusHSJG1ohcW4ulu3rzk9ABCEB1Rh8wC9fOPh
 zC5P5OwyvHQawxc+niIuJ37krL0tThN88D/rpi6D4+YYum7XOiUAb6dDVH/mMwXKbtnK
 xjNKmDMgznnATFq442wrILSK/nW78mY+1cXSHrDh92ad4X0tSL37Or8f6ewylqlvdfbu
 3yVUtGWYPt0g17l9f7hNXW288xLAqrBiX7C0utpgjO2Th/EI1pJQFLcnZBDoONiZbI31
 FRAA==
X-Gm-Message-State: AOJu0YwwCuUFaoUzx4+b5VNSxNRLbrrkdcZ3nJXYhmVqKhytuy0TEvTw
 ckAx/LlHlkWGam24FLRddmIVflyAmpuvKTUltycRnpL0KZ6hB+wS4+YN0enIJ78gKtP/tBthkTK
 /Yifx6JL+cDPJLasUNY4aIMLZfQw=
X-Google-Smtp-Source: AGHT+IE3I9oviRcMTa4OFSWsV+Sikv0jy/HRsAek/IMfwyvZib4Wxhk9akLFG1SyPwYlhefdK/QWzKSNB1i3Pvz55OQ=
X-Received: by 2002:a25:84c4:0:b0:df4:d29a:6897 with SMTP id
 3f1490d57ef6-df77218f252mr7927493276.35.1716800593100; Mon, 27 May 2024
 02:03:13 -0700 (PDT)
MIME-Version: 1.0
References: <20240304104643.1462676-1-vivek.kasireddy@intel.com>
In-Reply-To: <20240304104643.1462676-1-vivek.kasireddy@intel.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Mon, 27 May 2024 10:03:01 +0100
Message-ID: <CAHt6W4d9BZqctBRUVRJms-hrHC7bmqHifaLOgGqKnchhNM=r7g@mail.gmail.com>
Subject: Re: [PATCH v6 0/5] dcc: Create a stream for non-gl/remote clients
 that want to use dmabuf (v6)
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

Il giorno lun 4 mar 2024 alle ore 11:10 Vivek Kasireddy
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
> https://gitlab.freedesktop.org/Vivek/qemu/-/commits/spice_gl_on_v2
>
> Changelog:
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
>
> Vivek Kasireddy (5):
>   dcc: Check to see if the client supports multiple codecs (v2)
>   dcc: Create a stream associated with gl_draw for non-gl clients (v5)
>   dcc-send: Encode and send gl_draw stream data to the remote client
>     (v3)
>   gstreamer-encoder: Add an encoder function that takes dmabuf fd as
>     input (v3)
>   video-stream: Don't stop a stream associated with gl_draw (v2)
>
>  configure.ac                     |   2 +-
>  meson.build                      |   2 +-
>  server/dcc-send.cpp              | 150 ++++++++++++++++++-----
>  server/dcc.cpp                   |  36 ++++--
>  server/dcc.h                     |   6 +
>  server/display-channel-private.h |   1 +
>  server/display-channel.cpp       |   1 +
>  server/gstreamer-encoder.c       | 165 ++++++++++++++++++++-----
>  server/video-encoder.h           |  13 ++
>  server/video-stream.cpp          | 202 ++++++++++++++++++++++++++-----
>  server/video-stream.h            |   5 +
>  11 files changed, 479 insertions(+), 104 deletions(-)
>

Hi,
   I finally managed to try the series. Did it work on your side?
Looks like this series is still WIP/EXP/RFC quality, at this time I
supposed it should be converging to a working state.
By the way, it blinks a lot during boot, then when the machine
switches to the final desktop it gets blank. At that point even if you
close and reopen the client you get a blank screen.

Regards,
   Frediano
