Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 41B61F41E
	for <lists+spice-devel@lfdr.de>; Tue, 30 Apr 2019 12:21:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68C61890BC;
	Tue, 30 Apr 2019 10:21:31 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B553D890BC
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 10:21:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5F8476696F
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 10:21:30 +0000 (UTC)
Received: from localhost (unknown [10.32.181.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 06BB5799A;
 Tue, 30 Apr 2019 10:21:29 +0000 (UTC)
Date: Tue, 30 Apr 2019 10:21:29 +0000
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190430102129.gdmepsw6ewezwlom@toolbox>
References: <20190430100542.21909-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190430100542.21909-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Tue, 30 Apr 2019 10:21:30 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-common] gitignore: Ignore auto
 generated generated_messages.h file
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
Content-Type: multipart/mixed; boundary="===============1056931607=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1056931607==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="iwqc2efhji5vdrja"
Content-Disposition: inline


--iwqc2efhji5vdrja
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 30, 2019 at 11:05:42AM +0100, Frediano Ziglio wrote:
> git.mk seems to have issues with Makefile rules generating multiple
> files so add manually this file.
> This avoid SPICE server to generate distribution files with
> "-dirty" suffix.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
Acked-by: Victor Toso <victortoso@redhat.com>
> ---
>  common/Makefile.am | 4 ++++
>  1 file changed, 4 insertions(+)
>=20
> diff --git a/common/Makefile.am b/common/Makefile.am
> index a904dae..9638635 100644
> --- a/common/Makefile.am
> +++ b/common/Makefile.am
> @@ -138,4 +138,8 @@ EXTRA_DIST =3D				\
>  	quic_tmpl.c			\
>  	$(NULL)
> =20
> +GITIGNOREFILES =3D \
> +	generated_messages.h \
> +	$(NULL)
> +
>  -include $(top_srcdir)/git.mk
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--iwqc2efhji5vdrja
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAlzIIakACgkQl9kSPeN6
SE+0dA/9HG4jw+wOzHHSFySxzlFmRRtlnn9t3xzLb41uUIebyBj/0kDFjMiA9k71
PWaJDMOQtvwNN1MUBvCUPuIk7b9LPeq0RU1a/gCBmx9Z2qom0fOtPk2IOeLD0noi
HG+GEBnA3HRmv9G9PQ7A6BAey8KjwNrJsFpZmT8Ip8R2aargp+FfCtEuVaCDg29J
3eQwMMIN54fLWqS0e+VTNIXOqdAODQhrjCRSocCawmTQOewDCES9GVLrNpAfWpWs
t3zfee+vj/IoaTAO4umcBz3tzFSp9OZqESyyJmdcUSZe53ODnMwL1+BIQasBfU87
hmTdGad7CuKsfZzeYKn7p37G6oPHESWLiWgHLnsqbhqJCv5Rn65hMvCbqDvM60Mq
IEQtGCz0U0egj/F5KHX/GVpqejx4nhJAk3ncvsUljw7Vzs50nA06w+Cgn/Nj/54h
1xDylsYOCqWAUf1utxiH5H8r2XDhhUDIWBbZdo7ol59mMu2mL1ecBrIKRf7xrwBw
f/OYDs8lURYDUCBO/rD5hhNvvjnhdB8Ik8OwHveCdoHbY1chDcSodX/xA/PsV4nc
TmMxTg1F0wi+pW9Z3wz8xsYnxT9vINqsHJcPNkWC736ozyWuCq18WDRuc376itwF
trZX46nuURgoCxgVOhzJwLvbdLf98AenWdllpnp9hWf+Yf1wjAM=
=VPdq
-----END PGP SIGNATURE-----

--iwqc2efhji5vdrja--

--===============1056931607==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1056931607==--
