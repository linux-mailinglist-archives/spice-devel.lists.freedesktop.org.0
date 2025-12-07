Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17CD8CAB3DE
	for <lists+spice-devel@lfdr.de>; Sun, 07 Dec 2025 12:24:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 558A810E344;
	Sun,  7 Dec 2025 11:24:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="K4uu1/Zo";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A25710E344
 for <spice-devel@lists.freedesktop.org>; Sun,  7 Dec 2025 11:24:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1765106664;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=eOp4cbe4AqOc7TdlsFYcjChubSJ0Vmv/KovKAUJw/60=;
 b=K4uu1/ZoVyljDs7jKMg7DhpjtnbEH/8QaH4SYLEji2dMAgSv3lxgxIrXdwLLFsXeoFPvcm
 TCU/J0IatmnJX8R+dpHX7NQHbFQ7PVT5fADbtSCZfOR+serxSLoo2eEYu53lr6potsEzT9
 aGCaCY6WRrXUVnoFhTaHBaklO2LIiRE=
Received: from mail-yx1-f69.google.com (mail-yx1-f69.google.com
 [74.125.224.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-96-EBCFCj0NNJi9qrNBJND3pQ-1; Sun, 07 Dec 2025 06:24:22 -0500
X-MC-Unique: EBCFCj0NNJi9qrNBJND3pQ-1
X-Mimecast-MFC-AGG-ID: EBCFCj0NNJi9qrNBJND3pQ_1765106662
Received: by mail-yx1-f69.google.com with SMTP id
 956f58d0204a3-6421389b897so4361284d50.3
 for <spice-devel@lists.freedesktop.org>; Sun, 07 Dec 2025 03:24:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765106661; x=1765711461;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=eOp4cbe4AqOc7TdlsFYcjChubSJ0Vmv/KovKAUJw/60=;
 b=TLuy01zeV/E4pHT7PifGZka5gQji/Op+1ORaCoWatpEmuYqU/HtSR9acJBQdrYeqTS
 bmLuVc/avq8IFgUIrEELD7wlG4Iw3yRJG5kQxrLINByhx9VvmhaL/U8lxf/rgnP5C2HZ
 imNzLAp1HTa5JTaUhQHWXQUFxOhXhuhYpKz6i5kIweUzLyfjmAUIAfHJpeSM8BGMRb1E
 W9SCHxzqnynyevw8TYoIUDdnk2UDpysQjKzWyv2ow6QYg7JbnopySoJRucP9uCSJ5M21
 AUVhHhmKxtllCdvoeOl1MfHecUTF1oGpDL8MRJaM0L111nT4h2/gkXTTou5Zm9kbiM/w
 5sSA==
X-Gm-Message-State: AOJu0YzqJWiuMNgQVF3Qd8jLRoThv2FCyf7/np9otqTFTez5jm2nenyl
 1lELDtAoVcMiL9v5wWCZUybI2emH6KpYydi49u1V2MzKqCdAGKUXtjjoioRvpl+203Wq9Tm47EL
 vMRVEpNpSNBpC9s4UyTIzs7HI9vAswY5x8bjsTl1vUrraXIO7C+hAEZFnoDmSyqbbV4psjvMrJM
 YaFoSTXxVQyE60w75sp0/fWmz7gKcH39xfYGqwAzw2cvghFqnKgHwDp1kjUg==
X-Gm-Gg: ASbGnctqF9GLO2jQgjnEtNAUe7+eubCuqZTS9MCCLQ7P+N6QQJ2RGi+j1XbsCxSRm/5
 6CZGKyTU274O0N60CLOTaGcQLKNhVcYbjCuS1DM8U/lDBLGm4uFgsUxeu1z2er1qTsOXeEnByKj
 p6FIrSGLlbFt1dK9DCaqJo9LFgaDMY9+MMOEr+HQmyNDkwEiaEGXoFMV9r9seZY5U=
X-Received: by 2002:a05:690e:190f:b0:640:cfa4:e8d2 with SMTP id
 956f58d0204a3-6444e7d7270mr3633992d50.68.1765106661496; 
 Sun, 07 Dec 2025 03:24:21 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGs44cmpRKCe9hawaeun576mSz0uI1bU2D59R78s2snFs4QucIkuH94Aapw5FndCAXQ5dzgN8Odx8HabhWvG6E=
X-Received: by 2002:a05:690e:190f:b0:640:cfa4:e8d2 with SMTP id
 956f58d0204a3-6444e7d7270mr3633982d50.68.1765106661136; Sun, 07 Dec 2025
 03:24:21 -0800 (PST)
MIME-Version: 1.0
References: <cover.1764987923.git.nvinson234@gmail.com>
 <91f68d92ea9b417efd8cdff957711fc635d70b38.1764987923.git.nvinson234@gmail.com>
 <CAAg9qJ2jvxsQtMtVQMXPVJgLgiZDStfrHkapNMmY94v77mz07g@mail.gmail.com>
 <a096e6e2-361d-4a11-b23a-d88ff187a52d@gmail.com>
In-Reply-To: <a096e6e2-361d-4a11-b23a-d88ff187a52d@gmail.com>
From: Uri Lublin <uril@redhat.com>
Date: Sun, 7 Dec 2025 13:24:10 +0200
X-Gm-Features: AQt7F2pEWX_TofiJx9WIlmbZg0epJCrGMTeHSQ6RfyFhAbfZPgJk93uXwZrzeV8
Message-ID: <CAAg9qJ3iGswfrAH1Kp7DKE7LX8uhpVx0aZ1dDKUoPxsKDeD7_A@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] m4/spice-compile-warnings.m4: disable
 -Wmissing-braces
To: Nicholas Vinson <nvinson234@gmail.com>
Cc: spice-devel@lists.freedesktop.org, freddy77@gmail.com
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 9sZ3PNe75u8D07d3djfjv-BnlNvXyAvB4IoDUwFVxBc_1765106662
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000873ff706455aeb68"
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

--000000000000873ff706455aeb68
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Dec 7, 2025 at 3:07=E2=80=AFAM Nicholas Vinson <nvinson234@gmail.co=
m> wrote:

> On 12/6/25 18:38, Uri Lublin wrote:
> > On Sat, Dec 6, 2025 at 10:54=E2=80=AFAM Nicholas Vinson <nvinson234@gma=
il.com
> > <mailto:nvinson234@gmail.com>> wrote:
> >
> >     Disable the -Wmissing-braces warning as it suggests adding braces t=
o
> >     designated initializes in a manner that violates C++20 rules.
> >
> >     Signed-off-by: Nicholas Vinson <nvinson234@gmail.com
> >     <mailto:nvinson234@gmail.com>>
> >     ---
> >       m4/spice-compile-warnings.m4 | 1 +
> >       1 file changed, 1 insertion(+)
> >
> >     diff --git a/m4/spice-compile-warnings.m4
> b/m4/spice-compile-warnings.m4
> >     index abe4a912..d2e1acc8 100644
> >     --- a/m4/spice-compile-warnings.m4
> >     +++ b/m4/spice-compile-warnings.m4
> >     @@ -84,6 +84,7 @@ AC_DEFUN([SPICE_COMPILE_WARNINGS],[
> >           dontwarn=3D"$dontwarn -Wstrict-prototypes"
> >           dontwarn=3D"$dontwarn -Wsuggest-final-methods"
> >           dontwarn=3D"$dontwarn -Wsuggest-final-types"
> >     +    dontwarn=3D"$dontwarn -Wmissing-braces"
> >
> >
> > Probably better to (also?) remove "-Wmissing-braces" from the
> > list iterated by  gl_manywarn_item.
>
> Just before gl_manywarn_item there is a comment that says "List all gcc
> warning categories". That comment is why I did not remove it from the
> gl_manywarn_item list.
>
> It seemed more logically consistent to me to place it in the list and
> then use the dontwarn feature to disable the flag.
>
>
Hi Nicholas,

I think you're right.
The right way to do it is to add flags to "dontwarn".

What about the patch order, does that make sense to you ?

Thanks,
    Uri.


> That said, I am amenable to either approach; I just would want to make
> sure everyone is OK with the requested change.
>
> Thanks,
> Nicholas Vinson
>
> >
> > I suggest applying the m4 patch first (and g++ fix second) such
> > that the build works after the first patch is applied.
> >
> > Thanks,
> >      Uri
> >
> >
> >           # Get all possible GCC warnings
> >           gl_MANYWARN_ALL_GCC([maybewarn])
> >     --
> >     2.52.0
> >
>
>

--000000000000873ff706455aeb68
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote gmail_quote_container"><div dir=
=3D"ltr" class=3D"gmail_attr">On Sun, Dec 7, 2025 at 3:07=E2=80=AFAM Nichol=
as Vinson &lt;<a href=3D"mailto:nvinson234@gmail.com">nvinson234@gmail.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">O=
n 12/6/25 18:38, Uri Lublin wrote:<br>
&gt; On Sat, Dec 6, 2025 at 10:54=E2=80=AFAM Nicholas Vinson &lt;<a href=3D=
"mailto:nvinson234@gmail.com" target=3D"_blank">nvinson234@gmail.com</a> <b=
r>
&gt; &lt;mailto:<a href=3D"mailto:nvinson234@gmail.com" target=3D"_blank">n=
vinson234@gmail.com</a>&gt;&gt; wrote:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Disable the -Wmissing-braces warning as it suggests=
 adding braces to<br>
&gt;=C2=A0 =C2=A0 =C2=A0designated initializes in a manner that violates C+=
+20 rules.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Signed-off-by: Nicholas Vinson &lt;<a href=3D"mailt=
o:nvinson234@gmail.com" target=3D"_blank">nvinson234@gmail.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:nvinson234@gmail.com" =
target=3D"_blank">nvinson234@gmail.com</a>&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0---<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0m4/spice-compile-warnings.m4 | 1 +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A01 file changed, 1 insertion(+)<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0diff --git a/m4/spice-compile-warnings.m4 b/m4/spic=
e-compile-warnings.m4<br>
&gt;=C2=A0 =C2=A0 =C2=A0index abe4a912..d2e1acc8 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0--- a/m4/spice-compile-warnings.m4<br>
&gt;=C2=A0 =C2=A0 =C2=A0+++ b/m4/spice-compile-warnings.m4<br>
&gt;=C2=A0 =C2=A0 =C2=A0@@ -84,6 +84,7 @@ AC_DEFUN([SPICE_COMPILE_WARNINGS]=
,[<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dontwarn=3D&quot;$dontwarn -Ws=
trict-prototypes&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dontwarn=3D&quot;$dontwarn -Ws=
uggest-final-methods&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dontwarn=3D&quot;$dontwarn -Ws=
uggest-final-types&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 =C2=A0 dontwarn=3D&quot;$dontwarn -Wmissing=
-braces&quot;<br>
&gt; <br>
&gt; <br>
&gt; Probably better to (also?) remove &quot;-Wmissing-braces&quot; from th=
e<br>
&gt; list iterated by=C2=A0=C2=A0gl_manywarn_item.<br>
<br>
Just before gl_manywarn_item there is a comment that says &quot;List all gc=
c <br>
warning categories&quot;. That comment is why I did not remove it from the =
<br>
gl_manywarn_item list.<br>
<br>
It seemed more logically consistent to me to place it in the list and <br>
then use the dontwarn feature to disable the flag.<br>
<br></blockquote><div><br></div><div>Hi=C2=A0Nicholas,</div><div><br></div>=
<div>I think you&#39;re right.</div><div>The right way to do it is to add f=
lags to &quot;dontwarn&quot;.</div><div></div><div><br></div><div>What abou=
t the patch order,=C2=A0does that make=C2=A0sense to you ?</div><div><br></=
div><div>Thanks,</div><div>=C2=A0 =C2=A0 Uri.</div><div>=C2=A0</div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">
That said, I am amenable to either approach; I just would want to make <br>
sure everyone is OK with the requested change.<br>
<br>
Thanks,<br>
Nicholas Vinson<br>
<br>
&gt; <br>
&gt; I suggest applying the m4 patch first (and g++ fix second) such<br>
&gt; that the build works after the first patch is applied.<br>
&gt; <br>
&gt; Thanks,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 Uri<br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Get all possible GCC warning=
s<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gl_MANYWARN_ALL_GCC([maybewarn=
])<br>
&gt;=C2=A0 =C2=A0 =C2=A0-- <br>
&gt;=C2=A0 =C2=A0 =C2=A02.52.0<br>
&gt; <br>
<br>
</blockquote></div></div>

--000000000000873ff706455aeb68--

