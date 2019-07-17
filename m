Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5816E6C200
	for <lists+spice-devel@lfdr.de>; Wed, 17 Jul 2019 22:14:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2A896E2A2;
	Wed, 17 Jul 2019 20:14:56 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-io1-xd35.google.com (mail-io1-xd35.google.com
 [IPv6:2607:f8b0:4864:20::d35])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8A786E296
 for <spice-devel@lists.freedesktop.org>; Wed, 17 Jul 2019 18:28:24 +0000 (UTC)
Received: by mail-io1-xd35.google.com with SMTP id q22so47320410iog.4
 for <spice-devel@lists.freedesktop.org>; Wed, 17 Jul 2019 11:28:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=g4M8tM3kpoSLRZT8GeaBnmW8fbXsoOtzCY1sKDpU6yI=;
 b=Pb0avZ7+VKecwL4Bqma4wwmhIShnLogFWFMFksYDP5cvAmRlU5FEY5XGm+o2yx0A+K
 CFJr+jcG9EzwWmIqvu9IYRiFy2db+VLPOQrOVIY3BE26RhBY0m+QqcnjcbdjjLDMZIzX
 J/wRPMy0GMyn5zrJQ2xt19oCL0X6WWt97VdaHhS0FGWJp59SIUKka/snFH7RqMpjiBN8
 a5J+xKQqphDgaP2hOHVvKWn8aEG4l56GAjvC5yC+gaGd1LXQIIKWcx1GtL7HnoPzhs9e
 VY0ZutnyqztoWZmIdUBcPdIYQlkL1pq5Lt7vUIDEIfSLgA3BV5hMD14rYRkePDjrVugN
 31Tg==
X-Gm-Message-State: APjAAAW+PVrUmjIHLnOZRMFQpAFtR5lbi3xKxWcyh0DNhk5yL9Yg+qlJ
 2q6qvVPKDbYowpR2VSNPSKm948nOdJuzhS2kCoQNLA==
X-Google-Smtp-Source: APXvYqwi4oeAWVsR5zE8om7QZtldnpeUrXxt6Vah/GhqkYnChUYAkTiAMG2FLVVOPWWvZwkxmC+GczR1vnEYockkh14=
X-Received: by 2002:a02:c615:: with SMTP id i21mr42137496jan.135.1563388103844; 
 Wed, 17 Jul 2019 11:28:23 -0700 (PDT)
MIME-Version: 1.0
From: Sagar cholakala <sagarcv.27@gmail.com>
Date: Wed, 17 Jul 2019 23:58:12 +0530
Message-ID: <CAFFEbjv4aBOqa4TptBC5S7u2RWexHfPLRHqvgwyXmV-3+UujUA@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
X-Mailman-Approved-At: Wed, 17 Jul 2019 20:14:55 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=g4M8tM3kpoSLRZT8GeaBnmW8fbXsoOtzCY1sKDpU6yI=;
 b=D0swSunFhGUoUsJ02pzg/xdBraJVbjBRfcu3HhThZOW7PD+8kxQZe9fJnP4O+j/X0c
 kiRSY75UfFXEYto6fytYNF6YG+FLy1aYE7OtI8STgCr+R1OUzoY7hvKbebLDyUF/0H6L
 aFfehVSN5FFWKJkE7j9/T0TDF5msfnOyk09UUxNqZFaEKS6tLgFB6+V+fujHMlwCx4ng
 w286xcBFh770lTObr1TyjbKOUQ+l8Hrm1b16uISS8lg4oYm2GwXIj8qBU/sCGRrV8ADQ
 w7YxM1UlPQi6hjyifj3YDUppZkZKl5Y54PyxXJqhqM3NGUOZTZZZlSbWnZL7Xuqc4KDF
 j5Nw==
Subject: [Spice-devel] Help needed with installing Spice Gtk and widget
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
Content-Type: multipart/mixed; boundary="===============1229925751=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1229925751==
Content-Type: multipart/alternative; boundary="00000000000093690d058de4a80f"

--00000000000093690d058de4a80f
Content-Type: text/plain; charset="UTF-8"

Hello there,
                       I have been going at it non stop to no avail, for
days now. I cant seem to get the spice-gtk installed and I don't know how
either. I am fairly new to Linux and to add to that, I am trying all of
this on Raspberry pi 4 to make it a thin client (where the raspbian boots
up to spice widget instead of GNOME or Raspbian GUI), asking for login
credentials for spice server. I have looked around for days now and I
desperately need help.

If I can get some guidance on how to ./configure ( like whats my PWD when I
am executing the command ./configure --prefix= ?? ) and what should my make
and make install point to.

Besides that, Should I like, put the code of the widget in the raspbian's
OS's  rclocal or superscript or in launcher.sh for what I am trying to
achieve?

I am already a big fan of spice.

Would like to accelerate its performance without any video lag on youtube
or other videos.



  Sagar Vishwanath

  M.Eng

  UBC

--00000000000093690d058de4a80f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello there,=C2=A0<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0I have been going at it non=
 stop to no avail, for days now. I cant seem to get the spice-gtk installed=
 and I don&#39;t know how either. I am fairly new to Linux and to add to th=
at, I am trying all of this on Raspberry pi 4 to make it a thin client (whe=
re the raspbian boots up to spice widget instead of GNOME or Raspbian GUI),=
 asking for login credentials for spice server. I have looked around for da=
ys now and I desperately need help.=C2=A0</div><div><br></div><div>If I can=
 get some guidance on how to ./configure ( like whats my PWD when I am exec=
uting the command ./configure --prefix=3D ?? ) and what should my make and =
make install point to.=C2=A0</div><div><br></div><div>Besides that, Should =
I like, put the code of the widget in the raspbian&#39;s OS&#39;s=C2=A0 rcl=
ocal or superscript or in launcher.sh for what I am trying to achieve?=C2=
=A0</div><div><br></div><div>I am already a big fan of spice.=C2=A0</div><d=
iv><br></div><div>Would like to accelerate its performance without any vide=
o lag on youtube or other videos.</div><div><br></div><div><br></div><div>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Sagar Vishwanath</div>=
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 M.Eng</div><div>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 UBC</div><div><br></div></=
div>

--00000000000093690d058de4a80f--

--===============1229925751==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1229925751==--
