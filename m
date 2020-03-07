Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9681F17CD6D
	for <lists+spice-devel@lfdr.de>; Sat,  7 Mar 2020 11:05:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29A5B6E126;
	Sat,  7 Mar 2020 10:05:11 +0000 (UTC)
X-Original-To: Spice-devel@lists.freedesktop.org
Delivered-To: Spice-devel@lists.freedesktop.org
Received: from mail-vs1-xe30.google.com (mail-vs1-xe30.google.com
 [IPv6:2607:f8b0:4864:20::e30])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E7256E126
 for <Spice-devel@lists.freedesktop.org>; Sat,  7 Mar 2020 10:05:08 +0000 (UTC)
Received: by mail-vs1-xe30.google.com with SMTP id y204so3183261vsy.1
 for <Spice-devel@lists.freedesktop.org>; Sat, 07 Mar 2020 02:05:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=zoup-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/0ECV38uSOU1XbDaNMHE4Z/IM6K71LEkk6pfUuDbUlU=;
 b=aDQvtaAxBF72IeBOtdM/wembvEcUEXP/NHQE4i/65jN8bLYZOX0weqNmE9LD3aaK7T
 pGlO2WVHXFSXp4d6kAKy7MCkNp8f1nQ1+xW9mSqOqo44+CqfH0st+jZktvR7udGHAdbp
 AwHkUpE+OmZRMuJIa//d1Kh0nbmBpVlPOYaEO9k4rPg+PhYEUey7aMAxyinYALgxkTf2
 Z31aWO+O14ySm8p9vpzdBajbcysGT00/Yph9kTIRSKiFd0eBEXEkceAg3Z8TIWkQKTXI
 uhQZnMHrBquMP5gFXPqPmrype41enicVxGKNETRLCCxOWMIG8RE39qmNKOoz7A4KOAUK
 7RIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/0ECV38uSOU1XbDaNMHE4Z/IM6K71LEkk6pfUuDbUlU=;
 b=W08VT3tYO8qlilY86kaRhrxsTF5yBdhVszvIDqrW2my99qCX8KhneTqNzhXzFiyArH
 4VGr1H+4tcNEz6cewNHBDmnVPuNKp7+JscvcQ7QjrbFUJOU6q6oOJ92hyhn1jY6PaN6M
 5RbaaSqdSQgJ2SdDwqSsBspW4b4eC5JR4JF9ju/5GSbYkTlvqAOFePDbiJ7qdAf8o1WN
 jO1FbbPME0YG1wIAlob5NV0VdrUTfd8Kukz7C476i76Xxapv7e5YK2Az2IFP632EB7pQ
 kqcdOwEnHMnmix6E0OcBHmeQuLtIBVAnKUoDu5fdPeRROjLmILrxXDvKe9iHbKvR7zoK
 IzCw==
X-Gm-Message-State: ANhLgQ1bCdTWHNuacd6+AHJiYHLnvwOFeymSUZmXWvkcWyjkHo9tdcDj
 cxnFNBeKzQgvAHjYw/2XtS7Yg8JwmzZaT2eohBkPBA==
X-Google-Smtp-Source: ADFU+vvh6oE1GJAHcTRZjuO7wFxLjEtamro9ajjEjgJsW4sxhEX5sjWA5bN+mEBg2I1d9vWYCpZOAJ8wmai/Ly2JFsE=
X-Received: by 2002:a67:4c5:: with SMTP id 188mr4584880vse.43.1583575507958;
 Sat, 07 Mar 2020 02:05:07 -0800 (PST)
MIME-Version: 1.0
References: <CAOvx4-1eG6nmiAdyb+xObGj921iCq-DT0FQRPUX_Uj175OYpkA@mail.gmail.com>
 <20200307082338.fw3s5oar3rxjgbj4@wingsuit>
