Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B674D9DBD1E
	for <lists+spice-devel@lfdr.de>; Thu, 28 Nov 2024 21:54:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02C6E10E20D;
	Thu, 28 Nov 2024 20:54:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="aX6XSYg/";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com
 [209.85.128.174])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97E0B10E20D
 for <spice-devel@lists.freedesktop.org>; Thu, 28 Nov 2024 20:54:43 +0000 (UTC)
Received: by mail-yw1-f174.google.com with SMTP id
 00721157ae682-6eeba477fcaso11654367b3.0
 for <spice-devel@lists.freedesktop.org>; Thu, 28 Nov 2024 12:54:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1732827282; x=1733432082; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=FECwBnrF2o7IelVl/jhzFUKZy17AykuHZbMT9JcTKdo=;
 b=aX6XSYg/5SAyZrV26BhmtkgF1vL2u5WqkFLctaBNlxdQYLUfRZd0zVt6Tpm21vrB2z
 gPB1yd8roegVTMmL+NEdamf18h7VkvqSAVUqSydQtiG+ufNiRAgWPCzlZm68N/Pndju6
 8wPB7A8y8La6i/9qUUtwZWXvRIkcrZg1MZ60PFovJhDWresu8KywbyjW5uo0auYnmIvY
 Xd8rg9WKOE3tRDwaXV/O+fN97Z3SsFOTD3n8UAknXgmKF63ydzO7EO9g3K08+mcGoBuJ
 mJaiIu92kbspbFDHWXTcuLBlKTQ2OQzNRj/aYvfkBKuDHMwkYhdvPnm+HMLaR8gntdv5
 cc/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1732827282; x=1733432082;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=FECwBnrF2o7IelVl/jhzFUKZy17AykuHZbMT9JcTKdo=;
 b=JH+1sk4kBSxp6VcuilFCXrI9p3xd7Yk1jSHJAT5HyM8kx12ok8gTLBazZGRKPtppzD
 v7LdJ4dYJV9sg+EhOXAxV4d6CWJ/RgOuvbmNp7ojQTqwB9e4SmSnP53bsKG8WchswaU/
 gMmL51xdkMsoDULYhnhKLzpHOcDlAF/i3oD5MmC/OoXTFSSHZIJYh+QQ1vW9mDBbCwze
 E79bkcgNuwKnFnJhcWXcYBM8ALQGh2fpGLygfNxzyWdpsTensuAE6tRKTlTtOnRvl3/o
 rR3y2mPM71nA+5BiK2kfZYamBWmC7iIZQ1lE755FTeYX2+nQO9t/pD9XcJpHQVFm0vEJ
 JK8Q==
X-Gm-Message-State: AOJu0Yz9/ZA+0kW+gghwnoXuFUOQLAlYUGI9QdDFLPARPJv1MesZ+y+1
 b38nr7S3N1PvmL1qB2sfgORsi5vbJJT4GNbTCKHOXoECcc7wnaTQ8z0dPm/pFZOeRZOeLMn7qU7
 n8XiLmYKINXl+8iOQM7LJ0stKSv1cRKKi
X-Gm-Gg: ASbGncviK6FQHot45Sb/pXkKDwlyE3AukdjvHzvqtG2aQb2ABud5ju7OV/GV80z/094
 czyxT6HyrDfdc0E01QTIN3zsDjSQmqgM=
X-Google-Smtp-Source: AGHT+IHLr7VpMmWGb8goUkcLJGJA5XoOnZkSa4dM6qeovYGi3dbGMF7SsVQHUl7BC9u6uTvaStFs99L4rxP21AoF2ys=
X-Received: by 2002:a05:690c:6007:b0:6ef:4fba:8142 with SMTP id
 00721157ae682-6ef4fba8559mr37847707b3.6.1732827282395; Thu, 28 Nov 2024
 12:54:42 -0800 (PST)
MIME-Version: 1.0
References: <20241112135900.29365-1-abelova@astralinux.ru>
 <066aed6d-c66b-4b2c-9e56-86d7e585edb2@astralinux.ru>
