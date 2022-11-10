Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C8287623C53
	for <lists+spice-devel@lfdr.de>; Thu, 10 Nov 2022 08:06:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB67610E5B0;
	Thu, 10 Nov 2022 07:06:45 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-4318.protonmail.ch (mail-4318.protonmail.ch [185.70.43.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03E3410E656
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Nov 2022 03:14:23 +0000 (UTC)
Date: Thu, 10 Nov 2022 03:14:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
 s=lp3tkmjsrvfophudjpxcwmbzda.protonmail; t=1668050062; x=1668309262;
 bh=twBwq5Ys7wS5Rk3wU9KyrbtPt2OUbu7L8LhaEMC9gZg=;
 h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
 Message-ID:BIMI-Selector;
 b=BBnPAxHUO9NoYyvJnvynSZtHmS2c7tI+bc23UWrww9iTIzEwIPJbpruyMYbjjASl/
 xO9r6vEmEi5ZkoAFz/8I0Oaa7uqYypsa1cnWn/qajZ3mTLbCOMzU+mefIc5xrmCxCh
 0cyqHcAc0VLRqC8CXPwkS5D6FuEYIwFXNdkgwT1/Rc7Q9SyCNGbCCqlxeBGh22JgJH
 3cgEiUyFqPTZ9htwiXZov4oC2Dr29pr1PlwfQQCnnSOZppCmdkXFQk+gHyy95D3uag
 eQFhvk90hzpvLVrtu93OTbJOJ9lfjCTZP8zEPpeETXOSRcYE7bcERJz6ZndDFPXU//
 Cb8C0Hp50h8Vw==
To: Frediano Ziglio <freddy77@gmail.com>
From: let-me-use-copy-and-paste <let-me-use-copy-and-paste@proton.me>
Message-ID: <ILS8VUxFQEXg03bcavjZEhC9OdcZX2RCw3LezcmA6vdYFYdmIu6aGEqSSs5G0VwffNxLpidD5hGc9qR7Xw_mrL_EtI-vhUELN-FFXVS0hNQ=@proton.me>
In-Reply-To: <_IOcomilYrKnDYwcgFSumvVAHvOUoBBRx8KIhZfnagkZHAw38DUD9k2l85bFnAAwCTR01CRpKV_JF2qFF26IQxVkdzBRvP4iQp7kHG5qOY0=@proton.me>
References: <PYPGGnYoyG-Z7cu7sTB5CUQnfLogiolh-k4lRx8ajo4vNyZDFnkqPNzftiZIDVzziqXf6LxYpAQt3kw5rnHWNdOrao_ObxBN58ZAM_IHGCY=@proton.me>
 <CAHt6W4cwaOzAaRVxg6uOET5PNA3i80OVedPu0=r4WTh+8M+CGA@mail.gmail.com>
 <_IOcomilYrKnDYwcgFSumvVAHvOUoBBRx8KIhZfnagkZHAw38DUD9k2l85bFnAAwCTR01CRpKV_JF2qFF26IQxVkdzBRvP4iQp7kHG5qOY0=@proton.me>
Feedback-ID: 60728310:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Thu, 10 Nov 2022 07:06:43 +0000
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

> > > I installed Alpine Linux 3.16 virtual machine edition on QEMU/KVM usi=
ng Virt-Manager. I installed XFCE on it. I wanted to enable copy-and-paste,=
 so I tried to install spice-vdagent on it, but it kept crashing. I checked=
 the output using the "-x" parameter, and basically, it crashed due to the =
lack of /dev/uinput. The screenshot is at https://i.imgur.com/9WKaVG8.png
> > >=20
> > > I do not know Linux much, so I am not sure if /dev/uinput is not pres=
ent due to the settings of the virtual machine or because I have not instal=
led something on Alpine Linux. I tried the standard edition of Alpine, and =
right after the installation, /dev/uinput was not present.
> > >=20
> > > In case that Alpine Linux indeed does not support /dev/uinput, can't =
the spice service run anyway? All I want is text copy-and-paste between the=
 host and the guest, and does that feature need /dev/uinput?
> >=20
> > Hi,
> > try to add "-f -u /dev/null" to the parameters (that is
> > "--fake-uinput --uinput-device /dev/null").
> >=20
> > Frediano
>=20
>=20
> In Alpine Linux, if I install the "spice-vdagent" package, there seem to =
be two executables: spice-vdagentd and spice-vdagent. I ran spice-vdagentd =
with "-x -d -d -f -u /dev/null" and this time, it did not crash. But as soo=
n as I ran "spice-vdagent -x -d", the virtual machine's mouse stopped worki=
ng. With the debug messages from spice-vdagentd, I knew that the daemon was=
 receiving the mouse pointer movements and button clicks, but somehow the X=
FCE desktop did not get it, so I could not do things like clicking a window=
. Keyboard was working, though. Also, probably copy-and-paste also would wo=
rk, because in the debug message from spice-vdagent, it seemed to have rece=
ived the event, when I copied some text on the host OS. How can I fix this =
mouse not moving problem?
>=20
> Also, there is another problem. It seems that after running "spice-vdagen=
td -x -f -u /dev/null", any subsequent execution of it fails with "Fatal co=
uld not create the server socket /run/spice-vdagentd/spice-agent-sock: Erro=
r binding to address (GUnixSocketAddress): No such file or directory. Reboo=
ting the guest OS did not solve the problem. Here is the screenshot: https:=
//i.imgur.com/pKtD8BH.png
>=20
> Luckily, I had created a snapshot right after installing Alpine Linux and=
 XFCE, so I can revert it and keep testing. If there is anything more I can=
 do, please let me know.

If there currently is no way to solve this problem, can't the agent be upda=
ted so that it would not crash when /dev/uinput is not present, and continu=
e to do what it can do without /dev/uinput? I mean, all I want is copy-and-=
paste, and I am not sure why that cannot function without /dev/uinput.
