Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E5A576546A
	for <lists+spice-devel@lfdr.de>; Thu, 27 Jul 2023 14:58:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C884610E579;
	Thu, 27 Jul 2023 12:58:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oa1-x2e.google.com (mail-oa1-x2e.google.com
 [IPv6:2001:4860:4864:20::2e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37C0210E583
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jul 2023 12:58:38 +0000 (UTC)
Received: by mail-oa1-x2e.google.com with SMTP id
 586e51a60fabf-1bb75afeee3so784191fac.0
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jul 2023 05:58:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1690462717; x=1691067517;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=96NdriYd+AHIrPiGS7foambEtK88+9BUEKfeRAYJT/8=;
 b=pedesmwXPqZf5fQpTfEIDFnBwi56h3kIuKrf+E92kSVYgVp8GIeBUN31dma+H4GLaH
 aSwJc9gyYf5U6e1s+pR+rkjVlXcoGL1hf5UpDnBHYhRrgYf15SeOgRiH87UWo9evqSZt
 feTU1BXPPjoos7C6L4ScyN91uVxoz6hoH7GQB9rm6K14nLs4kfYJqp4hP1HpgAaPGsnK
 G9WRGZ+VuCVI3jtwufU4Vt9mLJvDrNCbJR/wtZXg8RL0iHvoE2c1ndqPfw/KOnjbIM/o
 0wZt8ULhrTJvaO+4SwAyzQ6eEsJ+YDJeMzmaq9MTv1pjUgYsF0pozCd3Z1TC3hGq16+o
 J1Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690462717; x=1691067517;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=96NdriYd+AHIrPiGS7foambEtK88+9BUEKfeRAYJT/8=;
 b=aP4uv+P0Zs4VUiCRAJel7GT8oulx+n46suWW55fvmdhOkuFg9rSPts4xMAQodqhUHF
 t+oeCc+f6keLDONO7IcFUp+MxoMIFMvZpwzaZlXiHsJsuvuxysK3H/bUJJ9jb3a5H1iq
 dmjXmllAUfOFKXvRgn2EqbkiE4ig9itn2YXKq/ThyKetFrrSPHgyzT1r7NbCK8IdDAb8
 AE1dG77onVUWHK0RDr4pNlBOCnYddBWaeH1S8vzUET070hTeg7kGmr0prl64q+1Tu2H7
 2m34oECBdS/lBpKknBy5TXhIPN7uBQm+S7e70J4pxG9npPsUlhU/2iCUAvLhULHBlJVj
 RuLw==
X-Gm-Message-State: ABy/qLaFvTSAGqEJ3emaV0FlCfOwnka22nmr8ZYkTrtzRQjzPgihGTEJ
 PovKTxz94aNc3K6OdAU060vbZjB4Mydfzwyr7kY=
X-Google-Smtp-Source: APBJJlFVHpKMj1nfx8+K4mqdEGv9nL55otyv+BLM0B0crkvMIkgZe9kWBUJ03Z4HdKfVlp07iW+kwTXN00DE6Lnkr0k=
X-Received: by 2002:a05:6870:e88e:b0:1bb:8483:a807 with SMTP id
 q14-20020a056870e88e00b001bb8483a807mr3046012oan.44.1690462717419; Thu, 27
 Jul 2023 05:58:37 -0700 (PDT)
MIME-Version: 1.0
References: <u8qV-fZ2vM_GWM2POdCo0P5fpICkxnBfOq-hippB-LmzHUDaENQknqf6qz17aAyGBCmCJfuRJSMiH6SLrGSHkUitl-XJdNLNUMKWz3rG8-8=@protonmail.com>
In-Reply-To: <u8qV-fZ2vM_GWM2POdCo0P5fpICkxnBfOq-hippB-LmzHUDaENQknqf6qz17aAyGBCmCJfuRJSMiH6SLrGSHkUitl-XJdNLNUMKWz3rG8-8=@protonmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Thu, 27 Jul 2023 13:58:26 +0100
Message-ID: <CAHt6W4ePeactbVAiy1G+7xuwP9+NG63V43g12kCgr_ue2pymqw@mail.gmail.com>
To: =?UTF-8?B?5rCR55Sf6ZO26KGM?= <KRUranustest@protonmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Spice-devel] How to Remote Windows without Seeing Tutorial
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno gio 27 lug 2023 alle ore 13:34 =E6=B0=91=E7=94=9F=E9=93=B6=E8=A1=
=8C
<KRUranustest@protonmail.com> ha scritto:
>
> How to remotely install Windows without seeing the tutorial? I need Windo=
ws to install the server. Remote Windows is required

Hi,
  it's not clear what you are asking. Are you sure "tutorial" is the
word you want?

You can surely install any operating system without following any
tutorials, for instance you can either try to insert the CD/DVD and
try to follow the wizard or any kind of installation or for more
complicated OSes follow the manual.

About remote access libvirt and virt-manager provides remote access to
configure systems from scratch.

If you need to have remote CD/DVD images (on the client) the last
SPICE client has a virtual drive you can use to provide access to an
installation disk.

Regards,
   Frediano
