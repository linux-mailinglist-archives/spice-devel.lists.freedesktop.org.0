Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DAC1D08CB
	for <lists+spice-devel@lfdr.de>; Wed,  9 Oct 2019 09:51:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A58986E2A9;
	Wed,  9 Oct 2019 07:51:33 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A7776E2A9
 for <spice-devel@lists.freedesktop.org>; Wed,  9 Oct 2019 07:51:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B742081DE1
 for <spice-devel@lists.freedesktop.org>; Wed,  9 Oct 2019 07:51:31 +0000 (UTC)
Received: from localhost (unknown [10.32.181.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 631E7194B6;
 Wed,  9 Oct 2019 07:51:30 +0000 (UTC)
Date: Wed, 9 Oct 2019 09:51:29 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20191009075129.b55msjehnj4u5qcj@wingsuit>
References: <20191008173924.12388-1-fziglio@redhat.com>
 <20191008173924.12388-4-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20191008173924.12388-4-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Wed, 09 Oct 2019 07:51:31 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server v2 3/7] smartcard: Do not
 crash if reader_id is invalid
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
Content-Type: multipart/mixed; boundary="===============2114185029=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============2114185029==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lsyiotncej5xmled"
Content-Disposition: inline


--lsyiotncej5xmled
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 08, 2019 at 06:39:20PM +0100, Frediano Ziglio wrote:
> Avoid client to trigger crash. The value of smartcard_readers_get
> is checked for NULL so returning it it's not an issue.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

Nice catch.
Acked-by: Victor Toso <victortoso@redhat.com>

> ---
>  server/smartcard.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/server/smartcard.c b/server/smartcard.c
> index 3f51f5298..4c5bba07d 100644
> --- a/server/smartcard.c
> +++ b/server/smartcard.c
> @@ -222,7 +222,9 @@ static int smartcard_char_device_add_to_readers(RedsS=
tate *reds, SpiceCharDevice
> =20
>  SpiceCharDeviceInstance *smartcard_readers_get(uint32_t reader_id)
>  {
> -    spice_assert(reader_id < g_smartcard_readers.num);
> +    if (reader_id >=3D g_smartcard_readers.num) {
> +        return NULL;
> +    }
>      return g_smartcard_readers.sin[reader_id];
>  }
> =20
> --=20
> 2.21.0
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--lsyiotncej5xmled
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2dkYEACgkQl9kSPeN6
SE/mdw//URaiSVrw3O3REo9Dm4F8AYoQKC+9qTCgKIQBnUxhvyQLx6wGv0f+bfam
X+C2lj647OCpOXeeNezXcHduQ1PBAzZNb9bXYUtqFId+hMDZiwS3/6M+E44LqV8y
YR/NYI3dZ2hsGt5rrWrkjr3w5MwExl0ftpEcVIjhACSLV+pDXYaVYJmJaAcdpFDT
h4n30j+KNYtzKzIbMxP0yYsVMFFSS3X3IjWH+GT+i59dAr2XurI66ZHFJGANUtqw
wueXmRyCouo+kEz8Xe0KkGLgdS7JOQat3Xhfgop1GoaKig2QGe6qTV6yl+I8P43p
vEM9olHpvUC9BXdDeEFx/zOqhJyexsabdAkd2lCCIUL42tvEB3a9Xf+QpSZFLjpD
4oNg6x0HXZSHNRbtaL0V26y+lzBckNeZec8nwARGloMCzjL5evvK+b6xTEVXyHCp
VI9YIRsGvn5aHGsUIxx+hypmJNs8bY2mMujI/AHzBDLhyEZJ7+iHgbH0by/ksWhL
pfYVJ86gybJQR4Qldihw5HYxH7j+7NZczfnO5opXSQlxgwOn+VZNBE6OPLoYN6l5
PU/tavdcDeNCImL5OKX4Tr8VtfZrsJR/2HMc4FOMX+j13Vm3JS+Oni1efRy+lIep
Yr8BuZQus4GeFwDQ4lIN9qp0pcAZyTMrqtEM2MPaOEonJlEthX0=
=XiDn
-----END PGP SIGNATURE-----

--lsyiotncej5xmled--

--===============2114185029==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============2114185029==--
