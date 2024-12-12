Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E034C9EFCE7
	for <lists+spice-devel@lfdr.de>; Thu, 12 Dec 2024 21:01:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C526A10EE86;
	Thu, 12 Dec 2024 20:01:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="biU27wrB";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com
 [IPv6:2607:f8b0:4864:20::b33])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB0EB10EE81
 for <spice-devel@lists.freedesktop.org>; Thu, 12 Dec 2024 20:01:44 +0000 (UTC)
Received: by mail-yb1-xb33.google.com with SMTP id
 3f1490d57ef6-e387ad7abdaso749331276.0
 for <spice-devel@lists.freedesktop.org>; Thu, 12 Dec 2024 12:01:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1734033704; x=1734638504; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=B3MTufdo3N6B4BtpWumGigppTN6IZRND+Z0N22eXwlI=;
 b=biU27wrBLppMpuVqTZaAB7P0oXfn5v4nGMyZvsZd+6o5BFF3hPolN+e4TpD1TjGi/e
 yigtdyYd2TgwACPcXXbKDWJC/7yQBLSTE2DZbLJB0qOmkIuU2QuySod0y1zQTR9bPy0n
 RPldblLO2GuO02CngYGCkNE3EOj6pb9Hx2AdaAkHgwaUM2M0Be2xGEB8yQPDKshZRjoh
 HV7+5PtvjE5Ta4qPUDjHFdYjXBY/DFEBFsM+6kl3V0CulExINvI2+qw6mNn+g3bgzeTQ
 pbs4lSrU6OHcWcdOZFD+sHhTfWxzC0LQniliVj+Tp98m0tRGdMuQCRS9Lta5f/L95MAF
 NENw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734033704; x=1734638504;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=B3MTufdo3N6B4BtpWumGigppTN6IZRND+Z0N22eXwlI=;
 b=EndGPKVyz3+do+ryuYMEAa16nhUQCbbaQxzQj4FxTXxhFhaRAbuS4gcd7Ayn5tvd0J
 z3uuGnrGcJK42bd3EZ86ErJ5kExd2tUaMowDXmht+/1cje3H+RE0RQDXT4Tsg38dBXLg
 6IF+Fz/84ayPTdTOxNKcZ8QoRktVdbQGN0FB8MRf9IaAjU70f9gkIQEOd6oEAmklrmNI
 Wf77DzBuQOLzvgq577/2wUS7Gnr6rIpYfqZu5DvM5ExI+y1XoUY0mydMqOj048ccgJ8Y
 /2UJ31ta9xtiQyhEHOyIDIPS+xcbD9a0/hxAMKmE1EDQDhw5/kRg1kvwGagGHj2pXErF
 q3qg==
X-Gm-Message-State: AOJu0YyhldRaxW6N/ZqXMPI+uy6+qkB4UjgCpHsgbZaGpsxO/8dzfQov
 cN6tSbwh+9Wcp9PVO0AVHgwal7wWduPi42+syqKoBVdZtxfmW+T+xExkNdNhldFDKngao1S4OX8
 yz3Y3BwNA/4eKRRBCUGLuOwopXi0=
X-Gm-Gg: ASbGncv+/n8Gmd1lo1kJ9+d86txOZE42noGYsCU3UZVbgz7vLPASZ+AKqJAq1sAirjw
 Zgq3HoFoY1GJDYsglG39GjYEIo9yaRGzF/NoR3A==
X-Google-Smtp-Source: AGHT+IHxrGVuJ1PgVRMRPw7WtgqhzW3tbOrXRlNLLe2HDpOf79mr5EvMZnRRm7wfP+g9v4csSqlPg1CT1bEI+TWoJgY=
X-Received: by 2002:a05:690c:6112:b0:6ef:827b:2442 with SMTP id
 00721157ae682-6f279b8cf72mr193907b3.35.1734033703737; Thu, 12 Dec 2024
 12:01:43 -0800 (PST)
MIME-Version: 1.0
References: <tencent_FB9EB366B8349FEFBB374CD9D809B33D6607@qq.com>
In-Reply-To: <tencent_FB9EB366B8349FEFBB374CD9D809B33D6607@qq.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Thu, 12 Dec 2024 20:01:32 +0000
Message-ID: <CAHt6W4fvyuwAX5CXRfjS7HE2z4s6xyV2j1pGiRhTJbAtK3n-zg@mail.gmail.com>
Subject: Re: Does SPICE support net printer redirect?
To: peter <522740662@qq.com>
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: multipart/alternative; boundary="000000000000f0a00b0629182ef1"
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

