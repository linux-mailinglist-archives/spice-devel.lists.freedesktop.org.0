Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10ADCD26ED
	for <lists+spice-devel@lfdr.de>; Thu, 10 Oct 2019 12:08:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EFE96EA8C;
	Thu, 10 Oct 2019 10:08:40 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C7916EA8C
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Oct 2019 10:08:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id EA8A5189F446
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Oct 2019 10:08:38 +0000 (UTC)
Received: from localhost (unknown [10.32.181.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 996B160BE1;
 Thu, 10 Oct 2019 10:08:38 +0000 (UTC)
Date: Thu, 10 Oct 2019 12:08:37 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20191010100837.u4tnwmgixyf5ftxb@wingsuit>
References: <20190814170825.11903-1-fziglio@redhat.com>
 <20190814170825.11903-2-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190814170825.11903-2-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.70]); Thu, 10 Oct 2019 10:08:38 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-common] codegen: Add 'chunk' to the
 output attributes
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
Content-Type: multipart/mixed; boundary="===============0628848858=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0628848858==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="np2b4qkzlzb6uaio"
Content-Disposition: inline


--np2b4qkzlzb6uaio
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Aug 14, 2019 at 06:08:25PM +0100, Frediano Ziglio wrote:
> Output attributes are the attributes that specify how to store
> that field in the C structure.
> There can be only one output type specified.

It misses documentation on valid_attributes in case you feel like
adding too

> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

    Acked-by: Victor Toso <victortoso@redhat.com>

> ---
>  python_modules/ptypes.py | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/python_modules/ptypes.py b/python_modules/ptypes.py
> index ebe001c..796a436 100644
> --- a/python_modules/ptypes.py
> +++ b/python_modules/ptypes.py
> @@ -98,7 +98,7 @@ def fix_attributes(attribute_list):
>          attrs[name] =3D lst
> =20
>      # these attributes specify output format, only one can be set
> -    output_attrs =3D set(['end', 'to_ptr', 'as_ptr', 'ptr_array', 'zero'=
])
> +    output_attrs =3D set(['end', 'to_ptr', 'as_ptr', 'ptr_array', 'zero'=
, 'chunk'])
>      if len(output_attrs.intersection(attrs.keys())) > 1:
>          raise Exception("Multiple output type attributes specified %s" %=
 output_attrs)
> =20
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--np2b4qkzlzb6uaio
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2fAyUACgkQl9kSPeN6
SE+MZQ/9Hitwl71FWOS/0UW4Of6IN+GrhCLw+2NKGK3RqoFw0HIhnV4+A/hTmfFN
My2eY/6j/t/Is/GAYqcrsGeIUn4m6XtmYNGneR7rBdhQFI7EH5JhZW+2YCuKgmTe
aaK5sM623cJL5fa8gIwBs17dVTXow05hMzO/GqUBpZtlJfras9v+Mpwa9bhG+orr
ggvS8Cm5Ve/K3pRTnW+uS5Pto+gfOzliSQQJDZWtfhjKUnFkOVa1uIHRmpgCu72D
C/Lszu9IF8kxzUx5fefSkIiO6IzoQb8zKPsVqZeePeUw4z/1PXbRYIKePwDP1k3w
2aYXxDg6xw07o9Q2B7ltYjYheDC1ufMORDGCRTB/v1hJA2Q/EPAbFyTcoyKIx+66
P/x4asX5MoKgrZp4Eh6oBhMK9lz2WSAk02pDfSWzVuAGjSTc2x2EU/CYE1HWLydN
LBB5rjBDH/fkuuAF1pHzq48+HNbXIAJ3DwIxXS7Pj6+IhbIH1x6qxFtmFIfTcM6T
kiaFKEVHHMyCXqcLRL7+u9rFlLoGyAXWOALpL+ee6I3rcoS6v4Ctm4pjdbpapjCp
1XaZtfHzHfoO6VHOvKVBmgkmsQG/l36uCuNv9q+bhivmqxDtFZ8vU8PvGi8hNZWt
Jj4Fp45Fsixjs/rJUzUEeK4mKhKTcgTRe1Ym+tTVI5ZzOaVmod4=
=dAuD
-----END PGP SIGNATURE-----

--np2b4qkzlzb6uaio--

--===============0628848858==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0628848858==--
