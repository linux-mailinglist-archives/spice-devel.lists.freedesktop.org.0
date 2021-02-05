Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1926331084C
	for <lists+spice-devel@lfdr.de>; Fri,  5 Feb 2021 10:51:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF5CD6E162;
	Fri,  5 Feb 2021 09:51:51 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com
 [IPv6:2607:f8b0:4864:20::d2f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48690898ED
 for <spice-devel@lists.freedesktop.org>; Fri,  5 Feb 2021 09:51:50 +0000 (UTC)
Received: by mail-io1-xd2f.google.com with SMTP id j5so6361076iog.11
 for <spice-devel@lists.freedesktop.org>; Fri, 05 Feb 2021 01:51:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tGJkKNpjSag9FddiplQ2sZgS9MENBdZQ4XayNmSuFdQ=;
 b=bfj6KZkF/J33UokUFgbI+D+X9rsJ/31TYhIWaATBf9f3ehoEr0GZ+o+TD9sNo2rgyI
 WnH8ohInb5I56wVGyF7jnGwNCZRYymbTT7PGnzVPTk433NVNZgbn97TJKSXFeJYvS1eo
 0c4qSM+PD8aYwFjxIBcQ4wJRmHp/s0TMrRWlXktJ5M9dcrJ+6/58pbi6908LGydDHWTp
 HYTDVtqsikJDQhaNVyAF/TBXQkoc/I+tsigcZMnVIFbo1D/2KeVRLLgchNHTcibXr09q
 E5p86MK0oC37rUUbr8bkA+Rl1tFyINXSLixtYkOt8kPLOi2y+Yy/GCMa5ZYN6nd9Iigz
 CoBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tGJkKNpjSag9FddiplQ2sZgS9MENBdZQ4XayNmSuFdQ=;
 b=nAvzGlvL4N5Oe8FMKEIfWAk2dRgwQIW+zQRIZKR6diQ2yicwNtURTDPtJFkSZoX9ri
 /1WwD6ItZBY4udcPFb7iXZeJ7WnVVuvA2MJ09xFT6nSuBf1MNkdn2uU8e2S2FmD0adv9
 2QcIKcnPpYXk6+e441ybdj8rVFvBR5EmzUrvM2fmKYUBhtWfEvyuWuZVHzFpcp1F5FIi
 7jqPnH5YwFmL8YgV313HR8psRETryiOEjjcIKfU2uQ7hi5OOOPS99PdouqlbhHSepuO1
 UXSurkhk4ufysjiSKxTv1DHBl/V6gf1RZ/Ujr6BU+j91cFhGun2S8qgDjfjv8HRL+6Gy
 bx+A==
X-Gm-Message-State: AOAM533TPlmyx9jV91x4zvII/eO8yOjnlin3ee5T9CqDUvOYUpmLODRp
 CirWQSWgDS+rzlcoVPUSL8bc5xK3o4byh/g+jJV9Rxa1gut9Aw==
X-Google-Smtp-Source: ABdhPJx8A++7Xiwint3gRnuDynBUm0pw/322h7XiXuEOfr6qPW3z0n+f8RA9sGTxRz0bhv8xloGxl/nK7UfeoxuhlTo=
X-Received: by 2002:a5d:8ac8:: with SMTP id e8mr3429198iot.163.1612518709737; 
 Fri, 05 Feb 2021 01:51:49 -0800 (PST)
MIME-Version: 1.0
References: <CA+5jrfnjJnAi+FSCcHxNsyX=fnRF4RGFBOsH-+CHUbdNxeT-Fg@mail.gmail.com>
 <16e2b237-ffad-6bf0-d714-0c00fb658030@redhat.com>
 <CA+5jrfn5GHRLN2RUu=OSBz6fjVjXHVHHxLqhdezVzxTXb2NMLQ@mail.gmail.com>
 <CAHt6W4fZfzsh5QBejxBa1m35AKN6XmZ=L3-4OnMs5X+M6J1rMw@mail.gmail.com>
 <CA+5jrfkzL3sGE0g+06aNEKYug2Dfa2njG3WjmVMK6WPJUedTxQ@mail.gmail.com>
 <c2bb34de-0c44-ed62-6712-140c138e0286@redhat.com>
 <CA+5jrf=8Y1P2rK+LHfkvJC-kBpDjGTgf3TbWa7wcEcyiuRDUAQ@mail.gmail.com>
 <b8defe56-5bb6-de64-169f-7be47db71599@redhat.com>
 <CA+5jrfke2Kb0PwtBR1YFuT6nVGfo36L5VC8FyS9ctpniBQpDOQ@mail.gmail.com>
 <CAHt6W4deZvYL-4SYedk+=QWhEhQ6_EUvvLOQPwNiebVG5C9X3g@mail.gmail.com>
In-Reply-To: <CAHt6W4deZvYL-4SYedk+=QWhEhQ6_EUvvLOQPwNiebVG5C9X3g@mail.gmail.com>
From: lx <lxlenovostar@gmail.com>
Date: Fri, 5 Feb 2021 17:51:38 +0800
Message-ID: <CA+5jrfmA8jNwStTGF63TV+MPbNhmTNZFdEL253Vgm1KRZL8qVw@mail.gmail.com>
To: Frediano Ziglio <freddy77@gmail.com>
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
Content-Type: multipart/mixed; boundary="===============0857397123=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0857397123==
Content-Type: multipart/alternative; boundary="000000000000e33b4705ba93c424"

--000000000000e33b4705ba93c424
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Frediano Ziglio <freddy77@gmail.com> =E4=BA=8E2021=E5=B9=B42=E6=9C=884=E6=
=97=A5=E5=91=A8=E5=9B=9B =E4=B8=8B=E5=8D=889:47=E5=86=99=E9=81=93=EF=BC=9A

> Il giorno gio 4 feb 2021 alle ore 12:56 lx <lxlenovostar@gmail.com> ha
> scritto:
> >
> >
> >
> > Uri Lublin <uril@redhat.com> =E4=BA=8E2021=E5=B9=B42=E6=9C=882=E6=97=A5=
=E5=91=A8=E4=BA=8C =E4=B8=8B=E5=8D=8810:32=E5=86=99=E9=81=93=EF=BC=9A
> >>
> >> On 2/2/21 2:50 PM, lx wrote:
> >> >
> >> >
> >> > Uri Lublin <uril@redhat.com <mailto:uril@redhat.com>> =E4=BA=8E2021=
=E5=B9=B41=E6=9C=8831=E6=97=A5=E5=91=A8
> >> > =E6=97=A5 =E4=B8=8B=E5=8D=889:48=E5=86=99=E9=81=93=EF=BC=9A
> >> >
> >> >     On 1/30/21 1:25 PM, lx wrote:
> >> >      > Frediano Ziglio <freddy77@gmail.com <mailto:freddy77@gmail.co=
m
> >>
> >> >     =E4=BA=8E2021=E5=B9=B41=E6=9C=8829=E6=97=A5=E5=91=A8=E4=BA=94 =
=E4=B8=8B=E5=8D=886:39=E5=86=99=E9=81=93=EF=BC=9A
> >> >      >
> >> >      >> Il giorno gio 28 gen 2021 alle ore 01:45 lx
> >> >     <lxlenovostar@gmail.com <mailto:lxlenovostar@gmail.com>> ha
> >> >      >> scritto:
> >> >      >>>
> >> >      >>>
> >> >      >>> Uri Lublin <uril@redhat.com <mailto:uril@redhat.com>>
> =E4=BA=8E2021=E5=B9=B41
> >> >     =E6=9C=8827=E6=97=A5=E5=91=A8=E4=B8=89 =E4=B8=8B=E5=8D=8811:47=
=E5=86=99=E9=81=93=EF=BC=9A
> >> >      >>>>
> >> >      >>>> On 1/27/21 4:22 AM, lx wrote:
> >> >      >>>>> Hi all:
> >> >      >>>>>          If I redirect USB camera to virtual machine, I
> think
> >> >     we send
> >> >      >>>>> original URB to virtual machine by USB channel.
> >> >      >>>>> Is this understanding correct? If we want to improve the
> user
> >> >      >> experience,
> >> >      >>>>> we need to compress URB data?
> >> >      >>>>
> >> >      >>>> Hi,
> >> >      >>>>
> >> >      >>>> If you build with lz4 enabled (both client and server),
> >> >      >>>> then it should use lz4 to compress the data.
> >> >      >>>>
> >> >      >>>> There is no functionality to create
> >> >      >>>> a video stream out of raw data.
> >> >      >>>>
> >> >      >>>> Can the USB camera be configured to send a compress stream=
?
> >> >      >>>>
> >> >      >>>> Uri.
> >> >      >>>>
> >> >      >>>
> >> >      >>>    Hi:
> >> >      >>>     USB camera can support MJPG and YUV.   I think H264 is
> >> >     better than
> >> >      >> MJPG. So Can we
> >> >      >>> let spice support H264 ? Is this feasible?
> >> >      >>>
> >> >      >>
> >> >      >> This is independent from SPICE, if the camera send compresse=
d
> data
> >> >      >> already SPICE will just
> >> >      >> forward compressed data in whatever format is in USB.
> >> >      >> If the camera supports MJPEG and YUV choose MJPEG, YUV is no=
t
> >> >      >> compressed (just a different color
> >> >      >> space than RGB, often taking less bits but still not
> compressed).
> >> >      >>
> >> >      >> Frediano
> >> >      >>
> >> >      >
> >> >      > If the camera chooses YUV, can we encode it to H264 in SPICE?
> Is this
> >> >      > feasible?
> >> >
> >> >     Currently, SPICE does not do look at USB data.
> >> >
> >> >
> >> > Hi:
> >> >
> >> > What do you mean spice just forward USB protocol data?
> >>
> >> SPICE does look at USB headers, configurations, etc.
> >>
> >> I meant that SPICE does not look at data that is
> >> being transferred. So for example, it does
> >> not know if the data coming from the camera is YUV,
> >> RGB, MJPEG or other.
> >>
> >> To answer your question above more clearly:
> >> Currently it's not possible to H264-encode the
> >> YUV data coming from the camera.
> >> It is feasible to add code that does it.
> >> If possible, it's best if the camera sends an encoded video stream.
> >>
> >> Uri.
> >>
> > Hi all:
> >         I know ICA/RDP is better than spice, when they redirect the USB
> camera devices. This is beacuse
> >  ICA/RDP encode video stream, so the effect is so good? Or how can we
> optimize spice to achieve their results?
> >
> > Thank you
> >
> > btw: I know ICA/RDP support few devices.
> >
>
> Hi,
>    what exactly do you mean by "I know ICA/RDP is better than spice",
> I mean, did you
> personally try and works better? Did you do some measurement? Is just
> some comments
> on Internet?
>
Hi :
I get some inforamtion from this page:
https://forum.huawei.com/enterprise/zh/thread-324721.html
ICA/RDP complete USB redirection through virtual USB device driver. And
SPICE complete USB redirection
through virtual USB host controller driver. SPICE client read/write URB by
libusb.

I will test RDP and perform analysis betwwen RDP and SPICE.



> I didn't try personally (I don't have ICA solution installed) but you
> could run a test to check for
> compression:
> - run a program in the VM to record camera video without showing on the
> screen
> - start monitoring traffic (like tcpdump, or just some network
> statistic program)
> - let the recording goes for a predefined amount of time
> - stop monitoring.
> - look at the amount of traffic generated.
> If the amount of traffic is less they are compressing (not said they
> are video compressing,
> maybe only as raw data better than us). If they are compressing A LOT
> (like 5 times)
> probably they are using video compression (unless they found a way to
> reduce frame rate).
>
> It could be that they detect camera and optimize specifically the
> dialog with the VM.
>
> Other reasons could be less pipeline having a lower latency or some
> sort of QoS for the
> network.
>
> Frediano
>

