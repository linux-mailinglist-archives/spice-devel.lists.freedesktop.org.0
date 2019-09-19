Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC2B9B7A0D
	for <lists+spice-devel@lfdr.de>; Thu, 19 Sep 2019 15:04:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B3536F652;
	Thu, 19 Sep 2019 13:04:13 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84DDB6F652
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 13:04:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2409F328E
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 13:04:11 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C55AE17AE6;
 Thu, 19 Sep 2019 13:04:10 +0000 (UTC)
Date: Thu, 19 Sep 2019 15:04:09 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190919130409.i4ubnvr7lw2obnp3@wingsuit>
References: <20190919101725.20686-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190919101725.20686-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Thu, 19 Sep 2019 13:04:11 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] red-qxl: Make sure we have
 at least one monitor
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
Content-Type: multipart/mixed; boundary="===============0812503934=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0812503934==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="yaati65y5jv7faom"
Content-Disposition: inline


--yaati65y5jv7faom
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 19, 2019 at 11:17:25AM +0100, Frediano Ziglio wrote:
> It does not make sense to have a graphic card without a monitor.
> In spice_qxl_set_max_monitors we prevent to set 0 monitors, do
> the same in spice_qxl_set_device_info.
>=20
> This fixes https://bugzilla.redhat.com/show_bug.cgi?id=3D1691721.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

Acked-by: Victor Toso <victortoso@redhat.com>

> ---
>  server/red-qxl.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/server/red-qxl.c b/server/red-qxl.c
> index 03348270..dbfcd440 100644
> --- a/server/red-qxl.c
> +++ b/server/red-qxl.c
> @@ -804,7 +804,7 @@ void spice_qxl_set_device_info(QXLInstance *instance,
>      }
> =20
>      instance->st->monitors_count =3D device_display_id_count;
> -    instance->st->max_monitors =3D device_display_id_count;
> +    instance->st->max_monitors =3D MAX(1u, device_display_id_count);
> =20
>      reds_send_device_display_info(red_qxl_get_server(instance->st));
>  }
> --=20
> 2.21.0
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--yaati65y5jv7faom
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2DfMkACgkQl9kSPeN6
SE/yNA/8CI6klNnd/H2sgaYiTl+goed9SzIBu5lwR+ucjVsEu003RYadPA0SVcTP
LIx9GnwpW8JmFRw6cNAnYITlQHLwanoJHHEsfefKYV11u1IpouY+UY1wOP0dt+oq
GjXM7L0OB1pbHL78gJcaeEN37eLtbkuSu+lJTrJ+Z8le2q9W8xe89R5WhqPHPYN3
S3QOwX+S2jC0ApC/ZIQVWASYgOPKyJaiiBVhfkH1PTA/4SGGhfxPF5Z5aG/N5rLh
zC0KdOkBKM/XdDMlQnpEYtXSI6aVHXVB4M92yAwXMmD0F+9+rI96cUdJXluKLeUF
XrTCFICgS0js8xFr0kz/aWUePiX10jU5QnJu2jbDTABZcTurHwG01HUJhoVErmIz
Va44cvmdP0jXGIbgpiz7yLnoBDs83JUtZSrlD+A3BxdxLPiBKZOWMyKUAkJkQ7Wd
8u38Ei58dM1ttZeuvMKgYV50Ok2b2ynxjWXakF3asYfmrmrdKsMBJyO+TLgQQ9Yj
L2Hpx2wHo3V2tH0t+UJjG723GTo/qX5I6S53mixMzxszuRtx1iPsc4GBMlqe4r2i
rmK9XxuhxU2v+SSbzTIR3ccJRdhGMM0wnFxNtjDLn7RmAyrwt2G8wcltwKJlsNgd
I43Ut5XVX2pgeWzFJUm7jsZsvcWZOS9bBwemEJ8EMxYV2vY12yA=
=mzyE
-----END PGP SIGNATURE-----

--yaati65y5jv7faom--

--===============0812503934==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0812503934==--
