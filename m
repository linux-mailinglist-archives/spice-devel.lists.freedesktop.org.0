Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB1B6670BC
	for <lists+spice-devel@lfdr.de>; Thu, 12 Jan 2023 12:18:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D21D10E19E;
	Thu, 12 Jan 2023 11:18:19 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com
 [IPv6:2607:f8b0:4864:20::334])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5604B10E1AF
 for <spice-devel@lists.freedesktop.org>; Thu, 12 Jan 2023 11:18:17 +0000 (UTC)
Received: by mail-ot1-x334.google.com with SMTP id
 f88-20020a9d03e1000000b00684c4041ff1so688653otf.8
 for <spice-devel@lists.freedesktop.org>; Thu, 12 Jan 2023 03:18:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=EZ77gwPm3fdhszk8OxxQcROXz0fuXJ5EuJJ/0B0AWLc=;
 b=PqEw7UrdEguAanCmxPHvGAs33yH8ZVPz3izW9oe/YGCF8qWqvRo1NuXoysXGDfluRu
 2n07TfkBvDbC8rGC2Y1TrtdsITh7946oHsafYQUtrf9oJc9KKgzBngunW1FPPMx0+yjF
 /a5CJobFDiI0f59kOi7pM/df6pZpitvv2m3xsqKVYxSgkyFr/zol0RElhG8BA8+fO/cZ
 gGjNx4aeJ+1r5jXlaJonjQiVE+Fu4qZ4PRQIJbR7GQJixaTf8159r93KsMZ0cnmk3eKz
 8pVGS9wE5XQK5tjptpkMhFppzyYubzi3yGXq+cDyVnXNZ6nTGaq5e069vHA34ItovCe9
 15cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=EZ77gwPm3fdhszk8OxxQcROXz0fuXJ5EuJJ/0B0AWLc=;
 b=zDmZn7FYClsC9uYmRfKXzpPygyU9POxO6h9w9pFGx7W/KVTjCJXzr8002pHKLbQAav
 55eV4MSvW7e4rd3K0deYZQ7Is8AxGvtWEwMkaVHwjHDlVLnF1IlmgbhuT1jYKjIrZ0qP
 GBs6D/u5SqTW9ydf+39jqACx180vqRomRCSVVqVthrwlWXCrXoVrX63leSWtr6UeuNLy
 feMp63PwcEdVzKa5FNbAa/WTZniZqK7OhFqy2PKlRheUdgNjuLr5iYqwqmADKffl1IGm
 YWsBLGas1ubI0RxTvkEat7SuolY42wpw8JtVgXvDWowbIrPFg3VhlVBqSopvWohimH2a
 LYMw==
X-Gm-Message-State: AFqh2kp2n5RxMD8Poh9KmYcSlbnOTgE/sxXQ7n4VL3D9EcRhOaSG4lAf
 ttDKXxm152pMnXpgTRKCzM3mR/g/HE1UDfT2sWs=
X-Google-Smtp-Source: AMrXdXta3Fz+WwXDYBjNtzzrslHFDfCAmMfFKvgfjznqQyNe6k7linQGjt8omfagz12KMYrL3Nj83d2wc3IH/Blvr8E=
X-Received: by 2002:a9d:61d6:0:b0:670:6517:a61f with SMTP id
 h22-20020a9d61d6000000b006706517a61fmr5065197otk.369.1673522296625; Thu, 12
 Jan 2023 03:18:16 -0800 (PST)
MIME-Version: 1.0
References: <20230111052239.781285-1-vivek.kasireddy@intel.com>
 <20230111052239.781285-2-vivek.kasireddy@intel.com>
 <CAHt6W4cgJcW2+2+A==q6n25FK0T9LV_Q=H6Fh7SEXWogcxfvvg@mail.gmail.com>
 <IA0PR11MB7185E2A4761E1AE80C9ABAC4F8FD9@IA0PR11MB7185.namprd11.prod.outlook.com>
In-Reply-To: <IA0PR11MB7185E2A4761E1AE80C9ABAC4F8FD9@IA0PR11MB7185.namprd11.prod.outlook.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Thu, 12 Jan 2023 11:18:05 +0000
Message-ID: <CAHt6W4e3V_PeemUYZbiSMBKG2yZX_aZz+8GfSMzSQeVOkzS34w@mail.gmail.com>
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

