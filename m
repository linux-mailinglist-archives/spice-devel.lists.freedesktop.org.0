Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E34C64487
	for <lists+spice-devel@lfdr.de>; Wed, 10 Jul 2019 11:44:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE2676E0D1;
	Wed, 10 Jul 2019 09:43:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A29689EB1
 for <spice-devel@lists.freedesktop.org>; Wed, 10 Jul 2019 09:43:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id DD0A27EAB7;
 Wed, 10 Jul 2019 09:43:57 +0000 (UTC)
Received: from localhost (unknown [10.32.181.70])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8560C1018A2A;
 Wed, 10 Jul 2019 09:43:57 +0000 (UTC)
Date: Wed, 10 Jul 2019 11:43:56 +0200
From: Victor Toso <victortoso@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <20190710094356.ivxfv7mdr77mqcn4@wingsuit>
References: <20190710092345.5750-1-yuri.benditovich@daynix.com>
MIME-Version: 1.0
In-Reply-To: <20190710092345.5750-1-yuri.benditovich@daynix.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Wed, 10 Jul 2019 09:43:57 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk v2 0/3] Implementation of USB backend
 layer
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
Cc: yan@daynix.com, spice-devel@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============1382453141=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1382453141==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ksj2fpy37hcfongx"
Content-Disposition: inline


--ksj2fpy37hcfongx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jul 10, 2019 at 12:23:42PM +0300, Yuri Benditovich wrote:
> This layer communicates with libusb and libusbredir and
> provides the API for all the operations related to USB
> redirection. All other modules of spice-gtk communicate
> only with usb backend instead of calling libusb and
> usbredirhost directly.
> This is prerequisite of further implementation of
> cd-sharing via USB redirection
>=20
> Changes from v1: cosmetic changes per v1 review
> Added a rebased patch (3) from Frediano Ziglio
> For the increment see
> https://gitlab.freedesktop.org/yuri_benditovich/spice-gtk/commits/backend=
2-increment
>=20
>=20
> Yuri Benditovich (3):
>   usb-redir: isolate usage of libusb and usbredirhost
>   usb-redirection: do not duplicate USB device properties
>   usb-device-manager: Define _SpiceUsbDevice instead of
>     SpiceUsbDeviceInfo
>=20
>  src/Makefile.am               |   2 +

Autotools was removed, this series needs to be rebased.

>  src/channel-usbredir-priv.h   |  12 +-
>  src/channel-usbredir.c        | 236 ++----------
>  src/meson.build               |   2 +
>  src/usb-backend.c             | 657 ++++++++++++++++++++++++++++++++++
>  src/usb-backend.h             | 102 ++++++
>  src/usb-device-manager-priv.h |   1 -
>  src/usb-device-manager.c      | 397 +++++++-------------
>  src/win-usb-dev.c             | 103 ++----
>  src/win-usb-dev.h             |   5 +-
>  10 files changed, 969 insertions(+), 548 deletions(-)
>  create mode 100644 src/usb-backend.c
>  create mode 100644 src/usb-backend.h
>=20
> --=20
> 2.17.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--ksj2fpy37hcfongx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl0ls1wACgkQl9kSPeN6
SE/RDRAAkYOI0ObR24W/1AG7NHvygZzJPZzV6sxJFMWCYZPOybt5hgGozyxeIrlH
VBKa1dUQjdiNuuguV+WpxBVRJWysLpk+auoSF1udrncqzrROo32C+TzZwPVOvGWb
N2I8ubwWhPGScYkCbhl4S7M6MFMIHhimT0zu6xzU2Vn2n52w9Agzp15lv6uKYf+Y
GDGrWsqXMab+rscqluKufW1m4TYsnptLm4GYyheYohl59cdS/Q08OhbniK8j2m3N
S7ErUZonJXifGIywc+8Wzv3TH/uGL/2OeUDcIBOLULUj5/FQlTlP6EhlqhZHkO4Z
XeLoP2vYhBpyNrCe+KGRvMK52VGrf+KCtpmzgdts705JskH9kkcMITXIe3nyXlsa
sQtpMnYd/HVO87x6EqwlKSP3zq+ST2ghRZZRL5pvceKMVNHiiUivuQ8cWzFBuGLT
gxpSG4ffIlmQSZ1jmQ2bbRuM6GzqExV4MBBZC/R4kaUmliqHZWrv03X1W9uNZgFj
J3JcMqsaC9aLB8AKkIBiqnhbuicdenqXIKObcf/+cGE+vV/Jl6ugMnXwkOqAGkZc
hs847FuBcHRMH4Re5smkMScbxYPjsCb/DWgajnfpTaTdopdfeKSFFOzffkQI182Z
SeEJpTsYdWEXJwNVCfQMGQp+wTpJntuN8xaWw53OWN+yW9awkxk=
=TvHJ
-----END PGP SIGNATURE-----

--ksj2fpy37hcfongx--

--===============1382453141==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1382453141==--
