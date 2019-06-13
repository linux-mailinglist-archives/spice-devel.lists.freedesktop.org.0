Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4707D43431
	for <lists+spice-devel@lfdr.de>; Thu, 13 Jun 2019 10:38:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34B24897E0;
	Thu, 13 Jun 2019 08:38:32 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FA478919F
 for <spice-devel@lists.freedesktop.org>; Thu, 13 Jun 2019 08:38:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id BCAD630860BD
 for <spice-devel@lists.freedesktop.org>; Thu, 13 Jun 2019 08:38:29 +0000 (UTC)
Received: from natto.ory.fergeau.eu (unknown [10.48.0.104])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 907EA1801F;
 Thu, 13 Jun 2019 08:38:29 +0000 (UTC)
Received: by natto.ory.fergeau.eu (Postfix, from userid 1000)
 id 8386E602265; Thu, 13 Jun 2019 10:38:28 +0200 (CEST)
Date: Thu, 13 Jun 2019 10:38:28 +0200
From: Christophe Fergeau <cfergeau@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190613083828.GA2752@natto.ory.fergeau.eu>
References: <20190612120659.10083-1-fziglio@redhat.com>
 <a306c8ca-a3e5-4385-6d27-14c9978b4809@redhat.com>
 <1608797395.22540794.1560411617210.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <1608797395.22540794.1560411617210.JavaMail.zimbra@redhat.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Thu, 13 Jun 2019 08:38:29 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-common] build: Disable Celt support
 by default
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
Content-Type: multipart/mixed; boundary="===============2115731549=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============2115731549==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="PEIAKu/WMn1b1Hv9"
Content-Disposition: inline


--PEIAKu/WMn1b1Hv9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey,
yup fine with me too.

Christophe

On Thu, Jun 13, 2019 at 03:40:17AM -0400, Frediano Ziglio wrote:
> >=20
> > Hi,
> >=20
> > Fine with me.
> >
>=20
> This is also related to https://gitlab.freedesktop.org/spice/spice/merge_=
requests/2,
> I talked with Christophe and he agreed would be sensible to disable by de=
fault.
> =20
> > On 6/12/19 3:06 PM, Frediano Ziglio wrote:
> > > We started disabling Celt support making the option required.
> > > After 2 releases start making it disabled unless explicitly
> > > enabled.
> > >
> > > Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> > > ---
> > >   m4/spice-deps.m4  | 14 ++------------
> > >   meson_options.txt |  1 +
> > >   2 files changed, 3 insertions(+), 12 deletions(-)
> > >
> > > diff --git a/m4/spice-deps.m4 b/m4/spice-deps.m4
> > > index 02230dd..1214341 100644
> > > --- a/m4/spice-deps.m4
> > > +++ b/m4/spice-deps.m4
> > > @@ -101,21 +101,11 @@ AC_DEFUN([SPICE_CHECK_SMARTCARD], [
> > >   AC_DEFUN([SPICE_CHECK_CELT051], [
> > >       AC_ARG_ENABLE([celt051],
> > >           AS_HELP_STRING([--enable-celt051],
> > > -                       [Enable celt051 audio codec
> > > @<:@default=3Dauto@:>@]),,
> > > -        [enable_celt051=3D"auto"])
> > > +                       [Enable celt051 audio codec @<:@default=3Dno@=
:>@]),,
> > > +        [enable_celt051=3D"no"])
> > >  =20
> > >       if test "x$enable_celt051" !=3D "xno"; then
> > >           PKG_CHECK_MODULES([CELT051], [celt051 >=3D 0.5.1.1],
> > >           [have_celt051=3Dyes], [have_celt051=3Dno])
> > > -        if test "x$enable_celt051" =3D "xauto"; then
> > > -            if test "x$have_celt051" =3D "xyes"; then
> > > -                AC_MSG_ERROR(m4_normalize([
> > > -                                CELT 0.5.1.x has been detected, \
> > > -                                but CELT support is no longer
> > > automatically enabled by default. \
> > > -                                Please explicitly use --enable-celt0=
51 or
> > > --disable-celt051
> > > -                             ]))
> > > -            fi
> > > -            # have_celt051 is "no" here, so celt is disabled by defa=
ult
> > > -        fi
> > >           if test "x$enable_celt051" =3D "xyes" && test "x$have_celt0=
51" !=3D
> > >           "xyes"; then
> > >               AC_MSG_ERROR(["--enable-celt051 has been specified, but=
 CELT
> > >               0.5.1 is missing"])
> > >           fi
> > > diff --git a/meson_options.txt b/meson_options.txt
> > > index 7e9e704..c982736 100644
> > > --- a/meson_options.txt
> > > +++ b/meson_options.txt
> > > @@ -12,6 +12,7 @@ option('extra-checks',
> > >  =20
> > >   option('celt051',
> > >       type : 'feature',
> > > +    value : 'disabled',
> > >       yield : true,
> > >       description: 'Enable celt051 audio codec')
> > >  =20
>=20
> Frediano

--PEIAKu/WMn1b1Hv9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEElKn3VmH3emFoZJsjqdjCFCmsbIIFAl0CC4AACgkQqdjCFCms
bIIfkw//foJHBFOml4NtQ34PUwLbJnG3hnUD+InE1ood09UTrAhNB/fo2oNDV0BB
IFOx7/Sff8Vvj/Zmn1bVz5rhoRP4QRsKNg+yxsd+J2I6LLTMa8psknfZe3wtUD7k
ruPhMwnCmeQSQCITeuGzse0iEd/HzveMl0lOW17P8bv0wfrVgJW5UxSUbJhUxMpw
sj8iNWtbMnGinjwf0TqNd1S0geE+eMC7FE2oDhTp7KXxZWeg/Vn0tvHr06T0F6h9
MxjDkketygduaWVLJu5xTi7hrP+N7EMn9pLAFKr+b7EiUAVr/mY9Rcrmdx/2FHkd
miCU6EbI3+gms+fdWJj+fyL94n0DAFt8+8y/Ewwzsoxd6MgScwMTf+TDBRXSb/sM
Hf+8WMlyW5gzbLehcLQFpTmH0e3S/WhqjlYK2iQkqByCqQ7qK1ZkTdi/dOzRAFM9
HZDfNxQRLFvDEfF7M/y5SS8FNmSUDnl3A0sJnQWclYgbwwjd3t7ShaT7Sf2gHJ8F
F1spb0tAwiPf2o+G69nmSJQIoXmxcmxTnoz+AiqYKdz2Xts7fa2mhPaa3YeWgeGG
Hk8G6Eo2ESeAX7pesTSAF5nosHycEZLlvpvPxwQDAUOCtOaa2FXPvcFGCke35NE7
EDhVdZBvP5rjxgn6Mb8oxzWlLFmq0I49QkKXAjxr79ojlLTB7Zg=
=x1/x
-----END PGP SIGNATURE-----

--PEIAKu/WMn1b1Hv9--

--===============2115731549==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============2115731549==--
