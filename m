Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE363088CC
	for <lists+spice-devel@lfdr.de>; Fri, 29 Jan 2021 13:04:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51AAE6EADF;
	Fri, 29 Jan 2021 12:03:59 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com
 [IPv6:2607:f8b0:4864:20::42b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1643F6EADF
 for <spice-devel@lists.freedesktop.org>; Fri, 29 Jan 2021 12:03:58 +0000 (UTC)
Received: by mail-pf1-x42b.google.com with SMTP id e19so6102095pfh.6
 for <spice-devel@lists.freedesktop.org>; Fri, 29 Jan 2021 04:03:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=S2Gk8dtn4hRMLDPhDIuT7HVEp5kRdzZeopjDcqdlWl4=;
 b=H99uDnjhPccEk9Fl56fBrHpp0ZwKzUC2Rye/QLFCUnklWdHKhFe7RCK6tSRGETx1mM
 nvV/TFUr6NZsMq4aGCZ32FSzkc9KPlKjH+1QatYBwfZT6oU1XZM7ZzGmotdfpU7pDluX
 7nD6GQ2/QPqPv3tiFBVgBSY5ZFtPw8HZMZZcHlnKVDslOx+T8mNit5S2Cg+roY3pHShb
 JB734OhyaqdvZ9lJmtNjGklg8m6Y6Z+2xH1a7U98rgmC60blFQMXZS5cjL6Tfbi3jOI+
 MvhSZ89kgYfPJsaGMmr4xt2rUZzUK+LMZnQkFqwLDQ+Anwj/oGNDlbYBQVYULYknYIXp
 3aGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=S2Gk8dtn4hRMLDPhDIuT7HVEp5kRdzZeopjDcqdlWl4=;
 b=Yttzj3A0QZSbsMVvJfxxLki+zj8JVT2D0YCa7O7+wZkgnp9Kv6VS84M7wWO/uykc8S
 z16/jTYYkx67IRQxb9Q1DmRlWRB9v2Tq05xUJMrupDD41gzLEXMlee9vTqoCEx+sMv3S
 3N0u6CR6bzrNVRCGneHm3jQrtPtYXSsPEPb2GocexmKoSyST+EBZJ7ghoJgl/hWNU5V1
 Cb6/bhtB53U3CNSKYJHUlEQzKEcLCGrjTjRKdyuHB1KysubHbBu54tEiS+DwqJyeWEh3
 es9F8IJ84F04olerN8M1WzDrEecTdfpXf+0OGfEXcJtB3z21PUaypQG9zEwILilyU0Ui
 so0g==
X-Gm-Message-State: AOAM530uhCO7tZjfSWFF53i9hCzzUAmO+lgS+HyV6Zjj//Ufxjh4F5Pn
 /cTqR1iaM6PsRasroyoiQjA3e2r5KshrwsGjEkUOxtWw9wY=
X-Google-Smtp-Source: ABdhPJxruGq02x3P88ikqePXEl5aabbsOHHRqfJPCHHTgaZtzdp5RZmBjwmsPGG4JTNAEIDMfaNfCEajEPbMWD75enc=
X-Received: by 2002:a63:4d41:: with SMTP id n1mr4423789pgl.147.1611921837753; 
 Fri, 29 Jan 2021 04:03:57 -0800 (PST)
MIME-Version: 1.0
References: <AS8P190MB12557CD1CE3EEA6D1D1AA2778FBA9@AS8P190MB1255.EURP190.PROD.OUTLOOK.COM>
In-Reply-To: <AS8P190MB12557CD1CE3EEA6D1D1AA2778FBA9@AS8P190MB1255.EURP190.PROD.OUTLOOK.COM>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Fri, 29 Jan 2021 12:03:46 +0000
Message-ID: <CAHt6W4frkGHL1TYR0LPOPALbhG5O1mTTcJB1v2PZqtREr1GoUQ@mail.gmail.com>
To: alireza kahdoyee <alireza.kahdooee@hotmail.com>
Subject: Re: [Spice-devel] Activate the spice console password when vm is on
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
Content-Type: multipart/mixed; boundary="===============1541095572=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1541095572==
Content-Type: multipart/alternative; boundary="0000000000008b8abf05ba08ccfb"

--0000000000008b8abf05ba08ccfb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Il giorno gio 28 gen 2021 alle ore 07:18 alireza kahdoyee <
alireza.kahdooee@hotmail.com> ha scritto:

> Hello to all
>
> Dear friends, is it possible to activate and set a password for its spice
> console when vm is on?
>
> thank you =F0=9F=99=82
>

Hi,
  I think so, it's the way RHV works, it sets a password/token when you
click to connect to the VM.
I suppose it's done using the Qemu monitoring interface.

Regards,
  Frediano

--0000000000008b8abf05ba08ccfb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">Il giorno gio 28 gen 2021 alle ore 07:18 alireza kahdoyee &lt;<a hre=
f=3D"mailto:alireza.kahdooee@hotmail.com">alireza.kahdooee@hotmail.com</a>&=
gt; ha scritto:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Hello to all</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Dear friends, is it possible to activate and set a password for its spice c=
onsole when vm is on?</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
thank you <span id=3D"gmail-m_6687506067797770409=F0=9F=99=82">=F0=9F=99=82=
</span><br></div></div></blockquote><div><br></div><div>Hi,</div><div>=C2=
=A0 I think so, it&#39;s the way RHV works, it sets a password/token when y=
ou click to connect to the VM.</div><div>I suppose it&#39;s done using the =
Qemu monitoring interface.<br></div><div><br></div><div>Regards,<br></div><=
div>=C2=A0 Frediano</div><div> <br></div></div></div>

--0000000000008b8abf05ba08ccfb--

--===============1541095572==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1541095572==--
