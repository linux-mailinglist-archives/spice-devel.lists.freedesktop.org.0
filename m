Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 589B36AB87C
	for <lists+spice-devel@lfdr.de>; Mon,  6 Mar 2023 09:38:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F09810E08B;
	Mon,  6 Mar 2023 08:38:56 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23FE410E08B
 for <spice-devel@lists.freedesktop.org>; Mon,  6 Mar 2023 08:38:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1678091933;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=xlBtuyDUzTsNbshPMCkKL2RGFlwvCmKvDoDi15bKUwE=;
 b=A+2yhrk1tkeOc/qwyRHZ/+Ob/eBmytwbpHweWFK2DggOMwW5N5reNo0zXdHgs/zeUmUuNj
 38+xESIIqAgo6ZQ4AibAc+HxgVpx0aeaQ0CZyuLP4Y36XCaLj5ROhzwBWao3RgCLyaMLhp
 Jf1mp6ITXWS7HOdL3GR2MLy/WetMWJc=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-348-4NB-JGAlOd6U4BIjqhvsHA-1; Mon, 06 Mar 2023 03:38:50 -0500
X-MC-Unique: 4NB-JGAlOd6U4BIjqhvsHA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
 [10.11.54.6])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9BEBF3C0E444;
 Mon,  6 Mar 2023 08:38:50 +0000 (UTC)
Received: from localhost (unknown [10.45.224.149])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4E1462166B26;
 Mon,  6 Mar 2023 08:38:50 +0000 (UTC)
Date: Mon, 6 Mar 2023 09:38:49 +0100
From: Victor Toso <victortoso@redhat.com>
To: Thomas Semmler <ddfddf@posteo.de>
Message-ID: <20230306083849.w6bmabtixdphvekm@tapioca>
References: <9b0d5ef57a29d6fa8160e62f36140902c24fb0d8.camel@posteo.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="j4exx5t2ykrdmkqo"
Content-Disposition: inline
In-Reply-To: <9b0d5ef57a29d6fa8160e62f36140902c24fb0d8.camel@posteo.de>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
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


--j4exx5t2ykrdmkqo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Thomas,

On Thu, Mar 02, 2023 at 01:32:10PM +0000, Thomas Semmler wrote:
> Hello everyone,
>=20
> I encountered a problem I can't make heads or tails of. I have
> a server running KVM/libvirt as a virtualization host. The
> virtual machines on this server are setup to use the spice
> protocol. When using the servers desktop environement I can use
> virt-manager or remmina to connect to the virtual machine's
> spice server(s) without a problem. The spice server is
> listening on localhost only.=20
>=20
> I wanted to connect from a remote client to the server via a
> ssh tunnel and then connect to spice over the tunnel. I tried
> with both virt- manager (which has an integrates ssh tunnel
> option) and remmina (which also has an integrated setting to
> create a tunnel) on the client to establish a connection, but
> it is not working as intended.
>=20
> While I can see a video output of the desktop, the video output
> does not resize to the window width and hight and none of the
> input methods are working. I can not send keypresses or mouse
> movements the the virtual machine on the server.

I've never tested this so I'm not sure how it should work.

Every SPICE channel is a TCP socket that is established after the
initial handshake. IIRC, the first connection is kept for the
graphics (which you can use) but the connection of others seemed
to fail over your ssh tunnel. I'd guess the proxying over ssh
tunnel needs more tweaks.

I see that oVirt has some how-to with this, perhaps that can be
helpful to you:

https://ovirt-infra-docs.readthedocs.io/en/latest/Phoenix_Lab/Ssh_Spice_Tun=
nel/index.html

> I started virt-manager on the client with the debug option
> (--dubug) and attached the resulting output, containing a few
> spice errors, to this email.
>=20
> In case you require more information please let me know.
>=20
> Thanks,
> Thomas

Cheers,
Victor

--j4exx5t2ykrdmkqo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmQFppkACgkQl9kSPeN6
SE9mjBAAosb2AOEzjxarvrtgEK7xF6t4u+3tP2QNQOEGBHvitNbbkhQFjvAMRlL3
nl2592SP5TD8iPbIhAzSMZ2Qyngdoo2MWgpGp91lIc/Y4XGziUVdq+wdzYyT5x93
kyS71MpolL7lSOv3DUV4X4eqxnrChhCGdQZIX5mW94DqQbVaQ8+HUiot0a13Bg1O
K9n7SS0w0pdUYyf+bDvW1MGMnwGVk9OG+ZbOhBQDx8AY+BpH5SY1sItqytBDMpgo
v2rbmZP8VzPBNLIfJCzqEJU0zr9vzt5PznjgxfA7dj6zbrwEhAq58SuHcx8IhVRm
yahlRcfeoxP1DPr6lvuk6ozBZQsR53DQeI6vWIUY34fRqguJxJb9eXf4yLBycScj
5+GBTKYbEf73TPREjFQ5vFBZlczXFzt/bc6iWnzX56wDiJ7HySwi4U1AKFUIxcCw
fGUAKkccigLmD1LFTKvuijKgPPcOdDEVDIwg76LewI9iKR8jWbUITEp8/7sLCxkj
E0Ox9BwpvO9mcI2Y2WSylwmA3B2NoAOBTZ7NjPW6jpCQpwaxFDfcdrPyTzCvUv7F
DLlzeOUEFPCl9SK6pqIwQhzSpbpMAnf998uQJWWNi5EZAYO00qt1FUMR2lDKWS+p
CfBQvMSQCBfeH+OuJWw1CA4BAT3oV4eNvVe8/blhuFlq7BHnVE4=
=JEyv
-----END PGP SIGNATURE-----

--j4exx5t2ykrdmkqo--

