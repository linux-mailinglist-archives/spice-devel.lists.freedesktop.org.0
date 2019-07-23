Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C1E7719BA
	for <lists+spice-devel@lfdr.de>; Tue, 23 Jul 2019 15:50:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 107776E2A8;
	Tue, 23 Jul 2019 13:50:56 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E80D6E2A8
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 13:50:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 054EC308FBA9;
 Tue, 23 Jul 2019 13:50:54 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A19D0600D1;
 Tue, 23 Jul 2019 13:50:53 +0000 (UTC)
Date: Tue, 23 Jul 2019 15:50:52 +0200
From: Victor Toso <victortoso@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <20190723135052.bb5y2ktpy5kdxuin@wingsuit>
References: <20190723072708.2575-1-yuri.benditovich@daynix.com>
MIME-Version: 1.0
In-Reply-To: <20190723072708.2575-1-yuri.benditovich@daynix.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Tue, 23 Jul 2019 13:50:54 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk v2 0/9] usb-redir: unification of
 Linux and Windows code
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
Content-Type: multipart/mixed; boundary="===============0479307298=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0479307298==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="pxqeufc4rvso4yxe"
Content-Disposition: inline


--pxqeufc4rvso4yxe
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

Thanks for the split, the difference for review is like the
difference between day and night.

1/9 is already merged but I'll merge 2/9 to 5/9 so it'll reduce
the amount of patches to send.

Cheers,

On Tue, Jul 23, 2019 at 10:26:59AM +0300, Yuri Benditovich wrote:
> This series is dedicated to unification of Linux Windows flows
> in usb-device-manager. It moves differences related to libusb
> to USB backend module and simplifies implementation of procedures
> related to USB redirection.
>=20
> Yuri Benditovich (9):
>   build: require minimal libusb version 1.0.21
>   usb-redir: move 3 static procedures up for further reuse
>   usb-redir: split fill_usb_info procedure for further reuse
>   usb-redir: change parameter name 'bdev' to 'dev'
>   usb-redir: cosmetic changes in hotplug_callback
>   usb-redir: unify device hotplug/unplug for Windows and Linux
>   usb-redir: pass GError to hotplug registration procedure
>   usb-redir: move USB events handling to USB backend
>   usb-redir: use g_thread_try_new instead of g_thread_new
>=20
>  meson.build                   |   4 +-
>  src/channel-usbredir.c        |  28 ---
>  src/meson.build               |   4 +-
>  src/usb-backend.c             | 419 ++++++++++++++++++++++----------
>  src/usb-backend.h             |  13 +-
>  src/usb-device-manager-priv.h |   6 -
>  src/usb-device-manager.c      | 139 +----------
>  src/win-usb-dev.c             | 436 ----------------------------------
>  src/win-usb-dev.h             |  84 -------
>  9 files changed, 301 insertions(+), 832 deletions(-)
>  delete mode 100644 src/win-usb-dev.c
>  delete mode 100644 src/win-usb-dev.h
>=20
> --=20
> 2.17.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--pxqeufc4rvso4yxe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl03ELwACgkQl9kSPeN6
SE8p6g/9G+6JUiHIMN2hx8LAXMlrnuubHNkij2c5z5bnVfOdmI3zB6cWyRsi8LaE
DNkuBR7CRai67+ZGJaBrgLwTUTLC73z4roTsisaa5DhE7tn0DyLqXRC72M21TaLl
OTb6+ruww0r7Fv6FJ4zOm+LvoVck4OpCudTittoS+l60bMRJIWUVK8yr9ep0YctF
+OqELOdjWf+Oa1nP9Ox+/wXvWK7xZ4MlbZWWdBD3gEo5GFQb05SHLrZQCDRNV3qv
MCNA/ztMvnxY2wLwsb1gEBRdvMcw9V3V2Io5DhgcnqX0VFdVQcPIfW6oVkQ0rcDp
JADBNLVLLm5BxE0YULEcCt+GxTS/IVgCQz9XoO1P7WPP3k3lMRwhvWVUOjF09Yms
ytCy5VMceSslCXb54mQymkbhvBoqf0WhDkfTMyAb/RbTLH/w2xRwNA5qDhg6bPAH
mrvP4g3BNZwrNxIeGvlwAneztxceqiK6+FqOGvdUx3nGvImoce2KGd5LC/kcxO9P
aG4MKra19Z+V5tF42EFi84Z3sGLm0ZP42H1RRX3uKZA9BcZDdyybWQWlFEvBlUKC
UCxFObMexqBIQ3IQ7zFJU8TldgF3Ej8iIU7/Np2ikeWvXdGhXE5X3InxkA0sbupK
aICzpumbX1N/X/k3jdW6zmLR5J+FVXP3EQDH0Q0GvaLKq7RkpGU=
=RAMH
-----END PGP SIGNATURE-----

--pxqeufc4rvso4yxe--

--===============0479307298==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0479307298==--
