Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E9C7F1C9
	for <lists+spice-devel@lfdr.de>; Fri,  2 Aug 2019 11:42:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8CF56ED8F;
	Fri,  2 Aug 2019 09:42:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C0EC6ED8F
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Aug 2019 09:42:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D9A12308212A
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Aug 2019 09:42:07 +0000 (UTC)
Received: from localhost (unknown [10.32.181.128])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 835915D9D3;
 Fri,  2 Aug 2019 09:42:07 +0000 (UTC)
Date: Fri, 2 Aug 2019 11:42:06 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190802094206.wmwmrtlf62tljyyd@wingsuit>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-4-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190530142254.28937-4-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Fri, 02 Aug 2019 09:42:07 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 04/13] spicevmc: Remove reds
 parameter from spicevmc_device_disconnect
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
Content-Type: multipart/mixed; boundary="===============0644189438=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0644189438==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ggqsa4hq32ywqzjn"
Content-Disposition: inline


--ggqsa4hq32ywqzjn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 30, 2019 at 03:22:45PM +0100, Frediano Ziglio wrote:
> Unused.
> Also the devices should be able to release themselves.

Right,
Acked-by: Victor Toso <victortoso@redhat.com>

>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> ---
>  server/char-device.h | 3 +--
>  server/reds.c        | 2 +-
>  server/spicevmc.c    | 2 +-
>  3 files changed, 3 insertions(+), 4 deletions(-)
>=20
> diff --git a/server/char-device.h b/server/char-device.h
> index 5327c25e5..9700df997 100644
> --- a/server/char-device.h
> +++ b/server/char-device.h
> @@ -237,8 +237,7 @@ void red_char_device_write_buffer_release(RedCharDevi=
ce *dev,
>  RedCharDevice *spicevmc_device_connect(RedsState *reds,
>                                         SpiceCharDeviceInstance *sin,
>                                         uint8_t channel_type);
> -void spicevmc_device_disconnect(RedsState *reds,
> -                                SpiceCharDeviceInstance *char_device);
> +void spicevmc_device_disconnect(SpiceCharDeviceInstance *char_device);
> =20
>  SpiceCharDeviceInterface *spice_char_device_get_interface(SpiceCharDevic=
eInstance *instance);
> =20
> diff --git a/server/reds.c b/server/reds.c
> index 792e98381..7043e4d2a 100644
> --- a/server/reds.c
> +++ b/server/reds.c
> @@ -3379,7 +3379,7 @@ static int spice_server_char_device_remove_interfac=
e(RedsState *reds, SpiceBaseI
>  #endif
>      else if (strcmp(char_device->subtype, SUBTYPE_USBREDIR) =3D=3D 0 ||
>               strcmp(char_device->subtype, SUBTYPE_PORT) =3D=3D 0) {
> -        spicevmc_device_disconnect(reds, char_device);
> +        spicevmc_device_disconnect(char_device);
>      } else {
>          spice_warning("failed to remove char device %s", char_device->su=
btype);
>      }
> diff --git a/server/spicevmc.c b/server/spicevmc.c
> index 460edb04f..bfe3cf6e5 100644
> --- a/server/spicevmc.c
> +++ b/server/spicevmc.c
> @@ -812,7 +812,7 @@ RedCharDevice *spicevmc_device_connect(RedsState *red=
s,
>  }
> =20
>  /* Must be called from RedClient handling thread. */
> -void spicevmc_device_disconnect(RedsState *reds, SpiceCharDeviceInstance=
 *sin)
> +void spicevmc_device_disconnect(SpiceCharDeviceInstance *sin)
>  {
>      g_object_unref(RED_CHAR_DEVICE(sin->st));
>      sin->st =3D NULL;
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--ggqsa4hq32ywqzjn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1EBW4ACgkQl9kSPeN6
SE+9Pg/+LbAjmemPrrqhnYbCobWziOagofEXwuZJmJVuNsGQLRSYTK9TYzwisU2A
GPu9QFrenlpfgRZceQElu9Sz2M/JgJNhsObFluCOThPwsE7nZdzvkcLEdMDqqjKG
QVtcbIXFCwRs6r3LS0/2UI0Sm2sa146WjykW8Hn4VwONbQ7bBLsUCFGzmdx5vVn1
i78NTjey7REFk/6w7kPljndiL882Kde2lqeGHh7ATM9R9QBV/NfWg//CZIs7PgGI
QokLl5ccvQqQXSd7JE4OIsyHFJEGXag0Lb1gHPaH8v3coHyBsjimu/vFQDE07bnX
tB25M3e3nQkIBOpTshyecZ2AB6oDSP1tprU81u+UHwOW4r/nbKsiE3dIRT5H+LqF
4ZqHDyCTwdKFmk8byqcGU/E9YM0JQF+wHr9k5YiCwuz0k84NVt0NXu8r3PHfyit3
sxkV0+Hi7rsksMe4sMr2CUHnBxhkXujBb86JEIOEDzEBzJGYuR356y+pRoDJEaqX
YPykx2UpOKIrGHHrAycdjYX85MLKIYGeKsgZzgJ3McgmaQ5dsUxNgKNEom1InFIG
tXQHVFsFwrtSgHNonLfeItmw2EK2vbPPDfVJmGHsqC1MQHQVR9Tv6dZ51npPpPjy
j21YACiPEnpWvyHAlKWajMGI3v8LPUYyMkjgRW/IHgdnEd/ez/E=
=25dh
-----END PGP SIGNATURE-----

--ggqsa4hq32ywqzjn--

--===============0644189438==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0644189438==--
