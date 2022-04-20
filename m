Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A69E750844C
	for <lists+spice-devel@lfdr.de>; Wed, 20 Apr 2022 10:59:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B9DA10F272;
	Wed, 20 Apr 2022 08:59:07 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6F56892CD
 for <spice-devel@lists.freedesktop.org>; Wed, 20 Apr 2022 08:59:05 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id u18so1402493eda.3
 for <spice-devel@lists.freedesktop.org>; Wed, 20 Apr 2022 01:59:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=selfip.ru; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qvVjf5ye2LJWlmI7fINgJshc4Y9906spOFxD9V4mnzE=;
 b=Wa/H/eNCJXXlPOdXxcZEGKwQf/y8fUXpY4ApYfDIp/MhGM0hoiGAviHPOMacm0E2iq
 oYmCYym5ekaybu7S7AbU43d8gOT4u4znKR+RtZDRu7HCcrZGmXFFmzEM05i76yWl9Al3
 OlicOqZemjZn/Y8vY7+ClKPxCyg0l8VhuzChs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qvVjf5ye2LJWlmI7fINgJshc4Y9906spOFxD9V4mnzE=;
 b=rudATtsUEN0WIWLkvfKBjJJLT4OHPAwNhc2k3SrdA8NJtDUtv4B+dBix4hzGbtRhTX
 gKm+GXWhOji2PJ8CHDObbWBN2DhJdMJdGQp/z/pT024AxV53kJFAkCCGJX9UUh7/8lfE
 RbHfOM/F+0y71tl+qrSFS60JdGAxhKVZjcmI4j7wD/0hD0tStKHkIcMECOyhMAlTQe19
 YRo/fE8Dgtxqej5Zy1de/836D3CsYsQy3ugXcNZRbdfxBJN6RE3AfNgkgpbb3wjoADBJ
 pBxtnKE8mfCTMbl5eKkmM/YjygrKanXHs+/sgt/Wbq9SQtf7K0I6GDH82txEjYLO43YT
 t9xQ==
X-Gm-Message-State: AOAM533VEFDB2SqzROz69gMKukduEB3Oy01VnvnbJ3IPH6yVNnNBrfMd
 TDyTsvvhdkEQcX3hTw0vSQpJJr1xHGfSKkx8rcQVEmrG4LlXsA==
X-Google-Smtp-Source: ABdhPJxe5JdqSMe3x8lvYln5BhgU7AEmLgpIl+lYSge0IRN/Qy5cHRjd1MUFKjBuCHyuFTg4jaPodQhfM6yur/vKiro=
X-Received: by 2002:aa7:d543:0:b0:416:13eb:6fec with SMTP id
 u3-20020aa7d543000000b0041613eb6fecmr22451671edr.348.1650445144146; Wed, 20
 Apr 2022 01:59:04 -0700 (PDT)
Received: from 1064022179695 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 20 Apr 2022 01:59:03 -0700
Received: from 1064022179695 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 20 Apr 2022 01:58:54 -0700
Mime-Version: 1.0 (Mimestream 0.34.2)
References: <CAMS0tn0O3=trQ=cGHDQgKYrvXs3v5RS-v0KQkDk=c-tR=9jQqg@mail.gmail.com>
In-Reply-To: <CAMS0tn0O3=trQ=cGHDQgKYrvXs3v5RS-v0KQkDk=c-tR=9jQqg@mail.gmail.com>
From: Vasiliy Tolstov <v.tolstov@selfip.ru>
Date: Wed, 20 Apr 2022 01:59:03 -0700
Message-ID: <CACaajQvqVoO+QynpnoBAbMA=LSjXyUVxcy49WkjjtjJeX9DTpA@mail.gmail.com>
To: i iordanov <iiordanov@gmail.com>
Content-Type: multipart/alternative; boundary="00000000000089d56905dd123468"
Subject: Re: [Spice-devel] New native SPICE and VNC Clients for iOS and Mac
 OS X
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--00000000000089d56905dd123468
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi! Very good news. Do you have free version available via homebrew?
--=20
Vasiliy Tolstov,
e-mail: v.tolstov@selfip.ru


