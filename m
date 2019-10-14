Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F087FD619E
	for <lists+spice-devel@lfdr.de>; Mon, 14 Oct 2019 13:47:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FE326E1F7;
	Mon, 14 Oct 2019 11:47:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86EE06E1F7
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Oct 2019 11:47:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 260CE5945E
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Oct 2019 11:47:27 +0000 (UTC)
Received: from localhost (unknown [10.32.181.83])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C6B32600CD;
 Mon, 14 Oct 2019 11:47:26 +0000 (UTC)
Date: Mon, 14 Oct 2019 13:47:26 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20191014114726.xsyhqdjo2nngvilo@wingsuit>
References: <20191014105443.8565-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20191014105443.8565-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Mon, 14 Oct 2019 11:47:27 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk] spice-widget: Fix invalidate
 region in case of image is scaled
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
Content-Type: multipart/mixed; boundary="===============0392603118=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0392603118==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xbybp7g3z3v7qzva"
Content-Disposition: inline


--xbybp7g3z3v7qzva
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Oct 14, 2019 at 11:54:43AM +0100, Frediano Ziglio wrote:
> In case the drawing on the screen is scaled the scaling required to
> invalidate a slightly bigger region.
> This is due to the interpolation done during the resize.
> So if scaling is performed invalidate also the adjacent pixels.
>=20
> This fixes https://gitlab.freedesktop.org/spice/spice-gtk/issues/19.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> ---
>  src/spice-widget.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>=20
> diff --git a/src/spice-widget.c b/src/spice-widget.c
> index d73e02f2..9d6899c0 100644
> --- a/src/spice-widget.c
> +++ b/src/spice-widget.c
> @@ -2847,6 +2847,14 @@ static void invalidate(SpiceChannel *channel,
>                                &display_x, &display_y,
>                                NULL, NULL);
> =20
> +    gint scale_factor =3D gtk_widget_get_scale_factor(GTK_WIDGET(display=
));
> +    if (s * scale_factor > 1) {
> +        rect.x -=3D 1;
> +        rect.y -=3D 1;
> +        rect.width +=3D 2;
> +        rect.height +=3D 2;
> +    }
> +

Ah, yes. I've tested this ages ago and it was fine. Thanks for
not missing it for any longer.

Acked-by: Victor Toso <victortoso@redhat.com>

>      x1 =3D floor ((rect.x - d->area.x) * s);
>      y1 =3D floor ((rect.y - d->area.y) * s);
>      x2 =3D ceil ((rect.x - d->area.x + rect.width) * s);
> --=20
> 2.21.0
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--xbybp7g3z3v7qzva
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2kYE0ACgkQl9kSPeN6
SE/Uqg//Ww4E+QMJQxcrukIKGnbpB+pDPP0fie2cR1eevLNred1rq02kr+VFnffl
p7PGLJBJevd25GQ6RZOVau9zU5UE9ubCDqWIE8p+7m/QksjiqjFXVimhT5+tMFmQ
5lBAVounApdcpGhetK3AnYrT8v5zVPiC2BRHN+EfyShAgxViSUoJmCOsR5OtjR7E
F3zWTGB8o0x40PyZ5mjcHsSWGP5iQdIW2KtFrRnBskhGHz3BJ5h8QuY3g/y+3Te1
gSUHY0bOpPXf3nUDTDv9AXit02hZJcbqAcD8Z1WWGZ9CdAH0T7Jdh8Q1lWShdZ/i
urrlRv/Ah9Keb8DDD/dw9ObDav+NTFZMSudRl401N4xg+9TsyAc+vKnyvMuCnE0o
sSpAoIDVKayqlourOluT+mP244uSdLvsSPuwSH6saNCFqlnW2WRD8nFadw0lGUuT
zYW1uY637LLmMu9fx4u4SJU2t/eolnhNk1Le9cEYA944dfsb9nymI24eRVZD/OzU
U/j/St8kOrc5xcQA9hRQTqYZR7o0j8RAkcA/B6DdDQLkwrn80v8sCvIhU8WRV5nu
56CzWkR66durU5j4aQbPiST5bi9ydUyFKqpQZ6feMau6Ym7tSlFBKlpkQHrBUXZV
lTMN/gtgvVpqzDUk5DrbHUFUJIiYgroJp4b5nhIJnJjvE3MD3LE=
=h8vl
-----END PGP SIGNATURE-----

--xbybp7g3z3v7qzva--

--===============0392603118==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0392603118==--