Il giorno gio 12 gen 2023 alle ore 07:03 Kasireddy, Vivek
<vivek.kasireddy@intel.com> ha scritto:
>
> Hi Frediano,
>
> Thank you for taking a look at this patch series.
>
> >
> > Il giorno mer 11 gen 2023 alle ore 05:42 Vivek Kasireddy
> > <vivek.kasireddy@intel.com> ha scritto:
> > >
> > > If the scanout has a valid dmabuf fd, then it is extracted and a
> > > copy (of the fd) is stored in the drawable.
> > >
> > > Cc: Gerd Hoffmann <kraxel@redhat.com>
> > > Cc: Marc-Andr=C3=A9 Lureau <marcandre.lureau@redhat.com>
> > > Cc: Dongwon Kim <dongwon.kim@intel.com>
> > > Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> > > ---
> > >  server/red-parse-qxl.cpp | 8 ++++++++
> > >  server/red-parse-qxl.h   | 1 +
> > >  2 files changed, 9 insertions(+)
> > >
> > > diff --git a/server/red-parse-qxl.cpp b/server/red-parse-qxl.cpp
> > > index 68b9759d..8d9b82fb 100644
> > > --- a/server/red-parse-qxl.cpp
> > > +++ b/server/red-parse-qxl.cpp
> > > @@ -1038,6 +1038,7 @@ static bool red_get_native_drawable(QXLInstance
> > *qxl_instance, RedMemSlotInfo *s
> > >                                      RedDrawable *red, QXLPHYSICAL ad=
dr, uint32_t flags)
> > >  {
> > >      QXLDrawable *qxl;
> > > +    SpiceMsgDisplayGlScanoutUnix *scanout;
> > >      int i;
> > >
> > >      qxl =3D static_cast<QXLDrawable *>(memslot_get_virt(slots, addr,
> > sizeof(*qxl), group_id));
> > > @@ -1059,6 +1060,13 @@ static bool red_get_native_drawable(QXLInstanc=
e
> > *qxl_instance, RedMemSlotInfo *s
> > >          red_get_rect_ptr(&red->surfaces_rects[i], &qxl->surfaces_rec=
ts[i]);
> > >      }
> > >
> > > +    red->dmabuf_fd =3D 0;
> >
> > 0 is a perfectly valid file descriptor, usually invalid file
> > descriptors are initialized with -1.
> [Kasireddy, Vivek] Ok, I'll initialize it to -1.
>
> >
> > > +    scanout =3D red_qxl_get_gl_scanout(qxl_instance);
> > > +    if (scanout !=3D nullptr) {
> > > +        red->dmabuf_fd =3D scanout->drm_dma_buf_fd;
> > > +    }
> > > +    red_qxl_put_gl_scanout(qxl_instance, scanout);
> > > +
> > >      red->type =3D qxl->type;
> > >      switch (red->type) {
> > >      case QXL_DRAW_ALPHA_BLEND:
> > > diff --git a/server/red-parse-qxl.h b/server/red-parse-qxl.h
> > > index 8bf0e2e3..dee50743 100644
> > > --- a/server/red-parse-qxl.h
> > > +++ b/server/red-parse-qxl.h
> > > @@ -67,6 +67,7 @@ struct RedDrawable final: public
> > RedQXLResource<RedDrawable> {
> > >          SpiceWhiteness whiteness;
> > >          SpiceComposite composite;
> > >      } u;
> > > +    int32_t dmabuf_fd;
> > >  };
> > >
> > >  struct RedUpdateCmd final: public RedQXLResource<RedUpdateCmd> {
> >
> > This patch looks pretty error prone, it's easy to generate leaks or
> > use after free (of file descriptor).
> [Kasireddy, Vivek] At-least with Qemu, we usually hand over a dup of the =
original
> fd to Spice server with the assumption that the server will close it afte=
r it is
> done using it.
>
> > Also it adds the assumption that the drawing is always associated with
> > the DMA surface which is racy.
> [Kasireddy, Vivek] I see that access to the scanout and drm_dma_buf_fd is=
 protected
> with a scanout_mutex. Are you suggesting that using red_qxl_get/put_gl_sc=
anout is
> not going to be sufficient to prevent races?
>

No, now you created 3 copies and only one is protected by that mutex.
The race is in resource management.

> Thanks,
> Vivek
>

Frediano
