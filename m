Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF71656B7
	for <lists+spice-devel@lfdr.de>; Thu, 11 Jul 2019 14:19:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A5D56E1B8;
	Thu, 11 Jul 2019 12:19:41 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 241016E1B8
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 12:19:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B6ED13082132;
 Thu, 11 Jul 2019 12:19:40 +0000 (UTC)
Received: from localhost (unknown [10.32.181.70])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 63F0C1001B34;
 Thu, 11 Jul 2019 12:19:40 +0000 (UTC)
Date: Thu, 11 Jul 2019 14:19:39 +0200
From: Victor Toso <victortoso@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <20190711121939.6amvgmegc4qtair3@wingsuit>
References: <20190710094924.17350-1-fziglio@redhat.com>
 <20190710132238.vpwom7kkrknuynp4@wingsuit>
 <20190711114555.jsjgwr4mcihqxa6r@wingsuit>
 <CAOEp5OfPn1E00i-N5wXLsOnsw9MmkPxh+LVnNmF49odTm1tmTw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAOEp5OfPn1E00i-N5wXLsOnsw9MmkPxh+LVnNmF49odTm1tmTw@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Thu, 11 Jul 2019 12:19:40 +0000 (UTC)
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
Cc: Spice List <spice-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============1076772798=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1076772798==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="e32asicgfzclajev"
Content-Disposition: inline


--e32asicgfzclajev
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Jul 11, 2019 at 03:15:12PM +0300, Yuri Benditovich wrote:
> I have some patches ready with significant simplification of
> usb-device-manager and there are even more possibilities, if we can
> move to libusb >=3D 1.21.

Cool

> Do we have some objections against 1.21 (currently min. version
> is 1.16)?

That's already the version in RHEL 7. I don't think it'd be a
problem to make it a requirement.

>=20
> Thanks,
> Yuri
>=20
>=20
>=20
> On Thu, Jul 11, 2019 at 2:45 PM Victor Toso <victortoso@redhat.com> wrote:
> >
> > Hi,
> >
> > On Wed, Jul 10, 2019 at 03:22:38PM +0200, Victor Toso wrote:
> > > Hi,
> > >
> > > On Wed, Jul 10, 2019 at 10:49:21AM +0100, Frediano Ziglio wrote:
> > > > This layer communicates with libusb and libusbredir and
> > > > provides the API for all the operations related to USB
> > > > redirection. All other modules of spice-gtk communicate
> > > > only with usb backend instead of calling libusb and
> > > > usbredirhost directly.
> > > > This is prerequisite of further implementation of
> > > > cd-sharing via USB redirection
> > >
> > > Looks good. I plan to do further test tomorrow morning and push,
> > > if no one else complains.
> > >
> > > Thanks and sorry for taking quite long time to merge this.
> >
> > Tested with windows 10 and Fedora 29 guests. Seems to work fine.
> > Debug is a bit verbose but should be fine till we get CD-ROM
> > redirection patches in. I plan to work on some cleanup on
> > usbredir stack as discussed earlier but I don't want that or
> > minor changes to prevent further work on CD-ROM redir feature.
> >
> > I'll be pushing this now.
> >
> > Cheers,
> > Victor
> >
> > >
> > > Cheers,
> > > Victor
> > >
> > > >
> > > > Changes from v2: rebased on master
> > > >
> > > > Changes from v1: cosmetic changes per v1 review
> > > > Added a rebased patch (3) from Frediano Ziglio
> > > > For the increment see
> > > > https://gitlab.freedesktop.org/yuri_benditovich/spice-gtk/commits/b=
ackend2-increment
> > > >
> > > > Yuri Benditovich (3):
> > > >   usb-redir: isolate usage of libusb and usbredirhost
> > > >   usb-redirection: do not duplicate USB device properties
> > > >   usb-device-manager: Define _SpiceUsbDevice instead of
> > > >     SpiceUsbDeviceInfo
> > > >
> > > >  src/channel-usbredir-priv.h   |  12 +-
> > > >  src/channel-usbredir.c        | 236 ++----------
> > > >  src/meson.build               |   2 +
> > > >  src/usb-backend.c             | 657 ++++++++++++++++++++++++++++++=
++++
> > > >  src/usb-backend.h             | 102 ++++++
> > > >  src/usb-device-manager-priv.h |   1 -
> > > >  src/usb-device-manager.c      | 397 +++++++-------------
> > > >  src/win-usb-dev.c             | 103 ++----
> > > >  src/win-usb-dev.h             |   5 +-
> > > >  9 files changed, 967 insertions(+), 548 deletions(-)
> > > >  create mode 100644 src/usb-backend.c
> > > >  create mode 100644 src/usb-backend.h
> > > >
> > > > --
> > > > 2.20.1
> > > >
> > > > _______________________________________________
> > > > Spice-devel mailing list
> > > > Spice-devel@lists.freedesktop.org
> > > > https://lists.freedesktop.org/mailman/listinfo/spice-devel
> >
> >

--e32asicgfzclajev
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl0nKVsACgkQl9kSPeN6
SE9/vg/9FlE+4lcBNg4jhP/mPPN7BtBib2jNAq0xdeYPZsT0+CPudyC0jQFrEP9q
29oNX/TjdnKyY7FsgLGJaP6vxL5hz7RMAEFm40WvCuQgfuPebMRKpeSi1mQso1WM
z8I39hjNbJCK5q/z8zhAV5Q3xMjG03HjurfxjX2D9Bd4mmMwXg79RYoLC7X11vyw
6h7zXEOi+rClef2kk6XP6Pe8ZLIIcsTo6Wt6dl6TzBKbv7KQcAf3pgaSSJKBBv7O
KYw/Y+HimrsJnLHUJgK6I4yh2YQ5FDtYCsSzYLw17cx3+U16G43nDrMEmqlR2ODR
rybmJzGOzktboLPpRFgECZlJQCxd3tbDpsBj/mepEu4C92Bw0KCaLy3pwsw6K/by
XN9k/P5+Vgv+0MGSEDkXVkAnaPuAMszLoaXEq6SjAYy2poIio98Am6AbWNZ4BetH
DWVTK6nNuD6TZP6iCP2B5cyrydVEHAQ0nZEjVDKiPJZbEhG+6/IiTqXSWWsgzaDS
78rJVyD5P1cuta4+x2o+uiVS64kexqoGtEargtZmGWGbLlgevkrxPBBvkMj4QYu+
E0EiJct2GoC/G+WGobkiMLjMCQQjXCX36Givz4qGNQcnXfDhZNZ5NF6HdK16vWH/
0adf8pjYXbi24IjuGJzue2yDOxpRUG4q7/Pu45jPrwmUVbhltts=
=qau9
-----END PGP SIGNATURE-----

--e32asicgfzclajev--

--===============1076772798==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1076772798==--
