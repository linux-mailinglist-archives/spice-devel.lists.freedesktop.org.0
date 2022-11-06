Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A2C61E0D4
	for <lists+spice-devel@lfdr.de>; Sun,  6 Nov 2022 09:22:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3522D10E16C;
	Sun,  6 Nov 2022 08:21:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com
 [IPv6:2607:f8b0:4864:20::22f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B157310E16C
 for <spice-devel@lists.freedesktop.org>; Sun,  6 Nov 2022 08:21:49 +0000 (UTC)
Received: by mail-oi1-x22f.google.com with SMTP id c129so9407117oia.0
 for <spice-devel@lists.freedesktop.org>; Sun, 06 Nov 2022 01:21:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=4icn5DCP2PtGmZB2dX5bEbtQWIUnLHDAgnwIxRuRUDU=;
 b=o/ESGNcfykwu2bNp7Bb8HAwPOWrnr7WlkybaGUP37HKCr2Vz8x6UlR37psBICtbOUT
 /KReE6+6hZCOx+p24IHktaq+3aWEIg2zrQw1Gywq9wZghQNPlDSGg2we/FOll7R3raWz
 TqvKf+hrUPBrh7SLLlIjpNWaks3OMK/E8qWEuLVAac7UNqPWCCdoBMDI9Gibzomvy2f6
 x953MhydB22O3lwcnhgBMsh/tWGqguvGJC+rbsfXYG7sTgrIoyCbVESTP4ffm8aaIH/F
 SJhuti3gdQHAbWcF6HcDuGkRYm6ZGsFHroo8fb68NUCLO98n3yKMg2GpgCX8zbdb9MgB
 Pm8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=4icn5DCP2PtGmZB2dX5bEbtQWIUnLHDAgnwIxRuRUDU=;
 b=j0xQ4JXz+X974t0km+cm4q2hZ/+Fee71+cw1TAKK7XrVlJkL5KlTVBAAoBu/0qlNaf
 jbugQsz10qqY6ukT6r74chv7ywOjyU/0vZte8WMBol/TPsc57Sq8eQD5ruVyWHAXxBXa
 RC2rXZEakinHrjRu1RISRfCMgkfWPbUqBpfCzT7MKegiqmDFbQd6XBcxFBK5W7cB2o12
 L78TCHQvpXk9G8mRynxlxiCx/wEuSCTx1Fw56SZI6q6a+HX/GkMi1YLaeXSVJ/H5262K
 S8GDrEJGaGgEa9v7boA74slJSi/K9l5oICKjv3rSYLhFU25g2+GdF/232J10cDIv+Fvf
 4cZg==
X-Gm-Message-State: ACrzQf2B95tbac+s7lAqI+OMe5XEgrEVVkji2jFZf3fINdOkaKusfqHj
 GEMgq2GMEuOdGY2lRazsE/U5Jr9rR2DWh+Hi0Z0=
X-Google-Smtp-Source: AMsMyM4t52bucw3wSf+X2zrdeFZ/n0C4H0A10DFVuHizv6C86HLMZNoxbEI6bVfLDIx+YQocmsEhkh+mGtkiHIrH2zY=
X-Received: by 2002:a05:6808:1992:b0:35a:6005:3dc6 with SMTP id
 bj18-20020a056808199200b0035a60053dc6mr6204938oib.1.1667722908905; Sun, 06
 Nov 2022 01:21:48 -0700 (PDT)
MIME-Version: 1.0
References: <PYPGGnYoyG-Z7cu7sTB5CUQnfLogiolh-k4lRx8ajo4vNyZDFnkqPNzftiZIDVzziqXf6LxYpAQt3kw5rnHWNdOrao_ObxBN58ZAM_IHGCY=@proton.me>
In-Reply-To: <PYPGGnYoyG-Z7cu7sTB5CUQnfLogiolh-k4lRx8ajo4vNyZDFnkqPNzftiZIDVzziqXf6LxYpAQt3kw5rnHWNdOrao_ObxBN58ZAM_IHGCY=@proton.me>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Sun, 6 Nov 2022 08:21:37 +0000
Message-ID: <CAHt6W4cwaOzAaRVxg6uOET5PNA3i80OVedPu0=r4WTh+8M+CGA@mail.gmail.com>
To: let-me-use-copy-and-paste <let-me-use-copy-and-paste@proton.me>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Spice-devel] Agent crashes on Alpine Linux guest due to lack
 of /dev/uinput
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

Il giorno dom 6 nov 2022 alle ore 08:10 let-me-use-copy-and-paste
<let-me-use-copy-and-paste@proton.me> ha scritto:
>
> I installed Alpine Linux 3.16 virtual machine edition on QEMU/KVM using V=
irt-Manager. I installed XFCE on it. I wanted to enable copy-and-paste, so =
I tried to install spice-vdagent on it, but it kept crashing. I checked the=
 output using the "-x" parameter, and basically, it crashed due to the lack=
 of /dev/uinput. The screenshot is at https://i.imgur.com/9WKaVG8.png
>
> I do not know Linux much, so I am not sure if /dev/uinput is not present =
due to the settings of the virtual machine or because I have not installed =
something on Alpine Linux. I tried the standard edition of Alpine, and righ=
t after the installation, /dev/uinput was not present.
>
> In case that Alpine Linux indeed does not support /dev/uinput, can't the =
spice service run anyway? All I want is text copy-and-paste between the hos=
t and the guest, and does that feature need /dev/uinput?

Hi,
   try to add "-f -u /dev/null" to the parameters (that is
"--fake-uinput --uinput-device /dev/null").

Frediano
