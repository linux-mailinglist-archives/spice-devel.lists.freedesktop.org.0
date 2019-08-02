Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E197F23E
	for <lists+spice-devel@lfdr.de>; Fri,  2 Aug 2019 11:47:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 520B56ED95;
	Fri,  2 Aug 2019 09:47:48 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 395316ED94
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Aug 2019 09:47:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id DBF362E95AC
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Aug 2019 09:47:46 +0000 (UTC)
Received: from localhost (unknown [10.32.181.128])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 89F2210016EA;
 Fri,  2 Aug 2019 09:47:46 +0000 (UTC)
Date: Fri, 2 Aug 2019 11:47:45 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190802094745.yarwf7fj5ogptrmh@wingsuit>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-8-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190530142254.28937-8-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Fri, 02 Aug 2019 09:47:46 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 08/13] cache-item: Remove
 unused define
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
Content-Type: multipart/mixed; boundary="===============0035071304=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0035071304==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="sgyxzf7vc4ojyqu2"
Content-Disposition: inline


--sgyxzf7vc4ojyqu2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, May 30, 2019 at 03:22:49PM +0100, Frediano Ziglio wrote:

A good verbose detective would say "Since commit x1y2z3", but
happy to have it as is too ;)

> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> ---
>  server/cache-item.tmpl.c | 3 ---
>  1 file changed, 3 deletions(-)
>=20
> diff --git a/server/cache-item.tmpl.c b/server/cache-item.tmpl.c
> index 6968d20db..f9418f990 100644
> --- a/server/cache-item.tmpl.c
> +++ b/server/cache-item.tmpl.c
> @@ -24,7 +24,6 @@
>  #define CACHE_HASH_SIZE CURSOR_CACHE_HASH_SIZE
>  #define FUNC_NAME(name) red_cursor_cache_##name
>  #define VAR_NAME(name) cursor_cache_##name
> -#define CHANNEL CursorChannel
>  #define CHANNELCLIENT CursorChannelClient
> =20
>  #elif defined(CLIENT_PALETTE_CACHE)
> @@ -34,7 +33,6 @@
>  #define CACHE_HASH_SIZE PALETTE_CACHE_HASH_SIZE
>  #define FUNC_NAME(name) red_palette_cache_##name
>  #define VAR_NAME(name) palette_cache_##name
> -#define CHANNEL DisplayChannel
>  #define CHANNELCLIENT DisplayChannelClient
>  #else
> =20
> @@ -126,5 +124,4 @@ static void FUNC_NAME(reset)(CHANNELCLIENT *channel_c=
lient, long size)
>  #undef CACHE_HASH_SIZE
>  #undef FUNC_NAME
>  #undef VAR_NAME
> -#undef CHANNEL

Acked-by: Victor Toso <victortoso@redhat.com>

>  #undef CHANNELCLIENT
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--sgyxzf7vc4ojyqu2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1EBsEACgkQl9kSPeN6
SE+D4w/+KFGMezePN7EiLYFBotyBgl6KjNLUCNXE+GvWju8SfCBajcPCAzhG2Mty
AUOA6Xi3QN7sFwgnOJxID3n58AVZs89ev0EnEnpbYPPsmi1OuHxMZZChBHO1KdPA
NLvNXFicrOFlpDnGzha8RdngHqCyG7h1z389rLfbqOGIjAf3ye2BrAtDF79uFEEj
0DnOosFqG9iGLdQ8gf5XIOGEqRLSo8Q+Rz/qe4RYTsVSms1Vfd+2rPOlH8PTPikt
pKNH17RWsE0GCdT3kFeKxL2n/e6DwuuwH8hIakbdeevCi3nPn5VTgjiFN/BY42rA
FvHcODcInSrTssyKoZsAP8IEKhw2ykDh+RhSgajwJ8Zys6d51F9wIMMGRl7CaupQ
OA5VTeUYCECE5HaK/40o3nqIdMVKwAcZ60FSxBbgja2UMba4mEN3/M8WmhTJoX6v
cYIm/Jt6STYfrItWEcpt6rk30dGApLaOS9XpnnU/Sty2VxME37t4ueNEQfC1nAc/
V0XoCzwFHCECbv9DrhrJgWacVIcVdJVqQ1zIyixgmq6GJ1E3CHyE7ZsIalPwClIr
gcZhlbq1oL0xLjTxICyLoReUOxtDOrxVeWKURC6OJmynpV5KyHBNhOqwu97F9ih0
chLCMLtZajSIYYDNr06w3vHF+IIe0IiTakv2jzv1gBE/lkGrVmM=
=SL9M
-----END PGP SIGNATURE-----

--sgyxzf7vc4ojyqu2--

--===============0035071304==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0035071304==--
