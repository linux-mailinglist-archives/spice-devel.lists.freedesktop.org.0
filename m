Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F123C9E7DA
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 14:27:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A5E889862;
	Tue, 27 Aug 2019 12:27:23 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A246489862
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 12:27:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 42C67308FC22
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 12:27:21 +0000 (UTC)
Received: from localhost (unknown [10.32.181.212])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DEC7B19D7A;
 Tue, 27 Aug 2019 12:27:20 +0000 (UTC)
Date: Tue, 27 Aug 2019 14:27:20 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190827122720.irrvxbhcjd5ixlao@wingsuit>
References: <20190827092246.10276-1-fziglio@redhat.com>
 <20190827092246.10276-15-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190827092246.10276-15-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Tue, 27 Aug 2019 12:27:21 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk v4 14/29] fixup! usb-redir: add
 implementation of emulated CD device
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
Content-Type: multipart/mixed; boundary="===============1064298965=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1064298965==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="yuzgvdoxlppfwcno"
Content-Disposition: inline


--yuzgvdoxlppfwcno
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Aug 27, 2019 at 10:22:31AM +0100, Frediano Ziglio wrote:
> Add comment on constant
> ---
>  src/usb-device-cd.c | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/src/usb-device-cd.c b/src/usb-device-cd.c
> index c33bb290..2234289c 100644
> --- a/src/usb-device-cd.c
> +++ b/src/usb-device-cd.c
> @@ -57,6 +57,7 @@ typedef struct SpiceCdLU {
> =20
>  #define MAX_LUN_PER_DEVICE              1
>  #define USB2_BCD                        0x200
> +/* Red Hat USB VID */

I don't mind adding a comment but perhaps SPICE USB VID instead?

>  #define CD_DEV_VID                      0x2b23
>  #define CD_DEV_PID                      0xCDCD
>  #define CD_DEV_CLASS                    8
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--yuzgvdoxlppfwcno
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1lIagACgkQl9kSPeN6
SE8NXw/+JjGDEM+sQD2OxZXTPimQ4w+IAZjzmvbNYoY/h8kRaGr24ILL7b5EdrPC
VLbGi/5QtAwD0SVqdLwGotso4Z7iU8xRDb0p6OZw1hIbS1ueFxtsAN18JQ49U7td
Wj9vRgAs2Pcyd2gMjpRNIYFqOcmpPZLZaTzpoxaLBbCo75XASg0HOVT87EYpArRf
U10/qHGP1orwNXU0rGr2e7qwwDhZPO2tk7ue9V+TnKsY7NKoztTnOpxpLHS3lz6I
N8EbdF44VVdwcioRkutsDVgu/f/HFp/ao9E4HzjpDoTJr2hPPrl19jK/dEj2n/f3
tSutJn1n3EI6rJLgclPt5CljWYTO8slQX/6PDxzXZYjLZLbKFejPIz5HaSVyn5J4
AoSYss3sxyy8FECSr7Qu8Larn72Eti0JXyzKkvC+KtqITC7nwvdez3Hd6Bl8UP28
GQFKSQbJ54k1OcC8FVkdJo1f405KwFV91paXReH/tvJnMUHoJa9OJ9GJtBvNkmPB
tn2qQU5WsHCZuqCYIWLPVQL/McwwCBb+okXItP4ib/u+lUfve6ZC5DF+RAwqNgdJ
oY/wiCE+FaaC1LdL6KvScYBHT5fur13L1v35Zr5rUG0Vsl0Ht0Ja8Xgcz7GlNpsz
TadVsE+fmrxpgQZJIyJ0HGMtwcw5YYg0rEsf8U640ZSEh4UP29s=
=wvKd
-----END PGP SIGNATURE-----

--yuzgvdoxlppfwcno--

--===============1064298965==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1064298965==--
