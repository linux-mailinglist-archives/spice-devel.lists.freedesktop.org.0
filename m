Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC4B9E5A2
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 12:26:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F19EB89831;
	Tue, 27 Aug 2019 10:26:32 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5524E89831
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 10:26:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A4CCF10052B9
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 10:26:30 +0000 (UTC)
Received: from localhost (unknown [10.32.181.212])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4EC905D6B0;
 Tue, 27 Aug 2019 10:26:30 +0000 (UTC)
Date: Tue, 27 Aug 2019 12:26:29 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190827102629.jd3n23onfpo6zz4l@wingsuit>
References: <20190827092246.10276-1-fziglio@redhat.com>
 <20190827092246.10276-11-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190827092246.10276-11-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.65]); Tue, 27 Aug 2019 10:26:30 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk v4 10/29] fixup! usb-redir: add
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
Content-Type: multipart/mixed; boundary="===============2100502868=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============2100502868==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="k4ienhj76vxljw5c"
Content-Disposition: inline


--k4ienhj76vxljw5c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 27, 2019 at 10:22:27AM +0100, Frediano Ziglio wrote:
> Update guard style
> ---
>  src/cd-scsi-dev-params.h | 5 +----
>  src/cd-scsi.h            | 5 +----
>  src/cd-usb-bulk-msd.h    | 5 +----
>  src/scsi-constants.h     | 5 +----
>  4 files changed, 4 insertions(+), 16 deletions(-)
Acked-by: Victor Toso <victortoso@redhat.com>
>=20
> diff --git a/src/cd-scsi-dev-params.h b/src/cd-scsi-dev-params.h
> index b480bcdc..344f720c 100644
> --- a/src/cd-scsi-dev-params.h
> +++ b/src/cd-scsi-dev-params.h
> @@ -21,8 +21,7 @@
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> =20
> -#ifndef SPICE_GTK_CD_SCSI_DEV_PARAMS_H_
> -#define SPICE_GTK_CD_SCSI_DEV_PARAMS_H_
> +#pragma once
> =20
>  #include <gio/gio.h>
> =20
> @@ -45,5 +44,3 @@ typedef struct CdScsiMediaParameters {
>      uint64_t size;
>      uint32_t block_size;
>  } CdScsiMediaParameters;
> -
> -#endif /* SPICE_GTK_CD_SCSI_DEV_PARAMS_H_ */
> diff --git a/src/cd-scsi.h b/src/cd-scsi.h
> index c058a66e..86e951b8 100644
> --- a/src/cd-scsi.h
> +++ b/src/cd-scsi.h
> @@ -21,8 +21,7 @@
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> =20
> -#ifndef SPICE_GTK_CD_SCSI_H__
> -#define SPICE_GTK_CD_SCSI_H__
> +#pragma once
> =20
>  #include "cd-scsi-dev-params.h"
>  #include "cd-usb-bulk-msd.h"
> @@ -116,5 +115,3 @@ void cd_scsi_dev_request_complete(void *target_user_d=
ata, CdScsiRequest *request
>  void cd_scsi_dev_changed(void *target_user_data, uint32_t lun);
>  void cd_scsi_dev_reset_complete(void *target_user_data, uint32_t lun);
>  void cd_scsi_target_reset_complete(void *target_user_data);
> -
> -#endif /* SPICE_GTK_CD_SCSI_H__ */
> diff --git a/src/cd-usb-bulk-msd.h b/src/cd-usb-bulk-msd.h
> index 492a49b8..85661165 100644
> --- a/src/cd-usb-bulk-msd.h
> +++ b/src/cd-usb-bulk-msd.h
> @@ -19,8 +19,7 @@
>      License along with this library; if not, see <http://www.gnu.org/lic=
enses/>.
>  */
> =20
> -#ifndef SPICE_GTK_CD_USB_BULK_MSD_H__
> -#define SPICE_GTK_CD_USB_BULK_MSD_H__
> +#pragma once
> =20
>  G_BEGIN_DECLS
> =20
> @@ -130,5 +129,3 @@ int cd_usb_bulk_msd_read(UsbCdBulkMsdDevice *device, =
uint32_t max_len);
>  int cd_usb_bulk_msd_cancel_read(UsbCdBulkMsdDevice *device);
> =20
>  G_END_DECLS
> -
> -#endif /* SPICE_GTK_CD_USB_BULK_MSD_H__ */
> diff --git a/src/scsi-constants.h b/src/scsi-constants.h
> index cf8a8825..a6d34a65 100644
> --- a/src/scsi-constants.h
> +++ b/src/scsi-constants.h
> @@ -17,8 +17,7 @@
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> =20
> -#ifndef SPICE_GTK_SCSI_CONSTANTS_H__
> -#define SPICE_GTK_SCSI_CONSTANTS_H__
> +#pragma once
> =20
>  /*
>   *      SCSI opcodes
> @@ -320,5 +319,3 @@
>  #define MMC_PROFILE_HDDVD_R_DL          0x0058
>  #define MMC_PROFILE_HDDVD_RW_DL         0x005A
>  #define MMC_PROFILE_INVALID             0xFFFF
> -
> -#endif
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--k4ienhj76vxljw5c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1lBVUACgkQl9kSPeN6
SE8/lw//fN2T0/oHluZIoqTQVApyvHBu/iBGS4zZOooBAazi/cMvpVjbUQ2EmGJp
1nYQRpgQ2u6SEW7DBm/osxJA8zjN/TrXlT1YNueKjNtjCNvAysiAqurOBsfG6xo0
rkx7Vme47nTiE5FKWbOP1FvO+gYsJjlawaND0CS3zsBJbZfaR2dTGqb5B3oY2JIH
Jz5M3Bxc959q7NAC4zMhbmvB5mKcMk6ZQTaDl0NTCDgLuAHoCVzBX80Gjd+rsHmJ
OU1ymjY/pW3vTH2anXSgT3cWd4j2fzoJF4JDvnaQcxxU93ohrMiPHsLxVzE4I15l
bkFC3O5xcb9sC+S6YnewiG7U0jytHb3WiK8Ma+LsBZbCfj+5Fko2MWCpvZSRoNPP
M8rt8HE8BJfrXvR9AZae9LctSVoVsfoh8Kx0BzFWCKEBLmB4Mg0FhvAY5UDMbV/p
Z4QV8cjW7RbqW7I3Uc7NirvsMzflYeSXOZHbNZbXI7Wvdwc5Psnje/ww0Q3uuluR
dIdHoaOBOCvLbpP2Uv6OsqeA+fhwn50h6ipzCRVzOhPmiLvjPXg5WsBDAdWT/E9Q
1+XIjF4t4UEhcm3xyBpIqwR8o1sZGcwLdnTHcNhPK//0Vef7a0F2qpdyesKU07wL
ci1G9hF3c92WLV0VbaGctM3jnegJ4zWLM4tVUnqzpTY1V4B0caU=
=Wbvc
-----END PGP SIGNATURE-----

--k4ienhj76vxljw5c--

--===============2100502868==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============2100502868==--
