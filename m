Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D00C9A7EA
	for <lists+spice-devel@lfdr.de>; Fri, 23 Aug 2019 08:59:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07C0B6E573;
	Fri, 23 Aug 2019 06:59:09 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FC956E56E
 for <spice-devel@lists.freedesktop.org>; Fri, 23 Aug 2019 06:59:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E4F483175288
 for <spice-devel@lists.freedesktop.org>; Fri, 23 Aug 2019 06:59:06 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 930941001B08;
 Fri, 23 Aug 2019 06:59:01 +0000 (UTC)
Date: Fri, 23 Aug 2019 08:59:01 +0200
From: Victor Toso <victortoso@redhat.com>
To: Uri Lublin <uril@redhat.com>
Message-ID: <20190823065901.fomupblk5nrz5fth@wingsuit>
References: <20190822155312.17926-1-uril@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190822155312.17926-1-uril@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Fri, 23 Aug 2019 06:59:06 +0000 (UTC)
Subject: Re: [Spice-devel] [server patch v2] test-loop: increment a variable
 outside of spice_assert
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
Content-Type: multipart/mixed; boundary="===============0868766173=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0868766173==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fypdoul7u5bym4pr"
Content-Disposition: inline


--fypdoul7u5bym4pr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Aug 22, 2019 at 06:53:12PM +0300, Uri Lublin wrote:
> spice_assert is a macro and covscan reports that:
>   Argument "++twice_remove_called" of spice_assert() has a side effect.
>=20
> Doesn't matter if there is a side effects or not,
> it's a good practice and it makes covscan happy, so
> increment the variable one line above.
>=20
> Signed-off-by: Uri Lublin <uril@redhat.com>
> ---
>=20
> v1->v2: change commit log (Frediano)
>=20
> ---
>  server/tests/test-loop.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/server/tests/test-loop.c b/server/tests/test-loop.c
> index 82af80ab3..4df3a7d20 100644
> --- a/server/tests/test-loop.c
> +++ b/server/tests/test-loop.c
> @@ -78,7 +78,8 @@ static SpiceTimer *twice_timers_remove[2] =3D { NULL, N=
ULL };
>  static int twice_remove_called =3D 0;
>  static void timer_not_twice_remove(void *opaque)
>  {
> -    spice_assert(++twice_remove_called =3D=3D 1);
> +    ++twice_remove_called;

Silly question here but is there a reason why pre-increment would
be preferred in this case?

> +    spice_assert(twice_remove_called =3D=3D 1);
> =20
>      /* delete timers, should not have another call */
>      core->timer_remove(twice_timers_remove[0]);
> --=20
> 2.21.0
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--fypdoul7u5bym4pr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1fjrUACgkQl9kSPeN6
SE9ZeA//YZVGw14rzNYvyiFQ/KIGfev6Kcb7AEOVvFMJtydYAissTstBQ+b0LqGp
mre1CtVBX06AOCKCduSTe8cqa7Tk4TQL/u5UeYi1vRnGUU1tzMFG+B0B9qigwnWk
uwpmqoi8qEdmWbImly6hxYWLUuzmJz1xAFxN48inigHFFRKt/8RFiAjQRpV9XHld
yHvoxQbo5w3wDHyIQxtGeQ068cmZLVY5EUL16AagDp8w4sVocpkYfTUPkePixFyU
7s+ebC+8i7eN1McjurWY/DIW+xrmoWxeM3fBN9+MyEcvHVD6qWRjpHMgE4mVjZZ3
UiN+3NBtMywNuiNYQpmd4XkohxbbLKYR+8DkK0MI7K5d0ma9LHprm+8wIDR7fi7o
vl1daEPhu3vF52mWOuyTZfhoosZQwX3iGhF6ks0lCFTlugRyOgYM2T5fluIo0Kjn
iw/bFHFmGemS51OM74Nzltv8RkiMXjaKN159BJOzQtW6lowkIjzxWEZMvNwfkFMu
2NAopoQhqYx5Ea50LgT5xCPUHZmMaM60srCVkSmSufNqM9tDbrMnOlrPnlw28+GC
tGW4G5Y0Q8iMZELL2MABap/eWRv87HDZiTVBWNoBw49vjTAisPV1t9xkSHREaaPy
VMkKsWJcpyl3TjwVHr84f1MC4lvWFZJtlaCqkbtSBVkIIR/leY0=
=M7NQ
-----END PGP SIGNATURE-----

--fypdoul7u5bym4pr--

--===============0868766173==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0868766173==--
