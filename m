Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A972B30F37E
	for <lists+spice-devel@lfdr.de>; Thu,  4 Feb 2021 13:56:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 778D26ECAC;
	Thu,  4 Feb 2021 12:56:05 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-il1-x136.google.com (mail-il1-x136.google.com
 [IPv6:2607:f8b0:4864:20::136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15C116ECAC
 for <spice-devel@lists.freedesktop.org>; Thu,  4 Feb 2021 12:56:04 +0000 (UTC)
Received: by mail-il1-x136.google.com with SMTP id q5so2432960ilc.10
 for <spice-devel@lists.freedesktop.org>; Thu, 04 Feb 2021 04:56:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Vs3McRZW+KbKck71HqdxygqpO/dM3f21CZ/6/LNdjas=;
 b=Ibvi5JHNE+F4/lTaYfRGKvhMZDJHPM0vuP0koIbnoSsyGBMOR42O5mS1VHOcOCYnXH
 VtotNJr8/XQTdI396aAI95NLmaJGiL0UHJmSiV7jbXmAAINI4rHh27e+paPsK8yZUmoK
 PRcdXWnkuDS0Sm+ZOONvik7VHgeMdua2hMb/k0WSq2Arwx6+E+u+UZ0JGm/WOEL66MhS
 1YRetlMQ/oq9oIt5FiXzc4jE+PfybL4hpIAe8duDf4AQXfJpxme4Be6j6QjDB+ccTLRm
 TM4jwJ3OpwzsZ2HIKoX41u3eBe0CrzCN0octjQM3cn26E5X9t1WOD9BbzCfrEEAD7XNp
 8Xuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Vs3McRZW+KbKck71HqdxygqpO/dM3f21CZ/6/LNdjas=;
 b=Rh51ndUeyzEWxtjNZy3cfgTi6lg+kPPmVl7yDikjAJqve7BiXgvet2GFrmcAPbnlMn
 pU2pmNK1t5fubA/T3Tk7oYMSqkK7aIpa2gPO/B1UsjXFg/i3DwfQHAcgamZ5DcS6NJgU
 GCevxcbA940uHLL3y2hMWVt7LkfCdJwjjSKyfHlx5lMiRSY6eXC++Fzd/X50mBD78V0O
 pp9GyJtk65x4DXdEAZ9nxAoIwiw+7GVpPJPBLosJ3l2wZD1IVdfuVx+yI+tNNmCV72OE
 vVjtHxxkhq6K1lTgslro9GCCy4jY/J9whTRWj0uY/zkJ316j1jkD5S8otzujJ1bj4EDo
 RjPQ==
X-Gm-Message-State: AOAM532blUXe0/lhK5PbEeDlGCObx9BYOacFS1CFR/2DYD0VJseSQS5+
 1Punu20MzK+UY1zUlWy/yuIIOqBhWfD3Lma7Yng=
X-Google-Smtp-Source: ABdhPJxleWQLAYsS60a4nqYWj6r2u9u3VTd4gOjSui7/i/Wrt2CvIs+fYmETLlOmikkJd461X5EX3+/itFqqtniE+9E=
X-Received: by 2002:a05:6e02:20ee:: with SMTP id
 q14mr6485018ilv.259.1612443362844; 
 Thu, 04 Feb 2021 04:56:02 -0800 (PST)
MIME-Version: 1.0
References: <CA+5jrfnjJnAi+FSCcHxNsyX=fnRF4RGFBOsH-+CHUbdNxeT-Fg@mail.gmail.com>
 <16e2b237-ffad-6bf0-d714-0c00fb658030@redhat.com>
 <CA+5jrfn5GHRLN2RUu=OSBz6fjVjXHVHHxLqhdezVzxTXb2NMLQ@mail.gmail.com>
 <CAHt6W4fZfzsh5QBejxBa1m35AKN6XmZ=L3-4OnMs5X+M6J1rMw@mail.gmail.com>
 <CA+5jrfkzL3sGE0g+06aNEKYug2Dfa2njG3WjmVMK6WPJUedTxQ@mail.gmail.com>
 <c2bb34de-0c44-ed62-6712-140c138e0286@redhat.com>
 <CA+5jrf=8Y1P2rK+LHfkvJC-kBpDjGTgf3TbWa7wcEcyiuRDUAQ@mail.gmail.com>
 <b8defe56-5bb6-de64-169f-7be47db71599@redhat.com>
In-Reply-To: <b8defe56-5bb6-de64-169f-7be47db71599@redhat.com>
From: lx <lxlenovostar@gmail.com>
Date: Thu, 4 Feb 2021 20:55:52 +0800
Message-ID: <CA+5jrfke2Kb0PwtBR1YFuT6nVGfo36L5VC8FyS9ctpniBQpDOQ@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============2028443191=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============2028443191==
Content-Type: multipart/alternative; boundary="000000000000dce77b05ba8239c3"

--000000000000dce77b05ba8239c3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Uri Lublin <uril@redhat.com> =E4=BA=8E2021=E5=B9=B42=E6=9C=882=E6=97=A5=E5=
=91=A8=E4=BA=8C =E4=B8=8B=E5=8D=8810:32=E5=86=99=E9=81=93=EF=BC=9A

> On 2/2/21 2:50 PM, lx wrote:
> >
> >
> > Uri Lublin <uril@redhat.com <mailto:uril@redhat.com>> =E4=BA=8E2021=E5=
=B9=B41=E6=9C=8831=E6=97=A5=E5=91=A8
> > =E6=97=A5 =E4=B8=8B=E5=8D=889:48=E5=86=99=E9=81=93=EF=BC=9A
> >
> >     On 1/30/21 1:25 PM, lx wrote:
> >      > Frediano Ziglio <freddy77@gmail.com <mailto:freddy77@gmail.com>>
> >     =E4=BA=8E2021=E5=B9=B41=E6=9C=8829=E6=97=A5=E5=91=A8=E4=BA=94 =E4=
=B8=8B=E5=8D=886:39=E5=86=99=E9=81=93=EF=BC=9A
> >      >
> >      >> Il giorno gio 28 gen 2021 alle ore 01:45 lx
> >     <lxlenovostar@gmail.com <mailto:lxlenovostar@gmail.com>> ha
> >      >> scritto:
> >      >>>
> >      >>>
> >      >>> Uri Lublin <uril@redhat.com <mailto:uril@redhat.com>> =E4=BA=
=8E2021=E5=B9=B41
> >     =E6=9C=8827=E6=97=A5=E5=91=A8=E4=B8=89 =E4=B8=8B=E5=8D=8811:47=E5=
=86=99=E9=81=93=EF=BC=9A
> >      >>>>
> >      >>>> On 1/27/21 4:22 AM, lx wrote:
> >      >>>>> Hi all:
> >      >>>>>          If I redirect USB camera to virtual machine, I thin=
k
> >     we send
> >      >>>>> original URB to virtual machine by USB channel.
> >      >>>>> Is this understanding correct? If we want to improve the use=
r
> >      >> experience,
> >      >>>>> we need to compress URB data?
> >      >>>>
> >      >>>> Hi,
> >      >>>>
> >      >>>> If you build with lz4 enabled (both client and server),
> >      >>>> then it should use lz4 to compress the data.
> >      >>>>
> >      >>>> There is no functionality to create
> >      >>>> a video stream out of raw data.
> >      >>>>
> >      >>>> Can the USB camera be configured to send a compress stream?
> >      >>>>
> >      >>>> Uri.
> >      >>>>
> >      >>>
> >      >>>    Hi:
> >      >>>     USB camera can support MJPG and YUV.   I think H264 is
> >     better than
> >      >> MJPG. So Can we
> >      >>> let spice support H264 ? Is this feasible?
> >      >>>
> >      >>
> >      >> This is independent from SPICE, if the camera send compressed
> data
> >      >> already SPICE will just
> >      >> forward compressed data in whatever format is in USB.
> >      >> If the camera supports MJPEG and YUV choose MJPEG, YUV is not
> >      >> compressed (just a different color
> >      >> space than RGB, often taking less bits but still not compressed=
).
> >      >>
> >      >> Frediano
> >      >>
> >      >
> >      > If the camera chooses YUV, can we encode it to H264 in SPICE? Is
> this
> >      > feasible?
> >
> >     Currently, SPICE does not do look at USB data.
> >
> >
> > Hi:
> >
> > What do you mean spice just forward USB protocol data?
>
> SPICE does look at USB headers, configurations, etc.
>
> I meant that SPICE does not look at data that is
> being transferred. So for example, it does
> not know if the data coming from the camera is YUV,
> RGB, MJPEG or other.
>
> To answer your question above more clearly:
> Currently it's not possible to H264-encode the
> YUV data coming from the camera.
> It is feasible to add code that does it.
> If possible, it's best if the camera sends an encoded video stream.
>
> Uri.
>
> Hi all:
        I know ICA/RDP is better than spice, when they redirect the USB
camera devices. This is beacuse
 ICA/RDP encode video stream, so the effect is so good? Or how can we
optimize spice to achieve their results?

Thank you

btw: I know ICA/RDP support few devices.

--000000000000dce77b05ba8239c3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">Uri Lublin &lt;<a href=3D"mailto:uril=
@redhat.com">uril@redhat.com</a>&gt; =E4=BA=8E2021=E5=B9=B42=E6=9C=882=E6=
=97=A5=E5=91=A8=E4=BA=8C =E4=B8=8B=E5=8D=8810:32=E5=86=99=E9=81=93=EF=BC=9A=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 2/2/21 2:50 =
PM, lx wrote:<br>
&gt; <br>
&gt; <br>
&gt; Uri Lublin &lt;<a href=3D"mailto:uril@redhat.com" target=3D"_blank">ur=
il@redhat.com</a> &lt;mailto:<a href=3D"mailto:uril@redhat.com" target=3D"_=
blank">uril@redhat.com</a>&gt;&gt; =E4=BA=8E2021=E5=B9=B41=E6=9C=8831=E6=97=
=A5=E5=91=A8 <br>
&gt; =E6=97=A5 =E4=B8=8B=E5=8D=889:48=E5=86=99=E9=81=93=EF=BC=9A<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0On 1/30/21 1:25 PM, lx wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Frediano Ziglio &lt;<a href=3D"mailto:freddy7=
7@gmail.com" target=3D"_blank">freddy77@gmail.com</a> &lt;mailto:<a href=3D=
"mailto:freddy77@gmail.com" target=3D"_blank">freddy77@gmail.com</a>&gt;&gt=
;<br>
&gt;=C2=A0 =C2=A0 =C2=A0=E4=BA=8E2021=E5=B9=B41=E6=9C=8829=E6=97=A5=E5=91=
=A8=E4=BA=94 =E4=B8=8B=E5=8D=886:39=E5=86=99=E9=81=93=EF=BC=9A<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; Il giorno gio 28 gen 2021 alle ore 01:45 =
lx<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:lxlenovostar@gmail.com" targe=
t=3D"_blank">lxlenovostar@gmail.com</a> &lt;mailto:<a href=3D"mailto:lxleno=
vostar@gmail.com" target=3D"_blank">lxlenovostar@gmail.com</a>&gt;&gt; ha<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; scritto:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt; Uri Lublin &lt;<a href=3D"mailto:uril=
@redhat.com" target=3D"_blank">uril@redhat.com</a> &lt;mailto:<a href=3D"ma=
ilto:uril@redhat.com" target=3D"_blank">uril@redhat.com</a>&gt;&gt; =E4=BA=
=8E2021=E5=B9=B41<br>
&gt;=C2=A0 =C2=A0 =C2=A0=E6=9C=8827=E6=97=A5=E5=91=A8=E4=B8=89 =E4=B8=8B=E5=
=8D=8811:47=E5=86=99=E9=81=93=EF=BC=9A<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; On 1/27/21 4:22 AM, lx wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt; Hi all:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 If I redirect USB camera to virtual machine, I think<br>
&gt;=C2=A0 =C2=A0 =C2=A0we send<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt; original URB to virtual machi=
ne by USB channel.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt; Is this understanding correct=
? If we want to improve the user<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; experience,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt; we need to compress URB data?=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; Hi,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; If you build with lz4 enabled (bo=
th client and server),<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; then it should use lz4 to compres=
s the data.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; There is no functionality to crea=
te<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; a video stream out of raw data.<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; Can the USB camera be configured =
to send a compress stream?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; Uri.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;=C2=A0 =C2=A0 Hi:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0USB camera can sup=
port MJPG and YUV.=C2=A0 =C2=A0I think H264 is<br>
&gt;=C2=A0 =C2=A0 =C2=A0better than<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; MJPG. So Can we<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt; let spice support H264 ? Is this feas=
ible?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; This is independent from SPICE, if the ca=
mera send compressed data<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; already SPICE will just<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; forward compressed data in whatever forma=
t is in USB.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; If the camera supports MJPEG and YUV choo=
se MJPEG, YUV is not<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; compressed (just a different color<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; space than RGB, often taking less bits bu=
t still not compressed).<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; Frediano<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; If the camera chooses YUV, can we encode it t=
o H264 in SPICE? Is this<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; feasible?<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Currently, SPICE does not do look at USB data.<br>
&gt; <br>
&gt; <br>
&gt; Hi:<br>
&gt; <br>
&gt; What do you mean spice just forward USB protocol data?<br>
<br>
SPICE does look at USB headers, configurations, etc.<br>
<br>
I meant that SPICE does not look at data that is<br>
being transferred. So for example, it does<br>
not know if the data coming from the camera is YUV,<br>
RGB, MJPEG or other.<br>
<br>
To answer your question above more clearly:<br>
Currently it&#39;s not possible to H264-encode the<br>
YUV data coming from the camera.<br>
It is feasible to add code that does it.<br>
If possible, it&#39;s best if the camera sends an encoded video stream.<br>
<br>
Uri.<br>
<br></blockquote><div>Hi all:=C2=A0=C2=A0</div><div>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 I know ICA/RDP is better than spice, when they redirect the USB=C2=
=A0 camera devices. This is beacuse</div><div>=C2=A0ICA/RDP encode video st=
ream, so the effect is so good? Or how can we optimize spice to achieve the=
ir results?</div><div><br></div><div>Thank you</div><div><br></div><div>btw=
: I know ICA/RDP support few devices.=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</di=
v><div><br></div><div><br></div><div>=C2=A0</div></div></div>

--000000000000dce77b05ba8239c3--

--===============2028443191==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============2028443191==--
