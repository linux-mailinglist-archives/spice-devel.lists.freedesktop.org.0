Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 179A1715DE
	for <lists+spice-devel@lfdr.de>; Tue, 23 Jul 2019 12:17:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 368826E0CC;
	Tue, 23 Jul 2019 10:17:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FA196E0CC
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 10:17:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1A0F7C065128
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 10:17:38 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BB25A1001DC2;
 Tue, 23 Jul 2019 10:17:37 +0000 (UTC)
Date: Tue, 23 Jul 2019 12:17:36 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190723101736.hgpddj3dj3tjz3dn@wingsuit>
References: <20190722112600.1338-1-fziglio@redhat.com>
 <20190722112600.1338-2-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190722112600.1338-2-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Tue, 23 Jul 2019 10:17:38 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk 2/2] spice-widget-egl: Declare
 and initialise "tex" and "verts" shortly
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
Content-Type: multipart/mixed; boundary="===============1302181324=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1302181324==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vaycnkcvzshhmty3"
Content-Disposition: inline


--vaycnkcvzshhmty3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jul 22, 2019 at 12:26:00PM +0100, Frediano Ziglio wrote:
> Just syntax change.
> Reduce code to initialise these matrices.

Yes, looks nicer.
Acked-by: Victor Toso <victortoso@redhat.com>

>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> ---
>  src/spice-widget-egl.c | 40 +++++++++++++---------------------------
>  1 file changed, 13 insertions(+), 27 deletions(-)
>=20
> diff --git a/src/spice-widget-egl.c b/src/spice-widget-egl.c
> index 7db66082..f5e24a01 100644
> --- a/src/spice-widget-egl.c
> +++ b/src/spice-widget-egl.c
> @@ -489,33 +489,19 @@ client_draw_rect_tex(SpiceDisplay *display,
>                       float x, float y, float w, float h,
>                       float tx, float ty, float tw, float th)
>  {
> -    float verts[4][4];
> -    float tex[4][2];
> -
> -    verts[0][0] =3D x;
> -    verts[0][1] =3D y;
> -    verts[0][2] =3D 0.0;
> -    verts[0][3] =3D 1.0;
> -    tex[0][0] =3D tx;
> -    tex[0][1] =3D ty;
> -    verts[1][0] =3D x + w;
> -    verts[1][1] =3D y;
> -    verts[1][2] =3D 0.0;
> -    verts[1][3] =3D 1.0;
> -    tex[1][0] =3D tx + tw;
> -    tex[1][1] =3D ty;
> -    verts[2][0] =3D x;
> -    verts[2][1] =3D y + h;
> -    verts[2][2] =3D 0.0;
> -    verts[2][3] =3D 1.0;
> -    tex[2][0] =3D tx;
> -    tex[2][1] =3D ty + th;
> -    verts[3][0] =3D x + w;
> -    verts[3][1] =3D y + h;
> -    verts[3][2] =3D 0.0;
> -    verts[3][3] =3D 1.0;
> -    tex[3][0] =3D tx + tw;
> -    tex[3][1] =3D ty + th;
> +    GLfloat tex[4][2] =3D {
> +        { tx, ty },
> +        { tx + tw, ty },
> +        { tx, ty + th },
> +        { tx + tw, ty + th },
> +    };
> +
> +    GLfloat verts[4][4] =3D {
> +        { x, y, 0.0, 1.0 },
> +        { x + w, y, 0.0, 1.0 },
> +        { x, y + h, 0.0, 1.0 },
> +        { x + w, y + h, 0.0, 1.0 },
> +    };
> =20
>      draw_rect_from_arrays(display, verts, tex);
>  }
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--vaycnkcvzshhmty3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl023sAACgkQl9kSPeN6
SE8hNw//dBpyBnR9qbAJDkuSz22tpoTqESVKCCiYFf5raUpc6n9BD0z5Y0s521SL
JhqIYH0vor3ZV3AI4K7GrW6nR7P2JW8wSYH4P+TJzGlpXZ8uEF1Csj3iUGSsdNXp
kZICDwJL7jSHZM4uH+plCDjPjLdpD+g7o7wmiwI8IUuchtXdtcBUXv2jb07FOUtN
lRgbQBMn7kzVepGysz0BOaRAp+dDOIf7tAGJFhXFvtSQd5wnHo+sVyURSbyzZ1rF
jGA44XADsqZeIH7+IBwCQ5oR10nmZwCl4nMQiMJRncVLfpoD1fnwGmvMLQ6CY9VQ
pU8BuJiUr2ecu55eZfjROb9eVKrPfj/1mpKkQ37jLHhoZLdCWj4G23NQW/3sY5xL
NPaP9K9BzMgMgg8bFQpq2WiezWFOPSx0ZU73jqnZiF31Bmlh1YW7lHz3iWSNJgP4
X68dzbwJRsXVotfUVyzNRatbdY+CYZizfVR+3QMjfj+xrMNM/h6SOAe0zGcjHHrM
BxG8aFByoIaPbWB1gOdF218PP2D5TPWRNioLoM8eLbFF8QMna92Ca4CFhLEdtsX6
e3CtkH6xSPPFxQnW0wSqpuJIuVcnDbDjj/2FuVn3x55jz34lnbuFO1HpwaNYM+Ap
GPuQ54SsSoToqaSHf56WryxFWG3acVe9J22wXt80HBF59ELrvTU=
=OMqP
-----END PGP SIGNATURE-----

--vaycnkcvzshhmty3--

--===============1302181324==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1302181324==--
