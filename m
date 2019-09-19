Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 540D4B74E4
	for <lists+spice-devel@lfdr.de>; Thu, 19 Sep 2019 10:17:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8E346FA3A;
	Thu, 19 Sep 2019 08:17:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 315266FA3A
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 08:17:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id DC8A7A3D3A0
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 08:17:27 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 853BD60C18;
 Thu, 19 Sep 2019 08:17:27 +0000 (UTC)
Date: Thu, 19 Sep 2019 10:17:26 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190919081726.rdgj66md53samom2@wingsuit>
References: <20190916102104.20943-1-victortoso@redhat.com>
 <20190916102104.20943-6-victortoso@redhat.com>
 <1456153170.451197.1568801197252.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <1456153170.451197.1568801197252.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.68]); Thu, 19 Sep 2019 08:17:27 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH v7 05/20] usb-backend: add guard and doc
 to check_filter()
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
Content-Type: multipart/mixed; boundary="===============0949174022=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0949174022==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5ihejcjpz6amabvp"
Content-Disposition: inline


--5ihejcjpz6amabvp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 18, 2019 at 06:06:37AM -0400, Frediano Ziglio wrote:
> >=20
> > From: Victor Toso <me@victortoso.com>
> >=20
> > * Add documentation on spice_usb_backend_device_check_filter()
> > * Add guard on libusb_device
> > * Adds G_GNUCE_INTERNAL as this is only called internally in
>=20
> Typo: G_GNUCE_INTERNAL -> G_GNUC_INTERNAL

Thanks!

>=20
> >   usb-device-manager.c
> > * Changed the style a bit, still under 100 char in a single line
> >=20
> > This is a preparatory patch for extending usb-backend for emulated
> > devices.
> >=20
> > Signed-off-by: Victor Toso <victortoso@redhat.com>
> > ---
> >  src/usb-backend.c | 13 ++++++-------
> >  src/usb-backend.h |  4 +++-
> >  2 files changed, 9 insertions(+), 8 deletions(-)
> >=20
> > diff --git a/src/usb-backend.c b/src/usb-backend.c
> > index 3258240..6ed957c 100644
> > --- a/src/usb-backend.c
> > +++ b/src/usb-backend.c
> > @@ -368,7 +368,6 @@ gboolean
> > spice_usb_backend_device_isoch(SpiceUsbBackendDevice *dev)
> >          return dev->cached_isochronous;
> >      }
> > =20
> > -
> >      rc =3D libusb_get_active_config_descriptor(libdev, &conf_desc);
> >      if (rc) {
> >          const char *desc =3D libusb_strerror(rc);
>=20
> Looks like spurious, maybe should be moved in this series?

Yep, I missed it. I'll remove.

>=20
> > @@ -566,13 +565,13 @@ void
> > spice_usb_backend_device_unref(SpiceUsbBackendDevice *dev)
> >      }
> >  }
> > =20
> > -int spice_usb_backend_device_check_filter(
> > -    SpiceUsbBackendDevice *dev,
> > -    const struct usbredirfilter_rule *rules,
> > -    int count)
> > +G_GNUC_INTERNAL
> > +int spice_usb_backend_device_check_filter(SpiceUsbBackendDevice *dev,
> > +                                          const struct usbredirfilter_=
rule
> > *rules,
> > +                                          int count)
> >  {
> > -    return usbredirhost_check_device_filter(
> > -        rules, count, dev->libusb_device, 0);
> > +    g_return_val_if_fail(dev->libusb_device !=3D NULL, -EINVAL);
> > +    return usbredirhost_check_device_filter(rules, count,
> > dev->libusb_device, 0);
> >  }
> > =20
> >  static int usbredir_read_callback(void *user_data, uint8_t *data, int =
count)
> > diff --git a/src/usb-backend.h b/src/usb-backend.h
> > index 46b742e..46713c1 100644
> > --- a/src/usb-backend.h
> > +++ b/src/usb-backend.h
> > @@ -70,7 +70,9 @@ void spice_usb_backend_device_unref(SpiceUsbBackendDe=
vice
> > *dev);
> >  gconstpointer spice_usb_backend_device_get_libdev(const
> >  SpiceUsbBackendDevice *dev);
> >  const UsbDeviceInformation* spice_usb_backend_device_get_info(const
> >  SpiceUsbBackendDevice *dev);
> >  gboolean spice_usb_backend_device_isoch(SpiceUsbBackendDevice *dev);
> > -/* returns 0 if the device passes the filter */
> > +
> > +/* returns 0 if the device passes the filter otherwise returns the err=
or
> > value from
> > + * usbredirhost_check_device_filter() such as -EIO or -ENOMEM */
> >  int spice_usb_backend_device_check_filter(SpiceUsbBackendDevice *dev,
> >                                            const struct usbredirfilter_=
rule
> >                                            *rules, int count);
> > =20
>=20
> Otherwise,
>    Acked-by: Frediano Ziglio <fziglio@redhat.com>

Thanks,

>=20
> Frediano

--5ihejcjpz6amabvp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2DOZYACgkQl9kSPeN6
SE8mnQ/9GIbOAjoGmF1wRgsk3Q/XVbEYIOdsnkY9TRJ94avmdDChHrnorBFZZKBT
+Bm9du06pOk1eUDpcV6/OAg+jk+9kiXMj+yU95yyEl//O3f3eB5UdFPFo/g896eS
6AFAArId1wgKy0RbRfpZbkElmDGZB2591UuUn9en5LTfnTkZddboMWt8MlIIAOnv
0F4WM/TJzDkWDT8ioOf7fU0qzy6smEcKwf2h4aCjslre1mnMcHayVSRRD14iqNj+
KXBRHomIRRL9FUkjf2KolOJ0S3QPG8Z/oJHs7gUOu7cR9ROjjvFC/1Ro4ET762n6
9y2GkfPATD9I4QExfzu6cfDKqMXMsbiSGmBfYDgUMGtdASxeZHqajeDjpfYrjKlw
iQE6H4aqX0kvzHCL2tzczlrmFXKwiT/5WELzvcim7kQOSynFKfacMsELV7vRnjw8
/y+gXQIGhF3k98xQXIyeeLH8C5kezcrqOxUO1czDTL5qDTrLYpONY1LjOG6kGHSg
kw3llxgc3Kt+RT4nyQaf8DvTlicPrL+SPpA3CIrAKeo4E7Dp+dxDXRm6WSmz0Kwx
9oDeB44cHBZbMcd8XB7uoAPtkiYjYGrkMBST7fT3+bQDVNZMi9wUroogUx7yQhBC
TpEoY2COl8QsY8aG2J4Dfe2IeHSBVZZ2Ny1ITEiUR4zKkeifpP4=
=/BpB
-----END PGP SIGNATURE-----

--5ihejcjpz6amabvp--

--===============0949174022==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0949174022==--
