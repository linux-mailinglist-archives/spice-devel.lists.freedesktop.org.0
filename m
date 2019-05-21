Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3400824EF0
	for <lists+spice-devel@lfdr.de>; Tue, 21 May 2019 14:29:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BD138934F;
	Tue, 21 May 2019 12:29:01 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10B958934F
 for <spice-devel@lists.freedesktop.org>; Tue, 21 May 2019 12:29:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 646A0307CB38
 for <spice-devel@lists.freedesktop.org>; Tue, 21 May 2019 12:28:59 +0000 (UTC)
Received: from localhost (unknown [10.32.181.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 100BC1001E6F;
 Tue, 21 May 2019 12:28:58 +0000 (UTC)
Date: Tue, 21 May 2019 12:28:58 +0000
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190521122858.4vteb6ficci5fncj@toolbox>
References: <20190521090552.2310-1-victortoso@redhat.com>
 <20190521090552.2310-3-victortoso@redhat.com>
 <1496131889.19361305.1558430559072.JavaMail.zimbra@redhat.com>
 <20190521105322.htg66njbarrjdewf@toolbox>
MIME-Version: 1.0
In-Reply-To: <20190521105322.htg66njbarrjdewf@toolbox>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Tue, 21 May 2019 12:28:59 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk v1 2/4] FIXUP suggestion: drop the
 function instead
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
Content-Type: multipart/mixed; boundary="===============1708319125=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1708319125==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vo4fkz4axweisl3u"
Content-Disposition: inline


--vo4fkz4axweisl3u
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 21, 2019 at 10:53:22AM +0000, Victor Toso wrote:
> Hi,
>=20
> On Tue, May 21, 2019 at 05:22:39AM -0400, Frediano Ziglio wrote:
> > >=20
> > > From: Victor Toso <me@victortoso.com>
> > >=20
> > > In this patch series, spice_usbutil_libusb_strerror() becomes useless
> > > in favor of libusb_error_name(). Instead of making the helper function
> > > to call the native one, drop the usage of the helper function
> > > entirely.
> > >=20
> > > Signed-off-by: Victor Toso <victortoso@redhat.com>
> >=20
> > Are we sure we want libusb_error_name and not libusb_strerror ?
> >
> > I think (not tested) libusb_error_name give more a "C" version
> > of the error, not a string to show to the user.
>=20
> Ah, indeed.
>=20
> https://github.com/libusb/libusb/blob/master/libusb/core.c#L2682
>=20
> We might propose a better api to libusb instead of dropping this
> function here.

https://github.com/libusb/libusb/issues/573

> Weird that those errors are not i18n with _("");=20
>=20
> That might need to be fixed (...)
>=20
> > > ---
> > >  src/channel-usbredir.c   | 2 +-
> > >  src/usb-device-manager.c | 8 ++++----
> > >  src/usbutil.c            | 6 ------
> > >  src/usbutil.h            | 1 -
> > >  src/win-usb-dev.c        | 4 ++--
> > >  5 files changed, 7 insertions(+), 14 deletions(-)
> > >=20
> > > diff --git a/src/channel-usbredir.c b/src/channel-usbredir.c
> > > index 1910ff6..079a976 100644
> > > --- a/src/channel-usbredir.c
> > > +++ b/src/channel-usbredir.c
> > > @@ -292,7 +292,7 @@ static gboolean spice_usbredir_channel_open_devic=
e(
> > >      if (rc !=3D 0) {
> > >          g_set_error(err, SPICE_CLIENT_ERROR, SPICE_CLIENT_ERROR_FAIL=
ED,
> > >                      "Could not open usb device: %s [%i]",
> > > -                    spice_usbutil_libusb_strerror(rc), rc);
> > > +                    libusb_error_name(rc), rc);
> > >          return FALSE;
> > >      }
> > > =20
> > > diff --git a/src/usb-device-manager.c b/src/usb-device-manager.c
> > > index bd42142..c1df977 100644
> > > --- a/src/usb-device-manager.c
> > > +++ b/src/usb-device-manager.c
> > > @@ -281,7 +281,7 @@ static gboolean
> > > spice_usb_device_manager_initable_init(GInitable  *initable,
> > >      /* Initialize libusb */
> > >      rc =3D libusb_init(&priv->context);
> > >      if (rc < 0) {
> > > -        const char *desc =3D spice_usbutil_libusb_strerror(rc);
> > > +        const char *desc =3D libusb_error_name(rc);
> > >          g_warning("Error initializing USB support: %s [%i]", desc, r=
c);
> > >          g_set_error(err, SPICE_CLIENT_ERROR, SPICE_CLIENT_ERROR_FAIL=
ED,
> > >                      "Error initializing USB support: %s [%i]", desc,=
 rc);
> > > @@ -308,7 +308,7 @@ static gboolean
> > > spice_usb_device_manager_initable_init(GInitable  *initable,
> > >          LIBUSB_HOTPLUG_MATCH_ANY, LIBUSB_HOTPLUG_MATCH_ANY,
> > >          spice_usb_device_manager_hotplug_cb, self, &priv->hp_handle);
> > >      if (rc < 0) {
> > > -        const char *desc =3D spice_usbutil_libusb_strerror(rc);
> > > +        const char *desc =3D libusb_error_name(rc);
> > >          g_warning("Error initializing USB hotplug support: %s [%i]",=
 desc,
> > >          rc);
> > >          g_set_error(err, SPICE_CLIENT_ERROR, SPICE_CLIENT_ERROR_FAIL=
ED,
> > >                    "Error initializing USB hotplug support: %s [%i]",=
 desc,
> > >                    rc);
> > > @@ -730,7 +730,7 @@ static gboolean
> > > spice_usb_device_manager_get_device_descriptor(
> > > =20
> > >          bus =3D libusb_get_bus_number(libdev);
> > >          addr =3D libusb_get_device_address(libdev);
> > > -        errstr =3D spice_usbutil_libusb_strerror(errcode);
> > > +        errstr =3D libusb_error_name(errcode);
> > >          g_warning("cannot get device descriptor for (%p) %d.%d -- %s=
(%d)",
> > >                    libdev, bus, addr, errstr, errcode);
> > >          return FALSE;
> > > @@ -1068,7 +1068,7 @@ static gpointer
> > > spice_usb_device_manager_usb_ev_thread(gpointer user_data)
> > >      while (g_atomic_int_get(&priv->event_thread_run)) {
> > >          rc =3D libusb_handle_events(priv->context);
> > >          if (rc && rc !=3D LIBUSB_ERROR_INTERRUPTED) {
> > > -            const char *desc =3D spice_usbutil_libusb_strerror(rc);
> > > +            const char *desc =3D libusb_error_name(rc);
> > >              g_warning("Error handling USB events: %s [%i]", desc, rc=
);
> > >              break;
> > >          }
> > > diff --git a/src/usbutil.c b/src/usbutil.c
> > > index 4aa6ef7..5052ef3 100644
> > > --- a/src/usbutil.c
> > > +++ b/src/usbutil.c
> > > @@ -58,12 +58,6 @@ static GMutex usbids_load_mutex;
> > >  static int usbids_vendor_count =3D 0; /* < 0: failed, 0: empty, > 0:=
 loaded */
> > >  static usb_vendor_info *usbids_vendor_info =3D NULL;
> > > =20
> > > -G_GNUC_INTERNAL
> > > -const char *spice_usbutil_libusb_strerror(enum libusb_error error_co=
de)
> > > -{
> > > -    return libusb_error_name(error_code);
> > > -}
> > > -
> > >  #ifdef __linux__
> > >  /* <Sigh> libusb does not allow getting the manufacturer and product=
 strings
> > >     without opening the device, so grab them directly from sysfs */
> > > diff --git a/src/usbutil.h b/src/usbutil.h
> > > index de5e92a..50e3949 100644
> > > --- a/src/usbutil.h
> > > +++ b/src/usbutil.h
> > > @@ -28,7 +28,6 @@
> > > =20
> > >  G_BEGIN_DECLS
> > > =20
> > > -const char *spice_usbutil_libusb_strerror(enum libusb_error error_co=
de);
> > >  void spice_usb_util_get_device_strings(int bus, int address,
> > >                                         int vendor_id, int product_id,
> > >                                         gchar **manufacturer, gchar
> > >                                         **product);
> > > diff --git a/src/win-usb-dev.c b/src/win-usb-dev.c
> > > index a4dfa78..ce599b9 100644
> > > --- a/src/win-usb-dev.c
> > > +++ b/src/win-usb-dev.c
> > > @@ -113,7 +113,7 @@ g_udev_client_list_devices(GUdevClient *self, GLi=
st
> > > **devs,
> > > =20
> > >      rc =3D libusb_get_device_list(priv->ctx, &lusb_list);
> > >      if (rc < 0) {
> > > -        const char *errstr =3D spice_usbutil_libusb_strerror(rc);
> > > +        const char *errstr =3D libusb_error_name(rc);
> > >          g_warning("%s: libusb_get_device_list failed - %s", name, er=
rstr);
> > >          g_set_error(err, G_UDEV_CLIENT_ERROR, G_UDEV_CLIENT_LIBUSB_F=
AILED,
> > >                      "%s: Error getting device list from libusb: %s
> > >                      [%"G_GSSIZE_FORMAT"]",
> > > @@ -170,7 +170,7 @@ g_udev_client_initable_init(GInitable *initable,
> > > GCancellable *cancellable,
> > > =20
> > >      rc =3D libusb_init(&priv->ctx);
> > >      if (rc < 0) {
> > > -        const char *errstr =3D spice_usbutil_libusb_strerror(rc);
> > > +        const char *errstr =3D libusb_error_name(rc);
> > >          g_warning("Error initializing USB support: %s [%i]", errstr,=
 rc);
> > >          g_set_error(err, G_UDEV_CLIENT_ERROR, G_UDEV_CLIENT_LIBUSB_F=
AILED,
> > >                      "Error initializing USB support: %s [%i]", errst=
r, rc);
> >=20
> > Frediano



--vo4fkz4axweisl3u
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAlzj7woACgkQl9kSPeN6
SE+x6Q/6Amh1LaUXJYJud47FEAgLYFaJlAFx+74waP2omrQGiziu/jPySOiCSeUA
LYBIbe6UWuJCV9Ttkz3/ZmtR39hBjLAbz97LT9QmuRGd+vWatRdnmVFkaRpXm6xL
ZwsD+IwzmzGl/DNXXXBMgU3TuYVwBtfmlziGCAnQdQJkjImZ69MXtIhFkbU+mJ7h
JuGkYS278JU4JoLw7zNm47+ciBG6HOa38WpgDS6M46ksy8MW5oqgfpC3gHUZkq3C
83jv406dnfEo2kmOy9iM1H0/3P4VJ53d3Km59e/h51aLCuwyw9ddHER5DzFTrYy/
kB33+1xuYZd7FinWwjyv9XsLfuq0a+dfkGMitm4QmyaPtmfgfmlxyBE5C0Q5xSMR
BpAq4VkSlIfbrhHLUJu6zSVmJJD7Diec1AvmtvXzv+5EgwE3p2NRIWt1zYAkM4vg
HBgiSZ5o32Z7WZGQKjwKQnFaIUJ2/+93pHTI+7s1/PhlGJdvbnL3SV8Bi+q2LMna
URyL4fwkCwAqbR02ShyZbnEHLN1hHqWe9R1EE14lqAkRYIPBmPz5tXWoay7CZy2E
FcKlttpNafFhWFqPqbqwSDPPnLnAaa+qb1/e7gmYAidLyzpGfyNtulzGfKlkNsq2
Ih08f4OLE+YrAcJnOW+aQVhBkEJapranHM70Mt+Q0pQVFMtQUt8=
=db/j
-----END PGP SIGNATURE-----

--vo4fkz4axweisl3u--

--===============1708319125==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1708319125==--
