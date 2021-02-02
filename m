Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7363230BEB0
	for <lists+spice-devel@lfdr.de>; Tue,  2 Feb 2021 13:51:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A0FD6E17C;
	Tue,  2 Feb 2021 12:51:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com
 [IPv6:2607:f8b0:4864:20::d2a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 389B26E17A
 for <spice-devel@lists.freedesktop.org>; Tue,  2 Feb 2021 12:51:03 +0000 (UTC)
Received: by mail-io1-xd2a.google.com with SMTP id u8so16004444ior.13
 for <spice-devel@lists.freedesktop.org>; Tue, 02 Feb 2021 04:51:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Xn94tRO+jN5UjPeth47W7myZYsvahPqKLdD81nLSvYs=;
 b=UcN9VEUv5Jj8OaJL0r1h0EeEHvkbLPg62LC5CAg/d96LKBS4LpIX4nAMWGII1mb98J
 WQcvEEpKxo5iFn+nya9IQ6KUYB/07ZT9MrBLOVJwUGVPvqin3Gcf7sZmRxt9MJ0ZzXEN
 g5421iFnX3dmYOO++KLmDk41bxNegHFnwBciNOFaZYdVdqwqSn8VszOkFAa5hmYih7qJ
 5X4dFwfz2MyZEMh8uVpw4pcve06MDOKMsPavFhVDoG3/THfuZ8e5pFse1ArOScLb5Uje
 OVt0jjhBsqsM7VdAH8y+hrWb5bIZMRsD9FHlXpwWaL1qYCmHlD4aZZd8Ikd0oxQTyxaf
 jmBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Xn94tRO+jN5UjPeth47W7myZYsvahPqKLdD81nLSvYs=;
 b=rdbhRHJAIQBCfL18grC/uC0FwNe5q7WqTkMQPYE6ljsSJJ+4+itkY7+loBIHerDFI6
 YJRij7u1iZI+/k+NGuA7pF9BLJaSz9iP0EgLQmu3FVM59+Sm5DZg4xSQ0PtnDa0PFY2F
 rEDBVCj8r4E1o4HutcPbpmtwK39Aaku6yutaKpRztIyIBaseDMkGEQ4CxN7nNHQSq+2O
 1hFqkD3r1BOxdbPMGsnwaDqxopYXyrdUsGOdVxGt9xXNqoI7PZIF9/+ctWZyTMFAumff
 zX93apaEAqdcegDaipcq9cr7So+im+see4OvFoFlKU6HgRlBNY2n09Fv9HAmrpWihDK9
 S0rw==
X-Gm-Message-State: AOAM533ng6POhcluYJovmAJfK0IbRs2vc9GYy+2PBugWe5sWts6I6m/l
 ncGE4pDZoU90Wb8DLBAnESiN2vMDUqm5KISSieQ=
X-Google-Smtp-Source: ABdhPJwPdCjLk3c0LdlTrFwqtMbCQ3X7xBIcVs6R84TJYNfE3Z60tsKruf8mDrd9MHivMYZdyheVrp48+IGcj6RsyOA=
X-Received: by 2002:a5d:8ac8:: with SMTP id e8mr17749757iot.163.1612270262666; 
 Tue, 02 Feb 2021 04:51:02 -0800 (PST)
MIME-Version: 1.0
References: <CA+5jrfnjJnAi+FSCcHxNsyX=fnRF4RGFBOsH-+CHUbdNxeT-Fg@mail.gmail.com>
 <16e2b237-ffad-6bf0-d714-0c00fb658030@redhat.com>
 <CA+5jrfn5GHRLN2RUu=OSBz6fjVjXHVHHxLqhdezVzxTXb2NMLQ@mail.gmail.com>
 <CAHt6W4fZfzsh5QBejxBa1m35AKN6XmZ=L3-4OnMs5X+M6J1rMw@mail.gmail.com>
 <CA+5jrfkzL3sGE0g+06aNEKYug2Dfa2njG3WjmVMK6WPJUedTxQ@mail.gmail.com>
 <c2bb34de-0c44-ed62-6712-140c138e0286@redhat.com>
In-Reply-To: <c2bb34de-0c44-ed62-6712-140c138e0286@redhat.com>
From: lx <lxlenovostar@gmail.com>
Date: Tue, 2 Feb 2021 20:50:51 +0800
Message-ID: <CA+5jrf=8Y1P2rK+LHfkvJC-kBpDjGTgf3TbWa7wcEcyiuRDUAQ@mail.gmail.com>
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============1096484316=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1096484316==
Content-Type: multipart/alternative; boundary="00000000000049caaf05ba59ec41"

--00000000000049caaf05ba59ec41
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Uri Lublin <uril@redhat.com> =E4=BA=8E2021=E5=B9=B41=E6=9C=8831=E6=97=A5=E5=
=91=A8=E6=97=A5 =E4=B8=8B=E5=8D=889:48=E5=86=99=E9=81=93=EF=BC=9A

> On 1/30/21 1:25 PM, lx wrote:
> > Frediano Ziglio <freddy77@gmail.com> =E4=BA=8E2021=E5=B9=B41=E6=9C=8829=
=E6=97=A5=E5=91=A8=E4=BA=94 =E4=B8=8B=E5=8D=886:39=E5=86=99=E9=81=93=EF=BC=
=9A
> >
> >> Il giorno gio 28 gen 2021 alle ore 01:45 lx <lxlenovostar@gmail.com> h=
a
> >> scritto:
> >>>
> >>>
> >>> Uri Lublin <uril@redhat.com> =E4=BA=8E2021=E5=B9=B41=E6=9C=8827=E6=97=
=A5=E5=91=A8=E4=B8=89 =E4=B8=8B=E5=8D=8811:47=E5=86=99=E9=81=93=EF=BC=9A
> >>>>
> >>>> On 1/27/21 4:22 AM, lx wrote:
> >>>>> Hi all:
> >>>>>          If I redirect USB camera to virtual machine, I think we se=
nd
> >>>>> original URB to virtual machine by USB channel.
> >>>>> Is this understanding correct? If we want to improve the user
> >> experience,
> >>>>> we need to compress URB data?
> >>>>
> >>>> Hi,
> >>>>
> >>>> If you build with lz4 enabled (both client and server),
> >>>> then it should use lz4 to compress the data.
> >>>>
> >>>> There is no functionality to create
> >>>> a video stream out of raw data.
> >>>>
> >>>> Can the USB camera be configured to send a compress stream?
> >>>>
> >>>> Uri.
> >>>>
> >>>
> >>>    Hi:
> >>>     USB camera can support MJPG and YUV.   I think H264 is better tha=
n
> >> MJPG. So Can we
> >>> let spice support H264 ? Is this feasible?
> >>>
> >>
> >> This is independent from SPICE, if the camera send compressed data
> >> already SPICE will just
> >> forward compressed data in whatever format is in USB.
> >> If the camera supports MJPEG and YUV choose MJPEG, YUV is not
> >> compressed (just a different color
> >> space than RGB, often taking less bits but still not compressed).
> >>
> >> Frediano
> >>
> >
> > If the camera chooses YUV, can we encode it to H264 in SPICE? Is this
> > feasible?
>
> Currently, SPICE does not do look at USB data.
>

Hi:

What do you mean spice just forward USB protocol data?

Thank you

--00000000000049caaf05ba59ec41
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">Uri Lublin &lt;<a href=3D"mailto:uril=
@redhat.com">uril@redhat.com</a>&gt; =E4=BA=8E2021=E5=B9=B41=E6=9C=8831=E6=
=97=A5=E5=91=A8=E6=97=A5 =E4=B8=8B=E5=8D=889:48=E5=86=99=E9=81=93=EF=BC=9A<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 1/30/21 1:25 =
PM, lx wrote:<br>
&gt; Frediano Ziglio &lt;<a href=3D"mailto:freddy77@gmail.com" target=3D"_b=
lank">freddy77@gmail.com</a>&gt; =E4=BA=8E2021=E5=B9=B41=E6=9C=8829=E6=97=
=A5=E5=91=A8=E4=BA=94 =E4=B8=8B=E5=8D=886:39=E5=86=99=E9=81=93=EF=BC=9A<br>
&gt; <br>
&gt;&gt; Il giorno gio 28 gen 2021 alle ore 01:45 lx &lt;<a href=3D"mailto:=
lxlenovostar@gmail.com" target=3D"_blank">lxlenovostar@gmail.com</a>&gt; ha=
<br>
&gt;&gt; scritto:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Uri Lublin &lt;<a href=3D"mailto:uril@redhat.com" target=3D"_b=
lank">uril@redhat.com</a>&gt; =E4=BA=8E2021=E5=B9=B41=E6=9C=8827=E6=97=A5=
=E5=91=A8=E4=B8=89 =E4=B8=8B=E5=8D=8811:47=E5=86=99=E9=81=93=EF=BC=9A<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; On 1/27/21 4:22 AM, lx wrote:<br>
&gt;&gt;&gt;&gt;&gt; Hi all:<br>
&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 If I redirect USB ca=
mera to virtual machine, I think we send<br>
&gt;&gt;&gt;&gt;&gt; original URB to virtual machine by USB channel.<br>
&gt;&gt;&gt;&gt;&gt; Is this understanding correct? If we want to improve t=
he user<br>
&gt;&gt; experience,<br>
&gt;&gt;&gt;&gt;&gt; we need to compress URB data?<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Hi,<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; If you build with lz4 enabled (both client and server),<br=
>
&gt;&gt;&gt;&gt; then it should use lz4 to compress the data.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; There is no functionality to create<br>
&gt;&gt;&gt;&gt; a video stream out of raw data.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Can the USB camera be configured to send a compress stream=
?<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Uri.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 Hi:<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0USB camera can support MJPG and YUV.=C2=A0 =
=C2=A0I think H264 is better than<br>
&gt;&gt; MJPG. So Can we<br>
&gt;&gt;&gt; let spice support H264 ? Is this feasible?<br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; This is independent from SPICE, if the camera send compressed data=
<br>
&gt;&gt; already SPICE will just<br>
&gt;&gt; forward compressed data in whatever format is in USB.<br>
&gt;&gt; If the camera supports MJPEG and YUV choose MJPEG, YUV is not<br>
&gt;&gt; compressed (just a different color<br>
&gt;&gt; space than RGB, often taking less bits but still not compressed).<=
br>
&gt;&gt;<br>
&gt;&gt; Frediano<br>
&gt;&gt;<br>
&gt; <br>
&gt; If the camera chooses YUV, can we encode it to H264 in SPICE? Is this<=
br>
&gt; feasible?<br>
<br>
Currently, SPICE does not do look at USB data.<br></blockquote><div><br></d=
iv><div>Hi:</div><div><br></div><div>What do you mean spice just forward US=
B protocol data?=C2=A0<br></div><div><br></div><div>Thank you</div><div>=C2=
=A0</div></div></div>

--00000000000049caaf05ba59ec41--

--===============1096484316==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1096484316==--
