Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BA3F830DB
	for <lists+spice-devel@lfdr.de>; Tue,  6 Aug 2019 13:41:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD4BB6E364;
	Tue,  6 Aug 2019 11:41:27 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E01F6E364
 for <spice-devel@lists.freedesktop.org>; Tue,  6 Aug 2019 11:41:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2830B3084499
 for <spice-devel@lists.freedesktop.org>; Tue,  6 Aug 2019 11:41:26 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C6AC2600CC;
 Tue,  6 Aug 2019 11:41:25 +0000 (UTC)
Date: Tue, 6 Aug 2019 13:41:25 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190806114125.6n2wjbliolqukbye@wingsuit>
References: <20190722111522.400-1-fziglio@redhat.com>
 <557143216.4733170.1565013066936.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <557143216.4733170.1565013066936.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Tue, 06 Aug 2019 11:41:26 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk v2] usb-device-manager: Do not
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
Content-Type: multipart/mixed; boundary="===============0451812417=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0451812417==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="grviccr3dlhudgel"
Content-Disposition: inline


--grviccr3dlhudgel
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 05, 2019 at 09:51:06AM -0400, Frediano Ziglio wrote:
> ping
Acked-by: Victor Toso <victortoso@redhat.com>
>=20
> >=20
> > Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> > ---
> >  src/usb-device-manager.c | 14 ++++++++++----
> >  1 file changed, 10 insertions(+), 4 deletions(-)
> >=20
> > Changes since v1:
> > - conver a debug into warning to inform the user at least one time
> >=20
> > diff --git a/src/usb-device-manager.c b/src/usb-device-manager.c
> > index 9aba275f..a38e3c0d 100644
> > --- a/src/usb-device-manager.c
> > +++ b/src/usb-device-manager.c
> > @@ -243,7 +243,7 @@ static void
> > spice_usb_device_manager_init(SpiceUsbDeviceManager *self)
> >      if (usbdk_is_driver_installed()) {
> >          priv->usbdk_api =3D usbdk_api_load();
> >      } else {
> > -        spice_debug("UsbDk driver is not installed");
> > +        g_warning("UsbDk driver is not installed");
> >      }
> >  #endif
> >  #ifdef USE_USBREDIR
> > @@ -1668,7 +1668,9 @@ gboolean _usbdk_hider_prepare(SpiceUsbDeviceManag=
er
> > *manager)
> >  {
> >      SpiceUsbDeviceManagerPrivate *priv =3D manager->priv;
> > =20
> > -    g_return_val_if_fail(priv->usbdk_api !=3D NULL, FALSE);
> > +    if (priv->usbdk_api =3D=3D NULL) {
> > +        return FALSE;
> > +    }
> > =20
> >      if (priv->usbdk_hider_handle =3D=3D NULL) {
> >          priv->usbdk_hider_handle =3D
> >          usbdk_create_hider_handle(priv->usbdk_api);
> > @@ -1686,7 +1688,9 @@ void _usbdk_hider_clear(SpiceUsbDeviceManager *ma=
nager)
> >  {
> >      SpiceUsbDeviceManagerPrivate *priv =3D manager->priv;
> > =20
> > -    g_return_if_fail(priv->usbdk_api !=3D NULL);
> > +    if (priv->usbdk_api =3D=3D NULL) {
> > +        return;
> > +    }
> > =20
> >      if (priv->usbdk_hider_handle !=3D NULL) {
> >          usbdk_clear_hide_rules(priv->usbdk_api, priv->usbdk_hider_hand=
le);
> > @@ -1700,7 +1704,9 @@ void _usbdk_hider_update(SpiceUsbDeviceManager
> > *manager)
> >  {
> >      SpiceUsbDeviceManagerPrivate *priv =3D manager->priv;
> > =20
> > -    g_return_if_fail(priv->usbdk_api !=3D NULL);
> > +    if (priv->usbdk_api =3D=3D NULL) {
> > +        return;
> > +    }
> > =20
> >      if (priv->auto_connect_filter =3D=3D NULL) {
> >          SPICE_DEBUG("No autoredirect rules, no hider setup needed");
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--grviccr3dlhudgel
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1JZ2QACgkQl9kSPeN6
SE/JzhAAk5YdEIc65/SiCjl9XqXls+fLcvwgBSDK6wM/1l6f6RW5cokO8bn4b7Vw
DsWI7q/SF9V+iiLGsD8Lsy2jx4zIbi2Ka4yZeE/qQ2jsXu1BIxIPe1Li/l6ihphw
UdGWnWnzkNv6Lc1OTrz69xbKfS4Ed2XlLSNDuYxkdDOQe3be26QYqB8rhKOI4WXp
UvIBLQAij+uzG4Dzw7y+hpWaGY1url2C1lCfRXhV7D55/lycwYT5l7TvB/MgBnnf
PrGg+dLHNBD5InfZW+LOJxKc/FiTVJAVd73aZ1JjZ2xGDW2DenZQ2a4u0ifA6qp7
bSOm4kV8w6fxEi0uL+8uPNpK5LgKazrkM4YqR1TvmxGVnHsEJiYW0I9lGiBBmHhy
vnsni38O4xmvP0z4ZSJx6LfZJGNNa3T4T3QvnNz43dlr59RIJKvjMOHbC2VxkllP
hXUN0Sm6wi2Pur97MjYT5Uq9RGP7Xq9qSRheUYb06Ly3MAXEeM5KCP0QwkjQiPP4
EQTM4Zfd/ADhlNGA4B2sNK4G7rclAjD4smsaoZPT08ZcJ4XgBhZxg3dOHCaQk0ld
qStVyOHfSiw4D0/3qic3q62otEnHMAC8EEguZI9LITBKPo/S6StXQeGflLdfuVEh
MylOEsKdyghl2TWc+J5HPHO7mK6fDx/6h9m2MOLNxabXNbrQTTg=
=n1kC
-----END PGP SIGNATURE-----

--grviccr3dlhudgel--

--===============0451812417==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0451812417==--
