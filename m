Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66305A8AAB9
	for <lists+spice-devel@lfdr.de>; Wed, 16 Apr 2025 00:01:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C8FC10E38A;
	Tue, 15 Apr 2025 22:01:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Tl0UnndL";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com
 [209.85.219.174])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77DC710E38A
 for <spice-devel@lists.freedesktop.org>; Tue, 15 Apr 2025 22:01:07 +0000 (UTC)
Received: by mail-yb1-f174.google.com with SMTP id
 3f1490d57ef6-e573136107bso5409216276.3
 for <spice-devel@lists.freedesktop.org>; Tue, 15 Apr 2025 15:01:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1744754466; x=1745359266; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=P4AypWLaO6jqmud9Rhvykvsw1OYbXqsKQ0T0qHT6hf4=;
 b=Tl0UnndLvTVt1y32V2L5IwveDzf1s+Ycz4byRNmOuSg32z2GC2bumQAl6Kp1eQlLrO
 Xz7LcRiPuADsCPZ+8DOZhgaJ4Bri+f3xgeczEJFC75LQ6bO7kSLhb2DalHTGY0G00v5v
 bvjwDlJlYvbEsSHWyJmFQiSGze5YYseRnm3lLsSQ/6PbF0YcZDfVEini18p0mz1Ki9eW
 x3blQEKIPsXVeEedP3DeglqsLNrBitJgcjwtjlm4gXVFVHGYd2nFxctCTJeTCmNc224K
 y8hYdcxArgS3zmKPYtnbx/ufTqvVSciBMYw36Sdws9f6GX0e1bCe0pHwa/N6GMgUuzct
 2/xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744754466; x=1745359266;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=P4AypWLaO6jqmud9Rhvykvsw1OYbXqsKQ0T0qHT6hf4=;
 b=JFO5xyxDqrc2mJcj5NLzbK/eBrgXgJWNM5nYm0Yjj+o2zTh5T4nwoEhzjXTVC2DoRp
 XA/2I1Xj4zTsoqL2cT2qZ9FaK8PnT0pMJhfmmeNJXCYq8u4UUxkJc+74MPrZbXjYWroD
 5UtCbHtnycqweG01oiuKk/pzzC/2jhvf4bBlLpHq4cn27cDwqHe5gakx7zBdjHqu6vwD
 hkXWz20C+v6UGHNtGobViNJ5C5Xgo+S62poShV0Dpqm8Js+1E6EUBVN0SIzUq9ZU49bA
 y+kVBEnBdxUn5U5g4h2JYNE9CE1cd6dYW/7DeeNC0Cwjo8rVvZu/xXubOTOpS6aqNRE2
 ScIw==
X-Gm-Message-State: AOJu0YyAKwhRQIKH8pLto04EjZ4PkHgE8wWN5b1WtPpRt7wIok9QGQTn
 N3bYVKYEAvk2Dj97SUIy/gybDqPQNBCswbh2HfZ4dMG2PdKAFIMV4WwqhPV5eu1bgLDyysNtVWb
 RCaTLV2ooHrwax2NXEZC5Gh9Dv8M7bIJ2
X-Gm-Gg: ASbGncuCq7VzMhSkWL9i4NerwCKiu6Y/MVPkGX7QA8pozNZEfTsaL+omjXpVUoKDARj
 u1vHpDxbv/1n5dRee1G/yp0NVPd73lWHXdCKQ0q0vcoI2nD0+9rCN4WOUc7WJQVbX4WvcZpZTpN
 81AUPMobHX08O4C7zS/TE=
X-Google-Smtp-Source: AGHT+IH2fPvQ8KLEjQg31GWAFVUKt/lndRsQVF8tMjB5Z2tAyYK7u9MXC79REnX0HRV4cAJAu1qV66+375Z0uH5cWeA=
X-Received: by 2002:a05:6902:2681:b0:e6d:deb9:637a with SMTP id
 3f1490d57ef6-e726e7cb036mr1423018276.17.1744754465819; Tue, 15 Apr 2025
 15:01:05 -0700 (PDT)
