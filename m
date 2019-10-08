Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B805CFB44
	for <lists+spice-devel@lfdr.de>; Tue,  8 Oct 2019 15:25:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67DE26E7BC;
	Tue,  8 Oct 2019 13:25:34 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BC906E7BC
 for <spice-devel@lists.freedesktop.org>; Tue,  8 Oct 2019 13:25:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E6F6E99C42
 for <spice-devel@lists.freedesktop.org>; Tue,  8 Oct 2019 13:25:28 +0000 (UTC)
Received: from localhost (unknown [10.32.181.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9533060605;
 Tue,  8 Oct 2019 13:25:28 +0000 (UTC)
Date: Tue, 8 Oct 2019 15:25:27 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20191008132527.htucou3gvbjpq2bn@wingsuit>
References: <20191007103906.30517-1-fziglio@redhat.com>
 <20191007103906.30517-5-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20191007103906.30517-5-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Tue, 08 Oct 2019 13:25:28 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 4/8] Update spice-common
 submodule
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
Content-Type: multipart/mixed; boundary="===============0805716666=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0805716666==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rozi64mjljvn5r6w"
Content-Disposition: inline


--rozi64mjljvn5r6w
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Oct 07, 2019 at 11:39:02AM +0100, Frediano Ziglio wrote:
> This brings in the following changes:
>=20
> Frediano Ziglio (1):
>       proto: Demarshal Smartcard data field
>=20
> Kevin Pouget (1):
>       common/recorder.h: do not complain on unused (dummy) recorders
>=20
> This is in preparation to use the generated code for Smartcard
> (currently not used so won't create regressions).
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

Acked-by: Victor Toso <victortoso@redhat.com>

> ---
>  subprojects/spice-common | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/subprojects/spice-common b/subprojects/spice-common
> index 4727c19d..86501ad7 160000
> --- a/subprojects/spice-common
> +++ b/subprojects/spice-common
> @@ -1 +1 @@
> -Subproject commit 4727c19d36b33071928500adaa832ecef6bdd942
> +Subproject commit 86501ad7e1cbbd1cc9f68f3a56c18149f5178c46
> --=20
> 2.21.0
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--rozi64mjljvn5r6w
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2cjkcACgkQl9kSPeN6
SE/LihAAw3EjHhA6Brm8WJlW/DG3FfYGC/bN1x5LOqMCnHYzg0yO5wfLLaQr1msK
1PLInpYWeuAMIpHQhzgab3G0bXYQK6ahU2YxfPeT7hT/WcNjSF8FGX6cZJMGq0wx
m2wsxCf+kIdV/XeuOQF3hCrsFoTPxbM/tPgTuQpK8z91IiBrC6Yg19DU3FfofCl9
5bjIrCur00iiMukKKr8MOhz+cUGCQPjhfek3oRDCqW+oMPn7MJLxvWfKU5+ojAI0
mV3TS16OROrjbap2vuTcSil2zKuBec3HX1FBPVFResu23OvP658hlEenBXp13VDb
FaTFAXVSiwLo4ILbVQM3bGUwDvQfSdyPWc0HFwwXDaHGwRNe84UQlqQGF+va4Qh8
YKdXpmycC50nkay07HmlufozwCoCtdIXKuiByTXEXkj1JJyS2qWWMMHPkmq79hBP
s0kb6GHQvRsZplVnJkaH0B4DV/mBXoMcomwq+2CX0gxvSrQYaZg7gjQnq0gwRp/a
jN1qc3KlfCML4rdEo3mvmptdUokaWPSCsIv/l6l1+pmeMNxUUsq4vaW3CKkKjcIq
J2NP5pxPD/QxYTIXW3MxGD2kBJhsWcWf89ceCjuwS5uw7xNKxTZUut89Pk2oyd6r
wFhe3WOs7OEXiB1XU56qYlyXQ8fL8X35uqGo8Oo5XgtVthLM+nM=
=BjkL
-----END PGP SIGNATURE-----

--rozi64mjljvn5r6w--

--===============0805716666==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0805716666==--
