Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EFC1B59B315
	for <lists+spice-devel@lfdr.de>; Sun, 21 Aug 2022 12:14:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A08118A1CA;
	Sun, 21 Aug 2022 10:14:48 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com
 [IPv6:2607:f8b0:4864:20::232])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F83618A198
 for <spice-devel@lists.freedesktop.org>; Sun, 21 Aug 2022 10:14:38 +0000 (UTC)
Received: by mail-oi1-x232.google.com with SMTP id w197so9281050oie.5
 for <spice-devel@lists.freedesktop.org>; Sun, 21 Aug 2022 03:14:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc;
 bh=WJ4kjsMGi6KQF6NNmJoXVurwYpyM/ffglQlwRHDor3M=;
 b=kALutf8rw/gd9QcIm8mMEQpZZbpESDynS6EfMqpZJXujrUvgSc2COvNXLXPDfd08+n
 A9FMkeDTz6FZEFz+/89wbdoUvAy9w1krpj3TEdoztYNiD/PUvN/VgsRZHk4Z0H3aDZLT
 1s2d08AsWqHWTt5ecoS8ABGDqF4SrcDlLtGsKyGa7irAa6TTB12H90BeP47lvVP+GD3c
 EFXhMb/ul/sJYumSxV2sqBvc70SEch5wZSDhitcYWcpj1wOQTqxQSfrkdMTn91CdOSOB
 geyTB5xMYXr+vgiLzMn8N8i8feeBpkJzOCNLOK04Qufi48RFB4ulq4nni4PY2fYk9YsV
 O/EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc;
 bh=WJ4kjsMGi6KQF6NNmJoXVurwYpyM/ffglQlwRHDor3M=;
 b=4Vpp2oMSUL1hj1RrYeYNy5lfZngordSUYzjkS61/e3NiLEl/ZjQl9gDn2lDtVUOIq6
 S8e3FwlmfFzOKjN9TF13GVrHGSzsWFylUHCX43pPIvsSPFL1Z58loZaSzjkLoJFKeOpE
 rG4t+9y9lD+AOE7AmAYVKCBdTzrjlquC4wAGaV3sfnlSHoQpMlNvg9e7RXrhSva3671U
 OC4h8G/YnUX+NhX8ZrPD+OrEkeaXnz85t3NTqvwU8DApeYbGvxM2E88oz2Kmrz/Udufc
 DtqZcU+T4Gof2o1iJpA4j5shG6H+pAMMQ2GJH6OcnauGA9hgb7bUKB0+h0dYl2p1NZtE
 DHjA==
X-Gm-Message-State: ACgBeo2Wndv7bIgnxXLDPzJrlEYKqnRC91gyaahwz9wVlbTJkP+2cU7G
 +re4u3rIc4C/Kaft36dNV5713SZFYCenXZwgm/c=
X-Google-Smtp-Source: AA6agR4TuL+D8dYwbGXZK91vqcYukFvwxLB5QZ0kqVMvdWtm4ryBrCDSrVuWaf6lpaKbia8MIRxTjVC6sziCFcbPuSw=
X-Received: by 2002:a05:6808:181e:b0:344:c8a8:c30c with SMTP id
 bh30-20020a056808181e00b00344c8a8c30cmr7076857oib.179.1661076877310; Sun, 21
 Aug 2022 03:14:37 -0700 (PDT)
MIME-Version: 1.0
References: <76c675b0-8955-82b7-9c32-1f7fb18bebe9@diateam.net>
 <20220821081942.rtfdwntvlmu6kqfk@tapioca>
In-Reply-To: <20220821081942.rtfdwntvlmu6kqfk@tapioca>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Sun, 21 Aug 2022 11:14:25 +0100
Message-ID: <CAHt6W4diTuY=F0bsP=Rh2ikisGNaTegHUbdw-Q4c-uLCHPCXeA@mail.gmail.com>
To: Victor Toso <victortoso@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Spice-devel] x11-spice equivalent for Windows
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>,
 Jonathan Winterflood <jonathan.winterflood@diateam.net>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno dom 21 ago 2022 alle ore 09:20 Victor Toso
<victortoso@redhat.com> ha scritto:
>
> Hi Jonathan,
>
> On Fri, Aug 19, 2022 at 06:33:18PM +0200, Jonathan Winterflood wrote:
> > Hello,
> >
> > We are using SPICE with Qemu with much success, but were
> > wondering whether a solution similar to x11-spice exists for
> > sharing an existing Windows system via SPICE (rather than then
> > usual RDP/VNC, etc.), for use on e.g. bare metal, VirtualBox,
> > Vmware, etc. that do not provide "normal" spice servers like
> > Qemu does.
>
> I'm not aware of anyone that has started such project. I think
> that should be possible as spice-sever does build on windows and
> can be enabled for windows build of QEMU.
>
> Cheers,
> Victor

There's a project at https://github.com/mathslinux/winspice or
https://gitlab.freedesktop.org/spice/win32/winspice.
The status is "as it is". I personally still have to test it in any way.

Frediano
