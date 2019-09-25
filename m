Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F6DEBDB5A
	for <lists+spice-devel@lfdr.de>; Wed, 25 Sep 2019 11:45:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E64076EB57;
	Wed, 25 Sep 2019 09:45:51 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3D6E6EB57
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:45:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5082C89AC6
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:45:50 +0000 (UTC)
Received: from localhost (unknown [10.32.181.60])
 by smtp.corp.redhat.com (Postfix) with ESMTP id F33EB60126;
 Wed, 25 Sep 2019 09:45:49 +0000 (UTC)
Date: Wed, 25 Sep 2019 11:45:49 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190925094549.5bwvjdcccsohnkba@wingsuit>
References: <20190925090701.19130-1-victortoso@redhat.com>
 <171959826.3206101.1569404451539.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <171959826.3206101.1569404451539.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Wed, 25 Sep 2019 09:45:50 +0000 (UTC)
Subject: Re: [Spice-devel] [spice 0/8] migrate.py
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
Content-Type: multipart/mixed; boundary="===============1246634164=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1246634164==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="54zd2hjtavz2pzrh"
Content-Disposition: inline


--54zd2hjtavz2pzrh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Sep 25, 2019 at 05:40:51AM -0400, Frediano Ziglio wrote:
> >=20
> > From: Victor Toso <me@victortoso.com>
> >=20
> > Some changes to make this usable. More fixes to come later.
> >=20
> > Victor Toso (8):
> >   tests: migrate: remove spicec option
> >   tests: migrate: use uri for default's spicy client
> >   tests: migrate: add support to run with remote-viewer
> >   tests: migrate: fix relative qmp.py path
> >   tests: migrate: remove multiple client option
> >   tests: migrate: bool instead of on/off option in cmd line
> >   tests: migrate: add option to wait user input
> >   tests: migrate: add counter for tests
> >=20
> >  tests/migrate.py | 40 ++++++++++++++++++++++++----------------
> >  1 file changed, 24 insertions(+), 16 deletions(-)
> >=20
>=20
> They make sense.

Thanks,

> Maybe also some comments on how to better (and easily?)
> setup all the requirements.

Promise that as soon as I get a few more fixes here (migrate.py)
and spice-gtk, I'll do that.

I'll send a v2 addressing the review, many thanks!

>=20
> Frediano

--54zd2hjtavz2pzrh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2LN00ACgkQl9kSPeN6
SE+1NBAAgbOhhBG+5x9qcZiE/BVpz5UB+tib9k06UNq7X+AgdTH6dLdLE07x9FUG
oyKeQAHys5I8NB8ThpaQqT4Uvm5/b4rkfbAZmOJQcCLy5wCgf36Ngr5EMxQGxl3K
b4Ued3Xv3m2722/kTEpKuwgApY4aoC2XfrKXSo93X/ZvbrNFi4u26m5mvYg7OLsq
edH1Y7TCJ+mOEI7aQlwE0hWFAvH62c3N8Yso8oCyCmrKl/SXRBxc+59KC6FcS5OP
/7ox6Ayf/gBlM/aEcAA14dG4+eW5BtxljgDXjXqJ3kMcDAx8NOslUCYIGqbhufqw
xtev+6/ief6NB+rOHZDNSvlC2Qyb3evYsjEcva/hrzI1bdRX9KjJ/ZoWHBPozXY4
vL23AOpuOugYQYbsVNfMUJ2GsFKuVg0ssxmOg/Gzji7i8HKg+0EEDbnuBF2a1Bm8
x68Fjf+0qBI7layL8kGrBsRH4OYgNdEoyYL0USw6xaXclCUjotnP4PSywsCkrwhe
5o+Pnb2RJw+D2qX0g8LbJUG5v27VFB14rTmYDQccmFy3AU5Qtf99nb2Jc+y8FSLK
zARq4YKKphBew+qYJZR8bKpjkyIDMofY7tzZSigxsygRGxbvwbVYOJwIExntjVeP
VLPSldSfhpvu/8G2vDP293R3JorzL3R9Z82qi2w3+SQTLAW2vus=
=LO3+
-----END PGP SIGNATURE-----

--54zd2hjtavz2pzrh--

--===============1246634164==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1246634164==--
