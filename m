Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E232A633BF
	for <lists+spice-devel@lfdr.de>; Tue,  9 Jul 2019 11:57:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43B8189CC9;
	Tue,  9 Jul 2019 09:57:00 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 750C989CC9
 for <spice-devel@lists.freedesktop.org>; Tue,  9 Jul 2019 09:56:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1E4A3308330C
 for <spice-devel@lists.freedesktop.org>; Tue,  9 Jul 2019 09:56:59 +0000 (UTC)
Received: from localhost (unknown [10.32.181.70])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B7C084A4;
 Tue,  9 Jul 2019 09:56:58 +0000 (UTC)
Date: Tue, 9 Jul 2019 11:56:57 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190709095657.n3afe425nbjqbzan@wingsuit>
References: <20190708142349.21297-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190708142349.21297-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Tue, 09 Jul 2019 09:56:59 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] red-common: Add a comment
 for GLIST_FOREACH_GENERIC
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
Content-Type: multipart/mixed; boundary="===============1603292338=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1603292338==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bsq6b642owqoumoj"
Content-Disposition: inline


--bsq6b642owqoumoj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 08, 2019 at 03:23:49PM +0100, Frediano Ziglio wrote:
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> ---
>  server/red-common.h | 4 ++++
>  1 file changed, 4 insertions(+)
>=20
> diff --git a/server/red-common.h b/server/red-common.h
> index 6b5d0b2e0..03efbdacb 100644
> --- a/server/red-common.h
> +++ b/server/red-common.h
> @@ -79,6 +79,10 @@ typedef struct GListIter {
>      GList *next;
>  } GListIter;
> =20
> +/* Iterate thougth a GList. Note that the iteration is "safe" meaning th=
at the

thougth -> through=20

> + * current item can be removed while the list is scanned. This is requir=
ed as
> + * the code inside the loop in some cases can remove the element we are
> + * processing */
>  #define GLIST_FOREACH_GENERIC(_list, _iter, _type, _data, _dir) \
>      for (GListIter _iter =3D { .link =3D _list }; \
>          (_data =3D (_type *) (_iter.link ? _iter.link->data : NULL), \

Acked-by: Victor Toso <victortoso@redhat.com>

> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--bsq6b642owqoumoj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl0kZOkACgkQl9kSPeN6
SE8vZA//bvW0XB/LuWALlOoqCqAt3t+fz5Qd66f9KhCrSHIftvsTkZtdjxebdJ+U
v5KzRODonsrbivfudqhjm/bK8wW5sxlK8vOXJvsvR5QfinKKQo2XDwZowTks0J6i
0GU26JBnuMmbzk3M4ONYhUFTc8w4xMusxOEURGVAKCRt05jpKftG5/WQYz452QDL
HW0iyHkZ9KEtVV7aHaVMpI1Gik42yJKSa8/v3bu35szJuwyflXwWdACGwSvvilpf
WMBQPo3l+BOi4zhiOwlmuXImoMF9rVUQKEHiZle5E4D6lCe/mNsE6Qo/CkjylDG5
u6MjvXOndJkrjCi+s8NvN7Mdipq/Q86ym0BMeKlP/SzmiLmSRyg/epe9cIQ6Qgs/
4YaRsKTDTCEquxANHa7DVx28+y0QUDYPAXQ7ytDszl2gtyn8RB47LWlEXm95BngP
jQ3NQ9eeIBrnTGrL89Up01gqfzsllDQMw3ycUZ+3uGsnA/62lkZeA2VxCGi0vV0i
kQs81W+GQH2lae2FVt74yqzH8usd2F59AXfcIjsUkWbj05GAiGCjQXYic6Gp7UKq
oAUUMpwRA6X25MPyjndLF5Essny5nn7m6wkHV1ynwp6FEqTiqMo9BNiaA/9Mxfg8
zNX2pEgmmKQ3rvkXgKz0xEPZ1FAuT+jF0GkpKR9EQ0fyjC5MWi8=
=lYWN
-----END PGP SIGNATURE-----

--bsq6b642owqoumoj--

--===============1603292338==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1603292338==--
