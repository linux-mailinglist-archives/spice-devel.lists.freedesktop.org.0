Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E33F3094B5
	for <lists+spice-devel@lfdr.de>; Sat, 30 Jan 2021 12:26:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56ED16E9CC;
	Sat, 30 Jan 2021 11:26:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com
 [IPv6:2607:f8b0:4864:20::129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC4B96E9CC
 for <spice-devel@lists.freedesktop.org>; Sat, 30 Jan 2021 11:26:08 +0000 (UTC)
Received: by mail-il1-x129.google.com with SMTP id m20so3410987ilj.13
 for <spice-devel@lists.freedesktop.org>; Sat, 30 Jan 2021 03:26:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gpcNfyDtdebeNK+gYB8FjdacuBUP4+MnL25py2298XI=;
 b=XzuHuII6mSS+xmHLEddRHvuUJBXhyLVEDq0Xs6kC63Y0A6v1Xzx1mPy4xgJtRRiQ0E
 OwE/ggf+7zufjQ3t7L9vBk8+HSvXfhrl8UxwBPsOpbPL7V57EHKGOD/vkquKT1v+cY/s
 v1K7JVahJDfzzNPTdlXDnZrx5zuD202vMDtiwPdxT+BnKWpDuRezpve/69/E+unmyfql
 7rmY/NT31dBjezfhGHWEYlOFGFJSzvc4aYZ3zyoTk9WvjorteQVgtXJHgEftg20+6puX
 s0Wv/icpbxfwpsFFeeOQ4jAtB147+KLbKZC9ji9pTUBmVRv43vzStjgu+9AbkwzU00X5
 oFTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gpcNfyDtdebeNK+gYB8FjdacuBUP4+MnL25py2298XI=;
 b=RLv6k0CbFzVvz1Yqpp/DlJzIYbnQ1H3G563oPwFFgZNsNIHQKFDoYKqgv1lWrg2vrN
 vr90geCbkMJweb0HJV4IX83zM8/tYAJvKWVTyVb8FeIyPh+KnMcPXhlWBDJ9uKcPxINA
 Fu+u7unQ3FuwKSF0/vHtpw01zV9yjOj5UzPTSMn2qVJ+eOKILw5H0ldl0ftVq45w5cRe
 EmPYPdxJW/fLnUILGYthasJhnSdOuLwkRMwByN6gBK0hEIjyVhwbGLuToHFZff5j5lTd
 RVQbSWwfEUYCNGDNe3Md5eKS4TfsCyMu0fIgFb94YoZkXE7iDMvVvPYFccIg9r/s7yGW
 TnOQ==
X-Gm-Message-State: AOAM532VQXxDuoK/sYOHqBfzFqmNvejYV6FHbNSNdOXl60Xy2m3/QwI9
 kGSQiR78/kl8WugFa4nxOqsbsLudPrBeNziI4Lg=
X-Google-Smtp-Source: ABdhPJwQ+TphwhnAbC9PbCH10YDEwq8TeD0E3oQ2aPKP9OTl3fyhT2BviLzmDRJPtLIyvhEnlgJTrnaBnwAIc4xsmPw=
X-Received: by 2002:a05:6e02:20ee:: with SMTP id
 q14mr6575960ilv.259.1612005968272; 
 Sat, 30 Jan 2021 03:26:08 -0800 (PST)
MIME-Version: 1.0
References: <CA+5jrfnjJnAi+FSCcHxNsyX=fnRF4RGFBOsH-+CHUbdNxeT-Fg@mail.gmail.com>
 <16e2b237-ffad-6bf0-d714-0c00fb658030@redhat.com>
 <CA+5jrfn5GHRLN2RUu=OSBz6fjVjXHVHHxLqhdezVzxTXb2NMLQ@mail.gmail.com>
 <CAHt6W4fZfzsh5QBejxBa1m35AKN6XmZ=L3-4OnMs5X+M6J1rMw@mail.gmail.com>
In-Reply-To: <CAHt6W4fZfzsh5QBejxBa1m35AKN6XmZ=L3-4OnMs5X+M6J1rMw@mail.gmail.com>
From: lx <lxlenovostar@gmail.com>
Date: Sat, 30 Jan 2021 19:25:57 +0800
Message-ID: <CA+5jrfkzL3sGE0g+06aNEKYug2Dfa2njG3WjmVMK6WPJUedTxQ@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============0361329651=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0361329651==
Content-Type: multipart/alternative; boundary="0000000000001d605705ba1c63b8"

--0000000000001d605705ba1c63b8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Frediano Ziglio <freddy77@gmail.com> =E4=BA=8E2021=E5=B9=B41=E6=9C=8829=E6=
=97=A5=E5=91=A8=E4=BA=94 =E4=B8=8B=E5=8D=886:39=E5=86=99=E9=81=93=EF=BC=9A

> Il giorno gio 28 gen 2021 alle ore 01:45 lx <lxlenovostar@gmail.com> ha
> scritto:
> >
> >
> > Uri Lublin <uril@redhat.com> =E4=BA=8E2021=E5=B9=B41=E6=9C=8827=E6=97=
=A5=E5=91=A8=E4=B8=89 =E4=B8=8B=E5=8D=8811:47=E5=86=99=E9=81=93=EF=BC=9A
> >>
> >> On 1/27/21 4:22 AM, lx wrote:
> >> > Hi all:
> >> >         If I redirect USB camera to virtual machine, I think we send
> >> > original URB to virtual machine by USB channel.
> >> > Is this understanding correct? If we want to improve the user
> experience,
> >> > we need to compress URB data?
> >>
> >> Hi,
> >>
> >> If you build with lz4 enabled (both client and server),
> >> then it should use lz4 to compress the data.
> >>
> >> There is no functionality to create
> >> a video stream out of raw data.
> >>
> >> Can the USB camera be configured to send a compress stream?
> >>
> >> Uri.
> >>
> >
> >   Hi:
> >    USB camera can support MJPG and YUV.   I think H264 is better than
> MJPG. So Can we
> > let spice support H264 ? Is this feasible?
> >
>
> This is independent from SPICE, if the camera send compressed data
> already SPICE will just
> forward compressed data in whatever format is in USB.
> If the camera supports MJPEG and YUV choose MJPEG, YUV is not
> compressed (just a different color
> space than RGB, often taking less bits but still not compressed).
>
> Frediano
>

If the camera chooses YUV, can we encode it to H264 in SPICE? Is this
feasible?

Thank you.

--0000000000001d605705ba1c63b8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">Frediano Ziglio &lt;<a href=3D"mailto=
:freddy77@gmail.com">freddy77@gmail.com</a>&gt; =E4=BA=8E2021=E5=B9=B41=E6=
=9C=8829=E6=97=A5=E5=91=A8=E4=BA=94 =E4=B8=8B=E5=8D=886:39=E5=86=99=E9=81=
=93=EF=BC=9A<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Il =
giorno gio 28 gen 2021 alle ore 01:45 lx &lt;<a href=3D"mailto:lxlenovostar=
@gmail.com" target=3D"_blank">lxlenovostar@gmail.com</a>&gt; ha scritto:<br=
>
&gt;<br>
&gt;<br>
&gt; Uri Lublin &lt;<a href=3D"mailto:uril@redhat.com" target=3D"_blank">ur=
il@redhat.com</a>&gt; =E4=BA=8E2021=E5=B9=B41=E6=9C=8827=E6=97=A5=E5=91=A8=
=E4=B8=89 =E4=B8=8B=E5=8D=8811:47=E5=86=99=E9=81=93=EF=BC=9A<br>
&gt;&gt;<br>
&gt;&gt; On 1/27/21 4:22 AM, lx wrote:<br>
&gt;&gt; &gt; Hi all:<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0If I redirect USB camera to =
virtual machine, I think we send<br>
&gt;&gt; &gt; original URB to virtual machine by USB channel.<br>
&gt;&gt; &gt; Is this understanding correct? If we want to improve the user=
 experience,<br>
&gt;&gt; &gt; we need to compress URB data?<br>
&gt;&gt;<br>
&gt;&gt; Hi,<br>
&gt;&gt;<br>
&gt;&gt; If you build with lz4 enabled (both client and server),<br>
&gt;&gt; then it should use lz4 to compress the data.<br>
&gt;&gt;<br>
&gt;&gt; There is no functionality to create<br>
&gt;&gt; a video stream out of raw data.<br>
&gt;&gt;<br>
&gt;&gt; Can the USB camera be configured to send a compress stream?<br>
&gt;&gt;<br>
&gt;&gt; Uri.<br>
&gt;&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0Hi:<br>
&gt;=C2=A0 =C2=A0 USB camera can support MJPG and YUV.=C2=A0 =C2=A0I think =
H264 is better than MJPG. So Can we<br>
&gt; let spice support H264 ? Is this feasible?<br>
&gt;<br>
<br>
This is independent from SPICE, if the camera send compressed data<br>
already SPICE will just<br>
forward compressed data in whatever format is in USB.<br>
If the camera supports MJPEG and YUV choose MJPEG, YUV is not<br>
compressed (just a different color<br>
space than RGB, often taking less bits but still not compressed).<br>
<br>
Frediano<br></blockquote><div><br></div><div>If the camera chooses YUV, can=
 we encode it to H264 in SPICE?=C2=A0Is this feasible?</div><div><br></div>=
<div>Thank you.</div><div><br></div><div><br></div><div><br></div><div>=C2=
=A0</div></div></div>

--0000000000001d605705ba1c63b8--

--===============0361329651==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0361329651==--
