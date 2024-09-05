Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 741A79706A6
	for <lists+spice-devel@lfdr.de>; Sun,  8 Sep 2024 12:40:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81D5310E19B;
	Sun,  8 Sep 2024 10:40:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gvSlcz3i";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com
 [209.85.218.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7BA810E909
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Sep 2024 17:56:19 +0000 (UTC)
Received: by mail-ej1-f46.google.com with SMTP id
 a640c23a62f3a-a8a1acb51a7so124929466b.2
 for <spice-devel@lists.freedesktop.org>; Thu, 05 Sep 2024 10:56:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1725558978; x=1726163778; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=ufklVbp/5d5xfLo1Sz9d8IohWa1yYNUNltC0EYaxfGw=;
 b=gvSlcz3ieIRHvmWPtH2BCLfjFsWDQ90X45662K7ADKwAfXq4syZNmlk1DwGTZadzut
 PeVJQkG2ugjFjGCZwldFPHmM0ndJ9HJ1Jl8ox7xX8rDzl4Qz9h6Ntzgt5z0+vNMhjsle
 Of2o4pkFVFW9MAv7byNh9FiVS+b/tUr7HYjpLBzoxB/TQj63H2LH827S8WX3vAiQaRBE
 W62XRvgEcMW7u4kxPtH1LeZbuzj9+GmyD8Dz00Xqz59KODH1fMU8LwaeQ7AmI7IeEepd
 UjAlPa3SdWTELBKFfb8ou4ycdePvK/FQdt9v0smLAUmq8bnO1BkkcB+Zsp8gxFF9L9Wd
 9LVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725558978; x=1726163778;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ufklVbp/5d5xfLo1Sz9d8IohWa1yYNUNltC0EYaxfGw=;
 b=aY90NjVEoglce8/jduFZfhyoAT6sudPmaJ6Y6ghwZNwJr1TVeZW3zKZx78TAjEkbRw
 jiEet/L+ANxvESg3Vjrep/rViSVz1OJqtQk2oytlokuSeRXmzX+ciCuBIGgAuqjvsSr4
 ec8KN+m6HZfrOf+SmFMcc/E/gj2bxOw0vqilvN6gOr0cOLTlzLHIHIOdM4v67mjEGt8b
 QLy38jCK6UTEw8dGFFGJRO1XXH3m5YJeuxnwDlfxQHeuC84SBq4KpFpNq33A5x8zPsd1
 Hz5kBZe+/u3P8t0LNeJ9YEpIcUBuCBSQY25pFcobTWua2qd3qYP/5u4y90MbHlZGSOxR
 gROA==
X-Gm-Message-State: AOJu0YwOejHtbDBxMYfyKqiPHa+fE+t8+ySUpZO3kJoF3H4CCnqtPGRF
 vzq+7iCDDEpSXpGxx+qbwxYa9gZdNImMG4ZtAQu4Qq6Gh8dpKZ+kNpq8l3NRhgILvJP+4FQAOZS
 l6zBJjKd0+TcFK5tQsBAmlRZHKLU=
X-Google-Smtp-Source: AGHT+IFHuOmwvQzxT9W2hM1Fisd7G9e/Q1AY2hu/Z2DYzVgCXRVCCBDGO6OUyK4Eb1UIIl++ecspFSFtCIrKtyaZzk4=
X-Received: by 2002:a17:907:2cc7:b0:a86:9ac9:f3ff with SMTP id
 a640c23a62f3a-a8a1d2c989amr994888966b.26.1725558977791; Thu, 05 Sep 2024
 10:56:17 -0700 (PDT)
MIME-Version: 1.0
References: <CA+mZ-_JE5f7qdNFyS-zKzYwx8e22xyzNG9oU4B7cNOyCUFAENQ@mail.gmail.com>
 <CAHt6W4eAR8gN6=d9LWH4EOukuWgx76UfBj0QGT0ctdr=UbWF_Q@mail.gmail.com>
 <CA+mZ-_LwGmvUhFDjqgLzfkc0aMy0SsWXH9U_Ekdsg0rLZKZQdA@mail.gmail.com>
 <CAHt6W4egOb+jX=LDLmpTnQ4n1ujkCMF=4e2H+hs+mOPufYXUwQ@mail.gmail.com>
In-Reply-To: <CAHt6W4egOb+jX=LDLmpTnQ4n1ujkCMF=4e2H+hs+mOPufYXUwQ@mail.gmail.com>
From: Randall Suter <randallsuter@gmail.com>
Date: Thu, 5 Sep 2024 20:56:05 +0300
Message-ID: <CA+mZ-_+Q7W3zJoyuSX49uxOWq2rpJ81FYndYDeiQG=EfhOPisQ@mail.gmail.com>
Subject: Re: Guest Post Request
To: Frediano Ziglio <freddy77@gmail.com>
Cc: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="000000000000e90c6d06216301d6"
X-Mailman-Approved-At: Sun, 08 Sep 2024 10:40:06 +0000
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

--000000000000e90c6d06216301d6
Content-Type: text/plain; charset="UTF-8"

Hello,

My clients are willing to pay you to place an advertising article on your
site. That's what I'm asking you. Do you accept this or not?

Best Regards,
Randall Suter


On Thu, 5 Sept 2024 at 09:39, Frediano Ziglio <freddy77@gmail.com> wrote:

> Hi,
>    it's not clear what you are trying to achieve.
>
> Do you want to sponsor our project? Like paying for a developer? Or
> donate some money (I don't think we'll have a nice usage at the moment
> but I may be wrong) ?
>
> Regards,
>    Frediano
>
> Il giorno ven 19 lug 2024 alle ore 23:14 Randall Suter
> <randallsuter@gmail.com> ha scritto:
> >
> > Hi! Thank you for your reply! I'm interested in sponsored posts with a
> do-follow link. I have several projects on different topics. I would like
> to know the terms of publication and prices on your site to begin with.
> Please give me more details about it if you accept such posts.
> >
> > Best Regards,
> > Randall Suter
> >
> >
> > On Fri, 19 Jul 2024 at 13:47, Frediano Ziglio <freddy77@gmail.com>
> wrote:
> >>
> >> Il giorno ven 19 lug 2024 alle ore 11:20 Randall Suter
> >> <randallsuter@gmail.com> ha scritto:
> >> >
> >> > Good day! My name is Randall. I would like to contribute to your
> website (spice-space.org) by submitting a guest post. Are there any
> specific requirements that I need to follow?
> >> >
> >> > Best Regards,
> >> > Randall Suter
> >>
> >> Hi Randall,
> >>    pages are generated from
> >> https://gitlab.freedesktop.org/spice/spice-space-pages.
> >> What'a a "guest post" ?
> >>
> >> Frediano
>

--000000000000e90c6d06216301d6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hello,</div><div><br></div><div>My c=
lients are willing to pay you to place an advertising article on your site.=
 That&#39;s what I&#39;m asking you. Do you accept this or not?</div><div><=
div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><div><br></div><=
div><font face=3D"arial, sans-serif">Best Regards,<br></font></div><div><sp=
an style=3D"color:rgb(0,0,0);white-space:pre-wrap"><font face=3D"arial, san=
s-serif">Randall Suter</font></span><br></div></div></div></div><br></div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Thu, 5 Sept 2024 at 09:39, Frediano Ziglio &lt;<a href=3D"mailto:freddy77=
@gmail.com">freddy77@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex">Hi,<br>
=C2=A0 =C2=A0it&#39;s not clear what you are trying to achieve.<br>
<br>
Do you want to sponsor our project? Like paying for a developer? Or<br>
donate some money (I don&#39;t think we&#39;ll have a nice usage at the mom=
ent<br>
but I may be wrong) ?<br>
<br>
Regards,<br>
=C2=A0 =C2=A0Frediano<br>
<br>
Il giorno ven 19 lug 2024 alle ore 23:14 Randall Suter<br>
&lt;<a href=3D"mailto:randallsuter@gmail.com" target=3D"_blank">randallsute=
r@gmail.com</a>&gt; ha scritto:<br>
&gt;<br>
&gt; Hi! Thank you for your reply! I&#39;m interested in sponsored posts wi=
th a do-follow link. I have several projects on different topics. I would l=
ike to know the terms of publication and prices on your site to begin with.=
 Please give me more details about it if you accept such posts.<br>
&gt;<br>
&gt; Best Regards,<br>
&gt; Randall Suter<br>
&gt;<br>
&gt;<br>
&gt; On Fri, 19 Jul 2024 at 13:47, Frediano Ziglio &lt;<a href=3D"mailto:fr=
eddy77@gmail.com" target=3D"_blank">freddy77@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Il giorno ven 19 lug 2024 alle ore 11:20 Randall Suter<br>
&gt;&gt; &lt;<a href=3D"mailto:randallsuter@gmail.com" target=3D"_blank">ra=
ndallsuter@gmail.com</a>&gt; ha scritto:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Good day! My name is Randall. I would like to contribute to y=
our website (<a href=3D"http://spice-space.org" rel=3D"noreferrer" target=
=3D"_blank">spice-space.org</a>) by submitting a guest post. Are there any =
specific requirements that I need to follow?<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Best Regards,<br>
&gt;&gt; &gt; Randall Suter<br>
&gt;&gt;<br>
&gt;&gt; Hi Randall,<br>
&gt;&gt;=C2=A0 =C2=A0 pages are generated from<br>
&gt;&gt; <a href=3D"https://gitlab.freedesktop.org/spice/spice-space-pages"=
 rel=3D"noreferrer" target=3D"_blank">https://gitlab.freedesktop.org/spice/=
spice-space-pages</a>.<br>
&gt;&gt; What&#39;a a &quot;guest post&quot; ?<br>
&gt;&gt;<br>
&gt;&gt; Frediano<br>
</blockquote></div>

--000000000000e90c6d06216301d6--
