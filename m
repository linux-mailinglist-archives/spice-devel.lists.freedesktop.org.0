Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC99D74C19
	for <lists+spice-devel@lfdr.de>; Thu, 25 Jul 2019 12:47:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAEEA6E6E4;
	Thu, 25 Jul 2019 10:47:05 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10FEC6E6E4
 for <spice-devel@lists.freedesktop.org>; Thu, 25 Jul 2019 10:47:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9A71E308424C;
 Thu, 25 Jul 2019 10:47:03 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4547560148;
 Thu, 25 Jul 2019 10:47:03 +0000 (UTC)
Date: Thu, 25 Jul 2019 12:47:02 +0200
From: Victor Toso <victortoso@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <20190725104702.no7nlu2vbucacnw4@wingsuit>
References: <20190724105351.13753-1-yuri.benditovich@daynix.com>
 <20190724105351.13753-5-yuri.benditovich@daynix.com>
MIME-Version: 1.0
In-Reply-To: <20190724105351.13753-5-yuri.benditovich@daynix.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Thu, 25 Jul 2019 10:47:03 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk 4/9] usb-redir: device description for
 emulated devices
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
Content-Type: multipart/mixed; boundary="===============1053886764=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1053886764==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zo6nktegjdjgvk2g"
Content-Disposition: inline


--zo6nktegjdjgvk2g
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jul 24, 2019 at 01:53:46PM +0300, Yuri Benditovich wrote:
> Ability to retrieve device description for emulated USB
> device, defined by implementation. For example, for shared
> CD the implementation may use basename of ISO file.
>=20
> Signed-off-by: Yuri Benditovich <yuri.benditovich@daynix.com>
> ---
>  src/usb-device-manager.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
>=20
> diff --git a/src/usb-device-manager.c b/src/usb-device-manager.c
> index b11bb15..1660905 100644
> --- a/src/usb-device-manager.c
> +++ b/src/usb-device-manager.c
> @@ -1483,11 +1483,18 @@ gchar *spice_usb_device_get_description(SpiceUsbD=
evice *device, const gchar *for
>          return g_strdup(_("USB redirection"));
>      }
> =20
> +    if (!format)
> +        format =3D _("%s %s %s at %d-%d");
> +

We should add {} here as well, but patch is fine
Acked-by: Victor Toso <victortoso@redhat.com>

>      bus     =3D spice_usb_device_get_busnum(device);
>      address =3D spice_usb_device_get_devaddr(device);
>      vid     =3D spice_usb_device_get_vid(device);
>      pid     =3D spice_usb_device_get_pid(device);
> =20
> +    if (bus =3D=3D BUS_NUMBER_FOR_EMULATED_USB) {
> +        return spice_usb_backend_device_description(device->bdev, format=
);
> +    }
> +
>      if ((vid > 0) && (pid > 0)) {
>          descriptor =3D g_strdup_printf("[%04x:%04x]", vid, pid);
>      } else {
> @@ -1497,9 +1504,6 @@ gchar *spice_usb_device_get_description(SpiceUsbDev=
ice *device, const gchar *for
>      spice_usb_util_get_device_strings(bus, address, vid, pid,
>                                        &manufacturer, &product);
> =20
> -    if (!format)
> -        format =3D _("%s %s %s at %d-%d");
> -
>      description =3D g_strdup_printf(format, manufacturer, product, descr=
iptor, bus, address);
> =20
>      g_free(manufacturer);
> --=20
> 2.17.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--zo6nktegjdjgvk2g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl05iKYACgkQl9kSPeN6
SE9PEg//YrFwbia/poUY34Xb94JIn+pPipMfj1oQTya0QWuVtGf25LfGUcBn1Gw4
j9Ct3gZ4a2V46EqSgh4aPdjTl8iY16He6HU2ij5fsZFqcWR8MrcoKUDKt4GTeI86
4wfZkFbQUIZQ9Xuy+uRj9CeiaguEdbf6nmLdruyCLSb61Au356lqPrGpt8ekOhGR
Ow6oT4YeDx4HqJRi/gmLJ0QhDVA7mjnWONi7umMUIpuxYK0T+SATTZ4UaFoAwC6T
GMWYlPmLDSGLh4Inf8lANoemXj84c4KQbXBehMA+ZpAmGMlmBtauq7OwnIqkeYTs
RMfLU4mTZdAgFQKHXAY88Gyf8FZg3BAm+D3jAdxeclGE9YNCmp4N2wbN6sD6tZSF
3FIAAgitfQQ4JDVmZPTKYDVsRl0ew2/A8jMG4Zo8yA2R3g4SSUeG8ZJzEvPbACHb
pYH05rNRfUjWL6rcImN1fHAxRE1UjB8iFmr/mgBVARmCQqP0XU+qoEqvvFbZ3kmH
1a+ZWQGgeAFmZLJ1pGJ1/k6ssGlq48HWhoUBRGEjYYgde3sG7/2qdlf8csQ79CjN
FyjCOPAVYULsQIqQmGhrCbxIwlgcBdy9pnZTQ2BhbCu+q1QH/pp00ayLr83CVqoD
KGOH3Qho1sv4GMqwC+EwatqKtcw5rv/YdH+yhGp2klIe9xhe+/g=
=uP5j
-----END PGP SIGNATURE-----

--zo6nktegjdjgvk2g--

--===============1053886764==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1053886764==--
