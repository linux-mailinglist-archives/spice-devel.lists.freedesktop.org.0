Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F4C272B57
	for <lists+spice-devel@lfdr.de>; Wed, 24 Jul 2019 11:27:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A59EB6E4CE;
	Wed, 24 Jul 2019 09:27:56 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47FEB6E4CE
 for <spice-devel@lists.freedesktop.org>; Wed, 24 Jul 2019 09:27:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id BD1E430833C1
 for <spice-devel@lists.freedesktop.org>; Wed, 24 Jul 2019 09:27:54 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6B87F60BEC;
 Wed, 24 Jul 2019 09:27:54 +0000 (UTC)
Date: Wed, 24 Jul 2019 11:27:53 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190724092753.k7riphljeskpi2f2@wingsuit>
References: <20190724082132.6163-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190724082132.6163-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Wed, 24 Jul 2019 09:27:54 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH vd_agent_linux 0/5] Minor patches for
 analyzers tools
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
Content-Type: multipart/mixed; boundary="===============0671209024=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0671209024==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hznks6y4awvaaryn"
Content-Disposition: inline


--hznks6y4awvaaryn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jul 24, 2019 at 09:21:27AM +0100, Frediano Ziglio wrote:
> These patches mainly remove some warnings detected by Coverity
> and clang code analyzer.
> It's a collection of different patches on the same topic, one
> initially written by Victor.

Thanks for amending the fix, series looks fine, thanks!
Acked-by: Victor Toso <victortoso@redhat.com>

>=20
> Frediano Ziglio (4):
>   x11-randr: Avoid passing XEvent as value
>   x11: Avoid passing XEvent as value
>   x11: Constify XEvent argument
>   x11: Change check to make code scanners not giving warning
>=20
> Victor Toso (1):
>   device-info: remove g_list_length() on compare_addresses()
>=20
>  src/vdagent/device-info.c | 12 ++++---
>  src/vdagent/x11-priv.h    |  2 +-
>  src/vdagent/x11-randr.c   |  8 ++---
>  src/vdagent/x11.c         | 67 +++++++++++++++++++--------------------
>  4 files changed, 45 insertions(+), 44 deletions(-)
>=20
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--hznks6y4awvaaryn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl04JJkACgkQl9kSPeN6
SE+GWRAAmxbXTYbbTR56FCETGL6vZwTsK75pTmBhcdrIJKaBWzh2PPiVVAZGG+/V
vr/o27IgAC//pWJZOeULO3Pyv5zY7Ki/jgQ7zqLnYE+vu3aUxpF+20L38RblVFLH
OVdrtbn2OKRTKILDm/wEBDJibv8Z4IgFO/cF0S0H+8EirsTTLh7Zc7IYy/LIP16h
Z0Aicm0v6HvYokOqoDOn+IAiLcWBOmeAQH7x0GVE0VvTQWG1Nb+3+CZUGgnN1aRX
g6hYXj2gYmTjQ/AnlfcpVXIeEupfmc2k8odZK9F0xggQ/S74snABIxpnTTQ1iO+j
SdGHLQTmPmU5xxi2WtVJFzXTt88mF9zCd8/64/Bi36lN+fG4hHuKJE+4QiP1cv1e
kXymdtNoQ2XDEWUDY4h54iiRUb2b7YvkYmhGaLd0+Ul6+yC05+AuwpAQBGTrSQUa
WH577RjqaKhYzbV9Ajviz56hHPvGhIZnfRh0VkHOkmxPQfG1PupLigl8LsQS6JKQ
+JCjs4BSCmVLyA+mkXG+NqI6x+ZXcqnEbIYK7ttN2injIzEPCPktvMXm4+3C9z3y
Yr/qYEhF4whV/eMeOB4X/PxXYX41JkoR3+LKyXp2KBgcA5LGPWZQ1sqVhPpeWmOE
gzc6Ans4cDDhRsfXqrqwu19qBFQNtOnoCvXdp0xQmsxg8iZj1nw=
=zE5X
-----END PGP SIGNATURE-----

--hznks6y4awvaaryn--

--===============0671209024==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0671209024==--
