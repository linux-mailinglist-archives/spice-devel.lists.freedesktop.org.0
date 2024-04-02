Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C0A8952A1
	for <lists+spice-devel@lfdr.de>; Tue,  2 Apr 2024 14:13:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FF7B10F594;
	Tue,  2 Apr 2024 12:13:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="KZ7scPYa";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com
 [209.85.128.181])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9FA910F594
 for <spice-devel@lists.freedesktop.org>; Tue,  2 Apr 2024 12:13:27 +0000 (UTC)
Received: by mail-yw1-f181.google.com with SMTP id
 00721157ae682-61453963883so40430517b3.1
 for <spice-devel@lists.freedesktop.org>; Tue, 02 Apr 2024 05:13:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1712060006; x=1712664806; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=dx/Du//2L6/1Qq2HSpVxaOUQr/n+vIFoF+/pyxi6bz4=;
 b=KZ7scPYakR9+6LU6nWbFZf+JvpABdoSYcrl30DNBluoUgHLj1PTI5zHfrmrf1ssYRm
 EdghxTET+069NYlj4icEi82IEMIWYTTOndQ4PYGbvPhMhoLkf6ogwzNmKTgdEf9TXyiU
 9cimQf0nEgiYXZeHtghs0M/ogeaIVSGLtTZVBBvfXIZht0IP7RFeTVrrcYYkRtHyEcv0
 r8MIEsqKKjCSUIQF9ZE/BbhAtHejRG3c6QCAhJ3oceAAVwl9Y0dbtJSFGulxHdzDYmb6
 xzws0/Y4HdYMuMASBVc2U4TPtTSSR7FKbKf9MhJFfLuB59wGWGzWHJq/RNfLudsA9QGf
 rmAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712060006; x=1712664806;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=dx/Du//2L6/1Qq2HSpVxaOUQr/n+vIFoF+/pyxi6bz4=;
 b=Uz9Zw3eTnpS2MWokzjWYn2YCr9uacLvlfaF3bRATp/XvWj0TyUmMiZuF8LFU9naRZy
 cGGk3ILkhttHafqOHK2R4Xt7ae8GKd6ZXJcVXwAa87SCjDN63984dYUy5DngiC0o+n+k
 ypzFD4aAgML0H2az+yamy5XUnXc/L36JzAQxbAW/auU60nNdHG66JeRV8LqpsEIAtBik
 d+ZM1HqgJHXY0hz3VRw1w4HXsIKwIAt0rtpGhJ9wnwZHtRglS0g3ZsxtIjfCaXV/87VA
 tKT0wd8LgxpJHAilHwwReMCpjnpxC+qhWPxfjJEyvU2I+dqF87zCXznTtaxFrwuUY+KS
 BOow==
X-Gm-Message-State: AOJu0Yz/aWcv5U8ghqUgc/U1Pvnw2PDjPmEPWkMB1x9eliXmgYVwjijI
 A4HF4QZLEmCbSVDIay3nDXTobr1YmH2QJLqExC1moSQhAoRzxhr/ynvq1F40+vE1QKnUA12YXFJ
 UTJ7XBH4Gzl0fcEqkw25WDmkiGRM7tZqX
X-Google-Smtp-Source: AGHT+IHddmJphDmWl7cx+L0yPY8xG9e/skMq9fXhocYMEw2+mtTHwxSBSIM2zi1tO6G7nnK0HSrskYlEXxD9Ba1hM1g=
X-Received: by 2002:a25:274a:0:b0:dcd:905:3d17 with SMTP id
 n71-20020a25274a000000b00dcd09053d17mr9350964ybn.32.1712060006592; Tue, 02
 Apr 2024 05:13:26 -0700 (PDT)
MIME-Version: 1.0
References: <31bdee77-ac54-4da4-bb8f-fbc00882070d@rz.uni-freiburg.de>
 <03544c6b-b8b4-441a-b0aa-9d6a629c9794@rz.uni-freiburg.de>
In-Reply-To: <03544c6b-b8b4-441a-b0aa-9d6a629c9794@rz.uni-freiburg.de>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Tue, 2 Apr 2024 13:13:15 +0100
Message-ID: <CAHt6W4cOrnTZhEAjyfQY3Mf5Y93ynNNeM8Y2+3bCLHvDhXLzfw@mail.gmail.com>
Subject: Re: High delay of video-streams
To: Michael Scherle <michael.scherle@rz.uni-freiburg.de>
Cc: spice-devel@lists.freedesktop.org, 
 "dirk.von.suchodoletz@rz.uni-freiburg.de"
 <dirk.von.suchodoletz@rz.uni-freiburg.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

