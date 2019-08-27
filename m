Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C839E94F
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 15:28:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AED789343;
	Tue, 27 Aug 2019 13:28:14 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB32589343
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 13:28:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7B1567F75F
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 13:28:12 +0000 (UTC)
Received: from localhost (unknown [10.32.181.212])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2610D5D712;
 Tue, 27 Aug 2019 13:28:11 +0000 (UTC)
Date: Tue, 27 Aug 2019 15:28:11 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190827132811.dimsl4fsy4fhmxwy@wingsuit>
References: <20190827092246.10276-1-fziglio@redhat.com>
 <20190827092246.10276-21-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190827092246.10276-21-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.71]); Tue, 27 Aug 2019 13:28:12 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk v4 20/29] test-cd-emu: Add base
 test for cd-emulation
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
Content-Type: multipart/mixed; boundary="===============2021010600=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============2021010600==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lj5frqiz4as3hall"
Content-Disposition: inline


--lj5frqiz4as3hall
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Aug 27, 2019 at 10:22:37AM +0100, Frediano Ziglio wrote:
> Just allocate and free to test for base leaks and reference
> counting.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

Valgrind says ok here as well.

> ---
>  tests/cd-emu.c    | 92 +++++++++++++++++++++++++++++++++++++++++++++++
>  tests/meson.build |  4 +++
>  2 files changed, 96 insertions(+)
>  create mode 100644 tests/cd-emu.c
>=20
> diff --git a/tests/cd-emu.c b/tests/cd-emu.c
> new file mode 100644
> index 00000000..7bf1fa3c
> --- /dev/null
> +++ b/tests/cd-emu.c
> @@ -0,0 +1,92 @@
> +/*
> +   Copyright (C) 2019 Red Hat, Inc.
> +
> +   This library is free software; you can redistribute it and/or
> +   modify it under the terms of the GNU Lesser General Public
> +   License as published by the Free Software Foundation; either
> +   version 2.1 of the License, or (at your option) any later version.
> +
> +   This library is distributed in the hope that it will be useful,
> +   but WITHOUT ANY WARRANTY; without even the implied warranty of
> +   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> +   Lesser General Public License for more details.
> +
> +   You should have received a copy of the GNU Lesser General Public
> +   License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
> +*/
> +#include <gio/gio.h>
> +
> +#include "usb-device-cd.h"
> +#include "usb-emulation.h"
> +
> +static SpiceUsbBackendDevice *device =3D NULL;
> +
> +/* simple usb manager hotplug callback emulation. */
> +static void
> +test_hotplug_callback(void *user_data, SpiceUsbBackendDevice *dev, gbool=
ean added)
> +{
> +    // ignore not emulated devices
> +    const UsbDeviceInformation *info =3D spice_usb_backend_device_get_in=
fo(dev);
> +    if (info->bus !=3D BUS_NUMBER_FOR_EMULATED_USB) {
> +        return;
> +    }
> +
> +    if (added) {
> +        g_assert_null(device);
> +        device =3D spice_usb_backend_device_ref(dev);
> +    } else {
> +        g_assert_nonnull(device);
> +        g_assert(device =3D=3D dev);
> +        spice_usb_backend_device_unref(dev);
> +        device =3D NULL;
> +    }
> +}
> +
> +static void multiple(const void *param)
> +{
> +    guint limit =3D GPOINTER_TO_UINT(param);
> +    CdEmulationParams params =3D { "test-cd-emu.iso", 1 };
> +    GError *err =3D NULL;
> +    SpiceUsbBackend * be =3D spice_usb_backend_new(&err);
> +    g_assert_nonnull(be);
> +    g_assert_null(err);
> +    spice_usb_backend_register_hotplug(be, NULL, test_hotplug_callback, =
&err);
> +    g_assert_null(err);
> +    for (int i =3D 0; i < limit; ++i) {
> +        // allocate a CD emulation device
> +        g_assert_true(create_emulated_cd(be, &params, &err));
> +        g_assert_null(err);
> +        g_assert_nonnull(device);
> +
> +        // emulate automatic CD ejection, this should release the
> +        // object
> +        spice_usb_backend_device_eject(be, device);
> +        g_assert_null(device);
> +    }
> +    spice_usb_backend_deregister_hotplug(be);
> +    spice_usb_backend_delete(be);
> +}
> +
> +static void
> +write_test_iso(void)
> +{
> +    uint8_t sector[2048];
> +    FILE *f =3D fopen("test-cd-emu.iso", "wb");
> +    g_assert_nonnull(f);
> +    memset(sector, 0, sizeof(sector));
> +    strcpy((char*) sector, "sector 0");
> +    fwrite(sector, sizeof(sector), 1, f);
> +    fclose(f);
> +}
> +
> +int main(int argc, char* argv[])
> +{
> +    write_test_iso();

We create the iso for testing but we don't remove it. There are a
few things that comes to mind in regards to creating this file
and removing it later that could be a problem. Ideally, we should
have some sort of SPICE_CD_ROM_MOCKING in the source code that
helps with unit test but honestly, i'm happy that we have a test
and it works fine enough form now ;)

