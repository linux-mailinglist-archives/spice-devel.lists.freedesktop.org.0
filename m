Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD657F1DD
	for <lists+spice-devel@lfdr.de>; Fri,  2 Aug 2019 11:43:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA1556ED86;
	Fri,  2 Aug 2019 09:42:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A12966ED86
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Aug 2019 09:42:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4E23BC049E10
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Aug 2019 09:42:57 +0000 (UTC)
Received: from localhost (unknown [10.32.181.128])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EED5819C79;
 Fri,  2 Aug 2019 09:42:56 +0000 (UTC)
Date: Fri, 2 Aug 2019 11:42:56 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190802094256.falxsbop7ffi64pn@wingsuit>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-5-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190530142254.28937-5-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Fri, 02 Aug 2019 09:42:57 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 05/13] red-worker: Remove
 warning
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
Content-Type: multipart/mixed; boundary="===============1855301819=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1855301819==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="oq6dmfddp7egqtwz"
Content-Disposition: inline


--oq6dmfddp7egqtwz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, May 30, 2019 at 03:22:46PM +0100, Frediano Ziglio wrote:
> In some configuration _GNU_SOURCE is defined by the compiler
> and defining again cause a warning.
> Do not define again to avoid the warning.

Not a problem with the patch but we is it the case we should fix
some troubling configurations too?

For the patch,
Acked-by: Victor Toso <victortoso@redhat.com>

>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> ---
>  server/red-worker.c | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/server/red-worker.c b/server/red-worker.c
> index d64c26e83..b3335a53a 100644
> --- a/server/red-worker.c
> +++ b/server/red-worker.c
> @@ -17,7 +17,9 @@
>  */
>  #include <config.h>
> =20
> +#ifndef _GNU_SOURCE
>  #define _GNU_SOURCE
> +#endif
>  #include <stdio.h>
>  #include <stdarg.h>
>  #include <stdlib.h>
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--oq6dmfddp7egqtwz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1EBaAACgkQl9kSPeN6
SE/0Mw/6AxkvYBfJZu6C9agoNcVsj+yWqUi6jDTfsTVHZLgpFWPrE/ZBoMqzwVQc
FAAyGa1GZ9SjjTrViTBwuZsd7DnGJsrHTubf7JS7FdJo+bkpsxzBcnaOLA1WWpiq
LISXq8l2Pk2nvXoe09hsdP5N2fqzoUpRNIX7RkSqbXdBDw82g48MACGUvy4F03SL
rAmRH7Ob3hHzaz4iJtig+f9ye3K/J7OeE3yK2OrKi2mrdFaB+mYdwprEpxtjAtOR
7lVkk6V5yVuMcMlnQcsOczBpcK7e7K+DyXIbFsrdSb/8K0XAoXiwv/XcL5UIaC3m
pgTHfELCcW4r9UTXxsoNWaYrHLRmmdTXbeWcklqIVtvwQs3E7gqMs1HHL4Zup76z
BHQ6aLrKWNv8mZYVXbkgC/vAnJ7Dgk/qUJYYr0+FEpqRctEg8p9ElgjYuvajnU0Y
9AwGS4G5nBUxFbrO5QftsUibVd0iGlWN7k37LphgSUDp8C9WeGL0S0uH2TTkKZtT
5n/lRZphZ9edtW9UHROvfqRh33YC7qcbmMiDLn9o379Fv7PXBa25YyanGm1AneWB
z9YolxKwlPWRBlRRDt+3Xz16cSbAhwoHyYnYb/9aL0EqqJ3Qt1AIt/0WUY2utoLw
AyB4eOcXiAYRyDNoVQap8RphNY0m0RI2iWzLmCmKQ7j1hNeA+DM=
=TvKh
-----END PGP SIGNATURE-----

--oq6dmfddp7egqtwz--

--===============1855301819==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1855301819==--
