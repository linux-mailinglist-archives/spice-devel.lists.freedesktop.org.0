Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76EF6536765
	for <lists+spice-devel@lfdr.de>; Fri, 27 May 2022 21:17:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78EF010E03B;
	Fri, 27 May 2022 19:17:20 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com
 [IPv6:2a00:1450:4864:20::230])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C02B710E18F
 for <spice-devel@lists.freedesktop.org>; Fri, 27 May 2022 19:17:18 +0000 (UTC)
Received: by mail-lj1-x230.google.com with SMTP id q1so5906369ljb.5
 for <spice-devel@lists.freedesktop.org>; Fri, 27 May 2022 12:17:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1/8bPWOD/TJSiiMq/klPENP9cxu1Nn79E/Ea9u1z978=;
 b=mSTm7oMgPVLhyfjEOOpO5WMpuBJjI04L41sEWFJtiNIIr7W4L/n16V/cceccU0lqtp
 mbCxsU1KfJ3OtIF9R2l3ysiGi/aXpZKAyqN8LrZWEY6qSfvqWqxDvdSa9u/BnjfjD7oL
 Qmxm29DzTPPZLnvQqA47ZjCtFBn64/jEHszYLIp07Cw8Ve52M7AZocZezt6BEEX/1zUa
 7UHcG6eEfR+YNTArlWPTJ6EtAbdqT7eYGD8mBk84fwS8aVzXIPUvYpKykeyhYqFC0LkU
 rti06nppz1JcMIzBlf+dgs+9CYgvFjOR/YdgngP6RWCZIYL9FfmogDDCBrDuRO/uaLKG
 bxqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1/8bPWOD/TJSiiMq/klPENP9cxu1Nn79E/Ea9u1z978=;
 b=kdNC9Ilrpe7XPYttOUBEA9ADlokq3D9Ra86hQAo1i2l7dzbEl04PRjTjhrjE6NkjrJ
 Ve3ZzTAA52gikrDdHgH+B5ERGucurqrow/gC6VglAmH/wnBBP7Eubfjli0VWJ8e3/UZw
 WMD6NQLdT1jHx+RQMmG1qLI8D/d7LM0q3DUH6zTlVMS80udtDsr1sshsscZ6/d+cAQra
 KV8rc414kwsdajNzuKQHlkJpWN1GIAZUB2A8HtQt26dD6Ip5UBq36LOSy5bLzUnqssMk
 FN06ZDqegG5PkcGn9w6uuMcpOUCHtnOWj1d2eLJyXS4UaUTtGPLxg4Kb90wJRv54f/Hb
 rbEA==
X-Gm-Message-State: AOAM531am6dIMxSrL2wmcuAP25sx2u0GNcDNfHIPTdKv10YTAKMLaTbL
 2INRKZoyFuzMBklqE8wytCqp4mjcYkWoeaytpQ29vea0r9g=
X-Google-Smtp-Source: ABdhPJz3NJTYsKlAT4RDBX7i9NDx/O71WcT6XRYOO3w/lWaOWdiJr0TOy2B3eTbqws8/eEWDAn8MlaBU+isDYuUHb9E=
X-Received: by 2002:a2e:87ca:0:b0:253:d15e:d1bf with SMTP id
 v10-20020a2e87ca000000b00253d15ed1bfmr25155172ljj.483.1653679037003; Fri, 27
 May 2022 12:17:17 -0700 (PDT)
MIME-Version: 1.0
References: <2f8dc8de-664e-eea0-cd46-2f73bd847fb9@googlemail.com>
In-Reply-To: <2f8dc8de-664e-eea0-cd46-2f73bd847fb9@googlemail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Fri, 27 May 2022 20:17:04 +0100
Message-ID: <CAHt6W4ceEJfSdbS1oe5gB5GyUKgG8uUCTBNK5wO-XVcf+QQsww@mail.gmail.com>
To: Meurer <kbmeurer@googlemail.com>
Content-Type: multipart/alternative; boundary="00000000000092c19b05e00327c0"
Subject: Re: [Spice-devel] Spice error
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

--00000000000092c19b05e00327c0
Content-Type: text/plain; charset="UTF-8"

Il giorno ven 27 mag 2022 alle ore 12:49 Meurer <kbmeurer@googlemail.com>
ha scritto:

> Dear Spice Team
>
>
> I am using QEMU in Opensuse Tumbleweed.
>
> ALL WORKING FINE.
>
> Since today I got the error message:
>
> spice-server bug: guest stopped, ignoring
> *** buffer overflow detected ***: terminated
>
>
> Can you help?
>
>
> Kind regards
>
>
> Bernd Meurer
>
> Hi,
  did you change something yesterday?
An update maybe?

Frediano

--00000000000092c19b05e00327c0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">Il giorno ven 27 mag 2022 alle ore 12:49 Meurer &lt;<a href=3D"mailt=
o:kbmeurer@googlemail.com">kbmeurer@googlemail.com</a>&gt; ha scritto:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">Dear Spice Team<br>
<br>
<br>
I am using QEMU in Opensuse Tumbleweed.<br>
<br>
ALL WORKING FINE.<br>
<br>
Since today I got the error message:<br>
<br>
spice-server bug: guest stopped, ignoring<br>
*** buffer overflow detected ***: terminated<br>
<br>
<br>
Can you help?<br>
<br>
<br>
Kind regards<br>
<br>
<br>
Bernd Meurer<br>
<br></blockquote><div>Hi,</div><div>=C2=A0 did you change something yesterd=
ay?</div><div>An update maybe?<br></div><div><br></div><div>Frediano</div><=
div>=C2=A0<br></div></div></div>

--00000000000092c19b05e00327c0--
