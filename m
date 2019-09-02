Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC1A3A53DF
	for <lists+spice-devel@lfdr.de>; Mon,  2 Sep 2019 12:19:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3690D89A59;
	Mon,  2 Sep 2019 10:19:26 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7224989A59
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Sep 2019 10:19:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E2A1E307D90D
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Sep 2019 10:19:24 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8FEDE5D6A7;
 Mon,  2 Sep 2019 10:19:24 +0000 (UTC)
Date: Mon, 2 Sep 2019 12:19:23 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190902101923.5liythh2zrmbxgrx@wingsuit>
References: <20190725134353.23174-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190725134353.23174-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Mon, 02 Sep 2019 10:19:24 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk 1/3] usb-backend: Cache
 isochronous value
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
Content-Type: multipart/mixed; boundary="===============0470295530=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0470295530==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="khnpvcfvmhdtl4f2"
Content-Disposition: inline


--khnpvcfvmhdtl4f2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Jul 25, 2019 at 02:43:51PM +0100, Frediano Ziglio wrote:
> Allows to remove _SpiceUsbDevice structure.
> _SpiceUsbDevice is only caching this value from SpiceUsbBackendDevice.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> ---
>  src/usb-backend.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
>=20
> diff --git a/src/usb-backend.c b/src/usb-backend.c
> index 9ac8595c..7e0e4a8a 100644
> --- a/src/usb-backend.c
> +++ b/src/usb-backend.c
> @@ -50,6 +50,8 @@ struct _SpiceUsbBackendDevice
>      gint ref_count;
>      SpiceUsbBackendChannel *attached_to;
>      UsbDeviceInformation device_info;
> +    uint8_t cached_isochronous_valid : 1;
> +    uint8_t cached_isochronous : 1;

I know this might have been asked more then once but why not
using bool here?

>  };
> =20
>  struct _SpiceUsbBackend
> @@ -341,6 +343,10 @@ gboolean spice_usb_backend_device_isoch(SpiceUsbBack=
endDevice *dev)
>      gint i, j, k;
>      int rc;
> =20
> +    if (dev->cached_isochronous_valid) {
> +        return dev->cached_isochronous;
> +    }
> +
>      g_return_val_if_fail(libdev !=3D NULL, 0);
> =20
>      rc =3D libusb_get_active_config_descriptor(libdev, &conf_desc);
> @@ -362,6 +368,9 @@ gboolean spice_usb_backend_device_isoch(SpiceUsbBacke=
ndDevice *dev)
>          }
>      }
> =20
> +    dev->cached_isochronous_valid =3D TRUE;
> +    dev->cached_isochronous =3D isoc_found;
> +
>      libusb_free_config_descriptor(conf_desc);
>      return isoc_found;
>  }
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--khnpvcfvmhdtl4f2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1s7KsACgkQl9kSPeN6
SE+yRhAAsUYtapnTMc6IxITt4JCmK1/kJROxVZuq5nKRfohMAIUmBMLImu4CLvU4
6z4GeBujC2keloBHN4zQPQz9KS+EBMmNkzCj4puZsGlweXKxy0+xCJnSxXymkjdP
Kv8gCoByte/8XhbPr87lSkkm/i8Gg/7fNxEMRy12EUETCJbsSCLrle0cxI0RtB8K
e2weQsn3DEqmlH8pFCqKGfWzl9os9MPd0VCZR86idRPcGmaXXcOWakTHeuHLxX0v
8F8SRLVByDgGn3lQMJqig4w89qBJlwBxn6BQ33dgTrqRclO0UPBTK38jGKuOVuch
F4Rw9laY5lh0IxvEMchYKlPlUKaQpxfoyh8/Li6LI+4kxKQ6w2d+LJA0hMwxuMKP
GulHJ/NL35bA3GrLm5PmDgOcOEZ1Dzn0NozszjMtVi0xsDYBSlhZcfIKH/Ythfk2
pseYedvk4CxdgpWs3BEu7F94mBCKQOfRmTsUc4YgP+X+Q0gtOYDsJrTgo2UcKhvI
08EL4t0XtJF3Z0vSqrIzD1G7hmDVfHFJ4wy36FPDv6Vq9l3f0pWFUTlAXreLxpmM
CHJNXvK8kFTxfVLKJ02PNRwKnfWUk4Og7jnMwO+cC643B5JnCq1PvRe2yjm0ScDR
EjwppsxZWo986/7wwHRY47E0nUqIkUWJ+qCMfTgsjIeTZFF7/30=
=qKPK
-----END PGP SIGNATURE-----

--khnpvcfvmhdtl4f2--

--===============0470295530==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0470295530==--
