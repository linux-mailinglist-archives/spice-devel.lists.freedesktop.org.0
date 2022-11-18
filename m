Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CFDB62F6C6
	for <lists+spice-devel@lfdr.de>; Fri, 18 Nov 2022 15:05:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 490EB10E72F;
	Fri, 18 Nov 2022 14:05:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-4324.protonmail.ch (mail-4324.protonmail.ch [185.70.43.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 283C310E72F
 for <spice-devel@lists.freedesktop.org>; Fri, 18 Nov 2022 13:59:15 +0000 (UTC)
Date: Fri, 18 Nov 2022 13:59:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
 s=protonmail; t=1668779952; x=1669039152;
 bh=ftQ3QS26KWGcZ15Odj/8ibjw/AGfkFI0Z43EXOwLEK8=;
 h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
 Message-ID:BIMI-Selector;
 b=T7qGRM+0AONdIzhejRnbAR9ivkbKhpIJDctEChKzY83uUdkrM6qZwd5r+sWerlJKy
 Fh3j09kwoaWJ02NGjfzovudijZvIdNVWhMpbCspBekJovtho7NlGhocH7+FqGKrqqQ
 PIg7/TmJzFQr9GQbXoDW3tmiYP7c+ULtcmr1h075XGsbrCq0zKV/1OZM9CQ6//KvDM
 58vZqYGt1iDnpOfS9H3HvJCqMjFMaLYANO+pBfMQUjDOiCDshdbvq4R/js+97DwvwL
 Nd+AhqA58+T0njWlKYH2Vxjj2OC1cXT7cAcBeS2dTEeig3VqMO2ruFA7tBOTe9ZEBw
 ABn15UKRr2Low==
To: Victor Toso <victortoso@redhat.com>
From: let-me-use-copy-and-paste <let-me-use-copy-and-paste@proton.me>
Message-ID: <Yf3cAaYu-luFoudWEvkAudKPcLsxfe3eIH76oIAl4vfHlOxL23wfZMuAF1ZsVFmgvsY7YWtRXpCrP3xGg7hPFM2J5kAfXOJGhCbOuwxGY6Q=@proton.me>
In-Reply-To: <20221117084417.6lzclrstp7ljwneq@tapioca>
References: <PYPGGnYoyG-Z7cu7sTB5CUQnfLogiolh-k4lRx8ajo4vNyZDFnkqPNzftiZIDVzziqXf6LxYpAQt3kw5rnHWNdOrao_ObxBN58ZAM_IHGCY=@proton.me>
 <20221117084417.6lzclrstp7ljwneq@tapioca>
Feedback-ID: 60728310:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Fri, 18 Nov 2022 14:05:04 +0000
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

> Hi,
>=20
> Sorry the delay, I've been away :)
>=20
> On Sun, Nov 06, 2022 at 07:02:12AM +0000, let-me-use-copy-and-paste wrote=
:
>=20
> > I installed Alpine Linux 3.16 virtual machine edition on
> > QEMU/KVM using Virt-Manager. I installed XFCE on it. I wanted
> > to enable copy-and-paste, so I tried to install spice-vdagent
> > on it, but it kept crashing. I checked the output using the
> > "-x" parameter, and basically, it crashed due to the lack of
> > /dev/uinput. The screenshot is
> > at=C2=A0https://i.imgur.com/9WKaVG8.png
> >=20
> > I do not know Linux much, so I am not sure if /dev/uinput is
> > not present due to the settings of the virtual machine or
> > because I have not installed something on Alpine Linux. I tried
> > the standard edition of Alpine, and right after the
> > installation, /dev/uinput was not present.
> >=20
> > In case that Alpine Linux indeed does not support /dev/uinput,
> > can't the spice service run anyway? All I want is text
> > copy-and-paste between the host and the guest, and does that
> > feature need /dev/uinput?
>=20
>=20
>=20
> Well, seems that they do build uinput.ko
>=20
> https://pkgs.alpinelinux.org/contents?file=3Duinput.ko&path=3D&name=3Dlin=
ux-vanilla&branch=3Dv3.4&repo=3Dmain&arch=3Dx86_64
>=20
> It might be a matter of installing the right package and/or
> modprobe uinput
>=20
> Cheers,
> Victor

The version you linked was version 3.4. The current Alpine Linux version is=
 3.16, and when I selected 3.16 on that page, there was no package with the=
 name. Doesn't it mean that it is no longer supported?
