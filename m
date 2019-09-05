Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD62AA415
	for <lists+spice-devel@lfdr.de>; Thu,  5 Sep 2019 15:15:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D1DC6E082;
	Thu,  5 Sep 2019 13:15:11 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E1296E082
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Sep 2019 13:15:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9D127307D942
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Sep 2019 13:15:09 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 42DDF5D9E5;
 Thu,  5 Sep 2019 13:15:08 +0000 (UTC)
Date: Thu, 5 Sep 2019 15:15:08 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190905131508.cpeo67ytt5w3g4xl@wingsuit>
References: <20190905100245.2244-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190905100245.2244-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Thu, 05 Sep 2019 13:15:09 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk 1/2] channel-usbredir: Rename
 spice_usbredir_write_callback
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
Content-Type: multipart/mixed; boundary="===============0759153511=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0759153511==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rdv6gcpsijibqnx3"
Content-Disposition: inline


--rdv6gcpsijibqnx3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Sep 05, 2019 at 11:02:44AM +0100, Frediano Ziglio wrote:
> Remove "_callback" suffix.
> The function is called directly, no much reasons to keep that
> suffix.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
Acked-by: Victor Toso <victortoso@redhat.com>
> ---
>  src/channel-usbredir-priv.h | 2 +-
>  src/channel-usbredir.c      | 2 +-
>  src/usb-backend.c           | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/src/channel-usbredir-priv.h b/src/channel-usbredir-priv.h
> index a36f5d9b..1230628c 100644
> --- a/src/channel-usbredir-priv.h
> +++ b/src/channel-usbredir-priv.h
> @@ -70,7 +70,7 @@ void spice_usbredir_channel_get_guest_filter(
>                            int                                *rules_coun=
t_ret);
> =20
>  /* Callback for USB backend */
> -int spice_usbredir_write_callback(SpiceUsbredirChannel *channel, uint8_t=
 *data, int count);
> +int spice_usbredir_write(SpiceUsbredirChannel *channel, uint8_t *data, i=
nt count);
> =20
>  G_END_DECLS
> =20
> diff --git a/src/channel-usbredir.c b/src/channel-usbredir.c
> index 8d4cd664..0a711c25 100644
> --- a/src/channel-usbredir.c
> +++ b/src/channel-usbredir.c
> @@ -572,7 +572,7 @@ static int try_write_compress_LZ4(SpiceUsbredirChanne=
l *channel, uint8_t *data,
>  #endif
> =20
>  G_GNUC_INTERNAL
> -int spice_usbredir_write_callback(SpiceUsbredirChannel *channel, uint8_t=
 *data, int count)
> +int spice_usbredir_write(SpiceUsbredirChannel *channel, uint8_t *data, i=
nt count)
>  {
>      SpiceMsgOut *msg_out;
> =20
> diff --git a/src/usb-backend.c b/src/usb-backend.c
> index cfd14e2c..dbc96194 100644
> --- a/src/usb-backend.c
> +++ b/src/usb-backend.c
> @@ -614,7 +614,7 @@ static int usbredir_write_callback(void *user_data, u=
int8_t *data, int count)
>      SpiceUsbBackendChannel *ch =3D user_data;
>      int res;
>      SPICE_DEBUG("%s ch %p, %d bytes", __FUNCTION__, ch, count);
> -    res =3D spice_usbredir_write_callback(ch->user_data, data, count);
> +    res =3D spice_usbredir_write(ch->user_data, data, count);
>      return res;
>  }
> =20
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--rdv6gcpsijibqnx3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1xClsACgkQl9kSPeN6
SE+TKhAArlfclfmhPqvkINP/cuwX31jrrlMPAkYdW720KC56kVUFMVhwGooLgT4a
abg0tLiXqDmJhET0HvUoP7O3kmltxQSQqY73Y8HUGSRqyk8r3rFC1v/l8XU6y/IU
u5SkR561bLj7hTl9IDIdpLUXFvXzhOe/CHaM/Fpl7SQ+cfHdosAFwlDX9KEoO4Ss
u4yhgkoSZj2oEu6sm7uQDh8HiVj1IZMoybot2HC0DiYGvJCu0dozDiPVpeJawRtq
+Qx1PzV5vQXYAGay50sPmxJPvUbN9yE3D44J6U9ghbOhW+ycgIiFJFeMweFFsF1A
zgoxTNjHYWp4bZwaq4SDAjRDuA6oQQYHJZJjAdvVSMVBnN3y4TbQBM0ln01lN3F4
cUR6Jpa6OE8z375tw6+EwxxXopY58dRlAOYGEp1+oG0otAnhdUTHpAGQTz6swbcS
Tz7dXKXoMMd9fV4mOWOl1jiatmOwZRgkYr/DAa2GAO4wGGofB9KgdFerN/IRRK2F
OFil6PThYxnV4nmb2iJDltXB0gBSmvogz3gk/pi+O8Zp8XBjSxwscmfrP1Duj/mN
cXemO8WCpp9tCuOaKtvOEqgy5u/NPMQZuUiHUHi8U+waFFVqIOaJ6gyk+KlAdLbV
wXwuUQDgzWMbZ2F/8BrdYNxLKrH84/hGQ3i3xgICW2GXr9xdcJ0=
=VOHy
-----END PGP SIGNATURE-----

--rdv6gcpsijibqnx3--

--===============0759153511==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0759153511==--
