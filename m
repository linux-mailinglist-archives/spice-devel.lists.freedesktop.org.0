Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE22665AC4
	for <lists+spice-devel@lfdr.de>; Wed, 11 Jan 2023 12:49:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8108310E70F;
	Wed, 11 Jan 2023 11:49:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com
 [IPv6:2607:f8b0:4864:20::235])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 624CF10E70F
 for <spice-devel@lists.freedesktop.org>; Wed, 11 Jan 2023 11:49:07 +0000 (UTC)
Received: by mail-oi1-x235.google.com with SMTP id c133so12527397oif.1
 for <spice-devel@lists.freedesktop.org>; Wed, 11 Jan 2023 03:49:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=nbNgKxL0DskhHEjF2nHu6xTyFaSSoi7sYInuSGJlRvk=;
 b=AeWi+GxgaBsuRa6Gx4SnJ4ATupC4ZN+r77WCmZDUWe5TCbbKB3HXS46E94D/2sU8Zx
 57f0PaGldDDx7JdX+kj7g5VcnTwrJfQQ4pFd7nR3wR4ayHjYWd1Hn3AU1DzAAAJr2KGG
 xf1OIk1+BANShHNn0pjir6Fcogz1vBbIMkhyIxzKzidIljPLyr1L3LGGe7mXzk0jcaMv
 KNT4o4RlEUFPlqqSg/hEsVA2b+y1KkAq18H19dgMk3uIiYwHZeemElyZOnsazLbGn9nu
 hK1asD15FUSUL3PvHeemVvjfXFyawyqZXMq8TaIXP5dG/6DOsdAAUrBMBxpprhT/ksbr
 arIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=nbNgKxL0DskhHEjF2nHu6xTyFaSSoi7sYInuSGJlRvk=;
 b=DP8D+7M87vOIzsF0381Ym6l5hUo6oekmCbYOU7oD8woWd83nVo+Gyo1u5sM51orZj9
 LWTQ685iI6kdmaxuJ/xlEB6PqJFgc4oFkgHV/SY8RcD3sKzyle3WGA35jpKsST4Cd2w+
 3B5SiZtaH/vqd5648g0B4jjjI1tMedaxlMukbonFFThn1760103eqwNnW0mlfmdT/xt7
 9gu/yf/LJO34vEWWqVbf+++/4xM8RH00ztO0DGlfIFFsi8HV7mFLpKsqHyw+HIfQpJ/Y
 mx/mvqveCkJ3YtNZOCcD+7GHBy8IYTGYgk+ij25OecqiIOptyTTIpulvb53K5kg9VvJ8
 G+2w==
X-Gm-Message-State: AFqh2kpws4XC28CNrI7y/fngpmYXZ1NVr7s60d+UHAXCsHPuEaS4FulN
 MKdfk/5kCyRa5Swh1tngJuLVUy8xhBYmM2q30zM=
X-Google-Smtp-Source: AMrXdXsP3j0HUKTaGTp6vG/k5IldZ8i2Z5WnZElboiVZjDxzex6T5Xfxo9B03jesGBOdLLRkZMxeum9BpoLbxujHN2U=
X-Received: by 2002:a05:6808:1893:b0:35a:3bb8:da5e with SMTP id
 bi19-20020a056808189300b0035a3bb8da5emr4361674oib.1.1673437746649; Wed, 11
 Jan 2023 03:49:06 -0800 (PST)
MIME-Version: 1.0
References: <20230111052239.781285-1-vivek.kasireddy@intel.com>
 <20230111052239.781285-3-vivek.kasireddy@intel.com>
In-Reply-To: <20230111052239.781285-3-vivek.kasireddy@intel.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Wed, 11 Jan 2023 11:48:55 +0000
Message-ID: <CAHt6W4cVJP4stB7j0S+ZG3gdgq1NAyRi0EyERcHeOw0ydeapWg@mail.gmail.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Spice-devel] [RFC v1 2/4] display-channel: Add the asyncs
 associated with dmabuf encode
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

Il giorno mer 11 gen 2023 alle ore 05:42 Vivek Kasireddy
<vivek.kasireddy@intel.com> ha scritto:
>
> This async is triggered by the encoder indicating that the
> encoding process is completed.
>

This description does not make much sense to me.
You are adding a public function which, I suppose, should be called by
Qemu but you are stating the encoder is calling it.
Unless Qemu is the encoder it does not make sense.

