Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 22FA7677C75
	for <lists+spice-devel@lfdr.de>; Mon, 23 Jan 2023 14:30:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1D2E10E493;
	Mon, 23 Jan 2023 13:30:16 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oa1-x2f.google.com (mail-oa1-x2f.google.com
 [IPv6:2001:4860:4864:20::2f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AB8410E493
 for <spice-devel@lists.freedesktop.org>; Mon, 23 Jan 2023 13:30:15 +0000 (UTC)
Received: by mail-oa1-x2f.google.com with SMTP id
 586e51a60fabf-1442977d77dso13882355fac.6
 for <spice-devel@lists.freedesktop.org>; Mon, 23 Jan 2023 05:30:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=hm+P6f0W2tTTfIrsMdGSdcPLkT19+xiV1o6p2SL+qNM=;
 b=d3Uze1iwGTOFEtlBIGQhAOymEtDpz3Eb5ERjiedf4fSauiLihJlajQZIrOcOFFdJrA
 EOHyRuspycGz8/FXSZYjH8rHlAPbfFEserVaj+YVmNdNlLuAM366qsxJygeep4Zz1a/O
 AdNk8Q0Yjr/lKxp/Ots9YqthIU3mWq+P2t46mc5SMX1QLTQBShVVfpu1HmtVW7E/hXlB
 U9jiKJrYZkiymnabs1VbRuMzl/pBIFEjuVhoelfHSNJWzDfPzo0IjKfH2nUC3RZA8uYA
 O8dlaxJQzvfnsTavlgUd51HHClh+uQB0QI80PSwd4ekhOIkhsAx5i3YRhJjmh8DVQWVL
 ULzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=hm+P6f0W2tTTfIrsMdGSdcPLkT19+xiV1o6p2SL+qNM=;
 b=XLrtDMW+LCf12s79JKEATuZepv1PwuYTVcmMiG+Dj+XI3xLUsWE/KQcWb2MZBXIWg0
 XZdPUgM0A0jnBfo6qU7XGdp9Ym6nkl/xQKvZcsVMWBnZZLEApj96ipcazheUA5Z3VPI2
 kwHBdxyta2acckJBUyX5lLmGqxuYsY33cSle2cg5H79uaswO+rdWAJADsaNPtW2QvAqR
 U/cbEcFZnck5B5/EcNlkRJVq31DM7JuKpH3Wu8K17aD1G4oBJWbTH/fMGFOLBx4nLtNA
 Px9GQZmxV4QkEh8yzR4v/0os3bDgtZx8xPZ11Kcz9yzuEqStWb7qu/hq/3UKnSHMt5FK
 fw6w==
X-Gm-Message-State: AFqh2kqfMGbAk/xZUcOgLIf8pQ32py/5c2TaPNqSm3JnWQPjM6QwgU9N
 ke9jF2eiPX8liwMeJGkgx5CcTv+DO4mQHyxVXMv/q9Zy
X-Google-Smtp-Source: AMrXdXvqFOi6J5Nz1kTCYYIcMUWlV3SiaztDx/JVfFXzgYbnN9lmnAWDZdYYc0Dhd4aSQ374GcASUvgj8inKd4pBcFU=
X-Received: by 2002:a05:6870:75ce:b0:15b:d2e:d059 with SMTP id
 de14-20020a05687075ce00b0015b0d2ed059mr2203749oab.179.1674480614756; Mon, 23
 Jan 2023 05:30:14 -0800 (PST)
MIME-Version: 1.0
References: <20230123084123.1038341-1-vivek.kasireddy@intel.com>
In-Reply-To: <20230123084123.1038341-1-vivek.kasireddy@intel.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Mon, 23 Jan 2023 13:30:03 +0000
Message-ID: <CAHt6W4cJb7OEhhwdX3ULMC2aox_x+S7QZSeFRguvW4kXVVvhzA@mail.gmail.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Spice-devel] [RFC v2 0/5] gstreamer-encoder: Use a dmabuf
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
Cc: spice-devel@lists.freedesktop.org, Dongwon Kim <dongwon.kim@intel.com>,
 Gerd Hoffmann <kraxel@redhat.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno lun 23 gen 2023 alle ore 09:01 Vivek Kasireddy
<vivek.kasireddy@intel.com> ha scritto:
>
> This patch series enables creation of Gst memory using a dmabuf fd
> as the source. This ability is useful given that dmabuf is the
> standard mechanism for sharing buffers between various drivers and
> userspace in many Graphics and Media usecases. Currently, this is
> only used/tested with Qemu and remote-viewer using the x264enc/dec
> codec to stream the Guest desktop but it can be extended to other
> plugins and applications.
>
> Here is the flow of things from the Spice server side:
> - The application calls gl_scanout (to update the fd) and gl_draw_async
>   and also sets the flag to indicate whether it is dealing with a local
>   or remote client.

That's weird, it's spice that knows the clients, not Qemu

> - Create a new drawable and extract the dmabuf fd from the scanout
>   as a response to QXL_CMD_DRAW cmd sent by the application.

Mumble... There's something I don't understand here. Specifically the
APIs used by Qemu. As far as I remember when Qemu passes a dmabuf
scanout there should be no QXL_CMD_DRAW command... has this changed?
That would mean 2 copies of the frame buffer, one for dmabuf and
another for memory version.

> - Share the drawable's copy of the fd with the Encoder.

As above, this should be already done by Qemu... unless changed.

> - Send the async completion cookie to the application once the encoder
>   is done using the fd.
>

This should already be there too in spice-server code, just not
supporting the remote case.

> v2:
> - Used the already existing gl_scanout and gl_draw_async APIs instead
>   of adding new ones.
> - Slightly refactored and improved the commits and their messages.
>
> Cc: Gerd Hoffmann <kraxel@redhat.com>
> Cc: Marc-Andr=C3=A9 Lureau <marcandre.lureau@redhat.com>
> Cc: Dongwon Kim <dongwon.kim@intel.com>
>
> Vivek Kasireddy (5):
>   gstreamer-encoder: Use a dmabuf allocator for a valid fd
>   display-channel: Extract the dmabuf fd from the scanout
>   display-channel: Share the drawable's copy of fd with the encoder
>   video-stream: Force stream creation for a valid dmabuf fd
>   red-qxl: Add a new parameter to gl_scanout and gl_draw_async
>
>  meson.build                |  2 +-
>  server/dcc-send.cpp        | 30 ++++++++++++++++++++++++
>  server/display-channel.cpp | 23 ++++++++++++++++++
>  server/display-channel.h   |  4 ++++
>  server/gstreamer-encoder.c | 48 +++++++++++++++++++++++++++++++++++---
>  server/red-qxl.cpp         | 14 +++++++----
>  server/spice-qxl.h         |  4 ++--
>  server/video-encoder.h     |  7 ++++++
>  server/video-stream.cpp    | 11 ++++++++-
>  9 files changed, 132 insertions(+), 11 deletions(-)
>
> --
> 2.37.2
>
