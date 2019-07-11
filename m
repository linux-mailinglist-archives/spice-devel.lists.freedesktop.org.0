Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E3CB657DE
	for <lists+spice-devel@lfdr.de>; Thu, 11 Jul 2019 15:26:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1106C6E239;
	Thu, 11 Jul 2019 13:26:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B4F26E239
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 13:26:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4474730842AC
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 13:26:51 +0000 (UTC)
Received: from localhost (unknown [10.32.181.70])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E387D60BFB;
 Thu, 11 Jul 2019 13:26:50 +0000 (UTC)
Date: Thu, 11 Jul 2019 15:26:50 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190711132650.f6e7b4pgytvri6nx@wingsuit>
References: <20190711130054.17867-1-fziglio@redhat.com>
 <20190711130054.17867-7-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190711130054.17867-7-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Thu, 11 Jul 2019 13:26:51 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk 7/7] usb-device-manager: Last
 chance to avoid deadlock handling libusb events
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
Content-Type: multipart/mixed; boundary="===============1752852346=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1752852346==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mhe65uiya2srmxzg"
Content-Disposition: inline


--mhe65uiya2srmxzg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Jul 11, 2019 at 02:00:54PM +0100, Frediano Ziglio wrote:
> Attempt to better interrupt event handling loop.
> If the thread handling events is stuck waiting events or handling an
> event try to interrupt before joining the thread.

Do you have a UI stuck or something without this patch?

> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> ---
>  src/usb-backend.c        | 7 +++++++
>  src/usb-backend.h        | 1 +
>  src/usb-device-manager.c | 4 ++++
>  3 files changed, 12 insertions(+)
>=20
> diff --git a/src/usb-backend.c b/src/usb-backend.c
> index 48a62cd1..a2c502da 100644
> --- a/src/usb-backend.c
> +++ b/src/usb-backend.c
> @@ -230,6 +230,13 @@ gboolean spice_usb_backend_handle_events(SpiceUsbBac=
kend *be)
>      return ok;
>  }
> =20
> +void spice_usb_backend_interrupt_event_handler(SpiceUsbBackend *be)
> +{
> +    if (be->libusb_context) {
> +        libusb_interrupt_event_handler(be->libusb_context);
> +    }
> +}
> +
>  static int LIBUSB_CALL hotplug_callback(libusb_context *ctx,
>                                          libusb_device *device,
>                                          libusb_hotplug_event event,
> diff --git a/src/usb-backend.h b/src/usb-backend.h
> index 9f2a97a6..cbb73c22 100644
> --- a/src/usb-backend.h
> +++ b/src/usb-backend.h
> @@ -65,6 +65,7 @@ after it finishes list processing
>  SpiceUsbBackendDevice **spice_usb_backend_get_device_list(SpiceUsbBacken=
d *backend);
>  void spice_usb_backend_free_device_list(SpiceUsbBackendDevice **devlist);
>  gboolean spice_usb_backend_handle_events(SpiceUsbBackend *be);
> +void spice_usb_backend_interrupt_event_handler(SpiceUsbBackend *be);
>  gboolean spice_usb_backend_register_hotplug(SpiceUsbBackend *be,
>                                              void *user_data,
>                                              usb_hot_plug_callback proc);
> diff --git a/src/usb-device-manager.c b/src/usb-device-manager.c
> index 4960667e..0d12432f 100644
> --- a/src/usb-device-manager.c
> +++ b/src/usb-device-manager.c
> @@ -328,6 +328,8 @@ static void spice_usb_device_manager_dispose(GObject =
*gobject)
>  #endif
>      if (priv->event_thread) {
>          g_warn_if_fail(g_atomic_int_get(&priv->event_thread_run) =3D=3D =
FALSE);
> +        g_atomic_int_set(&priv->event_thread_run, FALSE);
> +        spice_usb_backend_interrupt_event_handler(priv->context);
>          g_thread_join(priv->event_thread);
>          priv->event_thread =3D NULL;
>      }
> @@ -988,6 +990,8 @@ gboolean spice_usb_device_manager_start_event_listeni=
ng(
>         libusb_handle_events call in the thread won't exit until the
>         libusb_close call for the device is made from usbredirhost_close.=
 */
>      if (priv->event_thread) {
> +        g_atomic_int_set(&priv->event_thread_run, FALSE);
> +        spice_usb_backend_interrupt_event_handler(priv->context);
>           g_thread_join(priv->event_thread);
>           priv->event_thread =3D NULL;
>      }
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--mhe65uiya2srmxzg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl0nORoACgkQl9kSPeN6
SE/mnw/9Hl5oI3AGywzKGNysARxCvg88KCogDaFk3mRr/Q3B5zPE6jogVSRR60p0
1fOgCiFhPEANKCqqSsVt7lBSck0uycoyqIP60Kw6iQPUVybbp6z1n1WQYa7DQ2fx
qTZbpq/OKO6M8157bGpT9EozZKy4DsuzfU4j4BNbGng+HJLWQHYTMzWyYKyc0Jxg
DQlPzbGEVb2NadjvoaOFHnZFDHugnmOC1ytM97kf6e10hKWnGJNbOmo7tAFYVqwc
4aJWuLTxpIvwcqXMoAEXtKTVbutvfpmbf2A8GriyfQ6p/urUpuuwnasahB5FyGRx
zG9aMIp7Cp35ATsd0V70U2lIfd8+JPeDZnKKRmWlyGzSq3j7bkU/XY7j07cH61aX
fAouXyRR8p3YvBkMCjUY9sr9Y3Z+Oc1SBTZ6lnFFs4+PDkrHMreiGctqsCWR2gP6
MGvVRjB3UGcAutRJDTYKqayqmt7zeJDPkS8/FLuTBec+rZviULB6VWhAIYr6ttS2
KqCgxBWdEdygkAUEfSzDX2v42tdD+GxK6iecU2X97BWMYKUxyi08lh97q3servLN
KavtICF3aotbPjzsKN1hUZ73Yi+tFAUbDFjV1euOzo2DpD54RmwOl3G17ovnSA/v
HgLaEh1/jks9C7+Nqxjfxz96CcbNyQtRJ1Czp92gPYEaj3F+jec=
=vuEb
-----END PGP SIGNATURE-----

--mhe65uiya2srmxzg--

--===============1752852346==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1752852346==--
