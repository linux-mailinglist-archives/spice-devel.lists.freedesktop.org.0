Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6052E17053
	for <lists+spice-devel@lfdr.de>; Wed,  8 May 2019 07:25:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0F2D6E872;
	Wed,  8 May 2019 05:25:20 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C6A56E872
 for <spice-devel@lists.freedesktop.org>; Wed,  8 May 2019 05:25:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id BB35D309E973
 for <spice-devel@lists.freedesktop.org>; Wed,  8 May 2019 05:25:19 +0000 (UTC)
Received: from localhost (unknown [10.32.181.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6310C60BF3;
 Wed,  8 May 2019 05:25:19 +0000 (UTC)
Date: Wed, 8 May 2019 05:25:18 +0000
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190508052518.wzo5thsvd3fr2ono@toolbox>
References: <20190507135205.17531-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190507135205.17531-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Wed, 08 May 2019 05:25:19 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] build: Fix M4 macros quoting
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
Content-Type: multipart/mixed; boundary="===============1484718850=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1484718850==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6m63nznruddegvnn"
Content-Disposition: inline


--6m63nznruddegvnn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 07, 2019 at 02:52:05PM +0100, Frediano Ziglio wrote:
> The PKG_CHECK_MODULES macro were not expanded correctly causing
> the gio-unix module not to be detected and these warnings:
>=20
> ../configure: line 15133: GIO_UNIX_CFLAGS: command not found
> ../configure: line 15134: C: command not found
> ../configure: line 15135: GIO_UNIX_LIBS: command not found
> ../configure: line 15136: linker: command not found
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> ---
>  configure.ac | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/configure.ac b/configure.ac
> index 8bcb22ce..e12d7e85 100644
> --- a/configure.ac
> +++ b/configure.ac
> @@ -194,7 +194,7 @@ AS_VAR_APPEND([SPICE_REQUIRES], [" gobject-2.0 >=3D $=
GLIB2_REQUIRED"])
> =20
>  #used only by tests
>  AS_IF([test "x$os_win32" !=3D "xyes"],
> -      PKG_CHECK_MODULES([GIO_UNIX], [gio-unix-2.0 >=3D $GLIB2_REQUIRED]))
> +      [PKG_CHECK_MODULES([GIO_UNIX], [gio-unix-2.0 >=3D $GLIB2_REQUIRED]=
)])

Sure,
Acked-by: Victor Toso <victortoso@redhat.com>

> =20
>  PIXMAN_REQUIRED=3D0.17.7
>  PKG_CHECK_MODULES(PIXMAN, pixman-1 >=3D $PIXMAN_REQUIRED)
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--6m63nznruddegvnn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAlzSaD4ACgkQl9kSPeN6
SE98gBAAvlL9F84N7EDP+k7JVzcAHHgfj/HterJTA8yTRyPxs3qLNHCCB6DOZMUi
Qkw9F2LZfSJHnN3rMz/pntQXudXyJyXcjPbnHNp4y9eh416jSiCcstC6Nje8iENg
dL5DVW1Rne/43WSpRTynGYTqYoIZAfEFgU2rE/UsvGN1Dyk67g10V05H977Gv+Kj
a1o6o+Et9L/2bFOH6pms/1viJa3J0TsVi+Ro4Yzy5WPtvI2hrxotrvoh18YTneYZ
2W9Em9zND33QHHerxafht5gRw1WfSQf0d74EnRlW/HpIgeMdVZaYjUHKiWmH+gKY
AgrJ5zZVFZVndUyxKzFPnIjKDMxSgF5IwAMBjVzFkeLUF1+dpnpq7KovZRZ3lFiG
BA1qlXefX16DKJItns5OCvA4PA48eZ6ffKEskzE9+XMK+htEIijma//kdEaOz9Bh
v3AnR4UBsn8L5sQtQRX4PuwMVH8O3IVD4jV9c8orcdPr8aOBMdc83fkXPMjqFhCg
D+QV8JyQ3Vv6IDkj++BGW4cnCTmwmrL9BEKTQWqbgjcKocpjYSMCl66t12FOt2XP
1i7nehUwevSlvR/K9jk48LMNKFFjb0nD6LL+RJHdZ/3SYi3kE/fuAvYYs6ZR4O7G
ElEPHAKqhdSOSN2xBGvavhxsjtGVB/d0d636eoQBO5jjx4K1ArU=
=V+dO
-----END PGP SIGNATURE-----

--6m63nznruddegvnn--

--===============1484718850==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1484718850==--
