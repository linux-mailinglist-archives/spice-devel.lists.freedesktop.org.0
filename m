Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B73829E998
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 15:37:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E127889ACC;
	Tue, 27 Aug 2019 13:37:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3930D89ACC
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 13:37:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D5F9010892CE;
 Tue, 27 Aug 2019 13:37:27 +0000 (UTC)
Received: from localhost (unknown [10.32.181.212])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 807A6196AE;
 Tue, 27 Aug 2019 13:37:27 +0000 (UTC)
Date: Tue, 27 Aug 2019 15:37:26 +0200
From: Victor Toso <victortoso@redhat.com>
To: Christophe de Dinechin <christophe.de.dinechin@gmail.com>
Message-ID: <20190827133726.j5oilyus7grtb5uo@wingsuit>
References: <20190827092246.10276-1-fziglio@redhat.com>
 <20190827092246.10276-22-fziglio@redhat.com>
 <m1sgpmevmv.fsf@dinechin.org>
MIME-Version: 1.0
In-Reply-To: <m1sgpmevmv.fsf@dinechin.org>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.65]); Tue, 27 Aug 2019 13:37:27 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk v4 21/29] CI: Add --werror
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
Content-Type: multipart/mixed; boundary="===============1655246750=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1655246750==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7e4srspzmqgs5z6l"
Content-Disposition: inline


--7e4srspzmqgs5z6l
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Aug 27, 2019 at 12:43:36PM +0200, Christophe de Dinechin wrote:
>=20
> Frediano Ziglio writes:
>=20
> > Give errors on warnings, we want the code to compile without
> > warnings, at least with CI.
>=20
> Looks good to me, but from experience with other projects,
> new compiler releases tend to add new warnings that will break
> your builds. You don't control the release timeline of compilers
> in your CI environment. So just be ready to scramble-fix
> new compiler-introduced "errors".

That's true but somehow better to know and act either by fixing
or blacklisting them.

Patch seems fine to me as well,
Acked-by: Victor Toso <victortoso@redhat.com>

> > Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> > ---
> >  .gitlab-ci.yml | 10 +++++-----
> >  1 file changed, 5 insertions(+), 5 deletions(-)
> >
> > diff --git a/.gitlab-ci.yml b/.gitlab-ci.yml
> > index fa70f7ad..8bcef65d 100644
> > --- a/.gitlab-ci.yml
> > +++ b/.gitlab-ci.yml
> > @@ -28,11 +28,11 @@ fedora:
> >    before_script:
> >      - dnf install -y $DEPS_COMMON $DEPS_FEDORA
> >      - git clone ${CI_REPOSITORY_URL/spice-gtk/spice-protocol}
> > -    - meson --buildtype=3Drelease spice-protocol build-spice-protocol =
--prefix=3D/usr
> > +    - meson --buildtype=3Drelease spice-protocol build-spice-protocol =
--prefix=3D/usr --werror
> >      - ninja -C build-spice-protocol install
> >
> >    script:
> > -    - meson --buildtype=3Drelease build-default
> > +    - meson --buildtype=3Drelease build-default --werror
> >      # Meson does not update submodules recursively
> >      - git submodule update --init --recursive
> >      # this fix an issue with Meson dist
> > @@ -42,7 +42,7 @@ fedora:
> >      - ninja -C build-default
> >      - ninja -C build-default test
> >
> > -    - meson --buildtype=3Drelease build-feat-disabled -Dauto_features=
=3Ddisabled
> > +    - meson --buildtype=3Drelease build-feat-disabled -Dauto_features=
=3Ddisabled --werror
> >      - ninja -C build-feat-disabled
> >      - ninja -C build-feat-disabled test
> >
> > @@ -58,11 +58,11 @@ windows:
> >      - dnf install -y $DEPS_COMMON $DEPS_MINGW
> >      - git clone ${CI_REPOSITORY_URL/spice-gtk/spice-protocol}
> >      - mkdir spice-protocol/build-spice-protocol && cd spice-protocol/b=
uild-spice-protocol
> > -    - mingw64-meson --buildtype=3Drelease --prefix=3D/usr
> > +    - mingw64-meson --buildtype=3Drelease --prefix=3D/usr --werror
> >      - ninja install
> >
> >    script:
> >      - cd $CI_PROJECT_DIR
> >      - mkdir build-win64 && cd build-win64
> > -    - mingw64-meson --buildtype=3Drelease -Dgtk_doc=3Ddisabled
> > +    - mingw64-meson --buildtype=3Drelease -Dgtk_doc=3Ddisabled --werror
> >      - ninja install
>=20
>=20
> --
> Cheers,
> Christophe de Dinechin (IRC c3d)
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--7e4srspzmqgs5z6l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1lMhYACgkQl9kSPeN6
SE8syg/9FUFzQJJfUzcMVuwaVUHGLpz+n6IdcXJHV82hWtOkCixLWAJYEVuV8Na/
0oNM6MOcOujMbGxIIYUD4TkvtA5DvS3AM4nE3BA4NM/YOAtNm+bTuJ2xI35dlM73
/5NNmSVV6jxCpLdqWUJmhsO9/fdS/YJyzXUHJG8jrCejZhBAl6ZDuMXixyB8vuat
UIZKuIGDRV8mGim0Dw9dNQli5yC5BdaGW4YGBPAPjlkoKmcvmIykpkcrH1ibtvzX
2HDVNfqghI1wf8T4St77rsf8jF/WiVlwkpOelx9m4PgVODbNt76hd9s0kEKREk4q
CpR3LyEYqicC23aeMPvgxE5dOuSxvC4LGACoGK6IymHbuAMjbs6Qg0e/Ymw348ea
vBkVgSBy6wYzPcN6b5+xlpHQsh0fqZi6R5BakpB9gLyTzKD0FVtm2I97FrTYOUDu
EIxcdjYpZQHFO2UGf9IVkwhEyUde/tGgxv619qU9nHEOUx809HwLd8rywsbIK4G3
MXySLMB3kHJotdPjDi0FTKMvdWrOfWxVDAVXtYIqrPc/Njyi2edrSb/sLrkZqsaG
Z0S1W0cnLz964d4LMZKhe7PvBfpuRJnfHZicHEv7nk5s7USyd7v8dfI9GH2PJJJ6
iY5zJnB5kAixIrLkSj++AEcTvUSQjFe4P+K7pOQ+mDdrrXU8Hso=
=uCE8
-----END PGP SIGNATURE-----

--7e4srspzmqgs5z6l--

--===============1655246750==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1655246750==--
