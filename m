Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E2B4D08C3
	for <lists+spice-devel@lfdr.de>; Wed,  9 Oct 2019 09:48:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C9306E919;
	Wed,  9 Oct 2019 07:48:48 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5D4D6E919
 for <spice-devel@lists.freedesktop.org>; Wed,  9 Oct 2019 07:48:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8FCF63090FD2
 for <spice-devel@lists.freedesktop.org>; Wed,  9 Oct 2019 07:48:46 +0000 (UTC)
Received: from localhost (unknown [10.32.181.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3F4BB5D9CD;
 Wed,  9 Oct 2019 07:48:46 +0000 (UTC)
Date: Wed, 9 Oct 2019 09:48:45 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20191009074845.wkw5pzhkor5ph2pz@wingsuit>
References: <20191008173924.12388-1-fziglio@redhat.com>
 <20191008173924.12388-3-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20191008173924.12388-3-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Wed, 09 Oct 2019 07:48:46 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server v2 2/7]
 smartcard-channel-client: Use log instead of printf
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
Content-Type: multipart/mixed; boundary="===============1751915446=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1751915446==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2a6pycpzjifemjg4"
Content-Disposition: inline


--2a6pycpzjifemjg4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 08, 2019 at 06:39:19PM +0100, Frediano Ziglio wrote:
> More coherent. Also it's not good for a library to output on
> standard output.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

Acked-by: Victor Toso <victortoso@redhat.com>

Out of curiosity, have you hit unexpected messages?

> ---
>  server/smartcard-channel-client.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/server/smartcard-channel-client.c b/server/smartcard-channel=
-client.c
> index d47b442e4..43df902f5 100644
> --- a/server/smartcard-channel-client.c
> +++ b/server/smartcard-channel-client.c
> @@ -276,7 +276,8 @@ bool smartcard_channel_client_handle_message(RedChann=
elClient *rcc,
>          case VSC_APDU:
>              break; // passed on to device
>          default:
> -            printf("ERROR: unexpected message on smartcard channel\n");
> +            red_channel_warning(red_channel_client_get_channel(rcc),
> +                                "ERROR: unexpected message on smartcard =
channel");
>              return TRUE;
>      }
> =20
> --=20
> 2.21.0
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--2a6pycpzjifemjg4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2dkN0ACgkQl9kSPeN6
SE9cgQ//TabElAUG1nC8fPB2VdZADPR5Uex3dWGOjjW7dp9vGElhJdWdaotd8EYn
cZ28OM9b2ybFffYGq4is+K5LiiaYM5jwys99HG+MZhMhTVyvryix2HIlm4feGryD
7TvlwrXzIwZ2MKB5sA/eksQICYvHFGYQOtpaUg5ucFDEvY1/74zrerf96enMAy6q
K7cvQ0fpLjvjWlaGJJTEiQ6FFiZvKVovueyZ1oGgudchleUxuCIfQTaTZULliwSy
ex0wXQNrXbSr4qkaXeBzSqCcN5MkR8/RTujcg9l/42ccmXD26DRFpb2RKxVKFBer
+zFCI/TFVGGJDusxy4QaF0KkNN30zVp1+PSQoUtpL61Q+fhZ1yLAI3xRz52hZdc1
8M4LfbfALa207uPSQd6DW64dTTonU5TAM23zxwXyIs3zjLcFU3u9deJZ03eOO1FB
P888og9bMx1n7/RHqqyHbO33Zuyk9bMcrgVf0YJgIjw8SxSY+zJba9UYC0K1BIXd
GsxtWMLMzNRBrEe7fapvuMtiqUPlWpM0eHcY0lnLzg00tyCAC8FE6r5I+0x91HNr
4n/RUqEhGpSqIZVqKtYLlqx+BrWkD9P9hbgPv6NAsepv/qY6pc45LfYcZyZzcODp
rHQuHIzaOhncaB8mSN6F8uCl6kFDuVPAAre9V8/nY0pAtyto94I=
=VeLt
-----END PGP SIGNATURE-----

--2a6pycpzjifemjg4--

--===============1751915446==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1751915446==--
