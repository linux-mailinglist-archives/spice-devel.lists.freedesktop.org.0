Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BBE26586C
	for <lists+spice-devel@lfdr.de>; Thu, 11 Jul 2019 16:05:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D3606E249;
	Thu, 11 Jul 2019 14:05:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACD5B6E249
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 14:05:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 401172F8BEB
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 14:05:01 +0000 (UTC)
Received: from localhost (unknown [10.32.181.70])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E0E3B6092E;
 Thu, 11 Jul 2019 14:05:00 +0000 (UTC)
Date: Thu, 11 Jul 2019 16:05:00 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190711140500.m75qbkyqupcpz6av@wingsuit>
References: <20190711130054.17867-1-fziglio@redhat.com>
 <20190711130054.17867-6-fziglio@redhat.com>
 <20190711132532.gpae53dqbuspkh2g@wingsuit>
 <723767135.27260064.1562853194192.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <723767135.27260064.1562853194192.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Thu, 11 Jul 2019 14:05:01 +0000 (UTC)
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
Content-Type: multipart/mixed; boundary="===============1514885929=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1514885929==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fqvtrznkjkr2nlly"
Content-Disposition: inline


--fqvtrznkjkr2nlly
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Jul 11, 2019 at 09:53:14AM -0400, Frediano Ziglio wrote:
> >=20
> > Hi,
> >=20
> > On Thu, Jul 11, 2019 at 02:00:53PM +0100, Frediano Ziglio wrote:
> > > Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> > > ---
> > >  src/usb-device-manager.c | 12 +++++++++---
> > >  1 file changed, 9 insertions(+), 3 deletions(-)
> > >=20
> > > diff --git a/src/usb-device-manager.c b/src/usb-device-manager.c
> > > index c270e1cf..4960667e 100644
> > > --- a/src/usb-device-manager.c
> > > +++ b/src/usb-device-manager.c
> > > @@ -1664,7 +1664,9 @@ gboolean _usbdk_hider_prepare(SpiceUsbDeviceMan=
ager
> > > *manager)
> > >  {
> > >      SpiceUsbDeviceManagerPrivate *priv =3D manager->priv;
> > > =20
> > > -    g_return_val_if_fail(priv->usbdk_api !=3D NULL, FALSE);
> > > +    if (priv->usbdk_api =3D=3D NULL) {
> > > +        return FALSE;
> > > +    }
> > > =20
> > >      if (priv->usbdk_hider_handle =3D=3D NULL) {
> > >          priv->usbdk_hider_handle =3D
> > >          usbdk_create_hider_handle(priv->usbdk_api);
> > > @@ -1682,7 +1684,9 @@ void _usbdk_hider_clear(SpiceUsbDeviceManager
> > > *manager)
> > >  {
> > >      SpiceUsbDeviceManagerPrivate *priv =3D manager->priv;
> > > =20
> > > -    g_return_if_fail(priv->usbdk_api !=3D NULL);
> > > +    if (priv->usbdk_api =3D=3D NULL) {
> > > +        return;
> > > +    }
> > > =20
> > >      if (priv->usbdk_hider_handle !=3D NULL) {
> > >          usbdk_clear_hide_rules(priv->usbdk_api, priv->usbdk_hider_ha=
ndle);
> > > @@ -1696,7 +1700,9 @@ void _usbdk_hider_update(SpiceUsbDeviceManager
> > > *manager)
> > >  {
> > >      SpiceUsbDeviceManagerPrivate *priv =3D manager->priv;
> > > =20
> > > -    g_return_if_fail(priv->usbdk_api !=3D NULL);
> > > +    if (priv->usbdk_api =3D=3D NULL) {
> > > +        return;
> > > +    }
> >=20
> > Just to be sure that we still get a warning of some sort on
> > Windows without USBDk installed, pretty sure there is message
> > about it in the console and pretty sure as well that those
> > CRITICALs were too much
> >=20
>=20
> There's this code
>=20
>     if (usbdk_is_driver_installed()) {
>         priv->usbdk_api =3D usbdk_api_load();
>     } else {
>         spice_debug("UsbDk driver is not installed");
>     }
>=20
> usbdk_api_load give a proper warning if it fails.
> Maybe the spice_debug should be turned to a warning?
> Or is it not an issue?

I would turn it into a warning if nothing was emitted before.
Reason is that, code is compiled to have usb redirection but
is lacking something elsewhere.

If there is warning already, ack!

--fqvtrznkjkr2nlly
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl0nQgwACgkQl9kSPeN6
SE9+Mg//daGpI/e+lmInCyC7uVhpM91ySMWO4fPOy4GKDRti3o5HQdL9fsf8i+WV
cCnnYbsh0LGHGLXTHdIlMWNtnIPjc1mLwzvgPUx/2FFD2wYxw0PRe+ulAIAzDfcS
hMeeogZRkWxzBTuwIjk9LxOQpIJYXv6uM7shDPkRvp5O1J8UHbhjwfXMPedetPZd
3kQVrpg5MthH4k10TtXU5DoS8OQCH9BHTt1eQTQPXm4/tHsNpJsFypC+zlRqDe1U
QUFWb/pOO+FrsJe1wWdMZqgYvZIc1NFRKRQoOW7o4ekAn+KDK6thmS2ST41//S8g
PyYrnlolxPlBAm4CtgDtk+3uZAb2SrXQzQE1K49kJAwjl+lTC812w2I397vkGB2p
amY7rqG71ybTfsYuGJbBUN8S2sdZpB7Lv2jgpbqSMtdaQJK/hnA+78+vk8MUstXm
vczIBTqnaWUt7/2fKKNcReoqDIcuglPL7FkCsK2Ce1X644zg8BtypCaDyQgN561V
xxRZrxweHbZXYFqWrJWL7yFXteiyE8/51+FHVbnN3EOdyzFmAeN0FIl/zin7NA2e
nw1aD/nf5+c3aRNKqA8TrDUGPB+lmxLGe4kdElkwiRjDXUg1QxNxHKggRdQ2otUE
GhXgi/h/sUxF0i8XwFlMthSHGxz8hzH+agZTpwwYTWyjvp84iVo=
=5/bz
-----END PGP SIGNATURE-----

--fqvtrznkjkr2nlly--

--===============1514885929==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1514885929==--
