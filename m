Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 359A3D6069
	for <lists+spice-devel@lfdr.de>; Mon, 14 Oct 2019 12:40:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCCEF89F38;
	Mon, 14 Oct 2019 10:40:32 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8227A89F38
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Oct 2019 10:40:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2BCF718CB8F6
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Oct 2019 10:40:31 +0000 (UTC)
Received: from localhost (unknown [10.32.181.83])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C6F9D19C68;
 Mon, 14 Oct 2019 10:40:28 +0000 (UTC)
Date: Mon, 14 Oct 2019 12:40:27 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20191014104027.6guigds4d3ohr66x@wingsuit>
References: <20191011095629.28447-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20191011095629.28447-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.63]); Mon, 14 Oct 2019 10:40:31 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-protocol 0/5] SPEC integration
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
Content-Type: multipart/mixed; boundary="===============2110840194=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============2110840194==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="k5goojoo74nuypgh"
Content-Disposition: inline


--k5goojoo74nuypgh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Oct 11, 2019 at 10:56:24AM +0100, Frediano Ziglio wrote:
> This series is part from a former series.
> There's an initial import commit to better understand the changes.
> It contains some work from Eduardo for MingW packaging.
> Final patches are really minor.

Should I/we wait for Eduardo's review?

> Frediano Ziglio (5):
>   build-sys: Import spec file from Fedora
>   build-sys: Provide spec file during build
>   build-sys: Allows spec file to build MingW packages
>   build-sys: Update URL in SPEC file
>   build-sys: Requires proper pkg-config for MingW
>=20
>  Makefile.am            |   1 +
>  configure.ac           |   1 +
>  spice-protocol.spec.in | 224 +++++++++++++++++++++++++++++++++++++++++

Let's add to meson too?

Cheers,
Victor

--k5goojoo74nuypgh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2kUJsACgkQl9kSPeN6
SE9B1RAAn/SDShHSWs8OuA52grqPg75Ck+mLN9eVmmNk8sSkNddgRo9IOYpp6o/u
yYuiy+ccc0bXQRznjboXSz5dXZcqn6nXCXyl2QwDqQu8LYGZOP+zQF2sxMZUfs9Y
l9XDI+gkcDDyTOGL+KA6PgWv5wUSmxAVUO76NMMR6hJoURtqC982pvPSj7y4+J3E
8nYIT2N4fd8p2fVzle+SjJWwqGGTEw/xHS3LJ4zMi6AF1lE9P8+yHkK45AJyEEjg
xhjdHR4lYod2wRbPWgH1GkU08R0Ege7L+O8U78dxcp1ThMEJ+jLQoheYc6Ib6cFD
99gqe1cXfqXDi5AGdlj+GC/JGh7rHNDREx3UHGAIneb0nfNtr5Pgfv+JNUpaziDf
o/t6v4LAU97yp6UksxCyWzhcp5LiNkKDWgM962SBI1G0DRqTCilKSUixLjLlLZVF
8CEeqfxot2F2oAoJscKqPpZKpZXwsIFDBxDnJrlJfoprHvNke/2w+iTZ2PkD6R90
bLcY3vGzBYashrFacSTsMJk/ushMts7Q2+Ov0FYhOYbC7ZYbzxf5UCx7izxmSYdX
X3s9SN2W4/ae8mxqDPk5Y+L0++bDZbx/t0+va0fe9xYP1ciu1s96EOhWF9EQq7E8
EFGyS1ILSG79pyUdqppngTuKr1Fv7hvu0eYEuYTE4fxdvnirlvw=
=Is3j
-----END PGP SIGNATURE-----

--k5goojoo74nuypgh--

--===============2110840194==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============2110840194==--