Il giorno mer 20 mar 2024 alle ore 15:32 Michael Scherle
<michael.scherle@rz.uni-freiburg.de> ha scritto:
>
> Hello spice developers,
>
> I looked further and found the function get_min_playback_delay(
> https://gitlab.freedesktop.org/spice/spice/-/blob/fe1c25f530b95d32cc81bc1=
a395d80ace631d2dd/server/gstreamer-encoder.c#L507)
> which calculates the delay I was looking for. However, some of the
> calculations do not make sense to me.  net_latency +
> get_average_encoding_time seems to be reasonable. However send_time
> seems strange to me. I assume that this is to calculate how long a large
> (I frame) and a normal frame is encoded. I think that this calculation
> is not optimal, the more so as the average encoding time has already
> been added and the gstreamer target bitrate is not accurate (especially
> for variable bitrates) which makes the calculations less accurate.
>
> As a result, the delay is unnecessarily increased, if the image size
> changes rapidly in a short period of time, e.g. due to rapidly changing
> image content. Which would also work without a delay increase. Also the
> decoding time of the client is not taken into account here. I'm also not
> sure how useful it is, to calculate the display delay for the client on
> the server. But perhaps I have been mistaken and you can enlighten me.
>

Hi.

Really short explanation: Lipsync.

Less cryptic explanation: video streaming was added much time ago when
desktops used 2D graphic drawings, like lines, fillings, strings and
so on. At that time networks were more unreliable, latency bigger, and
with high probability a continuous bitblt on the same big area was a
video playing. So the idea of detecting the video playing and
optimizing to sync audio and video was a good idea.

Now starts my opinionated ideas. The idea of continuous bitblt being
only a video stream is wrong, nowadays desktops do use large bitblt
for everything, or better they use 3D cards a lot and compose the
various windows on the screen which appears to us as just bitblt,
often contiguous. So the delay should just be removed optimizing for
real time video streaming. As you realize the algorithm also keeps
increasing the delay for every glitch found which is not improving the
user experience. I have different changesets removing entirely all
these delays (it's possible to get this just by changing the server
part), the result is much less delay, the audio/video sync (watching a
movie) is, with nowadays networks, acceptable.

Frediano

>
> On 15.03.24 14:08, Michael Scherle wrote:
> > Hello spice developers,
> >
> > we are trying to develop an Open Source virtual desktop infrastructure
> > to be deployed at multiple German universities as described, by my
> > colleagues, in the paper which I have put in the attachment. The
> > solution based on openstack, qemu, spice... Our plan is also to have VM
> > instances with virtual GPUs (SR-IOV). Due to the resulting requirements=
,
> > it is necessary to transmit the image data as a video stream.
> > We have seen Vivek Kasireddy recent work on spice which solves exactly
> > this problem. However, when we tested it, we noticed a very high input
> > to display delay (400 ms+ but only if the image data is transferred as
> > video-stream). However, the problem seems to be a more general spice
> > problem or is there something wrong with our setup or are there special
> > parameters that we are missing?
> >
> > Our setup:
> >
> > QEMU: https://gitlab.freedesktop.org/Vivek/qemu/-/commits/spice_gl_on_v=
2
> > Spice:
> > https://gitlab.freedesktop.org/Vivek/spice/-/commits/encode_dmabuf_v6
> > virt-viewer
> > Intel HW decoder/encoder (but same with sw)
> >
> > I have looked into what is causing the delay and have noticed that
> > encoding only takes about 3-4ms. In general, the image seems to reach
> > the client in less than 15ms.
> > The main problem seems to be that gstreamer gets a very high
> > margin(https://gitlab.freedesktop.org/spice/spice-gtk/-/blob/master/src=
/channel-display.c?ref_type=3Dheads#L1773) and therefore waits a long time =
before starting decoding. And the reason for the high margin seems to be th=
e bad mm_time_offset https://gitlab.freedesktop.org/spice/spice-gtk/-/blob/=
master/src/spice-session.c?ref_type=3Dheads#L2418 which is used to offset t=
he server time to the client time (with some margin). And this variable is =
set by the spice server to initially 400 ms https://gitlab.freedesktop.org/=
spice/spice/-/blob/master/server/reds.cpp?ref_type=3Dheads#L3062 and gets u=
pdated with the latency https://gitlab.freedesktop.org/spice/spice/-/blob/m=
aster/server/reds.cpp?ref_type=3Dheads#L2614 (but only increased). I still =
need to see how this latency is calculated.
> >
> > Am I missing something or is this design not intended for transmitting
> > interactive content via video stream?
> > Temporarily overwriting the margin and tweaking parameter settings on
> > the msdkh264dec brought the delay to about 80-100ms, which is not yet
> > optimal but usable. To see what is technical possible on my setup, I
> > made a comparison using moonlight/sunshine which resulted in an delay o=
f
> > 20-40ms.
> >
> > Our goal is to achieve some round trip time similar to the
> > moonlight/sunshine scenario to achieve a properly usable desktop
> > experience.
> >
> > Greetings
> > Michael
>
> Greetings
> Michael
