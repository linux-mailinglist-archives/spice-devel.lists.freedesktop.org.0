Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA324A3013
	for <lists+spice-devel@lfdr.de>; Sat, 29 Jan 2022 15:45:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 011C810E226;
	Sat, 29 Jan 2022 14:45:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com
 [IPv6:2a00:1450:4864:20::231])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BAD610E29A
 for <spice-devel@lists.freedesktop.org>; Sat, 29 Jan 2022 14:22:00 +0000 (UTC)
Received: by mail-lj1-x231.google.com with SMTP id t7so13025155ljc.10
 for <spice-devel@lists.freedesktop.org>; Sat, 29 Jan 2022 06:22:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kkPLCOLS52/TYZPYrQsUfeaeK4txsEx7Cv9t1ajo9bo=;
 b=PlNox2dyvayhKnKhah/07QOhgl4m5aFwJCAIyHa5aBmuG5WAW0z/sB9ITfbbxu+l0L
 PYqtTbF6EgNd+V9jC6F/j6SV+PGnPH1X7b9xCuI71IJSBncsWjkvbfx+5OU4wdudRIgS
 cpdc3tFy3S9qVpp49TYuNYq4hooWamdS63uYBqyCjmcuCt6DwsLEHGQvRvGiI9nHqj9J
 yec8KYjiiobqzgALJB3TN+rgs5LSknVeKRnDinq13nd3wW4b3aYc8PxRVvOhz+/CYtT2
 bMuMbBZWkFQsXHf1ORSlS7rbtRmASOk+U7wPBFaCceJYe3upKB0Vp+Rzj/9kDMU13lNA
 XR8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kkPLCOLS52/TYZPYrQsUfeaeK4txsEx7Cv9t1ajo9bo=;
 b=iVhpMS4sl7A/zT0SuyrlmHT3GSo6myWOKGy80TkmvGZvQNGt9vHr4tY+dpmriyvbZy
 EnHYM/cIOZdBwAYYxWo7AqmOVEeFzrdvT+PZfZ5HPItifE6kcVrHC25G733L0lFCK9HO
 EG3B8S52FQm+Vrp+HnlyZ9qSmUQRmVnwOWddYTOlv0BBYxKO4p6mKE3OUpmbzE7hp6Yj
 y7VCdYJgw80cwvzu/j3t3lSFoBsjTwgA+a1Q3nJTxJf77UkL0URTbVSdW8HP4OGr70Hc
 s6LqeFD8cj+xV+pythh5L+nKJsKYqdQRs513R2U2kgtyXzXMqvoQpoiWo4piPFY0asGi
 CsVQ==
X-Gm-Message-State: AOAM532+Z3XnR82H3t2p2DgQ42fe2ZCtxHJocGJrjP35nofuDYchdIyj
 SbxFT08fHwZ9qHZAgWJJDiqo8EhinLTEtC0AWg==
X-Google-Smtp-Source: ABdhPJxUyEY1mJrfJEk+FF7onmeH8NrmrRuPUwGqK5njdOVSHOH3XOg2Sz9Xho9dEUgnnkbMGXUXehO5gsrdw2Sd/M8=
X-Received: by 2002:a2e:bd8a:: with SMTP id o10mr3537199ljq.189.1643466118397; 
 Sat, 29 Jan 2022 06:21:58 -0800 (PST)
MIME-Version: 1.0
References: <CANkOWoyorOVg6GfqN=LJSqY=Km7TYo686T+PSWpXKTvi2TAz4g@mail.gmail.com>
 <CAHt6W4fLEDCKDDoF4aRT9199cY3v+mxBp10Ax9+fKpwpoc-rGA@mail.gmail.com>
In-Reply-To: <CAHt6W4fLEDCKDDoF4aRT9199cY3v+mxBp10Ax9+fKpwpoc-rGA@mail.gmail.com>
From: Neal Piche <phirestalker@gmail.com>
Date: Sat, 29 Jan 2022 07:21:46 -0700
Message-ID: <CANkOWowXy1B=opndR15wwjhRFoKTXrQeUTh+bNcvmp+Rjv5n=Q@mail.gmail.com>
To: Frediano Ziglio <freddy77@gmail.com>
Content-Type: multipart/alternative; boundary="0000000000003001a305d6b94694"
X-Mailman-Approved-At: Sat, 29 Jan 2022 14:45:35 +0000
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

--0000000000003001a305d6b94694
Content-Type: text/plain; charset="UTF-8"

