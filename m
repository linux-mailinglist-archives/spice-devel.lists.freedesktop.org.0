Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F3FBA669AD0
	for <lists+spice-devel@lfdr.de>; Fri, 13 Jan 2023 15:45:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7219A10EA0A;
	Fri, 13 Jan 2023 14:45:21 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com
 [IPv6:2607:f8b0:4864:20::32f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D6DA10EA07
 for <spice-devel@lists.freedesktop.org>; Fri, 13 Jan 2023 14:45:20 +0000 (UTC)
Received: by mail-ot1-x32f.google.com with SMTP id
 p17-20020a9d6951000000b00678306ceb94so12352279oto.5
 for <spice-devel@lists.freedesktop.org>; Fri, 13 Jan 2023 06:45:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=dpsDDDLXvS83WoqsrbLMM/DL5iPGCRdZMSkxvDm/OOU=;
 b=mdVb+yMPOeiCene/YHcksxEaujURTeugQHyCAJCUbdOdqhQyjoicRIbNfIh4hPqG2y
 jNKbmqqgkvfQAoBQSUNq2HjEpBQSpp/j0/oI/KQ+EMX3v4VjAG3JFb2Cu/54KrmZCIk1
 b9OiVImKzJZGw33RQwTIY7ZTx08OK5ejYdIWPt9lGwZdnn/83O4BuEMfF1m6RTNNbTu/
 4Ujs01Ru37EaougiM+6IGGSyms/KCACi9wTSV/YkqgetOZrNNJOFn0FHii9K2cfrA/Xt
 vO46wHEt0n4U8XSsJa3oFtstGrDAkRd/IBxgkyGs9UQy3Ew+6Th+83U1J2xTenEvydAX
 U5hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=dpsDDDLXvS83WoqsrbLMM/DL5iPGCRdZMSkxvDm/OOU=;
 b=TJHYuW/nNLByVtqcGN9eC2jUQZHwd+OyW3RmuFm6DNv4RJfTPyGIGAfC0gTaK1TkNj
 EbdZm70nLSo5qCHQXuzj++3isX10OBxmsV6eTJ5qiEQI849P1vY89Y3Dx/Yd3T8K42rs
 CHaTwlPgozXjNLecb4+7UYZxi5CX88bE8koSzjDOesajqPGwKc+3Br/7eh/K+y9/mngY
 DijCD8FX+8cn7HV5spruljkGNhMAoonPM52C0acqYBohIa8/SWj4sTt4d/g8gipgM2nQ
 izJ9WCXOQTJjIB2ReTPVWIweHFaPipG8PBstB9wKlXEo5oFprWvJQ2s8csQlPxONG0sL
 vMfw==
X-Gm-Message-State: AFqh2kqhKnKYsp2MB8OmeEYtbdTLBspxdGg8MHn+iDhnrDqJecfxkuVd
 p90cy/qn2t3UJRxQzFy89gsYQGfbGsWP9tyRqCU=
X-Google-Smtp-Source: AMrXdXttKtg0f0q+nLEaN6SSNZk86K8tOPRDfXUaRkYyaBsOlIGGUwQPts+nJcpKPCgk0bsasWYPCwJi9JgAXgSyJws=
X-Received: by 2002:a05:6830:45b:b0:66f:c275:d78e with SMTP id
 d27-20020a056830045b00b0066fc275d78emr4173884otc.36.1673621119339; Fri, 13
 Jan 2023 06:45:19 -0800 (PST)
MIME-Version: 1.0
References: <20230111052239.781285-1-vivek.kasireddy@intel.com>
 <20230111052239.781285-2-vivek.kasireddy@intel.com>
 <CAHt6W4cgJcW2+2+A==q6n25FK0T9LV_Q=H6Fh7SEXWogcxfvvg@mail.gmail.com>
 <IA0PR11MB7185E2A4761E1AE80C9ABAC4F8FD9@IA0PR11MB7185.namprd11.prod.outlook.com>
 <CAHt6W4e3V_PeemUYZbiSMBKG2yZX_aZz+8GfSMzSQeVOkzS34w@mail.gmail.com>
 <IA0PR11MB7185354C3DDA03A4AEFCE76EF8C29@IA0PR11MB7185.namprd11.prod.outlook.com>
In-Reply-To: <IA0PR11MB7185354C3DDA03A4AEFCE76EF8C29@IA0PR11MB7185.namprd11.prod.outlook.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Fri, 13 Jan 2023 14:45:08 +0000
Message-ID: <CAHt6W4cuFfknFJecgnpXY2zPf4apiLAUj=kV=-VjTkCYPyXgWQ@mail.gmail.com>
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
> > > Thank you for taking a look at this patch series.
> > >
> > > >
> > > > Il giorno mer 11 gen 2023 alle ore 05:42 Vivek Kasireddy
> > > > <vivek.kasireddy@intel.com> ha scritto:
> > > > >
> > > > > If the scanout has a valid dmabuf fd, then it is extracted and a
> > > > > copy (of the fd) is stored in the drawable.
> > > > >
> > > > > Cc: Gerd Hoffmann <kraxel@redhat.com>
> > > > > Cc: Marc-Andr=C3=A9 Lureau <marcandre.lureau@redhat.com>
> > > > > Cc: Dongwon Kim <dongwon.kim@intel.com>
> > > > > Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> > > > > ---
> > > > >  server/red-parse-qxl.cpp | 8 ++++++++
> > > > >  server/red-parse-qxl.h   | 1 +
> > > > >  2 files changed, 9 insertions(+)
> > > > >
> > > > > diff --git a/server/red-parse-qxl.cpp b/server/red-parse-qxl.cpp
> > > > > index 68b9759d..8d9b82fb 100644
> > > > > --- a/server/red-parse-qxl.cpp
> > > > > +++ b/server/red-parse-qxl.cpp
> > > > > @@ -1038,6 +1038,7 @@ static bool red_get_native_drawable(QXLInst=
ance
> > > > *qxl_instance, RedMemSlotInfo *s
> > > > >                                      RedDrawable *red, QXLPHYSICA=
L addr, uint32_t
> > flags)
> > > > >  {
> > > > >      QXLDrawable *qxl;
> > > > > +    SpiceMsgDisplayGlScanoutUnix *scanout;
> > > > >      int i;
> > > > >
> > > > >      qxl =3D static_cast<QXLDrawable *>(memslot_get_virt(slots, a=
ddr,
> > > > sizeof(*qxl), group_id));
> > > > > @@ -1059,6 +1060,13 @@ static bool
> > red_get_native_drawable(QXLInstance
> > > > *qxl_instance, RedMemSlotInfo *s
> > > > >          red_get_rect_ptr(&red->surfaces_rects[i], &qxl->surfaces=
_rects[i]);
> > > > >      }
> > > > >
> > > > > +    red->dmabuf_fd =3D 0;
> > > >
> > > > 0 is a perfectly valid file descriptor, usually invalid file
> > > > descriptors are initialized with -1.
> > > [Kasireddy, Vivek] Ok, I'll initialize it to -1.
> > >
> > > >
> > > > > +    scanout =3D red_qxl_get_gl_scanout(qxl_instance);
> > > > > +    if (scanout !=3D nullptr) {
> > > > > +        red->dmabuf_fd =3D scanout->drm_dma_buf_fd;
> > > > > +    }
> > > > > +    red_qxl_put_gl_scanout(qxl_instance, scanout);
> > > > > +
> > > > >      red->type =3D qxl->type;
> > > > >      switch (red->type) {
> > > > >      case QXL_DRAW_ALPHA_BLEND:
> > > > > diff --git a/server/red-parse-qxl.h b/server/red-parse-qxl.h
> > > > > index 8bf0e2e3..dee50743 100644
> > > > > --- a/server/red-parse-qxl.h
> > > > > +++ b/server/red-parse-qxl.h
> > > > > @@ -67,6 +67,7 @@ struct RedDrawable final: public
> > > > RedQXLResource<RedDrawable> {
> > > > >          SpiceWhiteness whiteness;
> > > > >          SpiceComposite composite;
> > > > >      } u;
> > > > > +    int32_t dmabuf_fd;
> > > > >  };
> > > > >
> > > > >  struct RedUpdateCmd final: public RedQXLResource<RedUpdateCmd> {
> > > >
> > > > This patch looks pretty error prone, it's easy to generate leaks or
> > > > use after free (of file descriptor).
> > > [Kasireddy, Vivek] At-least with Qemu, we usually hand over a dup of =
the
> > original
> > > fd to Spice server with the assumption that the server will close it =
after it is
> > > done using it.
> > >
> > > > Also it adds the assumption that the drawing is always associated w=
ith
> > > > the DMA surface which is racy.
> > > [Kasireddy, Vivek] I see that access to the scanout and drm_dma_buf_f=
d is
> > protected
> > > with a scanout_mutex. Are you suggesting that using red_qxl_get/put_g=
l_scanout
> > is
> > > not going to be sufficient to prevent races?
> > >
> >
> > No, now you created 3 copies and only one is protected by that mutex.
> > The race is in resource management.
> [Kasireddy, Vivek] My understanding is that applications are supposed to =
wait until
> the encoding is done before submitting another frame/fd. I am not sure if=
 it is naive
> to assume that. Anyway, what do you suggest needs to happen if they submi=
t
> another fd while the encoding of the previous fd has not been completed y=
et?
>

Hi,
   maybe a step back is helpful here.

What is, from a high level perspective (that is, possibly no code
level) your objective?
What's the setup? virtio-vga? Remote? Local?

Back a bit on API level and your specific question, there are 2
functions, spice_qxl_gl_scanout
and spice_qxl_gl_draw_async. An application (like Qemu) should set the
current active scanout (as dmabuf)
spice_qxl_gl_scanout. The dmabuf ownership is passed to SPICE (which
will take care of closing
the file descriptor). The application will request to use the current
scanout using spice_qxl_gl_draw_async.
Application should wait to update the current scanout till SPICE
finishes "drawing" (that is using the scanout
content).
Application can request multiple drawings using the same scanout (that
is a single spice_qxl_gl_scanout
can be followed by multiple spice_qxl_gl_draw_async calls).

> Also, my goal is to somehow get the fd from the application (Qemu) to the=
 encoder.

SPICE already has the fd so IMHO you just need to forward to the encoder.

> I did not find any other way to easily accomplish this without using the =
scanout and
> drawable. Given this, do you think protecting access to encoder->dmabuf_d=
ata with
> a mutex would be sufficient to avoid races? Or, I guess I could just pass=
 dmabuf_data
> as an extra parameter to encode_frame and avoid storing it in the encoder=
. Or, is there
> a more elegant (and race-free) way to do this that you can suggest?
>

I would try to understand better the intention of this series before
getting down back to code.

> Thanks,
> Vivek
>

Frediano
