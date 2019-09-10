Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A412AE5B1
	for <lists+spice-devel@lfdr.de>; Tue, 10 Sep 2019 10:38:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D64C6E87C;
	Tue, 10 Sep 2019 08:38:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B52C6E87C
 for <spice-devel@lists.freedesktop.org>; Tue, 10 Sep 2019 08:38:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id EE42318CCF1C
 for <spice-devel@lists.freedesktop.org>; Tue, 10 Sep 2019 08:38:02 +0000 (UTC)
Received: from localhost (unknown [10.32.181.222])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 93A945D6B2;
 Tue, 10 Sep 2019 08:38:02 +0000 (UTC)
Date: Tue, 10 Sep 2019 10:38:01 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190910083801.fhywtgfht2r6mc7v@wingsuit>
References: <20190905134241.28873-1-fziglio@redhat.com>
 <20190905134241.28873-7-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190905134241.28873-7-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.63]); Tue, 10 Sep 2019 08:38:03 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk v6 06/18] fixup! usb-redir: add
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
Content-Type: multipart/mixed; boundary="===============0436215696=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0436215696==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7vh753oi7c4itcba"
Content-Disposition: inline


--7vh753oi7c4itcba
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Sep 05, 2019 at 02:42:29PM +0100, Frediano Ziglio wrote:
> Do not use 0x%u as format, misleasding, %u is decimal.

misleasding - > misleading

but this will be squashed so, don't mind me :)

> Also most of these are formatting lun number which in multiple
> cases are expressed as decimal.

Acked-by: Victor Toso <victortoso@redhat.com>

