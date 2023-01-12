Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA599667075
	for <lists+spice-devel@lfdr.de>; Thu, 12 Jan 2023 12:06:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52DBB10E19B;
	Thu, 12 Jan 2023 11:06:35 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com
 [IPv6:2607:f8b0:4864:20::233])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91E9C10E19B
 for <spice-devel@lists.freedesktop.org>; Thu, 12 Jan 2023 11:06:32 +0000 (UTC)
Received: by mail-oi1-x233.google.com with SMTP id o66so14990254oia.6
 for <spice-devel@lists.freedesktop.org>; Thu, 12 Jan 2023 03:06:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=L9D0TNauiYZIx/fX2N2l4kA4uR0exeOh+ksyeiEgDDA=;
 b=Z89IiiYcjP7DKtoDIOT3f3DHzaffUOCw2s5urs3+iNV3wMO5o2be1wrhuLMqnRCiFX
 pIDD8apPYlo9UX6gCYlvyzMeZl2DSZYhV2NjzXStpoO4OF2tXFhkTfNqTKJ3AHBD3Bg5
 SE/rz5DT7emwCXDjwrB32bwEWY+atngMy1S2N66gvY5iz3SMkYiTzmnMB3iyIBAiJrkA
 dkRVZLU1USSU/pr2mlorLSKmurdjDYrgoAG1D2txtPZvmmHJExRo+mNMCpRtVvA0QCPB
 Jks9Sp/8RqXpYSR6MUOsX00g8FupCg0CV/M0U15SqIPdxBBqorwNTXKBrWNxaxSaLc48
 2NWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=L9D0TNauiYZIx/fX2N2l4kA4uR0exeOh+ksyeiEgDDA=;
 b=HgPGoDQY+y6bk/PF36L+HcXlQEcaEJMJ52ysLYXFhb5Czn0pkCANChIYPNq7RjwHJ9
 VPA4dmzOiyMcTT17fnfUoBi4nhbY8lW1Vb9GeZquuHYnFdxMv8SHLk/iihPHlAWTMhfH
 SAswO7hNRVYT9RmfcijlMIgu9v0c82fnZjswhw5fvcwxxEzdHv1wRLlcKxeYKKc+NXav
 aaR1ARQ3Tg1iEoUZdfD51yvnb1gTyn/eBVz0Z9HAMTpq0zgVcunD+GQSkhqrgaQW80hD
 3KqmkzCMKnlc8RdrA6XqNkYxGn9CfChUMU+j4+aC+mP2Zf4Y1hCOFMjR0xqskiZSW1Lx
 uA0Q==
X-Gm-Message-State: AFqh2krc1MaxV19sCoZnKDFc0KNzUq12sqGnCDtwvAUaPxngDNx86KEO
 9iKfdsDzt9T9uMEjJ0ZXbJZbNPVu7hrnfXIxO+k=
X-Google-Smtp-Source: AMrXdXszWJqIFA5tF3QDQ/AuRbXhfnrXUz9wx5Ok3tHDlZg7usjnQ/Fc/qBA4GYbqgPl1/ZhGQ1dc/dJLkNVT47Le6E=
X-Received: by 2002:a05:6808:310:b0:35e:1a37:7e52 with SMTP id
 i16-20020a056808031000b0035e1a377e52mr5790613oie.179.1673521591802; Thu, 12
 Jan 2023 03:06:31 -0800 (PST)
MIME-Version: 1.0
References: <20230111052239.781285-1-vivek.kasireddy@intel.com>
 <20230111052239.781285-3-vivek.kasireddy@intel.com>
 <CAHt6W4cVJP4stB7j0S+ZG3gdgq1NAyRi0EyERcHeOw0ydeapWg@mail.gmail.com>
 <IA0PR11MB71853B6E9AC8B35FA2026C8CF8FD9@IA0PR11MB7185.namprd11.prod.outlook.com>
In-Reply-To: <IA0PR11MB71853B6E9AC8B35FA2026C8CF8FD9@IA0PR11MB7185.namprd11.prod.outlook.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Thu, 12 Jan 2023 11:06:20 +0000
Message-ID: <CAHt6W4eUsQ2E2Cfs1cBuyQNmEBWEd7j-sGr47hE2RsWFjwTzaw@mail.gmail.com>
To: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>,
 "Kim, Dongwon" <dongwon.kim@intel.com>, Gerd Hoffmann <kraxel@redhat.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno gio 12 gen 2023 alle ore 07:03 Kasireddy, Vivek
