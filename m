Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC089EB1EF
	for <lists+spice-devel@lfdr.de>; Tue, 10 Dec 2024 14:29:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EF4F10E8CC;
	Tue, 10 Dec 2024 13:29:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="Sfs8oyCm";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A576B10E010
 for <spice-devel@lists.freedesktop.org>; Tue, 10 Dec 2024 12:24:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1733833457;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=aSecLXEIEH9VAnhyNAFzRJvrLm7yztvw8Khy2pOpSMo=;
 b=Sfs8oyCmrW7yhWNaM/d8H2372G6wYY4J4OKdM722WbQ3msHbrdGFilVmiOHSQeeCsX+foV
 3q/GT5/S56yvVb5JlFxJiF/F5psO7uXdOS6Uic5+JG6YxBSN9biQgzlrsxX9NJ6iQTDjmE
 +WqKjhhD+khcd9EyoTygDk+b0ei54Kg=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-422-PSJ9LDB4MluBAb-xlINeiA-1; Tue, 10 Dec 2024 07:24:16 -0500
X-MC-Unique: PSJ9LDB4MluBAb-xlINeiA-1
X-Mimecast-MFC-AGG-ID: PSJ9LDB4MluBAb-xlINeiA
Received: by mail-ej1-f70.google.com with SMTP id
 a640c23a62f3a-aa634496f58so89319466b.2
 for <spice-devel@lists.freedesktop.org>; Tue, 10 Dec 2024 04:24:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733833455; x=1734438255;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=aSecLXEIEH9VAnhyNAFzRJvrLm7yztvw8Khy2pOpSMo=;
 b=qMYWfSZUU3N+8HYsBuIx9Dum96vEH3Yldrt507PLa+3bOHpqckIjtlxJ7ZSEh8/hkD
 B0EMlcupgwlz/Xi2G7egg+NjJ0LLkl+Cm8WPxo291W0rTnxS9FnMnApCzRQaT+trT0+3
 UEBktobkgj6zA+F8EBfmz54GdTgl31YP3Bokw9yrbi7euBqcdSb9yJRTZY34gTmzUQsw
 S+tMA0YsB+TfeAcrU5wyeQny0UlwV5Dj/HQh4rIP5qvmkC5kVnJ63LiqlZOybQXEr77d
 jAkyT2R8d6ek90YbJdpiLe8OU3aJlmc6lhHTiu+RoNutvOYUgBMu/Sphjti1YMK2k57n
 VTkg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWPZYVmCP0z7kdY9Y6Gi7qMCUtTWMfbsE9NIkDgwuQ376CdLX538svLNIpZRXx6dq52ZZsgsMizlzMupw==@lists.freedesktop.org
X-Gm-Message-State: AOJu0YynJws5kk0nWZ5zBueKB6BnLISs82zEHZp2pkwV93I3MtqdDb8U
 sqFlesbViZLUFhZM3DfjANctEs0vwoGyBNE0GZpmwb2/li9f05gvjelTQlMQQwH1t8tLIJHR3FH
 1dCpFtCiNcEn6uuhaxuQdATpE1eCuXope98a9/bUVH7qyLdc++RrSQrxxEGZNyqYEsoBMhkwsnf
 iPYQlGjm46moXfW/dbIWOl+YTiKrUou27jIaqyXKY0EFo=
X-Gm-Gg: ASbGncvqa1+BrN39P/sBYvZkqM1JCUjlCYalLUzowkiFZElp284wnPCRUzTJZCeVpYA
 1c9ELUULITgoyqD4ohae5CE2TVsOmad/63kx7F6X/ArrWagTbCE83oFSgO67XzPov2Oc=
X-Received: by 2002:a17:906:18a9:b0:aa6:8a1b:8b7c with SMTP id
 a640c23a62f3a-aa68a1b8e98mr630992766b.2.1733833455445; 
 Tue, 10 Dec 2024 04:24:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEcgyA52HfEjey88Kb6EsuqPIgVlks8Qpk8hL6qKkV1dFhRyyCd5ELr+Iz6VA2G2PWuz4gd34tfvQzS/RzCBTs=
