Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D1710D27F
	for <lists+spice-devel@lfdr.de>; Fri, 29 Nov 2019 09:34:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFB166E02F;
	Fri, 29 Nov 2019 08:34:02 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-vs1-xe34.google.com (mail-vs1-xe34.google.com
 [IPv6:2607:f8b0:4864:20::e34])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39DB26E037
 for <spice-devel@lists.freedesktop.org>; Thu, 28 Nov 2019 20:18:25 +0000 (UTC)
Received: by mail-vs1-xe34.google.com with SMTP id c25so18175581vsp.0
 for <spice-devel@lists.freedesktop.org>; Thu, 28 Nov 2019 12:18:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=Lv3SD9DRXSC0l+2YL5m4kB7rlLX4YWLs0+0hgrYcmSU=;
 b=K3U+il7bb4W1DgUbO8ZeZjbKYZbfWXku2A67G0o/eeha+E+Lew5QPPRXr75nf5mInJ
 skrUgVU+wRzgjtLWI+p85A/OzgMQLZ0ydgP0jPC/xBJZXeVklxwZY6uXzDTueqkniKbp
 6+QmqANinbAoIAIU0OpKF9oo0PsYcqGPhJ0Es7G8lD1cTyEjz0CUPG9eDasV34AgoYGu
 wahMotinEhKTmgNzJw8PjNKiiyX6okULoJVb8Z9rwlwAaYI2WpGis85sQPemsLcqGXiE
 p2PTUySnE5c2E5u4ShVwRc7Zxu59knsKb0gw5JZyvwjPRy/yQXGov2Bq5E12/tecxHay
 v3Vg==
X-Gm-Message-State: APjAAAW7tHlRe9x9hlXKjkWdccZgrbZUfku2zd3grR3EAQDNbwUaSVKz
 c537WqmHvW/OY2mBb/VVRumWCWm2qoX8bj6hNnXYrMfh
X-Google-Smtp-Source: APXvYqzbVwZ+n807d8A3914Kq3gGZ00jnURQdDhfTfbs3WM+uikv6TdQAO5Mz/dP9l6u2imlx+M9mexeUG6DJ7Vv6uk=
X-Received: by 2002:a67:c88f:: with SMTP id v15mr31364466vsk.172.1574972304071; 
 Thu, 28 Nov 2019 12:18:24 -0800 (PST)
MIME-Version: 1.0
From: ra du <radu64.xyz@gmail.com>
Date: Thu, 28 Nov 2019 15:18:13 -0500
Message-ID: <CAOYDFCHuRBsrH8fPh+byyu3+Tfg5orv810w3FSOa4OW7OfLf1A@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
X-Mailman-Approved-At: Fri, 29 Nov 2019 08:34:01 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=Lv3SD9DRXSC0l+2YL5m4kB7rlLX4YWLs0+0hgrYcmSU=;
 b=BKJTrDqUVzGgLNjm231jIZQMwY27SdSxwDcAtSdo41SCE63JwgA99X+npvfOeJ7Ul2
 e4Rokacj1ujBTbRTWQxpBJfaNsH/dGsNIUjN6Ip2NkdrR1yvsfFPHXqb5oSq7EmL8rA/
 hlziP8NYBAyRnkC3jH+hiZO3FwZZsWLfhsCrYnIUv/y0KNPApv3PzHtcKmCbw+Ugb1SV
 gyqyaPDyW+BJ51/PAbnoSLq0CHVP8kcyFvv1/GiKasuID2Urt9e6wUB1uDa/e2wA/s8n
 2M/0wTvCnqVezn2zCcNbKYbfp+vDZu05FIiZ9PEscmfl6y3SnK0icG2G8yEfxr5dFgaC
 LprA==
Subject: [Spice-devel] QXL on real hardware
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
Content-Type: multipart/mixed; boundary="===============0116824620=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0116824620==
Content-Type: multipart/alternative; boundary="000000000000b722a905986dd088"

--000000000000b722a905986dd088
Content-Type: text/plain; charset="UTF-8"

Hi all,

I was wondering if it is possible to get a SPICE (QXL) extra screen on real
hardware.
The idea is to use the qxl output and stream it over network to a secondary
display.

One solution that is out there is the virtScreen:
https://github.com/kbumsik/VirtScreen
This solution uses the intel virtualoutput and VNC server, but it is not
very responsive.

While doing some tests with the x11spice server, SPICE protocol seems to be
better then vnc at remote display.

Thanks.

--000000000000b722a905986dd088
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>I was wondering if i=
t is possible to get a SPICE (QXL) extra screen on real hardware.</div><div=
>The idea is to use the qxl output and stream it over network to a secondar=
y display.</div><div><br></div><div>One solution that is out there is the v=
irtScreen: <a href=3D"https://github.com/kbumsik/VirtScreen">https://github=
.com/kbumsik/VirtScreen</a></div><div>This solution uses the intel virtualo=
utput and VNC server, but it is not very responsive.</div><div><br></div><d=
iv>While doing some tests with the x11spice server, SPICE protocol seems to=
 be better then vnc at remote display.</div><div><br></div><div>Thanks.<br>=
</div></div>

--000000000000b722a905986dd088--

--===============0116824620==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0116824620==--
