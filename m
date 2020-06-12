Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 087621F779B
	for <lists+spice-devel@lfdr.de>; Fri, 12 Jun 2020 14:03:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83AE96E94B;
	Fri, 12 Jun 2020 12:03:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C50ED6E94B
 for <spice-devel@lists.freedesktop.org>; Fri, 12 Jun 2020 12:03:44 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id g10so7885425wmh.4
 for <spice-devel@lists.freedesktop.org>; Fri, 12 Jun 2020 05:03:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sbrWVBMXMKLpPgGjNHflmbTdTzpO7SMvxfy98NyvKt4=;
 b=kE8bC/oqLHxExZP/gKq7FZ/hhlO/fwkAhkcdWMvtrIup/pp55JJNxGkIy0IGsqd98n
 VNZti8PpQOWYQXgBk8sKsAcDKr2jRGzNaV3tsBh69cUWQSwqIWN/yv9dJeqKV7KvEXdi
 1MW3hNkNP/5pIjb6ybn8vhV22py4SFjJ+3fmzTiiA1hIVTxNyRk9byYX6AOtceXd69WF
 kvEycoS1+Ksj+mzv1jSmGSU3U64cV9zAEOu+zXKM/zCNRpGfB/IUr1/VYzR2sOJ/9po0
 EZLO3Ffh6P6V63b30/vCiTyZPGt4aor6kKIgZ+mor7kIaxUiDHDmNzXOu0RBKmsOdl1L
 vX5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sbrWVBMXMKLpPgGjNHflmbTdTzpO7SMvxfy98NyvKt4=;
 b=kxAKBxMAdP5VNwYM3LO73Gn7CohLDvu+MaJq74YOwqqjAelS3FVOeYQTIRbaSntP1I
 CQB6SUwziLQL7Mx/HikAi/CiBRCV6SY2L1SevvKkNRZswzZVjOk/LRZ4e0pDn7pYzk3E
 jKhywo/gvzejOkYQmqMfRO59ruMQgEg296OerRKuNcpI4SnvdCISKQHfPMVJB61fQvjW
 aQKKcV+jp+r4L19aAMJ98O7COBuhAU/0UTavxAoe0q8VnrF5C1peDpStSnVbuzPoOeh5
 4tnSbQDNVImwsHZijoWVV1s5jVJVNVpbHa8Vvhm22MF+K8xHsPBW5ocQlzT9XQ4AH03l
 LgBA==
X-Gm-Message-State: AOAM533wOv/q3zERTB+NcAxOtU3Dm7jy+X7lDHhviXqjAN02ufPIOdeM
 9qQM7fVc+DkvZX98gckY+HA8pyfPooCCNL045Unsv8uL
X-Google-Smtp-Source: ABdhPJzf+9fzTNYUq0CABsKoZ0W5Ww9Tct4H8dp7KagC9J7NpyizP+UpBTEkXyTozDbW7/riqiP3iCMdayZJQiHPOhU=
X-Received: by 2002:a1c:2e0e:: with SMTP id u14mr13084642wmu.55.1591963423405; 
 Fri, 12 Jun 2020 05:03:43 -0700 (PDT)
MIME-Version: 1.0
References: <16656b4b.5cd5.172a7a33052.Coremail.qishiyexu2@126.com>
In-Reply-To: <16656b4b.5cd5.172a7a33052.Coremail.qishiyexu2@126.com>
From: =?UTF-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?= <marcandre.lureau@gmail.com>
Date: Fri, 12 Jun 2020 16:03:30 +0400
Message-ID: <CAJ+F1CLYf0xoQ-UraTQzPoGk9Vpvt_=yoyW+ENZHdznf3kmLqA@mail.gmail.com>
To: =?UTF-8?B?6ZmI54Kk?= <qishiyexu2@126.com>
Subject: Re: [Spice-devel] Is it possible to put spice channels into
 different threads?
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
Content-Type: multipart/mixed; boundary="===============1557871473=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1557871473==
Content-Type: multipart/alternative; boundary="00000000000058fa6505a7e1de50"

