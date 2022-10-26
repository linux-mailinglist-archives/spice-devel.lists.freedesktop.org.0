Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4780660E3A5
	for <lists+spice-devel@lfdr.de>; Wed, 26 Oct 2022 16:46:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE08610E276;
	Wed, 26 Oct 2022 14:46:45 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FA1210E276
 for <spice-devel@lists.freedesktop.org>; Wed, 26 Oct 2022 14:46:43 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id k8so18088794wrh.1
 for <spice-devel@lists.freedesktop.org>; Wed, 26 Oct 2022 07:46:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Q0Kw8K6HD27xdustDf6QiRdV0gOjqJsEgvSEo5jB9jE=;
 b=OxnTPJpqmvrSf5I6yotadMVOQaJa0PljizKsa/1BOz4S8j8SAU9VhsRd/3Np94/BLA
 dV9BM9Z9O+r1UIFhAvP8I/tVbinnQOkdmlaWndWJUBafULRWcRdb/C/J/wfwNhlpcwHD
 6LVk07GX5AwCMPgrfIIsPtW2y8knNm9wUYktPQnVnyHJIx9VsAig6X++Nn23sp50TdGP
 Jwe0hLaP9nCLHxP3SwpVEEVCYQgNIgXNYw8xeUVbnmXyllgFl0hSiJuK+JJVCa11ESss
 D6qGOyGS1rkkc2fHIINk/Nzv3/GXGmoarnvFeFrMQrD7EqYqOvJbQRN8kfEx1o7pPHKv
 1hWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Q0Kw8K6HD27xdustDf6QiRdV0gOjqJsEgvSEo5jB9jE=;
 b=yP+VQREG1i41sib7I/HPF6yv1Cmf6CyBLQ4YX6JKjqhGHd3p/6/IWW6JQSqfKFImd6
 xADu8AvR6Y0ugZ7R+YZEp75clCmr6W7dTJUbCLDDDexezJsD+g++njsj9vWSVsDApLpF
 GQixEWkewNyNXVbOOBPASSt+IE+fa3aZrBgmmbNxdFxBfCgY8OmE2tulfFOpLP+tscgo
 94amITBatJzpGNIJiaGmgNbF12bxszl1LCUKEPzITNw1Zz6xg6sS2oozG/xsl16eSLAX
 F1P72vFAQj3sN+x0ddqMeTlF27+BL+fcQdSiTAf3BjlRhTpACyNC9edmokFXlHb6dwi9
 pXHw==
X-Gm-Message-State: ACrzQf3zObnVzFP4lTM64XTUv2ofgEYnKHhJtwpJgK4BP0UTnLiHt3iK
 J49arG5+OPRA4ht/J0cNbmcg9+/Z162gEd142QrDaLlLce1TAg==
X-Google-Smtp-Source: AMsMyM4rFlA09hwsR1mXXAkdlMMtY4Wi6Z99TVj9lWuYmqP5er/o29ciZinaXl+TTeImuCYOotV12K7YRr3vknE1nAE=
X-Received: by 2002:adf:e583:0:b0:236:6280:57c9 with SMTP id
 l3-20020adfe583000000b00236628057c9mr14716171wrm.262.1666795601513; Wed, 26
 Oct 2022 07:46:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAJ+fVVw1h_L+H-nbhTmohPZrQadUc8ZUEvNM5uCcn-ZxQmxBvw@mail.gmail.com>
 <CAGoVJZxi6YbcnOUsaQPQQiZ8VKJFOk2Q2tr9c968N2ycryBbGQ@mail.gmail.com>
In-Reply-To: <CAGoVJZxi6YbcnOUsaQPQQiZ8VKJFOk2Q2tr9c968N2ycryBbGQ@mail.gmail.com>
From: =?UTF-8?Q?Carlos_Gonz=C3=A1lez?= <piteccelaya@gmail.com>
Date: Wed, 26 Oct 2022 14:46:30 +0000
Message-ID: <CAGeBE=zG-vNPMgf6DkojJobkXFHWJzFaDd9cYrYb_f70ouX-tg@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="000000000000bdd15b05ebf117d4"
Subject: Re: [Spice-devel] (no subject)
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

--000000000000bdd15b05ebf117d4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Proxmox has an excellent article about this:
https://pve.proxmox.com/wiki/Windows_VirtIO_Drivers

As already mentioned though, QXL DOD is for Windows 8 and up; for Windows 7
is the "legacy" QXL with no other suffixes.

El mi=C3=A9, 26 oct 2022 a las 11:28, Yan Vugenfirer (<yvugenfi@redhat.com>=
)
escribi=C3=B3:

> Hi Ksawery,
>
> For Windows 7 you should install the "old" style QXL driver:
> https://www.spice-space.org/download.html under Windows Binaries, Windows
> QXL driver <https://www.spice-space.org/download/windows/qxl/qxl-0.1-24/>
> : https://www.spice-space.org/download/windows/qxl/qxl-0.1-24/
>
> Best  regards,
> Yan.
>
> On Tue, Oct 25, 2022 at 5:39 PM Ksawery B=C5=82aszczak <kxblax54@gmail.co=
m>
> wrote:
>
>> Hi i have question
>> How do i install drivers qxl wddm dod drivers on windows 7 i use qemu?
>>
>

--000000000000bdd15b05ebf117d4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Proxmox has an excellent article about this:</div><di=
v><a href=3D"https://pve.proxmox.com/wiki/Windows_VirtIO_Drivers">https://p=
ve.proxmox.com/wiki/Windows_VirtIO_Drivers</a></div><div><br></div><div><di=
v>As already mentioned though, QXL DOD is for Windows 8 and up; for Windows=
 7 is the &quot;legacy&quot; QXL with no other suffixes.<br></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El mi=C3=A9, 26=
 oct 2022 a las 11:28, Yan Vugenfirer (&lt;<a href=3D"mailto:yvugenfi@redha=
t.com">yvugenfi@redhat.com</a>&gt;) escribi=C3=B3:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi=C2=A0Ksawery,<div><b=
r></div><div>For Windows 7 you should install the &quot;old&quot; style QXL=
 driver:=C2=A0<a href=3D"https://www.spice-space.org/download.html" target=
=3D"_blank">https://www.spice-space.org/download.html</a> under Windows Bin=
aries,=C2=A0<a href=3D"https://www.spice-space.org/download/windows/qxl/qxl=
-0.1-24/" style=3D"box-sizing:border-box;color:rgb(51,122,183);text-decorat=
ion:none;font-family:Helvetica,Arial,sans-serif;font-size:14px" target=3D"_=
blank">Windows QXL driver</a>:=C2=A0<a href=3D"https://www.spice-space.org/=
download/windows/qxl/qxl-0.1-24/" target=3D"_blank">https://www.spice-space=
.org/download/windows/qxl/qxl-0.1-24/</a></div><div><br></div><div>Best =C2=
=A0regards,</div><div>Yan.</div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Tue, Oct 25, 2022 at 5:39 PM Ksawery B=
=C5=82aszczak &lt;<a href=3D"mailto:kxblax54@gmail.com" target=3D"_blank">k=
xblax54@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"auto">Hi i have question<div dir=3D"auto">How =
do i install drivers qxl wddm dod drivers on windows 7 i use qemu?</div></d=
iv>
</blockquote></div>
</blockquote></div></div></div>

--000000000000bdd15b05ebf117d4--
