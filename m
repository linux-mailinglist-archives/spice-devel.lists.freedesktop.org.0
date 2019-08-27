Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7303C9E806
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 14:34:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F08F4899F0;
	Tue, 27 Aug 2019 12:34:32 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60472899F0
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 12:34:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 101483084037
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 12:34:32 +0000 (UTC)
Received: from localhost (unknown [10.32.181.212])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AD1EE194B9;
 Tue, 27 Aug 2019 12:34:31 +0000 (UTC)
Date: Tue, 27 Aug 2019 14:34:30 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190827123430.ghm4vdslptgmeacl@wingsuit>
References: <20190827092246.10276-1-fziglio@redhat.com>
 <20190827092246.10276-20-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190827092246.10276-20-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Tue, 27 Aug 2019 12:34:32 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk v4 19/29] usb-redir:
 command-line option to create emulated CD drive
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
Content-Type: multipart/mixed; boundary="===============1724459208=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1724459208==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xxwroaaybxvpft4m"
Content-Disposition: inline


--xxwroaaybxvpft4m
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Aug 27, 2019 at 10:22:36AM +0100, Frediano Ziglio wrote:
> From: Yuri Benditovich <yuri.benditovich@daynix.com>
>=20
> Added command-line option for sharing emulated CD devices.
> It uses property interface of usb-device-manager to
> create CD, this is a temporary solution until public API of
> usb-device-manager defined for shared CD management from both
> GUI and command line.
>=20
> Signed-off-by: Yuri Benditovich <yuri.benditovich@daynix.com>
> ---
>  src/spice-option.c       | 17 +++++++++++++++++
>  src/usb-device-manager.c | 34 ++++++++++++++++++++++++++++++++++
>  2 files changed, 51 insertions(+)
>=20
> diff --git a/src/spice-option.c b/src/spice-option.c
> index 8c4e707c..f0b3b5d6 100644
> --- a/src/spice-option.c
> +++ b/src/spice-option.c
> @@ -32,6 +32,7 @@ static char *smartcard_db =3D NULL;
>  static char *smartcard_certificates =3D NULL;
>  static char *usbredir_auto_redirect_filter =3D NULL;
>  static char *usbredir_redirect_on_connect =3D NULL;
> +static gchar **cd_share_files =3D NULL;
>  static gboolean smartcard =3D FALSE;
>  static gboolean disable_audio =3D FALSE;
>  static gboolean disable_usbredir =3D FALSE;
> @@ -183,6 +184,9 @@ GOptionGroup* spice_get_option_group(void)
>            N_("Filter selecting USB devices to be auto-redirected when pl=
ugged in"), N_("<filter-string>") },
>          { "spice-usbredir-redirect-on-connect", '\0', 0, G_OPTION_ARG_ST=
RING, &usbredir_redirect_on_connect,
>            N_("Filter selecting USB devices to redirect on connect"), N_(=
"<filter-string>") },
> +        { "spice-share-cd", '\0', 0, G_OPTION_ARG_STRING_ARRAY, &cd_shar=
e_files,
> +          N_("Name of ISO file or CD/DVD device to share; prefix '!' to =
delete on eject"),
> +          N_("<filename> (repeat allowed)") },
>          { "spice-cache-size", '\0', 0, G_OPTION_ARG_INT, &cache_size,
>            N_("Image cache size (deprecated)"), N_("<bytes>") },
>          { "spice-glz-window-size", '\0', 0, G_OPTION_ARG_INT, &glz_windo=
w_size,
> @@ -288,6 +292,19 @@ void spice_set_session_option(SpiceSession *session)
>                           usbredir_redirect_on_connect, NULL);
>          }
>      }
> +    if (cd_share_files) {
> +        SpiceUsbDeviceManager *m =3D
> +                get_usb_device_manager_for_option(session, "--spice-shar=
e-cd");
> +        if (m) {
> +            gchar **name =3D cd_share_files;
> +            while (name && *name) {
> +                g_object_set(m, "share-cd", *name, NULL);
> +                name++;
> +            }
> +        }
> +        g_strfreev(cd_share_files);
> +        cd_share_files =3D NULL;
> +    }
>      if (disable_usbredir)
>          g_object_set(session, "enable-usbredir", FALSE, NULL);
>      if (disable_audio)
> diff --git a/src/usb-device-manager.c b/src/usb-device-manager.c
> index 5834e032..187ccfa2 100644
> --- a/src/usb-device-manager.c
> +++ b/src/usb-device-manager.c
> @@ -32,6 +32,7 @@
>  #endif
> =20
>  #include "channel-usbredir-priv.h"
> +#include "usb-device-cd.h"
>  #endif
> =20
>  #include "spice-session-priv.h"
> @@ -74,6 +75,7 @@ enum {
>      PROP_AUTO_CONNECT_FILTER,
>      PROP_REDIRECT_ON_CONNECT,
>      PROP_FREE_CHANNELS,
> +    PROP_SHARE_CD
>  };
> =20
>  enum
> @@ -432,6 +434,26 @@ static void spice_usb_device_manager_set_property(GO=
bject       *gobject,
>          priv->redirect_on_connect =3D g_strdup(filter);
>          break;
>      }
> +    case PROP_SHARE_CD:
> +    {
> +#ifdef USE_USBREDIR
> +        CdEmulationParams param =3D { 0 };
> +        const gchar *name =3D g_value_get_string(value);
> +        /* the string is temporary, no need to keep it */
> +        SPICE_DEBUG("share_cd set to %s", name);
> +        if (name[0] =3D=3D '!') {
> +            name++;
> +            param.delete_on_eject =3D 1;
> +        }
> +        param.filename =3D name;
> +        GError *error =3D NULL;
> +        if (!create_emulated_cd(priv->context, &param, &error)) {
> +            g_warning(error->message);
> +            g_error_free(error);
> +        }
> +#endif

This was acked before, I think I just asked for an #else
g_warning("usbredir is not set, can't set share-cd") or something
like that

> +        break;
> +    }
>      default:
>          G_OBJECT_WARN_INVALID_PROPERTY_ID(gobject, prop_id, pspec);
>          break;
> @@ -522,6 +544,18 @@ static void spice_usb_device_manager_class_init(Spic=
eUsbDeviceManagerClass *klas
>      g_object_class_install_property(gobject_class, PROP_REDIRECT_ON_CONN=
ECT,
>                                      pspec);
> =20
> +    /**
> +    * SpiceUsbDeviceManager:share-cd:
> +    *
> +    * Set a string specifying a filename (ISO) or physical CD/DVD device
> +    * to share via USB after a Spice connection has been established.
> +    *
> +    */
> +    pspec =3D g_param_spec_string("share-cd", "Share ISO file or device =
as CD",
> +        "File or device name to share", NULL,
> +        G_PARAM_READWRITE | G_PARAM_STATIC_STRINGS);
> +    g_object_class_install_property(gobject_class, PROP_SHARE_CD, pspec);
> +
>      /**
>       * SpiceUsbDeviceManager:free-channels:
>       *
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--xxwroaaybxvpft4m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1lI1YACgkQl9kSPeN6
SE9f0w/8DqU15NcQrohabuTPvfXhbNO6d7NLNNSinvVAjNvgzBXruO1G/NKGmNns
J+RSuVWKfw/hwmcyis7Enm53J6GBbiJPpkSbxNI4vGLmAPmTXPyUS05jqKBDmy+U
fn5fJUvKGshdVVw9VFP9eHTWjHylNR35iAdRqnptSpoZXDtvEa2xuN3ssN3zKy60
UbLGH+tPHaEVRanI6VwfFybQMRIt54sQ0Pwr2uok48qdcJzvtpBsTlZivD5WN6GK
TWD35B0++9Vp5Mvt/Q6wV6SCOz0GCZqWtxj4EC9N4gYaOjn2zM+LqUdP7bNXq6l7
GLKqolEvdQRv2KommWAE9sXR7nFv1lryjJyoBjGkb0EQc9J8BAiya0Frs2XYED5c
1MbfmncWdVPkB/ShgUt3xVQEhD+stLbaa4d4CuVSW7nnvSdFa2vYp8E2aI5ZNmAk
iPnjCveQ6l76RYlndiRhh1cozy/dD5uuN8HLT4UqCi6x+uhqylBSVB70zoj7Rxqo
QU6BgFgBNMqtdwKIqXnfqPnkJIqrBs419RWG4Q8OGC+0HGErZ0aIABwvnZjYCBu2
vi3V2IfhTYII7qDZWGiiUjN7142K/wFIvnVZQMU4aeav9GEDj3GvfLj4Ay+JSaRD
jOInU2ku8viOJmMvhQBsiYDPbegv0hO2X6t9/Wj3Xj/XIrtH8hw=
=ppoQ
-----END PGP SIGNATURE-----

--xxwroaaybxvpft4m--

--===============1724459208==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1724459208==--
