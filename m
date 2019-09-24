Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 318FEBCAFF
	for <lists+spice-devel@lfdr.de>; Tue, 24 Sep 2019 17:19:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BEA16E283;
	Tue, 24 Sep 2019 15:19:42 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D2E76E283
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Sep 2019 15:19:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D0A9A3058E0A
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Sep 2019 15:19:40 +0000 (UTC)
Received: from localhost (unknown [10.32.181.60])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7DB1F60852;
 Tue, 24 Sep 2019 15:19:40 +0000 (UTC)
Date: Tue, 24 Sep 2019 17:19:39 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190924151939.zemlv37es2wgrklg@wingsuit>
References: <20190924150027.28954-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190924150027.28954-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Tue, 24 Sep 2019 15:19:40 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] spicevmc: Fix g_object_new
 call for 32 bit machines
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
Content-Type: multipart/mixed; boundary="===============1591354315=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1591354315==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fvjpo2kcwt6htac2"
Content-Disposition: inline


--fvjpo2kcwt6htac2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 24, 2019 at 04:00:27PM +0100, Frediano Ziglio wrote:
> "self-tokens" property is 64 bit and must be passed as 64 bit on
> 32 bit machines to avoid memory corruptions.
> This was introduced by 01de3b8922 ("spicevmc: Avoids DoS if
> guest device is not able to get data faster enough"), detected by CI.
>=20
> It caused this error (split into multiple lines):
>=20
>   (./test-leaks:15879): GLib-GObject-CRITICAL **: 14:03:59.650: \
>   g_object_new_is_valid_property: object class 'RedCharDeviceSpiceVmc' ha=
s \
>   no property named '\xb0/@\xf3\u0001'
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
Acked-by: Victor Toso <victortoso@redhat.com>
> ---
>  server/spicevmc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/server/spicevmc.c b/server/spicevmc.c
> index f01d5416..325c3fe1 100644
> --- a/server/spicevmc.c
> +++ b/server/spicevmc.c
> @@ -942,7 +942,7 @@ red_char_device_spicevmc_new(SpiceCharDeviceInstance =
*sin,
>                          "sin", sin,
>                          "spice-server", reds,
>                          "client-tokens-interval", 0ULL,
> -                        "self-tokens", 128, // limit number of messages =
sent to device
> +                        "self-tokens", UINT64_C(128), // limit number of=
 messages sent to device
>                          "channel", channel,
>                          NULL);
>  }
> --=20
> 2.21.0
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--fvjpo2kcwt6htac2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2KNAsACgkQl9kSPeN6
SE+Olg//cRzjlUTdXZDOPRPhQjFFrzGHDTaddlZ88XJe0D3qgthU7H63+W0psA3a
nwv1/2hwB+1fBTC9TBwR2SOMIhanr5tYCZDqkOKEkZusu4Pv70G1FH0U7Sa4H576
oAdNGjSYPQuW09rzUyVlWVgZzHyP7/sRJYOv4Abt95eHuRQBxgQ7yZd2UfZbbR+1
+1B30j1QoqmEAtTknDuwIb2WpsAOOt7wjJPguDWSNdS8X2oRSH+ybCfkFs0jSiRq
cqNBef3XIJk0X3QquPpkK8nPOKp7uOTIQhBiIoZiWxVjYBMlkwSVkLc6a8T0Zwjo
ofu3jLpbLD9+xaM8nt9TFtjjg/O2XMZjg/BJXmPSryLm1pDFul+x769uUS8keQ0t
JS3/oAL0dYkXqXmfaWDXBmHvkdXT4Q6dKzeMJ6vYLr9VU0FDAJDOfeDNrhR9xJ5a
8xPUF9QQE1FxNDNJdc+Yh7BenIH11BHXIYCnoXTjfnobb02a7sCcsL6QHqkfxN0a
25hHCON3/rIf3S92TCM2ni5z6ZkYA/PwLeMnn/ZfOlpAb1HByWdfxBrHrSCgMApT
dc6MEE/32AukPtjJSHUj8imRBhRD9tAQcNd8HxwcnOUro12qk7PW98AxoufhMAlU
XssDBAy/wvW1BXC6g7zEgScPbX+3wQUkSu7vQJ9TjmcrRtHusEQ=
=KOeY
-----END PGP SIGNATURE-----

--fvjpo2kcwt6htac2--

--===============1591354315==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1591354315==--
