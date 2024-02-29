Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 113A086D214
	for <lists+spice-devel@lfdr.de>; Thu, 29 Feb 2024 19:24:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AE1A10E025;
	Thu, 29 Feb 2024 18:24:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NSt03qxq";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com
 [209.85.219.170])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75BE210E025
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Feb 2024 18:24:26 +0000 (UTC)
Received: by mail-yb1-f170.google.com with SMTP id
 3f1490d57ef6-dc6dcd9124bso1308851276.1
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Feb 2024 10:24:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1709231065; x=1709835865; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=9p4EDmb7l8rZtBCOiBVmmuun1ZnSmsLDgCsul4GMPzE=;
 b=NSt03qxqmkI2TaCouVb8iMpg63GWY8bRa9I1zYSyVuJx/5KhvDyU2KQqd9LEKPS9NK
 HkLaHTLOOZCjYPJbUiKgKn5IMpKU3b8OxZmtDEzs8Bx8ZQRmWfjVPYNCZluMIyaY1Us5
 T5wZyEKm2WFH1losEMROVPMr3Qz8jVmsNnZJaXD+5Dn9v77w2H/Zpw4T1N+4M7c36K7A
 0vMr/o77kcpFVVCFDdBv/1x0Mgp8Le+y6pMTmJ0Ee6VE3XR0YR8DMwgYAbh3uhrrdagN
 BMsdQwCBX61pnCZIbYZ4AC363kYGR03VdtA49bCtXLvx30u4m23MzF5Nhp++JQNxII4k
 6GJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709231065; x=1709835865;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=9p4EDmb7l8rZtBCOiBVmmuun1ZnSmsLDgCsul4GMPzE=;
 b=ivPj5zyEoQtnJpGht0Pxre1CwSDBApOKar8yZHvuHTZfKKENaDPON4PMW89jgVYxLc
 6cDhSZw1zJTI1P6+WmVea8sIe5LnVRZOHN8FRMNYOUFUlRHh/sSdU9pyUo6oh1cdvqxX
 3LZniAIQZA7oEEuuvIzXt6nJSzOII08To4PCYNUz5xUgGlKXEzJVUMmgJb+00HTeEn+z
 sYRm7Ni8V6Er3Oomy1AgyfdQE9V8sMTab/Atftw5tGQ7WpsgOWMHLt05Tua8tYs4L9+B
 GwKEtWOW/dpohl+9hl0oNP5RzjiqjmBc5nu9uuFyEVmVBl3k0LosVMHmMSEKWmIBHHZT
 pU7A==
X-Gm-Message-State: AOJu0YwOcrNwVrEwcxvd94MpLxTjxuWJna12NzuP5EVGaFOhepdHpN2K
 yHefjxdq9qzZrwfutd8eZ1dUeY5GwGVnLGQpxikAkx/tRQRwzneMKtjUA31K5R1DfqeKuVAPQka
 pUkgkUnqGZTHRg9t1lb4dcEoJE1w=
X-Google-Smtp-Source: AGHT+IGLBatlc4dyrXMCcZ+W1n2KUB0FVBIihpl9rfzhR2xQ5URex2fhWwoDmIpMZPGeOgWDHctOVQH8PF2MW+T9vk8=
X-Received: by 2002:a5b:551:0:b0:dc6:b8f5:50ae with SMTP id
 r17-20020a5b0551000000b00dc6b8f550aemr2959758ybp.32.1709231065233; Thu, 29
 Feb 2024 10:24:25 -0800 (PST)
MIME-Version: 1.0
References: <20240228081730.1374127-1-vivek.kasireddy@intel.com>
 <20240228081730.1374127-6-vivek.kasireddy@intel.com>
In-Reply-To: <20240228081730.1374127-6-vivek.kasireddy@intel.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Thu, 29 Feb 2024 18:24:14 +0000
Message-ID: <CAHt6W4ebybvuCGkRzw79LukY9SUi-6kQwudomCMrW-61Ns_qCw@mail.gmail.com>
Subject: Re: [PATCH v4 5/5] video-stream: Don't stop a stream associated with
 gl_draw (v2)
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

Il giorno mer 28 feb 2024 alle ore 08:41 Vivek Kasireddy
<vivek.kasireddy@intel.com> ha scritto:
>
> We do not want to stop a stream associated with gl_draw as a result
> of timeout because we may not get another opportunity to create a
> new stream if the current one gets stopped. However, when the
> stream does get stopped for other reasons, we need to clear the
> gl_draw_stream pointer associated with the relevant DC.
>
> v2: (suggestions from Frediano)
> - Don't stop the stream regardless of whether gl_draw is ongoing
>   or not
>
> Cc: Frediano Ziglio <freddy77@gmail.com>
> Cc: Gerd Hoffmann <kraxel@redhat.com>
> Cc: Marc-Andr=C3=A9 Lureau <marcandre.lureau@redhat.com>
> Cc: Dongwon Kim <dongwon.kim@intel.com>
> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> ---
>  server/video-stream.cpp | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/server/video-stream.cpp b/server/video-stream.cpp
> index 5d4e2690..a7233459 100644
> --- a/server/video-stream.cpp
> +++ b/server/video-stream.cpp
> @@ -116,6 +116,10 @@ void video_stream_stop(DisplayChannel *display, Vide=
oStream *stream)
>          }
>          dcc->pipe_add(video_stream_destroy_item_new(stream_agent));
>          video_stream_agent_stats_print(stream_agent);
> +
> +        if (stream =3D=3D display->priv->gl_draw_stream) {
> +            display->priv->gl_draw_stream =3D nullptr;
> +        }
>      }
>      display->priv->streams_size_total -=3D stream->width * stream->heigh=
t;
>      ring_remove(&stream->link);
> @@ -1016,7 +1020,8 @@ void video_stream_timeout(DisplayChannel *display)
>      while (item) {
>          VideoStream *stream =3D SPICE_CONTAINEROF(item, VideoStream, lin=
k);
>          item =3D ring_next(ring, item);
> -        if (now >=3D (stream->last_time + RED_STREAM_TIMEOUT)) {
> +        if (now >=3D (stream->last_time + RED_STREAM_TIMEOUT) &&
> +            stream !=3D display->priv->gl_draw_stream) {
>              detach_video_stream_gracefully(display, stream, nullptr);
>              video_stream_stop(display, stream);
>          }

Acked

Frediano
