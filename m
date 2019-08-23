Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B46D9A9B7
	for <lists+spice-devel@lfdr.de>; Fri, 23 Aug 2019 10:09:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 398FE6EBEF;
	Fri, 23 Aug 2019 08:09:44 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AA5F6EBEF
 for <spice-devel@lists.freedesktop.org>; Fri, 23 Aug 2019 08:09:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0393518C890F;
 Fri, 23 Aug 2019 08:09:43 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A38345D6D0;
 Fri, 23 Aug 2019 08:09:42 +0000 (UTC)
Date: Fri, 23 Aug 2019 10:09:41 +0200
From: Victor Toso <victortoso@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <20190823080941.qjtopspbh3n7sqab@wingsuit>
References: <20190812095729.32692-1-yuri.benditovich@daynix.com>
 <20190812095729.32692-10-yuri.benditovich@daynix.com>
MIME-Version: 1.0
In-Reply-To: <20190812095729.32692-10-yuri.benditovich@daynix.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.70]); Fri, 23 Aug 2019 08:09:43 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk v3 9/9] usb-redir: command-line option
 to create emulated CD drive
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
Content-Type: multipart/mixed; boundary="===============0547671792=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0547671792==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="yvcsktrzxzkxn3en"
Content-Disposition: inline


--yvcsktrzxzkxn3en
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 12, 2019 at 12:57:29PM +0300, Yuri Benditovich wrote:
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
> index 8c4e707..f0b3b5d 100644
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
> index 5834e03..187ccfa 100644
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

I'd add an #else with log that feature is disabled just to not be
silent about it in case someone is trying to set it.

Otherwise, looks fine.

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
> 2.17.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--yvcsktrzxzkxn3en
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1fn0UACgkQl9kSPeN6
SE+mSA/9FHZHoP6EjjbIiwwG9NPmfhkStDCAdB8r5JiVQcJDIwRC3C+0f1mtEDw4
/ODoJDiMqcndcbEatR+M8ohuAPTCNne+NV/tLgD5Ln1XKVn4Vi85wfvdjpx6kGjm
QYBS5XpiamKIV8bXgC5pwgQA3ctAz47ElThqBZKrX5y7sucCf141tf2FsrMr6Pyk
WXInohTPPqHuDsCrsxAMjdC4zlUKHrGZRFWu2Cf8DKeYCzpAUTE55iqJudeFRk9b
FPr0PIbce2geH8sFqESX2gSBmugylsRhPLI77ftWMYW6Pz4d2AAUsu6DEBhjWA0z
WFYKTvwwlXY1VNHSRz0jIPyw7beFSVJ3Vf+VBuIfvuZ9zhjntF5GTqZB/AJ3Yakd
9LhvIHWqQO8Lub/39Q9UTiYmDgY50b1px9O6u9hD9PwA9KbpUvpHs5Wd2XSQIMzn
YhYt67K9ir7Iy9aY5td+9+Pp5zFwh/+2//4/LCwQXMK9SYlI0fFdXZmSbHa5TLc7
RTw5XjsEoFNRr/oL40iq2YiCxL0rjqB5wJhIsDODfQYJGHouWx7/NRx8ApNjAWZQ
SVgT+Xk76JKnRYdN2ABPWWB65vG5H3/KK58hqepJD9bk1P1BW14z3KLPOzNndBbv
rs7WxdicYcgcj5c551f6B6Mp2i+9ClLEKKHFDiaqe2ODX4rN2KI=
=spuw
-----END PGP SIGNATURE-----

--yvcsktrzxzkxn3en--

--===============0547671792==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0547671792==--
