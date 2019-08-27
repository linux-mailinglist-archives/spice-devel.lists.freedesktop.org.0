Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE499EBA9
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 16:57:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A47A289449;
	Tue, 27 Aug 2019 14:57:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E84189449
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 14:57:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id DACB3182D
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 14:57:06 +0000 (UTC)
Received: from localhost (unknown [10.32.181.212])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 821C66012D;
 Tue, 27 Aug 2019 14:57:06 +0000 (UTC)
Date: Tue, 27 Aug 2019 16:57:05 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190827145705.kdyyhvwbdtabgadg@wingsuit>
References: <20190827092246.10276-1-fziglio@redhat.com>
 <20190827092246.10276-15-fziglio@redhat.com>
 <20190827122720.irrvxbhcjd5ixlao@wingsuit>
 <2144937467.9401034.1566915256886.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <2144937467.9401034.1566915256886.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Tue, 27 Aug 2019 14:57:06 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk v4 14/29] fixup! usb-redir: add
 implementation of emulated CD device
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
Content-Type: multipart/mixed; boundary="===============2123304384=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============2123304384==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lvmps4rhvzwvfih3"
Content-Disposition: inline


--lvmps4rhvzwvfih3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 27, 2019 at 10:14:16AM -0400, Frediano Ziglio wrote:
> >=20
> > Hi,
> >=20
> > On Tue, Aug 27, 2019 at 10:22:31AM +0100, Frediano Ziglio wrote:
> > > Add comment on constant
> > > ---
> > >  src/usb-device-cd.c | 1 +
> > >  1 file changed, 1 insertion(+)
> > >=20
> > > diff --git a/src/usb-device-cd.c b/src/usb-device-cd.c
> > > index c33bb290..2234289c 100644
> > > --- a/src/usb-device-cd.c
> > > +++ b/src/usb-device-cd.c
> > > @@ -57,6 +57,7 @@ typedef struct SpiceCdLU {
> > > =20
> > >  #define MAX_LUN_PER_DEVICE              1
> > >  #define USB2_BCD                        0x200
> > > +/* Red Hat USB VID */
> >=20
> > I don't mind adding a comment but perhaps SPICE USB VID instead?
> >=20
>=20
> No, SPICE is a project, not a vendor, the 0x2b23 is reserved by USB
> standards for Red Hat, not for SPICE.
> Another reason why the comment make sense :-)

Aha, agree.
Acked-by: Victor Toso <victortoso@redhat.com>

>=20
> > >  #define CD_DEV_VID                      0x2b23
> > >  #define CD_DEV_PID                      0xCDCD
> > >  #define CD_DEV_CLASS                    8
>=20
> Frediano

--lvmps4rhvzwvfih3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1lRMEACgkQl9kSPeN6
SE9viA//RQpvtVtufPR033DEgIQ0qm5WQoB6vZmd5LFEW8Mp3mB/hhNrc02qZBLb
Y3A+xU5ahgdbk3Dh48vcLjIEjUE0EQM0YmDwxmNaI6MIJfp+BvE0BV6WrCdQzTCC
x520qV2dsowVZOHsTXvcrp0VZLq1rNorcHNLxM7Dj+gjZuBCWBDmbJXHxct62gE6
4Qp11Kn+rbDuZKwE/UWJN67OxsJl+mBatdABB20VDZd0TT9dlgUlRxBxZdlEbUbB
+bu4bNx776zAVqmha9E0hy5tALAJh8kcW6zQbc9l5r9tsjWHnC0Ee8U4EEaKtutw
0W+RTttReGkHPmj3IY/PNX1sbFb7LjL9pxpPNPoV5PMYip+vRkMUNXlKM1TlFjdX
Ohr0CoXDa3AdA4bUbxyykafe5f3smItQSK50uL6B0Er44SMobXkl98exO/SW2iWZ
azTp+8UPpHV89qwLARHMMz844Mr2nounGnfCALLYOCxCZFdUHgeHK2cEXRiTDb4h
QUrpjCAycS5h/O1dcVwW95okxF6HhRBPAgWalFU+bTyuPD8OC5dPw3rduLKrqZBf
hEmxpCMckZPj7aZb4lmGVm3G+3hTcmGcUEMLwu7ix1YmF+YC0C329ZXBjoLIMx7W
GnW8iiJHgfehValJVe03ZEuRzvnbFKz8xg3XtENRjABUaEyYOjM=
=lFfA
-----END PGP SIGNATURE-----

--lvmps4rhvzwvfih3--

--===============2123304384==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============2123304384==--
