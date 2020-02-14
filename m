Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA20160DF7
	for <lists+spice-devel@lfdr.de>; Mon, 17 Feb 2020 10:05:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56CBE6E8C2;
	Mon, 17 Feb 2020 09:05:25 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com
 [IPv6:2a00:1450:4864:20::22d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73CF56E3CE
 for <spice-devel@lists.freedesktop.org>; Fri, 14 Feb 2020 15:07:40 +0000 (UTC)
Received: by mail-lj1-x22d.google.com with SMTP id q8so11114597ljb.2
 for <spice-devel@lists.freedesktop.org>; Fri, 14 Feb 2020 07:07:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=gx9/WsPlkzd8ObP0+Em53OsYBaqqzWeynf1pPkdS64M=;
 b=fIiEYgnAquBB7gVQsV0Fo1yfupZaROV6emUx2WI1yEKWLroY7NM1VKT0fXv3SQ9Pv+
 cOVZr8Qhr93ba39xOat0CybXJ+38NAAk/LPfKZjryuofuXjq3tTDlSlyYvGYBQrK3xac
 xgjX6CB+P3gCDbSGG+vICtaZ5BcfQX1TUpmgoIgQIHBsfvMbHBPhnKx4HS6esNp78xaE
 4L2a5Fc17kM55nhhpBcSFVpamYm4RSLq58QlhbRr1J5+q9fIWW84aV6Y930pMlR1UQMA
 DLbVtKqXWnhiAluv0xe+GnqC6tXN7co60bj9dG2nZa635nyfM6LhTph3HM6nWtIllvwf
 rYOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=gx9/WsPlkzd8ObP0+Em53OsYBaqqzWeynf1pPkdS64M=;
 b=FwxpaY5prq01eG6j3Y3YEwePmCuzz8MbW4vffHbTnrELt7px6dNF1EYjgDIXC3Qh/L
 qIrB+d54vZlzRrltju7DlKH5nhjwuHnR58vuZhw3s+icaWhHDjv/QWrE8MmvgpGSHvOM
 1Qpi2WUm9Ow8leUap6ZoXKPKZMcKK7IGYOPpbBLpR2UZUKDanJ6NKIUoo4XF6XwSGeNQ
 AX+8J+yb23cuN5kCtdioRIqcoZD6LRwsLsiKtEIylw/pA1t/zv9HVqQZ7rPO7MqP8vR0
 kRdSZLaBVqJ9tny5SzxWoGW/4Ym1Sgd35dloliFC43kqoEpCO/zydg0ddiTqkmmPNkII
 U1vQ==
X-Gm-Message-State: APjAAAV7O9evXWUnrIKOhIeVrqwLs/WtcEXN/PWOtTI1rZ3twKiHJjN3
 0fgAbZFwh+qNGkjZQP7eJDRjbw25BddR4gdXFC+dSU+a
X-Google-Smtp-Source: APXvYqy6Fdc/n7LsozU20wx3WgDlBHs6IUjtsmTptC8t8hPdPfTN1aG0F39Y3WIl3Rhsed33n4H5aK6PazF5AR1uQgw=
X-Received: by 2002:a2e:9b05:: with SMTP id u5mr2456668lji.59.1581692858455;
 Fri, 14 Feb 2020 07:07:38 -0800 (PST)
MIME-Version: 1.0
From: ucontacti ss <ucontacti2012@gmail.com>
Date: Fri, 14 Feb 2020 16:07:27 +0100
Message-ID: <CAORX2Yfi7RMZvpJEz9A4xOWTMZzne-xa6OqRHy0uMFHSHsFm1Q@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
X-Mailman-Approved-At: Mon, 17 Feb 2020 09:05:24 +0000
Subject: [Spice-devel] Spice Display Channel Capabilities
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
Content-Type: multipart/mixed; boundary="===============1440083345=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1440083345==
Content-Type: multipart/alternative; boundary="000000000000f8d95e059e8a905d"

--000000000000f8d95e059e8a905d
Content-Type: text/plain; charset="UTF-8"

Dear developers.

I have been reproducing spice protocol, (Not using spice-gtk actually). So
far I have seen some image types and most of the stream types but I was not
able to use some capabilities.
First, how to enable Glyph string,
Second, I only get one rendering message (draw_copy). I want to use full
capability of Display Channel since it is the bottle neck.
Las, for image type, how to enable JPEG, JPEG_Alpha, LZ_PLT. (The image
type request message is a subset of all image types)
Sorry for the long email.

Best wishes,
Saleh Daghigh

--000000000000f8d95e059e8a905d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Dear developers. <br></div><div><br></div><div>I have=
 been reproducing spice protocol, (Not using spice-gtk actually). So far I =
have seen some image types and most of the stream types but I was not able =
to use some capabilities.</div><div>First, how to enable Glyph string, <br>=
</div><div>Second, I only get one rendering message (draw_copy). I want to =
use full capability of Display Channel since it is the bottle neck.<br></di=
v><div>Las, for image type, how to enable JPEG, JPEG_Alpha, LZ_PLT. (The im=
age type request message is a subset of all image types)<br></div><div>Sorr=
y for the long email.</div><div><br></div><div><div><div dir=3D"ltr" class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><d=
iv><div dir=3D"ltr"><div dir=3D"ltr"><div><span style=3D"font-size:12.8px">=
Best wishes,</span><br></div>Saleh Daghigh</div></div></div></div></div></d=
iv></div></div>

--000000000000f8d95e059e8a905d--

--===============1440083345==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1440083345==--
