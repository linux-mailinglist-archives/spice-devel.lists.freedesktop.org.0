Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5231D1F631
	for <lists+spice-devel@lfdr.de>; Wed, 15 May 2019 16:05:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1E4389291;
	Wed, 15 May 2019 14:05:21 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AACAF892A9
 for <spice-devel@lists.freedesktop.org>; Wed, 15 May 2019 14:05:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 491F5539E9
 for <spice-devel@lists.freedesktop.org>; Wed, 15 May 2019 14:05:19 +0000 (UTC)
Received: from localhost (unknown [10.32.181.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E26B7600C7;
 Wed, 15 May 2019 14:05:18 +0000 (UTC)
Date: Wed, 15 May 2019 14:05:18 +0000
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190515140518.2el3x67qupbluz5y@toolbox>
References: <20190515134633.8493-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190515134633.8493-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Wed, 15 May 2019 14:05:19 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk] ci: Clean everything at the
 beginning
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
Content-Type: multipart/mixed; boundary="===============1493374453=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1493374453==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="d75qkzh6c2fwotsh"
Content-Disposition: inline


--d75qkzh6c2fwotsh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, May 15, 2019 at 02:46:33PM +0100, Frediano Ziglio wrote:
> It seems sometimes the working directory is not properly cleaned
> causing some issue.
> Make sure it's clean before doing a out-of-tree build (which have
> problems with not cleaned directory).
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

Yes, I hit this yesterday too, thanks!
Acked-by: Victor Toso <victortoso@redhat.com>

> ---
>  .gitlab-ci.yml | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/.gitlab-ci.yml b/.gitlab-ci.yml
> index 26c6f547..7766539e 100644
> --- a/.gitlab-ci.yml
> +++ b/.gitlab-ci.yml
> @@ -30,6 +30,8 @@ fedora-autotools:
>      - (cd spice-protocol && ./autogen.sh --prefix=3D/usr && make install)
> =20
>    script:
> +    - git clean -xfd
> +    - git submodule foreach --recursive git clean -xfd
>      # Run with default options + out-of-tree
>      - mkdir build
>      - cd build
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--d75qkzh6c2fwotsh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAlzcHJ4ACgkQl9kSPeN6
SE/riQ//bbWLd+MAP7lIA2SJdoYi3X6Bhi1KQxUZqbfIbYBpghVx/8xWSHPuLdWA
EY6RnJexVTQ/jN2iXcfpDRJmk8eM5xMOJ6ZZWfBHrqdM5qn9TPxlZl0lTxy61QuS
Phscp+Xm6neo2W+uPmdjecjxjCFtp44cz1yY51Fvqv+bYce1ZOzWAXAum5O/6bR0
hSAE4orp3ykD/YMuuqBmbHZmzo52iA+utmNKTjgkqEz30cKbc2mzYbvSEBjHHsDe
biDsUFf6py/Y7VCre4Mi92Qifu4kItacvTI46MTl9JZlvLYT3hNT1Ani5VXHWNQB
B7+Fqd8hld6Uu3l5z2SdJk0HaMX3L+l9sZ8szmREK7+yzoFB5waUSREcYRL+wpC2
E5A1Ca6dDduFzD0n1AuyIY+65duNo5l02VuCDS5R5dPCvpoUWNUzNL1IV3FK3qwC
fjIf6tAtZkaYe8JLAfwyQaXOBsGCDNitQzrVVazCHXfuz/7KoY0OL/9qW0Ygd0/9
gDJKBU7wyATEvnX/W4Q9DV1gMJ6rQlyT0mwLpT6xbe2DufkfqOA7ncOznqc3Duud
CfAoIN/UQof/UP6ClpvWFYSuNtypNlwjwqJC4jNRyP3PLiyEq2NIhJj9znPOEThv
639wFVPbbw/pS+npwy0Paco2cHgrqx/RJCijdZn9Wd31B3QEoq8=
=LZwz
-----END PGP SIGNATURE-----

--d75qkzh6c2fwotsh--

--===============1493374453==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1493374453==--
