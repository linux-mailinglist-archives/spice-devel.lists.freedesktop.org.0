Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30815B74DA
	for <lists+spice-devel@lfdr.de>; Thu, 19 Sep 2019 10:16:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A48EF6F45E;
	Thu, 19 Sep 2019 08:16:34 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E5A86F45E
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 08:16:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 079C246671
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 08:16:33 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A659A19C5B;
 Thu, 19 Sep 2019 08:16:32 +0000 (UTC)
Date: Thu, 19 Sep 2019 10:16:31 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190919081631.45t45pscg4csw2wz@wingsuit>
References: <20190916102104.20943-1-victortoso@redhat.com>
 <20190916102104.20943-5-victortoso@redhat.com>
 <212500435.450993.1568801010307.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <212500435.450993.1568801010307.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Thu, 19 Sep 2019 08:16:33 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH v7 04/20] usb-backend: no emulated isoch
 devices
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
Content-Type: multipart/mixed; boundary="===============1962386687=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1962386687==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="glbjgq6oaou5vg7w"
Content-Disposition: inline


--glbjgq6oaou5vg7w
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Sep 18, 2019 at 06:03:30AM -0400, Frediano Ziglio wrote:
> >=20
> > From: Yuri Benditovich <yuri.benditovich@daynix.com>
> >=20
> > SpiceUsbBackendDevice deals with real and emulated devices but there
> > is no plans to implement emulated isochronous devices.
> >=20
> > This patch adds check to edev (emulated device) in the guard, fix the
> > return value to FALSE instead of plain 0 and return early in case the
> > code path is around emulated devices.
> >=20
> > This is a preparatory patch to extend emulated devices support.
> >=20
> > Signed-off-by: Victor Toso <victortoso@redhat.com>
>=20
> Should not also have the signed-off from original author?

Yes

> > t#
>=20
> typo ?

Yes

> > ---
> >  src/usb-backend.c | 8 +++++++-
> >  1 file changed, 7 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/src/usb-backend.c b/src/usb-backend.c
> > index 5b52a40..3258240 100644
> > --- a/src/usb-backend.c
> > +++ b/src/usb-backend.c
> > @@ -357,11 +357,17 @@ gboolean
> > spice_usb_backend_device_isoch(SpiceUsbBackendDevice *dev)
> >      gint i, j, k;
> >      int rc;
> > =20
> > +    g_return_val_if_fail(libdev !=3D NULL || dev->edev !=3D NULL, FALS=
E);
> > +
> > +    if (dev->edev) {
>=20
> "!=3D NULL" ? Sometimes we use sometimes not, not strong about.

For new code it is better to add the explicit check indeed

>=20
> > +        /* currently we do not emulate isoch devices */
> > +        return FALSE;
> > +    }
> > +
> >      if (dev->cached_isochronous_valid) {
> >          return dev->cached_isochronous;
> >      }
> > =20
> > -    g_return_val_if_fail(libdev !=3D NULL, 0);
> > =20
> >      rc =3D libusb_get_active_config_descriptor(libdev, &conf_desc);
> >      if (rc) {
>=20
> Otherwise fine for me.

Thanks,

--glbjgq6oaou5vg7w
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2DOV8ACgkQl9kSPeN6
SE+QwA//caoY4iqd55ZOYhEnBk5ovkGjRyQ0CoYKBBpeh4xNRnD1L3pzG+ZI+zNr
hDdwM0X4TRi0Pjc69M0kr7LPEEZeaAisH0kFgk78SQuLs8de8ha3V0XO9lKrOaue
Y6eZuEVT7sbgce3TYy0BZ9z5YcOa6gcsligBV+2e+Fjub60v+RsM4vhTi4jPyRzk
WFz9dcbzJB7nffnJC2ISmlsuDGbMjLoAi5K9x04D+RWWwEGHlHoM7sIpp43D8Gnr
blO4CrRTSFxV13Lw5AYTx8KSfgZx5WDrb+qw49Yr5HohIHv6XYz2grHqpouAjjZR
Nb0IbxvoHw5gI55+vXolWUNtR8WKqm9XCWw97EVyyDuS4W7CQysodhnXRmvB40A9
OnhUAJXvAoOavLYVjm9oqY4OJGgcK9b6+JWiD5ybJSJLVxZMU+8AQznqEoeg6Owl
ZoagzK4/GdEMhy+ixr5/dp2c14FMolAAsK5Fyk+hYehQOn5Qk+QwX7g8GRzmemY2
ZvCii549dsmQksFMJr2GCSYirYqo74G0nn1lDbkNuNZBTnApWsdf3GPiHkM1lR1v
U7BLfp3PMCsQINYikQ9ojG3e1CguRZv0hPu61H/j7qaNT+g6jUoaT+KSBYj8J/94
bK/7wI6RsOStDL4uFt1FWyfQwkLhRGGmcFGVKsXKRCOpedOegh8=
=Mu5A
-----END PGP SIGNATURE-----

--glbjgq6oaou5vg7w--

--===============1962386687==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1962386687==--
