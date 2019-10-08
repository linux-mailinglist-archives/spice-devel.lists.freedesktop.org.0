Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEE40CFE53
	for <lists+spice-devel@lfdr.de>; Tue,  8 Oct 2019 18:01:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3928D6E844;
	Tue,  8 Oct 2019 16:01:15 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C1D96E844
 for <spice-devel@lists.freedesktop.org>; Tue,  8 Oct 2019 16:01:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6F1EAC059758
 for <spice-devel@lists.freedesktop.org>; Tue,  8 Oct 2019 16:01:12 +0000 (UTC)
Received: from localhost (unknown [10.32.181.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 165A119C69;
 Tue,  8 Oct 2019 16:01:11 +0000 (UTC)
Date: Tue, 8 Oct 2019 18:01:11 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20191008160111.cd3dgq7vdaoypx4u@wingsuit>
References: <20191007103906.30517-1-fziglio@redhat.com>
 <20191007103906.30517-9-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20191007103906.30517-9-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Tue, 08 Oct 2019 16:01:12 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 8/8] red-channel-client: Use
 SpiceMsgcAckSync structure
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
Content-Type: multipart/mixed; boundary="===============1634375770=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1634375770==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zvhvlhu5ttivsau6"
Content-Disposition: inline


--zvhvlhu5ttivsau6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

For the 6-8/8 (pending)
Acked-by: Victor Toso <victortoso@redhat.com>

On Mon, Oct 07, 2019 at 11:39:06AM +0100, Frediano Ziglio wrote:
> red_channel_client_handle_message is called after parsing the
> message so it's not necessary to check it again or parse manually.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> ---
>  server/red-channel-client.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/server/red-channel-client.c b/server/red-channel-client.c
> index 832b4175..c3ad6818 100644
> --- a/server/red-channel-client.c
> +++ b/server/red-channel-client.c
> @@ -1464,7 +1464,7 @@ bool red_channel_client_handle_message(RedChannelCl=
ient *rcc, uint16_t type,
>  {
>      switch (type) {
>      case SPICE_MSGC_ACK_SYNC:
> -        rcc->priv->ack_data.client_generation =3D *(uint32_t *)(message);
> +        rcc->priv->ack_data.client_generation =3D ((SpiceMsgcAckSync *) =
message)->generation;
>          break;
>      case SPICE_MSGC_ACK:
>          if (rcc->priv->ack_data.client_generation =3D=3D rcc->priv->ack_=
data.generation) {
> --=20
> 2.21.0
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--zvhvlhu5ttivsau6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2csscACgkQl9kSPeN6
SE8eZQ//UVYxucipQ/rIA7mXd8cHMyxL8hTLXGv86YcY5iv2r6dPoyvwezAoWrRO
oKXJnXKwOY1ZwbnBQmoIej5fDDTyCGLf2jEHc/0UmJNeaxuw2Vjl3bZLLOHqOu9j
mmpJ67Z72nZw6iGh3rY9b4Jf/Ik4t7Xv5MyKyOnbi8l6dgt1CY2ovkU3lmQ9h5Iu
b0vkXwpWpPByMNkojwtC7UIJahZf4Sj2BH5JJdlcteFYf2k06G3PNJd08M8wXgQw
BWeTrP9sfLXhgaq7nFAH2xiBxSCG2C3f9Q/sCdQL1axsr0ogdjI8pDP2vJlBE+Rz
U33cTEWIy4ITgPzSB3mS+Uc4ZIaelKPtWtT9C9SRp9anPJGrM/NEecySjmTIUvs5
XP0mdUscT6ZpIkOKE3iqlw9YfsVrX5PZbNYavr2uv4E5kXa5XQJh/YTv3ztJLL+h
+67eJH+cpU+VT2LDdPXQOl1WqfrWCgdLQ1BaebUF5d9JFfWJIFI33dZfy17vMmuu
MK9UC6XevaCBHy3Mmms/KIhiNZDKb5V1YJDTiGTvUF9OZncMmeYnApL6dnyI9frT
N3+gb1t2y5uD62XeSnLL9H+QLyCzRlpvT41bRGB7xCWiTvm7JwNNXsJiRHi0D302
/TEJEkcEeO1A1WdZd/tUL1Hfn2+AJQTDi+0j/DbgFiRqvpKcKK4=
=pxup
-----END PGP SIGNATURE-----

--zvhvlhu5ttivsau6--

--===============1634375770==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1634375770==--
