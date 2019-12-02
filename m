Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05CCA10EB11
	for <lists+spice-devel@lfdr.de>; Mon,  2 Dec 2019 14:47:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 785EC89862;
	Mon,  2 Dec 2019 13:47:45 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-vs1-xe2b.google.com (mail-vs1-xe2b.google.com
 [IPv6:2607:f8b0:4864:20::e2b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D39A6E1C0
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Dec 2019 13:05:50 +0000 (UTC)
Received: by mail-vs1-xe2b.google.com with SMTP id p21so2673569vsq.6
 for <spice-devel@lists.freedesktop.org>; Mon, 02 Dec 2019 05:05:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mM4y7pjsSraGX1qK5h2DEe5A+1EkJDmqv7X7yYxSlGk=;
 b=f0+JH8PDS026KhxEKuhSQ1tGTSNTagjKful2Xg4linjPz1Tp1vXvCdQD4NPNKUmJA9
 iNr9OlrNFAAV4rtq0XMeae/UzdZUoLhugnDudJ8x3DYjiDVzOqhYTMJ0CIfgh9IHsqeS
 YhfOfN13FRzHIZI6ED2zxz/di0+k0euKN/ahylP1tnosDt2ZcrV1CKiYfifcLhUEcf5i
 BatPUxsok7OOVd3f0x6kam/hWYB7a7kQp+CMNGTVuw/Yd1XtSsfsJTB9ir6Ax+SaB972
 JNkLxsFb96waN0yNJ3TNevSqRpqmzP2weMIKDKgsHCHAIpEeFzXzXCZQVG61ViLPfxVR
 YUMA==
X-Gm-Message-State: APjAAAW30Yh7qTtXr3FFT7nag6+tF+d2/FZNjOfEp9nuYTyl+6EK6O1b
 C2NPtA6mnZc4dTFhkI/y5byqEfPMfZYO+G5BrPCwEMCf
X-Google-Smtp-Source: APXvYqxZnb+kkG0DaXX0kTa1ol7E+wu3MTHW+vE1bVC/nx8+m41TS1xTrxIdv4WVjraLlfE46mX0PE/dH+lI4JY5d5s=
X-Received: by 2002:a67:cd83:: with SMTP id r3mr14323292vsl.46.1575291949552; 
 Mon, 02 Dec 2019 05:05:49 -0800 (PST)
MIME-Version: 1.0
References: <CAOYDFCHuRBsrH8fPh+byyu3+Tfg5orv810w3FSOa4OW7OfLf1A@mail.gmail.com>
 <1193650015.13820940.1575036502297.JavaMail.zimbra@redhat.com>
In-Reply-To: <1193650015.13820940.1575036502297.JavaMail.zimbra@redhat.com>
From: ra du <radu64.xyz@gmail.com>
Date: Mon, 2 Dec 2019 08:05:37 -0500
Message-ID: <CAOYDFCES7bm75vjbyAaL6UPo-B6RQ=0tiq6iaSQsNRW4SVrizA@mail.gmail.com>
To: Frediano Ziglio <fziglio@redhat.com>
X-Mailman-Approved-At: Mon, 02 Dec 2019 13:47:44 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=mM4y7pjsSraGX1qK5h2DEe5A+1EkJDmqv7X7yYxSlGk=;
 b=tKxPswLfbDznPXRLNXZcZLfNQThuv3DWesLFPu2+vqCvO+EMvkuHJO7Z6pYJDQAvRp
 QC02eLdQFG+A0VXpX/eZSBu/9zpS//RYrllWesoq6bKsDez5j/+lPIh2j1r/t2YvPtzJ
 JYlQEV9IfxGkuxR260J1FVixALFBDQRzhsTJBOOcZfa5SNnSUtVihIdJtOAQY+xd1KGc
 M7RSMdH+UOoxl3+pLjMXG+ZLxIcvyJgGWhGOisfDSy3+sAGbGdxFHIPPPn+jH3KG8eoi
 vdl02GN0R6bq343leIOWr6z8uXjaidhKLyBEFfJ6fe+jqJRKkEaznWd1IVnOmnQZ66NL
 Wr9Q==
Subject: Re: [Spice-devel] QXL on real hardware
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Content-Type: multipart/mixed; boundary="===============0350309106=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0350309106==
Content-Type: multipart/alternative; boundary="0000000000001217d40598b83dc0"

--0000000000001217d40598b83dc0
Content-Type: text/plain; charset="UTF-8"

Thanks for the quick answer.

The use-case i have in mind is similar to the "virtScreen" app that I
mentioned in my previous email. That link also has an animated GIF on how
it works.
I want to extend the KDEConnect app to allow users to use their mobile
device as an external screen for their laptop.
For example, when one is travelling and happens to have both a laptop and a
tablet, one can use the tablet as a second display over wifi (p2pwifi).

The new output needs to present itself to the current Xsession or whatever
display service is running, So that it can be shown as an attached screen.
To allow users to change its position orientation and all that.

I did play around with "xrandr --newmode..." and managed to use one of the
non attached outputs of the videocard as a display, but KDE display
settings tool doses not pick it up as a screen. So users can't change
anything about it.
The only solution that worked was to use the intel VIRTUAL output drivers,
but this require X11 config "hacks".
Now since I don't know if the intel virtual output works on any other video
card (I didn't test), I was thinking of QXL/spice so that it will be
hardware agnostic.

I also found this article:
https://weekly-geekly.github.io/articles/147185/index.html
But the changes it is proposing don't work.

Thanks.

On Fri, Nov 29, 2019 at 9:08 AM Frediano Ziglio <fziglio@redhat.com> wrote:

>
> > Hi all,
>
> > I was wondering if it is possible to get a SPICE (QXL) extra screen on
> real
> > hardware.
> > The idea is to use the qxl output and stream it over network to a
> secondary
> > display.
>
> > One solution that is out there is the virtScreen:
> > https://github.com/kbumsik/VirtScreen
> > This solution uses the intel virtualoutput and VNC server, but it is not
> very
> > responsive.
>
> > While doing some tests with the x11spice server, SPICE protocol seems to
> be
> > better then vnc at remote display.
>
> > Thanks.
>
> Technically no, QXL is the virtual card which is provided to VMs.
> If you want to have an additional screen added to your bare metal machine
> is not possible.
> There was a xspice project giving both a Xorg driver and an Xserver but
> has not been updated recently.
>
> I'm curious about the usage. Is it like putting the presentation on the
> second screen and being able to share it using SPICE ?
>
> Frediano
>
>

--0000000000001217d40598b83dc0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks for the quick answer.</div><div><br></div><div=
>The use-case i have in mind is similar to the &quot;virtScreen&quot; app t=
hat I mentioned in my previous email. That link also has an animated GIF on=
 how it works.<br></div><div>I want to extend the KDEConnect app to allow u=
sers to use their mobile device as an external screen for their laptop.</di=
v><div>For example, when one is travelling and happens to have both a lapto=
p and a tablet, one can use the tablet as a second display over wifi (p2pwi=
fi).</div><div><br></div><div>The new output needs to present itself to the=
 current Xsession or whatever display service is running, So that it can be=
 shown as an attached screen. To allow users to change its position orienta=
tion and all that.<br></div><div><br></div><div>I did play around with &quo=
t;xrandr --newmode...&quot; and managed to use one of the non attached outp=
uts of the videocard as a display, but KDE display settings tool doses not =
pick it up as a screen. So users can&#39;t change anything about it.<br></d=
iv><div>The only solution that worked was to use the intel VIRTUAL output d=
rivers, but this require X11 config &quot;hacks&quot;.<br></div><div>Now si=
nce I don&#39;t know if the intel virtual output works on any other video c=
ard (I didn&#39;t test), I was thinking of QXL/spice so that it will be har=
dware agnostic.</div><div><br></div><div>I also found this article: <a href=
=3D"https://weekly-geekly.github.io/articles/147185/index.html">https://wee=
kly-geekly.github.io/articles/147185/index.html</a></div><div>But the chang=
es it is proposing don&#39;t work.</div><div><br></div><div>Thanks.<br></di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Fri, Nov 29, 2019 at 9:08 AM Frediano Ziglio &lt;<a href=3D"mailto:fzi=
glio@redhat.com">fziglio@redhat.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><br>
&gt; Hi all,<br>
<br>
&gt; I was wondering if it is possible to get a SPICE (QXL) extra screen on=
 real<br>
&gt; hardware.<br>
&gt; The idea is to use the qxl output and stream it over network to a seco=
ndary<br>
&gt; display.<br>
<br>
&gt; One solution that is out there is the virtScreen:<br>
&gt; <a href=3D"https://github.com/kbumsik/VirtScreen" rel=3D"noreferrer" t=
arget=3D"_blank">https://github.com/kbumsik/VirtScreen</a><br>
&gt; This solution uses the intel virtualoutput and VNC server, but it is n=
ot very<br>
&gt; responsive.<br>
<br>
&gt; While doing some tests with the x11spice server, SPICE protocol seems =
to be<br>
&gt; better then vnc at remote display.<br>
<br>
&gt; Thanks.<br>
<br>
Technically no, QXL is the virtual card which is provided to VMs.<br>
If you want to have an additional screen added to your bare metal machine<b=
r>
is not possible.<br>
There was a xspice project giving both a Xorg driver and an Xserver but<br>
has not been updated recently.<br>
<br>
I&#39;m curious about the usage. Is it like putting the presentation on the=
<br>
second screen and being able to share it using SPICE ?<br>
<br>
Frediano<br>
<br>
</blockquote></div>

--0000000000001217d40598b83dc0--

--===============0350309106==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0350309106==--
