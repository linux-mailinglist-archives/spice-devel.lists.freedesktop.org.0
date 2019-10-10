Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD15D2689
	for <lists+spice-devel@lfdr.de>; Thu, 10 Oct 2019 11:38:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FD8C6E34C;
	Thu, 10 Oct 2019 09:38:14 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A5196E34C
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Oct 2019 09:38:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 13E557652B
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Oct 2019 09:38:13 +0000 (UTC)
Received: from localhost (unknown [10.32.181.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B561419C4F;
 Thu, 10 Oct 2019 09:38:12 +0000 (UTC)
Date: Thu, 10 Oct 2019 11:38:12 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20191010093812.esl5cukoms4qk7ju@wingsuit>
References: <20191010090234.10495-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20191010090234.10495-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Thu, 10 Oct 2019 09:38:13 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 1/2] smartcard: Fix statement
 termination
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
Content-Type: multipart/mixed; boundary="===============0609254065=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0609254065==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5sjzpkv2g7ojmnky"
Content-Disposition: inline


--5sjzpkv2g7ojmnky
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 10, 2019 at 10:02:33AM +0100, Frediano Ziglio wrote:
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

For series,
Acked-by: Victor Toso <victortoso@redhat.com>

> ---
>  server/smartcard.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/server/smartcard.c b/server/smartcard.c
> index 340118e18..d62847d60 100644
> --- a/server/smartcard.c
> +++ b/server/smartcard.c
> @@ -559,7 +559,7 @@ red_smartcard_channel_class_init(RedSmartcardChannelC=
lass *klass)
>      object_class->constructed =3D red_smartcard_channel_constructed;
> =20
>      channel_class->parser =3D spice_get_client_channel_parser(SPICE_CHAN=
NEL_SMARTCARD, NULL);
> -    channel_class->handle_message =3D smartcard_channel_client_handle_me=
ssage,
> +    channel_class->handle_message =3D smartcard_channel_client_handle_me=
ssage;
> =20
>      channel_class->send_item =3D smartcard_channel_send_item;
>      channel_class->handle_migrate_flush_mark =3D smartcard_channel_clien=
t_handle_migrate_flush_mark;
> --=20
> 2.21.0
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--5sjzpkv2g7ojmnky
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2e/AMACgkQl9kSPeN6
SE9cvQ//W7pQQV3lVxbguYkb+TBeWzNGE7iDgsKICtmM5xHSLjXMTWlzrW7rnoJe
TfTrPJNTGAcNvPl/Rnr0M2M4aKzTpXAkypYsjrOIbcjjrVuHyXxjXvmvCjgzsY04
Xx21rgwxKDM5/CzLpgsWssRSWo17Eh0G8vXmL4bNFl4hr0g7np9JjGoX/pDY/L7o
z9Jr4RKNaYj4tzK/VSE2/5lHGE1CKSAOsOQkT6QITh2g8Gks8rTLdmshJQD3ae+f
Q+K9dBtyiZqsfbjzKHbHP7CGCYvLkM9ZCtDv2UJQOcOd2nWCk5WsFbC6N4OwSLrF
hQe/yISrKpnbDP5GfDeF1clVrsp2rluVHYZgE27BnmCifOk+cPoXbYk9XGmULoc7
/OwSxYoEw9DF7GK5T8Ev+3HiRJfV1IU63SuZ1e9jDGNJ5dKPKsXsA7Q5JJYUMrbW
LRA3GNzjO6BjFbiQrAXLmYQbA7z5n3zhl/N+Sl2Q46MaOwTOoXo87pdamNblglmZ
xsoGnuSDgiH3YSiRVSFuHiyR9VIxNBQkfm5do7K0/TH95irCftfKX3gB8djewAvj
VI31Dsmq1QYNo2dyfH+tfsSR3IZtUM468HNS2avqBKrNLdQKGmNFqyteXEbsNA1t
T4eLGEbAW9gm0SdpMuMTC/ARDgpRG/AqaYx2uxcWJKkicKYhT0I=
=JwDp
-----END PGP SIGNATURE-----

--5sjzpkv2g7ojmnky--

--===============0609254065==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0609254065==--
