Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4827D1B796
	for <lists+spice-devel@lfdr.de>; Mon, 13 May 2019 16:00:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC17F89D8E;
	Mon, 13 May 2019 14:00:21 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3449B89D8E
 for <spice-devel@lists.freedesktop.org>; Mon, 13 May 2019 14:00:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C4E4D7DCCA
 for <spice-devel@lists.freedesktop.org>; Mon, 13 May 2019 14:00:20 +0000 (UTC)
Received: from localhost (unknown [10.36.118.53])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6804263BBA;
 Mon, 13 May 2019 14:00:20 +0000 (UTC)
Date: Mon, 13 May 2019 14:00:19 +0000
From: Victor Toso <victortoso@redhat.com>
To: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <20190513140019.e4g7pillkd2cvt55@toolbox>
References: <20190513135246.14849-1-ssheribe@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190513135246.14849-1-ssheribe@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Mon, 13 May 2019 14:00:20 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-streaming-agent] Remove -Wchkp
 warning, deprecated in GCC 9
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
Content-Type: multipart/mixed; boundary="===============1821392862=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1821392862==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="l2hugcprbngdjl3d"
Content-Disposition: inline


--l2hugcprbngdjl3d
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, May 13, 2019 at 04:52:46PM +0300, Snir Sheriber wrote:
> Signed-off-by: Snir Sheriber <ssheribe@redhat.com>

Acked-by: Victor Toso <victortoso@redhat.com>

> ---
>  m4/manywarnings.m4 | 1 -
>  1 file changed, 1 deletion(-)
>=20
> diff --git a/m4/manywarnings.m4 b/m4/manywarnings.m4
> index 4f701f4..3864100 100644
> --- a/m4/manywarnings.m4
> +++ b/m4/manywarnings.m4
> @@ -116,7 +116,6 @@ AC_DEFUN([gl_MANYWARN_ALL_GCC],
>      -Wbuiltin-macro-redefined \
>      -Wcast-align \
>      -Wchar-subscripts \
> -    -Wchkp \
>      -Wclobbered \
>      -Wcomment \
>      -Wcomments \
> --=20
> 2.21.0
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--l2hugcprbngdjl3d
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAlzZeHMACgkQl9kSPeN6
SE9w7hAAhxA8WsxIxSIc4yXJHAi2CjHhcw5i7NZq/dwyxEEclBUPXyFwoCXfRSx6
D30UmA6JInpWmklQhAZVddmU8mHUrit6j6q/NsWfIBFu23zZFA0DYLpzWqp4aVn8
9LHzZaxVFszXgbVFbGMZIJBpP0pxzuzxsrrbggdXceEGRV9vsJVvr0AJJTwri2rl
JUtC9b103d8T7BmbDPlBuQUNxDwNzLroZXPrhDla6sQtXHL+E8XDp5Xuo3khTcav
px55fhvl4APwqohWNM1QGs6kcHm0bY8s6e01chSiFlTOLY14VPxdKITowbA9PuTs
dnX59dlwQsnsRUXGirL71pOtr12OWOPi48Z1OGhGwOglNZUZQA5Wz47t3Z1hK+D8
Z4LnIugnwVvCa1ora/A7dGds5uH1Wr7rJM7cvUY9mO6gSjhpo1WtRg62tAKQRFpF
9vNAPeQ9r0GTeZOiJJrf5CmlHAE/e2vnmDFR94KcO3dYU/qnWkPQXEGMwbMN53gs
iFyW3mnzG1qlf/xJYOuZ+KiobMMckY4qDzXvxz26isqe06cVcFG9Tu9CgOrESfXF
xsHiAe01sIHkWq0HwnOiDQQAeg2a6EehRVDUPZgcmYAtwuzM2cJRjp2cO81ZP7Iy
anAtpu8Rzm93t2dNIV8p9yp0YFSXzckmfL10zuMu/adD0M67nGE=
=DhF3
-----END PGP SIGNATURE-----

--l2hugcprbngdjl3d--

--===============1821392862==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1821392862==--