MIME-Version: 1.0
References: <760d379f-91b2-4f43-bf22-57d0859977b3@rz.uni-freiburg.de>
In-Reply-To: <760d379f-91b2-4f43-bf22-57d0859977b3@rz.uni-freiburg.de>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Tue, 15 Apr 2025 23:00:53 +0100
X-Gm-Features: ATxdqUHfUEtJ_100DBLWPJtDBxDjKAr7iykp3DcGdnaEZSfP9nKLdVATPGNvMro
Message-ID: <CAHt6W4dgigb9P=D99Lv2BxBA530+Os3Bm9dWX4W4gWfHiOW=wg@mail.gmail.com>
Subject: Re: Forcing initial Frame Transmission for dmabuf encoding on SPICE
 display channel connection
To: Michael Scherle <michael.scherle@rz.uni-freiburg.de>
Cc: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="00000000000027daa10632d84e50"
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

--00000000000027daa10632d84e50
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 10, 2025 at 3:18=E2=80=AFPM Michael Scherle <
michael.scherle@rz.uni-freiburg.de> wrote:

> Hello,
>
> I=E2=80=99ve encountered an issue with the new DMA-BUF -> video encoding =
feature
> in SPICE. When connecting, the first frame is only sent once the GPU
> renders a new frame. However, this can take quite some time if the VM is
> idle (e.g., sitting on the desktop), since the GPU only renders a new
> frame when something on the screen changes. To address this, I wanted to
> force a frame to be sent when the display channel is connected.
>
>
Which makes sense.


> My initial, naive attempt was to grab the latest DMA-BUF on the display
> channel's connection in the SPICE server, encode it, and send it.
> However, this led to race conditions and crashes=E2=80=94particularly whe=
n QEMU
> happened to perform a scanout at the same time, closing the DMA-BUF in
> the process.
>
> By "closing" do you mean calling close() function? No, we should have
ownership.
What exact race did you encounter?


> As a second approach, I modified the QXLInterface to pass the display
> channel on_connect event back to QEMU. I couldn=E2=80=99t find any existi=
ng
> mechanism in QEMU to detect the connection of a display channel. Within
> QEMU, I then used qemu_spice_gl_monitor_config, and spice_gl_refresh to
> trigger a spice_gl_draw. This solution works, but the downside is that
> it requires changes to SPICE, QEMU, and especially the
> QXLInterface=E2=80=94which is obviously not ideal.
>
> Not ideal is a compliment. I would say complicated, hard to maintain,
adding too much coupling.

So now I=E2=80=99m wondering: does anyone have a better idea for how to tac=
kle
> this problem?
>
> I would define "the problem" first, currently you mentioned a race
condition without describing the details of the race.


> Best regards,
> Michael
>

I could suspect the race is more in the current implementation of the
interface. Indeed that interface does not fit entirely in the Spice server
model.

Externally there are 2 functions, spice_qxl_gl_scanout and
spice_qxl_gl_draw_async, the callback async_complete is used to tell Qemu
when we finish with the scanout. So, spice_qxl_gl_scanout should set the
scanout (or frame if you prefer), while spice_qxl_gl_draw_async tells Spice
to use the scanout, till async_complete is called (which should be done in
a time fashion, I think Qemu timeout is 1 second). In theory the scanout
can be reused for multiple draws (which was never the case, but that's
another story). In theory a partial draw of the scanout can be requested.
In theory the scanout should not be used after async_complete is called as
Qemu could reuse the scanout for next drawings. That last point is a bit of
a problem here and to be honest something I think is an issue of the
external interface definition. In hardware you set the framebuffer and the
video card will continue to use it, no matter what, the computer can freeze
or panic and the video card will continue to use the same frame over and
over. Also, considering that the maximum that can happen is to get a
partial draw that will be fixed, I think it's correct to use the last
scanout to solve your initial problem.

Internally Spice server stores the scanout in the RedQxl thread (Qemu I/O
one) but uses it in the RedWorker thread. This is pretty uncommon, usually
data is passed from a thread to the other, ownership included. This,
probably, leads to the race you are facing. If that's the issue I think
really the best option is to fix that race.

Regards,
  Frediano

