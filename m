Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE091E9AA
	for <lists+spice-devel@lfdr.de>; Wed, 15 May 2019 10:01:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 138AA89598;
	Wed, 15 May 2019 08:01:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D372989598
 for <spice-devel@lists.freedesktop.org>; Wed, 15 May 2019 08:01:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4F84730B1AA0
 for <spice-devel@lists.freedesktop.org>; Wed, 15 May 2019 08:01:26 +0000 (UTC)
Received: from localhost (unknown [10.32.181.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DEE416B8F8;
 Wed, 15 May 2019 08:01:25 +0000 (UTC)
Date: Wed, 15 May 2019 08:01:25 +0000
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190515080125.xqffookayytaf2s7@toolbox>
References: <20190514162602.3529-1-victortoso@redhat.com>
 <20190514162602.3529-4-victortoso@redhat.com>
 <1047252984.18333207.1557901460549.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <1047252984.18333207.1557901460549.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Wed, 15 May 2019 08:01:26 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk v1 3/5] Rename NEWS to CHANGELOG.md
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
Content-Type: multipart/mixed; boundary="===============1017178937=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1017178937==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rnotyu5k52wkso6h"
Content-Disposition: inline


--rnotyu5k52wkso6h
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, May 15, 2019 at 02:24:20AM -0400, Frediano Ziglio wrote:
> >=20
> > From: Victor Toso <me@victortoso.com>
> >=20
> > In order to have gitlab interface to handle this file as Markdown
> > and properly feed the changelog section.
> > Add to EXTRA_DIST to include the renamed file to release's tarball.
> >=20
> > Signed-off-by: Victor Toso <victortoso@redhat.com>
>=20
> Why not NEWS.md ?

If that is recognized by gitlab ui 'changelog' section, it could
have been. At this moment, I'd rather stick with the same name
for all components. I've renamed in spice-protocol and
linux/vdagent already

> Now there are ChangeLog and CHANGELOG.md which seems confusing
> to me

Not in spice-gtk repo but indeed there is auto generated one in
tarball, I missed. I honestly think that I'd rather stick with
manual labour of editing CHANGELOG.md every release than a file
that seems compiled from git instead.

> > ---
> >  NEWS =3D> CHANGELOG.md | 0
> >  Makefile.am          | 1 +
> >  2 files changed, 1 insertion(+)
> >  rename NEWS =3D> CHANGELOG.md (100%)
> >=20
> > diff --git a/NEWS b/CHANGELOG.md
> > similarity index 100%
> > rename from NEWS
> > rename to CHANGELOG.md
> > diff --git a/Makefile.am b/Makefile.am
> > index df65c46..9fcb2d3 100644
> > --- a/Makefile.am
> > +++ b/Makefile.am
> > @@ -22,6 +22,7 @@ DISTCLEANFILES =3D $(pkgconfig_DATA)
> > =20
> >  EXTRA_DIST =3D					\
> >  	README.md				\
> > +	CHANGELOG.md				\
> >  	meson.build				\
> >  	meson_options.txt			\
> >  	po/meson.build				\
>=20
> Frediano

--rnotyu5k52wkso6h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAlzbx1UACgkQl9kSPeN6
SE9V2A//ZDcVyICOMmTCoDtfcA2hj+5IVaDAZyMWY+zd2QbtYCHsrl3RcGYNJYAf
987PSKYIAwjNljMMpn9Bvajp+cIo4GtfB1u+jwVuiSPEBWaGLA7RYnkw4cYJHB8Y
aZOwkTD4HJVVNiYq0tDWNBRghs4Jk57oiJMmwj5E0y939BoHQ+5bV7UNFCXUSWW3
JniWg9QX9UpEnnirDf4iCi5p+tFkZ6TjKuL+xbpj153KmwRj8L9Ifd1IQJDB7zZA
jRYKF8kIXw3qId4GoUa+F1K6owzzuq5wD++Qby6NzorB1D2gzKX/QIezmAcBiRkT
LHWXH4LwL622nbUxYYfOwajozrQ1YZyz0zvXK9CZ/t8NU1N+6n4Ua57j9dRynthL
A8ZULl6S8duLUrXE1F4S/PoPeWDG7xdTaAl37ZfOFP587dr4vqVowej3psffYDW3
9j9s8pX7O/Ci9ca2oL4eBPCTwtmAAgfruVoseAvclws/qatzho//kL4mzIiN/20T
XPUVQ0cgr2gbQpTBp4g4jWkjjQT9G0xn+VJuPYnpSt1kHWasGCewZ8Uai+VOrOPy
cYTL4FKRlL0tuRtBzFZb8dJbqEXIP6eo+SFw/efiCKN49FltCnOz8rbdY80zyhEG
4zVE5yylDd5dt1UVYLE9oKYcwbjB1zhOba6SzrlYefMqBQcgbDk=
=muWe
-----END PGP SIGNATURE-----

--rnotyu5k52wkso6h--

--===============1017178937==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1017178937==--
