Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF89F657DD
	for <lists+spice-devel@lfdr.de>; Thu, 11 Jul 2019 15:25:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49CD76E237;
	Thu, 11 Jul 2019 13:25:35 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43D1A6E237
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 13:25:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E04B8C057F3D
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 13:25:33 +0000 (UTC)
Received: from localhost (unknown [10.32.181.70])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 86C471001B14;
 Thu, 11 Jul 2019 13:25:33 +0000 (UTC)
Date: Thu, 11 Jul 2019 15:25:32 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190711132532.gpae53dqbuspkh2g@wingsuit>
References: <20190711130054.17867-1-fziglio@redhat.com>
 <20190711130054.17867-6-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190711130054.17867-6-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Thu, 11 Jul 2019 13:25:33 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk 6/7] usb-device-manager: Do not
 give warnings for supported configuration
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
Content-Type: multipart/mixed; boundary="===============1325870212=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1325870212==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="iqsdt6lte4yxr7pl"
Content-Disposition: inline


--iqsdt6lte4yxr7pl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Jul 11, 2019 at 02:00:53PM +0100, Frediano Ziglio wrote:
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> ---
>  src/usb-device-manager.c | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
>=20
> diff --git a/src/usb-device-manager.c b/src/usb-device-manager.c
> index c270e1cf..4960667e 100644
> --- a/src/usb-device-manager.c
> +++ b/src/usb-device-manager.c
> @@ -1664,7 +1664,9 @@ gboolean _usbdk_hider_prepare(SpiceUsbDeviceManager=
 *manager)
>  {
>      SpiceUsbDeviceManagerPrivate *priv =3D manager->priv;
> =20
> -    g_return_val_if_fail(priv->usbdk_api !=3D NULL, FALSE);
> +    if (priv->usbdk_api =3D=3D NULL) {
> +        return FALSE;
> +    }
> =20
>      if (priv->usbdk_hider_handle =3D=3D NULL) {
>          priv->usbdk_hider_handle =3D usbdk_create_hider_handle(priv->usb=
dk_api);
> @@ -1682,7 +1684,9 @@ void _usbdk_hider_clear(SpiceUsbDeviceManager *mana=
ger)
>  {
>      SpiceUsbDeviceManagerPrivate *priv =3D manager->priv;
> =20
> -    g_return_if_fail(priv->usbdk_api !=3D NULL);
> +    if (priv->usbdk_api =3D=3D NULL) {
> +        return;
> +    }
> =20
>      if (priv->usbdk_hider_handle !=3D NULL) {
>          usbdk_clear_hide_rules(priv->usbdk_api, priv->usbdk_hider_handle=
);
> @@ -1696,7 +1700,9 @@ void _usbdk_hider_update(SpiceUsbDeviceManager *man=
ager)
>  {
>      SpiceUsbDeviceManagerPrivate *priv =3D manager->priv;
> =20
> -    g_return_if_fail(priv->usbdk_api !=3D NULL);
> +    if (priv->usbdk_api =3D=3D NULL) {
> +        return;
> +    }

Just to be sure that we still get a warning of some sort on
Windows without USBDk installed, pretty sure there is message
about it in the console and pretty sure as well that those
CRITICALs were too much

> =20
>      if (priv->auto_connect_filter =3D=3D NULL) {
>          SPICE_DEBUG("No autoredirect rules, no hider setup needed");
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--iqsdt6lte4yxr7pl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl0nOMwACgkQl9kSPeN6
SE9fGRAAwtqcn0Z6/Vp4SvKgX4YCpZ43B2SSjQCJhxkOcA3C2vX231aBU+fnqYc8
zmhx0PhZkBYTI+O6iOLw4zILg27DLo6ca9AcaeyVLW5Z0RHvMyqwv5136ItsyEOU
hI2M4leuJpU8D9544s3NACvv2qfEQiTQZDrn+g4HY7FF74qWf9F6QFSDEathSdpK
/teW4ioTPv6O/P0AqLCXdNRYC+mysfI8YGm8aF8QIjWQK/rWPF/YpTVp2eBDsMOH
rPKedtdXtSBlgbNv0E+TSVbkhhE91M+L5KKxXxlTiK/CxuV44Esh2V/BELp607qs
xuPQoN4HFEwibq5RpemDPGzI/rzDUeycPOle8r0G89PoBc/FbPvDVTDZLrRT0eQ+
knA5Um4r4K/qXxNqo63g3/RNZ7UqsM29zH0+cFMVPB1U63UvlGsmo7hX1ae+Njpa
6BIWDlSYxJO7nUNEvky1jOSaKFu5x58JSwWotswgl1ddMoEv7YZCu17eCXbDRY4i
+ozwr0/oQruMzkKQucV24SGG/v3PXwNoIME1bTzGJeBACTylZC0aPPZ9hXthO3Bq
wOmN4tXD1aD60vrDROioHo/ncN2kWtCuv/28E/xDkhtRBCfqs/+hIUANnx7WqrZ6
cx8XT/txjuNzI7RNySaPF6B77U8arxiDnJT2J9wxgQ4Pi3j7LlU=
=Lsnz
-----END PGP SIGNATURE-----

--iqsdt6lte4yxr7pl--

--===============1325870212==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1325870212==--
