Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C409E5A3
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 12:27:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59756899EA;
	Tue, 27 Aug 2019 10:27:14 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABF91899EA
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 10:27:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 54304307D91F
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 10:27:13 +0000 (UTC)
Received: from localhost (unknown [10.32.181.212])
 by smtp.corp.redhat.com (Postfix) with ESMTP id F0D685D6B0;
 Tue, 27 Aug 2019 10:27:12 +0000 (UTC)
Date: Tue, 27 Aug 2019 12:27:12 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190827102712.hy7vwckrwgqvweuz@wingsuit>
References: <20190827092246.10276-1-fziglio@redhat.com>
 <20190827092246.10276-12-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190827092246.10276-12-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Tue, 27 Aug 2019 10:27:13 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk v4 11/29] fixup! usb-redir: add
 files for SCSI and USB MSC implementation
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
Content-Type: multipart/mixed; boundary="===============0163202829=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0163202829==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="gamf2kivg3nhyfog"
Content-Disposition: inline


--gamf2kivg3nhyfog
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 27, 2019 at 10:22:28AM +0100, Frediano Ziglio wrote:
> Do not wrap all declarations, keep out external headers
> ---
>  src/cd-usb-bulk-msd.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/src/cd-usb-bulk-msd.h b/src/cd-usb-bulk-msd.h
> index 85661165..c165c187 100644
> --- a/src/cd-usb-bulk-msd.h
> +++ b/src/cd-usb-bulk-msd.h
> @@ -21,12 +21,12 @@
> =20
>  #pragma once
> =20
> -G_BEGIN_DECLS
> -
>  #include <gio/gio.h>
> =20
>  #include "cd-scsi-dev-params.h"
> =20
> +G_BEGIN_DECLS
> +

Did you get a warning?
Acked-by: Victor Toso <victortoso@redhat.com>

>  typedef enum CdUsbBulkStatus {
>      BULK_STATUS_GOOD =3D 0,
>      BULK_STATUS_ERROR,
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--gamf2kivg3nhyfog
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1lBYAACgkQl9kSPeN6
SE/PCg//do4p6VJDhZUVDptZxk7730y6Yo+c9yHGicT65bwMrvDfd4RSPBB/C/CE
3lqCZa+V3fxnBOOPdKnYbrTtB10iuxQBx8RlqQV5D8vf9tGmqJm5HPqBiXZCRQEi
4XK2vD2MkzZhImV9nu6iwREVwY4dVVEcyPyX7C0azJkcCUFT8liabgVQ8Ou0kqu2
4Gef7pjtREoDuGQEUMrNv19PJzmswjoUmXE2GF3Rtf+KlsSvPpPKMfBlYF366r8P
xMM+byBA8B76Ybea0gZLf2wNBzDdp/sUou5SJJGltbcvhq1durZdG9yql5uMRm+I
fdbglegHFqg7QB4INzLGc3nh+lJdgdFT+nmudbH7m4OW/o30v1WhxlD9qkN8twkF
Jq3EWBbTiJRKvOjWYZjCIBZQ9FIv8kLhSijy1GYVmAuK2O1edd92zRNUe7ZBJ7so
Yd44cWFUtZ7qmoSvCRcLOahoubli0bG7AT6BRHEJKPckYoUMZqNC/b4rFXqAnNAc
UvldBc0UB8lCS4Rxgaa3H0hZ+D04Pn7AWW0gyYugNpvSiqVFfhOJDEU6WbywuKj5
ZZIWCo6VweJL95Dvdam657xCndwuBpB6AWMIGsbufwhAKzy4n5IhIsLlJb+JTg1t
YfDZ68bXazzc8MxiRf8HqcccdaiQI7VZnhQN0TaenCiTXHQFYQY=
=czd5
-----END PGP SIGNATURE-----

--gamf2kivg3nhyfog--

--===============0163202829==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0163202829==--
