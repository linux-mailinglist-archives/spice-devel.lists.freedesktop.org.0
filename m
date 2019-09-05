Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A9FAA526
	for <lists+spice-devel@lfdr.de>; Thu,  5 Sep 2019 15:56:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E89616E0F7;
	Thu,  5 Sep 2019 13:56:30 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 615A56E0F7
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Sep 2019 13:56:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0350F301A892
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Sep 2019 13:56:29 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9DCDB5D717;
 Thu,  5 Sep 2019 13:56:26 +0000 (UTC)
Date: Thu, 5 Sep 2019 15:56:25 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190905135625.ggglbxykerdbbe3k@wingsuit>
References: <20190905131707.7394-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190905131707.7394-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Thu, 05 Sep 2019 13:56:29 +0000 (UTC)
Subject: Re: [Spice-devel] [RFC PATCH spice-gtk] spice-session: Fix SWAP_STR
 macro
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
Content-Type: multipart/mixed; boundary="===============1878102914=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1878102914==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ngsci3743hjevdr3"
Content-Disposition: inline


--ngsci3743hjevdr3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Sep 05, 2019 at 02:17:07PM +0100, Frediano Ziglio wrote:
> Really swap "x" and "y", not temporary copies.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> ---
>  src/spice-session.c | 9 +++------
>  1 file changed, 3 insertions(+), 6 deletions(-)
>=20
> I didn't test. The main question is why the current code is working?
> Or is migration broken? Or we are not testing the type of migration
> the original swapping code (manual) was supposed to make it work?

If I'm not mistaken, connection already happened at this stage.
Please resend without RFC with some info related to the
introduction of this behavior in 01c6343 "Use macro to swap
data in spice_session_start_migrating()" in 2015-01-29 by
Christophe Fergeau <cfergeau@redhat.com>

> diff --git a/src/spice-session.c b/src/spice-session.c
> index 04ba124a..d0d9e541 100644
> --- a/src/spice-session.c
> +++ b/src/spice-session.c
> @@ -1742,12 +1742,9 @@ void spice_session_switching_disconnect(SpiceSessi=
on *self)
>  }
> =20
>  #define SWAP_STR(x, y) G_STMT_START { \
> -    const gchar *tmp;                 \
> -    const gchar *a =3D x;               \
> -    const gchar *b =3D y;               \
> -    tmp =3D a;                          \
> -    a =3D b;                            \
> -    b =3D tmp;                          \
> +    gchar *tmp =3D x;                   \
> +    x =3D y;                            \
> +    y =3D tmp;                          \
>  } G_STMT_END
> =20
>  G_GNUC_INTERNAL
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--ngsci3743hjevdr3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1xFAkACgkQl9kSPeN6
SE/GCxAAskLU7heMGzT6BsDk89C3BwvBrJ7KOqQlpsrf1EykC9gh2prDD/Jkveja
GVi6TliYMjTKD+B01kF5Ji/LPGITnO2nCWi69plMHbmYhg6lBbrhMRyKgwzxMhXI
rot5fAQ5PTqc3HzUsyo0EAgvDW5WO7z+rT0j4x0CPaIAaQLjIdoLRrpx37WdJztM
fJsfE40Y5NBREcxk38IaLfFDj2a/AdkAy0eNgR9F5otBy95dS7SfRxYUR1AZ2EiH
03iGi4hfX3RjtDQxYi/e7vAgAf0X+gOY+Juko87NEFjNh4JyB4ZKJPFJaXtIGguK
h7/dKrpfxSxeySfa3iAH99w+7xSnVGLFvzb400P55bAN6/k298W3WRJ2wRHk7t1X
An3ZwfYoiU87CSQbn05iJYMkqNi9blDbJ241cBs5OTaiy7NO0d4wf+IzH6+u//Jw
fZxMpuSME15IXsORLk/gMSOXUUZX2/3G4i9gdDDu6/E/60aGlL7TjJw7yse6/Bjk
DGqIgsQ4kI0S1XiPcec4NnW/K5mvFotkRIrJFFaN2exbUSBxVrajks4wAeoKmMUl
RImWTPiKw/wji+dwROmY0A2qBVnu2zIgNJHpsevM6rbhOg+PUxHHBbcqv19S4C1s
yqCShKwSLfNXjkKNPG0TjK1CU5Z0msMovlod9/dNXYNyoR9LJag=
=h9NP
-----END PGP SIGNATURE-----

--ngsci3743hjevdr3--

--===============1878102914==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1878102914==--
