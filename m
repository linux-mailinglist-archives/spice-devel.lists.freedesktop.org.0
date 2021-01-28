Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08810306A9F
	for <lists+spice-devel@lfdr.de>; Thu, 28 Jan 2021 02:45:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84A666E462;
	Thu, 28 Jan 2021 01:45:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com
 [IPv6:2607:f8b0:4864:20::d2a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1C3E6E462
 for <spice-devel@lists.freedesktop.org>; Thu, 28 Jan 2021 01:45:38 +0000 (UTC)
Received: by mail-io1-xd2a.google.com with SMTP id n2so3974494iom.7
 for <spice-devel@lists.freedesktop.org>; Wed, 27 Jan 2021 17:45:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zDjPNV1Q+62eEB71AUyzTZDGYdyAl/SJ22q88Guct+8=;
 b=B/Hh8QHfHMS+iTJYDR/4D/fxLJcpLu5HVT9WGrjsMIzBRP0ghyMI4IW47/fYgKOIda
 P+DIfL0MvBeLokeDcx9L47VFEOVOKwRdP1o/ghQ45xLW/KpvRFsevgs/dphTYoxUF3vw
 u3oDCqPe0G5HilaPglkq+1xCExHwRq2gTF/RUVQklg33jGq8uQE86nYOCZZx+8A2gcxx
 ubdCfTbgCbz1YW/h5hW3ecuJAXL6fZmxyNU4tmPZ4B7cCs+7IOjw0HWN5H/a3dsK4Dsc
 4+VmgWT8ENB5EgqhSdt+v9ukgZqRdkn3sBDkhznkKIzyF2KP8Rp8a/SOmag0HcJ7RRaS
 52+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zDjPNV1Q+62eEB71AUyzTZDGYdyAl/SJ22q88Guct+8=;
 b=kuAUw5qyQqL93DmZ/VYjaxojvAxeAmMYl1mYeFP1e/KuDd0KkIWTNxB4fs8iYAxeLa
 8oKc8nYt/j5BFZ23Slsn+28jpcNrrt6+b58amQapxMsphu1yak/IaH5BqdVl3Z52W9Ns
 X0Fxi1L/M9NaYaV0AL7ByufGUHGvcwEmlTf09AMbdmlqiVjih/zoVxuJiSQj4yg1x7gD
 xxJRT+icSeN+/+0YDr36GQkGgpdsJpfzKPhGc08rdmbJCSnJILtoGRFyFNFcc8Bd2vMs
 lmnwHaJnnFX4ltBEwnosbEoVrk6CV3n1vbPgNc/nvvBg8IeF1pYj4FTNt/PjcZslEZhB
 bYFQ==
X-Gm-Message-State: AOAM532JijW3FN74ju9TJz7QqIe5z6ZyollHUOwgvBpfLRZr3e/1izIz
 NdupLbUwjt+01Ur20cDpHhsSQqLRQ0lPMIBCh4FC/k8ZRsaWtg==
X-Google-Smtp-Source: ABdhPJyl2TbNBtR+DbWxKXQB6UR+NWJsYxpQphdQqcFAxqB9qj8fBUlgrflaDXm26aVnaN5Vsl0NnDOeCABh5iqjSIM=
X-Received: by 2002:a05:6638:229b:: with SMTP id
 y27mr11420868jas.136.1611798338146; 
 Wed, 27 Jan 2021 17:45:38 -0800 (PST)
MIME-Version: 1.0
References: <CA+5jrfnjJnAi+FSCcHxNsyX=fnRF4RGFBOsH-+CHUbdNxeT-Fg@mail.gmail.com>
 <16e2b237-ffad-6bf0-d714-0c00fb658030@redhat.com>
In-Reply-To: <16e2b237-ffad-6bf0-d714-0c00fb658030@redhat.com>
From: lx <lxlenovostar@gmail.com>
Date: Thu, 28 Jan 2021 09:45:18 +0800
Message-ID: <CA+5jrfn5GHRLN2RUu=OSBz6fjVjXHVHHxLqhdezVzxTXb2NMLQ@mail.gmail.com>
To: uril@redhat.com
Subject: Re: [Spice-devel] Is the data after USB camera redirection
 compressed?
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============0435388873=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0435388873==
Content-Type: multipart/alternative; boundary="0000000000006514e505b9ec0baf"

--0000000000006514e505b9ec0baf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Uri Lublin <uril@redhat.com> =E4=BA=8E2021=E5=B9=B41=E6=9C=8827=E6=97=A5=E5=
=91=A8=E4=B8=89 =E4=B8=8B=E5=8D=8811:47=E5=86=99=E9=81=93=EF=BC=9A

> On 1/27/21 4:22 AM, lx wrote:
> > Hi all:
> >         If I redirect USB camera to virtual machine, I think we send
> > original URB to virtual machine by USB channel.
> > Is this understanding correct? If we want to improve the user experienc=
e,
> > we need to compress URB data?
>
> Hi,
>
> If you build with lz4 enabled (both client and server),
> then it should use lz4 to compress the data.
>
> There is no functionality to create
> a video stream out of raw data.
>
> Can the USB camera be configured to send a compress stream?
>
> Uri.
>
>
  Hi:
   USB camera can support MJPG and YUV.   I think H264 is better than MJPG.
So Can we
let spice support H264 ? Is this feasible?

Thank you

--0000000000006514e505b9ec0baf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">Uri Lublin &lt;<a href=3D"mailto:uril@red=
hat.com">uril@redhat.com</a>&gt; =E4=BA=8E2021=E5=B9=B41=E6=9C=8827=E6=97=
=A5=E5=91=A8=E4=B8=89 =E4=B8=8B=E5=8D=8811:47=E5=86=99=E9=81=93=EF=BC=9A<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">On 1/27/21 4:22 AM=
, lx wrote:<br>
&gt; Hi all:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0If I redirect USB camera to virtual m=
achine, I think we send<br>
&gt; original URB to virtual machine by USB channel.<br>
&gt; Is this understanding correct? If we want to improve the user experien=
ce,<br>
&gt; we need to compress URB data?<br>
<br>
Hi,<br>
<br>
If you build with lz4 enabled (both client and server),<br>
then it should use lz4 to compress the data.<br>
<br>
There is no functionality to create<br>
a video stream out of raw data.<br>
<br>
Can the USB camera be configured to send a compress stream?<br>
<br>
Uri.<br>
<br></blockquote><div><br></div><div>=C2=A0 Hi:<div>=C2=A0 =C2=A0USB camera=
 can support MJPG=C2=A0and YUV.=C2=A0 =C2=A0I think H264 is better than MJP=
G. So Can we=C2=A0</div></div><div>let spice support H264 ? Is this feasibl=
e?=C2=A0</div><div><br></div><div>Thank you</div><div><br></div><div><br></=
div><div>=C2=A0</div></div></div>

--0000000000006514e505b9ec0baf--

--===============0435388873==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0435388873==--
