Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF6C074C33
	for <lists+spice-devel@lfdr.de>; Thu, 25 Jul 2019 12:52:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 543FD6E6F5;
	Thu, 25 Jul 2019 10:52:25 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A222E6E6F5
 for <spice-devel@lists.freedesktop.org>; Thu, 25 Jul 2019 10:52:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3F1BD7FDCD
 for <spice-devel@lists.freedesktop.org>; Thu, 25 Jul 2019 10:52:23 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E2E0360BEC
 for <spice-devel@lists.freedesktop.org>; Thu, 25 Jul 2019 10:52:22 +0000 (UTC)
Date: Thu, 25 Jul 2019 12:52:22 +0200
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <20190725105222.dla34ay7shtg7h7b@wingsuit>
References: <20190725101947.17341-1-victortoso@redhat.com>
 <20190725104251.18425-1-victortoso@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190725104251.18425-1-victortoso@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Thu, 25 Jul 2019 10:52:23 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk v2] spice-option: warn on command line
 failures of usbredir
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
Content-Type: multipart/mixed; boundary="===============0954492430=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0954492430==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="s3kt5xzqgsv35uik"
Content-Disposition: inline


--s3kt5xzqgsv35uik
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Jul 25, 2019 at 12:42:51PM +0200, Victor Toso wrote:
> From: Victor Toso <me@victortoso.com>
>=20
> As spice_usb_device_manager_get() can fail for different reasons, we
> should silently ignore it and its error.

And I forgot to fix the typo again, but I did locally :)

>=20
> Signed-off-by: Victor Toso <victortoso@redhat.com>
> ---
>  src/spice-option.c | 24 ++++++++++++++++++++----
>  1 file changed, 20 insertions(+), 4 deletions(-)
>=20
> diff --git a/src/spice-option.c b/src/spice-option.c
> index c2b059e..08d449e 100644
> --- a/src/spice-option.c
> +++ b/src/spice-option.c
> @@ -212,6 +212,18 @@ GOptionGroup* spice_get_option_group(void)
>      return grp;
>  }
> =20
> +SpiceUsbDeviceManager *
> +get_usb_device_manager_for_option(SpiceSession *session, const char *opt=
ion)
> +{
> +    GError *err =3D NULL;
> +    SpiceUsbDeviceManager *m =3D spice_usb_device_manager_get(session, &=
err);
> +    if (!m) {
> +        g_warning("Option %s is set but failed: %s", option, err->messag=
e);
> +        g_error_free(err);
> +    }
> +    return m;
> +}
> +
>  /**
>   * spice_set_session_option:
>   * @session: a #SpiceSession to set option upon
> @@ -261,16 +273,20 @@ void spice_set_session_option(SpiceSession *session)
>              g_object_set(session, "smartcard-db", smartcard_db, NULL);
>      }
>      if (usbredir_auto_redirect_filter) {
> -        SpiceUsbDeviceManager *m =3D spice_usb_device_manager_get(sessio=
n, NULL);
> -        if (m)
> +        SpiceUsbDeviceManager *m =3D
> +                get_usb_device_manager_for_option(session, "--spice-usbr=
edir-auto-redirect-filter");
> +        if (m) {
>              g_object_set(m, "auto-connect-filter",
>                           usbredir_auto_redirect_filter, NULL);
> +        }
>      }
>      if (usbredir_redirect_on_connect) {
> -        SpiceUsbDeviceManager *m =3D spice_usb_device_manager_get(sessio=
n, NULL);
> -        if (m)
> +        SpiceUsbDeviceManager *m =3D
> +                get_usb_device_manager_for_option(session, "--spice-usbr=
edir-redirect-on-connect");
> +        if (m) {
>              g_object_set(m, "redirect-on-connect",
>                           usbredir_redirect_on_connect, NULL);
> +        }
>      }
>      if (disable_usbredir)
>          g_object_set(session, "enable-usbredir", FALSE, NULL);
> --=20
> 2.21.0
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--s3kt5xzqgsv35uik
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl05ieYACgkQl9kSPeN6
SE85GxAApnfshx3Dg8zkcv4ltElya8kenyqdUYd0MvMATjy/cs/rUG6vh0Rx6j9g
1cTCCF+9xZxtryUYnjMActd/LK+1v5/KfMeGUISWn+I5SY/YJU8RaGzfJaV6s7J4
rvkNeJAa2U1c4x5RW+De/xV313EcNopG/J9g/vNFoMKEL3DfPn0jTspeluWw3VIz
QX19x2q2i2VVnv/+usnGv1OflvqHh82Mw6+OIQpBkYWF8Z1VH0gHgCYquGNS+Ttm
eBsGILitBZDk0Gx9AX2Ykl01KXJt3wk9WGiblFWLXvrr5Le2+gMQpgTfZTb35SWM
bRu2NiBsKnScOjd1eU8ygIS+dICc0JrZdmgulYSVOBYlXyFeC0UDVIK7qI/vGpsu
15cuGzrhHA92Uq0GHwzrhGcaZ/hcwmXcmR75LRqo8mV8oGI2J6JFZJm2g6qb9Uvh
INJP9zOQLgF9bFdCC6Vtn16eSHKEn4B6sCOhVF4UHDCB64d3IVXnWrBBJhGo+Uzp
oZRBBZzr9FWEgUN1lWL3nJtsiz4z/HsUBMcVrhfzOGI9uCeDo1XRa8hOZbKVrERs
r9RhCGW+ujIrKeNmfRteaZkMzzcVG0pOCrGH9Dhy7l1kvvfgZ1NYoEP138L2Hgjc
NCbso5tDIDw9BdIUo12eFy1Pwgx4kqybrEzs9yrU3mLPAb0ADmU=
=xzDK
-----END PGP SIGNATURE-----

--s3kt5xzqgsv35uik--

--===============0954492430==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0954492430==--
