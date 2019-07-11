Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DCCB655E2
	for <lists+spice-devel@lfdr.de>; Thu, 11 Jul 2019 13:46:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B9FF6E207;
	Thu, 11 Jul 2019 11:45:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C1286E207
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 11:45:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8024D8535D;
 Thu, 11 Jul 2019 11:45:56 +0000 (UTC)
Received: from localhost (unknown [10.32.181.70])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2A00419C70;
 Thu, 11 Jul 2019 11:45:56 +0000 (UTC)
Date: Thu, 11 Jul 2019 13:45:55 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190711114555.jsjgwr4mcihqxa6r@wingsuit>
References: <20190710094924.17350-1-fziglio@redhat.com>
 <20190710132238.vpwom7kkrknuynp4@wingsuit>
MIME-Version: 1.0
In-Reply-To: <20190710132238.vpwom7kkrknuynp4@wingsuit>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Thu, 11 Jul 2019 11:45:56 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk v3 0/3] Implementation of USB
 backend layer
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Content-Type: multipart/mixed; boundary="===============1597768449=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1597768449==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dl4rbajpqlbgf6zj"
Content-Disposition: inline


--dl4rbajpqlbgf6zj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jul 10, 2019 at 03:22:38PM +0200, Victor Toso wrote:
> Hi,
>=20
> On Wed, Jul 10, 2019 at 10:49:21AM +0100, Frediano Ziglio wrote:
> > This layer communicates with libusb and libusbredir and
> > provides the API for all the operations related to USB
> > redirection. All other modules of spice-gtk communicate
> > only with usb backend instead of calling libusb and
> > usbredirhost directly.
> > This is prerequisite of further implementation of
> > cd-sharing via USB redirection
>=20
> Looks good. I plan to do further test tomorrow morning and push,
> if no one else complains.
>=20
> Thanks and sorry for taking quite long time to merge this.

Tested with windows 10 and Fedora 29 guests. Seems to work fine.
Debug is a bit verbose but should be fine till we get CD-ROM
redirection patches in. I plan to work on some cleanup on
usbredir stack as discussed earlier but I don't want that or
minor changes to prevent further work on CD-ROM redir feature.

I'll be pushing this now.

Cheers,
Victor

>=20
> Cheers,
> Victor
>=20
> >=20
> > Changes from v2: rebased on master
> >=20
> > Changes from v1: cosmetic changes per v1 review
> > Added a rebased patch (3) from Frediano Ziglio
> > For the increment see
> > https://gitlab.freedesktop.org/yuri_benditovich/spice-gtk/commits/backe=
nd2-increment
> >=20
> > Yuri Benditovich (3):
> >   usb-redir: isolate usage of libusb and usbredirhost
> >   usb-redirection: do not duplicate USB device properties
> >   usb-device-manager: Define _SpiceUsbDevice instead of
> >     SpiceUsbDeviceInfo
> >=20
> >  src/channel-usbredir-priv.h   |  12 +-
> >  src/channel-usbredir.c        | 236 ++----------
> >  src/meson.build               |   2 +
> >  src/usb-backend.c             | 657 ++++++++++++++++++++++++++++++++++
> >  src/usb-backend.h             | 102 ++++++
> >  src/usb-device-manager-priv.h |   1 -
> >  src/usb-device-manager.c      | 397 +++++++-------------
> >  src/win-usb-dev.c             | 103 ++----
> >  src/win-usb-dev.h             |   5 +-
> >  9 files changed, 967 insertions(+), 548 deletions(-)
> >  create mode 100644 src/usb-backend.c
> >  create mode 100644 src/usb-backend.h
> >=20
> > --=20
> > 2.20.1
> >=20
> > _______________________________________________
> > Spice-devel mailing list
> > Spice-devel@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/spice-devel



--dl4rbajpqlbgf6zj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl0nIXMACgkQl9kSPeN6
SE9PAg//awt0X2hYrw/pVMylH0u7VAXyiGIFj4rpFdp1/38MeiBcMHNR2WSBIYfJ
UE7p0DYWBn3kue1aN9+FCPehoelwLyGoAWgjqcIKJL1jXHELvaEaqA6qZtldUq5K
LhzzeU/d5FlLmxn4YxmwkM65OtBoH2oQxTtzutyxkC9JIxJhJuaD/XFUFciNCDiV
g/6NrjOvlKJzCxb8/MrZ/NzCpA/3asykIj60k2yCJRO5Mybg9g4aAOSnwMO5XyOb
WzIhhMLOH6ZQasvlCqhtnF275Fs6XwhovrvV4/y9ZcKWJEeZ8SI/bUZVX2ZhSPwV
LvHo0AyQGpIlcndNQh9l8Qv6081IBP7qaQimypuZ3gA7lchwsBMea4R8AE1cyZAB
FvMelmS+M03sH9XItVWkLC5e6gy9c7CfkvAOm4nAGY9uArNASMPiSm3/EdABpbTF
ucmofxhGPeQAHthtfZhBHVNkuqA5Gcj6sAM+fEv4QCuBR/s8+QegGwlGg3arEAH7
xUz75NdkR9xP4Xs6Eh5LxgJjj7X45BMN0zyxNCkxubMjKpVp0tUhuhTecHvgCBtB
i180E7inYHLBfEXfUeQL6z/soLT4fMj/1UvOfvve3mb97+p6C1Hxfm9CIMRKNws4
QXk0juyZFwwqxS6P4wS8MImd+y6RUl/Lv6XBjV5aF9ZW+zlAoGk=
=5vjp
-----END PGP SIGNATURE-----

--dl4rbajpqlbgf6zj--

--===============1597768449==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1597768449==--
