Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D95E719A2
	for <lists+spice-devel@lfdr.de>; Tue, 23 Jul 2019 15:44:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10E4D6E290;
	Tue, 23 Jul 2019 13:44:41 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DA956E290
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 13:44:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D4049356E7;
 Tue, 23 Jul 2019 13:44:39 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7E6925C22D;
 Tue, 23 Jul 2019 13:44:39 +0000 (UTC)
Date: Tue, 23 Jul 2019 15:44:38 +0200
From: Victor Toso <victortoso@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <20190723134438.i7wgnxq2alonwu6p@wingsuit>
References: <20190723072708.2575-1-yuri.benditovich@daynix.com>
 <20190723072708.2575-8-yuri.benditovich@daynix.com>
MIME-Version: 1.0
In-Reply-To: <20190723072708.2575-8-yuri.benditovich@daynix.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Tue, 23 Jul 2019 13:44:40 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk v2 7/9] usb-redir: pass GError to
 hotplug registration procedure
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
Content-Type: multipart/mixed; boundary="===============0643766868=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0643766868==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="23rlraxryf2ozai4"
Content-Disposition: inline


--23rlraxryf2ozai4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Jul 23, 2019 at 10:27:06AM +0300, Yuri Benditovich wrote:
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
> index 1581f90..486875e 100644
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
> +                    "Error on USB hotplug detection: %s [%i]", desc, rc);

The GError can come all the way from
spice_usb_device_manager_get() so I think the description should
be internationalized=20

Apart from that, looks fine.

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
>      }
>  #ifndef G_OS_WIN32
> --=20
> 2.17.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--23rlraxryf2ozai4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl03D0YACgkQl9kSPeN6
SE++1RAAwu0jvFFx8OOyLiWfs6yg9v2gXhdmbY76Td3XATBCX/JqBlNU1IAthFI8
dj1dMAw95HYDopew305JhQZ1Xkk21EeK2ofHpjp2WT/b3cLRsD/hDpsTEIVCvv0m
EGPME3HEB5Srz25v4eIiZzHL11Somp03yz65IYjBJlEvBDlHrwE/eDxPpFNlURqa
fqXp8ujEzExYYxm2IP7+kE2PUvbM28zPCqu5y145YpWNVg1voeqC54maK44TR94d
spiHqW440q0jk9M5G7LXuvVZhJHyh8QZcb0+pltKqY1kRgpQni0JrdgJx32679YN
V63vwqES4b9Qj1V9zmWehMjmzHirA0cDCoYL6NuoMqjMoqgqo2IceOc6Erw8lpLU
pQnKNqTjeea4mb1mndarYcLVBE9o/lWSPQn3rtKc2ix/N2OaI3PBt2zGbglzt2B/
4uY2c1qdI11Mexu/Y4aNk+d61/XmoXvjJHxSMabQvZWhrsR4XxAyLHsFalqBq3iw
cAW0Vte5/PfrY0zwCUjEiwaSATxUtjYPpOtfRBUrevyPxGcXc8gMUTUoqbjMSExP
kUJtsGWuoYMC8tEtqA3NwQ4VQLZlxwC/wX2rprdaqBT2nM2sWYc4tIOcWI3rF9HD
HuZnjDEsmTM1mfBsEgVLM4V1yVZ6QYGjlllANR3eomr+0l4x0Os=
=LTZM
-----END PGP SIGNATURE-----

--23rlraxryf2ozai4--

--===============0643766868==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0643766868==--
