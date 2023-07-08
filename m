Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B5C74BD1F
	for <lists+spice-devel@lfdr.de>; Sat,  8 Jul 2023 11:36:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71C8A10E0CB;
	Sat,  8 Jul 2023 09:36:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oa1-x2b.google.com (mail-oa1-x2b.google.com
 [IPv6:2001:4860:4864:20::2b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CE5310E0CB
 for <spice-devel@lists.freedesktop.org>; Sat,  8 Jul 2023 09:36:08 +0000 (UTC)
Received: by mail-oa1-x2b.google.com with SMTP id
 586e51a60fabf-1b0719dd966so2838878fac.1
 for <spice-devel@lists.freedesktop.org>; Sat, 08 Jul 2023 02:36:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1688808967; x=1691400967;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Sq+eAach0NVLj0B104jIl2iiUZaW7PXb4qTMzxWY9wM=;
 b=MQwUIsVmrJ4eeWYv6y2USVVzw02RQYm6YIT9sLrYVfeWlcniOo/aeGO413Cv0E2HBu
 +JwdFjkwGaREPXKgzH5oTPLxbNs215XnXVHz4sudv8RzbNju6zKoFVFO7TBBBGeoB5Tv
 V+mWvVQnjcEfmZ8MoQZ1rpasUpWskTIlPY/npXUn5yE53KIcAeWrLobNU6R1pqNN1f8n
 vM7VPTO5TRmAZgmfKloIyPbjgi9TmwDDvYoPJzv+d0CFrQWVjJ2pmIvxL+EDpT3cvX6A
 nmcrjd1bkAd8ciW86gbJYjfB5uovw4jjG6S7Yj+bKCPbzLPM5QkzcDF22j6Pha//GpJI
 37tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688808967; x=1691400967;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Sq+eAach0NVLj0B104jIl2iiUZaW7PXb4qTMzxWY9wM=;
 b=G0Re/4EGn+CLHsbC1uQCpm8mT7g1D9ugGpQyj0ceHiHtE8gm4kuqBA/rCD4Jo9TQz2
 4AkfUa2Z30JJczDYZNBd+DO9B+Np/Iqe8c1v4K/MAdX4Ac93BcMr0clRSFyRhTnY9rkz
 6vSatStjRgg97KqedXCZZAAoDY23W9P9qLzyNTrafbFbS+JPdtuGgevKhwfSN8SuB6hn
 tDK6/pySJTS60czkIXtYbVbd2pR8AbyRfbaQ3ZsdffypNK8PmkOhFVaBe3POWt/eHRLD
 0COx79HKX/9yDW9u17zch2Jy2uGLPaAk0NxrE6yhw8JqKjR17EPJBFXiSq8Y94MR2FUD
 F1Zg==
X-Gm-Message-State: ABy/qLa/iAKj6Th/ryHkakvDO04sgtzLeVSt8IfwA9keseViCUH+WMUi
 Oar9JiqsDr0nmdqBHZ2dDElxyzTWhr4hNz8WMsc=
X-Google-Smtp-Source: APBJJlHbkBXGJiMeoROPGilSffYprRpozVqW22aSVlaqgOgulMmbcLSdPc7o7Qr1Th6p2zymKNa2oaLvimMM6MST1Xo=
X-Received: by 2002:a05:6870:328a:b0:1b3:9bbf:d1b0 with SMTP id
 q10-20020a056870328a00b001b39bbfd1b0mr10794624oac.26.1688808966800; Sat, 08
 Jul 2023 02:36:06 -0700 (PDT)
MIME-Version: 1.0
References: <tencent_B6679654B7F9B858ACDD19AF01982938DB0A@qq.com>
In-Reply-To: <tencent_B6679654B7F9B858ACDD19AF01982938DB0A@qq.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Sat, 8 Jul 2023 10:35:55 +0100
Message-ID: <CAHt6W4esuZwZ6o+CdT2_jo2q+W3P38vrp0ooGA3gY3UUhNkORw@mail.gmail.com>
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

Il giorno sab 8 lug 2023 alle ore 10:21 =E4=BA=BA=E5=AE=97=E9=81=93=E9=A6=
=96 <928003896@qq.com> ha scritto:
>
> Hi :
> I am a graduate student of Dalian University of Technology
>
> We have a project to accomplish a remote-desk solution with Nvidia vgpu.
> I want to know how SPICE can display virtual desktop with vGPU.
>
> Do you need to modify the QXL driver and device? The open source code of =
QXL is hard to understand. Is there a detailed Technical documentation?
>
> Or can SPICE - Streaming Agent be used to replace the functionality of QX=
L? Do we need to make any changes?
>
> I hope you can give me some help. Thank you very much.
>
>

Hi,
  the question about QXL means that there's a bit of confusion about
the technology used.

Nvidia vGPU allows you to give a part of the card to the guest that
will see this "part" as a graphic card.
QXL is a virtual implementation of a different graphic card (yes, it
can be confusing that the graphic APIs of SPICE are prefixed
spice_qxl_).
So, nothing forbids that on the guest you can have 2 graphic cards
(one Nvidia vGPU and another QXL) and this is usually useful during
the setup of pass-through cards but working on QXL card won't improve
Nvidia vGPU support.
The streaming agent was designed for such cases, to allow the SPICE
server to "see" the guest GPU. This as the GPU control is mainly (if
not completely) delegated to the guest and Qemu/SPICE has not much
control on it (like getting frames or even less encode them).

Regards,
  Frediano
