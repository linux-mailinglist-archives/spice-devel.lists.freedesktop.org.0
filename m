Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71636643C6
	for <lists+spice-devel@lfdr.de>; Wed, 10 Jul 2019 10:47:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E87656E0C9;
	Wed, 10 Jul 2019 08:47:19 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55E0C6E0C9
 for <spice-devel@lists.freedesktop.org>; Wed, 10 Jul 2019 08:47:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E871130BD1B3
 for <spice-devel@lists.freedesktop.org>; Wed, 10 Jul 2019 08:47:18 +0000 (UTC)
Received: from localhost (unknown [10.32.181.70])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 928A71001B02;
 Wed, 10 Jul 2019 08:47:18 +0000 (UTC)
Date: Wed, 10 Jul 2019 10:47:17 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190710084717.calvp2yqzrjo3kjb@wingsuit>
References: <1321EDAF-9A69-490E-955D-2FD0AF7EB8FF@redhat.com>
 <20190617163456.12359-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190617163456.12359-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Wed, 10 Jul 2019 08:47:18 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server v2] spice-char: Add some
 documentation to SpiceCharDeviceInterface
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
Content-Type: multipart/mixed; boundary="===============1459204604=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1459204604==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="luaywi5s4t637mks"
Content-Disposition: inline


--luaywi5s4t637mks
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 17, 2019 at 05:34:56PM +0100, Frediano Ziglio wrote:
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> ---
>  server/spice-char.h | 26 ++++++++++++++++++++++++++
>  1 file changed, 26 insertions(+)
>=20
> Changes since v1:
> - updated comments
>=20
> diff --git a/server/spice-char.h b/server/spice-char.h
> index 1a8a031d2..a3b9d26bf 100644
> --- a/server/spice-char.h
> +++ b/server/spice-char.h
> @@ -40,9 +40,35 @@ typedef enum {
>  struct SpiceCharDeviceInterface {
>      SpiceBaseInterface base;
> =20
> +    /* Set the state of the device.
> +     * connected should be 0 or 1.
> +     * Setting state to 0 causes the device to be disabled.
> +     * This can be used by SPICE server to tell guest that device is not
> +     * working anymore (for instance because the guest itself sent some
> +     * wrong request).
> +     */
>      void (*state)(SpiceCharDeviceInstance *sin, int connected);
> +
> +    /* Write some bytes to the character device.
> +     * Returns bytes copied from buf or a value < 0 on errors.
> +     * If able to write some bytes the function should return the amount=
 of
> +     * bytes successfully written.
> +     * Function can return a value < len, even 0.
> +     * errno is not determined after calling this function.
> +     * Function should be implemented as no-blocking.
> +     * A len < 0 causes indeterminate results.
> +     */
>      int (*write)(SpiceCharDeviceInstance *sin, const uint8_t *buf, int l=
en);
> +
> +    /* Read some bytes from the character device.
> +     * Returns bytes copied into buf or a value < 0 on errors.
> +     * Function can return 0 if no data is available or len is 0.
> +     * errno is not determined after calling this function.
> +     * Function should be implemented as no-blocking.
> +     * A len < 0 causes indeterminate results.
> +     */
>      int (*read)(SpiceCharDeviceInstance *sin, uint8_t *buf, int len);
> +
>      void (*event)(SpiceCharDeviceInstance *sin, uint8_t event);

Poor event!

Acked-by: Victor Toso <victortoso@redhat.com>

>      spice_char_device_flags flags;
>  };
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--luaywi5s4t637mks
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl0lphUACgkQl9kSPeN6
SE/DlA/+NvHOYeJtsy7fV3o87qFIOhYaLDyxpyA68JaOnhWw1zCgS+MBrEqmQd3l
XMyAaAGJcaQZwzrDoQjIEUJYyH465EEPxmUA+BV224JaHQNnXLoM9TuHXEIOD43l
KZ8lsbF1beCujYLZJ63rMEZd10tFbdySyz7RMhSneRdiVw073LTtQfqZveMp5gu4
MftNGrcmR8BM5OlbyU6pffdiqq2RiZ3yKNWg5+B2s6niU/iOJySKaTgmxvyhjHlW
LVqC7MtNS6Rv43LN9/jk0j2bdrnNU90odMMC8OhYXZF9VhhlnaP1WhxjCKl6Csq3
RE27EN/8sX4UyLrGmP837tGstqOxG7fAiOh/vYDkar8RMvaHs8sJv+EsK+S5tPyI
LwrTPIlllGRiWmGEh6ztG8sZya16JD49+vTjRNCqCLosyanjocw7dZlgd9hflstO
IFfxXwPBKplmd2iNEkY3PEYYXSoL9v/1r0SeW0B5ugvVinHG/JzWxQxLINl5n574
GQ7S+vf3AKHS4mNzCSCdPlK3eySaYyhy3X3HxFl4ELBv0zQRq8n8I7dHAQ7UCnF/
gzxa8u/yrVG851O4ge1Q2GmpBGq0kWUuHC85e2lAPC77SLsccaa//ejOAhZkrnYt
7AR4aA58CiDnTOPYDoHAJRVt56dlmIwjFuA3zGyB6kNA7K8AF9Y=
=032D
-----END PGP SIGNATURE-----

--luaywi5s4t637mks--

--===============1459204604==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1459204604==--
