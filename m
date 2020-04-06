Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 260E619FBFE
	for <lists+spice-devel@lfdr.de>; Mon,  6 Apr 2020 19:47:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C3686E462;
	Mon,  6 Apr 2020 17:47:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BE256E462
 for <spice-devel@lists.freedesktop.org>; Mon,  6 Apr 2020 17:47:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586195226;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=AJBopGQz3xw1c9mWxLFYJghsmAJ6Bb1iujfsiFPWiqg=;
 b=Qz22Vet25vKf14EwNmtZ3z3XQffB72vhHHzj3EBr2YfUD2YlZzrskufSPCG6nrF3GATE38
 6a1cqrvjmCK9+CqnoVXflh/+zn/eyFLdXBXATUv23tpCwDx3P6PGLzcaxjPqnIUrC93VZC
 0rKNhrIh4TQlZGpQHQZfDwNPlUKSN7Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-233-2OL2HWzTO1-uU7vdpUKmjA-1; Mon, 06 Apr 2020 13:47:00 -0400
X-MC-Unique: 2OL2HWzTO1-uU7vdpUKmjA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 18ABC107ACC4;
 Mon,  6 Apr 2020 17:46:59 +0000 (UTC)
Received: from localhost (ovpn-115-40.ams2.redhat.com [10.36.115.40])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A0AB460BE0;
 Mon,  6 Apr 2020 17:46:58 +0000 (UTC)
Date: Mon, 6 Apr 2020 19:46:57 +0200
From: Victor Toso <victortoso@redhat.com>
To: =?utf-8?B?TG/Dr2Nr?= CHOVET <loickchovet@gmail.com>
Message-ID: <20200406174657.taqgjwinqedwkkpf@wingsuit>
References: <CA+2SNj+t9WBrqGr_UqnC_cyC0v6LE2mHi+UjrKqZ20ANGktDDg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+2SNj+t9WBrqGr_UqnC_cyC0v6LE2mHi+UjrKqZ20ANGktDDg@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] Kvm
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
Content-Type: multipart/mixed; boundary="===============1235226535=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1235226535==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cks7e66zbyl2ym7r"
Content-Disposition: inline

--cks7e66zbyl2ym7r
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Apr 02, 2020 at 03:38:23PM +0200, Lo=EFck CHOVET wrote:
> Greetings,
>=20
> For my internship of Computer Science Engineer student, I have to realise=
 a
> KVM.
>=20
> The objective is to link embedded card (an Arduino mkr vidor
> 4000)  to a server and  to connect remotely from our computer
> to the card to access the server and control it remotely.
>
> My internship tutor recommended me to look at spice for this
> but I'm not sure because spice is more for VM.
> Do you think it will be possible to install a Spice server on
> such embedded system ?

Not sure. For a project that could be used in bare metal machines
+ spice, you can check:

    https://gitlab.freedesktop.org/spice/x11spice

> Also, I have a tiny problem while trying spice on my own computer. I don'=
t
> understand how to compile the last spice-protocol (
> https://gitlab.freedesktop.org/spice/spice-protocol) and spice 0.14 needs
> spice protocol >=3D 0.14

Spice-protocol is only headers but git master is using meson [0]
and should be as simple as running:

 cd spice-protocol
 meson . _build --prefix=3D/usr
 ninja -C _build install=20

[0] https://mesonbuild.com/

PS: autotools was dropped after 0.14.1 at 3394652 "Remove
autotools files in favor of meson" in 2020-03-09

So you can also checkout to 0.14.1 and use it if you prefer,
should be fine for spice server.

Cheers,
Victor

--cks7e66zbyl2ym7r
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl6LaxEACgkQl9kSPeN6
SE8FJA//Wlp9CVytH93bQnpOmCHnG16l8CGtz/B0wi90eCLJZfpLnB8jCZds4VPS
gVFGTkuk0d07GkA41kFEUt+OJlfyttU3uXTsY/gM7BfzaRzbhQzmNPsmoKEM8Att
4LvlQqtTdMErtn0OMKUVNjeypHOc7HqcI35RVGZHzknT0J05CowUU69P8nj3Xutd
Cx67ZtwzbJVWgymYN6sUCp73mVDvDCWLK4P5LLtDztKA620B0uI6sgXO8HPwStbo
WML1AfkUhSUOmdrBfnM23UYjitJFc6ynB+pZtrjtGYeuUR6N9paxO7ueW+T2hwU9
hv06P9gi3frXu+K/4VqcNHSYJQL/q9VmAVx9O+JtpwgmvU2uIY6pvfPfXn0YS7LN
JltDsCHllybvXvJGLTIaX82nPQXQuwWBHEgk9k5zfTmiCuOldItC3HBShp/qHIWe
qpnnco+JGvO900CdR6QeCQCb2ntGMlp8eWRAXGJhimoLCixFKs5WoUm2t0Bp39JH
vOZanK/DXg8cOSAZvxzG6axgRmLhQi0Jiu2WKBQhqo5/q9GgQIcGbkkxHDmUtNRl
5awpcgJ5t7MvLZQnD49PVpHzyIijUyjunC1DeIzSi32D+VUKcOQxQUGJhujpYS5L
6sPQDXM7sI8vbPlq6ZMjuT9er/eQ/A3qSCwuIdlLLW/X+BgSV68=
=qPV8
-----END PGP SIGNATURE-----

--cks7e66zbyl2ym7r--


--===============1235226535==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1235226535==--