--000000000000f0a00b0629182ef1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 11, 2024 at 8:35=E2=80=AFAM peter <522740662@qq.com> wrote:

> Hi:
>     I did spice develop in qemu-kvm, when i want to use net printer in
> guest host i encounter difficulties. how to redirect net printer to guest
> host?
>     I saw spice no this feature.
>     please give me help, thanks!
> ------------------------------
> peter
> 522740662@qq.com
>
> <https://wx.mail.qq.com/home/index?t=3Dreadmail_businesscard_midpage&noch=
eck=3Dtrue&name=3Dpeter&icon=3Dhttp%3A%2F%2Fthirdqq.qlogo.cn%2Fg%3Fb%3Dsdk%=
26k%3DjNNd3A2LgdJlia1icr30EOlQ%26s%3D100%26t%3D1555934948%3Frand%3D16425861=
77&mail=3D522740662%40qq.com&code=3D>
>
>

There's no such support. If the printer is usb you can use usb redirection.

Frediano

--000000000000f0a00b0629182ef1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote gmail_quote_container"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Dec 11, 2024 at 8:35=E2=80=AFAM peter=
 &lt;<a href=3D"mailto:522740662@qq.com">522740662@qq.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>Hi:</div><div=
>=C2=A0 =C2=A0 I did spice develop in qemu-kvm, when i want to use net prin=
ter in guest host i encounter difficulties. how to redirect net printer to =
guest host?<span style=3D"background-color:rgb(238,240,242);color:rgb(46,48=
,51);font-family:Arial,&quot;Microsoft YaHei&quot;,=E5=BE=AE=E8=BD=AF=E9=9B=
=85=E9=BB=91,=E5=AE=8B=E4=BD=93,&quot;Malgun Gothic&quot;,Meiryo,sans-serif=
;font-size:12px"></span></div><div>=C2=A0 =C2=A0 I saw spice no this featur=
e.</div><div>=C2=A0 =C2=A0 please give me help, thanks!</div><div><hr align=
=3D"left" style=3D"margin:0px 0px 10px;border-width:0px 0px 1px;border-styl=
e:none none solid;border-color:currentcolor currentcolor rgb(228,229,230);h=
eight:0px;line-height:0;font-size:0px;padding:20px 0px 0px;width:50px"><div=
 style=3D"font-size:14px;font-family:Verdana;color:rgb(0,0,0)"><a id=3D"m_-=
3895911894682156029in_alias" style=3D"white-space:normal;display:inline-blo=
ck;text-decoration:none;font-family:-apple-system,BlinkMacSystemFont,PingFa=
ng SC,Microsoft YaHei" href=3D"https://wx.mail.qq.com/home/index?t=3Dreadma=
il_businesscard_midpage&amp;nocheck=3Dtrue&amp;name=3Dpeter&amp;icon=3Dhttp=
%3A%2F%2Fthirdqq.qlogo.cn%2Fg%3Fb%3Dsdk%26k%3DjNNd3A2LgdJlia1icr30EOlQ%26s%=
3D100%26t%3D1555934948%3Frand%3D1642586177&amp;mail=3D522740662%40qq.com&am=
p;code=3D" target=3D"_blank"><table style=3D"white-space:normal;table-layou=
t:fixed;padding-right:20px" cellpadding=3D"0" cellspacing=3D"0"><tbody><tr =
valign=3D"top"><td style=3D"width:40px;min-width:40px;padding-top:10px"><di=
v style=3D"width:38px;height:38px;border:1px solid rgb(255,255,255);border-=
radius:50%;margin:0px;vertical-align:top"><img src=3D"http://thirdqq.qlogo.=
cn/g?b=3Dsdk&amp;k=3DjNNd3A2LgdJlia1icr30EOlQ&amp;s=3D100&amp;t=3D155593494=
8?rand=3D1642586177" style=3D"width: 100%; height: 100%; border-radius: 50%=
;"></div></td><td style=3D"padding:10px 0px 8px 10px"><div style=3D"font-si=
ze:14px;color:rgb(51,49,46);line-height:20px;padding-bottom:2px;margin:0px;=
font-weight:500">peter</div><div style=3D"font-size:12px;color:rgb(153,152,=
150);line-height:18px;margin:0px">522740662@qq.com</div></td></tr></tbody><=
/table></a></div></div><div>=C2=A0</div></blockquote><div><br></div><div>Th=
ere&#39;s no such support. If the printer is usb you can use usb redirectio=
n.</div><div><br></div><div>Frediano</div><div>=C2=A0<br></div></div></div>

--000000000000f0a00b0629182ef1--