Another way around this create but not removing is to use the
g_test_add with _set_up() and _tear_down() functions. That's more
verbose and slower than your approach but if I'm not mistaken,
_tear_down() should be called even if test fails.

> +    g_test_init(&argc, &argv, NULL);
> +
> +    g_test_add_data_func("/cd-emu/simple", GUINT_TO_POINTER(1), multiple=
);
> +    g_test_add_data_func("/cd-emu/multiple", GUINT_TO_POINTER(128), mult=
iple);
> +
> +    return g_test_run();
> +}
> diff --git a/tests/meson.build b/tests/meson.build
> index 6c807762..39eac9c9 100644
> --- a/tests/meson.build
> +++ b/tests/meson.build
> @@ -10,6 +10,10 @@ if spice_gtk_has_phodav
>    tests_sources +=3D 'pipe.c'
>  endif
> =20
> +if spice_gtk_has_usbredir
> +  tests_sources +=3D 'cd-emu.c'
> +endif
> +
>  if spice_gtk_has_polkit
>    tests_sources +=3D [
>      'usb-acl-helper.c',
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--lj5frqiz4as3hall
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1lL+sACgkQl9kSPeN6
SE+MjQ//dj34AOWtS386te/RI4ldJsQ1hZjuQ01k6AFwBucC2SSqIeZ5drRH2oax
rtPBzIzPBp50jB+QJjDJSyxwDiqyy3A9pGgmZbkwslB1SYgjM7pEFUbYr4fxT6jM
yuJXF6q55JqGKhtySU222QZ4egD0LhMOL1lcAULew7MkuQ0lZF3lf0tdgFBbXX0U
Z5SzWqtGTzz9ilkRxpD68RIThgwzjRiQwugxQDCoANTHBDchx1GPevHxb6pDBP2X
JgP++f4EdhFSOqQMhp+lQK/RyLzQQMoApkPcXY5bVqr0lRKVpm4NtKdpuh5/Svt3
XqyxC2ePA+bHDPX3Titm0YYkh0wW9pM4rtayQiCTSCGlPA7gUXNEPpejXW4yGbqD
UJEKb0xDhqwGwUmEY3qYfn+LdFtmBNhpS2DnVIMvA75kuYCHbihJWJPWv5hcxGEC
1aEhttApLj/OSjAjvB3VnN0HH3Z8MWRCoySTSjJY95BEprIwUlU3Z4GitH/NxomV
lpdEzw0oSKxii+FMr3XC/5q8a3G1LRZrT3dNhFih268L//t8lBogHR0EZSWsonkw
N1VHOHy9i/A3h0EIKYxS+IJoGdp+ev62d1FmJzlxAu1A4p4Qq6zXBXZKln9YffRX
AJstfUqAXSm9RvBRBzEloPonSxZT2VzczyQTlSIBuODSYyZd8oU=
=ojkp
-----END PGP SIGNATURE-----

--lj5frqiz4as3hall--

--===============2021010600==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============2021010600==--
