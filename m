Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF6FA676DBF
	for <lists+spice-devel@lfdr.de>; Sun, 22 Jan 2023 15:41:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A33E10E0FC;
	Sun, 22 Jan 2023 14:41:33 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com
 [IPv6:2607:f8b0:4864:20::329])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE90810E0FC
 for <spice-devel@lists.freedesktop.org>; Sun, 22 Jan 2023 14:41:30 +0000 (UTC)
Received: by mail-ot1-x329.google.com with SMTP id
 cm26-20020a056830651a00b00684e5c0108dso5911531otb.9
 for <spice-devel@lists.freedesktop.org>; Sun, 22 Jan 2023 06:41:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=zTitTwTTlaNRS+R9SBFjbB02QBh9oGh275pgyDUCtAQ=;
 b=SYV3yIwsvPrN0piHdYcmwumvAGOYWX0l+WG2adaECWzxBHu6bZQbbyfJlgBfdFkda3
 TplrdCuo4XHISHxeKN7pyjGtrI6dQ2df9M7ya5ZzZHM8WUojdjWBOZyttEjOmz3MUeMG
 9x6mm27v1R3O3/FX5/ww/In7J6i2L0biBW66wbHwDDfpnFFrTh2puLD8qA1ZcnGBL28n
 DJMI39rPnbMuPoD2xM25q8c38xej0d8s/sOBRTEufQR4v7UK7oQuDQF6K6+jiacbQ31U
 JawKvpQ0Abu2UmZYysyjjilVsKHpg/D0i1E04j0egfUMggD7iTspuomIY0Hv+kAZqdUw
 QlaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=zTitTwTTlaNRS+R9SBFjbB02QBh9oGh275pgyDUCtAQ=;
 b=O1yWfEK1glSdu+pf+JLfSp7MAZkpMHqdw5d1e4ZqTS9R8+XF+d6/h7QIe6VIg/UKLU
 9CUw0hPqChz53YoJZTkWj01avF4FxWHdDE9V/AwtOJGrMI/R39LHtudwQxcjRZr8B1LN
 4QtOnuWTpkQWTLJr7JMHv9wM9z3q7dfJ5wKDAJGlV8tHK2K7Bon5S85l2dBvuCoHRqTi
 3gwknZn43uEuLCcbvsLkdS5g6PJVktGxyiXHHh2pmdTF7Mys/sNEVtexysvBYZh4mb8z
 5+2+KZEZzuknGqvKWTTosOvRyzl/NkGh7/e7qrQnIBXZFc/eCsetUef4y54YXHGAM/KX
 O4DA==
X-Gm-Message-State: AFqh2kqT/ASyBjIbk5gubohN1b/+wG82I4aaWr6PLrN/B1wq4PDUiv2k
 17bsR1bZq8pEPwkDobzWy9ZDGoAmTg8nwgfYwa8=
X-Google-Smtp-Source: AMrXdXsi7BPcZ8WH5FURGE9vIAudvvO+knTukUKLBPXVBmdwORDfStrjWsHpK1x9DcPAOVEPCItF838JUks5OBH95Yg=
X-Received: by 2002:a05:6830:232f:b0:670:6517:a61f with SMTP id
 q15-20020a056830232f00b006706517a61fmr1250190otg.369.1674398490149; Sun, 22
 Jan 2023 06:41:30 -0800 (PST)
MIME-Version: 1.0
References: <20230111052239.781285-1-vivek.kasireddy@intel.com>
 <20230111052239.781285-3-vivek.kasireddy@intel.com>
 <CAHt6W4cVJP4stB7j0S+ZG3gdgq1NAyRi0EyERcHeOw0ydeapWg@mail.gmail.com>
 <IA0PR11MB71853B6E9AC8B35FA2026C8CF8FD9@IA0PR11MB7185.namprd11.prod.outlook.com>
 <CAHt6W4eUsQ2E2Cfs1cBuyQNmEBWEd7j-sGr47hE2RsWFjwTzaw@mail.gmail.com>
 <IA0PR11MB71857695213EDA1121D274BDF8C29@IA0PR11MB7185.namprd11.prod.outlook.com>
