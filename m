Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DEF06B4C78
	for <lists+spice-devel@lfdr.de>; Fri, 10 Mar 2023 17:14:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 775C810E054;
	Fri, 10 Mar 2023 16:14:44 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42FC710E074
 for <spice-devel@lists.freedesktop.org>; Thu,  9 Mar 2023 18:12:53 +0000 (UTC)
Received: from submission (posteo.de [185.67.36.169]) 
 by mout01.posteo.de (Postfix) with ESMTPS id 651AA2402A7
 for <spice-devel@lists.freedesktop.org>; Thu,  9 Mar 2023 19:12:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
 t=1678385571; bh=V0igG6mYo8yORcXH6s2Ypw9dD7WbB05KW4jT5eDkQ14=;
 h=Subject:From:To:Cc:Date:From;
 b=SkjRPcfyXJHdVUHD7r1AyfvfiHE83RmNDQXMzb3UhG8LDcQyy4NuS7MZ6dIQaGdCe
 KChg0CXJy/F2RcIcTFhPEWmTE8YkzH+cRXnMKs6UhRhgwXPCKxxEtVUTIVzskeumzM
 tDm/wGeOg0SneAGeH+eAlWTHz21imT8xk+sI1UdIXbkZv45xBFIACXzacLdQn+nnL/
 O6jvjNi/wH3N89pkXlNJF58qNudPqK8cfbqlLJM32qjBTwrvMjnL6egbNxvtZ97Zyu
 CRjIEuRJo+POfOlEHklQrGBCGs9NHrc9cCoiqSnJbyU4b0Fmd9b2tgwrpUqjDsNifO
 CYrFpiOyi4TvQ==
Received: from customer (localhost [127.0.0.1])
 by submission (posteo.de) with ESMTPSA id 4PXcjZ0Ylbz9rxD;
 Thu,  9 Mar 2023 19:12:49 +0100 (CET)
Message-ID: <7084480780926f23edff32c3d5923270753df6c5.camel@posteo.de>
From: Thomas Semmler <ddfddf@posteo.de>
To: =?ISO-8859-1?Q?L=E9vai=2C_D=E1niel?= <leva@ecentrum.hu>, Victor Toso
 <victortoso@redhat.com>
Date: Thu, 09 Mar 2023 18:12:49 +0000
In-Reply-To: <V8ilEVa4p-yP4w0gYqd9WTvTf65aWwJExujzZmV1Y9g1yzC8unGP-K1malfuiIzQzVbxs_j_JF96YMij4sGwBud-U1wICWt8-xLulI05hcM=@ecentrum.hu>
References: <9b0d5ef57a29d6fa8160e62f36140902c24fb0d8.camel@posteo.de>
 <20230306083849.w6bmabtixdphvekm@tapioca>
 <V8ilEVa4p-yP4w0gYqd9WTvTf65aWwJExujzZmV1Y9g1yzC8unGP-K1malfuiIzQzVbxs_j_JF96YMij4sGwBud-U1wICWt8-xLulI05hcM=@ecentrum.hu>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 10 Mar 2023 16:14:42 +0000
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
Cc: spice-devel@lists.freedesktop.org
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Thank you both for your answers and hints. Indeed it seems something
was afoot with pending updates, not having rebooted for a while it
seems. After rebooting both the client and the server and having
applied current updates pending on both devices the issue was resolved.
Remmina can not establish a ssh tunnel (one connection only) and spice
is able to connect video, audio, keyboard, mouse, and even usb
redirection works.

Certainly not an Spice issue.

Thank you.

On Mon, 2023-03-06 at 09:18 +0000, L=C3=A9vai, D=C3=A1niel wrote:
> FWIW, I managed to make this work in the past with OpenSSH's control
> socket, so that every subsequent SSH connection could be opened and
> went through seamlessly.
>=20
> Daniel
>=20
> ------- Original Message -------
> On Monday, March 6th, 2023 at 09:38, Victor Toso
> <victortoso@redhat.com> wrote:
>=20
>=20
> >=20
> >=20
> >=20
> > Hi Thomas,
> >=20
> > On Thu, Mar 02, 2023 at 01:32:10PM +0000, Thomas Semmler wrote:
> >=20
> > > Hello everyone,
> > >=20
> > > I encountered a problem I can't make heads or tails of. I have
> > > a server running KVM/libvirt as a virtualization host. The
> > > virtual machines on this server are setup to use the spice
> > > protocol. When using the servers desktop environement I can use
> > > virt-manager or remmina to connect to the virtual machine's
> > > spice server(s) without a problem. The spice server is
> > > listening on localhost only.
> > >=20
> > > I wanted to connect from a remote client to the server via a
> > > ssh tunnel and then connect to spice over the tunnel. I tried
> > > with both virt- manager (which has an integrates ssh tunnel
> > > option) and remmina (which also has an integrated setting to
> > > create a tunnel) on the client to establish a connection, but
> > > it is not working as intended.
> > >=20
> > > While I can see a video output of the desktop, the video output
> > > does not resize to the window width and hight and none of the
> > > input methods are working. I can not send keypresses or mouse
> > > movements the the virtual machine on the server.
> >=20
> >=20
> > I've never tested this so I'm not sure how it should work.
> >=20
> > Every SPICE channel is a TCP socket that is established after the
> > initial handshake. IIRC, the first connection is kept for the
> > graphics (which you can use) but the connection of others seemed
> > to fail over your ssh tunnel. I'd guess the proxying over ssh
> > tunnel needs more tweaks.
> >=20
> > I see that oVirt has some how-to with this, perhaps that can be
> > helpful to you:
> >=20
> > https://ovirt-infra-docs.readthedocs.io/en/latest/Phoenix_Lab/Ssh_Spice=
_Tunnel/index.html
> >=20
> > > I started virt-manager on the client with the debug option
> > > (--dubug) and attached the resulting output, containing a few
> > > spice errors, to this email.
> > >=20
> > > In case you require more information please let me know.
> > >=20
> > > Thanks,
> > > Thomas
> >=20
> >=20
> > Cheers,
> > Victor

