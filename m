Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25AE54A2D89
	for <lists+spice-devel@lfdr.de>; Sat, 29 Jan 2022 10:54:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81FFB10F50A;
	Sat, 29 Jan 2022 09:54:00 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com
 [IPv6:2607:f8b0:4864:20::102a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5736D10F50A
 for <spice-devel@lists.freedesktop.org>; Sat, 29 Jan 2022 09:53:59 +0000 (UTC)
Received: by mail-pj1-x102a.google.com with SMTP id
 h20-20020a17090adb9400b001b518bf99ffso13266916pjv.1
 for <spice-devel@lists.freedesktop.org>; Sat, 29 Jan 2022 01:53:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DdoLp9HIN3wQW3x68Kdctz4EgOTu7xOzziX67pdOrEQ=;
 b=pYF3pBm9rUWF7fH9iuEd/UHhqJ6ZUMVjSuC2VkvXDP3YUEsxgfETdb+6edDE0TpS6C
 B75vh+qyd00nLWWY2/xLq8G55QAFSTwGizd8QbjoJod4AyuYHSsj1QbrHr6AgWRWMR3t
 aEzq+Wjxg9S1rSOjaWpw2SOi+O6bPz1RM731gBrqt9UoTsL4rqCpVZgSbP76DS27xsVH
 03mMSJylJ7ARVXPSabIWhuNmW4k5D8Bx8F3kKyq2vh5ygHDWA90LScktuT5ba6FyTrm/
 w94i5Z4z6nNadil84ePTZypz7k3BjAyZ2nNmeKJ9dGcn0K6UkVOLUvTaksGJjHTQEB/l
 0e4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DdoLp9HIN3wQW3x68Kdctz4EgOTu7xOzziX67pdOrEQ=;
 b=ukfZrix+CsFGbe7PkyOwaKEDsmway5MAcP6u+DcE8mgoJCjHcHuIVql6esy12kJm9O
 xQHltjFp+jnAWUHZY0cDRvTNhLkohPCvrTJfP3UTFeg4CPIp4n7SxR3AZjM8eGUE1iVi
 hhLRwsp6RdiRli+RTiVEZUzsxBk8S8KMEthHEdailtzlMiofIchkhKEv+jVQS2HB8TDZ
 LvfoC4wFKQU+iq8wyjPqkgNFeEgqOMIMYLk69ADKvIpLDnrs44fAgxRrIhlmHrl/E7wh
 nzKV7kU/qWudnKbRTHYTgjmku5Zj+TMJtoUoo2U3rB+B+TlFgOkGsRDXgzQpRWajgK4y
 VJ/A==
X-Gm-Message-State: AOAM533wDSp7GqCwl2Wx46pVSzTfv6AYz/qMwvdxj1hEzzAQIe5vxkku
 WB+dBexOF/chASp9Jpv0m5xKsrdYPOsj3WSO0tc=
X-Google-Smtp-Source: ABdhPJyIFeMnfVVWi1AVc6HQjTPUqHrjL6U+hc4kt2x8thmGFpIgq+zq27KLqN03nusZ6ItLpiLbgKyplZfo12nhW6Y=
X-Received: by 2002:a17:90b:4c46:: with SMTP id
 np6mr14252434pjb.197.1643450038850; 
 Sat, 29 Jan 2022 01:53:58 -0800 (PST)
MIME-Version: 1.0
References: <CANkOWoyorOVg6GfqN=LJSqY=Km7TYo686T+PSWpXKTvi2TAz4g@mail.gmail.com>
In-Reply-To: <CANkOWoyorOVg6GfqN=LJSqY=Km7TYo686T+PSWpXKTvi2TAz4g@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Sat, 29 Jan 2022 09:53:47 +0000
Message-ID: <CAHt6W4fLEDCKDDoF4aRT9199cY3v+mxBp10Ax9+fKpwpoc-rGA@mail.gmail.com>
To: Neal Piche <phirestalker@gmail.com>
Content-Type: multipart/alternative; boundary="000000000000c5989405d6b58764"
Subject: Re: [Spice-devel] Following audio device changes
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

--000000000000c5989405d6b58764
Content-Type: text/plain; charset="UTF-8"

Hi Neal,
   what is the exact environment? Is it everything local and are you using
the default Qemu interface? Or are you running Qemu and attacking with
spice-gtk, remote-viewer, virt-manager or any other remote desktop
application? If I understood correctly the desktop application, running on
Mac, is not following the system changes to the audio output device, right?
So for instance you attach an external bluetooth speaker to your Mac, set
the output to the bluetooth speaker, all applications are now using the
bluetooth speaker beside the spice desktop application.

Regards,
  Frediano


Il giorno sab 29 gen 2022 alle ore 05:32 Neal Piche <phirestalker@gmail.com>
ha scritto:

> I am on macOS. Most applications are able to accept changes to the audio
> device from the system and output sound to that device.
>
> I use QEMU, and if I leave spice extensions disabled, the guest OS is able
> to accept changes to the audio device multiple times. When I turn on spice
> extensions, QEMU will try to continue outputting sound to the original
> device. No matter what I change the output device to, it will keep whatever
> it had originally. I don't know if it is QEMU using spice incorrectly, a
> misconfiguration, or a bug in one of the spice packages.
>
> Oh, I have tried with a Debian bullseye and Whonix guest with the same
> results.
>
> Has anyone found a workaround? Should I file a bug, and if so where?
>

--000000000000c5989405d6b58764
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Neal,</div><div>=C2=A0=C2=A0 what is the exact env=
ironment? Is it everything local and are you using the default Qemu interfa=
ce? Or are you running Qemu and attacking with spice-gtk, remote-viewer, vi=
rt-manager or any other remote desktop application? If I understood correct=
ly the desktop application, running on Mac, is not following the system cha=
nges to the audio output device, right? So for instance you attach an exter=
nal bluetooth speaker to your Mac, set the output to the bluetooth speaker,=
 all applications are now using the bluetooth speaker beside the spice desk=
top application.<br></div><div><br></div><div>Regards,<br></div><div><div><=
div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature=
"><div dir=3D"ltr">=C2=A0 Frediano</div></div></div><br></div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il giorno sab=
 29 gen 2022 alle ore 05:32 Neal Piche &lt;<a href=3D"mailto:phirestalker@g=
mail.com">phirestalker@gmail.com</a>&gt; ha scritto:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_d=
efault" style=3D"font-size:large">I am on macOS. Most applications are able=
 to accept changes to the audio device from the system and output sound to =
that device.</div><div class=3D"gmail_default" style=3D"font-size:large"><b=
r></div><div class=3D"gmail_default" style=3D"font-size:large">I use QEMU, =
and if I leave spice extensions disabled, the guest OS is able to accept ch=
anges to the audio device multiple times. When I turn on spice extensions, =
QEMU will try to continue outputting sound to the original device. No matte=
r what I change the output device to, it will keep whatever it had original=
ly. I don&#39;t know if it is QEMU using spice incorrectly, a misconfigurat=
ion, or a bug in one of the spice packages.</div><div class=3D"gmail_defaul=
t" style=3D"font-size:large"><br></div><div class=3D"gmail_default" style=
=3D"font-size:large">Oh, I have tried with a Debian bullseye and Whonix gue=
st with the same results.</div><div class=3D"gmail_default" style=3D"font-s=
ize:large"><br></div><div class=3D"gmail_default" style=3D"font-size:large"=
>Has anyone found a workaround? Should I file a bug, and if so where?</div>=
</div>
</blockquote></div>

--000000000000c5989405d6b58764--
