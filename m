Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99154855D5A
	for <lists+spice-devel@lfdr.de>; Thu, 15 Feb 2024 10:05:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11E7D10E43D;
	Thu, 15 Feb 2024 09:05:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XKDVzBAb";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com
 [209.85.216.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A05410E7E6
 for <spice-devel@lists.freedesktop.org>; Wed, 14 Feb 2024 18:47:44 +0000 (UTC)
Received: by mail-pj1-f47.google.com with SMTP id
 98e67ed59e1d1-296a79e6295so75139a91.3
 for <spice-devel@lists.freedesktop.org>; Wed, 14 Feb 2024 10:47:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1707936463; x=1708541263; darn=lists.freedesktop.org;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=7NaF3nXoId0l3iSA+xIxpSP3ZJ9nNmkzB7o1V1w3PtE=;
 b=XKDVzBAbqPWkFWzqlTp7WBppYakvTkAjvBUCzyJ12tqngU3Qlq8nsr1FUQzmAUpU9L
 CfOSEMhWHwBhhyixe3GnMrQWbxGeKvJOpEmkZVcFQuBRjRAf5Si2oKdEVO29CbvRtetC
 09RZUMd8glfqZ+sczpgvkL3URTnPp852eXIBVh7xVThHXO6vNaCklgmXpYXW63T9uh9S
 0lnLHq2RDjSYqSPBgwJ6b67Pv+jPGBjvsolfMop9cn8GkWypTPpWSHu7CnLMi8Z0jpCw
 TL3ELBfwDRtLyCeixIXEezIKsIDM7L8ElyUqHnzApdd3d5g6S7hPdY6zPDacAZAAPfjQ
 FOvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707936463; x=1708541263;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=7NaF3nXoId0l3iSA+xIxpSP3ZJ9nNmkzB7o1V1w3PtE=;
 b=udegCiyjTUzPkZqIjNUfr9YsqUQZiTiMRWqGmdmq2MK1ul0yrSG0zQiCi+FpP0WlxE
 D1lnUtDhXYea4l3n+myhSjbbmY5sYgqElmDclkOTASaczMaz45L/twus6JqrDbGQUmFM
 mAQxcuLEmy+WQGoJ16jdRZyNQyeWRig0ZNh8o0bpzRprGjTZJ6zuMxpcnjikL718N/SP
 0Ww72g+Fgs4kkhiK1Syjl3uShflLUyCR72mh9bvokItRm2NX49qONxREwEd6ZzHMZzak
 LoDcTzL1o2tiWLDdfUU9heEL2yQyH6HNej7AWvAMyTy2aS7eexcjxu2baL1AGfG+5aK2
 IkTg==
X-Gm-Message-State: AOJu0Yw9YPt4JT+KVVxdak0y2UxoGuZmzsJCMq8bNzfSi96NEv9bwyTd
 XCtA4y2ZPFYY8rHiwawmyAoDZOKf5fibak5qxGAYcQM5kZEzfxZqvhTG8tYF14xK+vWz8jk4I9L
 yPC+Bha9PMUp7rMhc8Z19h3PSpTU4Ns28yM10lQ==
X-Google-Smtp-Source: AGHT+IFmsYCmG0AlGz364xl4ugM5TBHT2EpLjIHa4h7hx6Au/FSe8VvGbYsruCJ7g0U7+1SeR6dzxm1pM6zD1l8x6Ls=
X-Received: by 2002:a17:90a:df14:b0:296:a75e:d1de with SMTP id
 gp20-20020a17090adf1400b00296a75ed1demr3144646pjb.12.1707936463195; Wed, 14
 Feb 2024 10:47:43 -0800 (PST)
MIME-Version: 1.0
From: Ali Dehghan <ali.a.dehghan@gmail.com>
Date: Wed, 14 Feb 2024 22:17:07 +0330
Message-ID: <CAD2aPBCbMK2rd4CJpOatn7zE2WVPHhe9PNqSrLadUGkHUfZZCQ@mail.gmail.com>
Subject: err in dockerfile (for xspice)
To: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="00000000000030155406115bf2d6"
X-Mailman-Approved-At: Thu, 15 Feb 2024 09:05:31 +0000
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

--00000000000030155406115bf2d6
Content-Type: text/plain; charset="UTF-8"

Hey,

I followed your instructions in the page Demo of your website (
https://www.spice-space.org/demos.html) and something went wrong.

When I make a dockerfile and put your text into it

FROM fedora:latestRUN dnf install -y xorg-x11-server-XspiceEXPOSE
5900/tcpENV DISPLAY=:1.0

CMD Xspice --port 5900 --disable-ticketing $DISPLAY  > /dev/null 2>&1
&  /usr/bin/bash


, it doesn't start X server but if I run your docker image
quay.io/spice/xspice:latest, everything is ok.

I wanted to use xspice for browser isolation. When I install chrome on your
docker-image it is okay and xspice works well (but your image fedora is
outdated). When I use your suggested content in dockerfile, it fails.

Would you please check and correct dockerfile suggested, or send me the
content of quay.io/spice/xspice:latest?

---------------------------------------
   Sincerely,
   Ali Dehghan

--00000000000030155406115bf2d6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey,<div><br></div><div>I followed your instructions in th=
e page Demo of your website (<a href=3D"https://www.spice-space.org/demos.h=
tml">https://www.spice-space.org/demos.html</a>) and something went wrong.<=
/div><div><br></div><div>When I make a dockerfile and put your text into it=
=C2=A0</div><pre style=3D"box-sizing:border-box;overflow:auto;font-family:M=
enlo,Monaco,Consolas,&quot;Courier New&quot;,monospace;font-size:13px;paddi=
ng:9.5px;margin-top:0px;margin-bottom:10px;line-height:1.42857;color:rgb(51=
,51,51);word-break:break-all;background-color:rgb(245,245,245);border:1px s=
olid rgb(204,204,204);border-radius:4px"><span class=3D"gmail-k" style=3D"b=
ox-sizing:border-box;color:rgb(0,112,32);font-weight:bold">FROM</span><span=
 class=3D"gmail-w" style=3D"box-sizing:border-box;color:rgb(187,187,187)"> =
</span><span class=3D"gmail-s" style=3D"box-sizing:border-box;color:rgb(64,=
112,160)">fedora:latest</span>
<span class=3D"gmail-k" style=3D"box-sizing:border-box;color:rgb(0,112,32);=
font-weight:bold">RUN</span><span class=3D"gmail-w" style=3D"box-sizing:bor=
der-box;color:rgb(187,187,187)"> </span>dnf install -y xorg-x11-server-Xspi=
ce
<span class=3D"gmail-k" style=3D"box-sizing:border-box;color:rgb(0,112,32);=
font-weight:bold">EXPOSE</span><span class=3D"gmail-w" style=3D"box-sizing:=
border-box;color:rgb(187,187,187)"> </span><span class=3D"gmail-s" style=3D=
"box-sizing:border-box;color:rgb(64,112,160)">5900/tcp</span>
<span class=3D"gmail-k" style=3D"box-sizing:border-box;color:rgb(0,112,32);=
font-weight:bold">ENV</span><span class=3D"gmail-w" style=3D"box-sizing:bor=
der-box;color:rgb(187,187,187)"> </span><span class=3D"gmail-nv" style=3D"b=
ox-sizing:border-box;color:rgb(187,96,213)">DISPLAY</span><span class=3D"gm=
ail-o" style=3D"box-sizing:border-box;color:rgb(102,102,102)">=3D</span>:1.=
0=C2=A0</pre><pre style=3D"box-sizing:border-box;overflow:auto;font-family:=
Menlo,Monaco,Consolas,&quot;Courier New&quot;,monospace;font-size:13px;padd=
ing:9.5px;margin-top:0px;margin-bottom:10px;line-height:1.42857;color:rgb(5=
1,51,51);word-break:break-all;background-color:rgb(245,245,245);border:1px =
solid rgb(204,204,204);border-radius:4px">CMD<span class=3D"gmail-w" style=
=3D"background-color:rgb(255,255,255);box-sizing:border-box;color:rgb(187,1=
87,187)"> </span>Xspice --port <span class=3D"gmail-m" style=3D"background-=
color:rgb(255,255,255);box-sizing:border-box;color:rgb(32,128,80)">5900</sp=
an> --disable-ticketing <span class=3D"gmail-nv" style=3D"background-color:=
rgb(255,255,255);box-sizing:border-box;color:rgb(187,96,213)">$DISPLAY</spa=
n>  &gt; /dev/null <span class=3D"gmail-m" style=3D"background-color:rgb(25=
5,255,255);box-sizing:border-box;color:rgb(32,128,80)">2</span>&gt;<span cl=
ass=3D"gmail-p" style=3D"background-color:rgb(255,255,255);box-sizing:borde=
r-box">&amp;</span><span class=3D"gmail-m" style=3D"background-color:rgb(25=
5,255,255);box-sizing:border-box;color:rgb(32,128,80)">1</span> <span class=
=3D"gmail-p" style=3D"background-color:rgb(255,255,255);box-sizing:border-b=
ox">&amp;</span>  /usr/bin/bash</pre><div><br></div><div>, it doesn&#39;t s=
tart X server but if I run your docker image=C2=A0<span style=3D"background=
-color:rgb(245,245,245);color:rgb(51,51,51);font-family:Menlo,Monaco,Consol=
as,&quot;Courier New&quot;,monospace;font-size:13px"><a href=3D"http://quay=
.io/spice/xspice:latest">quay.io/spice/xspice:latest</a>, everything is ok.=
</span></div><div><br></div><div>I wanted to use xspice for browser isolati=
on. When I install chrome on your docker-image it is okay and xspice works =
well (but your image fedora is outdated). When I use your suggested content=
 in dockerfile, it fails.</div><div><br></div><div>Would you please check a=
nd correct dockerfile suggested, or send me the content of=C2=A0<span style=
=3D"background-color:rgb(245,245,245);color:rgb(51,51,51);font-family:Menlo=
,Monaco,Consolas,&quot;Courier New&quot;,monospace;font-size:13px"><a href=
=3D"http://quay.io/spice/xspice:latest">quay.io/spice/xspice:latest</a>?</s=
pan></div><div><br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_signa=
ture" data-smartmail=3D"gmail_signature">----------------------------------=
-----<br>=C2=A0=C2=A0 Sincerely,<br>=C2=A0=C2=A0 Ali Dehghan <br><br></div>=
</div></div></div>

--00000000000030155406115bf2d6--
