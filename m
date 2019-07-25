Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A720E74B9A
	for <lists+spice-devel@lfdr.de>; Thu, 25 Jul 2019 12:32:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 388E76E6D3;
	Thu, 25 Jul 2019 10:32:56 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0CAC6E6D3
 for <spice-devel@lists.freedesktop.org>; Thu, 25 Jul 2019 10:32:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2C4B6307D868;
 Thu, 25 Jul 2019 10:32:55 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CE2505D71A;
 Thu, 25 Jul 2019 10:32:54 +0000 (UTC)
Date: Thu, 25 Jul 2019 12:32:54 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190725103254.f4kwv7adnkjdqq5p@wingsuit>
References: <20190724105351.13753-1-yuri.benditovich@daynix.com>
 <20190724105351.13753-4-yuri.benditovich@daynix.com>
 <1657486544.2954906.1564045757376.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <1657486544.2954906.1564045757376.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Thu, 25 Jul 2019 10:32:55 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk 3/9] usb-redir: Prepare for creation
 of emulated CD drive
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
Cc: yan@daynix.com, spice-devel@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============1518690192=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1518690192==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bv5a6iqjuksq2ozt"
Content-Disposition: inline


--bv5a6iqjuksq2ozt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Jul 25, 2019 at 05:09:17AM -0400, Frediano Ziglio wrote:
> >=20
> > Added command-line option for shared CD devices and respective
> > property in usb-device-manager.
> >=20
> > Signed-off-by: Yuri Benditovich <yuri.benditovich@daynix.com>
> > ---
> >  src/spice-option.c       | 15 +++++++++++++++
> >  src/usb-device-manager.c | 33 +++++++++++++++++++++++++++++++++
> >  2 files changed, 48 insertions(+)
> >=20
> > diff --git a/src/spice-option.c b/src/spice-option.c
> > index c2b059e..4fbca9f 100644
> > --- a/src/spice-option.c
> > +++ b/src/spice-option.c
> > @@ -32,6 +32,7 @@ static char *smartcard_db =3D NULL;
> >  static char *smartcard_certificates =3D NULL;
> >  static char *usbredir_auto_redirect_filter =3D NULL;
> >  static char *usbredir_redirect_on_connect =3D NULL;
> > +static gchar **cd_share_files =3D NULL;
> >  static gboolean smartcard =3D FALSE;
> >  static gboolean disable_audio =3D FALSE;
> >  static gboolean disable_usbredir =3D FALSE;
> > @@ -183,6 +184,8 @@ GOptionGroup* spice_get_option_group(void)
> >            N_("Filter selecting USB devices to be auto-redirected when
> >            plugged in"), N_("<filter-string>") },
> >          { "spice-usbredir-redirect-on-connect", '\0', 0,
> >          G_OPTION_ARG_STRING, &usbredir_redirect_on_connect,
> >            N_("Filter selecting USB devices to redirect on connect"),
> >            N_("<filter-string>") },
> > +        { "spice-share-cd", '\0', 0, G_OPTION_ARG_STRING_ARRAY,
> > &cd_share_files,
> > +          N_("Name of ISO file or CD/DVD device to share"), N_("<filen=
ame>
> > (repeat allowed)") },
> >          { "spice-cache-size", '\0', 0, G_OPTION_ARG_INT, &cache_size,
> >            N_("Image cache size (deprecated)"), N_("<bytes>") },
> >          { "spice-glz-window-size", '\0', 0, G_OPTION_ARG_INT,
> >          &glz_window_size,
> > @@ -272,6 +275,18 @@ void spice_set_session_option(SpiceSession *sessio=
n)
> >              g_object_set(m, "redirect-on-connect",
> >                           usbredir_redirect_on_connect, NULL);
> >      }
> > +    if (cd_share_files) {
> > +        SpiceUsbDeviceManager *m =3D spice_usb_device_manager_get(sess=
ion,
> > NULL);
> > +        if (m) {
> > +            gchar **name =3D cd_share_files;
> > +            while (name && *name) {
> > +                g_object_set(m, "share-cd", *name, NULL);
> > +                name++;
> > +            }
> > +        }
> > +        g_strfreev(cd_share_files);
> > +        cd_share_files =3D NULL;
> > +    }
> >      if (disable_usbredir)
> >          g_object_set(session, "enable-usbredir", FALSE, NULL);
> >      if (disable_audio)
> > diff --git a/src/usb-device-manager.c b/src/usb-device-manager.c
> > index 0961d16..b11bb15 100644
> > --- a/src/usb-device-manager.c
> > +++ b/src/usb-device-manager.c
> > @@ -75,6 +75,7 @@ enum {
> >      PROP_AUTO_CONNECT_FILTER,
> >      PROP_REDIRECT_ON_CONNECT,
> >      PROP_FREE_CHANNELS,
> > +    PROP_SHARE_CD
> >  };
> > =20
> >  enum
> > @@ -433,6 +434,26 @@ static void
> > spice_usb_device_manager_set_property(GObject       *gobject,
> >          priv->redirect_on_connect =3D g_strdup(filter);
> >          break;
> >      }
> > +    case PROP_SHARE_CD:
> > +    {
> > +#ifdef USE_USBREDIR
> > +        UsbCreateDeviceParameters param =3D { 0 };
> > +        const gchar *name =3D g_value_get_string(value);
> > +        /* the string is temporary, no need to keep it */
> > +        SPICE_DEBUG("share_cd set to %s", name);
> > +        if (name[0] =3D=3D '!') {
> > +            name++;
> > +            param.device_param.create_cd.delete_on_eject =3D 1;
> > +        }
>=20
> This "!" should be documented if the interface should be public.
>=20
> > +        param.device_param.create_cd.filename =3D name;
> > +        if (!spice_usb_backend_create_device(priv->context, USB_DEV_TY=
PE_CD,
> > &param)) {
> > +            g_warning(param.error->message);
> > +            spice_usb_device_manager_device_error(self, NULL, param.er=
ror);
> > +            g_error_free(param.error);
> > +        }
> > +#endif
> > +        break;
> > +    }
>=20
> This is not a property. This is the property interface used to add a devi=
ce.

Yes, not quite sure why this is done this way. Perhaps there is a
reason in future patches but I'd say it is better to have some
public api to add/remove cd-rom instead of a reusable string
property that itself it doesn't hold any value in the object

>=20
> >      default:
> >          G_OBJECT_WARN_INVALID_PROPERTY_ID(gobject, prop_id, pspec);
> >          break;
> > @@ -523,6 +544,18 @@ static void
> > spice_usb_device_manager_class_init(SpiceUsbDeviceManagerClass *klas
> >      g_object_class_install_property(gobject_class, PROP_REDIRECT_ON_CO=
NNECT,
> >                                      pspec);
> > =20
> > +    /**
> > +    * SpiceUsbDeviceManager:share-cd:
> > +    *
> > +    * Set a string specifying a filename (ISO) or physical CD/DVD devi=
ce
> > +    * to share via USB after a Spice connection has been established.
> > +    *
> > +    */
> > +    pspec =3D g_param_spec_string("share-cd", "Share ISO file or devic=
e as
> > CD",
> > +        "File or device name to share", NULL,
> > +        G_PARAM_READWRITE | G_PARAM_STATIC_STRINGS);
> > +    g_object_class_install_property(gobject_class, PROP_SHARE_CD, pspe=
c);
> > +
> >      /**
> >       * SpiceUsbDeviceManager:free-channels:
> >       *
>=20
> Frediano
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--bv5a6iqjuksq2ozt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl05hVYACgkQl9kSPeN6
SE9MQQ/+Je1bXj7sEe7cU46g6i9WQaIHW7BfLlvUYhr+uPnse9ycl0xR89s5MaFr
hvUjYcMlvE6O8z+kvQW1bPPUuWii7Ith6aW/s7XvfON5FmimV1ZTzOqFSSdoyiD1
XPK31xDMFtWy7ZWy2VWDHJvpi0qDoYBaL4sZszRQAY+/xsjs6iyL634ivYF2NpZ8
Jy7AGEHe2edA4B9Zoq0rrwguSZOHahWzKgLtPYzK+9XeX3WS1+4WEM6vfwUDNDeo
SnawQoxKGJrVCy2CfiE0kNN/RlrqFBdm+ypx/KEC36M9kt/HW5nuUK9WKGLST7C0
hdZQ1vJ2XJwQkFgl+Eg3N95eEeZaKUIUfZeu9flbIis7saUuVOInjOgGMrulerjg
o4G/684g6ichJo7bS7RjvNE6rUUe0mYNluXhtfidUv7ZOwmGkzLjoNNOSdxrhltT
zWexiVHVaSGEYqjraXtmSt7DC9iRWMb+H1pxUhJZxescEP7iwgd367HInAk3J5va
uw9NsWOEQP9qh+92QCzAtgdTU/WEavjUjuR3y0HwulUZgWaC6evbfbmcYh19cx/3
u8tMkbPJy4iFivDG+6NfkZ6XXL/AROnrTDaoXFRJ5GhpmcGWh9eEiKIXS5CoJVur
ng0GNdw6e+PED9yL4E5I7zwaD8gBF8U2ilg0mUhE4cHG7qiNaiY=
=yDUd
-----END PGP SIGNATURE-----

--bv5a6iqjuksq2ozt--

--===============1518690192==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1518690192==--
