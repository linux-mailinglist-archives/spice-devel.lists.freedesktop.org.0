Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6155F9E7C1
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 14:21:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC48B8910B;
	Tue, 27 Aug 2019 12:21:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A3608910B
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 12:21:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 40EC8693C8
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 12:21:02 +0000 (UTC)
Received: from localhost (unknown [10.32.181.212])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DEDC960BF7;
 Tue, 27 Aug 2019 12:21:01 +0000 (UTC)
Date: Tue, 27 Aug 2019 14:21:01 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190827122101.56ymfwtecv5mzpxl@wingsuit>
References: <20190827092246.10276-1-fziglio@redhat.com>
 <20190827092246.10276-13-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190827092246.10276-13-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Tue, 27 Aug 2019 12:21:02 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk v4 12/29] fixup! usb-redir: add
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
Content-Type: multipart/mixed; boundary="===============1531372116=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1531372116==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tatsmh5wpdqetztv"
Content-Disposition: inline


--tatsmh5wpdqetztv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 27, 2019 at 10:22:29AM +0100, Frediano Ziglio wrote:
> Do not use G_GUINT32_FORMAT.
> We support a minimum of 32 bit architectures.
Acked-by: Victor Toso <victortoso@redhat.com>
> ---
>  src/cd-usb-bulk-msd.c | 53 +++++++++++++++++++++----------------------
>  1 file changed, 26 insertions(+), 27 deletions(-)
>=20
> diff --git a/src/cd-usb-bulk-msd.c b/src/cd-usb-bulk-msd.c
> index 49e01eb6..5d95dac7 100644
> --- a/src/cd-usb-bulk-msd.c
> +++ b/src/cd-usb-bulk-msd.c
> @@ -138,7 +138,7 @@ UsbCdBulkMsdDevice *cd_usb_bulk_msd_alloc(void *usb_u=
ser_data, uint32_t max_luns
>      cd_usb_bulk_msd_set_state(cd, USB_CD_STATE_INIT);
>      cd->usb_user_data =3D usb_user_data;
> =20
> -    SPICE_DEBUG("Alloc, max_luns:%" G_GUINT32_FORMAT, max_luns);
> +    SPICE_DEBUG("Alloc, max_luns:%u", max_luns);
>      return cd;
>  }
> =20
> @@ -155,7 +155,7 @@ int cd_usb_bulk_msd_realize(UsbCdBulkMsdDevice *cd, u=
int32_t lun,
> =20
>      rc =3D cd_scsi_dev_realize(cd->scsi_target, lun, &scsi_dev_params);
>      if (rc !=3D 0) {
> -        SPICE_ERROR("Failed to realize lun:%" G_GUINT32_FORMAT, lun);
> +        SPICE_ERROR("Failed to realize lun:%u", lun);
>          return rc;
>      }
> =20
> @@ -165,7 +165,7 @@ int cd_usb_bulk_msd_realize(UsbCdBulkMsdDevice *cd, u=
int32_t lun,
>          cd_scsi_dev_request_release(cd->scsi_target, &cd->usb_req.scsi_r=
eq);
>      }
> =20
> -    SPICE_DEBUG("Realize OK lun:%" G_GUINT32_FORMAT, lun);
> +    SPICE_DEBUG("Realize OK lun:%u", lun);
>      return 0;
>  }
> =20
> @@ -175,11 +175,11 @@ int cd_usb_bulk_msd_lock(UsbCdBulkMsdDevice *cd, ui=
nt32_t lun, gboolean lock)
> =20
>      rc =3D cd_scsi_dev_lock(cd->scsi_target, lun, lock);
>      if (rc !=3D 0) {
> -        SPICE_ERROR("Failed to lock lun:%" G_GUINT32_FORMAT, lun);
> +        SPICE_ERROR("Failed to lock lun:%u", lun);
>          return rc;
>      }
> =20
> -    SPICE_DEBUG("Lock OK lun:%" G_GUINT32_FORMAT, lun);
> +    SPICE_DEBUG("Lock OK lun:%u", lun);
>      return 0;
>  }
> =20
> @@ -190,11 +190,11 @@ int cd_usb_bulk_msd_load(UsbCdBulkMsdDevice *cd, ui=
nt32_t lun,
> =20
>      rc =3D cd_scsi_dev_load(cd->scsi_target, lun, media_params);
>      if (rc !=3D 0) {
> -        SPICE_ERROR("Failed to load lun:%" G_GUINT32_FORMAT, lun);
> +        SPICE_ERROR("Failed to load lun:%u", lun);
>          return rc;
>      }
> =20
> -    SPICE_DEBUG("Load OK lun:%" G_GUINT32_FORMAT, lun);
> +    SPICE_DEBUG("Load OK lun:%u", lun);
>      return 0;
>  }
> =20
> @@ -204,7 +204,7 @@ int cd_usb_bulk_msd_get_info(UsbCdBulkMsdDevice *cd, =
uint32_t lun, CdScsiDeviceI
> =20
>      rc =3D cd_scsi_dev_get_info(cd->scsi_target, lun, lun_info);
>      if (rc !=3D 0) {
> -        SPICE_ERROR("Failed to get info lun:%" G_GUINT32_FORMAT, lun);
> +        SPICE_ERROR("Failed to get info lun:%u", lun);
>          return rc;
>      }
> =20
> @@ -217,11 +217,11 @@ int cd_usb_bulk_msd_unload(UsbCdBulkMsdDevice *cd, =
uint32_t lun)
> =20
>      rc =3D cd_scsi_dev_unload(cd->scsi_target, lun);
>      if (rc !=3D 0) {
> -        SPICE_ERROR("Failed to unload lun:%" G_GUINT32_FORMAT, lun);
> +        SPICE_ERROR("Failed to unload lun:%u", lun);
>          return rc;
>      }
> =20
> -    SPICE_DEBUG("Unload OK lun:%" G_GUINT32_FORMAT, lun);
> +    SPICE_DEBUG("Unload OK lun:%u", lun);
>      return 0;
>  }
> =20
> @@ -231,11 +231,11 @@ int cd_usb_bulk_msd_unrealize(UsbCdBulkMsdDevice *c=
d, uint32_t lun)
> =20
>      rc =3D cd_scsi_dev_unrealize(cd->scsi_target, lun);
>      if (rc !=3D 0) {
> -        SPICE_ERROR("Unrealize lun:%" G_GUINT32_FORMAT, lun);
> +        SPICE_ERROR("Unrealize lun:%u", lun);
>          return rc;
>      }
> =20
> -    SPICE_DEBUG("Unrealize lun:%" G_GUINT32_FORMAT, lun);
> +    SPICE_DEBUG("Unrealize lun:%u", lun);
>      return 0;
>  }
> =20
> @@ -264,7 +264,7 @@ static int parse_usb_msd_cmd(UsbCdBulkMsdDevice *cd, =
uint8_t *buf, uint32_t cbw_
>      CdScsiRequest *scsi_req =3D &usb_req->scsi_req;
> =20
>      if (cbw_len !=3D sizeof(*cbw)) {
> -        SPICE_ERROR("CMD: Bad CBW size:%" G_GUINT32_FORMAT, cbw_len);
> +        SPICE_ERROR("CMD: Bad CBW size:%u", cbw_len);
>          return -1;
>      }
>      if (le32toh(cbw->sig) !=3D 0x43425355) { /* MSD command signature */
> @@ -304,10 +304,10 @@ static int parse_usb_msd_cmd(UsbCdBulkMsdDevice *cd=
, uint8_t *buf, uint32_t cbw_
> =20
>      scsi_req->lun =3D usb_req->lun;
> =20
> -    SPICE_DEBUG("CMD lun:%" G_GUINT32_FORMAT " tag:%#x flags:%08x "
> -        "cdb_len:%" G_GUINT32_FORMAT " req_len:%" G_GUINT32_FORMAT,
> -        usb_req->lun, le32toh(cbw->tag), cbw->flags,
> -        scsi_req->cdb_len, usb_req->usb_req_len);
> +    SPICE_DEBUG("CMD lun:%u tag:%#x flags:%08x "
> +                "cdb_len:%u req_len:%u",
> +                usb_req->lun, le32toh(cbw->tag), cbw->flags,
> +                scsi_req->cdb_len, usb_req->usb_req_len);
> =20
>      /* prepare status - CSW */
>      usb_req->csw.sig =3D htole32(0x53425355);
> @@ -364,8 +364,8 @@ static void usb_cd_send_data_in(UsbCdBulkMsdDevice *c=
d, uint32_t max_len)
>      uint32_t avail_len =3D usb_req->scsi_in_len - usb_req->xfer_len;
>      uint32_t send_len =3D MIN(avail_len, max_len);
> =20
> -    SPICE_DEBUG("Data-in cmd tag 0x%x, remains %" G_GUINT32_FORMAT
> -                ", requested %" G_GUINT32_FORMAT ", send %" G_GUINT32_FO=
RMAT,
> +    SPICE_DEBUG("Data-in cmd tag 0x%x, remains %u"
> +                ", requested %u, send %u",
>                  usb_req->csw.tag, avail_len, max_len, send_len);
> =20
>      g_assert(max_len <=3D usb_req->usb_req_len);
> @@ -396,7 +396,7 @@ int cd_usb_bulk_msd_read(UsbCdBulkMsdDevice *cd, uint=
32_t max_len)
>      UsbCdBulkMsdRequest *usb_req =3D &cd->usb_req;
>      CdScsiRequest *scsi_req =3D &usb_req->scsi_req;
> =20
> -    SPICE_DEBUG("msd_read, state: %s, len %" G_GUINT32_FORMAT,
> +    SPICE_DEBUG("msd_read, state: %s, len %u",
>                  usb_cd_state_str(cd->state), max_len);
> =20
>      switch (cd->state) {
> @@ -408,8 +408,8 @@ int cd_usb_bulk_msd_read(UsbCdBulkMsdDevice *cd, uint=
32_t max_len)
>              usb_cd_send_status(cd);
>          } else {
>              usb_req->bulk_in_len +=3D max_len;
> -            SPICE_DEBUG("msd_read CSW, req incomplete, added len %" G_GU=
INT32_FORMAT
> -                        " saved len %" G_GUINT32_FORMAT,
> +            SPICE_DEBUG("msd_read CSW, req incomplete, added len %u"
> +                        " saved len %u",
>                          max_len, usb_req->bulk_in_len);
>          }
>          break;
> @@ -419,8 +419,7 @@ int cd_usb_bulk_msd_read(UsbCdBulkMsdDevice *cd, uint=
32_t max_len)
>              usb_cd_send_data_in(cd, max_len);
>          } else {
>              usb_req->bulk_in_len +=3D max_len;
> -            SPICE_DEBUG("msd_read DATAIN, req incomplete, added len %" G=
_GUINT32_FORMAT
> -                        " saved len %" G_GUINT32_FORMAT,
> +            SPICE_DEBUG("msd_read DATAIN, req incomplete, added len %u s=
aved len %u",
>                          max_len, usb_req->bulk_in_len);
>          }
>          break;
> @@ -433,7 +432,7 @@ int cd_usb_bulk_msd_read(UsbCdBulkMsdDevice *cd, uint=
32_t max_len)
>          break;
> =20
>      default:
> -        SPICE_ERROR("Unexpected read state: %s, len %" G_GUINT32_FORMAT,
> +        SPICE_ERROR("Unexpected read state: %s, len %u",
>                      usb_cd_state_str(cd->state), max_len);
>          goto fail;
>      }
> @@ -507,7 +506,7 @@ int cd_usb_bulk_msd_write(UsbCdBulkMsdDevice *cd, uin=
t8_t *buf_out, uint32_t buf
>          cd_usb_bulk_msd_set_state(cd, USB_CD_STATE_CSW); /* Status next =
*/
>          break;
>      default:
> -        SPICE_DEBUG("Unexpected write state: %s, len %" G_GUINT32_FORMAT,
> +        SPICE_DEBUG("Unexpected write state: %s, len %u",
>                      usb_cd_state_str(cd->state), buf_out_len);
>          goto fail;
>      }
> @@ -536,7 +535,7 @@ void cd_scsi_target_reset_complete(void *target_user_=
data)
>  void cd_scsi_dev_changed(void *target_user_data, uint32_t lun)
>  {
>      UsbCdBulkMsdDevice *cd =3D (UsbCdBulkMsdDevice *)target_user_data;
> -    SPICE_DEBUG("Device changed, state: %s lun: %" G_GUINT32_FORMAT,
> +    SPICE_DEBUG("Device changed, state: %s lun: %u",
>                  usb_cd_state_str(cd->state), lun);
>      cd_usb_bulk_msd_lun_changed(cd->usb_user_data, lun);
>  }
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--tatsmh5wpdqetztv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1lIC0ACgkQl9kSPeN6
SE/75RAAmrC+VE8SxT9Ny85WhQS3h9YjXSLyYJtO02x501hI61Pl8D622vnXzO/I
44xelgzjH+AOsa2gsOMceLXb+VSpCerDTe3JLt2p+3SyXagJuLacmkYXKI2jETlH
1DwbhDPaePRZMpft7DkFyS0I/5h3YqBHUkKN7Hrdx5D2YYN9uVcmaeJhRST6UPIf
wQWXL2fHMOCQVX7rsBDQQ/dHRw4t1ngmjqDFNRky7KHChsNYTZBGuPRGuy5qYvS8
daEHhdrN88Wrb6zdTuhXTLW37eaHhiIpYva20FuEqJr7IO0fbFAAdlebMM4eN9ok
fYg/uNlvQPOlBbmuNpVFWBNqoa582PK4GwiQpyhlJZgoPPLYy6yrmv8wG0ssMlz4
JViT9VXGRdBYVO77SU7jPFbYeL8a7W1qEQa2PMO9sHXn6XqUqHuOOIbE0rRPAosA
8aWP7cGKPLhvnozFt99p+S/H7G3gqg6O8SKuUXElmoBGmSMzKOgPEG9+f3pU9bLX
smOLnc8nfJrz21k5VIO4fRwTW2pZGWzQD9X3dcr25QHVvPIY8eyPYU6byS/105R9
sbwVnBKnhd2AAP9bRv4glcrIZh+6kntAdGfqQEBxHeoUHArUO8dIugh2U541h4y7
bb44YA5V8tXjm/iZUcfm0WBtmJDMp4GhBxNiExUcQFwsHF5lP+s=
=n9gM
-----END PGP SIGNATURE-----

--tatsmh5wpdqetztv--

--===============1531372116==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1531372116==--