> Cc: Gerd Hoffmann <kraxel@redhat.com>
> Cc: Marc-Andr=C3=A9 Lureau <marcandre.lureau@redhat.com>
> Cc: Dongwon Kim <dongwon.kim@intel.com>
> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> ---
>  server/display-channel.cpp |  9 +++++++++
>  server/display-channel.h   |  2 ++
>  server/red-qxl.cpp         | 26 ++++++++++++++++++++++++++
>  server/red-qxl.h           |  1 +
>  server/spice-qxl.h         |  2 ++
>  server/spice-server.syms   |  1 +
>  6 files changed, 41 insertions(+)
>
> diff --git a/server/display-channel.cpp b/server/display-channel.cpp
> index 4bd0cf41..81df5420 100644
> --- a/server/display-channel.cpp
> +++ b/server/display-channel.cpp
> @@ -2334,6 +2334,15 @@ void display_channel_gl_draw_done(DisplayChannel *=
display)
>      set_gl_draw_async_count(display, display->priv->gl_draw_async_count =
- 1);
>  }
>
> +void display_channel_encode_done(DisplayChannel *display,
> +                                 RedDrawable *red_drawable)
> +{
> +    if (red_drawable->dmabuf_fd > 0) {
> +        red_qxl_dmabuf_encode_async_complete(display->priv->qxl);
> +        red_drawable->dmabuf_fd =3D 0;
> +    }
> +}
> +
>  int display_channel_get_video_stream_id(DisplayChannel *display, VideoSt=
ream *stream)
>  {
>      return static_cast<int>(stream - display->priv->streams_buf.data());
> diff --git a/server/display-channel.h b/server/display-channel.h
> index c54df25c..0a1e520c 100644
> --- a/server/display-channel.h
> +++ b/server/display-channel.h
> @@ -127,6 +127,8 @@ void                       display_channel_gl_scanout=
                (DisplayCha
>  void                       display_channel_gl_draw                   (Di=
splayChannel *display,
>                                                                        Sp=
iceMsgDisplayGlDraw *draw);
>  void                       display_channel_gl_draw_done              (Di=
splayChannel *display);
> +void                       display_channel_encode_done               (Di=
splayChannel *display,
> +                                                                      Re=
dDrawable *drawable);
>
>  void display_channel_process_draw(DisplayChannel *display,
>                                    red::shared_ptr<RedDrawable> &&red_dra=
wable,
> diff --git a/server/red-qxl.cpp b/server/red-qxl.cpp
> index 48c293ae..42a4029b 100644
> --- a/server/red-qxl.cpp
> +++ b/server/red-qxl.cpp
> @@ -493,6 +493,32 @@ void red_qxl_gl_draw_async_complete(QXLInstance *qxl=
)
>      red_qxl_async_complete(qxl, cookie);
>  }
>
> +SPICE_GNUC_VISIBLE
> +void spice_qxl_dmabuf_encode_async(QXLInstance *qxl,
> +                                   int fd, uint64_t cookie)
> +{
> +    QXLState *qxl_state;
> +
> +    spice_return_if_fail(qxl !=3D nullptr);
> +    qxl_state =3D qxl->st;
> +
> +    qxl_state->scanout.drm_dma_buf_fd =3D fd;
> +    qxl_state->gl_draw_cookie =3D cookie;

This behaviour is prone to leak resources.

> +}
> +
> +void red_qxl_dmabuf_encode_async_complete(QXLInstance *qxl)
> +{
> +    QXLState *qxl_state =3D qxl->st;
> +    uint64_t cookie =3D qxl->st->gl_draw_cookie;
> +
> +    if (cookie =3D=3D GL_DRAW_COOKIE_INVALID) {
> +        return;
> +    }
> +    qxl_state->scanout.drm_dma_buf_fd =3D 0;
> +    qxl->st->gl_draw_cookie =3D GL_DRAW_COOKIE_INVALID;
> +    red_qxl_async_complete(qxl, cookie);
> +}
> +
>  SPICE_GNUC_VISIBLE
>  void spice_qxl_set_device_info(QXLInstance *instance,
>                                 const char *device_address,
> diff --git a/server/red-qxl.h b/server/red-qxl.h
> index 2084acb1..e8e7c373 100644
> --- a/server/red-qxl.h
> +++ b/server/red-qxl.h
> @@ -40,6 +40,7 @@ bool red_qxl_get_allow_client_mouse(QXLInstance *qxl, i=
nt *x_res, int *y_res, in
>  SpiceMsgDisplayGlScanoutUnix *red_qxl_get_gl_scanout(QXLInstance *qxl);
>  void red_qxl_put_gl_scanout(QXLInstance *qxl, SpiceMsgDisplayGlScanoutUn=
ix *scanout);
>  void red_qxl_gl_draw_async_complete(QXLInstance *qxl);
> +void red_qxl_dmabuf_encode_async_complete(QXLInstance *qxl);
>  int red_qxl_check_qxl_version(QXLInstance *qxl, int major, int minor);
>  SpiceServer* red_qxl_get_server(QXLState *qxl);
>  uint32_t red_qxl_marshall_device_display_info(const QXLInstance *qxl, Sp=
iceMarshaller *m);
> diff --git a/server/spice-qxl.h b/server/spice-qxl.h
> index bf17476b..ca9816ec 100644
> --- a/server/spice-qxl.h
> +++ b/server/spice-qxl.h
> @@ -92,6 +92,8 @@ void spice_qxl_gl_draw_async(QXLInstance *qxl,
>                               uint32_t x, uint32_t y,
>                               uint32_t w, uint32_t h,
>                               uint64_t cookie);
> +void spice_qxl_dmabuf_encode_async(QXLInstance *qxl,
> +                                   int fd, uint64_t cookie);
>
>  /* since spice 0.14.2 */
>
> diff --git a/server/spice-server.syms b/server/spice-server.syms
> index 8da46c20..9748cc24 100644
> --- a/server/spice-server.syms
> +++ b/server/spice-server.syms
> @@ -182,4 +182,5 @@ SPICE_SERVER_0.14.3 {
>  global:
>      spice_server_get_video_codecs;
>      spice_server_free_video_codecs;
> +    spice_qxl_dmabuf_encode_async;
>  } SPICE_SERVER_0.14.2;

Frediano
