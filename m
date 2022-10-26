Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10FD060DF88
	for <lists+spice-devel@lfdr.de>; Wed, 26 Oct 2022 13:28:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE4EA10E4BE;
	Wed, 26 Oct 2022 11:28:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAD6A10E4B8
 for <spice-devel@lists.freedesktop.org>; Wed, 26 Oct 2022 11:28:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1666783729;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=GgvyHYbw5OUw5CVoVsWBxQuCm9SqRUNf97j9BbV5QTE=;
 b=g/JDeY5qAPhUGOxcPyWLtd+OBL8k8a9KCTooeCgMLiHdI+F9Hch/lETPw9TafsseR9nv3l
 yuDcdWD9kFB4Smh5CPD44U/FvjWYiNxR8DIQdI0cuY/HFVMgafarbg0cGPUGi4dwhb0XF8
 wdxWm8SXA+U2r3r1O4A4/RPoDQU+We0=
Received: from mail-yb1-f198.google.com (mail-yb1-f198.google.com
 [209.85.219.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-66-OKXVvd1DNbGWCna-gLJCfA-1; Wed, 26 Oct 2022 07:28:47 -0400
X-MC-Unique: OKXVvd1DNbGWCna-gLJCfA-1
Received: by mail-yb1-f198.google.com with SMTP id
 f126-20020a255184000000b006cb2aebd124so6583913ybb.11
 for <spice-devel@lists.freedesktop.org>; Wed, 26 Oct 2022 04:28:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=GgvyHYbw5OUw5CVoVsWBxQuCm9SqRUNf97j9BbV5QTE=;
 b=A7/ccTy+qS/nBvsztJaad/pU/9FV4QsDT2oU0Zp03JKDKpjBPAsjcvplV38NSkv6L7
 TWWh45FS+Ihc+fxpz0sbWBb21IIwHJXFZI5t5/VYFXOZkZOIwgwZ/7Xd1TXOmv7LZ+Qu
 pneiWOSDCayH5lax2Bbk0Eo4bCdwWeOv+XD7SO/Q7wpO9FZuww/ECOC885/z1bNx87ka
 97BIQcsOSBy90PxYi4SbjHBhoIgbJtHawcdCwjWcvUqw+/C6iHsKZ8Gnp4Td45EpvV2D
 s3dFAUEFo1jy4j4EqZ/3SbgspWY6Z4BPYGvaEinaLR8vBLk7Vwif6Cz2JhksUOcP0uHI
 LaLA==
X-Gm-Message-State: ACrzQf26WoNAn1mdLsfBgqxCFQGaakrHBLGForQU+pYHnsVEP8cxnY+E
 AHHdq8P9nufZVLxuLYwEJO8IcjHFLXf4vxsJ6T6W2bbEqszSG0exa3vGYh3AWHT+JaSP2V45fPQ
 9lDR9Oc3QCBCIuuh3wdIJdPi/FHNwzP9hSV80tv9mmsEUcgU=
X-Received: by 2002:a25:c902:0:b0:6cb:b001:8aa8 with SMTP id
 z2-20020a25c902000000b006cbb0018aa8mr937517ybf.405.1666783726481; 
 Wed, 26 Oct 2022 04:28:46 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM7Mg3dcPjEMvlmkiiIDBaai7/v3B/Ci09KLBYQvNVEkDvaSwtTD1XiPfuqiI8yvXS7RYjuUbHLCRaaOrJIN7T0=
X-Received: by 2002:a25:c902:0:b0:6cb:b001:8aa8 with SMTP id
 z2-20020a25c902000000b006cbb0018aa8mr937501ybf.405.1666783726200; Wed, 26 Oct
 2022 04:28:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAJ+fVVw1h_L+H-nbhTmohPZrQadUc8ZUEvNM5uCcn-ZxQmxBvw@mail.gmail.com>
In-Reply-To: <CAJ+fVVw1h_L+H-nbhTmohPZrQadUc8ZUEvNM5uCcn-ZxQmxBvw@mail.gmail.com>
From: Yan Vugenfirer <yvugenfi@redhat.com>
Date: Wed, 26 Oct 2022 14:28:35 +0300
Message-ID: <CAGoVJZxi6YbcnOUsaQPQQiZ8VKJFOk2Q2tr9c968N2ycryBbGQ@mail.gmail.com>
To: =?UTF-8?Q?Ksawery_B=C5=82aszczak?= <kxblax54@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000eafd3e05ebee534b"
Subject: Re: [Spice-devel] (no subject)
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
Cc: spice-devel@lists.freedesktop.org
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--000000000000eafd3e05ebee534b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Ksawery,

For Windows 7 you should install the "old" style QXL driver:
https://www.spice-space.org/download.html under Windows Binaries, Windows
QXL driver <https://www.spice-space.org/download/windows/qxl/qxl-0.1-24/>:
https://www.spice-space.org/download/windows/qxl/qxl-0.1-24/

Best  regards,
Yan.

On Tue, Oct 25, 2022 at 5:39 PM Ksawery B=C5=82aszczak <kxblax54@gmail.com>
wrote:

> Hi i have question
> How do i install drivers qxl wddm dod drivers on windows 7 i use qemu?
>

--000000000000eafd3e05ebee534b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi=C2=A0Ksawery,<div><br></div><div>For Windows 7 you shou=
ld install the &quot;old&quot; style QXL driver:=C2=A0<a href=3D"https://ww=
w.spice-space.org/download.html">https://www.spice-space.org/download.html<=
/a> under Windows Binaries,=C2=A0<a class=3D"gmail-reference external" href=
=3D"https://www.spice-space.org/download/windows/qxl/qxl-0.1-24/" style=3D"=
box-sizing:border-box;color:rgb(51,122,183);text-decoration:none;font-famil=
y:Helvetica,Arial,sans-serif;font-size:14px">Windows QXL driver</a>:=C2=A0<=
a href=3D"https://www.spice-space.org/download/windows/qxl/qxl-0.1-24/">htt=
ps://www.spice-space.org/download/windows/qxl/qxl-0.1-24/</a></div><div><br=
></div><div>Best =C2=A0regards,</div><div>Yan.</div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct 25, 2022 at=
 5:39 PM Ksawery B=C5=82aszczak &lt;<a href=3D"mailto:kxblax54@gmail.com">k=
xblax54@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:=
solid;border-left-color:rgb(204,204,204);padding-left:1ex"><div dir=3D"auto=
">Hi i have question<div dir=3D"auto">How do i install drivers qxl wddm dod=
 drivers on windows 7 i use qemu?</div></div>
</blockquote></div>

--000000000000eafd3e05ebee534b--

