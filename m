Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB771F1C1
	for <lists+spice-devel@lfdr.de>; Tue, 30 Apr 2019 10:04:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 385D789503;
	Tue, 30 Apr 2019 08:03:59 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FB698951E
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 08:03:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1B83ECA1DF
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 08:03:58 +0000 (UTC)
Received: from localhost (unknown [10.32.181.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B877117258;
 Tue, 30 Apr 2019 08:03:57 +0000 (UTC)
Date: Tue, 30 Apr 2019 08:03:57 +0000
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190430080357.lbvy6zy3modkib5b@toolbox>
References: <20190426142231.506-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190426142231.506-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Tue, 30 Apr 2019 08:03:58 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-streaming-agent] spec: Add missing
 dependency
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
Content-Type: multipart/mixed; boundary="===============1695099487=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1695099487==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="drwp5mylidmendnw"
Content-Disposition: inline


--drwp5mylidmendnw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Apr 26, 2019 at 03:22:31PM +0100, Frediano Ziglio wrote:
> Some include file now require some X11 library include so add
> the dependency.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

Acked-by: Victor Toso <victortoso@redhat.com>

> ---
>  spice-streaming-agent.spec.in | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/spice-streaming-agent.spec.in b/spice-streaming-agent.spec.in
> index 3874c2e..299ea02 100644
> --- a/spice-streaming-agent.spec.in
> +++ b/spice-streaming-agent.spec.in
> @@ -26,6 +26,7 @@ remote client (over SPICE).
>  %package devel
>  Requires: spice-protocol >=3D @SPICE_PROTOCOL_MIN_VER@
>  Requires: pkgconfig
> +Requires: libX11-devel
>  Summary:  SPICE streaming agent development files
> =20
>  %description devel
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--drwp5mylidmendnw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAlzIAWwACgkQl9kSPeN6
SE+69g//QkfYIO1CeLC24a2YCXDby5WMfZHg8eK0WwfC6O5A48sAAM8qyVBOVJh8
dNEtCcLNdLgn+YsWRaURdAe8TbNctbQkE8d/cOIbviS5KA1LNJK1OVxn8zk5IYMp
Oiv00zK2JirrgYnmxNF34nrOhX3q0Nh7lJ+hX/31fYAPRZE1BoI2mR8EubICXqf4
sHJiOWjnvB2eDIp/pEu963PJ/UZIXzqTL17TZB4v546GBpnt5MEptuSw9plJykQp
QKFwKoZ1wthm3Q+7S9awSuQwJ5tJyBF3OOGhhSGOIdB6Oc+87/akwZISy+TmiuPp
FSHyzzhW1kmKsLdygUEJhaVL5if+M448XuEXbvtGKwgNQw9JK9TV5JjMACAJfSfX
GpL638AxTLNSxxEOqG7e1Y4dciegb4tQTRROg4aL11cqA2tXfhBAky8vAD45mN4j
in2bYrCdon5N0COLZIzcIFpeBnEFwCpcU5k2dFrRaROMBSjeusuLnaOVb4fQMtBr
cM94DpLoi2cd2AOTyDdlyRk5udOsjsSXkJiWoniIc1JC9gsHmjsSQDRtDQD2i24a
l0UJclSrck0tKzYuuUnr0Zb3Rdiw+Pvel1fXGlT2uSthHtkyP9auxazbt+Blfsfq
bfmxK3zjV4Z5j1+yQaHiX3g0BYGvZ7zDvwd4Nabjo9ZyElulQuM=
=CRMw
-----END PGP SIGNATURE-----

--drwp5mylidmendnw--

--===============1695099487==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1695099487==--