--00000000000058fa6505a7e1de50
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi

On Fri, Jun 12, 2020 at 12:57 PM =E9=99=88=E7=82=A4 <qishiyexu2@126.com> wr=
ote:

> Hi,
>
> Spice-gtk is now using co-routine to handle different channel connections=
.
> When a channel is handling data, other channels would have to wait, rathe=
r
> than handling synchronously.  That would bring us following issues:
>  1. If some less important channels (like usb channels) are transfering
> big data, important channels (main-channel, display-channel,input-channel=
)
> will be affected.
>  2. When receiving big data like file transfering(G_IO_IN), send event
> (G_IO_OUT) will not be triggered.
>  3. Flow control between different channels will be hard to do.
>
> Is is possible(and make sense) to put channels into different threads so
> they can synchronously receive & send msg, without affect each other?
>
>
Switching to threads would be possible, but that wouldn't help in the
situation you describe, as you are very likely bound on IO. Using several
threads would actually create more problems to synchronize and schedule the
different channels.

Io operations in coroutines are non-blocking, so they shouldn't affect
other spice-gtk task. If you however observe a blocking CPU-task in some
channel, this may affect the performance of other channels. But in general,
except for video/image decoding which may be done in a separate thread, the
client side doesn't do much work.

USB, clipboard and file sharing may use large amounts of data, and we rely
on the glib source and kernel to prioritize channels: this isn't great in
some cases and may receive improvements.


--=20
Marc-Andr=C3=A9 Lureau

--00000000000058fa6505a7e1de50
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi<br></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 12, 2020 at 12:57 PM =
=E9=99=88=E7=82=A4 &lt;<a href=3D"mailto:qishiyexu2@126.com">qishiyexu2@126=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div style=3D"line-height:1.7;color:rgb(0,0,0);font-size:14px;font-fami=
ly:Arial"><div style=3D"margin:0px">Hi,</div><div style=3D"margin:0px"><br>=
</div><div style=3D"margin:0px">Spice-gtk is now using co-routine to handle=
 different channel connections. When a channel is handling data, other chan=
nels would have to wait, rather than handling synchronously.=C2=A0 That wou=
ld bring us following issues:</div><div style=3D"margin:0px">=C2=A01. If so=
me less important channels (like usb channels) are transfering big data, im=
portant channels (main-channel, display-channel,input-channel) will be affe=
cted.=C2=A0=C2=A0</div><div style=3D"margin:0px">=C2=A02. When receiving bi=
g data like file transfering(G_IO_IN), send event (G_IO_OUT) will not be tr=
iggered.</div><div style=3D"margin:0px">=C2=A03. Flow control between diffe=
rent channels will be hard to do.=C2=A0</div><div style=3D"margin:0px"><br>=
</div><div style=3D"margin:0px">Is is possible(and make sense) to put chann=
els into different threads so they can synchronously receive &amp; send msg=
, without affect each other?</div><div style=3D"margin:0px"><br></div></div=
></blockquote><div><br></div><div>Switching to threads would be possible, b=
ut that wouldn&#39;t help in the situation you describe, as you are very li=
kely bound on IO. Using several threads would actually create more problems=
 to synchronize and schedule the different channels.</div><div><br></div><d=
iv>Io operations in coroutines are non-blocking, so they shouldn&#39;t affe=
ct other spice-gtk task. If you however observe a blocking CPU-task in some=
 channel, this may affect the performance of other channels. But in general=
, except for video/image decoding which may be done in a separate thread, t=
he client side doesn&#39;t do much work.</div><div><br></div><div>USB, clip=
board and file sharing may use large amounts of data, and we rely on the gl=
ib source and kernel to prioritize channels: this isn&#39;t great in some c=
ases and may receive improvements.<br></div><div><br></div></div><br>-- <br=
><div dir=3D"ltr" class=3D"gmail_signature">Marc-Andr=C3=A9 Lureau<br></div=
></div>

--00000000000058fa6505a7e1de50--

--===============1557871473==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1557871473==--
