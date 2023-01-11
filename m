Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C61665A7F
	for <lists+spice-devel@lfdr.de>; Wed, 11 Jan 2023 12:41:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82DDC10E091;
	Wed, 11 Jan 2023 11:41:40 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oa1-x33.google.com (mail-oa1-x33.google.com
 [IPv6:2001:4860:4864:20::33])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BB4110E091
 for <spice-devel@lists.freedesktop.org>; Wed, 11 Jan 2023 11:41:38 +0000 (UTC)
Received: by mail-oa1-x33.google.com with SMTP id
 586e51a60fabf-15085b8a2f7so15243174fac.2
 for <spice-devel@lists.freedesktop.org>; Wed, 11 Jan 2023 03:41:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=UNwCOEA1p98CwQW0tnQmqtxOs/P8LqqltUemMTFfA48=;
 b=p9qCCU9BE4bsmDEYIhnaSCNzhvZXcd0FT+kcefD8I7teI/PllpzXHX35QaqJ6qxpwT
 g7MvcWvIJ1kW78xHQXRWGSAG4dGd61cJfmexb0n2s6rHuQ9CuVWpYMvHcrpQeL6nNwfc
 LNBWEaFoU9Pn36dqTWUC0ChX5IA/+HMipVS239qMq5GMtUey93UJTdCqiRlRtmRHPAql
 lg+La0l4suSsaOBN3pcl8WAiHlYe7U2D36KtHVnISUD/G8O4vlcE2QW3UvCQR8HIBxN5
 rr8FT1vBo4VSQvfxuTPz1l8iPi7QLueCHXWmKVzlwFjBw2/wGaHf+NHYKTpKkciA9xPP
 1hsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=UNwCOEA1p98CwQW0tnQmqtxOs/P8LqqltUemMTFfA48=;
 b=HzFLn4H3Fb+zYH2ILhyLj/piqx+gzvkPDhdqiMaxJmKUm7pUrKahDItuMNM96/yczF
 qEXsFfbtLPN94CjACrph32MoXrU3AdzgXT07yNqW4XwMImbfzFH+HefP9N7dXnNYO/b/
 DiEyrnDfpo7LvK80deOnLjgr/ifH47I2OsPcKMDsa9TdvipLWpz7KKTbkqhkAIYPxf8A
 iURLA7+1A8QFAoze8Kn0SCyJ03Z8ws66k/kK1C3vx5yruhSWxXocVJz3vtQm1Hukwk9S
 cXhbmz/xMx7MMgeB/taezlBzzxPN416ndyzDzKVvqX2IqpbHsGOlmkHpkCCKKK3bGOhr
 j0xg==
X-Gm-Message-State: AFqh2koLuxa2xTZB5/GxvH+3CXctWMGHlrfF97Mo9ta3ZGXrCibRwMq5
 F56RcRvx3jszw+epTbmTmsZBbc7IRe/hDTwc+BaVAysq
X-Google-Smtp-Source: AMrXdXs8Ysyl4804U/a+NvZwTb25sWkv/Ul4Olb+QvGFQPuGZxIsm2lj8EcWhPBrzqU3Th0t7n2vL6J1q5exBOBro9E=
X-Received: by 2002:a05:6870:6327:b0:15b:d2e:d059 with SMTP id
 s39-20020a056870632700b0015b0d2ed059mr1192458oao.179.1673437297417; Wed, 11
 Jan 2023 03:41:37 -0800 (PST)
MIME-Version: 1.0
References: <20230111052239.781285-1-vivek.kasireddy@intel.com>
 <20230111052239.781285-2-vivek.kasireddy@intel.com>
In-Reply-To: <20230111052239.781285-2-vivek.kasireddy@intel.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Wed, 11 Jan 2023 11:41:26 +0000
Message-ID: <CAHt6W4cgJcW2+2+A==q6n25FK0T9LV_Q=H6Fh7SEXWogcxfvvg@mail.gmail.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>
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
Cc: spice-devel@lists.freedesktop.org, Dongwon Kim <dongwon.kim@intel.com>,
 Gerd Hoffmann <kraxel@redhat.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno mer 11 gen 2023 alle ore 05:42 Vivek Kasireddy
<vivek.kasireddy@intel.com> ha scritto:
>
> If the scanout has a valid dmabuf fd, then it is extracted and a
> copy (of the fd) is stored in the drawable.
>
> Cc: Gerd Hoffmann <kraxel@redhat.com>
> Cc: Marc-Andr=C3=A9 Lureau <marcandre.lureau@redhat.com>
> Cc: Dongwon Kim <dongwon.kim@intel.com>
> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> ---
>  server/red-parse-qxl.cpp | 8 ++++++++
>  server/red-parse-qxl.h   | 1 +
>  2 files changed, 9 insertions(+)
>
> diff --git a/server/red-parse-qxl.cpp b/server/red-parse-qxl.cpp
> index 68b9759d..8d9b82fb 100644
> --- a/server/red-parse-qxl.cpp
> +++ b/server/red-parse-qxl.cpp
> @@ -1038,6 +1038,7 @@ static bool red_get_native_drawable(QXLInstance *qx=
l_instance, RedMemSlotInfo *s
>                                      RedDrawable *red, QXLPHYSICAL addr, =
uint32_t flags)
>  {
>      QXLDrawable *qxl;
> +    SpiceMsgDisplayGlScanoutUnix *scanout;
>      int i;
>
>      qxl =3D static_cast<QXLDrawable *>(memslot_get_virt(slots, addr, siz=
eof(*qxl), group_id));
> @@ -1059,6 +1060,13 @@ static bool red_get_native_drawable(QXLInstance *q=
xl_instance, RedMemSlotInfo *s
>          red_get_rect_ptr(&red->surfaces_rects[i], &qxl->surfaces_rects[i=
]);
>      }
>
> +    red->dmabuf_fd =3D 0;

0 is a perfectly valid file descriptor, usually invalid file
descriptors are initialized with -1.

> +    scanout =3D red_qxl_get_gl_scanout(qxl_instance);
> +    if (scanout !=3D nullptr) {
> +        red->dmabuf_fd =3D scanout->drm_dma_buf_fd;
> +    }
> +    red_qxl_put_gl_scanout(qxl_instance, scanout);
> +
>      red->type =3D qxl->type;
>      switch (red->type) {
>      case QXL_DRAW_ALPHA_BLEND:
> diff --git a/server/red-parse-qxl.h b/server/red-parse-qxl.h
> index 8bf0e2e3..dee50743 100644
> --- a/server/red-parse-qxl.h
> +++ b/server/red-parse-qxl.h
> @@ -67,6 +67,7 @@ struct RedDrawable final: public RedQXLResource<RedDraw=
able> {
>          SpiceWhiteness whiteness;
>          SpiceComposite composite;
>      } u;
> +    int32_t dmabuf_fd;
>  };
>
>  struct RedUpdateCmd final: public RedQXLResource<RedUpdateCmd> {

This patch looks pretty error prone, it's easy to generate leaks or
use after free (of file descriptor).
Also it adds the assumption that the drawing is always associated with
the DMA surface which is racy.

Frediano