> ---
>  src/cd-scsi.c | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
>=20
> diff --git a/src/cd-scsi.c b/src/cd-scsi.c
> index 25842b3b..ea682ef3 100644
> --- a/src/cd-scsi.c
> +++ b/src/cd-scsi.c
> @@ -2079,7 +2079,7 @@ static void cd_scsi_cmd_send_event(CdScsiLU *dev, C=
dScsiRequest *req)
>      pers_prevent =3D event[1] & 0x80;
>      ext_req_code =3D (event[2] << 8) | event[3];
> =20
> -    SPICE_DEBUG("send_event, lun:0x%u immed:%u param_len:%u"
> +    SPICE_DEBUG("send_event, lun:%u immed:%u param_len:%u"
>                  " ext_req_event:0x%x ext_req_status:0x%x"
>                  " pers_prevent:0x%x ext_req_code:0x%x",
>                  req->lun, immed, event_param_len, ext_req_event,
> @@ -2177,7 +2177,7 @@ static void cd_scsi_cmd_start_stop_unit(CdScsiLU *d=
ev, CdScsiRequest *req)
>      load_eject =3D (req->cdb[4] & CD_START_STOP_FLAG_LOEJ) ? TRUE : FALS=
E;
>      power_cond =3D req->cdb[4] >> 4;
> =20
> -    SPICE_DEBUG("start_stop_unit, lun:0x%u"
> +    SPICE_DEBUG("start_stop_unit, lun:%u"
>                  " immed:%d start:%d load_eject:%d power_cond:0x%x(%s)",
>                  req->lun, immed, start, load_eject, power_cond,
>                  cd_scsi_start_stop_power_cond_name(power_cond));
> @@ -2187,23 +2187,23 @@ static void cd_scsi_cmd_start_stop_unit(CdScsiLU =
*dev, CdScsiRequest *req)
>          if (!start) { /* stop the unit */
>              if (load_eject) { /* eject medium */
>                  if (dev->prevent_media_removal) {
> -                    SPICE_DEBUG("start_stop_unit, lun:0x%u"
> +                    SPICE_DEBUG("start_stop_unit, lun:%u"
>                                  " prevent_media_removal set, eject faile=
d", req->lun);
>                      cd_scsi_cmd_complete_check_cond(dev, req, &sense_cod=
e_MEDIUM_REMOVAL_PREVENTED);
>                      return;
>                  }
> -                SPICE_DEBUG("start_stop_unit, lun:0x%u eject", req->lun);
> +                SPICE_DEBUG("start_stop_unit, lun:%u eject", req->lun);
>                  cd_scsi_lu_unload(dev);
>                  cd_scsi_dev_changed(dev->tgt->user_data, req->lun);
>              }
>              dev->power_cond =3D CD_SCSI_POWER_STOPPED;
> -            SPICE_DEBUG("start_stop_unit, lun:0x%u stopped", req->lun);
> +            SPICE_DEBUG("start_stop_unit, lun:%u stopped", req->lun);
>          } else { /* start the unit */
>              dev->power_cond =3D CD_SCSI_POWER_ACTIVE;
> -            SPICE_DEBUG("start_stop_unit, lun:0x%u started", req->lun);
> +            SPICE_DEBUG("start_stop_unit, lun:%u started", req->lun);
> =20
>              if (load_eject) { /* load medium */
> -                SPICE_DEBUG("start_stop_unit, lun:0x%u load with no medi=
a",
> +                SPICE_DEBUG("start_stop_unit, lun:%u load with no media",
>                              req->lun);
>                  cd_scsi_lu_load(dev, NULL);
>                  cd_scsi_dev_changed(dev->tgt->user_data, req->lun);
> @@ -2213,17 +2213,17 @@ static void cd_scsi_cmd_start_stop_unit(CdScsiLU =
*dev, CdScsiRequest *req)
>      case CD_START_STOP_POWER_COND_ACTIVE:
>          /* not error to specify transition to the current power conditio=
n */
>          dev->power_cond =3D CD_SCSI_POWER_ACTIVE;
> -        SPICE_DEBUG("start_stop_unit, lun:0x%u active", req->lun);
> +        SPICE_DEBUG("start_stop_unit, lun:%u active", req->lun);
>          break;
>      case CD_START_STOP_POWER_COND_IDLE:
>      case CD_START_STOP_POWER_COND_FORCE_IDLE_0:
>          dev->power_cond =3D CD_SCSI_POWER_IDLE;
> -        SPICE_DEBUG("start_stop_unit, lun:0x%u idle", req->lun);
> +        SPICE_DEBUG("start_stop_unit, lun:%u idle", req->lun);
>          break;
>      case CD_START_STOP_POWER_COND_STANDBY:
>      case CD_START_STOP_POWER_COND_FORCE_STANDBY_0:
>          dev->power_cond =3D CD_SCSI_POWER_STANDBY;
> -        SPICE_DEBUG("start_stop_unit, lun:0x%u standby", req->lun);
> +        SPICE_DEBUG("start_stop_unit, lun:%u standby", req->lun);
>          break;
>      case CD_START_STOP_POWER_COND_LU_CONTROL:
>          break;
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--7vh753oi7c4itcba
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl13YOkACgkQl9kSPeN6
SE+zBw/8DbCj1oHMQpnlHu9S9zuFHJifAXsdCNOQA6+G46Dnd4zzfT6PxDsf8r7c
7Hk1mMCMXJm4OaenNu5FhsFz3CoW4fxDislpB0UwH6y6TZsJG4rwKbOeFQyaFjlG
4ZzweoHSKm/FQpJS3M4SMlBWshoU0CBk62Je3oQOZv8OyenYXbNo7sELtH5IkJJh
w7C+552Ry0ojG1TYL2pgTi9ckZk/dTfBOcjtokKOPX8+xpCmH0bvJZ1Hk0okJnyl
RU5+bN5LnG1Ynj/5tCKkCHwp8MiduurMOh7D7Ty4oLG/ymnauIIlWboCvBKO73CB
OnuO/cKLxyd56c/io3rzj2aGuralFindmxCeS5rdlEmVzawCVb218tnjeMOlNMnY
rSsycxFhSFNAm9awSiziSMqdX2WiYWNDTq9VJ4Aem3YsnV3rD3EKDiZNs7fOOB3a
Md9CpWSob93tP7iFXnndCjRF+tezg1nMoqmPDebcJD7D+0HlytmJH+ZEdMOlSukT
FnaZR26onKSDTup9/HtNE0eYOY0ltgjd98BWViS1CwiLlIVta2pXDTQ1fQg7NVFc
nPDC9+icGCAxG7bIDd6hs0MbryLomwNU3f9b7fVen8u+T4Ntz8n/mDXcQLiwvDah
KZMuepMp6Z+oQzf9Aj3GK9gcSEjS75upBohjDk8G6m/8Ech559E=
=7ylU
-----END PGP SIGNATURE-----

--7vh753oi7c4itcba--

--===============0436215696==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0436215696==--