In-Reply-To: <20200307082338.fw3s5oar3rxjgbj4@wingsuit>
From: Armin Ranjbar <zoup@zoup.org>
Date: Sat, 7 Mar 2020 13:34:56 +0330
Message-ID: <CAOvx4-2RmjdJM1PYdPgS_qF5sqVVBW=r-cxrHrmd9ciOotYZ4w@mail.gmail.com>
To: Victor Toso <victortoso@redhat.com>
Subject: Re: [Spice-devel] USB Redirection doesn't work on Windows 10
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
Cc: Spice List <Spice-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============0507209746=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0507209746==
Content-Type: multipart/alternative; boundary="000000000000a094a205a040e7e0"

--000000000000a094a205a040e7e0
Content-Type: text/plain; charset="UTF-8"

Hi! Thanks for the reply,


On Sat, Mar 7, 2020 at 11:53 AM Victor Toso <victortoso@redhat.com> wrote:

> From your logs:
>     (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:09.266:
> ../../src/spice-session.c:280 New session (compiled from package spice-gtk
> 0.35)
>
> Are you sure you are running the 0.37 one?


ri  gir1.2-spice-client-glib-2.0         0.33-3.3+deb9u1
amd64        GObject for communicating with Spice servers
(GObject-Introspection)
ri  gir1.2-spice-client-gtk-3.0          0.33-3.3+deb9u1
amd64        GTK3 widget for SPICE clients (GObject-Introspection)
ii  libspice-client-glib-2.0-8:amd64     0.37-1
 amd64        GObject for communicating with Spice servers (runtime library)
ii  libspice-client-gtk-3.0-5:amd64      0.37-1
 amd64        GTK3 widget for SPICE clients (runtime library)
ii  libspice-server1:amd64               0.14.2-4
 amd64        Implements the server side of the SPICE protocol
ii  spice-client-glib-usb-acl-helper     0.37-1
 amd64        Helper tool to validate usb ACLs
ii  spice-client-gtk                     0.37-1
 amd64        Simple clients for interacting with SPICE servers

I think the prebuilt windows virt-viewer is built based on 0.35, correct?
so that might be the issue here.

--000000000000a094a205a040e7e0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div><div dir=3D"ltr" class=3D"gmail_sign=
ature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div>Hi! Thanks =
for the reply,</div></div></div></div><br></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Mar 7, 2020 at 11:53 AM V=
ictor Toso &lt;<a href=3D"mailto:victortoso@redhat.com">victortoso@redhat.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">From your logs:<br>
=C2=A0 =C2=A0 (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:09.266: ../../s=
rc/spice-session.c:280 New session (compiled from package spice-gtk 0.35) <=
br>
<br>
Are you sure you are running the 0.37 one?</blockquote><div><br></div><div>=
ri =C2=A0gir1.2-spice-client-glib-2.0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0.33-3.3+=
deb9u1 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 amd64=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0GObject for communicating with Spice servers (G=
Object-Introspection)<br>ri =C2=A0gir1.2-spice-client-gtk-3.0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A00.33-3.3+deb9u1 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 amd64 =C2=A0 =C2=A0 =C2=A0 =C2=A0GTK3 widget for S=
PICE clients (GObject-Introspection)<br>ii =C2=A0libspice-client-glib-2.0-8=
:amd64 =C2=A0 =C2=A0 0.37-1 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0amd64 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0GObject for communicating with Spice servers (runtime library)<br=
>ii =C2=A0libspice-client-gtk-3.0-5:amd64 =C2=A0 =C2=A0 =C2=A00.37-1 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0amd64 =C2=A0 =C2=A0 =C2=A0 =C2=A0GTK3 widget for SPICE cli=
ents (runtime library)<br>ii =C2=A0libspice-server1:amd64 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0.14.2-4 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0amd64 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0Implements the server side of the SPICE protocol<br>ii =C2=A0=
spice-client-glib-usb-acl-helper =C2=A0 =C2=A0 0.37-1 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0amd64 =C2=A0 =C2=A0 =C2=A0 =C2=A0Helper tool to validate usb ACLs<br>ii =
=C2=A0spice-client-gtk =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 0.37-1 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0amd64 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0Simple clients for interacting with SPICE servers<br></div><div><br><=
/div><div>I think the prebuilt windows virt-viewer is built based on 0.35, =
correct? so that might be the issue here.</div><div><br></div></div></div>

--000000000000a094a205a040e7e0--

--===============0507209746==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0507209746==--
