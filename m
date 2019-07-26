Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0339275E8E
	for <lists+spice-devel@lfdr.de>; Fri, 26 Jul 2019 07:42:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E90F66E883;
	Fri, 26 Jul 2019 05:42:34 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30AD96E883
 for <spice-devel@lists.freedesktop.org>; Fri, 26 Jul 2019 05:42:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 93844C18B2D2;
 Fri, 26 Jul 2019 05:42:32 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3BE2867143;
 Fri, 26 Jul 2019 05:42:32 +0000 (UTC)
Date: Fri, 26 Jul 2019 07:42:31 +0200
From: Victor Toso <victortoso@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <20190726054231.4szjec3karcuw6e3@wingsuit>
References: <20190724105351.13753-1-yuri.benditovich@daynix.com>
 <20190724105351.13753-4-yuri.benditovich@daynix.com>
 <20190725103313.e2fsqkbyfzeeklfr@wingsuit>
 <CAOEp5Od1NTSkHnYmVfibu01VzQ9uK9=tnODJocY3RnASPXkNtA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAOEp5Od1NTSkHnYmVfibu01VzQ9uK9=tnODJocY3RnASPXkNtA@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Fri, 26 Jul 2019 05:42:32 +0000 (UTC)
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
Cc: Yan Vugenfirer <yan@daynix.com>,
 Spice List <spice-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============1133329563=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1133329563==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jwqffrqulnfiinrh"
Content-Disposition: inline


