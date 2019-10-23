Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B52EFE1750
	for <lists+spice-devel@lfdr.de>; Wed, 23 Oct 2019 12:06:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34E926EA23;
	Wed, 23 Oct 2019 10:06:22 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB1096EA23
 for <spice-devel@lists.freedesktop.org>; Wed, 23 Oct 2019 10:06:20 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-27-LxZMdv_SNjmZR3YsmCHE1g-1; Wed, 23 Oct 2019 06:06:16 -0400
X-MC-Unique: LxZMdv_SNjmZR3YsmCHE1g-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 160AF800D49
 for <spice-devel@lists.freedesktop.org>; Wed, 23 Oct 2019 10:06:16 +0000 (UTC)
Received: from localhost (unknown [10.40.205.142])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9A80A5DD78;
 Wed, 23 Oct 2019 10:06:15 +0000 (UTC)
Date: Wed, 23 Oct 2019 12:06:14 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20191023100614.a5n7d225v5sylqq4@wingsuit>
References: <20191022083358.14214-1-fziglio@redhat.com>
 <20191023083410.12489-1-victortoso@redhat.com>
 <20191023083410.12489-3-victortoso@redhat.com>
 <1983133253.8140447.1571824329748.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <1983133253.8140447.1571824329748.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1571825179;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=uoGyiD5YgA3xBTyLN0kkFAnfVsmLtvVVaWa0uMdHIjM=;
 b=Dy70qRd2D2rZcFKxTnLpehtk8OJ6ps6XJsDkJrYXH5FtvYvD7sPqL8pLi/a/gTaN9YXye+
 u2SrVOune92wBG7r/q39kcaJrFIGYCLSboFPgSOJbzhURHbhf7VwBSCcOCBVJbn8HhBIEP
 lhKsJr4VWdPCciVG8uGcP7DOrlaTMnU=
Subject: Re: [Spice-devel] [spice-protocol 2/2] fixup: gitlab-ci: to fix
 after mingw
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
Content-Type: multipart/mixed; boundary="===============2061795101=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============2061795101==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="eghtpov7zawr3563"
Content-Disposition: inline

--eghtpov7zawr3563
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 23, 2019 at 05:52:09AM -0400, Frediano Ziglio wrote:
> >=20
> > From: Victor Toso <me@victortoso.com>
> >=20
> > ---
> >  .gitlab-ci.yml | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/.gitlab-ci.yml b/.gitlab-ci.yml
> > index da4f512..c7028dd 100644
> > --- a/.gitlab-ci.yml
> > +++ b/.gitlab-ci.yml
> > @@ -4,9 +4,10 @@ variables:
> >    DEPS_COMMON: git libtool make python3 python3-six redhat-rpm-config
> >                 python3-pyparsing meson ninja-build gtk-doc glib2-devel
> >                 gettext gettext-devel bzip2 rpmlint rpm-build
> > +  DEPS_MINGW: mingw32-filesystem mingw64-filesystem
> > =20
> >  before_script:
> > -- dnf install -y $DEPS_COMMON
> > +- dnf install -y $DEPS_COMMON $DEPS_MINGW
> > =20
> >  fedora-autotools:
> >    script:
>=20
> Is it useful to have a separate "DEPS_MINGW" ?
>=20
> Frediano

I'm doing that for spice-gtk and spice so it would just be
somewhat a standard. Not too strong about it for now, feel free
to move it to DEPS_COMMON if you prefer.


--eghtpov7zawr3563
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2wJhYACgkQl9kSPeN6
SE//xxAAvC484y5w9ZphEzk3Ik1df+lGM0N/WE1tOVGLV61JF3wejXSlZjd6Apgz
24Ro1apl/K3T/Y9WtuV8utip4HEvFnFsjGITZOHDcdV3iUdsvygD+SZCBNeKylJ/
j146PYtR7XotlWBU8tAU9IyKeYZ1n7TKZcG4g9Q2KxGFdo3MgZ49HoznU4hA1cii
gkdWBudg++6mLNKvAEHgCNIyubTodEb5J1LPuP7z5xW7GmO5+kVlxrOJUxnuUNh1
BoIV70sNqsIAmSdV11j5Jj7Xc7G7880V1SJBlbX4Eh/IqnxaES6CWDLdVBVvngmQ
OLvAzOmIcDyAdBcbNhxUSF1JIzXjR+Lu2TFOW7J2q+xl4frGZ/vQ7o/kJaIG0FtX
3Z3dHcf6yDukd2ek2qzuI4iZKJxdwt2U+TiDV3Ue6ovpF+IRIEfjfmCXNidDfn+5
EZAKcCB6aVvT4UJcbPS/Hk+S+nOxYY39d9tQ0U/XXVmJjZFqnjDUcBQSrZrLghsX
uQ40J7kbKN2U7X8TGpSDYXOFxAEgxC58bGT1avvsxpDsqyJ3KQFmWaE7DQHno5o9
Y0lpoV8Rncf/npsP5asKlqRphiVjr4g06GEj+bkFTBaqst6lw9ftMg1f9So+KIdi
Sf7exhzdM5KzXX/ASj8gzFEEbHZdvm76AbJ2gcXaBBJWYNXtl6Y=
=ytf3
-----END PGP SIGNATURE-----

--eghtpov7zawr3563--


--===============2061795101==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============2061795101==--

