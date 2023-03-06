Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D25F96AB98B
	for <lists+spice-devel@lfdr.de>; Mon,  6 Mar 2023 10:19:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 972FB10E0A8;
	Mon,  6 Mar 2023 09:19:11 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-41104.protonmail.ch (mail-41104.protonmail.ch
 [185.70.41.104])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBCC810E0A8
 for <spice-devel@lists.freedesktop.org>; Mon,  6 Mar 2023 09:19:08 +0000 (UTC)
Date: Mon, 06 Mar 2023 09:18:58 +0000
Authentication-Results: mail-41104.protonmail.ch;
 dkim=pass (2048-bit key) header.d=ecentrum.hu header.i=@ecentrum.hu
 header.b="5GNDOojl"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ecentrum.hu;
 s=protonmail; t=1678094342; x=1678353542;
 bh=48yimxQdIRk53gvvM8UWEOp+h6P8PwIQ8ez2mi4Izws=;
 h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
 Message-ID:BIMI-Selector;
 b=5GNDOojlFUiwjYaI7A4MBMyCSFN/PqgH2g9VTv7r43SPTM4CjqJu+LHBcV15wgMqD
 1sVaTEnDUElVZYLZXmITROQ268mdeAhERWc16csZsU0uT0xQyxXRJcS+c9JuAPctwc
 be++WgfQ20Yk9tU4LOWr/DaEMYdWzR15C1VBG+FBQfY5RjnBisgusePO40+GA3sakJ
 SBzwcp3ezqLDdrrSyNKZMwDq43daStiyi1FZgEGB9FQCeqj0GQapG5MUbV6DvxDw84
 PqKCqqQ6LDltD34EMPbz2U0G12wHB0KvriIsVkX1RKcOtLx/xFCzBpphUMWdtD15/I
 OSNyOMDcntNlg==
To: Victor Toso <victortoso@redhat.com>
From: =?utf-8?Q?L=C3=A9vai=2C_D=C3=A1niel?= <leva@ecentrum.hu>
Message-ID: <V8ilEVa4p-yP4w0gYqd9WTvTf65aWwJExujzZmV1Y9g1yzC8unGP-K1malfuiIzQzVbxs_j_JF96YMij4sGwBud-U1wICWt8-xLulI05hcM=@ecentrum.hu>
In-Reply-To: <20230306083849.w6bmabtixdphvekm@tapioca>
References: <9b0d5ef57a29d6fa8160e62f36140902c24fb0d8.camel@posteo.de>
 <20230306083849.w6bmabtixdphvekm@tapioca>
Feedback-ID: 12434366:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Spice-devel] Problem using Spice in combination with SSH tunnel
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
Cc: spice-devel@lists.freedesktop.org, Thomas Semmler <ddfddf@posteo.de>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

FWIW, I managed to make this work in the past with OpenSSH's control socket=
, so that every subsequent SSH connection could be opened and went through =
seamlessly.

Daniel

------- Original Message -------
On Monday, March 6th, 2023 at 09:38, Victor Toso <victortoso@redhat.com> wr=
ote:


>=20
>=20
>=20
> Hi Thomas,
>=20
> On Thu, Mar 02, 2023 at 01:32:10PM +0000, Thomas Semmler wrote:
>=20
> > Hello everyone,
> >=20
> > I encountered a problem I can't make heads or tails of. I have
> > a server running KVM/libvirt as a virtualization host. The
> > virtual machines on this server are setup to use the spice
> > protocol. When using the servers desktop environement I can use
> > virt-manager or remmina to connect to the virtual machine's
> > spice server(s) without a problem. The spice server is
> > listening on localhost only.
> >=20
> > I wanted to connect from a remote client to the server via a
> > ssh tunnel and then connect to spice over the tunnel. I tried
> > with both virt- manager (which has an integrates ssh tunnel
> > option) and remmina (which also has an integrated setting to
> > create a tunnel) on the client to establish a connection, but
> > it is not working as intended.
> >=20
> > While I can see a video output of the desktop, the video output
> > does not resize to the window width and hight and none of the
> > input methods are working. I can not send keypresses or mouse
> > movements the the virtual machine on the server.
>=20
>=20
> I've never tested this so I'm not sure how it should work.
>=20
> Every SPICE channel is a TCP socket that is established after the
> initial handshake. IIRC, the first connection is kept for the
> graphics (which you can use) but the connection of others seemed
> to fail over your ssh tunnel. I'd guess the proxying over ssh
> tunnel needs more tweaks.
>=20
> I see that oVirt has some how-to with this, perhaps that can be
> helpful to you:
>=20
> https://ovirt-infra-docs.readthedocs.io/en/latest/Phoenix_Lab/Ssh_Spice_T=
unnel/index.html
>=20
> > I started virt-manager on the client with the debug option
> > (--dubug) and attached the resulting output, containing a few
> > spice errors, to this email.
> >=20
> > In case you require more information please let me know.
> >=20
> > Thanks,
> > Thomas
>=20
>=20
> Cheers,
> Victor
