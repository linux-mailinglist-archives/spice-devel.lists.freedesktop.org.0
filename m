Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7119723FEA0
	for <lists+spice-devel@lfdr.de>; Sun,  9 Aug 2020 15:56:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C9D489F9F;
	Sun,  9 Aug 2020 13:56:17 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-io1-xd2d.google.com (mail-io1-xd2d.google.com
 [IPv6:2607:f8b0:4864:20::d2d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99E946E250
 for <spice-devel@lists.freedesktop.org>; Sat,  8 Aug 2020 19:45:24 +0000 (UTC)
Received: by mail-io1-xd2d.google.com with SMTP id z6so5186638iow.6
 for <spice-devel@lists.freedesktop.org>; Sat, 08 Aug 2020 12:45:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=clientandfuller-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=K/KRcPLisskpdxQpd/lkOdPDB9GF+1KjxBI6bARysgo=;
 b=oIb4t+nDLFg3mJAV5T+3V+CA4Cjo12KBtjYusnz1KQJV9BUEkhshGx5v7vKZLZEaVA
 BYGJVxMlErUZ8PGEhT8kNb3FZMWRohoMCDeib9f1Z9aPbJ5aJRSYVcT2e/b655ZNiF4d
 ZlJ3l8fDJeP+PsgOf7PiImSPfB8M0ye3CpcpQ+k5GUjy4tJ57jXVDJZEeQsmMrOmPLxf
 VwqEVk5FjVGr+E7x0jgUMExdcAL4SjlBwWMz9ytTb6gI8tGwh3O9Q317D/DyC/nMGmN1
 eeHp7nLcS+1uXFYGbxzqJBN02ttNg4R3fcCcf/tHmwwjChAF593axujdcSvq0LoOlSko
 bNSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=K/KRcPLisskpdxQpd/lkOdPDB9GF+1KjxBI6bARysgo=;
 b=s/4QCHo/1CDqKTjvXGjbtMKujUjtDYkbHmCQwVzxOMVj9WQ2VwuFh1ULv7J8SsoLg6
 FozPwMCFKdyQ8u8A03JyoQjITMntj6qNrFECk97DtCfMkfJN5cTMtoyY0ZGMozXesZDa
 fjvEyUf1vQlvlZwxD9Odj3eq5lO9N8jf6L00H0Vl7wsVVyK91NaFi5biC7r0Fl7/o1ig
 9PB0Meo9VauxGYX/BXtOAWoKmBNQ5DI7o1b7QyTlyDySVT7Ka+++5/44Iqnv40hLm418
 XGlDkUib4VycW3RXJX8V4KCORHG9YsAQ8BV2KfkanBC4t+sXOK70nCtQdImW3DYxuBj+
 YNsA==
X-Gm-Message-State: AOAM532wCrVk54dxH9F66dpC7EPA/Sgovy0j9eoq4QXC+dVjuMEw319M
 vY131gg2ANmyR/JiYwM6iFs8T7u5NOHbhswUfqif4VynU9/OPA==
X-Google-Smtp-Source: ABdhPJzzOguxjDrkgwX/ByXGU4AUUl3yVYtCn3WoQaTMgiycwJXiH7f5ML/v6tpomCpZDXYlcKqoreFdo/LOfH27eCU=
X-Received: by 2002:a05:6638:27a:: with SMTP id
 x26mr11340992jaq.43.1596915923624; 
 Sat, 08 Aug 2020 12:45:23 -0700 (PDT)
MIME-Version: 1.0
From: "D. L. Fuller" <dlfuller@clientandfuller.com>
Date: Sat, 8 Aug 2020 15:44:47 -0400
Message-ID: <CAHUfaU-tGwT_1evuTRZ_U9P0y-P8opcAkgBWE1NVf5Q6FsbY2A@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
X-Mailman-Approved-At: Sun, 09 Aug 2020 13:56:16 +0000
Subject: [Spice-devel] OSX Client Bundle
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
Content-Type: multipart/mixed; boundary="===============1293144950=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1293144950==
Content-Type: multipart/alternative; boundary="0000000000005d3e1505ac62f622"

--0000000000005d3e1505ac62f622
Content-Type: text/plain; charset="UTF-8"

Noob here trying to use SPICE from a Mac for a Proxmox VM.


I downloaded and installed RemoteViewer from RemoteViewer-0.5.7-1.dmg.  And
setup my Ubuntu VM for SPICE in the Proxmox Console. Then I had to download
the "download" file which I assume is not needed in this case.


RemoteViewer opens with a window requesting an URL.  Everything I try is
rejected.


What am I missing?  Any suggestions sure appreciated.


*--Don*

--0000000000005d3e1505ac62f622
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">





<p class=3D"gmail-p1" style=3D"margin:0px;font-variant-numeric:normal;font-=
variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height:no=
rmal;font-family:Georgia">Noob here trying to use SPICE from a Mac for a Pr=
oxmox VM.</p>
<p class=3D"gmail-p2" style=3D"margin:0px;font-variant-numeric:normal;font-=
variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height:no=
rmal;font-family:Georgia;min-height:15px"><br></p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-variant-numeric:normal;font-=
variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height:no=
rmal;font-family:Georgia">I downloaded and installed RemoteViewer from Remo=
teViewer-0.5.7-1.dmg.<span class=3D"gmail-Apple-converted-space">=C2=A0 </s=
pan>And setup my Ubuntu VM for SPICE in the Proxmox Console. Then I had to =
download the &quot;download&quot; file which I assume is not needed in this=
 case.</p>
<p class=3D"gmail-p2" style=3D"margin:0px;font-variant-numeric:normal;font-=
variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height:no=
rmal;font-family:Georgia;min-height:15px"><br></p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-variant-numeric:normal;font-=
variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height:no=
rmal;font-family:Georgia">RemoteViewer opens with a window requesting an UR=
L.<span class=3D"gmail-Apple-converted-space">=C2=A0 </span>Everything I tr=
y is rejected.</p>
<p class=3D"gmail-p2" style=3D"margin:0px;font-variant-numeric:normal;font-=
variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height:no=
rmal;font-family:Georgia;min-height:15px"><br></p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-variant-numeric:normal;font-=
variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height:no=
rmal;font-family:Georgia">What am I missing?<span class=3D"gmail-Apple-conv=
erted-space">=C2=A0 </span>Any suggestions sure appreciated.</p>
<p class=3D"gmail-p2" style=3D"margin:0px;font-variant-numeric:normal;font-=
variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height:no=
rmal;font-family:Georgia;min-height:15px"><br></p><p class=3D"gmail-p2" sty=
le=3D"margin:0px;font-variant-numeric:normal;font-variant-east-asian:normal=
;font-stretch:normal;font-size:13px;line-height:normal;font-family:Georgia;=
min-height:15px"><i>--Don</i></p></div>

--0000000000005d3e1505ac62f622--

--===============1293144950==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1293144950==--
