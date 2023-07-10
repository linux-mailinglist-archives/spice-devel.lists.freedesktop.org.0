Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE75874CF74
	for <lists+spice-devel@lfdr.de>; Mon, 10 Jul 2023 10:07:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D43710E21A;
	Mon, 10 Jul 2023 08:07:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oo1-xc33.google.com (mail-oo1-xc33.google.com
 [IPv6:2607:f8b0:4864:20::c33])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7CDB10E21A
 for <spice-devel@lists.freedesktop.org>; Mon, 10 Jul 2023 08:07:52 +0000 (UTC)
Received: by mail-oo1-xc33.google.com with SMTP id
 006d021491bc7-5658573b1faso2544997eaf.1
 for <spice-devel@lists.freedesktop.org>; Mon, 10 Jul 2023 01:07:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1688976471; x=1691568471;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=s/GA1ZN2QvoNyqTaddiD+n7+bZ6YOXATkq2KYy66wyQ=;
 b=NI2ViCZ+kJV0rhPjMMuu+UpnwCFhIEyFX+lNPcRjqIC+sC2RanqhQR2m59TVfNS46w
 CPkw+PVGpIFSJZ6DBzo34bulZjom+EqNvnMYefcvVv3MVcU6Pvh/YBVZ7g1SKetGaijZ
 LueMUxdDj9c9BGQgQk3hy8MEBNfqgvmqtuF6l+nD2K/yjr4QBf3f2LFz7+GBgkHgXP3o
 KoDjhgaLRIAje5KJXDrYltR9NH1onru6q4Pwls3/m/uu4fKSqMCxWpcpoMa0R1aY3ZJT
 AK220Y6YBSGMETqv7r64/VgoF4x1EN6tbgBFuZ4GiRZfLToWdxos335GvXagMjC1VsMq
 RgqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688976471; x=1691568471;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=s/GA1ZN2QvoNyqTaddiD+n7+bZ6YOXATkq2KYy66wyQ=;
 b=TywF1EKfoBLr8+aAYt46436AZTTKRuWbl/xbztbH4Ru656kKj3SJBX+Augm2WrYMsu
 FC/0tF+8QAUr9qiNQGzt2/3F8PM1xe03uehjV6j7du4aPQlyXD0IskfKZnGbGHxr80oG
 pxt2Gju6JJONfPGrIhbLFvg7iXD2pbcXhYw1mPYBc3r42gqxlWiHX1x1aVacEFuYkI45
 X+4YQixGgYoR1bItbE7ec1zDNX+DeuD/c8dgAxzbLpfMQ6fV1wMtpSxrDt4zVNhJatDQ
 7L/llPiewHB5rEWl47KlOYSBi1y/NiK31yMck4arWTERQJvlpQg4+rfZstVm7YIEdk9b
 RLBw==
X-Gm-Message-State: ABy/qLZbEqp3r8lgaQr5zLBZz7UMhxY5/L2Ff5Sk2Y7Xq/DKDX7RkvRw
 7v2WG47hboSKXkfjz7Ztu95LX9Yx6gEd8qnFIN8=
X-Google-Smtp-Source: APBJJlH94vEokV3ZskKyGEeo/Ey2Nro/qn3Z1fmj7Ll+q7yheh6dwEl/+19wiSWXVFHsyWY9gQcUwuaUIABKdMM5mDU=
X-Received: by 2002:a4a:d649:0:b0:558:a4cd:8813 with SMTP id
 y9-20020a4ad649000000b00558a4cd8813mr7601603oos.9.1688976471480; Mon, 10 Jul
 2023 01:07:51 -0700 (PDT)
MIME-Version: 1.0
References: <tencent_B6679654B7F9B858ACDD19AF01982938DB0A@qq.com>
 <CAHt6W4esuZwZ6o+CdT2_jo2q+W3P38vrp0ooGA3gY3UUhNkORw@mail.gmail.com>
 <tencent_0D2D92EE12D6C0CDFE9C9D32A3AABB7D5809@qq.com>
In-Reply-To: <tencent_0D2D92EE12D6C0CDFE9C9D32A3AABB7D5809@qq.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Mon, 10 Jul 2023 09:07:40 +0100
Message-ID: <CAHt6W4f6ND+RN6rKTs5JZuERgi1RCK2gz2UTf-Cts2fQs+hn3A@mail.gmail.com>
To: =?UTF-8?B?5Lq65a6X6YGT6aaW?= <928003896@qq.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Spice-devel] How does SPICE display the desktop data processed
 by Nvidia vGPU?
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno dom 9 lug 2023 alle ore 01:45 =E4=BA=BA=E5=AE=97=E9=81=93=E9=A6=
=96 <928003896@qq.com> ha scritto:
>
> HI,
> Thank you for your reply .
> If I use SPICE - Streaming Agent, how do I transfer the captured guest de=
sktop image to the client through SPICE sever's display channel? Can my mou=
se clicks or keyboard input from the client side to the guest side operate =
normally through the SPICE - Streaming Agent?

The streaming agent is responsible to carry video information from
guest to SPICE server which will then relay them to the clients.
Client and mouse will continue to work (they use separate SPICE
channels). The protocol between the streaming agent and the server is
detailed in https://gitlab.freedesktop.org/spice/spice-protocol/-/blob/mast=
er/spice/stream-device.h.
You can also look at the streaming agent code for usage.

> Additionally, if using the SPICE - Streaming Agent, will there be two scr=
eens displayed on the client side? (Streaming Agent and QXL display one eac=
h) If so, can we only display one screen and use it normally like a remote =
desktop?

The idea is not to replace QXL which will work, but to add displays
for additional cards (like the Nvidia vGPU).

> Finally, is there a detailed Technical documentation of the source code o=
f the QXL driver? There are few comments in the source code. I can't unders=
tand the specific meaning
>

Linux one https://elixir.bootlin.com/linux/latest/source/drivers/gpu/drm/qx=
l
or Windows one https://gitlab.freedesktop.org/spice/win32/qxl-wddm-dod
? I don't think there's much documentation about them.

> I hope you can give me some help. Thank you very much.
>

Frediano
