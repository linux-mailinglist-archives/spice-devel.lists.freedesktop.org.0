Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 094174EC40F
	for <lists+spice-devel@lfdr.de>; Wed, 30 Mar 2022 14:30:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8A0B10E190;
	Wed, 30 Mar 2022 12:30:23 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5B4010E1DC
 for <spice-devel@lists.freedesktop.org>; Wed, 30 Mar 2022 10:43:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1648637012;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=BF3xhFCyLrxCQP5ABQE0ta5feJB/SrzL4G5wThcA57E=;
 b=LCD3xQnUBlqIyvEO9zgpvw8EisvQDBeHIlk74ACHOJER7OGlU/ZwDUgCmZn8OtGbEu9oIp
 2mILL6qlG3h/EZPebhg8DTXeibmDpe4C/vP1ayTyxR0cJdEg/YH2JnNN8ts1ilbcDRcu1i
 zvg3/OUuupCo0OR99EVxYPlVUeVv+6k=
Received: from mail-oa1-f70.google.com (mail-oa1-f70.google.com
 [209.85.160.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-187-UVKfQtktOBeMA9YdmOmLHg-1; Wed, 30 Mar 2022 06:43:30 -0400
X-MC-Unique: UVKfQtktOBeMA9YdmOmLHg-1
Received: by mail-oa1-f70.google.com with SMTP id
 586e51a60fabf-ddaeb6d47eso5387678fac.13
 for <spice-devel@lists.freedesktop.org>; Wed, 30 Mar 2022 03:43:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=BF3xhFCyLrxCQP5ABQE0ta5feJB/SrzL4G5wThcA57E=;
 b=BHuvx7SpEcAiMC87OVvrqoVww1oJnVpafmVvkHkmzRu9PUsodYsx62VdppwYdzQOZv
 D4PY4GdQVgQVxkA1t5Ea4w6A3V/CAmHaPTNAFoMXa8iIWrRJ/ZpunMEAxshyhb7GnviZ
 0qrgChctfz2QY1o795TaQT1daWymXd9hyNQAn7mbjSbyoq1MvK0n0RcMfkpF0b+5WvFh
 Onuslyt+lsyLqqRbaeyN7RR4Lw6itawYABSY/uFNj5nCzZGYmEPee2g7y5SffWOvpy2p
 kx+RzDY56Oorht38v17x1xC5HQpqPcX33ohLf5ATM0QKlTLpiQXXqSBBb5tKFmKTv2a3
 rr0g==
X-Gm-Message-State: AOAM533Tew/UMt3OPup272XrNW7Mew2BEEG75to4syCjL7Sz55s7nlFw
 /gOPFEPWAkmFXkY6JBykWoFJHjIAlrvcZBloz4Ts2BszuTxwLaQSXCkG43Woc1+JFZXolSW3sL/
 vA6+P39hzXxImKX7nLOOWqzZgIuw+lx/jwbnDMz5WZxOyqSA=
X-Received: by 2002:a05:6870:1714:b0:dd:a30e:d23e with SMTP id
 h20-20020a056870171400b000dda30ed23emr1742737oae.85.1648637009392; 
 Wed, 30 Mar 2022 03:43:29 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxaEBKXl6GGXGtVuocZYplGp6rtO1QKwBVCHAaEWlTJ5cnjGCD6V7uPD2eiQ9au5HJ6l3QhAGAyP9E6jI3nR6A=
X-Received: by 2002:a05:6870:1714:b0:dd:a30e:d23e with SMTP id
 h20-20020a056870171400b000dda30ed23emr1742723oae.85.1648637009168; Wed, 30
 Mar 2022 03:43:29 -0700 (PDT)
MIME-Version: 1.0
References: <12eba824-ee80-0aac-56ed-e13084c9cae7@amd.com>
 <20220324104928.2959545-1-liucong2@kylinos.cn>
 <982d233d-7e30-f44e-f49d-473c3c41721e@amd.com>
 <a1ceefb7-32d8-9ce3-e56f-7684e6d3ee58@kylinos.cn>
In-Reply-To: <a1ceefb7-32d8-9ce3-e56f-7684e6d3ee58@kylinos.cn>
From: David Airlie <airlied@redhat.com>
Date: Wed, 30 Mar 2022 20:43:18 +1000
Message-ID: <CAMwc25r3ER2Mi4jo2W=VtZcusNhpsyhQ0Mjx+qHhmZAK-fSjZQ@mail.gmail.com>
To: Cong Liu <liucong2@kylinos.cn>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=airlied@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Wed, 30 Mar 2022 12:30:23 +0000
Subject: Re: [Spice-devel] [PATCH v2] drm/qxl: fix qxl can't use in arm64
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
Cc: airlied <airlied@linux.ie>, linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:DRM DRIVER FOR QEMU'S CIRRUS DEVICE"
 <virtualization@lists.linux-foundation.org>, ray.huang@amd.com, "Hoffmann,
 Gerd" <kraxel@redhat.com>, "Vetter, Daniel" <daniel@ffwll.ch>,
 "open list:DRM DRIVER FOR QXL VIRTUAL GPU" <spice-devel@lists.freedesktop.org>,
 robin.murphy@arm.com,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

I'd like to make sure this has no side effects on x86 guests, it
probably is safe, but keep an eye for regression reports.

Reviewed-by: Dave Airlie <airlied@redhat.com>
Dave.

On Wed, Mar 30, 2022 at 8:20 PM Cong Liu <liucong2@kylinos.cn> wrote:
>
> any suggestions or extra test I can do now?
>
> Regards,
> Cong
>
> On 2022/3/25 15:45, Christian K=C3=B6nig wrote:
> > Am 24.03.22 um 11:49 schrieb Cong Liu:
> >> qxl use ioremap to map ram_header and rom, in the arm64 implementation=
,
> >> the device is mapped as DEVICE_nGnRE, it can not support unaligned
> >> access. and qxl is a virtual device, it can be treated more like RAM
> >> than actual MMIO registers. use ioremap_wc() replace it.
> >>
> >> Signed-off-by: Cong Liu <liucong2@kylinos.cn>
> >
> > Looks sane to me, but I'm really not involved enough to fully judge.
> >
> > Acked-by: Christian K=C3=B6nig <christian.koenig@amd.com>
> >
> >> ---
> >>   drivers/gpu/drm/qxl/qxl_kms.c | 4 ++--
> >>   drivers/gpu/drm/qxl/qxl_ttm.c | 4 ++--
> >>   2 files changed, 4 insertions(+), 4 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/qxl/qxl_kms.c
> >> b/drivers/gpu/drm/qxl/qxl_kms.c
> >> index 4dc5ad13f12c..a054e4a00fe8 100644
> >> --- a/drivers/gpu/drm/qxl/qxl_kms.c
> >> +++ b/drivers/gpu/drm/qxl/qxl_kms.c
> >> @@ -165,7 +165,7 @@ int qxl_device_init(struct qxl_device *qdev,
> >>            (int)qdev->surfaceram_size / 1024,
> >>            (sb =3D=3D 4) ? "64bit" : "32bit");
> >> -    qdev->rom =3D ioremap(qdev->rom_base, qdev->rom_size);
> >> +    qdev->rom =3D ioremap_wc(qdev->rom_base, qdev->rom_size);
> >>       if (!qdev->rom) {
> >>           pr_err("Unable to ioremap ROM\n");
> >>           r =3D -ENOMEM;
> >> @@ -183,7 +183,7 @@ int qxl_device_init(struct qxl_device *qdev,
> >>           goto rom_unmap;
> >>       }
> >> -    qdev->ram_header =3D ioremap(qdev->vram_base +
> >> +    qdev->ram_header =3D ioremap_wc(qdev->vram_base +
> >>                      qdev->rom->ram_header_offset,
> >>                      sizeof(*qdev->ram_header));
> >>       if (!qdev->ram_header) {
> >> diff --git a/drivers/gpu/drm/qxl/qxl_ttm.c
> >> b/drivers/gpu/drm/qxl/qxl_ttm.c
> >> index b2e33d5ba5d0..95df5750f47f 100644
> >> --- a/drivers/gpu/drm/qxl/qxl_ttm.c
> >> +++ b/drivers/gpu/drm/qxl/qxl_ttm.c
> >> @@ -82,13 +82,13 @@ int qxl_ttm_io_mem_reserve(struct ttm_device *bdev=
,
> >>       case TTM_PL_VRAM:
> >>           mem->bus.is_iomem =3D true;
> >>           mem->bus.offset =3D (mem->start << PAGE_SHIFT) + qdev->vram_=
base;
> >> -        mem->bus.caching =3D ttm_cached;
> >> +        mem->bus.caching =3D ttm_write_combined;
> >>           break;
> >>       case TTM_PL_PRIV:
> >>           mem->bus.is_iomem =3D true;
> >>           mem->bus.offset =3D (mem->start << PAGE_SHIFT) +
> >>               qdev->surfaceram_base;
> >> -        mem->bus.caching =3D ttm_cached;
> >> +        mem->bus.caching =3D ttm_write_combined;
> >>           break;
> >>       default:
> >>           return -EINVAL;
> >
>

