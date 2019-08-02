Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 818D57F4CC
	for <lists+spice-devel@lfdr.de>; Fri,  2 Aug 2019 12:11:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 109ED6EDA6;
	Fri,  2 Aug 2019 10:11:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B3BB6EDA6
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Aug 2019 10:11:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B978930832DC
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Aug 2019 10:11:56 +0000 (UTC)
Received: from localhost (unknown [10.32.181.128])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6738F5D712;
 Fri,  2 Aug 2019 10:11:55 +0000 (UTC)
Date: Fri, 2 Aug 2019 12:11:55 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190802101155.kcuewlpjwbijv3xr@wingsuit>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-11-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190530142254.28937-11-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Fri, 02 Aug 2019 10:11:56 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 11/13] red-channel: Remove
 unused declaration
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
Content-Type: multipart/mixed; boundary="===============1566160644=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1566160644==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="pwdjbhyzflybs5nx"
Content-Disposition: inline


--pwdjbhyzflybs5nx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Pushed already but fine!

On Thu, May 30, 2019 at 03:22:52PM +0100, Frediano Ziglio wrote:
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> ---
>  server/red-channel.h | 1 -
>  1 file changed, 1 deletion(-)
>=20
> diff --git a/server/red-channel.h b/server/red-channel.h
> index 4bfd81ee1..eb16bd4b8 100644
> --- a/server/red-channel.h
> +++ b/server/red-channel.h
> @@ -47,7 +47,6 @@ typedef struct MainChannelClient MainChannelClient;
> =20
>  typedef bool (*channel_handle_message_proc)(RedChannelClient *rcc, uint1=
6_t type,
>                                              uint32_t size, void *msg);
> -typedef bool (*channel_configure_socket_proc)(RedChannelClient *rcc);
>  typedef void (*channel_send_pipe_item_proc)(RedChannelClient *rcc, RedPi=
peItem *item);
> =20
>  typedef bool (*channel_handle_migrate_flush_mark_proc)(RedChannelClient =
*base);
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--pwdjbhyzflybs5nx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1EDGsACgkQl9kSPeN6
SE+feg//ZnYk1UP4whc3Khd9HKuMJZftK4KhrwQom5hKB96TdFnN9NT183LJZclH
Nlxqzxq1nIZTBymRzWddF0T8Fqftp9+hcYegyYZoDYvGNJZzCjyvpF9OCMV/dIVU
mfkE+VuBShY7UormVDriHuj9c3c9o+lNcv6rBjGk3TbO6EQE93c3toIZPQeFnupU
UFmpn3YuCWKsH0LJZ1ECSzoH75BaTx2Ns9UGt8y46aSyc7FXmdomWEC9VQueMg+d
wtj6Dxa/PJaYa4swqq0iu0YhXjGJMsD1js+nFEqWU+wyH7oxB0ErYJhF/YaZNxZy
rX5LVfC61lfpsV57i2MDYyZbYfZ0jIpehf0eGEYHaYt0mv5vvOBJ8KSamYUwfZIf
suVz/69JuR8mB0+R4T/AYdDdAxZgBJJKZw+J7icBiHFezAKkr6qINZ88AVZ4JQOz
br+/CbpTMIZYfMl5x9gJZ/LaKKaHXZqywjLTWKtLV1qpF4BuPzJl2p9I999NctjL
oAxuHYIcwSsQzlwxNHfEGFzIZMzCVaM82CNXXNGKUdPhQiYGIvW5RvLh9uOTNTh+
jxwYiGMrunYkyqpj40Au4Km4a/F+7ImsEKFgjc+aZ0eTMGi21EMXnura42g/Y5UT
4rt9SNnlkSDHGxpm6rN7ambaV+EPL/gxrMZEaATTB6YgMVD3aEM=
=366I
-----END PGP SIGNATURE-----

--pwdjbhyzflybs5nx--

--===============1566160644==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1566160644==--