<vivek.kasireddy@intel.com> ha scritto:
>
> Hi Frediano,
>
> >
> > Il giorno mer 11 gen 2023 alle ore 05:42 Vivek Kasireddy
> > <vivek.kasireddy@intel.com> ha scritto:
> > >
> > > This async is triggered by the encoder indicating that the
> > > encoding process is completed.
> > >
> >
> > This description does not make much sense to me.
> > You are adding a public function which, I suppose, should be called by
> > Qemu but you are stating the encoder is calling it.
> > Unless Qemu is the encoder it does not make sense.
> [Kasireddy, Vivek] Sorry for the poor, misleading description. I original=
ly
> had this patch split into two, one for each async function and forgot to
> update the commit message when I merged them. I'll update the
> commit message in v2 which would probably have the following desc:
> "This patch mainly adds two async functions: a public one and an
> internal one. The public function spice_qxl_dmabuf_encode_async is
> used by applications that would share their fd with the Spice server.

I don't see a reason for the new API, it's just doing a combination of
spice_qxl_gl_scanout + spice_qxl_gl_draw_async.

> The internal function red_qxl_dmabuf_encode_async_complete is only
> used by the Spice server to indicate completion of the encoding process
> and send the completion cookie to applications."
>

That's what red_qxl_gl_draw_async_complete is doing.

