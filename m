Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D03F11687
	for <lists+spice-devel@lfdr.de>; Thu,  2 May 2019 11:24:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99076892BE;
	Thu,  2 May 2019 09:24:45 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF330892BE
 for <spice-devel@lists.freedesktop.org>; Thu,  2 May 2019 09:24:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 340DA307D983
 for <spice-devel@lists.freedesktop.org>; Thu,  2 May 2019 09:24:44 +0000 (UTC)
Received: from localhost (unknown [10.32.181.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D1CA38A28C;
 Thu,  2 May 2019 09:24:43 +0000 (UTC)
Date: Thu, 2 May 2019 09:24:41 +0000
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190502092441.papi7gq2p3vjm2fy@toolbox>
References: <20190501074635.19607-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190501074635.19607-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Thu, 02 May 2019 09:24:44 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk] build: Add some missing check
 for headers
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
Content-Type: multipart/mixed; boundary="===============0549017256=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0549017256==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="n7vrzagsoo73fhj3"
Content-Disposition: inline


--n7vrzagsoo73fhj3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, May 01, 2019 at 08:46:35AM +0100, Frediano Ziglio wrote:
> Headers macros (HAVE_*_H) are guarding some include in the code.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> ---
>  configure.ac |  2 +-
>  meson.build  | 10 ++++++++--
>  2 files changed, 9 insertions(+), 3 deletions(-)
>=20
> diff --git a/configure.ac b/configure.ac
> index 0666e2a8..61591691 100644
> --- a/configure.ac
> +++ b/configure.ac
> @@ -71,7 +71,7 @@ esac
>  AC_MSG_RESULT([$os_mac])
>  AM_CONDITIONAL([OS_MAC],[test "$os_mac" =3D "yes"])
> =20
> -AC_CHECK_HEADERS([sys/socket.h netinet/in.h arpa/inet.h])
> +AC_CHECK_HEADERS([sys/socket.h sys/types.h netinet/in.h arpa/inet.h])
>  AC_CHECK_HEADERS([termios.h])
>  AC_CHECK_HEADERS([epoxy/egl.h],
>                   [have_egl=3Dyes],
> diff --git a/meson.build b/meson.build
> index e0fba930..8c6288f3 100644
> --- a/meson.build
> +++ b/meson.build
> @@ -48,8 +48,14 @@ keymapcsv =3D files('subprojects/keycodemapdb/data/key=
maps.csv')
>  #
>  # check for system headers
>  #
> -headers =3D ['termios.h',
> -           'X11/XKBlib.h']
> +headers =3D [
> +  'termios.h',
> +  'X11/XKBlib.h',
> +  'sys/socket.h',
> +  'sys/types.h',
> +  'netinet/in.h',
> +  'arpa/inet.h',
> +]

Acked-by: Victor Toso <victortoso@redhat.com>

> =20
>  foreach header : headers
>    if compiler.has_header(header)
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--n7vrzagsoo73fhj3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAlzKt1kACgkQl9kSPeN6
SE9G1A//R4OLV8/CouosW47tk0dfuHBIwfiZzLQHAVVoBnnYnb2hfBOQGDaQeL+J
q8fYTzArES0DVJ9FZcER1/6VPFTUN+OQHWfvYzdSVUYLKSWntTuJ4MJ0hulPdEa5
cASLrFge7tbDouaTLiAHkVdN8BTEtUgr2oH44SvmtocQxqjaUUXLUvzRwWelX9vT
7VFAuGLQvEKWC6+Q2bR/XKWSlarF2ASQyLsr5bWc1KXlDs/t0nrFbMbN5Anr0fpk
PPA6yZGePjlMPQ1icl2CDHtOhffEl8Mg3gh3InD3R868MGSMfwECGyJT15Ju6vDu
OOZA0oCCOUmcKyLlNzHOYBiwaSZagAre94soldm30UGSB3rCQb+KzWs7+OrBC5ly
xTT1i1JoQjw1HiStYF5cj3s39PCAKF47seU1+HSwiVOfenrqRJApp7wEc9C7F15v
5vmdQFH4VMMtgGcSlYORu+4KlA8HYLFgdou3KSUdvju5rmk5OdHgneIAIWOQp4n4
b18GSkQntLYp2Y1NpIhTiKi4Tfj8/arjoco8pNowZoBhi4yo6GTaH9ZpxBXz30LX
ntBmx3lfy6M/mDQMXT3Tjz5gTJdxu+ObQ0xuEy5R91nqGaY4msscKTY4EZN4UIOj
I2yiT24O/OX14L/POG9p9XKu4EQfPrrsK3qaoXUi9wy7XmZYFCU=
=ngUP
-----END PGP SIGNATURE-----

--n7vrzagsoo73fhj3--

--===============0549017256==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0549017256==--
