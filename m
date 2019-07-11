Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD045652D5
	for <lists+spice-devel@lfdr.de>; Thu, 11 Jul 2019 10:08:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA7F06E157;
	Thu, 11 Jul 2019 08:08:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A425B6E157
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 08:08:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 39B7E308213A
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 08:08:46 +0000 (UTC)
Received: from localhost (unknown [10.32.181.70])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DB4C85D720;
 Thu, 11 Jul 2019 08:08:45 +0000 (UTC)
Date: Thu, 11 Jul 2019 10:08:45 +0200
From: Victor Toso <victortoso@redhat.com>
To: Kevin Pouget <kpouget@redhat.com>
Message-ID: <20190711080845.xgjzy2lfqwc5xeuz@wingsuit>
References: <20190704102922.17433-1-kpouget@redhat.com>
 <20190704102922.17433-2-kpouget@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190704102922.17433-2-kpouget@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Thu, 11 Jul 2019 08:08:46 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk 2/2] spicy: send ordered list of
 preferred video codecs
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
Content-Type: multipart/mixed; boundary="===============1818166493=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1818166493==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dm6ggg5nnt2z5pvb"
Content-Disposition: inline


--dm6ggg5nnt2z5pvb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 04, 2019 at 12:29:22PM +0200, Kevin Pouget wrote:
> Instead of sending only the preferred video codec (selected), spicy
> now sends an ordered list. When a video codec is selected in the radio
> box, this codec is moved to beginning of the list.
>=20
> Signed-off-by: Kevin Pouget <kpouget@redhat.com>
> ---
>  tools/spicy.c | 31 +++++++++++++++++++++++++++++--
>  1 file changed, 29 insertions(+), 2 deletions(-)
>=20
> diff --git a/tools/spicy.c b/tools/spicy.c
> index 8a6d077..403a66d 100644
> --- a/tools/spicy.c
> +++ b/tools/spicy.c
> @@ -1014,8 +1014,35 @@ static void video_codec_type_cb(GtkRadioAction *ac=
tion G_GNUC_UNUSED,
>                                  GtkRadioAction *current,
>                                  gpointer user_data)
>  {
> -    spice_display_channel_change_preferred_video_codec_type(SPICE_CHANNE=
L(user_data),
> -                                                            gtk_radio_ac=
tion_get_current_value(current));
> +    static GArray *preferred_codecs =3D NULL;
> +    gint selected_codec =3D gtk_radio_action_get_current_value(current);
> +    guint i;
> +    GError *err =3D NULL;
> +
> +    if (!preferred_codecs) {
> +        preferred_codecs =3D g_array_sized_new(FALSE, FALSE,
> +                                             sizeof(gint),
> +                                             G_N_ELEMENTS(video_codec_ty=
pe_entries));

This will leak, no? Maybe move the static var to global scope and
cleanup in the end of main() ?

Not a big issue, this is just testing tool. Either way,

Acked-by: Victor Toso <victortoso@redhat.com>

> +        /* initialize with the menu ordering */
> +        for (i =3D 0; i < G_N_ELEMENTS(video_codec_type_entries); i++) {
> +            g_array_append_val(preferred_codecs, video_codec_type_entrie=
s[i].value);
> +        }
> +    }
> +
> +    /* remove codec from array and insert at the beginning */
> +    for (i =3D 0; i < preferred_codecs->len &&
> +                g_array_index(preferred_codecs, gint, i) !=3D selected_c=
odec; i++);
> +
> +    g_assert(i < preferred_codecs->len);
> +    g_array_remove_index(preferred_codecs, i);
> +    g_array_prepend_val(preferred_codecs, selected_codec);
> +
> +    if (!spice_display_channel_change_preferred_video_codec_types(SPICE_=
CHANNEL(user_data),
> +                                                                  (gint =
*) preferred_codecs->data,
> +                                                                  prefer=
red_codecs->len, &err)) {
> +        g_warning("setting preferred video codecs failed: %s", err->mess=
age);
> +        g_error_free(err);
> +    }
>  }
> =20
>  static void
> --=20
> 2.21.0
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--dm6ggg5nnt2z5pvb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl0m7o0ACgkQl9kSPeN6
SE+H4Q/+Iq/InTLBzDeDvKtVQ5rYiA31oI+KVPpkNguLlqDnjU0pVHOLkEyvIxT6
73avTHGXtZIesUr/Ff4Rs+VR85+JnP+IEqfdKUHDAt0qNxsM/BecfV6LGhYHvZcR
zk/I9I+2NNf7iBra5Grg5CeRDA+EXku81F+ddHCqtpTi4oK8eckhMqaxreBJTAmD
qxCGG6pdvHiyVDhavC+CmmXL2B7UyxRGkFTJBpv7C+rmtS4+M4lWvj/TIHPJLbQt
F9P23XnJGQSEXt43zA6n3rW2P3gL+fM8FWhtkW5i/KLzTzN/1XLqVfUn8FhEidAw
fhJcX4lctysfeEZ0+nYrSXlfXl/KP1Hl/pfh8Bffgg31rmuLWnYX9yMaD+3sQ3h+
mzJlV7pplTdRrbfYUoq8zHjAHrQ0xyhzT4nznK2UgTRVuAALaEOgiyudsKrruU/6
vRspmNEfQSp3c64VuuZpxPURz0F0jY8+cBwc3uo9soht+e9/U6LSwEJCv+OkeAmw
JUTR8b/7QaEzczMPQrkqJFGDUNqVfyZMoNKLskHxv0SOgzYiHoP6Pu5lU4Tl3acX
gx7v7mWHkpaUvzm73SbmW96+iJ65Lvsy9uCbklxwxXIiC360qj3hxa3+gwTVZVZO
1rtBfdZ8DEtMmxaUI8aPBulokaSDKyd3pU2/cgvsiX35yP7zqUk=
=a5Ih
-----END PGP SIGNATURE-----

--dm6ggg5nnt2z5pvb--

--===============1818166493==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1818166493==--
