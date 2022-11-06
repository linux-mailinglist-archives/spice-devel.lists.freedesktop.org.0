Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D343961E1B6
	for <lists+spice-devel@lfdr.de>; Sun,  6 Nov 2022 11:44:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A75610E087;
	Sun,  6 Nov 2022 10:44:43 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-41103.protonmail.ch (mail-41103.protonmail.ch
 [185.70.41.103])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 671B910E084
 for <spice-devel@lists.freedesktop.org>; Sun,  6 Nov 2022 10:14:32 +0000 (UTC)
Date: Sun, 06 Nov 2022 10:14:08 +0000
Authentication-Results: mail-41103.protonmail.ch;
 dkim=pass (2048-bit key) header.d=proton.me header.i=@proton.me
 header.b="EwWqfFG/"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
 s=protonmail; t=1667729659; x=1667988859;
 bh=Cu8Ib0E/ezfNaxZD5lD6nnDCy/XHl1Sa8ESGLZhixnc=;
 h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
 Message-ID:BIMI-Selector;
 b=EwWqfFG/U16D1OcE6tf0ipdJeyANYtX1SZaTZJeEsDjJk3Xc2Ar0Erw5QBrognXta
 AjiZIyhNbVjzsxXZypAOIAcV4sVc1dwQmXeorfyhbfMzSUKUBtgl5w+WzmISvzg9KH
 n9EZfRCdFKl15KSmZCDN6QFCuQjdkyiK3jPRiH8XpgqSA5rZK86+60tTneNXdItVI6
 OJ2skd23SQp/xX1L6w7JF3/9Ikat+JALHMFGAaUl0PNK+yy2pJKrwWYMGhRInKRt05
 Wh4hxhgjz8AK1L7BOwp3WftF/9VQ/LHdUcK4P/2yvWuwtb6DfnS3EI/AZHr6pv3lqk
 0ERa3lE4TgxpA==
To: Frediano Ziglio <freddy77@gmail.com>
From: let-me-use-copy-and-paste <let-me-use-copy-and-paste@proton.me>
Message-ID: <_IOcomilYrKnDYwcgFSumvVAHvOUoBBRx8KIhZfnagkZHAw38DUD9k2l85bFnAAwCTR01CRpKV_JF2qFF26IQxVkdzBRvP4iQp7kHG5qOY0=@proton.me>
In-Reply-To: <CAHt6W4cwaOzAaRVxg6uOET5PNA3i80OVedPu0=r4WTh+8M+CGA@mail.gmail.com>
References: <PYPGGnYoyG-Z7cu7sTB5CUQnfLogiolh-k4lRx8ajo4vNyZDFnkqPNzftiZIDVzziqXf6LxYpAQt3kw5rnHWNdOrao_ObxBN58ZAM_IHGCY=@proton.me>
 <CAHt6W4cwaOzAaRVxg6uOET5PNA3i80OVedPu0=r4WTh+8M+CGA@mail.gmail.com>
Feedback-ID: 60728310:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Sun, 06 Nov 2022 10:44:38 +0000
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

> > I installed Alpine Linux 3.16 virtual machine edition on QEMU/KVM using=
 Virt-Manager. I installed XFCE on it. I wanted to enable copy-and-paste, s=
o I tried to install spice-vdagent on it, but it kept crashing. I checked t=
he output using the "-x" parameter, and basically, it crashed due to the la=
ck of /dev/uinput. The screenshot is at https://i.imgur.com/9WKaVG8.png
> >=20
> > I do not know Linux much, so I am not sure if /dev/uinput is not presen=
t due to the settings of the virtual machine or because I have not installe=
d something on Alpine Linux. I tried the standard edition of Alpine, and ri=
ght after the installation, /dev/uinput was not present.
> >=20
> > In case that Alpine Linux indeed does not support /dev/uinput, can't th=
e spice service run anyway? All I want is text copy-and-paste between the h=
ost and the guest, and does that feature need /dev/uinput?
>=20
>=20
> Hi,
> try to add "-f -u /dev/null" to the parameters (that is
> "--fake-uinput --uinput-device /dev/null").
>=20
> Frediano

In Alpine Linux, if I install the "spice-vdagent" package, there seem to be=
 two executables: spice-vdagentd and spice-vdagent. I ran spice-vdagentd wi=
th "-x -d -d -f -u /dev/null" and this time, it did not crash. But as soon =
as I ran "spice-vdagent -x -d", the virtual machine's mouse stopped working=
. With the debug messages from spice-vdagentd, I knew that the daemon was r=
eceiving the mouse pointer movements and button clicks, but somehow the XFC=
E desktop did not get it, so I could not do things like clicking a window. =
Keyboard was working, though. Also, probably copy-and-paste also would work=
, because in the debug message from spice-vdagent, it seemed to have receiv=
ed the event, when I copied some text on the host OS. How can I fix this mo=
use not moving problem?

Also, there is another problem. It seems that after running "spice-vdagentd=
 -x -f -u /dev/null", any subsequent execution of it fails with "Fatal coul=
d not create the server socket /run/spice-vdagentd/spice-agent-sock: Error =
binding to address (GUnixSocketAddress): No such file or directory. Rebooti=
ng the guest OS did not solve the problem. Here is the screenshot: https://=
i.imgur.com/pKtD8BH.png

Luckily, I had created a snapshot right after installing Alpine Linux and X=
FCE, so I can revert it and keep testing. If there is anything more I can d=
o, please let me know.
