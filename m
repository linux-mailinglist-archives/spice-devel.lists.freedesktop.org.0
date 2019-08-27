Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 025EC9E7E3
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 14:28:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7429E899B3;
	Tue, 27 Aug 2019 12:28:49 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9062899A7
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 12:28:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7683318012FE
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 12:28:48 +0000 (UTC)
Received: from localhost (unknown [10.32.181.212])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1EA1A1001281;
 Tue, 27 Aug 2019 12:28:47 +0000 (UTC)
Date: Tue, 27 Aug 2019 14:28:47 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190827122847.4khzucpuyd3lxrim@wingsuit>
References: <20190827092246.10276-1-fziglio@redhat.com>
 <20190827092246.10276-18-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190827092246.10276-18-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.63]); Tue, 27 Aug 2019 12:28:48 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk v4 17/29] fixup! usb-redir:
 enable redirection of emulated CD drive
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
Content-Type: multipart/mixed; boundary="===============0645173147=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0645173147==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="d72oqsne3qodgrom"
Content-Disposition: inline


--d72oqsne3qodgrom
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 27, 2019 at 10:22:34AM +0100, Frediano Ziglio wrote:
> Minor styles, spaces, double end of statement.
> ---
>  src/usb-device-cd.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/src/usb-device-cd.c b/src/usb-device-cd.c
> index 2234289c..2f421c42 100644
> --- a/src/usb-device-cd.c
> +++ b/src/usb-device-cd.c
> @@ -86,7 +86,7 @@ struct SpiceUsbEmulatedDevice {
>      struct BufferedBulkRead read_bulk[MAX_BULK_IN_REQUESTS];
>      /* according to USB MSC spec */
>      uint16_t serial[12];
> -    uint8_t  max_lun_index;
> +    uint8_t max_lun_index;
>  };
> =20
>  typedef struct SpiceUsbEmulatedDevice UsbCd;
> @@ -530,7 +530,7 @@ static void usb_cd_control_request(UsbCd *device,
>              // returning one byte
>              if (h->length) {
>                  h->length =3D 1;
> -                h->status =3D usb_redir_success;;
> +                h->status =3D usb_redir_success;
Acked-by: Victor Toso <victortoso@redhat.com>
>                  *buffer =3D &device->max_lun_index;
>              }
>              break;
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--d72oqsne3qodgrom
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1lIf8ACgkQl9kSPeN6
SE/gmA//c+x+dKexwBMWybENB+Vzn4inWEL5CBea3aiwGduE7FNZPimvs6iLNpmv
GZmjlN4iTT3GpKMPEL6mago7ukXmglPp97guz+kRU8AvMcoZeUo/xQmibdqGUpxl
E+4+TIDYBl1zNRB/slFrFCEsGtusGT70iljhV52Trju9nKMVeXzMhFrWvaqYLkvc
GioV8tAXYDHzRJBJI2Q1NM395nHBoyiJ8/ApA6oxnBQzPuJYopsCm4B2o+BJ3NOo
9LtXNsD6DU/Ka8qdWRYY9Kk0ALEisMSkHN4wDjkV/R7DORsU9rn3iCJWY5zxCgZL
Kh/tm/sawq6+mIxM7te7r/LCkIT6BLz3x9111YU0U22p1P4eN2ackQEburVN3oMs
Tj2KVK04fvxJwZorzdhKAp8sAQKuEZBqcYLct6KX2Bg8iV9/adT7834TOLpTFc0x
ZgJz5Z++PAaL/ueWrJZxk0bh7c8NLxpDYZJJxGsv1IJag1UEOtL/HsMF+DEAZxJb
sPylj3hX0xEIIxsDmcB4kpPULSw4bdPCmzYqVwKnEBp3wZGMxD+nIhbJM1zWUYuy
xTVYFTHycegEu7XewPssNSgF6GGwx0WnkK8Jboi+b4RFAjtoVlDEu88h/+URdzER
nqzbkD/r90AGuFrYo231tOJ0c/UmwS8MCfy/d/X7pbWEZPcPHdE=
=Q5mO
-----END PGP SIGNATURE-----

--d72oqsne3qodgrom--

--===============0645173147==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0645173147==--
