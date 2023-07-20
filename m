Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E256075B6F1
	for <lists+spice-devel@lfdr.de>; Thu, 20 Jul 2023 20:38:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C7CD10E1A8;
	Thu, 20 Jul 2023 18:38:41 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A74D410E1A8
 for <spice-devel@lists.freedesktop.org>; Thu, 20 Jul 2023 18:38:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1689878317;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=22Vqf21b0iCG3EyQGggRwpXkrZSXdA4Fka1+MxxD2/8=;
 b=UcRJ48LP1mLfpjl6w5FtOQQiS68tmhYqTS7wN+GyqCFG5KCm/96VJW8pl2nKCV3CiFpLyr
 RdJI3/aLX77kIytydtVA3Q8lCwNby7JbXHd4S5rEJmdo6UFrX8MljiBiJwyz0oCPv/mqIl
 Ohsxr4d94o41htjWTIG9NHBiJOFnpk8=
Received: from mail-oi1-f198.google.com (mail-oi1-f198.google.com
 [209.85.167.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-537-57ejQXsYPFKYF6ZJoduAjg-1; Thu, 20 Jul 2023 14:38:36 -0400
X-MC-Unique: 57ejQXsYPFKYF6ZJoduAjg-1
Received: by mail-oi1-f198.google.com with SMTP id
 5614622812f47-3a41e98b337so2181420b6e.1
 for <spice-devel@lists.freedesktop.org>; Thu, 20 Jul 2023 11:38:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689878316; x=1690483116;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=22Vqf21b0iCG3EyQGggRwpXkrZSXdA4Fka1+MxxD2/8=;
 b=DvcCxahIp0DB+ShNhZzOebNIX/2xoer37M1jX8TZPrKyTG4td6NrRaKg+eV2W7JHYS
 WpjVmPj5DSZJFA0uFKlhUvKMrkm40D/Js2L3I7c908vwaCfKnE26ZDr3mw2jkqlfr206
 0OmOQGrv4TR2Y3a/OMfdFmaUGsGZO+dzNgHn+WQzGosVP5sUuLKw05jas/YMWrHfSMV2
 3HiTa5uEBN5IxHYdch5v6YY7iZzT5U8p24Akr5QHujZPz8FgtpPASRUI66oTARMA1JDH
 lvHYez8wxhh0kjjzwYY3vIhf6b5+bmEdpuDMbAdddg8sn2GXEApDeU8wgwcaxwHZdaS7
 dNbg==
X-Gm-Message-State: ABy/qLbNexFRTVFwsThTiCFdqQuXgmB2478Xft1wtahzjV/xAG055HHk
 buK4tfoATvLJYA5XP5HHRJzdxKPXlZ29Od/2NgFy5Zdns0IveY6e8o+J25V+H3in/7U7IpqaqyU
 txF3mSJtMDDWZa5zuvvSrWO3wG3XoIOIlmKekexo7kXta38bQYahZvAndzQ==
X-Received: by 2002:aca:2104:0:b0:396:e3a:9f2f with SMTP id
 4-20020aca2104000000b003960e3a9f2fmr339425oiz.5.1689878314870; 
 Thu, 20 Jul 2023 11:38:34 -0700 (PDT)
X-Google-Smtp-Source: APBJJlGsFKtP512JfKcDoKuqxt/6pR8u6H6/nEH2Mmmfo80EwIx0w32yszfm6Zs7ArhEUJ3xFmf8v6+lWjYxkKKK+aM=
X-Received: by 2002:aca:2104:0:b0:396:e3a:9f2f with SMTP id
 4-20020aca2104000000b003960e3a9f2fmr339405oiz.5.1689878314406; Thu, 20 Jul
 2023 11:38:34 -0700 (PDT)
MIME-Version: 1.0
References: <99e6b141-6aa0-fc47-2ffa-7a94e1a3c079@gmail.com>
 <CAHt6W4cAL9N1yoigxgbqHAnoCU1ZzZUiH3KcW52qaXigCK25ng@mail.gmail.com>
In-Reply-To: <CAHt6W4cAL9N1yoigxgbqHAnoCU1ZzZUiH3KcW52qaXigCK25ng@mail.gmail.com>
From: Uri Lublin <ulublin@redhat.com>
Date: Thu, 20 Jul 2023 21:38:23 +0300
Message-ID: <CAAg9qJ1DFZr+Hv9O8qJdrr-LUECW9E=Vcbow2qen1WGe+bCKQg@mail.gmail.com>
To: Frediano Ziglio <freddy77@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000a4ec070600ef74ee"
Subject: Re: [Spice-devel] Help with image encoding
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
Cc: spice-devel@lists.freedesktop.org,
 =?UTF-8?Q?N=C3=A9fix_Estrada?= <nefixestrada@gmail.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--000000000000a4ec070600ef74ee
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 19, 2023 at 10:55=E2=80=AFAM Frediano Ziglio <freddy77@gmail.co=
m> wrote:

> Il giorno dom 16 lug 2023 alle ore 07:58 N=C3=A9fix Estrada
> <nefixestrada@gmail.com> ha scritto:
> >
> > Hello! I'm currently writting a Spice client in Typescript that makes
> > use of modern browser features (such as WebGPU, WebUSB, Web workers,
> etc).
> >
> >
> > However, I'm struggling with the Image image encoding. I've checked the
> > whole documentation site, but I wasn't able to find how each one of the
> > encoding works. My knowledge in both audio and video encoding is very
> > limited. Specifically:
> >
> > - QUIC
> >
> > - LZ (and all its variants)
> >
> >
> > I've been trying to understand them from the spice-common project, but
> > it's just the implementation without any type of docs :(
> >
> > Another question I had is if there's another way of comunication or a
> > place where I can shoot questions about the implementation
> >
> >
> > Also, I'm planning on gifting the client to the spice project, if you
> > would be interested in! (given that you already have a JS project)
> >
> >
> > Thanks in advance!
> >
> >
> > N=C3=A9fix Estrada
> >
>
> Hi,
>    why not look at SPICE html client instead? It's already JS code so
> it  shouldn't be that different.
> For QUIC you can see Uri's link if you need some notes, LZ is more or
> less standard on decoding, you have uncompressed sections and
> references to previous chunks, so it's just a matter of understanding
> these encodings.
>

There is also a link in spice-common/common/lz.h:
" dictionary compression for images based on fastlz (http://www.fastlz.org/=
)
"

Uri.



>
> Regards,
>    Frediano
>
>

--000000000000a4ec070600ef74ee
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Wed, Jul 19, 2023 at 10:55=E2=80=AFAM Frediano Ziglio &lt;<a =
href=3D"mailto:freddy77@gmail.com">freddy77@gmail.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex">Il giorno dom 16 lug 2=
023 alle ore 07:58 N=C3=A9fix Estrada<br>
&lt;<a href=3D"mailto:nefixestrada@gmail.com" target=3D"_blank">nefixestrad=
a@gmail.com</a>&gt; ha scritto:<br>
&gt;<br>
&gt; Hello! I&#39;m currently writting a Spice client in Typescript that ma=
kes<br>
&gt; use of modern browser features (such as WebGPU, WebUSB, Web workers, e=
tc).<br>
&gt;<br>
&gt;<br>
&gt; However, I&#39;m struggling with the Image image encoding. I&#39;ve ch=
ecked the<br>
&gt; whole documentation site, but I wasn&#39;t able to find how each one o=
f the<br>
&gt; encoding works. My knowledge in both audio and video encoding is very<=
br>
&gt; limited. Specifically:<br>
&gt;<br>
&gt; - QUIC<br>
&gt;<br>
&gt; - LZ (and all its variants)<br>
&gt;<br>
&gt;<br>
&gt; I&#39;ve been trying to understand them from the spice-common project,=
 but<br>
&gt; it&#39;s just the implementation without any type of docs :(<br>
&gt;<br>
&gt; Another question I had is if there&#39;s another way of comunication o=
r a<br>
&gt; place where I can shoot questions about the implementation<br>
&gt;<br>
&gt;<br>
&gt; Also, I&#39;m planning on gifting the client to the spice project, if =
you<br>
&gt; would be interested in! (given that you already have a JS project)<br>
&gt;<br>
&gt;<br>
&gt; Thanks in advance!<br>
&gt;<br>
&gt;<br>
&gt; N=C3=A9fix Estrada<br>
&gt;<br>
<br>
Hi,<br>
=C2=A0 =C2=A0why not look at SPICE html client instead? It&#39;s already JS=
 code so<br>
it=C2=A0 shouldn&#39;t be that different.<br>
For QUIC you can see Uri&#39;s link if you need some notes, LZ is more or<b=
r>
less standard on decoding, you have uncompressed sections and<br>
references to previous chunks, so it&#39;s just a matter of understanding<b=
r>
these encodings.<br></blockquote><div><br></div><div>There is also a link i=
n spice-common/common/lz.h:</div><div>&quot; dictionary compression for ima=
ges based on fastlz (<a href=3D"http://www.fastlz.org/">http://www.fastlz.o=
rg/</a>) &quot;</div><div><br></div><div>Uri.<br></div><div><br></div><div>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Regards,<br>
=C2=A0 =C2=A0Frediano<br>
<br>
</blockquote></div></div>

--000000000000a4ec070600ef74ee--

