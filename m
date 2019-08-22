Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F309998CA0
	for <lists+spice-devel@lfdr.de>; Thu, 22 Aug 2019 09:51:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EC116EA6C;
	Thu, 22 Aug 2019 07:51:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A1316EA6C
 for <spice-devel@lists.freedesktop.org>; Thu, 22 Aug 2019 07:51:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 360BE10C6967
 for <spice-devel@lists.freedesktop.org>; Thu, 22 Aug 2019 07:51:26 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D4A4060127;
 Thu, 22 Aug 2019 07:51:25 +0000 (UTC)
Date: Thu, 22 Aug 2019 09:51:25 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190822075125.mbwobxd7ojzdkgmn@wingsuit>
References: <20190822073056.12480-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190822073056.12480-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.65]); Thu, 22 Aug 2019 07:51:26 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] stat-file: Use proper macro
 for container computation
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
Content-Type: multipart/mixed; boundary="===============0317391642=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0317391642==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="z3sv4kskp627esil"
Content-Disposition: inline


--z3sv4kskp627esil
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 22, 2019 at 08:30:56AM +0100, Frediano Ziglio wrote:
> This is currently more style patch as the "value" field is the
> first field of SpiceStatNode structure, so has offset 0. However
> to compute the containing structure it better to use the proper
> macro to avoid confusion.
> If the offset won't be 0 the subtraction would compute the
> wrong pointer as the offset is expressed in bytes but the
> element size are uint64_t.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> ---
>  server/stat-file.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/server/stat-file.c b/server/stat-file.c
> index 4228be310..38c393389 100644
> --- a/server/stat-file.c
> +++ b/server/stat-file.c
> @@ -233,6 +233,6 @@ void stat_file_remove_node(RedStatFile *stat_file, St=
atNodeRef ref)
> =20
>  void stat_file_remove_counter(RedStatFile *stat_file, uint64_t *counter)
>  {
> -    stat_file_remove(stat_file, (SpiceStatNode *)(counter - SPICE_OFFSET=
OF(SpiceStatNode, value)));
> +    stat_file_remove(stat_file, SPICE_CONTAINEROF(counter, SpiceStatNode=
, value));

Sure,
Acked-by: Victor Toso <victortoso@redhat.com>

>  }
>  #endif
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--z3sv4kskp627esil
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1eSX0ACgkQl9kSPeN6
SE/zMQ//Y4LFONhC1dP9dDMZk+ubIDRFdpQxJMWQmEo6Qa3Iw4jm/gA4BJpvDFzp
0AJ+XVOZk10KOK35NkTJv7Y20d43XZUjilXWZCGBYeedJ9Xa1J/0sYgxMZfpsaHJ
v14+ZkSvSk3u6B2CJTtkBFaSx6/ZPXpQhM3UhuQ29xeVMCAOcYIBlThHgxGWc4sv
cYxN7N8OuLLEwm32bcSsnueBwIQkY2UdsLLomCPj9oth20CXkbU2sBGm8q186Zke
GQ4Gt1mlzl1r9+n+fl5bTky+rmATBw0FGLmaG1Gzvm0p4Mx2eevwrHDcpsL2xFdw
xaEyHNrZbmGHzLe4snJJigxMbe+CiLX0vyKfSHsR0srYcF9Hc/Gik4DIPwBfpDdo
PUrBGFiC3V6QqbA0rWKV8knok0IzSheI2cN5tttZiobplykFbuakK+EL1qceuyzX
/TYVO26W3rYlmZMmHphYaPVS4Lt5mL/TfMdQNk6HiecgW6XCInDHXQr1xRUU4jBc
Ae67tQIDT/sljaGdVEnedf5vLpa3sOBsSYtElo02v5S651xON4y7KMQdNBQjgX16
GZGcOWSDhNH/8lOIPVRHyjRySWjM4h50Ec2gA5ufURQPae2GA/oeC09Q8LzfKdWw
OJfAmu9TY07RflRr+3NEx3cTAopi/G9TWU9L2Mm1c8HAztdKH/Y=
=RvBL
-----END PGP SIGNATURE-----

--z3sv4kskp627esil--

--===============0317391642==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0317391642==--
