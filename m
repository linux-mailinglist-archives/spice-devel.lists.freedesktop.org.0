Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 362456322D0
	for <lists+spice-devel@lfdr.de>; Mon, 21 Nov 2022 13:47:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5938410E2C6;
	Mon, 21 Nov 2022 12:47:05 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com
 [IPv6:2607:f8b0:4864:20::232])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0743610E2C4
 for <spice-devel@lists.freedesktop.org>; Mon, 21 Nov 2022 12:47:01 +0000 (UTC)
Received: by mail-oi1-x232.google.com with SMTP id v81so12387138oie.5
 for <spice-devel@lists.freedesktop.org>; Mon, 21 Nov 2022 04:47:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=lWfDEWGMuAgv3FzZeJnjLcVNeC1oirGR1IGJYiDuoWo=;
 b=Rx04K9UKDsaZsysOGZIh7SMM7sQ5awiZYl13bVP1fXsrWDrKVkNKPnWRvZBxWhhm7A
 31NLd5tke7B+SSK6wE/1ElUvA3KUvZVAoK+4/ailjIWQzpRrTkW+6h8B35H1dlBRoBcS
 r/9AxLdirI3RCyUAvV4QnzP4WKpsOnoHHKLzS9UZUJtHx6WCq9lsmvTtM1wYBCUrFR9z
 e5dyltaljLOQB6MtzVVsyC+MXeYg4XVsX+/OhLYR/w1O3Kz5UkEfDFpZAE26jxcTyhNt
 JhHeC/pXexUZFh7WUcSfqQqkHzm8sSmGEewZstwNqG/vfAcniy/gFKWENXgYuKbOXNqY
 beaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=lWfDEWGMuAgv3FzZeJnjLcVNeC1oirGR1IGJYiDuoWo=;
 b=j9a7XbxyM7wNSni2wwfkEMxpsxujPoQ1DKH/Kh8Z214PZKJ3S7INLlkHYOcVYogbmb
 Xbl3rHhUlCuA78MB3SvOeHDMYsFr4VyU64ORUot9qeW3Mgyyn8RUOA2DV/TbbQ/kQTE6
 c3kmaeM/j8yfNJQXzTD4EGbmPhZSBQAgqEnNF0QK1WJlpiS/W0xe6g7JDrPHd6D5y66Q
 4ARPOq8hdd23/ytFziSpE4/Lj51NlaAVBHlffBq4sakEGzxp9F0qUIKtf3o2MMbdqrqj
 QIgiYJMltN03Y8cBt/6vK+gZi5kylisfCEFHmSiMQn4kPzHT4QiUoDQCi9H3PN4zz5lo
 K4IQ==
X-Gm-Message-State: ANoB5plsNzxSXokiEKPzu4NH+AQr6GLXj416rKClJFJGBkz8Je+NXpND
 FUUTG0bNpo6OuqChyPWxMl/P5W1pVYo0p4krSBo=
X-Google-Smtp-Source: AA0mqf59DI60jMFFJBlWBzST6rmWbAhZde9NxBfnK/o8hLvGNkRTfmmQVxLzJBOaCsHYs4x+Ri348/lIg7mz56zNOkM=
X-Received: by 2002:a54:4009:0:b0:35a:3bb8:da5e with SMTP id
 x9-20020a544009000000b0035a3bb8da5emr11846431oie.1.1669034820009; Mon, 21 Nov
 2022 04:47:00 -0800 (PST)
MIME-Version: 1.0
References: <3d27841837ae439d91300c2d5b7056b0@360.cn>
 <CAHt6W4fRZoR5+E3rptGzcQ9R_DfdZ3g=G2rmhqY7Y4s6ZRBx1w@mail.gmail.com>
 <4eb04086e700409e8ff9f2bc3dc18c55@360.cn>
In-Reply-To: <4eb04086e700409e8ff9f2bc3dc18c55@360.cn>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Mon, 21 Nov 2022 12:46:48 +0000
Message-ID: <CAHt6W4forb4oCc+2EvCBLpCGwtnO8MrfyysDFx0Hi6EG9bJY2g@mail.gmail.com>
To: =?UTF-8?B?6Z+p6Zuq5bOw?= <hanxuefeng@360.cn>
Content-Type: multipart/related; boundary="000000000000909abd05edfa7320"
Subject: Re: [Spice-devel] The second client cannot redirect USB
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

--000000000000909abd05edfa7320
Content-Type: multipart/alternative; boundary="000000000000909abb05edfa731f"

--000000000000909abb05edfa731f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Il giorno lun 21 nov 2022 alle ore 08:44 =E9=9F=A9=E9=9B=AA=E5=B3=B0 <hanxu=
efeng@360.cn> ha scritto:

> Hi,
>
> Thanks for your reply. But If I want to support multiple channels for USB
> redirection when multiple clients connect to a same VM,  do you know whic=
h
> project includes the code about USB channels ?   Spice ? or QEMU?
>
>
>
> Thanks and Regards,
>
> Xuefeng
>
>
Channels are a SPICE thing. But you will find surprisingly few code in
SPICE (at least the server). The reason is that SPICE in this case mostly
forwards data from/to usbredir (which is another project). In details Qemu
uses usbredir to handle a USB device for the guest. This device is attached
to spice-server which handles SPICE channels. A spice client (like
spice-gtk) connects to SPICE USB channels and forward data from either a
physical device or an emulated device (currently spice-gtk handles an
emulated CD/DVD device).
Currently each SPICE USB channel is bound to a single Qemu device (I doubt
it makes sense to bind it to multiple devices but it could in theory not be
bound to a device).
Note that spice-server currently only forward data (presented like a
pipe/stream) to/from client to the device, the hard lifting is made by
Qemu/usbredir.

Frediano


>
> *=E5=8F=91=E4=BB=B6=E4=BA=BA:* Frediano Ziglio <freddy77@gmail.com>
> *=E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4:* 2022=E5=B9=B411=E6=9C=8818=E6=97=
=A5 20:52
> *=E6=94=B6=E4=BB=B6=E4=BA=BA:* =E9=9F=A9=E9=9B=AA=E5=B3=B0 <hanxuefeng@36=
0.cn>
> *=E6=8A=84=E9=80=81:* spice-devel@lists.freedesktop.org
> *=E4=B8=BB=E9=A2=98:* Re: [Spice-devel] The second client cannot redirect=
 USB
>
>
>
> Il giorno ven 18 nov 2022 alle ore 10:21 =E9=9F=A9=E9=9B=AA=E5=B3=B0 <han=
xuefeng@360.cn> ha
> scritto:
>
> Hello,
>
>
>
>    When I used two client to connect to a same one VM by spice with
> setting =E2=80=9CSPICE_DEBUG_ALLOW_MC=3D1=E2=80=9D, the two clients worke=
d, and the first
> client could redirect USB. However, the second client could not redirect
> USB device, It shows like the picture:
>
>
>
> I=E2=80=99m sure that there=E2=80=99re enough channels for USB redirectio=
n.
>
>
>
> Is this a problem? Or Is there any way that could resolve the second clie=
nt
> =E2=80=99s USB redirection problem?
>
>
>
> Thanks and Regards,
>
>
>
> Xuefeng
>
>
>
> Currently all character device channels (including USB one) do not suppor=
t
> multiple channels, so the first client takes them all.
>
>
>
> Frediano
>

--000000000000909abb05edfa731f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">Il giorno lun 21 nov 2022 alle ore 08:44 =E9=9F=A9=E9=9B=AA=E5=B3=B0=
 &lt;<a href=3D"mailto:hanxuefeng@360.cn">hanxuefeng@360.cn</a>&gt; ha scri=
tto:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=
=3D"msg7338333656256773154">





<div lang=3D"ZH-CN">
<div class=3D"m_7338333656256773154WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:=E7=AD=
=89=E7=BA=BF" lang=3D"EN-US">Hi,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:=E7=AD=
=89=E7=BA=BF" lang=3D"EN-US">Thanks for your reply. But If I want to suppor=
t multiple channels for USB redirection when multiple clients connect to a =
same VM, =C2=A0do you know which project includes the code about
 USB channels ?=C2=A0=C2=A0 Spice ? or QEMU?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:=E7=AD=
=89=E7=BA=BF" lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks and Regards,<u></u><u></=
u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:=E7=AD=
=89=E7=BA=BF" lang=3D"EN-US">Xuefeng<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:=E7=AD=
=89=E7=BA=BF;color:rgb(31,73,125)" lang=3D"EN-US"><u></u></span></p></div><=
/div></div></blockquote><div><br></div><div>Channels are a SPICE thing. But=
 you will find surprisingly few code in SPICE (at least the server). The re=
ason is that SPICE in this case mostly forwards data from/to usbredir (whic=
h is another project). In details Qemu uses usbredir to handle a USB device=
 for the guest. This device is attached to spice-server which handles SPICE=
 channels. A spice client (like spice-gtk) connects to SPICE USB channels a=
nd forward data from either a physical device or an emulated device (curren=
tly spice-gtk handles an emulated CD/DVD device).</div><div>Currently each =
SPICE USB channel is bound to a single Qemu device (I doubt it makes sense =
to bind it to multiple devices but it could in theory not be bound to a dev=
ice).</div><div>Note that spice-server currently only forward data (present=
ed like a pipe/stream) to/from client to the device, the hard lifting is ma=
de by Qemu/usbredir.<br></div><div><br></div><div>Frediano<br></div><div><b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg=
7338333656256773154"><div lang=3D"ZH-CN"><div class=3D"m_733833365625677315=
4WordSection1"><p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-=
family:=E7=AD=89=E7=BA=BF;color:rgb(31,73,125)" lang=3D"EN-US">=C2=A0<u></u=
></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:=E7=AD=
=89=E7=BA=BF">=E5=8F=91=E4=BB=B6=E4=BA=BA<span lang=3D"EN-US">:</span></spa=
n></b><span style=3D"font-size:11pt;font-family:=E7=AD=89=E7=BA=BF" lang=3D=
"EN-US"> Frediano Ziglio &lt;<a href=3D"mailto:freddy77@gmail.com" target=
=3D"_blank">freddy77@gmail.com</a>&gt;
<br>
</span><b><span style=3D"font-size:11pt;font-family:=E7=AD=89=E7=BA=BF">=E5=
=8F=91=E9=80=81=E6=97=B6=E9=97=B4<span lang=3D"EN-US">:</span></span></b><s=
pan style=3D"font-size:11pt;font-family:=E7=AD=89=E7=BA=BF" lang=3D"EN-US">=
 2022</span><span style=3D"font-size:11pt;font-family:=E7=AD=89=E7=BA=BF">=
=E5=B9=B4<span lang=3D"EN-US">11</span>=E6=9C=88<span lang=3D"EN-US">18</sp=
an>=E6=97=A5<span lang=3D"EN-US">
 20:52<br>
</span><b>=E6=94=B6=E4=BB=B6=E4=BA=BA<span lang=3D"EN-US">:</span></b><span=
 lang=3D"EN-US"> </span>=E9=9F=A9=E9=9B=AA=E5=B3=B0<span lang=3D"EN-US"> &l=
t;<a href=3D"mailto:hanxuefeng@360.cn" target=3D"_blank">hanxuefeng@360.cn<=
/a>&gt;<br>
</span><b>=E6=8A=84=E9=80=81<span lang=3D"EN-US">:</span></b><span lang=3D"=
EN-US"> <a href=3D"mailto:spice-devel@lists.freedesktop.org" target=3D"_bla=
nk">spice-devel@lists.freedesktop.org</a><br>
</span><b>=E4=B8=BB=E9=A2=98<span lang=3D"EN-US">:</span></b><span lang=3D"=
EN-US"> Re: [Spice-devel] The second client cannot redirect USB<u></u><u></=
u></span></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<div>
<div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Il giorno ven 18 nov 2022 alle =
ore 10:21 </span>
=E9=9F=A9=E9=9B=AA=E5=B3=B0<span lang=3D"EN-US"> &lt;<a href=3D"mailto:hanx=
uefeng@360.cn" target=3D"_blank">hanxuefeng@360.cn</a>&gt; ha scritto:<u></=
u><u></u></span></p>
</div>
<blockquote style=3D"border-color:currentcolor currentcolor currentcolor rg=
b(204,204,204);border-style:none none none solid;border-width:medium medium=
 medium 1pt;padding:0cm 0cm 0cm 6pt;margin-left:4.8pt;margin-right:0cm">
<div>
<div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hello,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0 When I used two cl=
ient to connect to a same one VM by spice with setting
</span>=E2=80=9C<span lang=3D"EN-US">SPICE_DEBUG_ALLOW_MC=3D1</span>=E2=80=
=9D<span lang=3D"EN-US">, the two clients worked, and the first client coul=
d redirect USB. However, the second client could not redirect USB device, I=
t shows like the picture:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><img style=3D"width: 4.9479in; =
height: 2.6145in;" id=3D"m_7338333656256773154m_4874315976305516369=E5=9B=
=BE=E7=89=87_x0020_1" src=3D"cid:1849a2e634a4cff311" width=3D"475" height=
=3D"251" border=3D"0"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I</span>=E2=80=99<span lang=3D"=
EN-US">m sure that there</span>=E2=80=99<span lang=3D"EN-US">re enough chan=
nels for USB redirection.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Is this a problem? Or Is there =
any way that could resolve the second client</span>=E2=80=99<span lang=3D"E=
N-US">s USB redirection problem?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks and Regards,<u></u><u></=
u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Xuefeng<u></u><u></u></span></p=
>
</div>
</div>
</div>
</blockquote>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Currently all character device =
channels (including USB one) do not support multiple channels, so the first=
 client takes them all.<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Frediano <u></u><u></u></span><=
