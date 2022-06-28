Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71B2B55E5D4
	for <lists+spice-devel@lfdr.de>; Tue, 28 Jun 2022 17:55:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD505112D76;
	Tue, 28 Jun 2022 15:55:20 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com
 [IPv6:2607:f8b0:4864:20::22b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2A37113CA0
 for <spice-devel@lists.freedesktop.org>; Tue, 28 Jun 2022 15:55:19 +0000 (UTC)
Received: by mail-oi1-x22b.google.com with SMTP id s124so17846400oia.0
 for <spice-devel@lists.freedesktop.org>; Tue, 28 Jun 2022 08:55:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=a00GEu4iPh3wtt9WW+hLP8FcjcoDoYsCE+iJWUlBkSg=;
 b=SpD1ZBZuO0j7H4+uRblg8DO/GQCuy5idkDVM1PUTPzULHQAONzTWstP1qBOPqhHrAK
 Ni512DIJtgiPNJh2rNbto1umfvRiuYNQHGGU93uof8SkCsDCFS5C8O5asoQCCyCPHIoH
 B4Pz+EG6VEgk0fwPNLpPoIbuPgIz7XXXn8eHr9v237Mjo3HaL9kQ9skYgTWSypd+ZGnZ
 kZox9H3YNyiXmYSbtsEVNrtNqx9Ist2kvGSjS7vs/GvXlyZlABpn0KWNIt7s12/L3MZG
 mqEscn9tT6b1drhGRRfE8m01i3qNSWq8tgmxvgYE+dxOF7EcN6WTjddtTKk3MGnrJ8Pc
 oP3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=a00GEu4iPh3wtt9WW+hLP8FcjcoDoYsCE+iJWUlBkSg=;
 b=5G1KVMlxPAFZCNvEzcGkZwBJdOkio333O46pF6ocZsDRRkctr3uCawvbIopoJB9MPg
 F4w14RCY8VVyTTg1spbDxrDCuu08uSVvpQ91UpG9Lkt2LuIVaDyLxyPcFpWkWp9PH0VT
 fvxR2uBB4M6IEyeH0CiAbkYaYAK59Rhptl0YNGXxBXQBUCKKlvttJtX3bcUQs1tyIsH7
 7B6xe7RjxwAPQkiad7gs71msIIGcNa7KroDCCc4r0OOTEgayBeRgAm+GeYVDF/byyi3C
 HsnwhXzKi/VRhZqUu0Xw4q9wqDc1I0UfLVnZvgZm7CQ0phpuv9rT3+PK5B6zGZiir/X9
 3WHw==
X-Gm-Message-State: AJIora8cCqCC7jsZMC+0CELJYTkaOaKMEJPyyS39VBYZlyWPrHQRd4Xc
 qgZ67wLpVNOP/Z9xPI8T/KWNSB9snXunLUrOO0g=
X-Google-Smtp-Source: AGRyM1s4LzWp4BYXd1ehXvLJfG5CvITyONZBff44iCkQ8n8wQDWy2byHhlwbrDVWaFAExsEvCGL0tMiojbyWvPcih0Y=
X-Received: by 2002:a05:6808:2122:b0:32e:f740:3369 with SMTP id
 r34-20020a056808212200b0032ef7403369mr195675oiw.1.1656431719035; Tue, 28 Jun
 2022 08:55:19 -0700 (PDT)
MIME-Version: 1.0
References: <web-14586916@be1.uni-freiburg.de>
In-Reply-To: <web-14586916@be1.uni-freiburg.de>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Tue, 28 Jun 2022 16:55:07 +0100
Message-ID: <CAHt6W4dy+UnJ9jjSfqKisZzF2Ob3acVJOu_4Mz3+T4aGANqPAA@mail.gmail.com>
To: Brian Michelson <brian.michelson@students.uni-freiburg.de>
Content-Type: multipart/alternative; boundary="0000000000003537e405e28410bd"
Subject: Re: [Spice-devel] Spice HTML 5 problems
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--0000000000003537e405e28410bd
Content-Type: text/plain; charset="UTF-8"

Hi,

Il giorno mar 28 giu 2022 alle ore 16:25 Brian Michelson <
brian.michelson@students.uni-freiburg.de> ha scritto:

> Hello dear spice team,
>
> we have a problem with connection via your html 5 client.
>
> We set a spice server in qemu and the connection via virt manager
> works, both locally and from outside.
> Now we started the websockify server and pointed the browser to the
> html client,
> but we had no success connecting yet.
>
> Our first question is, is it normal that we dont get any response in
> the debug log of the html 5 spice client.
>
> We start websockify by using: websockify 5959 10.21.9.235:5900 is this
> alright?
>
> Is this proxy running on the Qemu machine?


> In the attatchments you find will find a picture of how we connect.
>
>
From the image you are trying to connect to the same IP where Qemu
(spice-server) is listening. So I'm assuming websockify is running on the
same machine. By the way you have to connect to  the machine running
websockify. Try to check if there's no firewall between websockify and Qemu
and from your HTML client and websockify (I usually check with telnet).
Recent versions of spice-server has websocket support integrated so you
could try directly to connect to Qemu without websockify.


> Greetings from
>
> Tibor & Brian
>
>
>
>
Regards,
  Frediano

--0000000000003537e405e28410bd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div class=3D"gmail_attr">Hi,</=
div><div class=3D"gmail_attr"><br></div><div dir=3D"ltr" class=3D"gmail_att=
r">Il giorno mar 28 giu 2022 alle ore 16:25 Brian Michelson &lt;<a href=3D"=
mailto:brian.michelson@students.uni-freiburg.de">brian.michelson@students.u=
ni-freiburg.de</a>&gt; ha scritto:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">Hello dear spice team,<br>
<br>
we have a problem with connection via your html 5 client.<br>
<br>
We set a spice server in qemu and the connection via virt manager<br>
works, both locally and from outside.<br>
Now we started the websockify server and pointed the browser to the<br>
html client,<br>
but we had no success connecting yet.<br>
<br>
Our first question is, is it normal that we dont get any response in<br>
the debug log of the html 5 spice client.<br>
<br>
We start websockify by using: websockify 5959 <a href=3D"http://10.21.9.235=
:5900" rel=3D"noreferrer" target=3D"_blank">10.21.9.235:5900</a> is this<br=
>
alright?<br>
<br></blockquote><div>Is this proxy running on the Qemu machine?<br></div><=
div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
In the attatchments you find will find a picture of how we connect.<br>
<br></blockquote><div><br></div><div>From the image you are trying to conne=
ct to the same IP where Qemu (spice-server) is listening. So I&#39;m assumi=
ng websockify is running on the same machine. By the way you have to connec=
t to=C2=A0 the machine running websockify. Try to check if there&#39;s no f=
irewall between websockify and Qemu and from your HTML client and websockif=
y (I usually check with telnet).</div><div>Recent versions of spice-server =
has websocket support integrated so you could try directly to connect to Qe=
mu without websockify.<br></div><div>=C2=A0</div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">
Greetings from<br>
<br>
Tibor &amp; Brian<br>
<br>
<br>
<br></blockquote><div><br></div><div>Regards,</div><div>=C2=A0 Frediano</di=
v><div>=C2=A0<br></div></div></div>

--0000000000003537e405e28410bd--