In-Reply-To: <066aed6d-c66b-4b2c-9e56-86d7e585edb2@astralinux.ru>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Thu, 28 Nov 2024 20:54:31 +0000
Message-ID: <CAHt6W4fMS_264acQLOuw7hdJaZ==kZsLLpyaipjRHuWApibPUQ@mail.gmail.com>
Subject: Re: [PATCH] usbredirtestclient: fix memory leak
To: Anastasia Belova <abelova@astralinux.ru>
Cc: spice-devel@lists.freedesktop.org, sdl.qemu@linuxtesting.org
Content-Type: multipart/alternative; boundary="0000000000009fdb3a0627ff4ae5"
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

--0000000000009fdb3a0627ff4ae5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 28, 2024 at 10:24=E2=80=AFAM Anastasia Belova <abelova@astralin=
ux.ru>
wrote:

> Just a friendly reminder.
>
>
Merged, thanks.

Sorry for the delay.

Frediano


> 12.11.2024 16:59, Anastasia Belova =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> > free dynamic memory pointed by data before returning
> > from function.
> >
> > Found by Linux Verification Center (linuxtesting.org) with SVACE.
> >
> > Signed-off-by: Anastasia Belova <abelova@astralinux.ru>
> > ---
> >   usbredirtestclient/usbredirtestclient.c | 1 +
> >   1 file changed, 1 insertion(+)
> >
> > diff --git a/usbredirtestclient/usbredirtestclient.c
> b/usbredirtestclient/usbredirtestclient.c
> > index 62b72e8..6da87ec 100644
> > --- a/usbredirtestclient/usbredirtestclient.c
> > +++ b/usbredirtestclient/usbredirtestclient.c
> > @@ -409,6 +409,7 @@ static int usbredirtestclient_cmdline_ctrl(void)
> >               }
> >               if (!arg || *endptr !=3D '\0') {
> >                   printf("Missing or invalid data byte(s)\n");
> > +                free(data);
> >                   return 0;
> >               }
> >           }
>

--0000000000009fdb3a0627ff4ae5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote gmail_quote_container"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, Nov 28, 2024 at 10:24=E2=80=AFAM Anas=
tasia Belova &lt;<a href=3D"mailto:abelova@astralinux.ru">abelova@astralinu=
x.ru</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">Just a friendly reminder.<br>
<br></blockquote><div><br></div><div>Merged, thanks.<br></div><div><br></di=
v><div>Sorry for the delay.<br></div><div><br></div><div>Frediano</div><div=
>=C2=A0<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
12.11.2024 16:59, Anastasia Belova =D0=BF=D0=B8=D1=88=D0=B5=D1=82:<br>
&gt; free dynamic memory pointed by data before returning<br>
&gt; from function.<br>
&gt;<br>
&gt; Found by Linux Verification Center (<a href=3D"http://linuxtesting.org=
" rel=3D"noreferrer" target=3D"_blank">linuxtesting.org</a>) with SVACE.<br=
>
&gt;<br>
&gt; Signed-off-by: Anastasia Belova &lt;<a href=3D"mailto:abelova@astralin=
ux.ru" target=3D"_blank">abelova@astralinux.ru</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 =C2=A0usbredirtestclient/usbredirtestclient.c | 1 +<br>
&gt;=C2=A0 =C2=A01 file changed, 1 insertion(+)<br>
&gt;<br>
&gt; diff --git a/usbredirtestclient/usbredirtestclient.c b/usbredirtestcli=
ent/usbredirtestclient.c<br>
&gt; index 62b72e8..6da87ec 100644<br>
&gt; --- a/usbredirtestclient/usbredirtestclient.c<br>
&gt; +++ b/usbredirtestclient/usbredirtestclient.c<br>
&gt; @@ -409,6 +409,7 @@ static int usbredirtestclient_cmdline_ctrl(void)<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!arg || *end=
ptr !=3D &#39;\0&#39;) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pr=
intf(&quot;Missing or invalid data byte(s)\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 free(data);<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0re=
turn 0;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
</blockquote></div></div>

--0000000000009fdb3a0627ff4ae5--