In-Reply-To: <IA0PR11MB71857695213EDA1121D274BDF8C29@IA0PR11MB7185.namprd11.prod.outlook.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Sun, 22 Jan 2023 14:41:18 +0000
Message-ID: <CAHt6W4dcvr_ODwkLDEd4zMbJYt6wN0ozwv4dhgEgpbjZU+AERg@mail.gmail.com>
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

Il giorno ven 13 gen 2023 alle ore 04:08 Kasireddy, Vivek
<vivek.kasireddy@intel.com> ha scritto:
>
> Hi Frediano,
>
> >
> > Il giorno gio 12 gen 2023 alle ore 07:03 Kasireddy, Vivek
> > <vivek.kasireddy@intel.com> ha scritto:
> > >
> > > Hi Frediano,
> > >
> > > >
> > > > Il giorno mer 11 gen 2023 alle ore 05:42 Vivek Kasireddy
> > > > <vivek.kasireddy@intel.com> ha scritto:
> > > > >
> > > > > This async is triggered by the encoder indicating that the
> > > > > encoding process is completed.
> > > > >
> > > >
> > > > This description does not make much sense to me.
> > > > You are adding a public function which, I suppose, should be called=
 by
> > > > Qemu but you are stating the encoder is calling it.
> > > > Unless Qemu is the encoder it does not make sense.
> > > [Kasireddy, Vivek] Sorry for the poor, misleading description. I orig=
inally
> > > had this patch split into two, one for each async function and forgot=
 to
> > > update the commit message when I merged them. I'll update the
> > > commit message in v2 which would probably have the following desc:
> > > "This patch mainly adds two async functions: a public one and an
> > > internal one. The public function spice_qxl_dmabuf_encode_async is
> > > used by applications that would share their fd with the Spice server.
> >
> > I don't see a reason for the new API, it's just doing a combination of
> > spice_qxl_gl_scanout + spice_qxl_gl_draw_async.
> [Kasireddy, Vivek] I had considered reusing these functions for my use-ca=
se
> but decided against cluttering them. Anyway, do you think it is ok to add=
 a
> new parameter or a flag to these public APIs to prevent them from doing
> qxl_state->send_message() because my use-case does not involve sending
> any messages (neither RedWorkerMessageGlDraw nor
> RedWorkerMessageGlScanout) to the client.
>

On the other end you are cluttering public API, Qemu and user usage.
To use local connection you have to setup the VM in a different way
than remote connection so you would have either to ask the
administrator to reconfigure and restart the VM or having a possible
suboptimal (or not working) connection. Doing inside spice-server
won't require VM setup change (because spice-server can choose the way
of handling it).
About qxl_state->send_message() you need to do it, it has nothing to
do with client handling but has to do with the way spice-server
handles threading. If you don't do it you will create thread problems.
There's a "spice_threading_model.txt" document inside the "docs"
directory. Basically it's a message for the DisplayChannel thread to
do something.