--00000000000027daa10632d84e50
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote gmail_quote_container"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, Apr 10, 2025 at 3:18=E2=80=AFPM Micha=
el Scherle &lt;<a href=3D"mailto:michael.scherle@rz.uni-freiburg.de">michae=
l.scherle@rz.uni-freiburg.de</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">Hello,<br>
<br>
I=E2=80=99ve encountered an issue with the new DMA-BUF -&gt; video encoding=
 feature <br>
in SPICE. When connecting, the first frame is only sent once the GPU <br>
renders a new frame. However, this can take quite some time if the VM is <b=
r>
idle (e.g., sitting on the desktop), since the GPU only renders a new <br>
frame when something on the screen changes. To address this, I wanted to <b=
r>
force a frame to be sent when the display channel is connected.<br>
<br></blockquote><div><br></div><div>Which makes sense.</div><div>=C2=A0<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">
My initial, naive attempt was to grab the latest DMA-BUF on the display <br=
>
channel&#39;s connection in the SPICE server, encode it, and send it. <br>
However, this led to race conditions and crashes=E2=80=94particularly when =
QEMU <br>
happened to perform a scanout at the same time, closing the DMA-BUF in <br>
the process.<br>
<br></blockquote><div>By &quot;closing&quot; do you mean calling close() fu=
nction? No, we should have ownership.</div><div>What exact race did you enc=
ounter?</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">
As a second approach, I modified the QXLInterface to pass the display <br>
channel on_connect event back to QEMU. I couldn=E2=80=99t find any existing=
 <br>
mechanism in QEMU to detect the connection of a display channel. Within <br=
>
QEMU, I then used qemu_spice_gl_monitor_config, and spice_gl_refresh to <br=
>
trigger a spice_gl_draw. This solution works, but the downside is that <br>
it requires changes to SPICE, QEMU, and especially the <br>
QXLInterface=E2=80=94which is obviously not ideal.<br>
<br></blockquote><div>Not ideal is a compliment. I would say complicated, h=
ard to maintain, adding too much coupling.</div><div><br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">
So now I=E2=80=99m wondering: does anyone have a better idea for how to tac=
kle <br>
this problem?<br>
<br></blockquote><div>I would define &quot;the problem&quot; first, current=
ly you mentioned a race condition without describing the details of the rac=
e.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
Best regards,<br>
Michael<br></blockquote><div><br></div><div>I could suspect the race is mor=
e in the current implementation of the interface. Indeed that interface doe=
s not fit entirely in the Spice server model.</div><div><br></div><div>Exte=
rnally there are 2 functions, spice_qxl_gl_scanout and spice_qxl_gl_draw_as=
ync, the callback async_complete is used to tell Qemu when we finish with t=
he scanout. So, spice_qxl_gl_scanout should set the scanout (or frame if yo=
u prefer), while spice_qxl_gl_draw_async tells Spice to use the scanout, ti=
ll async_complete is called (which should be done in a time fashion, I thin=
k Qemu timeout is 1 second). In theory the scanout can be reused for multip=
le draws (which was never the case, but that&#39;s another story). In theor=
y a partial draw of the scanout can be requested. In theory the scanout sho=
uld not be used after async_complete is called as Qemu could reuse the scan=
out for next drawings. That last point is a bit of a problem here and to be=
 honest something I think is an issue of the external interface definition.=
 In hardware you set the framebuffer and the video card will continue to us=
e it, no matter what, the computer can freeze or panic and the video card w=
ill continue to use the same frame over and over. Also, considering that th=
e maximum that can happen is to get a partial draw that will be fixed, I th=
ink it&#39;s correct to use the last scanout to solve your initial problem.=
</div><div><br></div><div>Internally Spice server stores the scanout in the=
 RedQxl thread (Qemu I/O one) but uses it in the RedWorker thread. This is =
pretty uncommon, usually data is passed from a thread to the other, ownersh=
ip included. This, probably, leads to the race you are facing. If that&#39;=
s the issue I think really the best option is to fix that race.</div><div><=
br></div><div>Regards,</div><div>=C2=A0 Frediano</div><div>=C2=A0<br></div>=
</div></div>

--00000000000027daa10632d84e50--
