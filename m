Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CECDC2DAF99
	for <lists+spice-devel@lfdr.de>; Tue, 15 Dec 2020 16:00:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C37E6E3DA;
	Tue, 15 Dec 2020 15:00:58 +0000 (UTC)
X-Original-To: spice-devel@freedesktop.org
Delivered-To: spice-devel@freedesktop.org
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com
 [IPv6:2607:f8b0:4864:20::429])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F7506E3DB
 for <spice-devel@freedesktop.org>; Tue, 15 Dec 2020 15:00:57 +0000 (UTC)
Received: by mail-pf1-x429.google.com with SMTP id 131so14647990pfb.9
 for <spice-devel@freedesktop.org>; Tue, 15 Dec 2020 07:00:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EMHxICg9XbyEPnqbu6CVkz+YLdcTxlGgfLkm6LoKViM=;
 b=DejeRO+wepuVVGrB3cYxdC2Juq44mZ3U7Ja69//u7QteRGNCGDe4up6Q06lgrMX/AO
 /eQrfprFpizo3+LQIEIPmgBSfa/BG3X4IXHCuW2glmr8VoPv92rXOB2TX3q5eBskgLAd
 h1+jomhlpI7aKa9rHwbYtaaG9VE+rT2aMzqvRVz5H/lguyp4qQwdIBKvAkvno4txjUrY
 wRwbQqCO8rK8AGKtk/EmsS9impsHFIyJilq5UFy87Vd07fyTJWkBzEs2pnBBw718X9Wf
 0hBwd0+LjozKrtGQ4Fc+eUKotuyqVIbwN0TEC2tGYkcdTOS5EZRAB4ipsI70W0tzqwnW
 QH2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EMHxICg9XbyEPnqbu6CVkz+YLdcTxlGgfLkm6LoKViM=;
 b=XnArlMTFj7sOhyzVDOqftnE+7BGhd+wB3L6TU7KqnKl7ivV2bPJrVJDp05vhRO5XoD
 Da5WBmRbu1WpkraNy4U7IFl+C163fs/riFWy/3l1JZ2WahUisXi0xhJQVvyGn1uqOPsW
 tJUVxMmfdoiOlD0qQnVvDFNg0kLlGDhZuY9saiV6bdRYmwgiwTRa2ft7BbJ7DO/0GOkI
 23kN2y4PlWwl/4LM0enjPsHDZO4gSf09GLyQlJfsU/t15//tU1UVdgrve5/WaUMl5eH+
 ORiePy9NyJ29sY/0gzVC6iTUlyuxmuuC8gMVmv06XxAtFodLATAJ4l8pdJKn16XIhK1Y
 ot7A==
X-Gm-Message-State: AOAM5329YIt17k6nG+CNYFV2IRJkkq3nVkmUQ1GXqdFGU34CrRupixAB
 Vb3j5gAKzFRCqFNJAWBZKMGviKV6mNuu5cLGdWU=
X-Google-Smtp-Source: ABdhPJzPutIIhJmKp5qmdmSqR/F1HGs6q2GbrGTc1NK9DKvza0tWLTC12S2QuIutP4hgP8ZSTiyTaX93vwBA83PKzyo=
X-Received: by 2002:a05:6a00:1623:b029:1a4:e935:87a8 with SMTP id
 e3-20020a056a001623b02901a4e93587a8mr11976638pfc.26.1608044456538; Tue, 15
 Dec 2020 07:00:56 -0800 (PST)
MIME-Version: 1.0
References: <CAOvx4-3g+wSy6Qepf=37nUUhrhHd_hj9YJ5An3FuZLm16Sk-Dw@mail.gmail.com>
In-Reply-To: <CAOvx4-3g+wSy6Qepf=37nUUhrhHd_hj9YJ5An3FuZLm16Sk-Dw@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Tue, 15 Dec 2020 15:00:45 +0000
Message-ID: <CAHt6W4fuV3t7h6U888MT9baXYmOG1fDvesFVrSELwnfMLH1hOA@mail.gmail.com>
To: Armin Ranjbar <zoup@zoup.org>
Subject: Re: [Spice-devel] TLS + Letsencrypt doesn't work on Windows
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
Cc: spice-devel <spice-devel@freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno mar 15 dic 2020 alle ore 11:45 Armin Ranjbar <zoup@zoup.org>
ha scritto:
>
> Dear Everyone,
>
> As always, let me thank you first for the effort you put in Spice.
>
> I have a strange case here, libvirt is configured with letsencrypt certificates, remote-viewer works happily on Linux, but it doesn't seem to be able to get local issuer certificate on windows.
> same error even when I try to give the address of CA file via --spice-ca-file, attaching logs with spice-debug here:
>
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.293: ../src/spice-session.c:292 Supported channels: main, display, inputs, cursor, playback, record, usbredir
> (remote-viewer.exe:3584): Spice-DEBUG: 15:13:17.293: ../src/usb-device-manager.c:259:spice_usb_device_manager_init: UsbDk driver is not installed
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.293: ../src/usb-device-manager.c:485 auto-connect filter set to 0x03,-1,-1,-1,0|-1,-1,-1,-1,1
>
> (remote-viewer.exe:3584): GSpice-CRITICAL **: 15:13:17.293: _usbdk_hider_update: assertion 'priv->usbdk_api != NULL' failed
>
> (remote-viewer.exe:3584): GSpice-WARNING **: 15:13:17.962: password may be visible in process listings
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.965: ../src/spice-session.c:1814 no migration in progress
> Spice-INFO: 15:13:17.965: ../src/channel-main.c:337:spice_main_set_property: SpiceMainChannel::color-depth has been deprecated. Property is ignored
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.965: ../src/spice-channel.c:141 main-1:0: spice_channel_constructed
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.965: ../src/spice-session.c:2309 main-1:0: new main channel, switching
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.680: ../src/spice-channel.c:2707 main-1:0: Open coroutine starting 000000000462E480
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.680: ../src/spice-channel.c:2544 main-1:0: Started background coroutine 000000000462E338
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.680: ../src/spice-session.c:2231 Missing port value, not attempting unencrypted connection.
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.680: ../src/spice-channel.c:2570 main-1:0: trying with TLS port
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.694: ../src/spice-session.c:2244 main-1:0: Using TLS, port 5901
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.694: ../src/spice-session.c:2177 open host DOMAIN_REPLACED:5901
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.694: ../src/spice-session.c:2099 main-1:0: connecting 00000000071DFDD0...
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.757: ../src/spice-session.c:2083 main-1:0: connect ready
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.757: ../src/spice-channel.c:2466 main-1:0: Load CA, file: C:\ca-cert.pem, data: 0000000000000000
>

This "data: 0000000000000000" refers to a specific CA loaded, the
function should load certificates from the file afterward.
If the load would fail there should be a warning like "loading ca
certs from C:\ca-cert.pem failed" but it's not present.
Also if the load fails there should be another "loading ca certs from
default location failed" warning.

> (remote-viewer.exe:3584): Spice-WARNING **: 15:13:18.819: ../subprojects/spice-common/common/ssl_verify.c:444:openssl_verify: Error in certificate chain verification: unable to get issuer certificate (num=2:depth1:/C=US/O=Let's Encrypt/CN=R3)
>

Sure the C:\ca-file.pem contains the CA certificate for Let's Encrypt ?

Frediano
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
