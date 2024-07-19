Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2DFB9380BD
	for <lists+spice-devel@lfdr.de>; Sat, 20 Jul 2024 12:33:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 906EA10E073;
	Sat, 20 Jul 2024 10:33:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mNqNpTmE";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78CBC10E099
 for <spice-devel@lists.freedesktop.org>; Fri, 19 Jul 2024 22:14:07 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id
 ffacd0b85a97d-36798779d75so1298579f8f.3
 for <spice-devel@lists.freedesktop.org>; Fri, 19 Jul 2024 15:14:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1721427246; x=1722032046; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=BlpVqC3XiCmF5MjRHlH9Q+jS9T/+ptPzFFEWiDzwJ5Y=;
 b=mNqNpTmEG5lKwuYfZmq0rff8aOAUullc8KkufOM7lR41NkdfIGU2uHgN77ErWYbeGA
 /buMpg9LRRWx1es1w8fRvEguDABewzEUkg0UdNRNmXeukFlTKw5WDKBpfnsQ6FiuOsr3
 m+njiChgViHY2UIFZv6dHVXBN1o0LpVQ5Qlu1ALQND4Ajw/sU8eeBPsrDluliNyEQ7fK
 20h72NNkxRGEeeQpprrOCw6qFZZw+0wgup8jtS5GWqJ2KtvUQqSY9KAbJCslOmmnY3DD
 7GE/sRld+G3EldOvcIirsY7kZvLhNZgm8PvIVCCmgEp14ul+N0ZSnMijtGZtY0okudY2
 +NSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1721427246; x=1722032046;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=BlpVqC3XiCmF5MjRHlH9Q+jS9T/+ptPzFFEWiDzwJ5Y=;
 b=HASR3RgRp6TDbF+wCxS6N4aTxRvLpHQgKPRudK6Laa7+R/V+WIR4JM0tqgkyh5rBHN
 0dKNh0fT+3CBEMurWXyh685uklyUmIMkMV6mSPETjSWab6NFnM2XhMuWd8mXXuIvTM4W
 53dCtopMBoSHPYbgaUpwLoeSNMY3FKGRt+3OCm5ge84RxJTlYcs1gzDNNPDKxzT4qX+N
 zFzqpc8xOu9Q4ipHhbBekKr0t5o/q/w77G1It0d/9HuqXezX44Enc4VLsONiAutXfWde
 adHj42aZ+4udEUDT56viMDzT/zcA0cjsyvv9rF2SRloEkXhjSQiReC1sbGN+zdwf3pRI
 8WAg==
X-Gm-Message-State: AOJu0Yx8FD483eesasaryVIgWqXFWvgqXmCCxY3uI9Q732I66P2x94IV
 AyGHwZ0wjhmDNYBvfiPVywcnQw1llKdsjT1XAFv1VIzahnXpbkMSnupcd1G5y641GJrS46/t3HH
 A3Wc1lBK31xajQN/TfJYKw6aleJk=
X-Google-Smtp-Source: AGHT+IFYfvwU2Mf/uzD95Bclex6tG9ipRdSF0bcVhHAGCqqfO63nbzOv4op8nWc/6eG50iV8+Vh8layD64ksTMEfqdQ=
X-Received: by 2002:a05:6000:1ccc:b0:364:ee85:e6e4 with SMTP id
 ffacd0b85a97d-36831730afdmr6510953f8f.53.1721427245476; Fri, 19 Jul 2024
 15:14:05 -0700 (PDT)
MIME-Version: 1.0
References: <CA+mZ-_JE5f7qdNFyS-zKzYwx8e22xyzNG9oU4B7cNOyCUFAENQ@mail.gmail.com>
 <CAHt6W4eAR8gN6=d9LWH4EOukuWgx76UfBj0QGT0ctdr=UbWF_Q@mail.gmail.com>
In-Reply-To: <CAHt6W4eAR8gN6=d9LWH4EOukuWgx76UfBj0QGT0ctdr=UbWF_Q@mail.gmail.com>
From: Randall Suter <randallsuter@gmail.com>
Date: Sat, 20 Jul 2024 01:13:53 +0300
Message-ID: <CA+mZ-_LwGmvUhFDjqgLzfkc0aMy0SsWXH9U_Ekdsg0rLZKZQdA@mail.gmail.com>
Subject: Re: Guest Post Request
To: Frediano Ziglio <freddy77@gmail.com>
Cc: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="000000000000793316061da103df"
X-Mailman-Approved-At: Sat, 20 Jul 2024 10:33:12 +0000
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

--000000000000793316061da103df
Content-Type: text/plain; charset="UTF-8"

Hi! Thank you for your reply! I'm interested in sponsored posts with a
do-follow link. I have several projects on different topics. I would like
to know the terms of publication and prices on your site to begin with.
Please give me more details about it if you accept such posts.

Best Regards,
Randall Suter


On Fri, 19 Jul 2024 at 13:47, Frediano Ziglio <freddy77@gmail.com> wrote:

> Il giorno ven 19 lug 2024 alle ore 11:20 Randall Suter
> <randallsuter@gmail.com> ha scritto:
> >
> > Good day! My name is Randall. I would like to contribute to your website
> (spice-space.org) by submitting a guest post. Are there any specific
> requirements that I need to follow?
> >
> > Best Regards,
> > Randall Suter
>
> Hi Randall,
>    pages are generated from
> https://gitlab.freedesktop.org/spice/spice-space-pages.
> What'a a "guest post" ?
>
> Frediano
>

--000000000000793316061da103df
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><span style=3D"color:rgb(0,0,0);font-size=
:10pt;font-family:Arial">Hi! Thank you for your reply! I&#39;m interested i=
n sponsored posts with a do-follow link. I have several projects on differe=
nt topics. I would like to know the terms of publication and prices on your=
 site to begin with. Please give me more details about it if you accept suc=
h posts.</span><br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_signa=
ture"><div dir=3D"ltr"><div><br></div><div><font face=3D"arial, sans-serif"=
>Best Regards,<br></font></div><div><span style=3D"color:rgb(0,0,0);white-s=
pace:pre-wrap"><font face=3D"arial, sans-serif">Randall Suter</font></span>=
<br></div></div></div></div><br></div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, 19 Jul 2024 at 13:47, Fredian=
o Ziglio &lt;<a href=3D"mailto:freddy77@gmail.com">freddy77@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Il gio=
rno ven 19 lug 2024 alle ore 11:20 Randall Suter<br>
&lt;<a href=3D"mailto:randallsuter@gmail.com" target=3D"_blank">randallsute=
r@gmail.com</a>&gt; ha scritto:<br>
&gt;<br>
&gt; Good day! My name is Randall. I would like to contribute to your websi=
te (<a href=3D"http://spice-space.org" rel=3D"noreferrer" target=3D"_blank"=
>spice-space.org</a>) by submitting a guest post. Are there any specific re=
quirements that I need to follow?<br>
&gt;<br>
&gt; Best Regards,<br>
&gt; Randall Suter<br>
<br>
Hi Randall,<br>
=C2=A0 =C2=A0pages are generated from<br>
<a href=3D"https://gitlab.freedesktop.org/spice/spice-space-pages" rel=3D"n=
oreferrer" target=3D"_blank">https://gitlab.freedesktop.org/spice/spice-spa=
ce-pages</a>.<br>
What&#39;a a &quot;guest post&quot; ?<br>
<br>
Frediano<br>
</blockquote></div>

--000000000000793316061da103df--
