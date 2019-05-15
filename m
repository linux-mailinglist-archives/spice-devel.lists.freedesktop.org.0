Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 979681EC0C
	for <lists+spice-devel@lfdr.de>; Wed, 15 May 2019 12:23:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8472C895C4;
	Wed, 15 May 2019 10:23:40 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80396895C4
 for <spice-devel@lists.freedesktop.org>; Wed, 15 May 2019 10:23:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E5AAF30198BD
 for <spice-devel@lists.freedesktop.org>; Wed, 15 May 2019 10:23:37 +0000 (UTC)
Received: from localhost (unknown [10.32.181.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8C5871001E61;
 Wed, 15 May 2019 10:23:37 +0000 (UTC)
Date: Wed, 15 May 2019 10:23:33 +0000
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190515102333.wspvuvzz6ksrrumj@toolbox>
References: <20190515081712.24210-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190515081712.24210-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Wed, 15 May 2019 10:23:37 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk] build: Do not generate
 ChangeLog file
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
Content-Type: multipart/mixed; boundary="===============1021026349=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1021026349==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="37f4hwc5ylzlffer"
Content-Disposition: inline


--37f4hwc5ylzlffer
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, May 15, 2019 at 09:17:12AM +0100, Frediano Ziglio wrote:
> There's already a hand written change log and people can look
> at repository history.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

Looks fine,
Acked-by: Victor Toso <victortoso@redhat.com>

> ---
>  Makefile.am | 15 ++++-----------
>  1 file changed, 4 insertions(+), 11 deletions(-)
>=20
> diff --git a/Makefile.am b/Makefile.am
> index 9fcb2d3b..3c607c9a 100644
> --- a/Makefile.am
> +++ b/Makefile.am
> @@ -40,18 +40,8 @@ MAINTAINERCLEANFILES =3D					\
>  	gtk-doc.make					\
>  	$(NULL)
> =20
> -# Generate the ChangeLog file
> -# and insert it into the directory we're about to use to create a tarbal=
l.
> -.PHONY: gen-ChangeLog gen-THANKS
> -gen-ChangeLog:
> -	if test -d .git || test -d ../.git; then				\
> -	  $(top_srcdir)/build-aux/gitlog-to-changelog > $(distdir)/cl-t;	\
> -	  rm -f $(distdir)/ChangeLog;						\
> -	  mv $(distdir)/cl-t $(distdir)/ChangeLog;				\
> -	fi
> -
>  # see git-version-gen
> -dist-hook: gen-ChangeLog gen-THANKS
> +dist-hook: gen-THANKS
>  	echo $(VERSION) > $(distdir)/.tarball-version
> =20
>  BUILT_SOURCES =3D $(top_srcdir)/.version
> @@ -68,6 +58,9 @@ DISTCHECK_CONFIGURE_FLAGS =3D			\
>  	--with-gtk=3D3.0				\
>  	$(NULL)
> =20
> +# Generate the THANKS file
> +# and insert it into the directory we're about to use to create a tarbal=
l.
> +.PHONY: gen-THANKS
>  gen-THANKS:
>  	$(AM_V_GEN)if test -d .git || test -d ../.git; then						\
>  	  echo "The spice-gtk team would like to thank the following contributo=
rs:" > $(distdir)/t-t;	\
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--37f4hwc5ylzlffer
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAlzb6KUACgkQl9kSPeN6
SE+yCBAAmBKx+5g0039mbWFF/NPIVNmt98SAF1v3cBDUEn5DsqLCh9JOTUzK/azV
JxYHrtYfZ7kyTE+u84kWG3sNhwbew8ah157M6xoT56NIUh1hnhzGg1sNknDqII+c
xy+4T8JAxEcbcV4EDWOt0EEMjU1IchwgOV6jIk6qRDUEv8Fn+A7GUg2ij1E0pveB
sYqs7045JgigYquc+PfFyUFtROlfyG96J82/7qO6HGTNmOnf//83MP1ohiH84pYG
rcYD0nT0bWoQKzSvqlcdaOWnLxreo6IMc5al4efSqwxDRmnF6WoTN2MjAs3ma6eD
wJ3hWTn59X0hAdyWVl/GzqjOg2HEqXCzg1ZI0IAQ06b6j2bouBDMlIFxpT16pvCc
IUN4cZN1W0Kcy7hhuyzyMGuUrSVdFDSQwazzrbBcHEVYmPAEqVKsQPtFsNrb8r8G
N405URXtRoaX5iD1foyn7/7Bd5CHFnUwsLCbAsVmYFJhS1TmTGpEpZtZ1DqOEA8P
TGEDapQHaMkAye2AYb99MQfhvhDRLZQFPjRdLxg3sgIwUiN9RTvxX1HQ0wmVSNMT
ZFiZm4U9kD+5YQ66P1W3sYxqmw4C9YIsBLG5evHzXmEVkyXzZFXrfD+Ub9xu7Mdl
5RhnFtTdmWhBRiIsAhTBiQQ28uvqcGLPoCTGW6UePDg7u4Sdlf0=
=ki1Y
-----END PGP SIGNATURE-----

--37f4hwc5ylzlffer--

--===============1021026349==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1021026349==--