X-Received: by 2002:a17:906:18a9:b0:aa6:8a1b:8b7c with SMTP id
 a640c23a62f3a-aa68a1b8e98mr630989266b.2.1733833455085; Tue, 10 Dec 2024
 04:24:15 -0800 (PST)
MIME-Version: 1.0
References: <20241129122408.4167150-1-ryasuoka@redhat.com>
 <be01d2f7-8423-4e10-b65b-a84a7bc7c99e@collabora.com>
In-Reply-To: <be01d2f7-8423-4e10-b65b-a84a7bc7c99e@collabora.com>
From: Ryosuke Yasuoka <ryasuoka@redhat.com>
Date: Tue, 10 Dec 2024 21:24:03 +0900
Message-ID: <CAHpthZrZ6DjsCQ4baQ80b2vOTdkR=vHDx=10W7DTS4ohxb6=pg@mail.gmail.com>
Subject: Re: [PATCH v5] drm/virtio: Add drm_panic support
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Cc: airlied@redhat.com, kraxel@redhat.com, maarten.lankhorst@linux.intel.com, 
 mripard@kernel.org, tzimmermann@suse.de, daniel@ffwll.ch,
 jfalempe@redhat.com, 
 christophe.jaillet@wanadoo.fr, virtualization@lists.linux.dev, 
 spice-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: t7EhPNX2TuTCacFB2mXGSOyxl6-XRyvvS8y9uYCK2SI_1733833455
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Tue, 10 Dec 2024 13:29:11 +0000
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

On Mon, Dec 2, 2024 at 11:30=E2=80=AFPM Dmitry Osipenko
<dmitry.osipenko@collabora.com> wrote:
>
> On 11/29/24 15:24, Ryosuke Yasuoka wrote:
> ....
> > +     } else {
> > +             iosys_map_set_vaddr(&sb->map[0], bo->base.vaddr);
> > +     }
> > +
> > +     sb->format =3D plane->state->fb->format;
> > +     sb->height =3D plane->state->fb->height;
> > +     sb->width =3D plane->state->fb->width;
> > +     sb->pitch[0] =3D plane->state->fb->pitches[0];
> > +     return 0;
> > +}
> ...
> > +static void virtio_panic_flush(struct drm_plane *plane)
> > +{
> > +     struct virtio_gpu_object *bo;
> > +     struct drm_device *dev =3D plane->dev;
> > +     struct virtio_gpu_device *vgdev =3D dev->dev_private;
> > +     struct drm_rect rect;
> > +     void *p_vbuf =3D vgdev->panic_vbuf;
> > +     struct virtio_gpu_vbuffer *vbuf_dumb_bo =3D p_vbuf;
> > +     struct virtio_gpu_vbuffer *vbuf_resource_flush =3D p_vbuf + VBUFF=
ER_SIZE;
>
> This p_vbuf + VBUFFER_SIZE looks suspicious. The VBUFFER_SIZE macro
> isn't guarded with parentheses (), hence this vbuf_resource_flush is
> pointing at the CMD part of the vbuf_dumb_bo?

No. I intend vbuf_resource_flush to point to a different vbuf than
vbuf_dumb_bo. I allocate 2 vbufs in virtio_gpu_plane_init() so that
vbuf_dumb_bo points to the first vbuf and vbuf_resource_flush points
to the second one.

> Won't be using kmem_cache_zalloc(vgdev->vbufs, GFP_ATOMIC) to
> dynamically allocate both buffers make everything cleaner?
>
> ...
> > -#define MAX_INLINE_CMD_SIZE   96
> > -#define MAX_INLINE_RESP_SIZE  24
> > -#define VBUFFER_SIZE          (sizeof(struct virtio_gpu_vbuffer) \
> > -                            + MAX_INLINE_CMD_SIZE             \
> > -                            + MAX_INLINE_RESP_SIZE)...
>

Yes, it is feasible.

Thank you for your review.
Ryosuke

> Best regards,
> Dmitry
>

