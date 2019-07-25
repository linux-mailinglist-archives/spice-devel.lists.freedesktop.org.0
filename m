Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F97474B9B
	for <lists+spice-devel@lfdr.de>; Thu, 25 Jul 2019 12:33:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7BC06E6DA;
	Thu, 25 Jul 2019 10:33:15 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B15056E6DA
 for <spice-devel@lists.freedesktop.org>; Thu, 25 Jul 2019 10:33:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 47B253092650;
 Thu, 25 Jul 2019 10:33:14 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EA688605C3;
 Thu, 25 Jul 2019 10:33:13 +0000 (UTC)
Date: Thu, 25 Jul 2019 12:33:13 +0200
From: Victor Toso <victortoso@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <20190725103313.e2fsqkbyfzeeklfr@wingsuit>
References: <20190724105351.13753-1-yuri.benditovich@daynix.com>
 <20190724105351.13753-4-yuri.benditovich@daynix.com>
MIME-Version: 1.0
In-Reply-To: <20190724105351.13753-4-yuri.benditovich@daynix.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Thu, 25 Jul 2019 10:33:14 +0000 (UTC)
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
Content-Type: multipart/mixed; boundary="===============0327971560=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0327971560==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wckqwonx77o7vfje"
Content-Disposition: inline


--wckqwonx77o7vfje
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 24, 2019 at 01:53:45PM +0300, Yuri Benditovich wrote:
> Added command-line option for shared CD devices and respective
> property in usb-device-manager.
>=20
> Signed-off-by: Yuri Benditovich <yuri.benditovich@daynix.com>
> ---
>  src/spice-option.c       | 15 +++++++++++++++
>  src/usb-device-manager.c | 33 +++++++++++++++++++++++++++++++++
>  2 files changed, 48 insertions(+)
>=20
> diff --git a/src/spice-option.c b/src/spice-option.c
> index c2b059e..4fbca9f 100644
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
> @@ -183,6 +184,8 @@ GOptionGroup* spice_get_option_group(void)
>            N_("Filter selecting USB devices to be auto-redirected when pl=
ugged in"), N_("<filter-string>") },
>          { "spice-usbredir-redirect-on-connect", '\0', 0, G_OPTION_ARG_ST=
RING, &usbredir_redirect_on_connect,
>            N_("Filter selecting USB devices to redirect on connect"), N_(=
"<filter-string>") },
> +        { "spice-share-cd", '\0', 0, G_OPTION_ARG_STRING_ARRAY, &cd_shar=
e_files,
> +          N_("Name of ISO file or CD/DVD device to share"), N_("<filenam=
e> (repeat allowed)") },
>          { "spice-cache-size", '\0', 0, G_OPTION_ARG_INT, &cache_size,
>            N_("Image cache size (deprecated)"), N_("<bytes>") },
>          { "spice-glz-window-size", '\0', 0, G_OPTION_ARG_INT, &glz_windo=
w_size,
> @@ -272,6 +275,18 @@ void spice_set_session_option(SpiceSession *session)
>              g_object_set(m, "redirect-on-connect",
>                           usbredir_redirect_on_connect, NULL);
>      }
> +    if (cd_share_files) {
> +        SpiceUsbDeviceManager *m =3D spice_usb_device_manager_get(sessio=
n, NULL);

Please check for errors as well, I patched the other two calls
for this

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
> index 0961d16..b11bb15 100644
> --- a/src/usb-device-manager.c
> +++ b/src/usb-device-manager.c
> @@ -75,6 +75,7 @@ enum {
>      PROP_AUTO_CONNECT_FILTER,
>      PROP_REDIRECT_ON_CONNECT,
>      PROP_FREE_CHANNELS,
> +    PROP_SHARE_CD
>  };
> =20
>  enum
> @@ -433,6 +434,26 @@ static void spice_usb_device_manager_set_property(GO=
bject       *gobject,
>          priv->redirect_on_connect =3D g_strdup(filter);
>          break;
>      }
> +    case PROP_SHARE_CD:
> +    {
> +#ifdef USE_USBREDIR
> +        UsbCreateDeviceParameters param =3D { 0 };
> +        const gchar *name =3D g_value_get_string(value);
> +        /* the string is temporary, no need to keep it */
> +        SPICE_DEBUG("share_cd set to %s", name);
> +        if (name[0] =3D=3D '!') {
> +            name++;
> +            param.device_param.create_cd.delete_on_eject =3D 1;
> +        }
> +        param.device_param.create_cd.filename =3D name;
> +        if (!spice_usb_backend_create_device(priv->context, USB_DEV_TYPE=
_CD, &param)) {
> +            g_warning(param.error->message);
> +            spice_usb_device_manager_device_error(self, NULL, param.erro=
r);
> +            g_error_free(param.error);
> +        }
> +#endif
> +        break;
> +    }
>      default:
>          G_OBJECT_WARN_INVALID_PROPERTY_ID(gobject, prop_id, pspec);
>          break;
> @@ -523,6 +544,18 @@ static void spice_usb_device_manager_class_init(Spic=
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

--wckqwonx77o7vfje
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl05hWkACgkQl9kSPeN6
SE8g5Q//e0Dr13xKhIvQfOUyR6COij9Xyit1XXpne6bzYvEk+0HPJS5KBKt5aw5w
UTfiBhoqjj/qzcKNcij29as3UGiXuQCZOVXTQ+OiXtQUXjEU3kpKHk8EltbBXvmw
mj5F3VM1i282o+Vb+2h39f7X0U2pOw8DRFVta0OvcB/HJZPSq/dShfsXjWNw+rAe
bNCdiKfGtKIfl3MwETcnRrTYaEDJQGqA3ssmCOqWdRhkJOtQFBzS2v7JE/GJ5ypb
ENIoDSfEM/U8DlkVzXTN4HkqbxsDn9Hm4SAEl9uiCKJ8iE79r1cPp8rqgFMFUKYz
H6s6PMVzZ9heJOuyFYN339ooddtWF6Ov1TFnuGMYG0qFC6pZn71TkU4EBkVeiqvW
Eg4AcypZWZYcTibJoh6DBUZPZhYrjG2qrIKgWZxsFhudS3XmcTB9DEAwV22uJdzV
63DJpirDQR7naXgY1W2wGmOOFLiaDcjHX7555MW8Mauww6pZmK5Yc2XCU8FJsrOf
9dXLH27/e5A6YM33fsHrNdd0ECqxa1FFGbyheMhATZ9UGVF+qAuw7N/HIubgGWSl
rCKi7I7K2M+TUDWTIfAn0F2QRsZ9YxHjw+8P2Zs0Cw7nz2cwKEipujjU/oxv4KpU
A66qbkanSEpPjHjFD9qJ7WSIJe8D17jLSLjtbPNksR46xLRYm0M=
=JY/p
-----END PGP SIGNATURE-----

--wckqwonx77o7vfje--

--===============0327971560==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0327971560==--
