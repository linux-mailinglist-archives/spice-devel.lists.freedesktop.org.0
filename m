Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E706E42C
	for <lists+spice-devel@lfdr.de>; Fri, 19 Jul 2019 12:22:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCD096E7F5;
	Fri, 19 Jul 2019 10:22:24 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 804876E7F5
 for <spice-devel@lists.freedesktop.org>; Fri, 19 Jul 2019 10:22:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 25DABC0A4F4C;
 Fri, 19 Jul 2019 10:22:23 +0000 (UTC)
Received: from localhost (ovpn-117-237.ams2.redhat.com [10.36.117.237])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AE857643F3;
 Fri, 19 Jul 2019 10:22:22 +0000 (UTC)
Date: Fri, 19 Jul 2019 12:22:21 +0200
From: Victor Toso <victortoso@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <20190719102221.7btezwppqxoowept@wingsuit>
References: <20190714140741.3274-1-yuri.benditovich@daynix.com>
 <20190714140741.3274-4-yuri.benditovich@daynix.com>
MIME-Version: 1.0
In-Reply-To: <20190714140741.3274-4-yuri.benditovich@daynix.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Fri, 19 Jul 2019 10:22:23 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk 3/5] usb-redir: pass GError to hotplug
 registration procedure
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
Content-Type: multipart/mixed; boundary="===============1142202838=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1142202838==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rqgjn5xqw5chk57l"
Content-Disposition: inline


--rqgjn5xqw5chk57l
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sun, Jul 14, 2019 at 05:07:39PM +0300, Yuri Benditovich wrote:
> In case of possible error the procedure of hotplug
> registration does not return error information, just
> issues warning to the stderr, so the reason of the problem,
> if any, is not visible. Current commit adds GError parameter
> to the procedure to return the error details conventionally.
>=20
> Signed-off-by: Yuri Benditovich <yuri.benditovich@daynix.com>
> ---
>  src/usb-backend.c        | 5 ++++-
>  src/usb-backend.h        | 3 ++-
>  src/usb-device-manager.c | 3 ++-
>  3 files changed, 8 insertions(+), 3 deletions(-)
>=20
> diff --git a/src/usb-backend.c b/src/usb-backend.c
> index 9964c4f..829d81d 100644
> --- a/src/usb-backend.c
> +++ b/src/usb-backend.c
> @@ -442,7 +442,8 @@ void spice_usb_backend_deregister_hotplug(SpiceUsbBac=
kend *be)
> =20
>  gboolean spice_usb_backend_register_hotplug(SpiceUsbBackend *be,
>                                              void *user_data,
> -                                            usb_hot_plug_callback proc)
> +                                            usb_hot_plug_callback proc,
> +                                            GError **error)
>  {
>      int rc;
>      const char *desc;
> @@ -456,6 +457,8 @@ gboolean spice_usb_backend_register_hotplug(SpiceUsbB=
ackend *be,
>      if (rc !=3D LIBUSB_SUCCESS) {
>          g_warning("Error initializing USB hotplug support: %s [%i]", des=
c, rc);
>          be->hotplug_callback =3D NULL;
> +        g_set_error(error, SPICE_CLIENT_ERROR, SPICE_CLIENT_ERROR_FAILED,
> +           "Error on USB hotplug detection: %s [%i]", desc, rc);

Just to highlight that if error is null, nothing happens. It can
be NULL in several places on this stack as it comes all the way
=66rom spice_usb_device_manager_get()

>          return FALSE;
>      }
>      return TRUE;
> diff --git a/src/usb-backend.h b/src/usb-backend.h
> index 6da3981..814da46 100644
> --- a/src/usb-backend.h
> +++ b/src/usb-backend.h
> @@ -60,7 +60,8 @@ gboolean spice_usb_backend_handle_events(SpiceUsbBacken=
d *be);
>  void spice_usb_backend_interrupt_event_handler(SpiceUsbBackend *be);
>  gboolean spice_usb_backend_register_hotplug(SpiceUsbBackend *be,
>                                              void *user_data,
> -                                            usb_hot_plug_callback proc);
> +                                            usb_hot_plug_callback proc,
> +                                            GError **error);
>  void spice_usb_backend_deregister_hotplug(SpiceUsbBackend *be);
> =20
>  /* Spice USB backend device API */
> diff --git a/src/usb-device-manager.c b/src/usb-device-manager.c
> index 9300ad2..857d057 100644
> --- a/src/usb-device-manager.c
> +++ b/src/usb-device-manager.c
> @@ -257,7 +257,8 @@ static gboolean spice_usb_device_manager_initable_ini=
t(GInitable  *initable,
> =20
>      /* Start listening for usb devices plug / unplug */
>      if (!spice_usb_backend_register_hotplug(priv->context, self,
> -                                            spice_usb_device_manager_hot=
plug_cb)) {
> +                                            spice_usb_device_manager_hot=
plug_cb,
> +                                            err)) {
>          return FALSE;

Apart from indentation issue pointed by Frediano,
Acked-by: Victor Toso <victortoso@redhat.com>

>      }
>  #ifndef G_OS_WIN32
> --=20
> 2.17.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--rqgjn5xqw5chk57l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl0xmd0ACgkQl9kSPeN6
SE+QsQ/+PYcYTIGhiA1CqGRPLzhDT1DfitrxApdl/U1uk+368BdIBt/gsYRWS6FN
xG+tezYqUMZJw3vxiXaCGaPkyy73S4XgdPt6CP/SOJklo/NT121HjP3OvvTC4WcF
V4G6LrHgI6tyU3MTdbpecZZ/zPZtf6Rv7XdJoKqShdqxWXVtb9hog4dMv9BSMgwz
SB39+8xN8n4vd85LjDLjESUxzue5bJTfQORVYibL2jZLIBA4gtH8kLcZ2M2y7+ZN
eKUic9E+d9Kq6ioahFGVjHR8K/y0+MS+K36TXia3Wxv7jVTfBKW1CSu/Ttj+Xd8u
xlEc5Fn09WRQOojDLl1BkGlnX1YDqN462PReHji+00nwb+8nXpE6Q4KSaQ6O4el8
F6OOV9KIrIf+Jd9WzIQ8Vyigm3N+KbkwTOy90L3qaBvAZR1vFnPC4NlW17k/tEIU
DjA0rO/NuccQPCZqEjbQ3VbdlrD9o8Ejc9yE/xYxqRj9u2Xk+BKXr0dk0K4iz7XR
PJ7dG7NWB9axhKNI4iDYRX03SYUsfPcB137Xnv5XmEhLu+HMnritseA6S/OnS4Wx
a0N0Xm+CCkJZaKtCC6vt3mkQCbDecc8GFGP9eYP88ooxcQ9iZyqRz8Hi/y8IAjam
39kNKmBKQYVOCptoArzBBy1pdQSS0IcYqOqhwyPBWdNKZNAL4XQ=
=wAc4
-----END PGP SIGNATURE-----

--rqgjn5xqw5chk57l--

--===============1142202838==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1142202838==--