> >
> > > The internal function red_qxl_dmabuf_encode_async_complete is only
> > > used by the Spice server to indicate completion of the encoding proce=
ss
> > > and send the completion cookie to applications."
> > >
> >
> > That's what red_qxl_gl_draw_async_complete is doing.
> [Kasireddy, Vivek] Yeah, this one, I can totally reuse.
>
> >
> > > >
> > > > > Cc: Gerd Hoffmann <kraxel@redhat.com>
> > > > > Cc: Marc-Andr=C3=A9 Lureau <marcandre.lureau@redhat.com>
> > > > > Cc: Dongwon Kim <dongwon.kim@intel.com>
> > > > > Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> > > > > ---
> > > > >  server/display-channel.cpp |  9 +++++++++
> > > > >  server/display-channel.h   |  2 ++
> > > > >  server/red-qxl.cpp         | 26 ++++++++++++++++++++++++++
> > > > >  server/red-qxl.h           |  1 +
> > > > >  server/spice-qxl.h         |  2 ++
> > > > >  server/spice-server.syms   |  1 +
> > > > >  6 files changed, 41 insertions(+)
> > > > >
> > > > > diff --git a/server/display-channel.cpp b/server/display-channel.=
cpp
> > > > > index 4bd0cf41..81df5420 100644
> > > > > --- a/server/display-channel.cpp
> > > > > +++ b/server/display-channel.cpp
> > > > > @@ -2334,6 +2334,15 @@ void
> > > > display_channel_gl_draw_done(DisplayChannel *display)
> > > > >      set_gl_draw_async_count(display, display->priv->gl_draw_asyn=
c_count -
> > 1);
> > > > >  }
> > > > >
> > > > > +void display_channel_encode_done(DisplayChannel *display,
> > > > > +                                 RedDrawable *red_drawable)
> > > > > +{
> > > > > +    if (red_drawable->dmabuf_fd > 0) {
> > > > > +        red_qxl_dmabuf_encode_async_complete(display->priv->qxl)=
;
> > > > > +        red_drawable->dmabuf_fd =3D 0;
> > > > > +    }
> > > > > +}
> > > > > +
> > > > >  int display_channel_get_video_stream_id(DisplayChannel *display,
> > > > VideoStream *stream)
> > > > >  {
> > > > >      return static_cast<int>(stream - display->priv->streams_buf.=
data());
> > > > > diff --git a/server/display-channel.h b/server/display-channel.h
> > > > > index c54df25c..0a1e520c 100644
> > > > > --- a/server/display-channel.h
> > > > > +++ b/server/display-channel.h
> > > > > @@ -127,6 +127,8 @@ void                       display_channel_gl=
_scanout
> > > > (DisplayCha
> > > > >  void                       display_channel_gl_draw              =
     (DisplayChannel
> > > > *display,
> > > > >                                                                  =
      SpiceMsgDisplayGlDraw *draw);
> > > > >  void                       display_channel_gl_draw_done         =
     (DisplayChannel
> > > > *display);
> > > > > +void                       display_channel_encode_done          =
     (DisplayChannel
> > > > *display,
> > > > > +                                                                =
      RedDrawable *drawable);
> > > > >
> > > > >  void display_channel_process_draw(DisplayChannel *display,
> > > > >                                    red::shared_ptr<RedDrawable> &=
&red_drawable,
> > > > > diff --git a/server/red-qxl.cpp b/server/red-qxl.cpp
> > > > > index 48c293ae..42a4029b 100644
> > > > > --- a/server/red-qxl.cpp
> > > > > +++ b/server/red-qxl.cpp
> > > > > @@ -493,6 +493,32 @@ void
> > red_qxl_gl_draw_async_complete(QXLInstance
> > > > *qxl)
> > > > >      red_qxl_async_complete(qxl, cookie);
> > > > >  }
> > > > >
> > > > > +SPICE_GNUC_VISIBLE
> > > > > +void spice_qxl_dmabuf_encode_async(QXLInstance *qxl,
> > > > > +                                   int fd, uint64_t cookie)
> > > > > +{
> > > > > +    QXLState *qxl_state;
> > > > > +
> > > > > +    spice_return_if_fail(qxl !=3D nullptr);
> > > > > +    qxl_state =3D qxl->st;
> > > > > +
> > > > > +    qxl_state->scanout.drm_dma_buf_fd =3D fd;
> > > > > +    qxl_state->gl_draw_cookie =3D cookie;
> > > >
> > > > This behaviour is prone to leak resources.
> > > [Kasireddy, Vivek] I guess I could do what spice_qxl_gl_scanout does:
> > > that is, prevent the (Gstreamer) encoder from closing the fd and inst=
ead
> > > do the following here:
> > >     pthread_mutex_lock(&qxl_state->scanout_mutex);
> > >
> > >     if (qxl_state->scanout.drm_dma_buf_fd >=3D 0) {
> > >         close(qxl_state->scanout.drm_dma_buf_fd);
> > >     }
> > >
> > > Do you think this would help?
> > >
> > > Thanks,
> > > Vivek
> > >
> > > >
> > > > > +}
> > > > > +
> > > > > +void red_qxl_dmabuf_encode_async_complete(QXLInstance *qxl)
> > > > > +{
> > > > > +    QXLState *qxl_state =3D qxl->st;
> > > > > +    uint64_t cookie =3D qxl->st->gl_draw_cookie;
> > > > > +
> > > > > +    if (cookie =3D=3D GL_DRAW_COOKIE_INVALID) {
> > > > > +        return;
> > > > > +    }
> > > > > +    qxl_state->scanout.drm_dma_buf_fd =3D 0;
> > > > > +    qxl->st->gl_draw_cookie =3D GL_DRAW_COOKIE_INVALID;
> > > > > +    red_qxl_async_complete(qxl, cookie);
> > > > > +}
> > > > > +
> > > > >  SPICE_GNUC_VISIBLE
> > > > >  void spice_qxl_set_device_info(QXLInstance *instance,
> > > > >                                 const char *device_address,
> > > > > diff --git a/server/red-qxl.h b/server/red-qxl.h
> > > > > index 2084acb1..e8e7c373 100644
> > > > > --- a/server/red-qxl.h
> > > > > +++ b/server/red-qxl.h
> > > > > @@ -40,6 +40,7 @@ bool red_qxl_get_allow_client_mouse(QXLInstance
> > *qxl,
> > > > int *x_res, int *y_res, in
> > > > >  SpiceMsgDisplayGlScanoutUnix *red_qxl_get_gl_scanout(QXLInstance
> > *qxl);
> > > > >  void red_qxl_put_gl_scanout(QXLInstance *qxl,
> > > > SpiceMsgDisplayGlScanoutUnix *scanout);
> > > > >  void red_qxl_gl_draw_async_complete(QXLInstance *qxl);
> > > > > +void red_qxl_dmabuf_encode_async_complete(QXLInstance *qxl);
> > > > >  int red_qxl_check_qxl_version(QXLInstance *qxl, int major, int m=
inor);
> > > > >  SpiceServer* red_qxl_get_server(QXLState *qxl);
> > > > >  uint32_t red_qxl_marshall_device_display_info(const QXLInstance =
*qxl,
> > > > SpiceMarshaller *m);
> > > > > diff --git a/server/spice-qxl.h b/server/spice-qxl.h
> > > > > index bf17476b..ca9816ec 100644
> > > > > --- a/server/spice-qxl.h
> > > > > +++ b/server/spice-qxl.h
> > > > > @@ -92,6 +92,8 @@ void spice_qxl_gl_draw_async(QXLInstance *qxl,
> > > > >                               uint32_t x, uint32_t y,
> > > > >                               uint32_t w, uint32_t h,
> > > > >                               uint64_t cookie);
> > > > > +void spice_qxl_dmabuf_encode_async(QXLInstance *qxl,
> > > > > +                                   int fd, uint64_t cookie);
> > > > >
> > > > >  /* since spice 0.14.2 */
> > > > >
> > > > > diff --git a/server/spice-server.syms b/server/spice-server.syms
> > > > > index 8da46c20..9748cc24 100644
> > > > > --- a/server/spice-server.syms
> > > > > +++ b/server/spice-server.syms
> > > > > @@ -182,4 +182,5 @@ SPICE_SERVER_0.14.3 {
> > > > >  global:
> > > > >      spice_server_get_video_codecs;
> > > > >      spice_server_free_video_codecs;
> > > > > +    spice_qxl_dmabuf_encode_async;
> > > > >  } SPICE_SERVER_0.14.2;
> > > >
> > > > Frediano
