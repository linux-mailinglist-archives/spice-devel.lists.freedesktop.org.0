Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CE6A676DB3
	for <lists+spice-devel@lfdr.de>; Sun, 22 Jan 2023 15:32:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 805EA10E03E;
	Sun, 22 Jan 2023 14:32:01 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oa1-x2d.google.com (mail-oa1-x2d.google.com
 [IPv6:2001:4860:4864:20::2d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC4B310E03E
 for <spice-devel@lists.freedesktop.org>; Sun, 22 Jan 2023 14:31:59 +0000 (UTC)
Received: by mail-oa1-x2d.google.com with SMTP id
 586e51a60fabf-1433ef3b61fso11407334fac.10
 for <spice-devel@lists.freedesktop.org>; Sun, 22 Jan 2023 06:31:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ztfR4pfNXkN9GZEUOCOtErq/NZQkClGYk2I15B6C1Ko=;
 b=ieuU5PBowEQ69/PD1DbEzMp3NEwxvnK9MV8pgG7AZoxeQ04ryl9cfFi5X5oG8x6NUg
 xlYaCgJAh5+/AtV6+70qE7rvE0bh1RPTki1pF3OSDq47HsYDvolIdbmdSzUAF6wWS3CD
 Y5PRSC94AlNAjV5IGt5+A+ee5XQ1TZ3VO+cknVqKYYiT5+hYG6J2VIWtqcEcWe85xM4T
 USHjAQqoeg4h70MoDP25qqHPsUhWT71NE27x315Yl+O2vgFzjxOL2jU9sCHQQmqXstF2
 RTZQcd0M4D1LHvh52x8LFfDU2zymSjg6QBa6APd+nw9aEVDXNmxWaC6iJaLPJIsKkCT/
 SaDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ztfR4pfNXkN9GZEUOCOtErq/NZQkClGYk2I15B6C1Ko=;
 b=BYgbd9QZTOrOpOWmP6uyQoe8uqsFvQ9+gV8WRGsD2BTFgxCzRgLZxO7yowgD8r1Bp0
 phlz8xplZBi6n7AhzCwxmbtZkphuxz/yNnNwfolCaO0YCQ5FaTtmcgHQnQLPEbvQCEnT
 1IN/qiQdWMmizkw6TH9p8cJEo16/qZxYpR5FbBxLcd3hVfy6GwvHAAt+V2bBdeKnQ3W4
 ePb7l6YwzmxQMu6yUJiX9kJTVJazaAbFnUFvP2DTj8GMH9XJWtbjuCRCOilHRD/U8Fnn
 zH1zZ+LCWKVqYf5XSKiESbjxvbpF7IaNHdB/AOSBje13E/4ldn97uicDwPHNQh1HKwIp
 tpfg==
X-Gm-Message-State: AFqh2krgxV2g2+1jUzP4y23uBtLrT/o+5oS2QDA+qaLV0h84BeBgApM+
 FmGecPijrybSbBRHK2mfKYe185xCqNTJskCtXcA=
X-Google-Smtp-Source: AMrXdXu7mQY3UlE6bVNnL1nIDpQ5jmm/Bh2LRxDNaxcDajIuEx6Ydvkzu5sWnuNhBjBf7c93mCXAR0FQwS8zf27S0/g=
X-Received: by 2002:a05:6870:5aa8:b0:15f:d995:3eb4 with SMTP id
 dt40-20020a0568705aa800b0015fd9953eb4mr463316oab.1.1674397919047; Sun, 22 Jan
 2023 06:31:59 -0800 (PST)
MIME-Version: 1.0
References: <20230111052239.781285-1-vivek.kasireddy@intel.com>
 <20230111052239.781285-2-vivek.kasireddy@intel.com>
 <CAHt6W4cgJcW2+2+A==q6n25FK0T9LV_Q=H6Fh7SEXWogcxfvvg@mail.gmail.com>
 <IA0PR11MB7185E2A4761E1AE80C9ABAC4F8FD9@IA0PR11MB7185.namprd11.prod.outlook.com>
 <CAHt6W4e3V_PeemUYZbiSMBKG2yZX_aZz+8GfSMzSQeVOkzS34w@mail.gmail.com>
 <IA0PR11MB7185354C3DDA03A4AEFCE76EF8C29@IA0PR11MB7185.namprd11.prod.outlook.com>
 <CAHt6W4cuFfknFJecgnpXY2zPf4apiLAUj=kV=-VjTkCYPyXgWQ@mail.gmail.com>
 <IA0PR11MB71856ED6679A4CA79469E871F8C19@IA0PR11MB7185.namprd11.prod.outlook.com>
In-Reply-To: <IA0PR11MB71856ED6679A4CA79469E871F8C19@IA0PR11MB7185.namprd11.prod.outlook.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Sun, 22 Jan 2023 14:31:47 +0000
Message-ID: <CAHt6W4fhjdK5eG27tCPQCLJaoSUJRPtdAqr+_yhW11JLYctf4A@mail.gmail.com>
To: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Spice-devel] [RFC v1 1/4] red-parse-qxl: Extract the dmabuf fd
 from the scanout
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

Il giorno lun 16 gen 2023 alle ore 09:00 Kasireddy, Vivek
<vivek.kasireddy@intel.com> ha scritto:
>
> Hi Frediano,
>
> >
> > Il giorno ven 13 gen 2023 alle ore 04:08 Kasireddy, Vivek
> > <vivek.kasireddy@intel.com> ha scritto:
> > >
> > > Hi Frediano,
> > >
> > > >
> > > > Il giorno gio 12 gen 2023 alle ore 07:03 Kasireddy, Vivek
> > > > <vivek.kasireddy@intel.com> ha scritto:
> > > > >
> > > > > Hi Frediano,
> > > > >
> > > > > Thank you for taking a look at this patch series.
> > > > >
> > > > > >
> > > > > > Il giorno mer 11 gen 2023 alle ore 05:42 Vivek Kasireddy
> > > > > > <vivek.kasireddy@intel.com> ha scritto:
> > > > > > >
> > > > > > > If the scanout has a valid dmabuf fd, then it is extracted an=
d a
> > > > > > > copy (of the fd) is stored in the drawable.
> > > > > > >
> > > > > > > Cc: Gerd Hoffmann <kraxel@redhat.com>
> > > > > > > Cc: Marc-Andr=C3=A9 Lureau <marcandre.lureau@redhat.com>
> > > > > > > Cc: Dongwon Kim <dongwon.kim@intel.com>
> > > > > > > Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> > > > > > > ---
> > > > > > >  server/red-parse-qxl.cpp | 8 ++++++++
> > > > > > >  server/red-parse-qxl.h   | 1 +
> > > > > > >  2 files changed, 9 insertions(+)
> > > > > > >
> > > > > > > diff --git a/server/red-parse-qxl.cpp b/server/red-parse-qxl.=
cpp
> > > > > > > index 68b9759d..8d9b82fb 100644
> > > > > > > --- a/server/red-parse-qxl.cpp
> > > > > > > +++ b/server/red-parse-qxl.cpp
> > > > > > > @@ -1038,6 +1038,7 @@ static bool
> > red_get_native_drawable(QXLInstance
> > > > > > *qxl_instance, RedMemSlotInfo *s
> > > > > > >                                      RedDrawable *red, QXLPHY=
SICAL addr,
> > uint32_t
> > > > flags)
> > > > > > >  {
> > > > > > >      QXLDrawable *qxl;
> > > > > > > +    SpiceMsgDisplayGlScanoutUnix *scanout;
> > > > > > >      int i;
> > > > > > >
> > > > > > >      qxl =3D static_cast<QXLDrawable *>(memslot_get_virt(slot=
s, addr,
> > > > > > sizeof(*qxl), group_id));
> > > > > > > @@ -1059,6 +1060,13 @@ static bool
> > > > red_get_native_drawable(QXLInstance
> > > > > > *qxl_instance, RedMemSlotInfo *s
> > > > > > >          red_get_rect_ptr(&red->surfaces_rects[i], &qxl->surf=
aces_rects[i]);
> > > > > > >      }
> > > > > > >
> > > > > > > +    red->dmabuf_fd =3D 0;
> > > > > >
> > > > > > 0 is a perfectly valid file descriptor, usually invalid file
> > > > > > descriptors are initialized with -1.
> > > > > [Kasireddy, Vivek] Ok, I'll initialize it to -1.
> > > > >
> > > > > >
> > > > > > > +    scanout =3D red_qxl_get_gl_scanout(qxl_instance);
> > > > > > > +    if (scanout !=3D nullptr) {
> > > > > > > +        red->dmabuf_fd =3D scanout->drm_dma_buf_fd;
> > > > > > > +    }
> > > > > > > +    red_qxl_put_gl_scanout(qxl_instance, scanout);
> > > > > > > +
> > > > > > >      red->type =3D qxl->type;
> > > > > > >      switch (red->type) {
> > > > > > >      case QXL_DRAW_ALPHA_BLEND:
> > > > > > > diff --git a/server/red-parse-qxl.h b/server/red-parse-qxl.h
> > > > > > > index 8bf0e2e3..dee50743 100644
> > > > > > > --- a/server/red-parse-qxl.h
> > > > > > > +++ b/server/red-parse-qxl.h
> > > > > > > @@ -67,6 +67,7 @@ struct RedDrawable final: public
> > > > > > RedQXLResource<RedDrawable> {
> > > > > > >          SpiceWhiteness whiteness;
> > > > > > >          SpiceComposite composite;
> > > > > > >      } u;
> > > > > > > +    int32_t dmabuf_fd;
> > > > > > >  };
> > > > > > >
> > > > > > >  struct RedUpdateCmd final: public RedQXLResource<RedUpdateCm=
d>
> > {
> > > > > >
> > > > > > This patch looks pretty error prone, it's easy to generate leak=
s or
> > > > > > use after free (of file descriptor).
> > > > > [Kasireddy, Vivek] At-least with Qemu, we usually hand over a dup=
 of the
> > > > original
> > > > > fd to Spice server with the assumption that the server will close=
 it after it is
> > > > > done using it.
> > > > >
> > > > > > Also it adds the assumption that the drawing is always associat=
ed with
> > > > > > the DMA surface which is racy.
> > > > > [Kasireddy, Vivek] I see that access to the scanout and drm_dma_b=
uf_fd is
> > > > protected
> > > > > with a scanout_mutex. Are you suggesting that using
> > red_qxl_get/put_gl_scanout
> > > > is
> > > > > not going to be sufficient to prevent races?
> > > > >
> > > >
> > > > No, now you created 3 copies and only one is protected by that mute=
x.
> > > > The race is in resource management.
> > > [Kasireddy, Vivek] My understanding is that applications are supposed=
 to wait
> > until
> > > the encoding is done before submitting another frame/fd. I am not sur=
e if it is
> > naive
> > > to assume that. Anyway, what do you suggest needs to happen if they s=
ubmit
> > > another fd while the encoding of the previous fd has not been complet=
ed yet?
> > >
> >
> > Hi,
> >    maybe a step back is helpful here.
> >
> > What is, from a high level perspective (that is, possibly no code
> > level) your objective?
> > What's the setup? virtio-vga? Remote? Local?
> [Kasireddy, Vivek] My objective (and setup) is described in the associate=
d Qemu
> patch series here:
> https://lists.nongnu.org/archive/html/qemu-devel/2023-01/msg02094.html
>
> In a nutshell, I'd like to send the fd associated with the Guest desktop =
Framebuffer
> (that Qemu obtains) to the Gstreamer encoder (that is part of Spice) to h=
ave it
> streamed to a remote client.
>

Good, now it's more clear.

> >
> > Back a bit on API level and your specific question, there are 2
> > functions, spice_qxl_gl_scanout
> > and spice_qxl_gl_draw_async. An application (like Qemu) should set the
> > current active scanout (as dmabuf)
> > spice_qxl_gl_scanout. The dmabuf ownership is passed to SPICE (which
> > will take care of closing
> > the file descriptor). The application will request to use the current
> > scanout using spice_qxl_gl_draw_async.
> > Application should wait to update the current scanout till SPICE
> > finishes "drawing" (that is using the scanout
> > content).
> > Application can request multiple drawings using the same scanout (that
> > is a single spice_qxl_gl_scanout
> > can be followed by multiple spice_qxl_gl_draw_async calls).
> [Kasireddy, Vivek] Thank you for the explanation; however, IIUC, what you
> described seems relevant for a local client. I suspect most of what you s=
aid
> would probably be applicable for a remote client as well given my use-cas=
e
> (fd to encoder).
>

What you do with the information you get is implementation detail, not
interface detail.
I don't see why such an interface has to forcely deal with local
clients. It's and should be agnostic to client type.

> >
> > > Also, my goal is to somehow get the fd from the application (Qemu) to=
 the
> > encoder.
> >
> > SPICE already has the fd so IMHO you just need to forward to the encode=
r.
> [Kasireddy, Vivek] This, I think is the crux of the issue. That is, how t=
o forward
> the fd (from the scanout object which is a singleton) to the encoder in t=
he most
> efficient and race-free way. I chose to use the drawable as a means to ac=
complish
> this but I think there might be a better way.
>

Race free and using drawable are IMHO separate things. I wish there
would be an easier and better way too. But yes, I agree at the moment
it's the shortest way. To be honest GStreamer uses the drawable
(technically you are using RedDrawable... the code is a bit weird in
this respect, there's also a Drawable structure which has a
RedDrawable structure) but only when that drawable is a simple bitmap.
So I would say the drawable solution, although a hack, it's a viable
solution.

> Thanks,
> Vivek
>
