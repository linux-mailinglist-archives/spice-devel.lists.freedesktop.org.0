Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD26F1A9
	for <lists+spice-devel@lfdr.de>; Tue, 30 Apr 2019 09:52:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32A1489496;
	Tue, 30 Apr 2019 07:52:44 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F28CF89498
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 07:52:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9284D59463
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 07:52:42 +0000 (UTC)
Received: from localhost (unknown [10.32.181.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 37E2E61544;
 Tue, 30 Apr 2019 07:52:40 +0000 (UTC)
Date: Tue, 30 Apr 2019 07:52:40 +0000
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190430075240.gnt6kmuxckzxyruq@toolbox>
References: <20190429152532.19411-1-fziglio@redhat.com>
 <20190429152532.19411-2-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190429152532.19411-2-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Tue, 30 Apr 2019 07:52:42 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server v3 2/2] build: Prepare for
 0.14.2 release
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
Content-Type: multipart/mixed; boundary="===============1039521459=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1039521459==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qxkgv5hjftq6n5ad"
Content-Disposition: inline


--qxkgv5hjftq6n5ad
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Apr 29, 2019 at 04:25:32PM +0100, Frediano Ziglio wrote:
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> ---
>  NEWS         | 21 +++++++++++++++++++++
>  configure.ac |  6 +++---
>  meson.build  |  6 +++---
>  3 files changed, 27 insertions(+), 6 deletions(-)
>=20
> Changes since v2:
> - add a note for keyboard fix
>=20
> diff --git a/NEWS b/NEWS
> index 403df63c..168e20d0 100644
> --- a/NEWS
> +++ b/NEWS
> @@ -1,3 +1,24 @@
> +Major Changes in 0.14.2:
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +
> +Main changes are support for Meson build and graphic device info
> +messages allowing to better support multi-monitor configurations.
> +
> +* CVE-2019-3813: fix off-by-one error in group/slot boundary check
> +* support H265 in stream-channel
> +* add support for building with meson/ninja
> +* minor tests fixes improving CI
> +* set char device state for smartcard, allowing Qemu optimization
> +* improve red-parse-qxl.c interface making it more consistent
> +* add some instrumentation for streaming device
> +* QXL interface: add a function to identify monitors in the guest
> +  (spice_qxl_set_device_info)
> +* add support for GraphicsDeviceInfo messages
> +* video-stream: prevent crash on stream reattach
> +* make channel client callbacks virtual functions
> +* bumped minimum required glib version to 2.38
> +* attempt to have a reliable led state for keyboard modifiers
> +
>  Major Changes in 0.14.1:
>  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> =20
> diff --git a/configure.ac b/configure.ac
> index 4a470427..1ce81f91 100644
> --- a/configure.ac
> +++ b/configure.ac
> @@ -12,9 +12,9 @@ AC_PREREQ([2.57])
>  #   then set age to 0.
>  #
>  dnl TODO see server/spice-char.h TODO comment for API breakage
> -m4_define([SPICE_CURRENT], [13])
> -m4_define([SPICE_REVISION], [5])
> -m4_define([SPICE_AGE], [12])
> +m4_define([SPICE_CURRENT], [14])
> +m4_define([SPICE_REVISION], [0])
> +m4_define([SPICE_AGE], [13])

Looks fine, (small reminder that It needs to push the keyboard
modifiers patch first)

Acked-by: Victor Toso <victortoso@redhat.com>

>  AC_INIT(spice, [m4_esyscmd(build-aux/git-version-gen .tarball-version)],
>          [spice-devel@lists.freedesktop.org], spice)
> diff --git a/meson.build b/meson.build
> index 2951561f..a5039882 100644
> --- a/meson.build
> +++ b/meson.build
> @@ -27,9 +27,9 @@ run_command('build-aux/meson/check-spice-common', check=
 : true)
>  #   then set age to 0.
>  #
>  #
> -spice_server_current =3D 13
> -spice_server_revision =3D 5
> -spice_server_age =3D 12
> +spice_server_current =3D 14
> +spice_server_revision =3D 0
> +spice_server_age =3D 13
>  spice_server_so_version =3D '@0@.@1@.@2@'.format(spice_server_current - =
spice_server_age,
>                                                 spice_server_age,
>                                                 spice_server_revision)
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--qxkgv5hjftq6n5ad
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAlzH/sgACgkQl9kSPeN6
SE/cnQ/+JI1Ed9gXFamXG1RblJVOnLxwqyoLvc0bMG5amfHiqu9+zBE2vZvTwdvF
TQx0XtvA1a2SpjytQzI9GOxr1xZpq2L110L5BQFa6T6I6nFRsQig/4fyK7amxhrC
0LUFrNHFca4wEZtvjhT8ehJcgmnOF2nw8sskOFoJhOR+srsbwD+StM0sOjgi3KU4
FJ94t9DkTphcgBujO9AU/p7dt4Mm2CSRFqTpkcnqVNB/cQBkAH7O0QHONQT00uLO
E/QcDQLYvTmCIpguN4tNYSv8Ed/aYO2aKeJXfW0XXFF9XFwTG4eVNtqk9CJGwWaP
2DvSM4qdTHZ67zFrBsglhS27qgSdSx0ljvJNRAFZShYNWKVnwGJ616KsT+DnB6Dp
tf+dTleDGfxm7ULnta62dsPYuVfSuoVEX66/qBwJU9U4nB0XKd26luz9pNgz7rS2
ow04GZMyLQGh44dpEPYwja0FNVVa9OtUSJCn+MMGEq6uPSWTFUolxzVKfX6uM49o
Al5585MMwRm3F0dI0OfHcqrOaTCSGlavhrD1rbUnFv3JAhopYf/gI6oa7t25M6pq
DjYPhNT83ZQkqiFwchmGr5yCCHXBWg8DShzXPOc8DlWn3ZI5GpS2eBUACprP2pXe
2O5wCPyHqfCwHCT+3EQxzg4KBHcZhfB3lhTKe924uN25XZ2hhLE=
=Nhv+
-----END PGP SIGNATURE-----

--qxkgv5hjftq6n5ad--

--===============1039521459==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1039521459==--
