Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 278CA7F035
	for <lists+spice-devel@lfdr.de>; Fri,  2 Aug 2019 11:19:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AFD26ED74;
	Fri,  2 Aug 2019 09:19:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83DEB89803
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Aug 2019 09:19:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id F18065AFD9
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Aug 2019 09:19:26 +0000 (UTC)
Received: from localhost (unknown [10.32.181.128])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9AB675C205;
 Fri,  2 Aug 2019 09:19:26 +0000 (UTC)
Date: Fri, 2 Aug 2019 11:19:25 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190802091925.hoief3u2pckeminw@wingsuit>
References: <20190722110841.31711-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190722110841.31711-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Fri, 02 Aug 2019 09:19:27 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 1/3] glz-encoder-dict: Remove
 useless __packed__ attribute
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
Content-Type: multipart/mixed; boundary="===============0955442537=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0955442537==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fo4jbjdhrbihrtok"
Content-Disposition: inline


--fo4jbjdhrbihrtok
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jul 22, 2019 at 12:08:39PM +0100, Frediano Ziglio wrote:
> The structure has no holes, adding this attribute could only
> decrease efficiency.

Why does it decrease efficiency?

> Note that HashEntry structure is used for a large (8MB) array so
> this won't affect much possible container size.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> ---
>  server/glz-encoder-priv.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/server/glz-encoder-priv.h b/server/glz-encoder-priv.h
> index 08dc007ce..7757f232c 100644
> --- a/server/glz-encoder-priv.h
> +++ b/server/glz-encoder-priv.h
> @@ -76,7 +76,7 @@ struct WindowImageSegment {
>  };
> =20
> =20
> -struct  __attribute__ ((__packed__)) HashEntry {
> +struct HashEntry {
>      uint32_t image_seg_idx;
>      uint32_t ref_pix_idx;
>  };
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--fo4jbjdhrbihrtok
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1EAB0ACgkQl9kSPeN6
SE9kDA//ZL3ksmYVlUYVDL/0KkC9hEj9e8E1h8k8I20ysflKTWr0wKzt8mL+D9Cl
Jdi0cjsmNxrxQ4a/g28+O9lYrDO03XCwOhRxtbcIdROzV5XCKjOMXiYlCaanI6s+
q7EZccw75PDq4odl81zrMtZV4adx4CJ8JWetyAzkXbnfjEQ+hXiKS5TwIv3CU+w/
H7Fv/0dwOpnvYtVdZF4nP61TmjWe44RD7CEHwWZ9fR5RzX9CvFpNWY1XNsrx+ggG
Qj5RgKPme3LyX+ZRDsnloDOVmv91+IyDny9+mROiiCXfgoNVN7xIzaFN55D1yLl1
q+AiuFy1xhsmPRA0tl6i7XZfJermyZDYs5HHbaR/3s2slKDQPuvl2GM3GhLUHfHW
VwTenFIL0FsDQ7mAOg9JXt/4D4IISckNc4LsdZ+2hIEE/BE32q+PPH5JpmcTxXCp
b3KDkZJ19TwNcEIspqpk1uF8i7puTy6phDsB8K+88Lj0GJsnPpiwaiXTF4akKFLh
5iqJJBBV/ccZ724GF6uND56VOSL1c+DNADbv9ypCGAcIgzSFjqrrXxgSsY3BywSa
Sl7KSm9z0mJwCT+9MkaoLTDJtbEXfeVpHFpY9uZGSLRmtCb8VLkv29TfWdf9Nx/A
V5uIYvYuLC6SjLe7+0QLCjFQcJeNeZIeR1iPJtYx+oM50S1x53w=
=dshS
-----END PGP SIGNATURE-----

--fo4jbjdhrbihrtok--

--===============0955442537==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0955442537==--
