Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D8DDBB82B
	for <lists+spice-devel@lfdr.de>; Mon, 23 Sep 2019 17:42:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC75F6E950;
	Mon, 23 Sep 2019 15:42:05 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D23B56E950
 for <spice-devel@lists.freedesktop.org>; Mon, 23 Sep 2019 15:42:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7C69F10A8120
 for <spice-devel@lists.freedesktop.org>; Mon, 23 Sep 2019 15:42:04 +0000 (UTC)
Received: from localhost (ovpn-116-25.ams2.redhat.com [10.36.116.25])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 21DF619C58;
 Mon, 23 Sep 2019 15:42:03 +0000 (UTC)
Date: Mon, 23 Sep 2019 17:42:03 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190923154203.2ld6s2z7f4jr273g@wingsuit>
References: <20190910092134.19105-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190910092134.19105-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.64]); Mon, 23 Sep 2019 15:42:04 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk] spicy: Do not call gst_init
 directly
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
Content-Type: multipart/mixed; boundary="===============1257918710=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1257918710==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ip5my5osq4n6aflm"
Content-Disposition: inline


--ip5my5osq4n6aflm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 10, 2019 at 10:21:34AM +0100, Frediano Ziglio wrote:
> GStreamer is already initialized using gst_init_get_option_group and
> gst_init_get_option_group.
>=20
> From gst_init documentation:
>    WARNING: This function does not work in the same way as
>    corresponding functions in other glib-style libraries,
>    such as gtk_init(). In particular, unknown command line options
>    cause this function to abort program execution.
>=20
> This luckily is not true (program won't abort if you pass --gst-foo
> for instance) but better to stick to documentation.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
Acked-by: Victor Toso <victortoso@redhat.com>
> ---
>  tools/spicy.c | 1 -
>  1 file changed, 1 deletion(-)
>=20
> diff --git a/tools/spicy.c b/tools/spicy.c
> index 403a66d1..8ca62f91 100644
> --- a/tools/spicy.c
> +++ b/tools/spicy.c
> @@ -2017,7 +2017,6 @@ int main(int argc, char *argv[])
> =20
>      /* parse opts */
>      gtk_init(&argc, &argv);
> -    gst_init(&argc, &argv);
>      context =3D g_option_context_new("- spice client test application");
>      g_option_context_set_summary(context, "Gtk+ test client to connect t=
o Spice servers.");
>      g_option_context_set_description(context, "Report bugs to " PACKAGE_=
BUGREPORT ".");
> --=20
> 2.21.0
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--ip5my5osq4n6aflm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2I58sACgkQl9kSPeN6
SE+qbRAAuqxHJ1/UG4ae4rTTgt6lB5j31LOYzBD4wiehqMjq+dVcIdq4q0u85R9g
y60yt6aQ7GQ0479tVVlUtz5B9oea4YiI3wk3FTMPiGyy+iJhBgpjerzfUsGLybhE
zGQTWzmjAx9xWg5p/LAL/wnZwYPC5T5M8hmnLqvVaNMARvnV/7TPQzQtW+SEP3kz
Sn1mekTA6jKi8WsmhsZFZyC8VRnyDLfvwae3I26xEINgdsVFSeiqu1TeIn8X/Lct
Esd6vVHQ6cHvmNgcwQIrqnk6jV5bQWeL54HKxtedEpLgcYb7Nv1NlVl0jSmub2hu
Ah/NuMd2fqVVnD9MGUb1KvZbXJ5P3hk/vFgIV7l3OhFji92TH47QfnHmRwXlyNoM
+qAYWAASkfL/JxKEjrryHPLotXEhcgvmWSBI/XdJVfF7M+A+4DRZqN4Seovr0cfW
6YaJ7amoVp0Gx99/f2GJ4LumiGQOEY/uF29ObFm8MX7tRnEnRas4t7zjUXYLh54D
2GjVFeErJPwkaYH+xB/vLy+DoU0p4yb3lqMYYBDkvdR0Kgkbq3i/Ed8zSdisKPNl
rANV5XHFUJJQL8MsUC1Zq2FnAGg5zguHba4XfiYN9Avj1uiwsQ/g8eA9LOgah7Xh
qafvmAzupua5l5s6IVAtLsy/71zjOutgcpwVjupEDe5FJM/ra9Y=
=YizM
-----END PGP SIGNATURE-----

--ip5my5osq4n6aflm--

--===============1257918710==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1257918710==--
