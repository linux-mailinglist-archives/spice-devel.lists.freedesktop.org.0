Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 71B7A405A5E
	for <lists+spice-devel@lfdr.de>; Thu,  9 Sep 2021 17:47:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86AC66E528;
	Thu,  9 Sep 2021 15:47:12 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com
 [IPv6:2607:f8b0:4864:20::533])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CDC16E8A8
 for <spice-devel@lists.freedesktop.org>; Thu,  9 Sep 2021 15:47:11 +0000 (UTC)
Received: by mail-pg1-x533.google.com with SMTP id w7so2163228pgk.13
 for <spice-devel@lists.freedesktop.org>; Thu, 09 Sep 2021 08:47:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8984gw3j/K7XDCAl0AHkEG+GiB61gXWQyG7kKBf6BCE=;
 b=kh33zpix8e541o76ismQl/1jtFGnvGG6Ap1dZI++Mq11LwwDkwBaWvKtdSMci0sSBJ
 LK9LqB/PJYBmitBiopOecd/DrIzU9bPJ5fxoE41MGOSXicDrQjmADGKE9ugAfgmpU7/I
 dykjmdOQ2sJfHX0/YTw7hTPU2zRdO2S2eLnZ01YLO5w8h7cUKXEN5wiH3hoSvq6ggwm4
 lnBU5PEV/b3Ur4XFDZevSgydvQVVeBXG7cWsW0uqGSy9nw2thWzLfU4i0oBBEdeMWxWe
 xfS9XF4ViIlTRGFvOtzUZV6ynHFiHj2io9Cklj56079z0O8X5YmZSdX1xfhaYIewXw0l
 bpng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8984gw3j/K7XDCAl0AHkEG+GiB61gXWQyG7kKBf6BCE=;
 b=2Phx1g2alDuTqYgw6jo3S7MjbV3qM0HYZ0gmI46t3wa6XGqC+old2m0VwN0z2IKMHo
 MYbyJr2/UPQejN84RfrAl3SBDLTZm1wW/6VHJMTAOOKXEdVBz6Z+wdlQM01RPd6hXd+F
 gjoiWqOxObJLFkAtGxiuCZtf4gFB+SHb/NzCSQ4ysjP3WOGOKIItXNeHrD9dKCexoEli
 FCZtAKPb/lzQAGAbD4HGEzjxUN1y+HOgSHIjCWg+cuB+rYqprxyvKdy67iroFA9Ca/W3
 AVXy5sC1Dww+TgpqWa1I+S0yxMAi+CqlHDEDfv81dN2fMsGuwub4joVrzsqOCbSlI7mP
 7Scg==
X-Gm-Message-State: AOAM532D1tfh0KdSU/bfyz2QlDj6CDE/5g4sJTrCAI7yzGcIprczlBbt
 TNHvYQ6DNpRRwpa6/uOW35zVuomvHx/8fnCRTsU=
X-Google-Smtp-Source: ABdhPJynA3a3jsDWRhv66k9hk66ErDo9hIKIk+lgw1qfihd9HLh+sewQWPpNktwtp39Q/NENHU60CddPLiIr2OIfTmo=
X-Received: by 2002:a63:4b24:: with SMTP id y36mr3294371pga.230.1631202430884; 
 Thu, 09 Sep 2021 08:47:10 -0700 (PDT)
MIME-Version: 1.0
References: <trinity-697d35c4-6479-4924-a2e4-20506bff949c-1631200848204@3c-app-webde-bap22>
In-Reply-To: <trinity-697d35c4-6479-4924-a2e4-20506bff949c-1631200848204@3c-app-webde-bap22>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Thu, 9 Sep 2021 16:46:59 +0100
Message-ID: <CAHt6W4dM3HBRpGEF3GrR5mXyQdLEuEfzzqGk3Ggcs87=ypMDiA@mail.gmail.com>
To: insodus@web.de
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Content-Type: multipart/alternative; boundary="00000000000073205e05cb91e90c"
Subject: Re: [Spice-devel] Has SPICE devlopment stopped?
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

--00000000000073205e05cb91e90c
Content-Type: text/plain; charset="UTF-8"

Hi,
  Red Hat decided to cut the investments for Linux desktop in general and
move more in the cloud.
As far as SPICE in Red Hat the team was shrunk and the effort is only
maintenance.
This does not mean that it cannot progress on the open source side although
surely is slowing down.

Regards,
  Frediano


Il giorno gio 9 set 2021 alle ore 16:42 <insodus@web.de> ha scritto:

> Hi,
>
> as stated in [1] SPICE has become deprecated in RHEL. Because it seems
> that SPICE was mainly devloped by Red Hat I wanted to ask if this means
> that the development has stopped.
>
>
>
> [1]
> https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/8/html/8.4_release_notes/deprecated_functionality
>

--00000000000073205e05cb91e90c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div>=C2=A0 Red Hat decided to cut the inves=
tments for Linux desktop in general and move more in the cloud.<br></div><d=
iv>As far as SPICE in Red Hat the team was shrunk and the effort is only ma=
intenance.</div><div>This does not mean that it cannot progress on the open=
 source side although surely is slowing down.<br></div><div><br></div><div>=
Regards,<br></div><div><div><div dir=3D"ltr" class=3D"gmail_signature" data=
-smartmail=3D"gmail_signature"><div dir=3D"ltr">=C2=A0 Frediano</div></div>=
</div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">Il giorno gio 9 set 2021 alle ore 16:42 &lt;<a href=3D"mail=
to:insodus@web.de">insodus@web.de</a>&gt; ha scritto:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div><div style=3D"font-family:Verdan=
a;font-size:12px"><div>Hi,</div>

<div>=C2=A0</div>

<div>as stated in [1] SPICE has become deprecated in RHEL. Because it seems=
 that SPICE was mainly devloped by Red Hat I wanted to ask if this means th=
at the development has stopped.</div>

<div>=C2=A0</div>

<div>=C2=A0</div>

<div>=C2=A0</div>

<div>[1] <a href=3D"https://access.redhat.com/documentation/en-us/red_hat_e=
nterprise_linux/8/html/8.4_release_notes/deprecated_functionality" target=
=3D"_blank">https://access.redhat.com/documentation/en-us/red_hat_enterpris=
e_linux/8/html/8.4_release_notes/deprecated_functionality</a></div></div></=
div>
</blockquote></div>

--00000000000073205e05cb91e90c--
