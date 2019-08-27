Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44E829E99F
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 15:38:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE78789274;
	Tue, 27 Aug 2019 13:38:34 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D4F389274
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 13:38:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 85055180172C
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 13:38:33 +0000 (UTC)
Received: from localhost (unknown [10.32.181.212])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2FA8360127;
 Tue, 27 Aug 2019 13:38:33 +0000 (UTC)
Date: Tue, 27 Aug 2019 15:38:32 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190827133832.tcermiaz2wqnn555@wingsuit>
References: <20190827092246.10276-1-fziglio@redhat.com>
 <20190827092246.10276-23-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190827092246.10276-23-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.62]); Tue, 27 Aug 2019 13:38:33 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk v4 22/29] CI: Add usbredir
 packages to Windows
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
Content-Type: multipart/mixed; boundary="===============0125009404=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0125009404==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="eklscrygth3dl364"
Content-Disposition: inline


--eklscrygth3dl364
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Aug 27, 2019 at 10:22:39AM +0100, Frediano Ziglio wrote:
> Allows Windows job to build USB code part to make sure it compiles
> correctly.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

Ah!
Acked-by: Victor Toso <victortoso@redhat.com>

> ---
>  .gitlab-ci.yml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/.gitlab-ci.yml b/.gitlab-ci.yml
> index 8bcef65d..e2d1c55b 100644
> --- a/.gitlab-ci.yml
> +++ b/.gitlab-ci.yml
> @@ -17,6 +17,7 @@ variables:
>    DEPS_MINGW: mingw64-gcc mingw64-pkg-config mingw64-pixman mingw64-open=
ssl
>                mingw64-gtk3 mingw64-json-glib mingw64-opus
>                mingw64-gstreamer1-plugins-base mingw64-gstreamer1-plugins=
-good
> +              mingw64-usbredir mingw32-usbredir
> =20
>  fedora:
>    artifacts:
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--eklscrygth3dl364
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1lMlgACgkQl9kSPeN6
SE+Zrw//XdjAZXK7EivJYdk4dfIVp8/goaaT7SztcTQHJFFSn8hCIaULNlilgLNA
8yiQTpgqBfAVRWMo6NVXDm14GSfCHAsleA+vb5oSYwNcpwk5tbCeqmwed/idz6ug
t20Y4zzO1Ez7eHNTRhVH1Xzi54DW4D6zMPMLUbJXYHXkAdIlr+wVwJNhlucupteP
QutnTnohagXmashEAdwEu35+Zwzaf6VsxbwIPujYLLZ07Ek0QKELKmeIuzLlMozb
cguAaxLjMPA6vHlEo9H0FeMbENf8/KE5ZkAXuxDQL7KXsH/zvwgqf+bvrVgiHugh
wk09M92vMC3RZpuJ+kYM02Whau5/62Rk2iuJDlp669DrzY99NLDiF9Bl6ff7v1HM
2gEnhOCiBLtv61eKDIt4zKJhqFSeKYTvjiqCoNPtBzWkj4WcmXarQJQWGiyqYuQo
FkXad0HW7Xps4o/4eZOElA8s/bhokk2J+rrwVJVtq7Z6L+RAsGizGL2Sq+crkVnI
OetjV1tX/HYWiohoQpDdofdGUnLFnvYhcw2u8UiVDH7wADIPVb8fcBuscyoyrsJY
JOyxMfAbY+ogSEBvsDPXJ4epa2RezsRAvZu9/ytew74lfIrEqLeLIgT/c6TlLIaB
FYdYZ2xPGNwy5G9KwszYsNnHy1k1ZKJd7V3yy4zVzYSvvjON2wI=
=hA+f
-----END PGP SIGNATURE-----

--eklscrygth3dl364--

--===============0125009404==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0125009404==--
