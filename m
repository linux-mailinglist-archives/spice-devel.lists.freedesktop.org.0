Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A043E62563E
	for <lists+spice-devel@lfdr.de>; Fri, 11 Nov 2022 10:09:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D1F410E798;
	Fri, 11 Nov 2022 09:09:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-4319.protonmail.ch (mail-4319.protonmail.ch [185.70.43.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2354A10E784
 for <spice-devel@lists.freedesktop.org>; Fri, 11 Nov 2022 08:09:14 +0000 (UTC)
Date: Fri, 11 Nov 2022 08:09:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
 s=protonmail; t=1668154152; x=1668413352;
 bh=gsGGyxQFzkkzTMRCx7v7Zll9IFmnakRr7MlPuG9lNa8=;
 h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
 Message-ID:BIMI-Selector;
 b=TEvVyjNxq90aULCS6xHPeHGU7v3LBzgndSMrg9s0dvnnRO1FZ7KFcguqTVX/MDZ2F
 zuwLsg/lUU6b7piLtf3qOvMkXsIHLK6SrrRLkT2twAx5ZivCOfoJJa/LKm1WrkUKjJ
 35YJbhb0g7DfJnMyRPhdQSJxFjVtT8hK2Mja/QHEMMR/cXDLG8LIByXpEzytcMnyf1
 3YX57IL8fEJtVAqzx117OQX3ohv39+1sRbSydwGFidf8pG8AHltya5lY5oSFJP0Uxj
 j5vUWQ71HbFycr7fTnMNmbcK9PvUEYZ7sEntPhBrsd38PmfsplnpyWLFFJ9x/xdTbg
 1CFQ4mIm14Szg==
To: Frediano Ziglio <freddy77@gmail.com>
From: let-me-use-copy-and-paste <let-me-use-copy-and-paste@proton.me>
Message-ID: <WiDiRD-RexbpT94sQs-pgaU7rx_xnJh7bLMNn_qq5R4rMQchERXk7be1ddAdg3rg5nQ2MZZQjYkaT6HSgIz0KgFp62fecWdSqd3ypsJUOyI=@proton.me>
In-Reply-To: <CAHt6W4cQh=XUDVjyQT_KwCRJMSxxZ=F=sotbDmQp6n5OapExew@mail.gmail.com>
References: <PYPGGnYoyG-Z7cu7sTB5CUQnfLogiolh-k4lRx8ajo4vNyZDFnkqPNzftiZIDVzziqXf6LxYpAQt3kw5rnHWNdOrao_ObxBN58ZAM_IHGCY=@proton.me>
 <CAHt6W4cwaOzAaRVxg6uOET5PNA3i80OVedPu0=r4WTh+8M+CGA@mail.gmail.com>
 <_IOcomilYrKnDYwcgFSumvVAHvOUoBBRx8KIhZfnagkZHAw38DUD9k2l85bFnAAwCTR01CRpKV_JF2qFF26IQxVkdzBRvP4iQp7kHG5qOY0=@proton.me>
 <ILS8VUxFQEXg03bcavjZEhC9OdcZX2RCw3LezcmA6vdYFYdmIu6aGEqSSs5G0VwffNxLpidD5hGc9qR7Xw_mrL_EtI-vhUELN-FFXVS0hNQ=@proton.me>
 <CAHt6W4fuWeUhOv8CF1ZNs+doJ-=0wbwUPQUHySODEG2yrus1VA@mail.gmail.com>
 <CAHt6W4cQh=XUDVjyQT_KwCRJMSxxZ=F=sotbDmQp6n5OapExew@mail.gmail.com>
Feedback-ID: 60728310:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Fri, 11 Nov 2022 09:09:43 +0000
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

On Thursday, November 10th, 2022 at 16:42, Frediano Ziglio <freddy77@gmail.=
com> wrote:

> You need to pass "agent-mouse=3Doff" to Qemu, see
> https://people.freedesktop.org/~teuf/spice-doc/html/ch03.html or
> "qemu-system-x86_64 --help".
>=20
> Try mkdir -p /run/spice-vdagentd before launching the daemon. Not sure
> who deletes the directory (if that's the problem).
>=20
> Frediano

Thanks.

`mkdir -p /run/spice-vdagentd` solved the problem of the "Could not create =
socket..." .

As for the QEMU "agent-mouse=3Doff", I am using the GUI VirtManager 4.1.0 f=
rom Redhat, so I did not know how to do that. I searched Google a lot, and =
finally found an option in the LibVirt documentation page ( https://libvirt=
.org/formatdomain.html#graphical-framebuffers ). VirtManager's GUI does not=
 have an option to add the setting, but after enabling XML editing, I selec=
ted "Display Spice" node in hardware details, and then added `<mouse mode=
=3D"server"/>` like below. I succeeded in copy-and-pasting text from host t=
o client.

<graphics type=3D"spice" port=3D"5900" autoport=3D"yes" listen=3D"127.0.0.1=
">
  <listen type=3D"address" address=3D"127.0.0.1"/>
  <image compression=3D"off"/>
  <mouse mode=3D"server"/>
</graphics>