Yes, it is local, and the scenario is how you explained. I ran the QEMU
only test with QEMU installed from homebrew, but spice does not work on
that QEMU for M1 macs, so I normally use UTM. I filed a bug there, but he
is just launching QEMU as far as I can tell. Although, I don't know what
version he is using.

On Sat, Jan 29, 2022 at 2:53 AM Frediano Ziglio <freddy77@gmail.com> wrote:

> Hi Neal,
>    what is the exact environment? Is it everything local and are you using
> the default Qemu interface? Or are you running Qemu and attacking with
> spice-gtk, remote-viewer, virt-manager or any other remote desktop
> application? If I understood correctly the desktop application, running on
> Mac, is not following the system changes to the audio output device, right?
> So for instance you attach an external bluetooth speaker to your Mac, set
> the output to the bluetooth speaker, all applications are now using the
> bluetooth speaker beside the spice desktop application.
>
> Regards,
>   Frediano
>
>
> Il giorno sab 29 gen 2022 alle ore 05:32 Neal Piche <
> phirestalker@gmail.com> ha scritto:
>
>> I am on macOS. Most applications are able to accept changes to the audio
>> device from the system and output sound to that device.
>>
>> I use QEMU, and if I leave spice extensions disabled, the guest OS is
>> able to accept changes to the audio device multiple times. When I turn on
>> spice extensions, QEMU will try to continue outputting sound to the
>> original device. No matter what I change the output device to, it will keep
>> whatever it had originally. I don't know if it is QEMU using spice
>> incorrectly, a misconfiguration, or a bug in one of the spice packages.
>>
>> Oh, I have tried with a Debian bullseye and Whonix guest with the same
>> results.
>>
>> Has anyone found a workaround? Should I file a bug, and if so where?
>>
>

--0000000000003001a305d6b94694
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:large">Yes=
, it is local, and the scenario is how you explained. I ran the QEMU only t=
est with QEMU installed from homebrew, but spice does not work on that QEMU=
 for M1 macs, so I normally use UTM. I filed a bug there, but he is just la=
unching QEMU as far=C2=A0as I can tell. Although, I don&#39;t know what ver=
sion he is using.</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Sat, Jan 29, 2022 at 2:53 AM Frediano Ziglio &lt;=
<a href=3D"mailto:freddy77@gmail.com">freddy77@gmail.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><d=
iv>Hi Neal,</div><div>=C2=A0=C2=A0 what is the exact environment? Is it eve=
rything local and are you using the default Qemu interface? Or are you runn=
ing Qemu and attacking with spice-gtk, remote-viewer, virt-manager or any o=
ther remote desktop application? If I understood correctly the desktop appl=
ication, running on Mac, is not following the system changes to the audio o=
utput device, right? So for instance you attach an external bluetooth speak=
er to your Mac, set the output to the bluetooth speaker, all applications a=
re now using the bluetooth speaker beside the spice desktop application.<br=
></div><div><br></div><div>Regards,<br></div><div><div><div dir=3D"ltr"><di=
v dir=3D"ltr">=C2=A0 Frediano</div></div></div><br></div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il giorno sab 29 g=
en 2022 alle ore 05:32 Neal Piche &lt;<a href=3D"mailto:phirestalker@gmail.=
com" target=3D"_blank">phirestalker@gmail.com</a>&gt; ha scritto:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div cla=
ss=3D"gmail_default" style=3D"font-size:large">I am on macOS. Most applicat=
ions are able to accept changes to the audio device from the system and out=
put sound to that device.</div><div class=3D"gmail_default" style=3D"font-s=
ize:large"><br></div><div class=3D"gmail_default" style=3D"font-size:large"=
>I use QEMU, and if I leave spice extensions disabled, the guest OS is able=
 to accept changes to the audio device multiple times. When I turn on spice=
 extensions, QEMU will try to continue outputting sound to the original dev=
ice. No matter what I change the output device to, it will keep whatever it=
 had originally. I don&#39;t know if it is QEMU using spice incorrectly, a =
misconfiguration, or a bug in one of the spice packages.</div><div class=3D=
"gmail_default" style=3D"font-size:large"><br></div><div class=3D"gmail_def=
ault" style=3D"font-size:large">Oh, I have tried with a Debian bullseye and=
 Whonix guest with the same results.</div><div class=3D"gmail_default" styl=
e=3D"font-size:large"><br></div><div class=3D"gmail_default" style=3D"font-=
size:large">Has anyone found a workaround? Should I file a bug, and if so w=
here?</div></div>
</blockquote></div>
</blockquote></div>

--0000000000003001a305d6b94694--