> >
> > > Cc: Gerd Hoffmann <kraxel@redhat.com>
> > > Cc: Marc-Andr=C3=A9 Lureau <marcandre.lureau@redhat.com>
> > > Cc: Dongwon Kim <dongwon.kim@intel.com>
> > > Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> > > ---
> > >  server/display-channel.cpp |  9 +++++++++
> > >  server/display-channel.h   |  2 ++
> > >  server/red-qxl.cpp         | 26 ++++++++++++++++++++++++++
> > >  server/red-qxl.h           |  1 +
> > >  server/spice-qxl.h         |  2 ++
> > >  server/spice-server.syms   |  1 +
> > >  6 files changed, 41 insertions(+)
> > >
> > > diff --git a/server/display-channel.cpp b/server/display-channel.cpp
> > > index 4bd0cf41..81df5420 100644
> > > --- a/server/display-channel.cpp
> > > +++ b/server/display-channel.cpp
> > > @@ -2334,6 +2334,15 @@ void
> > display_channel_gl_draw_done(DisplayChannel *display)
> > >      set_gl_draw_async_count(display, display->priv->gl_draw_async_co=
unt - 1);
> > >  }
> > >
> > > +void display_channel_encode_done(DisplayChannel *display,
> > > +                                 RedDrawable *red_drawable)
> > > +{
> > > +    if (red_drawable->dmabuf_fd > 0) {
> > > +        red_qxl_dmabuf_encode_async_complete(display->priv->qxl);
> > > +        red_drawable->dmabuf_fd =3D 0;
> > > +    }
> > > +}
> > > +
> > >  int display_channel_get_video_stream_id(DisplayChannel *display,
> > VideoStream *stream)
> > >  {
> > >      return static_cast<int>(stream - display->priv->streams_buf.data=
());
> > > diff --git a/server/display-channel.h b/server/display-channel.h
> > > index c54df25c..0a1e520c 100644
> > > --- a/server/display-channel.h
> > > +++ b/server/display-channel.h
> > > @@ -127,6 +127,8 @@ void                       display_channel_gl_sca=
nout
> > (DisplayCha
> > >  void                       display_channel_gl_draw                  =
 (DisplayChannel
> > *display,
> > >                                                                      =
  SpiceMsgDisplayGlDraw *draw);
> > >  void                       display_channel_gl_draw_done             =
 (DisplayChannel
> > *display);
> > > +void                       display_channel_encode_done              =
 (DisplayChannel
> > *display,
> > > +                                                                    =
  RedDrawable *drawable);
> > >
> > >  void display_channel_process_draw(DisplayChannel *display,
> > >                                    red::shared_ptr<RedDrawable> &&red=
_drawable,
> > > diff --git a/server/red-qxl.cpp b/server/red-qxl.cpp
> > > index 48c293ae..42a4029b 100644
> > > --- a/server/red-qxl.cpp
> > > +++ b/server/red-qxl.cpp
> > > @@ -493,6 +493,32 @@ void red_qxl_gl_draw_async_complete(QXLInstance
> > *qxl)
> > >      red_qxl_async_complete(qxl, cookie);
> > >  }
> > >
> > > +SPICE_GNUC_VISIBLE
> > > +void spice_qxl_dmabuf_encode_async(QXLInstance *qxl,
> > > +                                   int fd, uint64_t cookie)
> > > +{
> > > +    QXLState *qxl_state;
> > > +
> > > +    spice_return_if_fail(qxl !=3D nullptr);
> > > +    qxl_state =3D qxl->st;
> > > +
> > > +    qxl_state->scanout.drm_dma_buf_fd =3D fd;
> > > +    qxl_state->gl_draw_cookie =3D cookie;
> >
> > This behaviour is prone to leak resources.
> [Kasireddy, Vivek] I guess I could do what spice_qxl_gl_scanout does:
> that is, prevent the (Gstreamer) encoder from closing the fd and instead
> do the following here:
>     pthread_mutex_lock(&qxl_state->scanout_mutex);
>
>     if (qxl_state->scanout.drm_dma_buf_fd >=3D 0) {
>         close(qxl_state->scanout.drm_dma_buf_fd);
>     }
>
> Do you think this would help?
>
> Thanks,
> Vivek
>
> >
> > > +}
> > > +
> > > +void red_qxl_dmabuf_encode_async_complete(QXLInstance *qxl)
> > > +{
> > > +    QXLState *qxl_state =3D qxl->st;
> > > +    uint64_t cookie =3D qxl->st->gl_draw_cookie;
> > > +
> > > +    if (cookie =3D=3D GL_DRAW_COOKIE_INVALID) {
> > > +        return;
> > > +    }
> > > +    qxl_state->scanout.drm_dma_buf_fd =3D 0;
> > > +    qxl->st->gl_draw_cookie =3D GL_DRAW_COOKIE_INVALID;
> > > +    red_qxl_async_complete(qxl, cookie);
> > > +}
> > > +
> > >  SPICE_GNUC_VISIBLE
> > >  void spice_qxl_set_device_info(QXLInstance *instance,
> > >                                 const char *device_address,
> > > diff --git a/server/red-qxl.h b/server/red-qxl.h
> > > index 2084acb1..e8e7c373 100644
> > > --- a/server/red-qxl.h
> > > +++ b/server/red-qxl.h
> > > @@ -40,6 +40,7 @@ bool red_qxl_get_allow_client_mouse(QXLInstance *qx=
l,
> > int *x_res, int *y_res, in
> > >  SpiceMsgDisplayGlScanoutUnix *red_qxl_get_gl_scanout(QXLInstance *qx=
l);
> > >  void red_qxl_put_gl_scanout(QXLInstance *qxl,
> > SpiceMsgDisplayGlScanoutUnix *scanout);
> > >  void red_qxl_gl_draw_async_complete(QXLInstance *qxl);
> > > +void red_qxl_dmabuf_encode_async_complete(QXLInstance *qxl);
> > >  int red_qxl_check_qxl_version(QXLInstance *qxl, int major, int minor=
);
> > >  SpiceServer* red_qxl_get_server(QXLState *qxl);
> > >  uint32_t red_qxl_marshall_device_display_info(const QXLInstance *qxl=
,
> > SpiceMarshaller *m);
> > > diff --git a/server/spice-qxl.h b/server/spice-qxl.h
> > > index bf17476b..ca9816ec 100644
> > > --- a/server/spice-qxl.h
> > > +++ b/server/spice-qxl.h
> > > @@ -92,6 +92,8 @@ void spice_qxl_gl_draw_async(QXLInstance *qxl,
> > >                               uint32_t x, uint32_t y,
> > >                               uint32_t w, uint32_t h,
> > >                               uint64_t cookie);
> > > +void spice_qxl_dmabuf_encode_async(QXLInstance *qxl,
> > > +                                   int fd, uint64_t cookie);
> > >
> > >  /* since spice 0.14.2 */
> > >
> > > diff --git a/server/spice-server.syms b/server/spice-server.syms
> > > index 8da46c20..9748cc24 100644
> > > --- a/server/spice-server.syms
> > > +++ b/server/spice-server.syms
> > > @@ -182,4 +182,5 @@ SPICE_SERVER_0.14.3 {
> > >  global:
> > >      spice_server_get_video_codecs;
> > >      spice_server_free_video_codecs;
> > > +    spice_qxl_dmabuf_encode_async;
> > >  } SPICE_SERVER_0.14.2;
> >
> > Frediano