=D0=9D=D0=B0 20 =D0=B0=D0=BF=D1=80. 2022 =D0=B3., 02:52:29, i iordanov <iio=
rdanov@gmail.com> =D0=BD=D0=B0=D0=BF=D0=B8=D1=81=D0=B0=D0=BB=D0=B8:

> Hello,
>
> I wanted to let you all know that I've released a new native SPICE
> (and VNC) Clients for iOS and Mac OS X written in Swift. aSPICE comes
> with console.vv and audio support. I've open-sourced them under the
> GPLv3 license and put up the source code here:
>
> https://gitlab.com/iiordanov/remote-desktop-clients-ios
>
> From the above-mentioned iOS code repository are built bVNC and aSPICE
> for iOS/Mac OS X. An RDP client for iOS called aRDP is also in the
> works.
>
> This approach to build out multiple apps from a single repository is
> similar to my Android clients bVNC and aSPICE, aRDP, and Opaque which
> you may be familiar with (code at
> https://github.com/iiordanov/remote-desktop-clients).
>
> The new apps are available at the following links if you want to try them
> out:
> aSPICE: https://apps.apple.com/ca/app/aspice-pro/id1560593107
> bVNC: https://apps.apple.com/ca/app/bvnc-pro/id1506461202
>
> I hope you find them useful!
>
> Sincerely,
> iordan
>
> --
> The conscious mind has only one thread of execution.
>

--00000000000089d56905dd123468
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><body><div dir=3D"ltr">Hi! Very good news. Do you have free version a=
vailable via homebrew?<br><div><div class=3D"gmail_signature" data-smartmai=
l=3D"gmail_signature"><div dir=3D"ltr"><div>--=C2=A0</div>Vasiliy Tolstov,<=
br>e-mail: <a href=3D"mailto:v.tolstov@selfip.ru" target=3D"_blank">v.tolst=
ov@selfip.ru</a></div></div></div><br clear=3D"all"><br>
    <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">=D0=9D=D0=B0 20 =D0=B0=D0=BF=
=D1=80. 2022=C2=A0=D0=B3., 02:52:29, i iordanov &lt;<a href=3D"mailto:iiord=
anov@gmail.com">iiordanov@gmail.com</a>&gt; =D0=BD=D0=B0=D0=BF=D0=B8=D1=81=
=D0=B0=D0=BB=D0=B8:<br></div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex" type=3D"cite">
           =20
<div>
<div>
    Hello,<br><br>I wanted to let you all know that I&#39;ve released a new=
 native SPICE<br>(and VNC) Clients for iOS and Mac OS X written in Swift. a=
SPICE comes<br>with console.vv and audio support. I&#39;ve open-sourced the=
m under the<br>GPLv3 license and put up the source code here:<br><br><a hre=
f=3D"https://gitlab.com/iiordanov/remote-desktop-clients-ios">https://gitla=
b.com/iiordanov/remote-desktop-clients-ios</a><br><br>From the above-mentio=
ned iOS code repository are built bVNC and aSPICE<br>for iOS/Mac OS X. An R=
DP client for iOS called aRDP is also in the<br>works.<br><br>This approach=
 to build out multiple apps from a single repository is<br>similar to my An=
droid clients bVNC and aSPICE, aRDP, and Opaque which<br>you may be familia=
r with (code at<br><a href=3D"https://github.com/iiordanov/remote-desktop-c=
lients">https://github.com/iiordanov/remote-desktop-clients</a>).<br><br>Th=
e new apps are available at the following links if you want to try them out=
:<br>aSPICE: <a href=3D"https://apps.apple.com/ca/app/aspice-pro/id15605931=
07">https://apps.apple.com/ca/app/aspice-pro/id1560593107</a><br>bVNC: <a h=
ref=3D"https://apps.apple.com/ca/app/bvnc-pro/id1506461202">https://apps.ap=
ple.com/ca/app/bvnc-pro/id1506461202</a><br><br>I hope you find them useful=
!<br><br>Sincerely,<br>iordan<br><br>-- <br>The conscious mind has only one=
 thread of execution.<br>
</div>
</div>
        </blockquote>
    </div>
</div></body></html>

--00000000000089d56905dd123468--