/p>
</div>
</div>
</div>
</div>
</div>

</div></blockquote></div></div>

--000000000000909abb05edfa731f--

--000000000000909abd05edfa7320
Content-Type: image/png; name="image001.png"
Content-Disposition: inline; filename="image001.png"
Content-Transfer-Encoding: base64
Content-ID: <1849a2e634a4cff311>
X-Attachment-Id: 1849a2e634a4cff311

iVBORw0KGgoAAAANSUhEUgAAAdsAAAD7CAIAAACtw6nhAAAAAXNSR0IArs4c6QAAc2dJREFUeF7t
fQd8I8X1/+6qWa6ybLn3bp995+uV6xUOjoOjE3pCCQSSEJJ/En6kF0hIgAQIBAi9HHBwcJ3rvdh3
9rmfz70XyUW2rLb7f9LK65W0q2JLtmzPfMRhrWbfvPd98968eTOzi2MfaoKMA+F6FTZc1pz+6803
P7hp055fVT1+JT4obchwutcorxhq6O48X193X05kbbXxaFU3U5/rD3xOXvz6EEObwF/W0/Gvor7g
EL/ZifHrY/r21htJI5WfFxfV27m3bqCqqb91iOQjdeSni1ZkhHH9Sqpqz/x3e/3t318r0Ohr9v3z
SvpTG1KJgBB588UvDlw0piSG0He11hTPv/1XfrVf7/r8cvj1q2NbCiLXPdFz6QtF2trsJEsdh4LY
/mjUDdZeOfLlZ7UZ8xIEph+Hqk42LP/pAxn4UE9n5ee7r2RkRMFVfU9zuSb80Ts2hwb54RRlqojj
VrTMFzu7uhQKBScDO17+yblmvFWYsjnRmL/1lk/+9sK1T/x+TpSgtvT84ar2mbEZkQkBB787tnHV
wg8PV1yb6VfdpWuvLO6XZQ2panOzcjBClJy7YEaiHFpVVx976xL+5LZrLA2pq198bX96Vjz9tbe+
RjB7/R1Ls/lw6Ozs5GPSLehQZYSAdxEAm2KszMbo+G3Q1jC9y6Jz6sQ8dckzfkVfz9fQn+uLXlGp
VAaDAW7VYhi4w+paLOqq8XBt7fmWFuf0LDWownpV5qKs/5vtt7+6D2gpe4cONvZjOCaRiJPDpFGB
IkWwX7LcL1BIuEyTXZEIVURIJaLgUEVMTIxCJpXB/6OjQvzF1m4PM/tCrKdfk5iQumpFPqkJlctM
VwZUV08cqdC737ZA7B8eLhexbiSE/hGK0JBgafO5Y2X9dIMm/ysOlMnBHZv/Nl2h+wRTzBcFBK/4
W+99KjclPS1ZhuHagp3fBESnnS+pxIR+Qlw3a96ihrKLvb2tlF+aVIwHBwW2lh/55x//9HVB84w5
c7L9Op577rm/v7N/0H3pOO8QCMxDDyoIgUmEgI3R8dugrWFOtIyCNYvmpBk7ZDKZVqutqqr65ptv
li9fnpo64913K9IfWVBHSiSNmlql6qqyG6NIf7Vkviy0s19X363h4ZyYmaG4a37sg7nB73xb/EKp
9gdr05bF+AULyYZB8SqF9vXTnZea+gxBgf11Lf8r7lHqeANkoH/fkrikMH/uhnTKYweOXaluCk5N
xepOdipWZYdj3eWHP91z9sqFA5e7sIHu5pLTZ9spcUOtcutd13VfrJLIu4s7YpbOjGuuKScxXWef
LDtDYePBXVEHaVCXnjlb3UKXDmFYysKF2dVHdg8J8e/OVJAD3abLzU1Dgclr5qbbe2H2FZ1O5yeR
cI3SbW/957slm9aoGqvIzsb+GRsfv3O5rqicipXu+s83XYN1p0urr16+uvjm2xWG1uKGHph/SJJm
LIox9kniWpQDN29dHUTEbbp+gZ+5MZ2y/mIbvign0fxN/dm/XysuPvne16cMuL7y+O7PT1dgA2os
NDk1JoQTDb1eLwEmUUEI+DIC7ACZ5pP2wjZzU5uvjER818ddZPzBBx+kI+Lf/va34976VGnQvjeA
ZPbzJnutc06mpgoqSA6EwPghMDltMDGRjpNGCv6DH/wAouPq6uoPP/zQ/ufxA3QStWSv+8mTpZpE
MCNWEQK8CEwJG6yvr7d3ucSsWbPgh3mzZyP1ex4Bn5kKeV40RBEhMCkQmGw2SHz33XdGgyEj3Trj
OSmwnhAmOSdH9usGNut4E8IqahQhMCURmNI2SECADAnwkJDRbAWbkuo2CQUqpz+uF8Yp0zfC18k2
OLsuK6qJEPA6AtPVBomUlBSvgztZGmBcMONP3fLL9F3IF08WdSM+fRCBaWaDer3B5kMEBgb6oF4m
hiX7jTKc2xjdip0nRhLUKkJgciIwzWywv7+/r7+P/bGcUNDpR3FaYnKqnJNrGyfLDo2dbjV3K46e
QpghURACnkRgWtqgXB4aJpezPxaPrOrt9SS4k5cWu1uwJ1BsiVDKePLqF3Hu+whMbxs0eWStTucv
lfq+przFIedpH8frcihl7C1lILrTEoHpaoN9doUwGo0ikWhICw+xmPbFPkGMUsbTvlMgAMYVgWlm
g+B7bQoBB/bgFLVYxH54zriqADWGEEAIIASmJwJSu0KAh4aHexmMxumJiJXUnA8lYfYXI4AQAggB
byMw7W2QIM2FmG7HGewXdpmuxv4J7S/2tgUi+tMWAWSDXKof3eOJJ3knsukK7NHIZh/FJBcUsY8Q
8FEEkA3yKIagCzkdlrAcjMmAjs1eN/bRO18CZ2ho6J133qmoqPBRS3PIVmVlpU9xfujQoW3btt1+
++01NTXjgyc8OvvChQuUL/Wo8RHc0sqUsEGvIkbA88hhu8Xp06e92szEE7fPRdh7Yc4NyPb7cjwt
TEdHxwsvvLB58+b77rvvjTfegGM8DloAfb388svwNBJ3uYDclFKpBF3b3AjXZ8+eDc9iZV8HJ/Xv
f/+bvqLRaN5777077rjjxhtv/Otf/9rQ0EBfhwdqw41QFi1adNddd7377ruDg07eWwJ13n77bXc5
B//1y1/+8pVXXnH3Rsf1u7q6nnnmGWD+4YcfjooyvYtrHMqZM2e+//3v01rYvn07/SzcMbYLFHp6
ehginiI7Rq44bveEDdJdjq94nmcuitBtYFhl/wKbI+DipUuXxs4AAa+HKLx48fPYG8dOy9cpON1i
DALQ63h01xmXNT21Wv3II4+Ul5ffe++9GzduPHbs2M9//nNvxFAQna1Zs6atrc1dNf35z3/+9NNP
N2zYAAMGeDFwvoz9Z2Rk/O9//3v11Vfh4scff/z888+7S9zF+vAkrKCgIBcru1gNRjXwjDfffPOq
Vav8/XleVeMirVFVg2X20NBQmKGO6u6Rm6DPwHjJfPcU2TFyxX27J2zwIk/xCsNcRAFtMNJz587R
P9LuGCavOTk5Y+eBgOhYlzzPkL5k7LR8nQJn6opzHY95H4z3Fzyhd9XW1v7+97+/5ZZbIDL973//
++yzz+JeaHdgYGAUCoLXnsKLvn784x+DO4YYGXzu+++/D+8Ao0mBo4Tna8+ZM+faa6+FSBNqjj3i
s2cS0AADAAZGwb+DW+CVWvCrnx/96qsJKDArgjkHbHYaY9swqLMpeIrsGLnivt0nbdBdSSFC/9vf
/vb//t//A6dMu2P4F66IxWJ3SdnXJ6p/X4L95hAmixw7LR+iwA51fYgtDlZoLTKpAHAQ0dHRdD3I
J+zevfuBBx64/vrrIVNhY3h0HUgpgBO/6aab7r777i+++IJJSkAY+89//hN86P333//VV199++23
QAfqg7lCf3I9bUqzB2MGHbaDc0xKSuJEFLiFt9Dad8rLly8/+eSTEP6D94GX6jL32ksHAi5YsACk
YOpApgKib2gaZvd/+ctfmOvHjx9/4okngCZkThobG/lwgOHhP//5D6AHRCCWZwN44sSJp59+Gm6E
sQQsCv6A8B/Gm+uuuw6mLAcPHmSmKdA0ALhjxw4AE/5leIB567x585qamn71q19BlA3+nU8XkJX6
3e9+B5MMaJGdRof1gLVr19IE7VspLi6GgXDdunVAH1rhkx1mMFBg6kOnj6Aamyx8hekXCAitw7+Q
x6fpQGYM6kM08NZbb0EmHRIpzE+cymUuupE0mDw26Fhkzl8BB+jP4JQfffRRqPDiiy96xB0DqbHO
mEYhzHjcwsSYjlcSaFYmdJll7ty5K1aseOyxx0DB8G4tNjiQvQWHAoHzr3/9a7DJP/3pTzbQgf+F
4BGyVz/96U8feughyC2A76DtDXIgYNLgtrZu3XrkyJGZM2dCE/ATOB3wTa6nTSEKBn8KeYkf/ehH
EBHYpKGhIbDkkpKSPXv2vP766zCbs4nuy8rKILaNjIyEvguRNTPRA07spYPHEN5www179+6lxYS4
Y+fOnVu2bLGh+eWXXz711FP5+fmQXIafADQ+HCCRAoCAHwR/V1paCh6TATA7Oxs8L3yF0AZ+7e3t
/d73vgeJnZ/97GcrV64EJwjZWKYyjHkgIFSARtkqgHYff/xxeDEP4A+b+h3oAijTOevDhw/z9X92
KwUFBaBQqA9Kj4uLA49JDyf2st92220wikD2A9QKixA2xEE1MFSDuqELwb933nkn4MDUAea7u7uB
OMD4i1/8gn7fpuPClzGgr1vdy2eDnA1MqA06E5r7d+gM8Chj0NStt94qFApHR4Trro+HMPOnrq4O
4oJJXEiSoj9McfEr+5aJkB8W6yAwhDgLdAzpCwhvgQsIrOArvS4PpbW1Fb6CYcM5ePgD3BZchATi
/PnzwZvQdWDnAHg0+AMCH/DyNB0oEI3Cv7CmBDeCZ7cREdwKXP/ggw/Y18HO//WvfzFX4F64AtUg
4qbjZSi/+c1v4ApTlixZAvzYEP/hD38I3pNmAAqYPbg8B9JBDo0WE+oUFRUxDIPXgEgQLkKUvXDh
QsicsBviwwE4BAYAXhuu6K+nTp1i2nrzzTchyQ6JHfoncHwALLQFf0PTEMnCoqgNkfPnz7Nx4+MB
Bh7QBWiNvv3zzz+Hu2iWYJETGqWv27QCRg6hLv0ToAfDKiiXU3aoAMzDdIFhj00WhkPAnPkJxjB4
0zF8pXsR0wS8SIizb3Di5uii920Q+ORjwMFPbgvi7AbQIMxgIOI5e/bs6tWr4V9nd3D8zuly4WiI
pXjOx/sMJb4HaTJLdl5I145CeBhgIe2wa9cumIMfPXqUXn+nEwsQKNHzxE2bNsFX9qwfvkJ8Cj0D
DJ6u85Of/ASyHxDpwLi9dOlS5r0wjrPS8CukSmziI2CAPQsDJwibMV577TWoBs6C2ekBbgsio8LC
QmAbomCIo9lr0DCRB1e+bNkyhgHmDz7pQAomlAaPCUmM2NhYNqQwHgBvcJ19kQ8HOuwFdwazB86c
D0MERFi8eDGzvpeXlwfAQlt0BTA5CEI5NXvNNdfQ1/l4gJkKUGaWJR3ogmkFhtiqqqqXXnqJViuk
6YETSOhzyu6gv8EAA/MnOpVBF9Aj9A1mSwyTH6PnTI4hGkXHNt0ySWzQLenYuWPoikxO2S0ifJWn
UNaC073adwhfPYYHS+QQ4UIkCNYI2caAgADQGaQCIAXMlLS0NLYiYZoPpg7raew64N+hx7i+Ngg1
s7KyYPbKUIagDJKzkBRmtwWzcrBtCJzBVUESlv0TUAgODoYMNWy9ADfK/ERvrIQb7Tsfn3Sw8wcc
6L59+4AHkAto2twL181mDm8iGyl8OMCkEnwxBOmQcwBsHWTPIYBh07Sh7wBM5ic+HsDNcSJgjwlD
CgZI2IABmRC2WmFI5pTdLS9ANwHC2tzlem9x0ty42ODEbn0DBGCqAf8yuWMmp8zOCLmlF3ZlYpvw
UlDxPr/KM6Mm4fUb+XJMfEsHbuWk3KrsBVEh0wcBGkOYXnkHm0xISICQDZIVECQyxWb1IDMzEzK5
kB5l14HbYfoGwSmzuYK2ZDrVRW8wsCmwXwLym8xPsBYHnjQ5ORmqwWwd/AJNgSYCzoJzrxjcDpmW
sLAwhji4XVgGBAGZK0x05kA6yN5A7uLkyZMQ3rLjO5oIJG2BAfbGT+CNDwcYEgBPyAxAihZCb3D0
fAoEo4KJJ2xgoisAz+BG+dYwOYnw8QDXYRrBYMs04aArwbAEwSyMymy1wtDLKTutFDrfYkMT8If1
A8iuMNfhb9A1PRy6V3zGBt1IZLsnoRu1YaEY1mPYuWNY44VVaI+8IU9w9qUHPnhtZ/6syOszo5ld
TW5wNz5V7cde+uCGzQFo5qv9wWjgk5MI5/XxEcrcykcffQQL8bDQD6k9CDBhKQ+8A6zmQcgsl8th
uQ/sB+wZbAkcCngo8BSfffZZREQETGYhjIW8MKSAoSYkNCC5DD4R4mjoGVAH8rBwLxg20IckBoSx
UBOsHUwXXCrbq4LrgeQj1IRYCZwdNLp8+XLgAdgDzw7LXOChwJlCCAAxO7g5SI/A7ZCpaG5uhvga
Fvphzg6rf9A6/MTeOAyTfeipMJDA7bDOBpmZ1NRU2D8AbHBKBy2Gh4eDIDBCgLAQL9OqgHgZSEEC
BNqFe2FGD6IBYrD5ARiGUNoeB1gQg+0ldDIdFhghUw/5Fmid0S3cAvyAdQHDcB0qgIBAH6CGeShE
1pCTYTdt0ylgwACuYDGTzg7BxJ9TF5AZgLR+e3s7gACI/eMf/wB+IDFFjysw+N1zzz32rQA/YPMw
3MKIAtjCkh3IDhq0l51eSIAlUGAAxm9QJZssTQfmTFC+/vrrTz75BL7CQiv0KHpLBj3rgpQIpM5h
0wWAz9v3p64NumvuALX9LnKFQuHuRkZQnL3LFWxet+yr/7x1vqnrqW3rfdEj04OzTW9gX7TxwnxO
mY/CRKeSwe/MmDEDJtTgXMCiYDMWrICD4YHQsB8ADAZm3DD1hkAY9gBAlAQemXbKsJ8JTBQMFWqC
OYEXo7+CUYFbgaWeK1eugLuHnC/4NYia4df4+HioCRYLoROYJdMRYcYNxgneATYYQH3Y3gA80CEA
RMoQtIJDOXDgAMTykGB97rnnYDyAn8C/QCQLbIM7gA0P4JphQd8m7QseAcJhcHyw8AVDCLABIwd4
ZD7pYEiAvg6ZYth/BvuKGAfKeGS4EZgHbwuwQLtgBrDkCD7RHgcwGwAQwm1YBoTBBnZWwJ4E9vSc
7ZFhUrJ+/XqoBoMWjCuwL4XZ48Fumm26Nh4ZKHPqAmwKhkMaKFANjHOwRufUI0NNgB3ugoVB4BMo
QKwNGuGUHdAAhwucQ/8BHkAKxtGDlmFwhRahC4GMf/jDH3Jzc0EK9zzyVLdBdz2yp+pzemT8vR1v
/+6+X3Rf//TFP9wKBu+pxjxJx/4cs80Vmx7D2YE8yRCihRCYZgggG/SCwiH6sXe5hOmAvUCo6mv1
QoueI8mcbGZI2hx0tk9TTHSC2HPCI0oIAR9AANmgF5QAGT+bQmACMRaU9OSmOV5ozssk7VPJTIM2
KWYvM4LIIwSmKQLIBsemeMit2RTirwcampPT3it38tSusbU7trvtU72cyV8UFI8NZnQ3QoAXAWSD
49U5iIrQOZr5m1UB4/Q0wlHKZbOtGKjYXLHPc42yJXQbQgAhwIUAssFx6RcElrUEy9+A5a4cl+Zc
aITZZWyTt+IbpZkDeC7QRlUQAggB5wggG3SOkbdqQB5ZhAnFpo+PFOZMnf2YDBzapCZ89QCej2CJ
2EAIjAYBZIOjQc0z9/jYKWrHueCJ3jvsGcgRFYSALyOAbHBCteNjHpmNBd+2YrSCN6E9BjU+jRBA
NjjuyvYBj2zjYZkcFucONrStbdy7CGpw6iOAbNBndOwDHpkvO+wzGHmGEWak8Qw5RAUh4FEEOFdo
PNrCxBObDDboGx6Z0ZUrq3kTr1g3OWCmfpzSuUkMVUcIeBcBZIPexdcJdcLyBLXxXDSzH43ZYTLT
IdjpiwnFaEyNo43SY4IP3ewdBJANegfXsVP1jRjZZjxgksVTI2uMliLH3k8RBW8jgGzQ2wi7Rn+8
PDLbK4HuOZ0U57jtmhi+W4sd8jNc2j+0xXcFQJxNFQSQDbIR8FUbHC+PbN+rp0/kyEQfdAaDCfyn
DwJTxadNNTmmTw+cPDboTY/sYBTiTFuPZy7b47blyr76SS2gxxFDBMcBAWSDDMi09fm8DRICDIcP
YfuOLs91Fgd9glm7m/LLX/b+2ud7hud6AKI00QggGwQNTBIbJEgcg7dawr+eLzbrcnxp4qmxfMep
cpvxmQ3x9Jkwer5jIYouI4Bs0LdtEN4DaVPMWQuPuGN2wMvuMOxgcMrsQrcPOti7OPmgmJJLly47
B1TR6wggG2QCo0lig/AaRpviuTyy0zUrzl0HXu+k3myAL87lhMJGfJS18KZmpiltZIPsiNh+CX0y
2OCYPTIzFtnMDji9FbvHTFKjoeXizLTYX+Tc44l88SRVvc+yjWzQxhHzzdEZy/VhG7R4ZPZb093r
eFNv14Rj+X1Yl+4pDtWeMgggG5wyqsQw0yYL+uP5Mh0WrxzLOB0Q8Hy/QRQ9h8B06IFTywbdzFpw
5svZi1qcuYtJupvCRU072FpEz5JQQQh4EAFkgwyYjIVOIRsczlq42GOcLh3Y0Jns/siBU2ag4ByQ
aBwmu/gu9gpUbTwRQDZokzW2X8FzkEceT02Nqi2TRxYRVGyA3vntbPdk44YchMnO6aIaCAGEgGsI
IBt0DafJW4uIlJIz5bpofwP303/4Rhu+AzBTKW/lIPidvApHnPsyAk7Nx8HufmZO5pSILyPAOcme
ShI5A5+IDzASOEgMB/esDxrab6mhadHX+WYKU2yejpyysw6EfvcwAmzvg2xwSg4zDnsMAe7Y7GVJ
S9KT7hC0z2VcMOfAZU93krpjvn5PC+iKUJN06dLDvgSR8xACyAZddDjsalPFBumVPfC/5hjZxgXb
B8JTbPrgON5n65tT8CmGhof8CSIzegTswyBkg/Z+yalhjl4BE38neGTwxcPbkZkOwQ4M7f9mj+Gu
hJATLyY/B5wiuzhET3bZfVkv05Y3ZIOcqueztSlng0R/c0tHSVXbhXInJsDEg0xqdcph4SoC09ZZ
IMEnFgFkg9NgVirQp64f6h3SDxkfmaeApxCNpE3tQ2P26D0Kd0x2XPj668MXm4WJqQqJL52b4NzJ
xxkmG/rbmtuUasovWCp03zhJdVNtt1AWJPIl4d0UQ9/HRmD8JCLbzu4touISQkQuMTxUc+DtV9/4
8NuztcLkOckh3gRcq4KYpkdDBARK3DxuxSuJgzDZ3gadmhWlvnrkSL0sJVrqTRhcUouzqarNkMM3
VR2F8xkje965vbe31+RybUrwr4+G/PZ06B/P19XVUXQhSdPHpthfNHadf/OJTfnJYUGyhJkrb/vV
9soB25usvuuOPJEgwETz/1xucFiP60dtb0d7u3LA7kZD1fMLRRgR/uAe7TDzbW+sl2BE3A8P6UxX
zExeOzslPEiWOHPl7QyTZNsbG/zgaR7QSQlCFBQWl7v6vj/vbdDziW+mbij5/RwxLkh44oiZtnul
75v7owS4KPUnx4dZde9+/tp84HiKPosOIDBbhFkQ8KxEDqXoO/BYsjBs20cdpn5Jdp944a6lmRGh
0blrHn7rstpWTmPjOzeE0d5RvPiFK0Yv4DBCciy92gFjLtogUHDGgLHhPxuCxLm/PDfkVRxcIc4p
FGNx7F/5arrSyuSpM+JyWTwTmF8IJgmixIEjnppzy5ftUqau5B83rX34lb3FHZLoCEPtic/+ePvG
Zw6pvTOYDHz9UHJU/ObX6ljrj6605JBJ04AsTFn30MP33bQ4gao78u4vt275Y+HwSRme+RFA50rD
HHXEUdl5CZHJszLCBaOkwHPbaMEZMxcelciRFGTzRy+825j24NM3KXBMV/SX6zY983EJPuuaNPXp
N76/5q7/NVh1C7Lxi7f3dlMhG18q7Wj65tFUT0WuY8bLHQIu2aBLBIn4O39yZ2TFa8/v6B5t13Wp
nTFU4lvLGbWtjYGXCb+VoIR+GCGmcOtZuNN9uPrTb7x8shdP+sHu5qbKyuaumn2v/Out36xi+XUP
ika21jfpR9GdzEz2Eck/2NXYWFnZ1Hl1rzWTFCWY/eBLr/73430FRa/fGIxpSo+ebicdzIlG/4g8
DJPM+9n+mtbKLx7O8qxHHi04o9MPGwFPSuRICrL20/ePajNvvm2uBMMGDrz00jl1yPWvHNn39aF9
v1kk7Nz1whuXDCxpyLaWdhITxM5dlqFQhAWMz1R9LD2DRxNObdBVDQauuO2G6L697+5oHYUNudqI
03rMhlo+P8u3m8Ap5alVAZ79RsBWZNj+5p5clE6rg6MiAy21bRrT7DB+3eOPrAofJmLsPPXSg6tm
xITKE/M3Pvl+KVfozFeH6iv56JmtCzMjQ0IT8q/7yUen/nt79MxfnNFhulNPpwlwv01vdbnasUaY
bDcxKUlY98OHV4VxCkoaDSRGhCQkhDLPJ7XU0zfufvbG2fHy8ORF97xdzjZ9jEOE/q/uVggI6fr/
tNBMag/9MF5IBN/4fpfu6I8Shbh4wV8qjKYfbMT8uHwALnJjQrYfef6uxamKYFlc3oq7frujUj0M
AKX6mBMcsvvc64+un5Ugl0XnLL/n+UPNtmfk9SZmxHN+X1Dy3qMrU0OCtryvonhaxzA+BMxELBK5
RdA9FVOdh/YVGOLXbcyDqEFffOR4FyleuHljBI4JUzdtyhEaqo8ebRyOknWHn8xc9fcrBsxQ9se5
4qA7d6jdkdRpv+XUGigOl2hL//PohlmxckXayie/qKXxNnRe+PDZu9fOTQPVxc5Y/+RHZiVjZqxE
s547eub1Rzfkx7Fvsf4pPiwifdVTw9T4uge7P3N3Fcmijatlgyf3He93z8g9Wpt2uG4NM1MlX+we
jgF/rgr8S1XQ81c4kxr8ORn10acyhAAyLo5edO8ft1/qMqVg6dJ37OkZElwYknrN5k3zY/0JIvqu
LzpJ64QXTx1KU/iHhRDW4NLoWStWzo6NWvPS+UMvPrAuww/HiIj5N9973/f/fqxvhCsneWQTkyIC
xwlJzOL7TEzqhlPkkEeGdDMmzLrx6f/3sycf2JgVIpDEbv5XCSTbrHJYA8d/miUCAsEpC6+ZnxhE
gMTDeWRuEfp23BVO4EE3ftBtSnnqz/wsXYAHXv9uB2mV77MXs1zHgxvZ8t6NYUAxY/29D965Oj00
4+HdAKal9B/nAGfgzC9nQY5cFJ69bPmsKPhLmPKD3WZ2mGJmhpDnzU6RCIKiklb88ZKeTyP8CLAl
coOgmyqmhvY8GEFIN//PLMHAJzdLcUJ+3y5zMp7s+O9GCaMQ0xX95bcf35wbTGCEbNYN9z7yesGg
65LyIcCgxqU1GgRcKBRKwtJmJMsE0FHDb9+uBGaN1S+tDBQExs9efe26mQohjotn/V8h8G2+BRcH
BvnZ3WL9U0qokMAFijvM1FwwK96uYqz5xzKxIPnHJ0ax/uHxtKwrKfJpnEfG/P9YSTtlNz0yRQ1V
ffKjZTFieugjZHn3/PeyaWnPUPbnBRLcb/Ffy0zqJ5WfbJPhkpWvNBhZBsxXR1/z8kp/HJfM/vnJ
HlMn1AwMmv6n3ftQBIGJl/yt2naVxt4jG1utVvasmQydec9/i9Vmn0t7ZHrYNo3F4HSzb3huN2RH
WMXY9J/1AcDP3P+7YBJt8NTTWUKLA+AVs2/H3eEEEXb3V/2ARfFv80V44OZ32q0GJCOXmHwEh079
NBUWRPN/cboXsNANDNgsDNqCY6z+xzVSHA9c/dIVUICx5cNtCgIX5fzqAlsyix8RJN3xXtWACWJe
jfAjYDXEuk7QXRWbve7wSi3Z/c514ILjHz9M+xZw0JB0U4ws7MI13WmYS2HCGb8uNEnsMmM6vn47
3B84tWahT0Td8HrZIPBz4JF4ASZI++kpM39DNYXFnWbcNUeeSAamcn4JaqBZ4rzF7qcEIU5Tc8Ws
dLxdZejLOwJx/22fOV5795TzdepPHThl+z0FnuLK9+hwr+yZjq2BSZJurpmZkgDpt710vLr66Fs/
uy49gOq5/P6jt//pgh4bvHi2WEcNnf55jhhcHSG//fMeytjR1slugK/OwPlj5zSUaN7dP1hk3rHk
5+9kxw4uFsOQQOmGtMPkqSHNEAVBsYT2t9ZMqorff+yOPwOTw8Xv5k8GSFKvbr/8xZOZTd/+/q7H
PmQn2wyXTl8YpIRZN2zL94dbxMEhDD+8YgatuXmjHFMd3ndWa6zbv6/M4L986yZYkWIVDZeYfAQF
s7/32AoFWfTXZQlZm556p7DHyRxIc+FEwRAlmnvjjSmwU4yIvv7ma/wwffXJM212KhbmPfDLO9P9
Tbzxta7jR4CDDxcIuq1iqlfVSxKBwUEmNnHoEQROqvsH6OewDPRDBgf3DzDL4KC4wJjaWb/l1Jql
TUH84hUZUuiwKengkakeVY85sSSJjR46+MJj29bOy7vlLVh/JLs6uoa1wHOL6TbWT3EERVNzxaxE
vF0FDwoOxI29qj5XE35OOtkYf+ZMR9B7B6ZnpoKFJygcCkZptaMDWRp/zQPPf1ty/q9LweyvHDra
QArEYpjFiec8+p8PmPLei3els9ez+OoQMEKa7M6UHHCpEPKoSDFODTU3mD2+6fkczQ1NRgxXRClG
1titmKw+DExaPbgDE/hH5N749P0LRGTvmZOXWTlXUyIayAoF9otx/GLSLrn90IFLbUe+u6iXXrP1
Wsh5sospSLcTk5eg36yf7K+48MEvt6b2HHr54RV51/6r0pyJ5ilmfZojf7rC8B9cCyoi0fCCLq9G
+BHgat8Fgu6qGJP4SXBKb1q2gCJOTIkXUIOtzWaXZ2xtbjNigsTURGerpc4Zg7Hdcb/l1JotCARh
6nY01tqyV2+cvfiulwr85t313PMP5ALWEPvYwca+xeZH1k+umBXG31VMasQlfpD883ZxuoLHMDAt
t1I4hZ8wBchQVO1Oq1o7lY5dP9p46/MHm4bMlkEaTc/GIAKD/HG/uUthTdzQ0ChYettd5nLLtps3
ZEOIQ/cvo9GI8dXxz1+QJ8b1BR+9W2heDNQru02jOh4QBLllskfZYxfmBSxYNkeC68+8+9o5qIkb
m758bTuMCnGLFoORUhxMmomZnbVVh6B6LhXAehAeaGqJKcL0nHQhZijfv68G/DTV19jIcMAvJmZ2
yWTNkd0ffndOK73mpusibexAyiUmL0Gqr77OMOPOP2y/UPX1Q4m48vhne5mFLJPHtQFHOnfJbECk
YOe39bAMSXXs/urEECZMXrggytE2ML7WRfwIOO4wHlMxIZPLBJRKqTLrXpi3armC0J39Zk8bBSHA
7t3lRmHmyuWxrm9x42NMyttvLYJyas0BCPozr/91f5tw1W+/fv8vP96WG2wehUddXDEr6KE8XUWj
VA5SfvJQCOO9XdgreA7acmuJz9s8+xR98W/KJb8tl37vA7fyyLri55cGm7Ov0oi0jJgAWM/AxZk/
3G9agiBV3/0oSwLrSYr86++5/65rZ0VnP3kEtvEbr/xtMSQyxImbXy/V89Qhew8+kQFn2vDAxIXr
1i1MDIm98/N2kuz8eJucAN+TdM2WW57bx1rZg9a6vn0oBVbvCL/wtLycuCABjgvka/9VaSBJR0ya
082w+gX7kR955KHvbVkUD/kIInTli5et0rTGpneuh90XuEgxY8XKuXHmybFlZY9PTNP41vcV5JKF
YYpQQrru9SY6+c1eB+MU08iJibFl+51xIlnWursefviORTEiXJT+k+MaVk7MHhz1yZ/ngWziyJmr
186Lg5yyMOmBb7rsV/asTuvwao0fAbuVPZcIuq1ifeGzuULRouer6PNBust/Xy4jiJCsdVuWJ/nj
guhtHzRaLS9w5ZHZ55L4JHWkUHPLnJxrrc49GWthCQ0jwu7frYXzRH+YC/3dL27RlpvWZodCx8Tp
o0zWZzrYtzj6yblZvfrdJzxdRX/uF1lC75+Wsc7Uji6b7HvZXu9xxOlyMdFzZeLnyqS3/dctj2xa
q7j6zR8fuG5JTkxwYFhS3uoHXzzYyDgzY9fZVx9eOysxNDAkNvuaO577vKzftPbcuvuny+JCgmLv
3wFOlbsOrJa3HP7bvStmxIYEyJPm3PDMR5fNC1o1Xzy1JkMRGBSZueWVUvC27FOFhrajL9yzIi9R
HhAclTHv+qc/rTAtYJiXCHiZNK3smc7smUZHyDrLYtIX3PTMOxes/ZbZDJVnXrpnSboiJCJrzQ/f
/N+TM4QjZ/b4RLC4ZKAsXfPqsLuwOVvFKSYXQaPy4nvP3Lw0Ozo4QJ4wC7YDltouz7DAuQHAAaYN
HadeeWgVYBgcmbnkjj/ub7A9Jsh50ItHHF4EHHtkYGO0KrZIMWwKmj0PRgqCt344vF2EVJ1+8e5l
GRGy6BmrH3m7xA4OjpU9m5OifIzxK9TCi73W+D0yRfadf/n22dGwaTF/89Pvbf/FHNFYPDIvniNm
9UU9d1cxNv57lQS2Whz35FYLpw532Aa959EmO2VOl4sL/68MJw3CK+fL/7omMTHRp+J3XmYcn3+n
b6PrTPuFgsmhUMdcDu5/OPPazxZ/VPvprTLvJ0KnAmJWMlAtb2xM/2HdD49ffn6R2GPSIRscM5T1
9fX2LhfyyJjpwN4k8lz00oFThlGiasw9xlcI+K986HuZA7tf/8DdU/S+IsCE8mEoe+fNo+TcB++f
71F3jGzQO1olLt1mPLqpLyfSsjnXO614lCrbF6PlWo9C66vExPOeeu6uLKq5Sjmm1TFfFc+rfJHt
Ve3i/O//7pFsZ/tR3GAD2aAbYLlXFT92sS4hFNv6VtWOBzN8MWvheHLEbLXhk9ppBffgQrURAtMP
AWSD3tE5d9aiq3cQNsAZ/YK80+iYqTKjMV847DhMdprcGDODiABCYIojgGxwHBVMUEYjbFygiFE8
gd2bbJpOrdi9a8q+QeRwvakERHtaI4BscCLUT5jcsWmj2EQ07qBNm3UDh0/ItD7r4WOCIHYQApMU
AWSDE6E4Yn5WlPm9DO4/12Ii2OVt0+eGFJ9CBzGDEPA+AsgGPYExIQ+WgjsmmQcceIKo2zTo+ZED
jaJksduYohsQAu4ggGzQHbS8V5e4Wl3d2NRMJUV4rw3nlJn50aiHWZRQdo4yqoEQ4EcA2aBv9A5i
fU3S7T2zrwq5X63hdSbZLtjxmQ7kc72uDNTAtEQA2aAvqR3HvrA8h7Nubqtn9yPnfWL7hE84Acus
ILJPw9IXzVcgd2E6+mxdzfK76RcWdr62GOlLakW8IAS4EUA26O2ecfl2V0/bce9H9jZ/DH3amZqe
F2f+MP7U1rFyP7jA/Lhya17REw7GTXeooamBALJB39cjEdF9BevtwOABx14rtAs2F3C/9GfkC/03
y73aeVquYHiEitfYRoQRAlMGAWSDk0WVxKsxLVhXE2a0esmyF7hnMhPwEiaTa+aKcM0pC1b4bGHD
VHXEKyNf7AXtIJLTAQFkg5NAy8RjX57FhtSYxvzODi8Um8yvqVNY1ui4nLK1nx7+ZhngkS/2gn4Q
yamPALLBSaRjYp2/Eqsouit6wONMs/qBVd6Bfm4xHSnbNWpZ02NNsixV0DqexxWECE5hBJiU8bCM
yAYnh7aJhQGaLbMyl135wpv80v7XuphX9+z6jWXdj10VhcbeVA2iPdUQYKIZ2wknssHJoGoC66gN
EqhLDu3zGLcjh39MeQlLN7DuHZYwmbXexxUvsxYBPcYcIoQQmLIIWM8s6UOwyAYnmboJeEP0qW/O
Lr7zDg8wTvti+vDPcLLYkpvgX80bSRZb5zFQmsIDGkEkph0CzJQS2eCk1D3x27qQGqzrJ7vbPMO+
1ck61iZiuG4JjNl54ZHIeXjFz7KvArljz6gDUZmOCJgWY4YtCNngJOsBhHLBrfjy2zsT5nuAcfuD
zsNe2OxwLeEy3RDn+Q6UMvaAFhCJaY0A93Z+S/4Q2aDP9w0Cm78Zm70em7XGC6xaxmn2cA1pDevN
6iMHplFc7AUVIJLTCAE6oLG2I2SDk6wDEN7l13YHHOS2zJGy5eEmrCmVd/lA1BEC0xUBZIOTSvME
1teFddSbPl4p9skJc4g8nN9gD+lSVX1M0fbUIy9kHPht6tG/RRdv9+9p8ApTiChCYKojwDI8N2xw
qqMyCeQjboimDswffGeOp3kdfsQfPWtiMhWMC7aaXlFkZNk30SVfDsiT6xc/fGXNr+oX/UAjT466
/EVE2bcY5ZX3m8QqiBWh0/kRn3h2LDEnwNN6n+z0CPyGheKDN0m+WylI41zr8LqAPHoZDWNWKQsn
Nuh1udgNoL7HCzcRoBnY/d/n7v/PN17QiCUpwe7Y9N82KePI8l2iQVXdkh/2xs8zSIIzDvwO/u2J
m1e3+DGxRhlRvnvUvM2fKy66XQLPx2N/irYKlxH4/BzR/0vCBaMm7VM3CvBIP8y9DBSB3zhX9AD7
RQU4/sQmyfYZOJuOIlV07nrhHAJbOl9cdKvoAfYry3H87jWS4puEK9k34Pi9q8W7FhKhXsJnFJK6
w0lgrPBnsdTbh3R3nyPrRcSz14k/yBnfTmKvFzP/bMbqnC25WCxueD0dvq5bIjm7hBAPh0fw/6w8
8fmVAstj0XF8QZbw3evEp28W71gjejIBl5prmpRutp3i2yTHbxC/NleQR5MYY2HL6MEOw+4bHiQ7
RmHdvB2yFur5aZH3xjlTspt0+arbNyNV1gd0VbfMvp0U2GqbFEpaZt0W1FUlVY0yfXGxSL/qK93K
r3TfK6W0fcaHvjb9vWq34axXwm4PYeQ+GUmMcMcyQcwYYzqKOt5GJUcR0Sw686KI/lay1AzXEEms
jh3x14Q/sToYG7ThlsIuN5H72ijPn8o3N+QZSfkRjgrG/frIY71U2yClN1BnG8jvujkOnLqvorHe
wWbM6VPBOI9lMRzY22BalvClLPz8ZcP9hwwv11OzZgnvCrFU17cYVn6mnf+l7u7TRmWk8KW5nh5r
PddhrPqG58iOVXNu3m8Kb5Sqjjoy0M0bXalupXq+nW2hjee6k6+xd8d0A+CU4VdZwzlX2rOvYzBQ
yiGqe4hSQS8msV7z30otph8dOV+9K1CMjSLYt3+FVlkL2RNKLGCeuC0gFiuos60k/eqB+g4yPJaI
G/bXkTFEpJJssLVvqrDKZNU672A1Okld50UEBkFiFpdHUvsvG/7X7p2sGT9PnK82s2LMmTysGNkF
G8Tx1QlEW43htQayQkUerjY8tEv/du9wGxSmIzGtnqrvNP6tggyOJLLcm4tx88qS0WMdxrpveIys
M7A9/LsJ3auXjh45fdbDhFnkHO8ylqrqBiIyHLQ+EJ7h31PnDfYMFLYgW/i/68Sntoj/loGPDEoE
vjBb9MFm8emt4g8XC+b62TWOYzNShW9uFJ+8SbxjpfBGmXkLCY7PzhS+e63prk+XCVdZyOE3rpC8
kgwE7Rty8BOG8fFg2zS+dJ543zxCGi7cc5vk0kZhFrDCe68pV/Px9ZKTW8SvzCTkdsGSros8bSCW
KCzyCuXEfII61mn5iveS5/yJlXTqGcdXxOHn2ymhLTYmofbOJujrsXHC1zaJT28Tf7NG9INo3Lqy
Q/G5wFxiLynTuic0kpsnfi8H94sQ7r9N8q9kgJH42WbJG2mWxQbCj3hgsWjfTRJ6Il90m2QXiInj
D62XvJ9lmTrgYsG/bxE/HU6zZRLw5SR88QzRl1vhj9HrxZYxh50NWlw0Q/TFVslLIMKIX3VkQH06
LFJOxA67WngxPd8cktRjA1bdZuwysjuM69RsDNDOCiAxwuqH7tumN/yNSzSJDnXfsic//d+vH3ep
uuuVTN3Yej86z70C/aBR5GiBySAJEOhsJ8euM+KgZlSq8CE/6vXT+p9VUwtnCW8cdslzZopeiKXe
PaHftFf/gUHwwnxBpHVCID1L9PZMvKLccNd+/T/aMJH5QGL2DNHrmfiJS/rbDho+0xF/Xi1cNRxs
zssXPczVEPDG9xMfD3ZNU6cLdQ+UU7puw9bPtYsOGKoojO/ezBzRqxnYqUu6uw8bvjXis/3tsDGS
xzqouVEEzXhKJCHrIs8Oh7tSnDrcjq8xJy7APa0KJI/0YFL+VAnuJ/j5AqK/Sr/1G/3PKklQob2d
84nPCeYZO0kZATyikbJS3fcrKG2n4YbPtT+pswYHx29aKLwFI3+yW7tmv2G3mtp7Srf5Iuk0gZCZ
KXw4iHzlhO7vLaPXiz1jDjob3eK/TuhebHHNBinqmxJjnVz46UbRYwl4KFcITAiwOIXgl9nE1Tpj
md1A7hEZGbhdoebcCqy72uhs0yNOxl0ixMGSypvfPXP/zjJ373Ra38UDeEaRv0Bn9XTmyg2/YxMX
6tRQx2lzo6jQ12R44qLxjJI6WWk8SxHZ5twZESB4PA374LzhQA/Vo6H2FhsrIohVrDAZlwieyCEK
igz/qCfr1NSxCsN2FQbe57FM7FSR4b8tVEMf+cUFw6cGwePplkUhTQtHQzTDnD/x8cDZNEQ0Q6Rp
h/eQ0fTBePjHxcRDGfj5YsO/G6naPnJfqfHQEAdm51soP3pmiuMLI/HSFpKZvwpw7EIjGR1nSjSH
xxAJbWQBiYn4ccfFmEKAdfRR7Vqqosn4QSvH9J9TfD4wcWtJGaPzlEYASe0wkjobv4Pj88OxM7XG
0iGsS2nc0YbNibAJ+bmBCCPJ3501Hu6kGkXc/coVvdgw5riz0S0e6qTqda4+q2ug03DfXv3bPfjt
i8T7rxP9OA5UZymiWOEpmBDcItmzRriCNH7QSNkPQh6RkYHPOTUuA7SxArZDHrVtjsKljP0Wgpq/
iVq8lUrNHzut0VEYlCcFdF5h7g3srEw7+KeAzirmCvyqkSeNjrjju3Q6zPJyVhLr0WNB5km1IAhP
EeD3rhIfvtH0ObRJuECAB7EcjzAEn0GQR639C1zMIajzncP5MZI830UlhhHB5hCSsyGaN7d44Gza
RkY+/gXBxAwhebbDSVa0t40slhCLgjBcQiyWkcfarOprOshT/sRyf3xxDH6mieRy6SPskH3kP8qp
DcvFHy8WbJRxbwXhFJ8XTB51elYj3I1Q1NlObG48ESvE/AKIdRFYWTflypvQurooOtU+Rr2wuXLc
2ZgW2WOK0fzkW6tdTzCxo0ZmLbpB8s1Tug279W+q8NuXiH4VY6msbzYs+USb96l26U7dL5rwn64V
fS/YFiHPyuiUmitW4DpcDmzTGz7HKU0CC43GYjNNnwkqvQkLw+qOEwaLb7Q8M3m47wgMQ/Ka46qE
hePGHdiZliT/uVcHmzTMH+28z3Rv9rHaN/Mm5Jqte2rDCi8P/E0z/PHeS2Aw4kDq3HGhtOQxFb44
Eg9UELn95EmbPRNG8kAbvjyeuCaIPNDhdBMCda5Ev3mPYYeWeHKt5P08wq3lY2ecjqtGwHvtKieN
McJXN4l3rRaG1Bp+Vz8yVrmyyWWMerHXmhv4YJhaR+ESnL13USbBjDrKJhuoUZNvnNS/2ImvT7Rk
riztUljfIHWoxPB2L3F9vNX+SDZjnpVxLFYwRrjGzdvYN+SJddOxsT8oS1CHpccUfUo75QFFRvWa
X8JqnimsMAzFXPp0ICJTI4sfWyNu3G3sJUuM+LIo3sMjhj6qmiLmK6wqGHqpSgqfGz58kcBnh+GN
SrLPLbsZZpOPB86m4SYjTNJwy3YLvntJNdWI4TNY+4S5/QhFnWwlM6KIa6Lw7jbSfusrJC5SsgWZ
HWSBKyEihmkHyU8L9befJeMzBUtc2xHCC6a1pIxSx0EjkMO5KZcou6Db8o1uzTe6p8vJ7mHNDhgw
WOWnwQQ3JuPpa2PVC4vsKDpbtZIyhhJL6W3GJtMiVkbi1SqK3nSUGsZa1qYolRYDp8vpGvwcatCD
Mpp6NY8lumIFbCWMAi43/IWnq068RwaJOrKv1UnlSSf/LWs8L9L04qQR/oW/E0++qgsIb8/a5Gmp
HdGjdOT/rmCL8oUPx+ByER4bLrgnwSpjSGmM79ZR10CFWDzGH5+XIvxRAo4PGf9diV0zS/i9SDw6
EL9+tuhOkfFfVS5NbO254eOBs2lQYaea0gcRy0LwMH9cwsM/OUh+0oStmyXcFo7HBBPb5gmvZ+zT
moOmVrI5XPBwFHaqlYN/bSd5yoida7RsiXMAZWCE8K/zBAuDcH8xnifHRANUk2vbwCl+MNmSMrn9
cdAIiOkvxBPCiTQpFijCJIzdUNSVHiohXrAhFM+KFvx+kSCGZwzm06nremGgdoAPnzp6mo279cST
i4Trw/E0OXHvQuFWIfmxOcyHRYufLhd/tFS4NZZID8FXZIp+FEPtqiE1NC0cExOYWIApgogtc4T3
B5A7GngTXx6UEVoeixX4scKNUcA1ng7Hpi2f8MgwInfkbG6duQ1OiyScfTP94B/gX39VfeusW9qz
rzON1+NbLpfoHiqlFuSLdm0R/XcOEUVgzA5dmpFThfrHqrBl+aIvN4l+lYC1qE1WWFqif+wKtW6e
6Mv1onv8yf87bDhoycSMhns+Hjib7ms2vNyGP7RWvH2ZIE+A8dxLfXdB//cu/L5rxB8vE+SqDK/x
PBMbYpNTWjyJII8ruTg3kr/dqft9u3OhBnuNZ4zEk8tFh28Q/SKM+tsZQ7nLMwY+MG0kZZjwukYo
amc1mZot2rFFcvpmyflbJEc2CLeaM6qF5YaPNcQvV4v+mIGfOm/41uLJOPAZo17YFN3tbODd/nxI
v11H/Pga8UcrhdcLyWcP6XebWSUHjE/t1+8y4Nvyhe+vEz2TgO05rX++1ZKSEsUIj9wqubBNsnO1
8HYp9fxR/Sf9jlTvQRmhmdFbgbXPcBcu553bazVw7CvLaYm6/ObExEQPNpT3yRgckgf5QKQQAmNH
QEg8tVqIF+r+2WVyVcGBxL2LRDf36tedhx26qCAERhCAveouwlFfX2/vcs1DCf02JlQQAggBHgRE
4QTElcyJ6j41WdyPTAZ1F88jMN4JAc9LgCgiBLyPgFFDdUqJG2JwOv6JixU+Gk19WI0CZO9DP81a
QB55mikciTsqBMhe4zPnyMhc0e4bxN9eK34hBfv0mOEt1ahooZsQAvwIoDwy6h0IAYQAQsBjCHgi
j+wxZhAhhABCACGAEBg9AoSCGlCQps/oaaA7EQIIAYQAQsATCBDfpdR/l1p/IKXOE9QQDYQAQgAh
gBAYPQLEjBkzcqDMmDF6GuhOhABCACGAEPAEAmivhSdQRDQQAggBhIAnEDB5ZLTT3RNIIhoIAYQA
QmCsCBAWd4y88liRRPcjBBACCIGxIkC4+pqBsTaE7kcIIAQQAggBJwiMPFUQQYUQQAggBBACE4sA
rtfrSYoiSbK9rc2zz36bWMFQ6wgBhABCwJcR4H72G51AVg+gEyK+rDvEG0IAITAtEDDlkdvbO8sr
Rt49Oi3kRkIiBBACCAHfQ4CAt7Z0dncHBof4Hm+II4QAQgAhML0QMMXIgQEBSmX39JIbSYsQQAgg
BHwPAdNei6t19dExsb7HG+IIIYAQQAhMLwRMJ0TSUpKuVqM88vRSPJIWIYAQ8EEEIEamZMHBgUFB
PsgcYgkhgBBACEwrBAgcw/ylUllQ4LQSGwmLEEAIIAR8EAFT1kIgFGZlpPsgc4glhABCACEwrRCw
nKLGcYiVUUEIIAQQAgiBiUQAPR95ItFHbSMEEAIIATYCBAVpC/jP9D9vFYqiDAYDPEDDvsB1+NVb
DSO6CAGEAEJgUiGAD2l18Jgh4Lmj3StPGgKHq1Kpent7OT0vZEtCQkJCQ0NR2sRhtyEHutp7RWHR
IWKUXfKMfZHqmgsXipvVmDxr1fK0EASrZ2BFVNxAgPNJQ4JfP/ss7SsHBtQymcwNeq5VNRqNHR0d
kZGRCoVCLpeD82UKNCeRSLq7u4OCgggCTg/2Fu/bV6iNTovwGzYQSnP11I5TPRFpir4Le7491SxI
SFRImB8HKw/tPlCklmfEBI9P9sUBh6l+jUePnO6UJsUEC+3N26gb1FFCoWlny2gKpW8qOHZpMDIj
2p9FgWw8/c2+pqCs+KBh6SnV5UM7y4m0RJmJB2qovbLo9LlLhZer61pVg8Lg8BAJgZGt5/d8e6Lk
cmllSVlVZU1Th5oICg/xF7BZM9eZcLRNSFHdxYf2Fja3t3XpZdFh0C+ooZbL50+cLb5c06EWyaNk
Yiea56mvbyo6UoHnrl46O0EWILYSnrcJvqa5r1OajuqC80UXLpaU1bT1YEERcn8hTvXVXjp9+WrZ
pbJeeUpMgGvdgbvzgHavwJhyobC0or57SBqmCBZxQeFitdH0SnTPGBGAONXe5Xrdk4G7hyKVSu2j
YLgC1+FXOkjH8KDoKGlfe9fASBrD0NGuEkdHhZnYxIUCdVPzIPMjNdja2CcQjGfOwxGH0rDYuIRI
LneMYWRL0e6TdSy5xqhKV26neivPHavUROYtXLtqwawEv66ii1W9FrCImDk3bbvh1q3rNyxO9eso
PlbYMmQLow+gPSylLG3eimvmppviWFJZeupkkyRr+ao1s2TKi6cvthsczy146lMD/WpjSERMiJ+/
v41P52vCveuUrr24oAmPy1u1cd3qvBBl8bmCJh2F4cHJs1cuX5ht7tAuFs7OY1RWHD7bJkrKW7Vh
5aJkrO7s+cph5bLJuljNRU5QtXFAACJTcxLZy8lcvqSE9XVCHhMh6Wlvh65LF2N3WycRGSWn+2+g
Qj7U0qoefg+VpqVVExYWJBgHlJgm+DnExYqM3FmJnOxQOj0j0nhxS6kbG1QBKXl58WGhoWFxaTPX
XLsse2RyThACQiDyCwpPnJ0Zrmvv6LEb2HwAbTusyK4rNYPRuXlJMv+QmJxZ8cbaK22OkOWvTxlJ
jMA5/CLfLW5ex8VR8zesWJimCJH6yeKzMsP17e1cLtN5d+DuPILQtJXrlsxJCg8JCIzKyM0I6q1v
7rcPTlys5pwLVGO8EDC/Zw+2vvnG7jdBWFSUQNXWYQl8SGVnOxkeoxBa0AhWRA62NNGhJjXU3DwY
ERFEmcJrqrf00KffXaG7JDVQfWD7ziM1dNhH9ZYd3n68foiidKrG4jMn9ny7a/vX+w8WNPYbzVQp
Xc2xb4/VqdtKz+z+Gv7QY+RQW/n5/bt3bf9q/77TVzq0Vv2cl0MTnZ07L3ab2WHT3PnpF99+faHT
0HV552c7Pt5XrjL2lR3YeaDSEjFTuvojn+8v7DLPEuBOTiZH0xuEEhE+2N2tpgmDkgnunAkFyheK
RPYTaF60aU61XVUFB/bs2b5j/94TZU10M5Qj0dTNJUf27tn+xZ5vDp0vadVY+HKIto3cVL+yWyeL
VNBpISIsUo4pu1W0frjo8NSnui8f2l/eb+wo/uqzr4+Cxin1lROQG2kDVfM14e51E3+QiLMUvU6P
+fkx6TZOdXKqnmwr2GfVeZjOiIukUiY9Bsk/zGigO7R1cbHaaDoYuscrCBAFBRcKTOWCV8i7S1QQ
FhOBdbQpLfbd0akNj4wUWagYMVls5CCduKCG2hrVirhQ0uy88aCIcGlvV5fe9Iu+s3sowK+nQ2X6
idJ1dQ2EKMIluEHZ1KoJTZm/fOWGxcnC5ktna5gECNlTVVCiVsxcunR2LN55+eSpZr+sJWu2bFiY
JWo8ea5hJFECBB1yyBKXoXnNpus2rs0OJsJmXHvzDbeuzZQ5mrA6YNJNKHFpcl5akLJ4775zlxt6
h4b9MpsKRerUXXUFZcqQ5PhQO4/Mj7bJ/6lKTx2u0MXkL924Zm66uPXU4UumSTl/obSNhedaROmL
rrtu5bJMmQgCVFNlgxO0rQlSg4MaXMJ4NoHET6TTDJocETcdnvq4fMaK1ZlBAkXu5ps3L0uE7mU0
mrYBGU29h6cJd69bGKeM2gFlfVFhhSYqKznIYdqYU/VEZP4aq87DSYLsVfYSwTJnx25drOZmR0PV
PYsAsaU9a0t7JvzrWbqjpSaMig4zdnaYXDKlaW8fDIuOGA4tIN1MRMRFDDS3DVCwmNKqjoxR4OYQ
GeIReUSEsKej22RTXZ19YelJgcpOFfxGqjpUfhEKWBATReUtWJgZEx4cEByRmhUnUrYrh4MKapCI
mb8gNS48NFDXUFSNZ8zPTZD5iaUhCTNTQzsbm62SrA44tHJ3DM1gP6Fp5QgnhAIojhf3HDDpNqLC
8Jy1GxfnyNRVZw9/vfvUpeYBJogiWy58/umOj7fv2nmwqFkQkxkXaDdMOEKb0jYVVw1G5c/JiQ4O
Cg5LnTsnQ9hYfKXPkUvWDmmMAmlwoNRPGhqbnhlt0io14BRtK6kp0kgKhcMDNIaL4G8jaaT46PDV
xwmBEASmNWJSTUjWqg3XL4w1LRzyNeHmdTPflKrkyJffHj111Rg/Z0aik3U8btXjAqedhxqsu1KP
xabFcMxzWPC5WM3tboZu8CwChFIUTH88S3e01HBRVFTYUFdbP2QZOlt7gqOjmH0XJpLCiNjowdaW
QW1bqzoqPnw4nWF2yXJjZyfssevpUErDY8LD8O4OINLT1YXLIywRIKnpbiorPH/k0LELENHptcNR
He4fJqcDGErd22dUVxzZ8+XXu+GzY8/ldqMBppys4oTD4ZojNN2Ego9JDjKQhYd1UXbYBD4RJ0Yy
UAL/yBmLV23ZuGhG6MCVU8cvtJgmEaYBLGbettu23nnrlm3Xr1oSp7n43alKLnfKhzbVq1QZgyPC
h7fiCUIiwoV93T06flHxoKT8bEnD8e/2nymv77EA7wLaVhTBkwpgY/vwNQriWgzS4TgfHb76DjTC
d4u7181N4KG5q265cd26uYregmPHa4ZXQHibd0P1DA1K03KpTBmalRE9YgwcDbhYzc2+iqp7HgE4
ITIemxX4WrG/jksiYkLVbR2D+o4OZWCE7Q4hQXgC5JIbm5v7IxIUrEU9XBQRGTzYqRwYUHZicoV/
SIR8qKNzSN3VrZUrwk3xmLbt0pF9hZ3C6IxFK5YvSQ7gxlIA0ZN81oZNN2251vzZfNstK2cEW80V
nXDomo64QXeRyeEmxGIRptOxsgWUbkiLi8XW2+9wYVBU7pJl+QpdQ4MlXW0hgBNi/5C4Gfk5Iaqa
Jo51IYwPbQw3uX62pKxxgVs0XBw5Y9kNG+eniJVFB/fvv9xtGhxcQNtqMJT6Synt0HBm36jV6iXS
AOgFPHRwvvoORg6eW/hIOWkCwnBJYHhS7qIs/7byOvMiA09xU/UWKsa+qrOX2mS5C9MsEbih/uz2
z776GD6fH6AXNUzFrpprnRTVmgAE3NiFMzruII6DotFo7J0vXIHrsADCWgMBQ5dGRwf1tHW0tHf7
RUdZO0NgQQCeuK+iUqWIYTtkuC0gQhHYr+rsVA6FhQfjRHikrLcLvqllEXKYzpkntoKMRfkZ0SF+
1ttPrWw+RC4X9LY6XMB3xiEHThC3wm6WYVclEgoxvW5425Z2xKW6yORwA3hwaAihamtlkirG7qYO
gyzUvD2Z0vd291tCYviKiyRiYniboQ2HRth3AK+S4SrcaOPBslCiv8PsVE2F7OtS6oNDZWKMVzS6
IuEfnj5nycYFkQNVV1tJyBa4gDaLLTxYHibuae80mNsluzuUuDxMBiuTPHT46jvoybxN8DXNcx2j
DOa8tKVADzedW+Vv2IHqrTsPiwSlaSg4W6yJWzQ/MXB4eBQmLrzl1hvvgM+2dbPpPXZc1UZny+iu
cUDA6x4ZMnVwKq+9vb22trbGusAVODwSHBwMddh2FxQdGdBZXdomiLJ3yOCSw2OjBASkLGy2veHB
ighh79WantCIUHh7oDhcEdhdd1UpNSeRwRkIhJhG2dGrGRrsriu5wDOFxEXR2en+7UXnS1v6hvSw
8NVQ0dBnF9nAtmRHHNqrTRoYIOjvbO2FZOqQEZOEhEj6G682qNSqtqtnztaomdwyH5M4bJTADDot
7YqGCy6JTUkUdVw6W9HQ3dujbKs4e/GqISojwRQuUYPNF48f2Xe64mqLsqdX1VxZWNwqSU6JGJ7a
kpAXhfUsTX937cXCsgF5agL3uhMn2rhffF6mXyssWLX3DaqVtRcvVuriZqYH4zifaJS+o+JkQW1b
v1avH+xSDRoDgiB17RraLImJ8PTUwLbSksa+IXVbeXEDkZweBakTXjo89W0VRKmrTx7cV2ge2vhu
ce86NVR/YdeBgoqm7t5BTW/b1QsVqsCEuHAH1sbfP606D9MBwM+eP3GmPWTOkqwwXDcERasn7YdV
F6uNg6dBTbiGgAC741m65lOR/d44swcBsp+fH5zKgwLO16aAs/b397fZrYxLBAN11c3G2Jn50cOD
P6VuqW4h4kyH1oiA2My0WPMP1EB7ZSMZm2k+s4eLSWVleXtA2qxkyHDiIrz/akWDAXavRpuNP0gm
6qkpLS+t7VCLo2bGUQ19ARlJclgaUjVUd0gSho/DEf6K2ChhT3VZeVFJTaNS7yePiISjbtZr3Fwc
sunY0MQFgYGi3oaS4srqNio8JTIiNNDQXlNSXt8+6Jc8N0Pa2obFpoBkvEzC5Jfsq6+qG5Cn0ILT
BehGxcqMXfUVFVcq67oGpbGzF+UlBpqGKlwsi48PMXS1NtRWl1Y1d2n9E2fPmRUjhf3ngGRtQ1N5
WWVZeXV1U6daGJk7f2ZqCDvV4RRt3F8RraC6r5SWX65q6RNHz16SF+9v0kGAjFM0ghAJ9F315SVl
RaX1nVj4zPnZwAsOQbMztDXtte2i+OQwetkKlyqiZJqmy5dKKzsoOPwyO9bP7OX46PDVx4Y6aq8O
yjKhA5joDnVcbegUKVJN5y35bnHrOi4MiVQQ3dUVlSWlV2o6tEHJMxfmRUotqiN7Guo0YVZn9vhV
b9N5IszpCUrXUHCwVGnQ9zdXX4EXyZdXVpdf6Q1Ii5NbZaxcrOaaq0C1PI0A55k9HNtpWY+pm9mS
mJjo6UYRPYTAWBAwnaIuki5ZlT7szcZCzFfu1deeONydsXZehNdnqL4iMeKDCwHO51oQuKYf1w7g
Az0INIQAQgAhgBCYWASIFXXf+V0++3iUamL5QK0jBDgREAeF4s0Fh4+cr7Q/6D35IKP6awsPHzlb
awgNQk/xm3zqGw+O8Q9e/r8vRRt+nKuLj09GWYvxgBy1gRBACCAEMIw7a0EM1Eh6W47/768IIoQA
QgAhgBCYWAQEuFpyosZwy4M3JETGeWOvxcSKh1pHCCAEEAK+iQD385E/T1rbEul/18dlvsk04goh
gBBACEwfBAh86TZ81Z34/Gunj8xIUoQAQgAh4JsIEFjyTCxhBpY21zf5Q1whBBACCIHpgwDaoz59
dI0kRQggBHwdAeSRfV1DY+KPeWXXuDzhb0ysopsRAlMSATdtEHnkKdkLzEJBV6Df10U/MBk55amr
aiSZjyLgvg0ij+yjqhwrW3RXYApyymMFFN2PEHATgVHZIPLIbqKMqiMEEAIIAa8hgDyy16D1HmE6
M+Vu8Y3XjbvLNaqPEPBFBLxmg8gj+6K6nfBk41v5lg5G4bUnIRiIZYTABCDgNRs0vWePLhMgFWrS
dQTsx2RGZczaHVBDenQdUlQTIeAWAuNigyhGdksnPlOZWanj9MvApv1Sns06g8+IghhBCExKBLxj
g/AqeesXFk1KbKYB0+xA2LG4bB9NR830Byl6GnQTJKIXERgXGxyPGBlSIvAeXj1XgesoYeJeH7Jx
uDY324TGzH5k5I7dQxnVRgjwI+BNG8Sxb/V08rEuzyvv2QOHq1Kp4LlznJ4XInR4+WloaKjvhepG
ZW1VuyQpK8aX3vBGdwW2e7UPfq3qkANd7b2isOgQl19ZQWlVrV2GkGhFwHiM1sjuEQKTDAG3bZBX
Ps4n1ps9srnU5TZ74x0iEAU3NjZGRkZKpVIbtws+WqPRtLe3x8fHC4XD762nhtorS4tr2nuGcH9Z
WGx6dm580PBvbumObD2/90iNloJXPEsCgkNkioS0nORQPzpJQ/VWHDl9JSBv/fxYCWfahtLVHN9b
GrLsullyR57JONBQVnalpVs1iAXII5Kyc7IiLC24xasblW06hOkr2Xphn0lScNU4IZIGhEen5M1M
CgMnbJaiJGjp5tlhrvpXsqtg1yl13qYVSSIXuDK9mfRos1ge6B87c056CLQ41HL5YlGdUiMKic/O
n5NkejO2sfH856ebjOzFYyJ87nXLMv1xytBbc6m4rKlXS0jDE3PmmV8cbtKPpqu6qrauoVUpzb52
TXoQh44o1eVDe8v6hqnispyVm/JkwAHPdRNVXXdNYXFtS49WGBielDszN1pKcfO2NLq9qLBxYFCl
jli83tVXlBp1g3pC6mf1OmjXZDHV4mfbBT2gKuOJAIcNWsdJJn06zxNyemQBduf/0THXUxH93nhi
vdFohABZoVDYR8FwBRwxRNBBQUECgemd9iZPWXn6UKUxMT9/dmasXKxpKK3TRSYoRuPlTK+4b/DL
27J2TnqcPBDrqS4uvaoJSYwONFsMQen1REhklEzC46qMqobqTr+EjCjeGJnSdRUfPVHcE5iSk5Ob
ESPDVFUVvSFJkbRP8VixH5OBNBMmm/4ASa82SGdt3bBgZlZSokKsunK5tCcoOTZYiJmk6JAkZET7
u7pcQA22XmnURaYnyWiNOCma9treyIUrZyeEmXREKkuPH20MnLls/owwzZUL5b3yxJhAggiMSEtP
zc5KN39S5NqWrqDMeckhQtzYeenEeXXc8jWLZicHqMoKqowxKeHmcH5Q2dxjIAwDvZQ8PSWMa9Sk
+pqrW4LzN6+YlWOmnBoRIBSY0OC5jhm7K747WidKnbkwPz0uYKizRxShCBDx8BYQGp2UGC3sqteE
pcQEuAQe2Vy485I2MVluOx9xLoup5/Ox7UwD6HfvI+DcBu08sgt5Qu4n1lukceH+scjNl5SwvU6p
GxtUASl5efFhoaFhcWkz11y7LBsir1EX8PliSUBIeHzWvPXLEqia4pIu0kQMFysycmclBrnkdbhb
J7vLL1boYpeunpeToAiTKxKy529cnxs5qnieowVmRY7+zX69jn2P6VeCEBACkV9QeOLszHBde8eo
3xRKjRpvsutKzWB0bl6SzD8kJmdWvLH2SpsOWAO2hot4qKmiPWTmzFiTA6f62zq0ESkpchFOSCNy
0kMhYQKhvkk/IXEzZ+VmR/k50LxBbxD7BUgtlCVikYVv7uuUtq7sKpk+f3FmpCwwMCwhZ0GuwuQ6
+Xhzu8tROr1JVvviiixwF584bjOCbvAUAm7boAca9mw4N3aGhBIRPtjdrTa7TZNlEgT9mBydqrH4
zIk93+7a/vX+gwWN/UbaT+lqjn17tLa/raLgu927P9956ESVSs+9tRoXR6SlhWqaGpUm2qYbd+68
2G1uh1I3lxzZu2f7F3u+OXS+pFUz3PiwOJS+/dKhz/eXdxlYApLdtfWDoakZ0az4jSDoKbeJq2N1
6rbSM7u//vZYbXfZgZ0HKgdovihd/ZHP9xeaBwZKU3vo8x0ffWr5fPz5qatD5lrkUFvFhf17dm//
+sC+M9UdtJdiyJadNZGt0w1jBAhZOVFwqbhQNOygGJ55MDRRHuooP7/v210A4NHLHVo2MeCk/Pz+
3bu2f7V/3+krFk549Ez1K7t1skgFPW0nwiLlmLJbxVYHpWssqyFTc5ItUac0wB/rU/XRygSXJJL6
2bHNaoxSXzlxaG9hmxkPo05PiiX2qRWe68au1k5pfBx/5G/LG4+Q3F2RbCvY9/WFTkPX5Z2f7fh4
X7mV1HyUrK7ziePSzaiStxBgP6vLvg3HS3yj4snHPDIuTc5LC1IW79137nJD79CIazQom1o1oSnz
l6/csDhZ2HzpbM3gsKWTHcWnSzThuYuXLk0VtxVfrrG4Pjs8cH+5TDTU10f7txFHpW0sPNciSl90
3XUrl2XKRBg9Boz8Pth06Uy9NH9xZjgr/qUGelRaqSKML6dB9lQVlKgVM5cunR3LGzbj0qQVW2+4
9eYbbr1pRW6oMCglPcEUOho6i0+cavbLWrJmy4aFWaLGk+cbTdKaU8YjZGNYZIc5pkiduquuoEwZ
khwfahvq8mFIqsrOHK4cip61ZP3K/GRBTycDLXBy+aQVJ+caRn60A5gaHNTgEr/hIUog8RPpNIO0
uzUXSDLXtgelJgdbuh0uSczL8qs7e7iwvqunubgGz8yMcDhrMRpNO3bMGWkKdu9QAw0X95sGkoNH
LjX1WgZp7uvUgLofC5AaGwqOH9r57cEDZ6raNVb9wJY3XnPihJGIzF+zNjuYCJtxLWhzbSbks90r
fOK4RwXV9hwCNoet7Hcx2TTloTQD4WvbVIXhOWs3Ls6RqavOHv5696lLzQNmQxNF5S1YmBkTHhwQ
HJGaFSdStisZSxdGz1w5OzEqNCQ6MzkKh5CL9/whBI6YwciOdE20tUMao0AaHCj1k4bGpmeyg15w
gX01Zwp6oufPSQ2yHr1gPx/GEYgyzmeQiJm/IDUuPDTIUdSHQwJdKCQ0taVV+rg5eeEQ8oGbKarG
M+bnJsj8xNKQhJmpoZ2NzVqLT7OQVchNZFmdhmy58PmnOz7evmvnwaJmQUxmnH02mxtDStdaVqWO
nDUvLz40OFiekJMRP5y15+aEjuK5CkUaSaGQiVpxEfxtJEdW9KjBpsbO4Gj27hWBX3BogEjbXnpg
/4WOsPS0EIchAh6StWrD9QvNGQ9cEp0xI3fWnNXXbty8NIloKDhZ0m3qEnzXDQajsau0WCXPXbJx
zewE/dXjF9ijCwdvPFJyw4gLzElsnBCCRgU2g7oLboKPbRduRVW8hYCNk+X86ulTsj4WI5uhFfhH
zli8asvGRTNCB66cOn6hhc5DkJruprLC80cOHbvQpKP0WiZpJxCJLGIQMIslYTLLpyG9Drwos6vD
UgsPSsrPljQc/27/mfL6HqtUIKXvvny6tF0UmRhpt7YkAjqmcIynLdw/TM61Q4CjOqWuPV86EJs/
I9rsuyl1bx85UHFkz5df74bPjj2X240GYNxUKGyErPV+dSJm3rbbtt5565Zt169aEqe5+N2pSo6R
iQNDU6rBEBzFtXhq4sSo5uaES2ycEAhMA5WlwNqpHoPcNhMuGrs7e/3C5SPrZGRv6cmi/uSFmzau
u3ZxZnBrweHSkYHWmZkRQbGp6ZEBIkLgF5YyJ1PWV99oTgXxXDe5yeCsBbNgu41YKs/ITZR2NLeO
aNuON0fN83ZFZzw7+J1PnDGQRLeOEQFOb8u+6PqZEZc5GSePzHcMhP94CC4MispdsixfoWto6CIp
bdulI/sKO4XRGYtWLF+SHOCygKyK1EC3Si8NCbZ1rrg4csayGzbOTxEriw7u33+5e9jNUoN1ZfUB
qWmihqKqPhs3j/sHy8SaLqX11JefLf7AUlN7saI3Km92zPASPUTNhHzW+o03bbnW/Nl82y0rZwS7
Ng3GCbF/SNyM/JwQVU1Tv/W0nAdDI0VCaMdJnuZkwyYXOcGl/lJKOzScFTJqtXqJNIBJQ1B9yh4q
OCSQaYrsqq3WReckBRK4aa/cNfNjNFeuNjMe3Q0d4/4B/gK93jKRGLmRdd1f6k8YDczEyk8qxWBU
Z0YPW954G/dIV4TMVP3Z7Z999TF8Pj9gWc7gZNsNEFDV8ULA03Exm28i29ABnyxDh5ekgd0UUGDf
sb3zpfcjw2qYZUHMFAPqe7v7R+JO2EksJiiShF2/RdWCjEX5GdEhfiMxl1ssgyVV1/T6J8SHco5C
hH94+pwlGxdEDlRdbWXWFYNSly7Myc9P0FZcvmqTnibCk+L9lNXV7SPsUgbNEFfQbAqn9brhZIlW
x4rDKU3j5UtKeX5+DLPBDw+RywW9rbBJwV7xMCa71BuMRhDBJl3OgyEeGBiE93f3jORymPtGOHEN
aTxYHibuae800HOa7g4lLg8byagaBvoGhf7SkUQxpYXQf2S7jdDfX0Jqh+i7nRY4BzqSoSZ7YXnQ
HwQx5Zc5r+Oi8MjggdZ2Sxoc0soDuMSf2cphxxtf++ZMDndXNA1rLp9AFSYuvOXWG++Az7Z1ps3i
fOI4xQFV8BICE/SSB+KbGYM7Zwx+kzPgJbkgqQan8uAYSG1tbY11gSsdHR3BwcHDm5ExarD54vEj
+05XXG1R9vSqmisLi1slySkRQkIgxDTKjl7N0GB3XcmFGrVrVmu2T51usKe7seLCgZONgpSZObZH
JSh9R8XJgtq2fq1eP9ilGjQGBA2nYHH/qJgwES5SZM6K6isparbOoAoicmalEg3HD12sau5Wqboa
KgthO0Jlr13OBJeEhEj6G682qNSqtqtnztaozaZrst6h5sJLnbKc3AQxBU7USJKmfeWi6Ox0//bi
C6UtfUM6rbqroaKh1/wDs37HKT0MXCSsfGn6u2svFpYNyFMTgkwnRgjMoNOavBwPhrg0Lj0Waygq
vtqlHujrqr5QXDsc91s4KTpv4kQPa4bAie1cwarbEOHpqYFtpSWNfUPqtvLiBiI5PYrZnEvpdFpM
zN4CQiji48n6S2WdgyCevq+2rH5QHhNt3hZHmk/dGyAHTRnNJ/BJ82qeuvrkwX2FrUMwltdd+PZg
YVWzsn9woLvu8tlqXUx2kgznuw4ZXv/k7KjBiuKq7iHDkLKipIlKSIkdTvHb88ZrDvxdURoYIOjv
bO2FdYkh1nEYHlmsGuBn20tmiciautPwI18cRzn0r3RlJk3hUmA0GpQFL774ogxcpkzW3++VEyLg
FGDDKJwBgQLO16ZAy/7+/kyYhItl8fEhhq7Whtrq0qrmLq1/4uw5s2KkAlGQTNRTU1peWtuhFkfN
jKMa+gIykuSwcGR1AoIabKlqMkSlJ8ogDjadEKltbK6orL7S1N1nkERnzl6QEz4cio7cKBAJ9F31
5SVlRaX1nVj4zPnZMVJwmawTIrgwOFTQWlyplCXEBo2E6LgwMDopWjrQVnP1anl1e6/BP2n2nJxw
sHKbcxl4gCzQ0F5TUl7fPuiXPDdD2tqGxaVEB+B9VYUFzQP9LVdLyytLyypLyxv1USkx/gJ/RWyU
sKe6vLyotKaxW+cXFhkp8yMYsnBoxWqRwSxpQ1N5WWVZeXV1U6daGJk7f2YqnMDACCHZV19VNyBP
iQ0N5sYQF0AWWdJnur2qpV8Ymx2PtQ6EpJlPiBAWTsrKi0pqGpV6P3lEZIiEneKAEyLtovhkGLhM
3Q+XKqJkmqbLl0orO6jIvIWzY4Ht4aJuragdUmTCERbL0AIARkX699WWFxaVlVa3DQanLpyXEmpa
sRysPLLvYEHV1U6t6fBeeVV5MxWTFuGPDXVcbegUKVJjgqWyiDCq80p5ZXHZ1aZeIjp33jw4Hwjn
M7mvm3gTBkfF+Kkqi4ovVrTpwrOX5McEMJLY8WZmmuxpqLM5IYLzdUUcFwQGinobSoorq9uo8JQI
S7qcTxarNJEDtkdj1egelxCw2dlmv1mCnSa2TxmPeXMF5wkRnH7WD4wCLc1eOUXtEjTTpxLn4R/O
iw4wceGA5nghajpFXSRdsirdl57+4THh9bUnDndnrHX1FLXH2kWEvImAz9gg5ylqwrTP1ZviI9pu
I0DPjxyUMQ/ObrOEbkAITCsEJs4Gh+eUyCuPZ4fj3HzOMOCFLTXeE04cFIo3Fxw+cr5y1Ke2vcfc
6ClT/bWFh4+crTWEBrn81LzRt4buHH8EfNUGcVg+odeHW1pQ1sLT/YLzkCXfpAlFvp6GH9FDCNg+
EIZGxDdskDtrMawzFCSPV++131XjtXXb8RIJtYMQmFQI+LANQh7ZacpkUmHtU8w6DnuZXTXAMwqQ
fUpxiJkpg8Bks0E6j+zaebApoyTvCcLscGSa4OwQ7J3Fkypr7D3kEGWEgGcQmOQ2CIeF6M3PnkFj
+lJhMlOcR3348hIoNJ6+PQZJ7mkEpoQNEvAKPBQie7hrcD64j3NtF2WQPQw9IocQoKf99GPVhyNN
zjhpgs5JO9YQca7wUle3Ck4QI02OHgH7IxuuB7/IKY8ed3QnQmAYgaligwRsfWtobmnvViHdeh4B
zt1vjlPMnmcCUUQITGMEJpsNEuGKiKAQGYmN02M5p0LX4IxqnYa6fEt8rkfTUwE7JANCwBMITF0b
JELDwgVCEUnyPuXdE/hNVxrI205XzSO5fQWByWaDpqwF2pDsRu/hfMqPD284d0M0VBUhMCkQmNI2
SPQou2CvBdr+ZtUV7bc0Ou2pjFOm70W7jJ0ihiogBBwgMF1tkBBhlDwIHuWKDolY75Vhe1gXLYd5
3Opkmyi5KB+qhhDwOgLshbhpaYPw6jFDcIBUImHeIOx1zH23ARtPysS5NssIThfxfFdCxBlCwLcR
mPY2SLS0tsIsWyqe3h7Z3ufy7S3nTBkjH+3bZo64mwQIIBs0K4loaWvr6OwSCUfeRzkJlOc9Ftnd
gm8nI0oZew9/RBkhML1tEH//k+1yuTw2PkEmFSUmJk7H/sBeunXl7+mIEZIZIeAGAjqdrqmpqa+v
z2gceWG4o/v57M6NNieyKry7Gd4jGhcXJ5FIXOeD8/nI+HfHTxNALkSmCBBPd4/MPKmEBpX9lXPD
jevYo5oIgWmDALjjiooKhUIhk4WKRK6lQxn7mpw2CC9LV6mUXV1dWVlZYrHYRVVzP7E+PDJaHh4h
ErlKxcXGUDWEAEJgeiIA0XF4eLhCAV7FNXc8+WECSSMiIkFqkH2M0qDD0ywA7dd56UgZBchj7GXo
9umEALz0PjRUPkqJJ7MNgtSQqHFL8B67QrS3tgAJV9M9brXmy5UdbGhj/8RsMfZlWRBvCAFfQgAe
yeBSdDzlbBCkdteRyuwKsbV/VoVumqUsbLoCe1i22UfhSx0d8YIQmDoIIBvk0SUxKPB7ryeoROc3
dZTNJ4njgx42e93Yx6DRduOp3zmQhOOCALJBZzCb8si7+/3vbYlyVnOS/26fi6BzxHThfOMA/RNK
Ik9yzSP2fQUBZIMuaGI6rew5ftyEfb4Crem50IFQFYSAGwg4tUGoQNsd7b55bVDfWnTkdHXv1Hs/
6HTyyJypK851PLrfoOe3uWFqqCpCwH0E+F5/x5ge/KFrPPjqLx+9c/PatZu/96Pff1jYbXqUOzV4
4e1f/2VnrWvnT9xnbOLumKIemT3MThy4qGWEwPRFgNMG3VySofoLXn34vt8dwRfd99xLL//mnjma
nc+/XaiZyqBOUY/MTI4cryQwmeKprGIkG0JgIhDgs0FOXrg9ta7knT9/2Lv2z2/84d7182fkzFt3
358+fP/H86QTIc54tUlg7XWWz3g16a12bMZkzq3m7LZtzmt6iy1EFyEwbRBg8r+0xHzHPRg8HNug
vmjXvpbsW+5ZJBt5ertQJORAk1QVffybH2zbsGrtDd/72atHm3XmOsaWIy8/edvGlSs3bPv+r98+
3Wag7zR0nn/3Vw9sXbtq3Y33P/veRaVvvdCOSN79yUvZ+GuJyinYazh3UDCOG6WJp6DKkUg+hsAY
bJBsr6jqicjNjXI2kddVvvXEjz5ULX7q3++/9dttwUefe+TPx3opSrn377/7LvD2Fz/Z8f6f7szy
x0RmOoOX/v34r44q7n7+k68+fv4O6e5f/nFXuy/5ZEJ0YGcU1bzrzZd8TJPus8O5jGvfIdAxPPeh
RXcgBFxCgG+lDm5m7zR1zQYptVqNBQYFOnHIlHL/Gx+1Lnr8ufuWpcUlzt7y82dvlux77dNqQ39n
l85PkZwYGRqRseru2xeHASGy9ZvXd4hu//WPVqeHh4RnrPvhnZkFu493+ZBLJjBVN9bX2VZf7BLi
E1KJbzWAb/nOrdUDtypPiPioUYTAhCPgrg3CmztdLzzE8YCAAEzdr3biLg1XSyt0qXPzh1Mb4oy5
s/wbSssG4rc+cU/YwaduuvfXb+y/0ktTMdZX12lqP3xs08aNG+Cz6bZ/XtCp+wdd59XrNQk9ThhC
0p/56a+93pRnG6APbrA3EQN9V8JkNhsolexZpSBq0woBBzZo45AthsnlpvltkIhMTw3qKCvtcBbB
mvhgAW/yC6YRAQ+Z94PXvvjkT1tCil/9/tYHX7+ohnoSP7Fo1g8/3Lt37z7z59CJU+/fn+QsLzKO
aiVqI6K1LRd+//IL49ioO01xjp82m4jZ9BzscLTxxez+5A5HqC5CYHoh4CkbtHm9MnP6g+/YiHjO
xjWK0i8+LOhjXDk10Nk5YO3YhSnZGaKaS5f7LZf1Vy+VDsTlZAaZvbQ4au7NP3vl3WcXNX/y2Rkt
JkjNm+FXefqs0p0Yfly1TWCrNlV2YwPR+eParOuN8WnL8eEfp/TRsp5TiFAFhACNwITZoGTuQ8/c
KPz2Z4/+4dMjl6oqCw9++JuH7vzxx9UGDBcKRdhQr3KQxPCwTQ/frjj5yu8/Olfb1ly6+8Xff6Ze
+8htGZrCN5798/bz9arBvsay8lZ9ZEKcCMODV9y9Lercy8++dbxWqe5tKdr90f4ayx4M31C3ALvv
1yeLa1SJ85+aHQ1PhvMNrni4sN9Mw0x52D8xf4/Ra/s0Fog5hMBEIOCCDba2tkZFRVuYG5sN4tKE
JZuuCW8+/u2XH73/5YmrmugNP3nuvpmBOCYM1Ffv/ejr1pxt18SJFXNW5pOFn7752pufHK4LWvXU
H55aHSkS+vsPFH/93pv//tfb31w0znnkVw8vVYjhxog5axdIy7965/V/v/nJwdKBsBnz8tPk8INH
Snt7W0xMjIuk4EHS9i4Xx79QUgN9mFhat0jjo291Yq/S0rLaX3ERA1QNIYAQGAUC7thgQUHBrFm+
Oucehezu3FJUdGnu3Lku3sH9VicsQIYp4rGQcBepTEA1+2GWc+BFuyYmQDeoyemBALLB8dKzDy0y
OhLZfr3O5gq9TIcKQgAh4CUEkA16CVhrsr7nkZldxo5PZIIY7K1vyB2PS3dBjUwLBJANTpyafc8j
M+d5OPex2aQmXDv8M3HwopYRApMQgbHZoEAg0Ov1k1DssbIMUoPsY6RC4BRGYDh8xkjIM7c7zgWj
QNgzKCMqCAF+BMZsg0FBQSrVVHxOjrNeA1IHBwc7q+Xkd4KC4y3mj88VvsM8aAXP51SFGJqiCIzK
BmNjY7u6ujo62qdPpAySgrwgNcg+xq6A43stZxRrsxomZvcbe1HOwWG8MQqKbkcIIAT4EPC0DYKH
amxs7OvrMxqn3ls+OECEZAVEx+COJRKJ672Mc/ebb3hkEIKdNZ6S2Qm0h9r1ropqjjMC7Fh4Cj/s
xcdskHs/Mpzvpj8+UVxZzfMJRt1hwuZgIcq6uAMeqjveCCAbHG/ErdqbiL0W9vslgCWb4Yu9/2ZS
h8xoo/SE9m/UODcCyAZ9tWcQsKRHfyay2B+Wp69MjecBoaB4IvsWats1BJANuoaTt2uNV4xss2TH
6aQ4x21vA+Bt+uxjLExbNodfvM0Doo8QYE9D6VgH2aBPhkrj5ZHtTcIn4fCK5TLRB53BYAL/6YOA
V2BFRMeMwPTpgZPHBk0nROiP54uDSJAzNTzZ88UOEGSSMJ5HGVFECPAjgGyQwWaS2CBB4hj98VZx
0CemzPKdU+zsg5FJPfw4lRdV8CkEkA3aJG1o7fikDXoza2GzLseXJp4ay3ecKrcZn9lWOn0mjD7l
m6YbM8gGJ5sNes4jswNedr9nD0T2TtknhynnZmsfdLB3cfJBMSWXLp2DhWqMFwLIBpnAaNLaoOc8
stM1K85dB+PVV73SDl+cywmFjfiTdCjyCo6IqIcQQDbIjojtl9Angw2O2SMzY5HN7IDTW7F7jIc6
4XiToeXizLTYX+Tc44l88XjrbKq3h2zQxhHzzdEZy/VhGxyzR556uyYc268P63KqOx4kHw8CyAan
UNcYs0d2gMV0WLxyLON0QGAKGcMUFGU69MCpZYM4Nvw0zrqsBld7JDNzZ26wv0Kn2Kd2RMnuClNb
Uld7Bqo3XgggG6SRnuQ2aP8A5BGPPNKVTEJSJlFJEiONOGXEjEYc/jZoMd3QvYnit5fHWIBgn4Sh
czTs4swj/+8q9ugZ8nd5xqdyRSKbYL2v9OdP/vFSRUdgQpCRFGq71fLE/Pt//uTKGOzC5SqtwZTM
rSvceaQYu/fZZ1emyLxiB5zDzHBLarW6qqrK8s1O0pSUFJlMBk+JFYlEfLx9cQVLcuGFAxRpNOp1
FEUJRGJCIBy1pAMNZ5v0CZmp0R0lB/sCZ8RIOksuXdZqpNnXXifHNVfPf9euGpRG5s2cmy+iX0xD
GoaUVZdOXYQegAcm5C9Zaqg/dKGkTSIUBsfPypyVJSbMOqNInU4rEktx3NDTXNenrBkU52fEkQUn
L+Wt3+hHaiovXYyKT9IOdrbVDWWumKe6eEgTNT85ekRlpF7T03Cxsn4gLX+xQh4w1N1QXXxMGLs+
LS1SCC1oVaXH93RrKGDKP3ZmTqriSuHxXvVQcNLi7FT/8vNXkhYtVl7a1dAx4BeWkjNnUYCfhStt
z9XSs4UavQGXhucsXClSXSq8WEEQQv/wnMz5M/2FY337jr0iujVYngKLDhi1ity80dI/qaqz+y5U
9SjSZ18zP8NPMGJIPW11XTUXi8RLb54XMUJa07Jz79V5c0NOny7uE8fftWWFePgOUqfRYhKpGNf0
drW2Np2tGrjthmWdxQcu6rPXzY0T9JXsKpLOS8IrLl6JXbEsLUS//8tzCzavk4lHrF7dWXeh4KIx
ctay3CQhpW0sO322wbh8xcrokBEr0CibT5S1rluQdPTAxfTVy9uO7yrv1KTOXzcvTSEkcMuvy+Yx
lgVclV88XlzdReLGqOxVq+bEn/jy9dqBQCEVMHv9yqyoUAv7Dq3VTWQnsrrFIzOgmlydKx6ZGZ0c
O2WHooFHvv8UJhfoXplH3Zlh/6TnwQP//Kf2+idXBVx949PCR5+8zw/DlGfffuKz1nV5pgf1x8xc
uX5OkhfBc90j2zHhQY/sRQE9TFrfVl44QIrDk/IChYM9/dqwcAVGGXuV3UJqsKOlXRqRGRkVPNDd
JQ4OE1u8vokDo7avrV0Vm5DIYmegvaY9NCFFPPoByMOyuUJuPDyyzdhv00Wtv7ZVX6rv1ibnLoxg
DxLGwcbm/uiESH5oqf72+qr6diI0fnZ6TG9bjTEkRS7FMH1PU6deq2ru0vrNyE0PFA+1NOmj4mTs
UErZXK2RxsaaatOFVDbVaPzjY+VuPMfdCmrX/azrNV3R5cTVwfF9Jids9sjwh/k09bBHNsXFpBFi
JQpiZIrEzTHyPQmsGNl0JysudhMU8MhPHlYuTZFXdqg/XSWaFzmittJv3vrblydsYAlfdsd9IefP
xdxz/5L4//3nj8mrHl2RIfcudPwSWcXIyCN7Vw2Tg7oHPLKzaSWHtxqbDU4CZF30Ki5W83mBWSOc
2RnT/tX8fM6RZ9nDV9ZzL0hLgph9JoKR0810qlyCv7kIk0lFlSqrt7/MuP7BO5fFaA2WN04B+Yj0
Nc/cvULZNbTrHz+///7733r3y7/84nH446ln/1Kt8hrMnDLatzYd1k+8hjEizO1n6diI/tgU+qL9
flu6mps26Ov4u2iDvi6Gq/zh2H6Lvk0u2BQl0+8UAbcLcw4IkE0xsjmhbImR700Qvr08zkJ+bOMS
xMi/PaWs/Z788VPaeaHG+7L92Vxvf/Gxg02hUcGWDFRPv+jpP/wqTorVXTrWHJB95dAbcQvvwJSV
C5duCJKMbccI0+P5ujJX5DL2GPmDMixktJM5V9WL6o0jAhoDdk3c2PLI7K5I9zrOzsnukGOzwXGE
x2FTo7JBX2Heo3yMeGTT4GrBxeyj4W86a2HUm/6Fr3otph+6L0749oqxemS1Hruqxj6rxz66rKq8
K/SHxwfvTiVWxEGieKR8+a+nS/SZCaEWj1xzpfmhn/+099xH39RGPHj3hj3vPZ+44vvp6lNvnRm6
956tScGj8m3s3uygZ3P9ZPLIlZV88YgreeR+nUc1iYj5AAL+Ikwwxod2sSNizkUah7ljH8DATRbG
YIMWNzW15gT/H6+uj5/VMz/qAAAAAElFTkSuQmCC
--000000000000909abd05edfa7320--