--000000000000e33b4705ba93c424
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">Frediano Ziglio &lt;<a href=3D"mailto=
:freddy77@gmail.com">freddy77@gmail.com</a>&gt; =E4=BA=8E2021=E5=B9=B42=E6=
=9C=884=E6=97=A5=E5=91=A8=E5=9B=9B =E4=B8=8B=E5=8D=889:47=E5=86=99=E9=81=93=
=EF=BC=9A<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Il gio=
rno gio 4 feb 2021 alle ore 12:56 lx &lt;<a href=3D"mailto:lxlenovostar@gma=
il.com" target=3D"_blank">lxlenovostar@gmail.com</a>&gt; ha scritto:<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Uri Lublin &lt;<a href=3D"mailto:uril@redhat.com" target=3D"_blank">ur=
il@redhat.com</a>&gt; =E4=BA=8E2021=E5=B9=B42=E6=9C=882=E6=97=A5=E5=91=A8=
=E4=BA=8C =E4=B8=8B=E5=8D=8810:32=E5=86=99=E9=81=93=EF=BC=9A<br>
&gt;&gt;<br>
&gt;&gt; On 2/2/21 2:50 PM, lx wrote:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Uri Lublin &lt;<a href=3D"mailto:uril@redhat.com" target=3D"_=
blank">uril@redhat.com</a> &lt;mailto:<a href=3D"mailto:uril@redhat.com" ta=
rget=3D"_blank">uril@redhat.com</a>&gt;&gt; =E4=BA=8E2021=E5=B9=B41=E6=9C=
=8831=E6=97=A5=E5=91=A8<br>
&gt;&gt; &gt; =E6=97=A5 =E4=B8=8B=E5=8D=889:48=E5=86=99=E9=81=93=EF=BC=9A<b=
r>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0On 1/30/21 1:25 PM, lx wrote:<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Frediano Ziglio &lt;<a href=3D"mailt=
o:freddy77@gmail.com" target=3D"_blank">freddy77@gmail.com</a> &lt;mailto:<=
a href=3D"mailto:freddy77@gmail.com" target=3D"_blank">freddy77@gmail.com</=
a>&gt;&gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0=E4=BA=8E2021=E5=B9=B41=E6=9C=8829=E6=97=
=A5=E5=91=A8=E4=BA=94 =E4=B8=8B=E5=8D=886:39=E5=86=99=E9=81=93=EF=BC=9A<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; Il giorno gio 28 gen 2021 alle o=
re 01:45 lx<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:lxlenovostar@gmail.c=
om" target=3D"_blank">lxlenovostar@gmail.com</a> &lt;mailto:<a href=3D"mail=
to:lxlenovostar@gmail.com" target=3D"_blank">lxlenovostar@gmail.com</a>&gt;=
&gt; ha<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; scritto:<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt; Uri Lublin &lt;<a href=3D"ma=
ilto:uril@redhat.com" target=3D"_blank">uril@redhat.com</a> &lt;mailto:<a h=
ref=3D"mailto:uril@redhat.com" target=3D"_blank">uril@redhat.com</a>&gt;&gt=
; =E4=BA=8E2021=E5=B9=B41<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0=E6=9C=8827=E6=97=A5=E5=91=A8=E4=B8=89 =E4=
=B8=8B=E5=8D=8811:47=E5=86=99=E9=81=93=EF=BC=9A<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; On 1/27/21 4:22 AM, lx w=
rote:<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt; Hi all:<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 If I redirect USB camera to virtual machine, I think<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0we send<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt; original URB to virt=
ual machine by USB channel.<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt; Is this understandin=
g correct? If we want to improve the user<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; experience,<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt; we need to compress =
URB data?<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; Hi,<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; If you build with lz4 en=
abled (both client and server),<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; then it should use lz4 t=
o compress the data.<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; There is no functionalit=
y to create<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; a video stream out of ra=
w data.<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; Can the USB camera be co=
nfigured to send a compress stream?<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; Uri.<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;=C2=A0 =C2=A0 Hi:<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0USB camer=
a can support MJPG and YUV.=C2=A0 =C2=A0I think H264 is<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0better than<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; MJPG. So Can we<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt; let spice support H264 ? Is =
this feasible?<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; This is independent from SPICE, =
if the camera send compressed data<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; already SPICE will just<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; forward compressed data in whate=
ver format is in USB.<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; If the camera supports MJPEG and=
 YUV choose MJPEG, YUV is not<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; compressed (just a different col=
or<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; space than RGB, often taking les=
s bits but still not compressed).<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; Frediano<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; If the camera chooses YUV, can we en=
code it to H264 in SPICE? Is this<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; feasible?<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0Currently, SPICE does not do look at USB d=
ata.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Hi:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; What do you mean spice just forward USB protocol data?<br>
&gt;&gt;<br>
&gt;&gt; SPICE does look at USB headers, configurations, etc.<br>
&gt;&gt;<br>
&gt;&gt; I meant that SPICE does not look at data that is<br>
&gt;&gt; being transferred. So for example, it does<br>
&gt;&gt; not know if the data coming from the camera is YUV,<br>
&gt;&gt; RGB, MJPEG or other.<br>
&gt;&gt;<br>
&gt;&gt; To answer your question above more clearly:<br>
&gt;&gt; Currently it&#39;s not possible to H264-encode the<br>
&gt;&gt; YUV data coming from the camera.<br>
&gt;&gt; It is feasible to add code that does it.<br>
&gt;&gt; If possible, it&#39;s best if the camera sends an encoded video st=
ream.<br>
&gt;&gt;<br>
&gt;&gt; Uri.<br>
&gt;&gt;<br>
&gt; Hi all:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0I know ICA/RDP is better than spice, =
when they redirect the USB=C2=A0 camera devices. This is beacuse<br>
&gt;=C2=A0 ICA/RDP encode video stream, so the effect is so good? Or how ca=
n we optimize spice to achieve their results?<br>
&gt;<br>
&gt; Thank you<br>
&gt;<br>
&gt; btw: I know ICA/RDP support few devices.<br>
&gt;<br>
<br>
Hi,<br>
=C2=A0 =C2=A0what exactly do you mean by &quot;I know ICA/RDP is better tha=
n spice&quot;,<br>
I mean, did you<br>
personally try and works better? Did you do some measurement? Is just<br>
some comments<br>
on Internet?<br></blockquote><div>Hi :</div><div>I get some inforamtion fro=
m this page:=C2=A0<a href=3D"https://forum.huawei.com/enterprise/zh/thread-=
324721.html">https://forum.huawei.com/enterprise/zh/thread-324721.html</a><=
/div><div>ICA/RDP complete USB redirection through virtual USB device drive=
r. And SPICE complete USB redirection</div><div>through virtual USB host co=
ntroller driver. SPICE client read/write URB by libusb.=C2=A0</div><div><br=
></div><div>I will test RDP and perform analysis betwwen RDP and SPICE.</di=
v><div><br></div><div><br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">
<br>
I didn&#39;t try personally (I don&#39;t have ICA solution installed) but y=
ou<br>
could run a test to check for<br>
compression:<br>
- run a program in the VM to record camera video without showing on the scr=
een<br>
- start monitoring traffic (like tcpdump, or just some network<br>
statistic program)<br>
- let the recording goes for a predefined amount of time<br>
- stop monitoring.<br>
- look at the amount of traffic generated.<br>
If the amount of traffic is less they are compressing (not said they<br>
are video compressing,<br>
maybe only as raw data better than us). If they are compressing A LOT<br>
(like 5 times)<br>
probably they are using video compression (unless they found a way to<br>
reduce frame rate).<br>
<br>
It could be that they detect camera and optimize specifically the<br>
dialog with the VM.<br>
<br>
Other reasons could be less pipeline having a lower latency or some<br>
sort of QoS for the<br>
network.<br>
<br>
Frediano<br>
</blockquote></div></div>

--000000000000e33b4705ba93c424--

--===============0857397123==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0857397123==--
