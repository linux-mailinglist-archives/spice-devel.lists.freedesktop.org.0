Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 823C6D287B
	for <lists+spice-devel@lfdr.de>; Thu, 10 Oct 2019 13:57:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 051246EAEC;
	Thu, 10 Oct 2019 11:57:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC37F6EAEC
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Oct 2019 11:57:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 69BED88FFF7
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Oct 2019 11:57:04 +0000 (UTC)
Received: from localhost (unknown [10.32.181.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 174695D6A5;
 Thu, 10 Oct 2019 11:57:03 +0000 (UTC)
Date: Thu, 10 Oct 2019 13:57:03 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20191010115703.2x27h3ysa6w2w4ik@wingsuit>
References: <20191010113833.19091-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20191010113833.19091-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.68]); Thu, 10 Oct 2019 11:57:04 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-common] codegen: Document "chunk"
 attribute
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
Content-Type: multipart/mixed; boundary="===============0620768381=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0620768381==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="sidi25uzpc2asat6"
Content-Disposition: inline


--sidi25uzpc2asat6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 10, 2019 at 12:38:33PM +0100, Frediano Ziglio wrote:
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
Acked-by: Victor Toso <victortoso@redhat.com>

Thanks,
> ---
>  python_modules/ptypes.py | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/python_modules/ptypes.py b/python_modules/ptypes.py
> index 796a436..5aa6e18 100644
> --- a/python_modules/ptypes.py
> +++ b/python_modules/ptypes.py
> @@ -60,6 +60,9 @@ valid_attributes=3Dset([
>      'outvar',
>      # C structure has an anonymous member (used in switch)
>      'anon',
> +    # the C structure contains a pointer to a SpiceChunks structure.
> +    # The SpiceChunks structure is allocated inside the demarshalled
> +    # buffer and data will point to original message.
>      'chunk',
>      # this channel is contained in an #ifdef section
>      # the argument specifies the preprocessor define to check
> --=20
> 2.21.0
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--sidi25uzpc2asat6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2fHI8ACgkQl9kSPeN6
SE96QA/9HA5jksV6P3mKysXm6wLfiSrksEFKFVcpG6YOqF+Xo/VMEm/OFLzZvXUx
SakZRktM0nhafZRqOPclDRP32eI9Jsd8osiKO7ehPStoKaxldV9YKF+eyZBx1zyF
EjyLbWLio89nZc2OjZqUJsSDMK0jnRD2GsJb1lQaBFSkSkqqXZDfDcLcnSImKBAv
pzstC4nbe9g15H+quhAf/xZjSkJMbwH37tgCue6yiB0ZFrZ2gBH1vSwhW8lUmuFu
Op+uLswB1jl8P7fL1nPwGHF75PlPeHdSTF9GxCDj2DaQCBivsCIdH9IXu2+dyDU3
9nCBygE9i28lMe6nWTKQdu7pK9H8WxWd2V8MFReKOOCwEFzPlGtSrXj7q1TuwZvv
5RWY69aKixSHlljV2cxrrAUqXokl1535+48FLfu3xr0piTuS6lHMIpqXOZGMTS33
Ys5wlPrXwHM/kHTgytRxBUh5EVXpCLVlkR9WB9jeooJYNZWeB8UkESpN+zdRtrrf
poLXtr7eqWyGg9inD7rMST6s1lyBoZVbNN105TQXg4oV57xX7yGdVq4tXpTuif05
QPqg9nsXcWCbD7tEsGF6NYf8Ot85WlmrEtjSxDLhkxYWg7fuOjlEsVZlnCch5OB/
+Ap/CViWJRUJTF8cb4C39W6GHGs6nnLS/rgQa2wcndpsTiRpkos=
=zmOs
-----END PGP SIGNATURE-----

--sidi25uzpc2asat6--

--===============0620768381==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0620768381==--
