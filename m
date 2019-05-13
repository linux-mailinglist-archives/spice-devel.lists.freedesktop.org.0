Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A531B771
	for <lists+spice-devel@lfdr.de>; Mon, 13 May 2019 15:53:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E65989D84;
	Mon, 13 May 2019 13:53:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB4DF89D84
 for <spice-devel@lists.freedesktop.org>; Mon, 13 May 2019 13:53:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9590A368A5
 for <spice-devel@lists.freedesktop.org>; Mon, 13 May 2019 13:53:44 +0000 (UTC)
Received: from localhost (unknown [10.36.118.53])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3B5D963F71;
 Mon, 13 May 2019 13:53:44 +0000 (UTC)
Date: Mon, 13 May 2019 13:53:43 +0000
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190513135343.4nk2qe77pxjxtkke@toolbox>
References: <20190513094556.14035-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190513094556.14035-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Mon, 13 May 2019 13:53:44 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-protocol 1/3] build-sys:
 post-release version bump 0.14.1
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
Content-Type: multipart/mixed; boundary="===============0877582941=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0877582941==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ijehxyax3f5fshyx"
Content-Disposition: inline


--ijehxyax3f5fshyx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, May 13, 2019 at 10:45:54AM +0100, Frediano Ziglio wrote:
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

Yep,
Acked-by: Victor Toso <victortoso@redhat.com>

> ---
>  configure.ac | 2 +-
>  meson.build  | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/configure.ac b/configure.ac
> index b56f414..bc3e33f 100644
> --- a/configure.ac
> +++ b/configure.ac
> @@ -2,7 +2,7 @@ AC_PREREQ([2.57])
> =20
>  m4_define([SPICE_MAJOR], 0)
>  m4_define([SPICE_MINOR], 14)
> -m4_define([SPICE_MICRO], 0)
> +m4_define([SPICE_MICRO], 1)
> =20
>  AC_INIT(spice-protocol, [SPICE_MAJOR.SPICE_MINOR.SPICE_MICRO], [], spice=
-protocol)
> =20
> diff --git a/meson.build b/meson.build
> index f9da4ac..75e64c4 100644
> --- a/meson.build
> +++ b/meson.build
> @@ -2,7 +2,7 @@
>  # project definition
>  #
>  project('spice-protocol', 'c',
> -        version : '0.14.0',
> +        version : '0.14.1',
>          license : 'BSD',
>          meson_version : '>=3D 0.41.0')
> =20
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--ijehxyax3f5fshyx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAlzZducACgkQl9kSPeN6
SE+aJg/8DByL1fryONJSM9Mt1awtazSWP0kHyQb8tw7v5u8s6w8Z4tplKHZZsyMR
+AmowXjXBA5YdNyg1w0fslxjA6Wao7W/8karBZS5pEoGaQl6IKlkaN5SUcsq37/c
WLyT8mYK2BdnCgTpw1g+zkUEmirZnYbFem4gB0OYqO8cgOeiCZIjrkCSaVxNZYnX
Nn6x1FWWyswwzUu8Xl2G1LZeyqFoFW2BKN6KnSqb2Fpjna+EgAuPob+5CsNpySRP
3pcN1yflrKtK0uIdScu/4qRIX59rNfAaSOVDF7Oe0GrQHuHIzpla7Ndwe4DWR+lh
yAAHqXrI+PPFORWr1Z8LVb7wEzLaimeo66ZQ0rlbri+wcMOlAGwpFTY7XvbJeeaA
Z7MTodQZagntRm45ihd6WzQWssRzYePvyRhltkkirkQWAFbpU2/zKoeOh7CUEZRQ
FYqWDHBm9kYesBApNQrxoRZdEwVuzvpImriBVjvls4z6o9AyecD7u/LrD7OTx5e3
8I8JQx5ruwxwdx23E4uEppxuxUsFD1JGWkqnQ7drsLPB1jlsyv4MW+Qv8pF05KF4
KF+ahjl2XkszxxvlJy5mszo0CfQC9DH/5l6D2vlBQeN61PMRv/Liu5nT6RXdruh7
PolYVibtm+/eO1DijpsiJ8+g4x4b92C56vXS8x8H8/T2RDL9sww=
=0NgJ
-----END PGP SIGNATURE-----

--ijehxyax3f5fshyx--

--===============0877582941==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0877582941==--