--jwqffrqulnfiinrh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 25, 2019 at 06:59:39PM +0300, Yuri Benditovich wrote:
> On Thu, Jul 25, 2019 at 1:33 PM Victor Toso <victortoso@redhat.com> wrote:
> >
> > On Wed, Jul 24, 2019 at 01:53:45PM +0300, Yuri Benditovich wrote:
> > > Added command-line option for shared CD devices and respective
> > > property in usb-device-manager.
> > >
> > > Signed-off-by: Yuri Benditovich <yuri.benditovich@daynix.com>
> > > ---
> > >  src/spice-option.c       | 15 +++++++++++++++
> > >  src/usb-device-manager.c | 33 +++++++++++++++++++++++++++++++++
> > >  2 files changed, 48 insertions(+)
> > >
> > > diff --git a/src/spice-option.c b/src/spice-option.c
> > > index c2b059e..4fbca9f 100644
> > > --- a/src/spice-option.c
> > > +++ b/src/spice-option.c
> > > @@ -32,6 +32,7 @@ static char *smartcard_db =3D NULL;
> > >  static char *smartcard_certificates =3D NULL;
> > >  static char *usbredir_auto_redirect_filter =3D NULL;
> > >  static char *usbredir_redirect_on_connect =3D NULL;
> > > +static gchar **cd_share_files =3D NULL;
> > >  static gboolean smartcard =3D FALSE;
> > >  static gboolean disable_audio =3D FALSE;
> > >  static gboolean disable_usbredir =3D FALSE;
> > > @@ -183,6 +184,8 @@ GOptionGroup* spice_get_option_group(void)
> > >            N_("Filter selecting USB devices to be auto-redirected whe=
n plugged in"), N_("<filter-string>") },
> > >          { "spice-usbredir-redirect-on-connect", '\0', 0, G_OPTION_AR=
G_STRING, &usbredir_redirect_on_connect,
> > >            N_("Filter selecting USB devices to redirect on connect"),=
 N_("<filter-string>") },
> > > +        { "spice-share-cd", '\0', 0, G_OPTION_ARG_STRING_ARRAY, &cd_=
share_files,
> > > +          N_("Name of ISO file or CD/DVD device to share"), N_("<fil=
ename> (repeat allowed)") },
> > >          { "spice-cache-size", '\0', 0, G_OPTION_ARG_INT, &cache_size,
> > >            N_("Image cache size (deprecated)"), N_("<bytes>") },
> > >          { "spice-glz-window-size", '\0', 0, G_OPTION_ARG_INT, &glz_w=
indow_size,
> > > @@ -272,6 +275,18 @@ void spice_set_session_option(SpiceSession *sess=
ion)
> > >              g_object_set(m, "redirect-on-connect",
> > >                           usbredir_redirect_on_connect, NULL);
> > >      }
> > > +    if (cd_share_files) {
> > > +        SpiceUsbDeviceManager *m =3D spice_usb_device_manager_get(se=
ssion, NULL);
> >
> > Please check for errors as well, I patched the other two calls
> > for this
>=20
> I do not exactly understand the comment. Can you explain?

spice_usb_device_manager_get() can fail, for instance if usbredir
is not enabled at compile time. You can pass a GError** instead
of NULL to warn user about the fact that its cd-rom will not
show up in the guest for whatever reason it might be.


Just switch to the local get_usb_device_manager_for_option()
added in the last commit

https://gitlab.freedesktop.org/spice/spice-gtk/commit/1ab015b369f34169747e0=
cbfb1e0b6a8c99e9141

Cheers,

>=20
> >
> > > +        if (m) {
> > > +            gchar **name =3D cd_share_files;
> > > +            while (name && *name) {
> > > +                g_object_set(m, "share-cd", *name, NULL);
> > > +                name++;
> > > +            }
> > > +        }
> > > +        g_strfreev(cd_share_files);
> > > +        cd_share_files =3D NULL;
> > > +    }
> > >      if (disable_usbredir)
> > >          g_object_set(session, "enable-usbredir", FALSE, NULL);
> > >      if (disable_audio)
> > > diff --git a/src/usb-device-manager.c b/src/usb-device-manager.c
> > > index 0961d16..b11bb15 100644
> > > --- a/src/usb-device-manager.c
> > > +++ b/src/usb-device-manager.c
> > > @@ -75,6 +75,7 @@ enum {
> > >      PROP_AUTO_CONNECT_FILTER,
> > >      PROP_REDIRECT_ON_CONNECT,
> > >      PROP_FREE_CHANNELS,
> > > +    PROP_SHARE_CD
> > >  };
> > >
> > >  enum
> > > @@ -433,6 +434,26 @@ static void spice_usb_device_manager_set_propert=
y(GObject       *gobject,
> > >          priv->redirect_on_connect =3D g_strdup(filter);
> > >          break;
> > >      }
> > > +    case PROP_SHARE_CD:
> > > +    {
> > > +#ifdef USE_USBREDIR
> > > +        UsbCreateDeviceParameters param =3D { 0 };
> > > +        const gchar *name =3D g_value_get_string(value);
> > > +        /* the string is temporary, no need to keep it */
> > > +        SPICE_DEBUG("share_cd set to %s", name);
> > > +        if (name[0] =3D=3D '!') {
> > > +            name++;
> > > +            param.device_param.create_cd.delete_on_eject =3D 1;
> > > +        }
> > > +        param.device_param.create_cd.filename =3D name;
> > > +        if (!spice_usb_backend_create_device(priv->context, USB_DEV_=
TYPE_CD, &param)) {
> > > +            g_warning(param.error->message);
> > > +            spice_usb_device_manager_device_error(self, NULL, param.=
error);
> > > +            g_error_free(param.error);
> > > +        }
> > > +#endif
> > > +        break;
> > > +    }
> > >      default:
> > >          G_OBJECT_WARN_INVALID_PROPERTY_ID(gobject, prop_id, pspec);
> > >          break;
> > > @@ -523,6 +544,18 @@ static void spice_usb_device_manager_class_init(=
SpiceUsbDeviceManagerClass *klas
> > >      g_object_class_install_property(gobject_class, PROP_REDIRECT_ON_=
CONNECT,
> > >                                      pspec);
> > >
> > > +    /**
> > > +    * SpiceUsbDeviceManager:share-cd:
> > > +    *
> > > +    * Set a string specifying a filename (ISO) or physical CD/DVD de=
vice
> > > +    * to share via USB after a Spice connection has been established.
> > > +    *
> > > +    */
> > > +    pspec =3D g_param_spec_string("share-cd", "Share ISO file or dev=
ice as CD",
> > > +        "File or device name to share", NULL,
> > > +        G_PARAM_READWRITE | G_PARAM_STATIC_STRINGS);
> > > +    g_object_class_install_property(gobject_class, PROP_SHARE_CD, ps=
pec);
> > > +
> > >      /**
> > >       * SpiceUsbDeviceManager:free-channels:
> > >       *
> > > --
> > > 2.17.1
> > >
> > > _______________________________________________
> > > Spice-devel mailing list
> > > Spice-devel@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/spice-devel

--jwqffrqulnfiinrh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl06kscACgkQl9kSPeN6
SE8UkhAAmfybxKOLSbpIjMxfHhmqIjzaqJJMTzgEgb9whgWWZySgm6pmFTy+/iBr
HkkwzfZIkE0R84t8eZchgqmwjQAlIhfAliaJnatcN5Ci9sGVK1t3PWL7vH9edkpO
v7/VFoSwOY+DywJp2IljGI6XAxpC5mLNMU6oKl8qm+rg6VJAqLFz4jJA0JXlP6L0
uK+ptbVppiKzCX4iB5k5NIVejYr4MeUXPgtwEOxmcKJofXEj5zcmzkYDbU1bNERM
UdYHdmtnxp5egVU3y3NLwMpzhU0iuSFzXZesvWnUdAH9+t6WPh2ul1LaG/5AZudC
nHC9iDt7VOgXnRDZqyikXRNlgUutXmrqsXtYJbtzWCjPOdDNjxdaVuY1Uyipeo4t
NgiEMq/PAdHIg4+VpqqROd5VGyupo4ZFfH0529lZZx4ac3RWI/uiTi+33GlzUO/H
E85rGlUXbWm2yQnCPqLqr2FYluIYuRGwqXp4BRzZ4D4IfN7ufDKHaXKV3X0hPGBv
UthYNXbrVywche735H+MbBTcyAsMOYvCLD5UkAt/ICSSEgZSigxgwn1e/pjexexJ
VQjm7IYDT9EiVyA+Wga9OrljY+gsND8W4fBfky8EIL1man+kUqXDKU+7SL6qk6Lk
q5ISNsg+Uy8A/lZZc1xmKXzUqFAj4SiZaTjoBltsJNOh98371VQ=
=+h6Y
-----END PGP SIGNATURE-----

--jwqffrqulnfiinrh--

--===============1133329563==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1133329563==--
