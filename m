Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CBE6E47C
	for <lists+spice-devel@lfdr.de>; Mon, 29 Apr 2019 16:17:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08C8F891B3;
	Mon, 29 Apr 2019 14:17:35 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44876891B3
 for <spice-devel@lists.freedesktop.org>; Mon, 29 Apr 2019 14:17:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 86D1B87629
 for <spice-devel@lists.freedesktop.org>; Mon, 29 Apr 2019 14:17:33 +0000 (UTC)
Received: from localhost (unknown [10.32.181.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 322DC6CE66;
 Mon, 29 Apr 2019 14:17:31 +0000 (UTC)
Date: Mon, 29 Apr 2019 14:17:25 +0000
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190429141725.c2626tmqzycwalju@toolbox>
References: <20190426104929.10948-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190426104929.10948-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Mon, 29 Apr 2019 14:17:33 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server v2 0/3] Release preparation
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
Content-Type: multipart/mixed; boundary="===============1942902643=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1942902643==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="764wggkpiarjgkuc"
Content-Disposition: inline


--764wggkpiarjgkuc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Apr 26, 2019 at 11:49:26AM +0100, Frediano Ziglio wrote:
> Changes since v1:
> - commit messages for libcacard and protocol version updated;
> - add README bump for libcacard;
> - change NEWS file a bit (Victor suggestions).
>=20
> Frediano Ziglio (3):
>   meson: Bump libcacard requirement to 2.5.1
>   Update spice-protocol version
>   build: Prepare for 0.14.2 release

With Olivier fix on the caps lock, sounds good :)

>  NEWS         | 20 ++++++++++++++++++++
>  README       |  4 ++--
>  configure.ac | 10 +++++-----
>  meson.build  |  8 ++++----
>  4 files changed, 31 insertions(+), 11 deletions(-)
>=20
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--764wggkpiarjgkuc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAlzHB3UACgkQl9kSPeN6
SE9UJBAAtZkz3QwT2frEjb+EmOWzz8Y0LKctsb9xu4ZX8nol4zWvJ3laae40/3ER
FpdffSYwFtWZUyGpPwcrGIU9hgYNqSJCj3KkqyZBI68n7PwH9JzA0eBluhslZMiM
9iVUlSLlmom3F+4NNADxQXl/rwGIrdExnL8c/53EC8O3qfVr/JiuDzSkvtdXeC1Q
l5IkgqRTjXqfEHZHlnfGccKYzKehNy1f3WMfEFNAkZqUGCMJ2LXHoeA1NP4zBAEC
7wws5GyG7Dp1NGRVC2RFNH641rVQ9EDuUxtA1Cm9840rYy0wkyLzehHO4OuU7Dbb
Im3s00zpONXlQnXjCAflpxY07eCEToBfTF75RCpXc3rpWqRYyphtI6PlBGTkrSZV
T2w83164sMJzES/faWycEjdIPuVd4qT9/7MFThrW+xG+q7HH1uIPmPA9lVzNGS85
hHGsycUJc5ejHjXEguXFnn1jfdvh0rDubmDJ0JzN3x8aIFNkDmCE/ZzCBBLVUayt
R5jIra7J45W3xQ8g2b2oWt0qRMcHaW1ZgP8hw8S3DfoiVlrdEGZYrRY+Ua8f8RSP
ECil9DX7O45X5pj7sBwVTLstqdQ7SJ5S+REGe9aQtiIFx/s3sPV6rpKWnzfb9yVX
LrrfNPUJDjlbDZvtDxdC10xIwC5xnKiL5umcbvIrVcPVE4V+umM=
=I/Rf
-----END PGP SIGNATURE-----

--764wggkpiarjgkuc--

--===============1942902643==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1942902643==--
