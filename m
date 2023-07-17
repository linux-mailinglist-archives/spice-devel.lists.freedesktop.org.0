Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34825756544
	for <lists+spice-devel@lfdr.de>; Mon, 17 Jul 2023 15:41:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F4EE10E24C;
	Mon, 17 Jul 2023 13:41:38 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31D7410E24C
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Jul 2023 13:41:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1689601294;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=y9YFTrZJUlbwDfNR5hXyDBT4ON9XEsEM0onvrLnsJso=;
 b=gveh3h5rAqB4rwfg+HcEk0xLiJuiJ7Eus9P9hnEcB9lOUZu/kQXkYbhx6AA6QC6kV7H7V6
 XWy9aJvt2cez+Q1cX5YbF3xWiGD7MRmufVRZVy4CIp/loACro9KZyGkzoBU4yqW+d3LdMn
 29Sw6Xe7h9HAZUrblvZFBxFXaVEIb2g=
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com
 [209.85.161.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-635-lxoSP4p6PamyNnceVpXMsg-1; Mon, 17 Jul 2023 09:41:33 -0400
X-MC-Unique: lxoSP4p6PamyNnceVpXMsg-1
Received: by mail-oo1-f71.google.com with SMTP id
 006d021491bc7-565f0c7c243so5906377eaf.2
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Jul 2023 06:41:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689601292; x=1692193292;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=y9YFTrZJUlbwDfNR5hXyDBT4ON9XEsEM0onvrLnsJso=;
 b=gp9vhmAK5aTJi07gyij5GaUK9OpF0cYTRl7EhUY9/BlimNoMisJ20Vn6lg9sGET8mz
 zhD6q70KQJ1XZ5Lqr9cDt4GQsMkOoqw0vdUCeJDn17wqG2l/YrM9fVFg9NYDdJPVyYlV
 ZJwhQvoP8uV/7Tw8AtRoVVBJn4bLwZgsi08VhGj7VrxIxNTDrhl4zYEzZDxDTnGlyvM/
 QWLmyIacAhWFRZOV72fIP7lvtCPDYP43mZuzKFnZWcWAQfwdqBs2XhA7ZFlvUenOokbp
 lZ8oFRqDJ9WrJZbekkd1UvzI0otXQSjLEE8ZPkzjLo/EEkodJlmuH0aaoMkeRQOaL0p+
 nUaQ==
X-Gm-Message-State: ABy/qLb+swvuPoHHVfyGQD/GWF/Z1JT1zlLHolMmwGbyt5CdrnDtKWoe
 UURAtv8CZ/MDItVgkFKTl0lslB7T5v1lhkgXBt//Oaqmiz8/4EK4snWbTGeR89ZVZNl/UPWy2x6
 xfN/8kyWJOvt6QVsj9wXaHXAjUeMRHlSkBLvvb+wBEuQAOh5yPbXEhH08og==
X-Received: by 2002:a4a:928c:0:b0:566:f951:d12 with SMTP id
 i12-20020a4a928c000000b00566f9510d12mr4289373ooh.1.1689601292003; 
 Mon, 17 Jul 2023 06:41:32 -0700 (PDT)
X-Google-Smtp-Source: APBJJlGFOcOdQ4oofInTvrIIbdEALCxpP1UV5Q6ovTL4+mZyQtNu90G6Z+bsDRM6B3bj+k8UVbwg2Qf1UgxBgIc1Jic=
X-Received: by 2002:a4a:928c:0:b0:566:f951:d12 with SMTP id
 i12-20020a4a928c000000b00566f9510d12mr4289317ooh.1.1689601290126; Mon, 17 Jul
 2023 06:41:30 -0700 (PDT)
MIME-Version: 1.0
References: <99e6b141-6aa0-fc47-2ffa-7a94e1a3c079@gmail.com>
In-Reply-To: <99e6b141-6aa0-fc47-2ffa-7a94e1a3c079@gmail.com>
From: Uri Lublin <ulublin@redhat.com>
Date: Mon, 17 Jul 2023 16:41:19 +0300
Message-ID: <CAAg9qJ0nNhtDoeKdBjVd1r7YwgSorhNeD2f=oFWeFPR3-_aWGg@mail.gmail.com>
To: =?UTF-8?Q?N=C3=A9fix_Estrada?= <nefixestrada@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000b5e0bd0600aef434"
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
Cc: spice-devel@lists.freedesktop.org
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--000000000000b5e0bd0600aef434
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

On Sun, Jul 16, 2023 at 9:58=E2=80=AFAM N=C3=A9fix Estrada <nefixestrada@gm=
ail.com>
wrote:

> Hello! I'm currently writting a Spice client in Typescript that makes
> use of modern browser features (such as WebGPU, WebUSB, Web workers, etc)=
.
>
>
> However, I'm struggling with the Image image encoding. I've checked the
> whole documentation site, but I wasn't able to find how each one of the
> encoding works. My knowledge in both audio and video encoding is very
> limited. Specifically:
>

There is not much documentation about image encoding.



>
> - QUIC
>

At the top of common/quic.c there are these two lines:
// Red Hat image compression based on SFALIC by Roman Starosolski
// http://sun.iinf.polsl.gliwice.pl/~rstaros/sfalic/index.html




>
> - LZ (and all its variants)
>
>
> I've been trying to understand them from the spice-common project, but
> it's just the implementation without any type of docs :(
>
> Another question I had is if there's another way of comunication or a
> place where I can shoot questions about the implementation
>

I think sending an email to this mailing list is fine.
There is also an IRC channel.

Kind Regards,
    Uri.



>
> Also, I'm planning on gifting the client to the spice project, if you
> would be interested in! (given that you already have a JS project)
>
>
> Thanks in advance!
>
>
> N=C3=A9fix Estrada
>
>

--000000000000b5e0bd0600aef434
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hello,</div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Jul 16, 2023 at =
9:58=E2=80=AFAM N=C3=A9fix Estrada &lt;<a href=3D"mailto:nefixestrada@gmail=
.com">nefixestrada@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">Hello! I&#39;m currently writting a Spice clien=
t in Typescript that makes <br>
use of modern browser features (such as WebGPU, WebUSB, Web workers, etc).<=
br>
<br>
<br>
However, I&#39;m struggling with the Image image encoding. I&#39;ve checked=
 the <br>
whole documentation site, but I wasn&#39;t able to find how each one of the=
 <br>
encoding works. My knowledge in both audio and video encoding is very <br>
limited. Specifically:<br></blockquote><div><br></div><div>There is not muc=
h documentation about image encoding.</div><br><div>=C2=A0<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">
<br>
- QUIC<br></blockquote><div><br></div><div><div>At the top of common/quic.c=
 there are these two lines:</div><div>// Red Hat image compression based on=
 SFALIC by Roman Starosolski<br>// <a href=3D"http://sun.iinf.polsl.gliwice=
.pl/~rstaros/sfalic/index.html">http://sun.iinf.polsl.gliwice.pl/~rstaros/s=
falic/index.html</a><br></div><div><br><br></div></div><div>=C2=A0</div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">
<br>
- LZ (and all its variants)<br>
<br>
<br>
I&#39;ve been trying to understand them from the spice-common project, but =
<br>
it&#39;s just the implementation without any type of docs :(<br>
<br>
Another question I had is if there&#39;s another way of comunication or a <=
br>
place where I can shoot questions about the implementation<br></blockquote>=
<div><br></div><div>I think sending an email to this mailing list is fine.<=
/div><div>There is also an IRC channel.</div><div><br></div><div>Kind Regar=
ds,</div><div>=C2=A0=C2=A0=C2=A0 Uri.</div><div><br></div><div>=C2=A0</div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Also, I&#39;m planning on gifting the client to the spice project, if you <=
br>
would be interested in! (given that you already have a JS project)<br>
<br>
<br>
Thanks in advance!<br>
<br>
<br>
N=C3=A9fix Estrada<br>
<br>
</blockquote></div></div>

--000000000000b5e0bd0600aef434--

