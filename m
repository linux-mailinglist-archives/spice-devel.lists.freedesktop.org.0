Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 835601328E5
	for <lists+spice-devel@lfdr.de>; Tue,  7 Jan 2020 15:30:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1B5E89DB4;
	Tue,  7 Jan 2020 14:30:13 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9587A89DB4
 for <spice-devel@lists.freedesktop.org>; Tue,  7 Jan 2020 14:30:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578407411;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=QVT/a/l3LzgFoGi/7K12jUslpVp4E1AbT1l8D6UldEc=;
 b=S9j/ekfEwmf7eHiOzV5Y7B0Q4IUyZwZVvy8gbYupwgazB05clL/AoK7qeAdqNiZ1TlE5MT
 frXyGgPrjQdNYkiK6GDiiubWKm1ltuijugpWEkuJCOZXpEIj80UKPjZG/fYvSzZFOJ55E5
 aCUmGGhhb8PGxRjL4419kA1p84J9pB4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-3-SrgLe5kGPdiYfA08ciEdMA-1; Tue, 07 Jan 2020 09:30:04 -0500
X-MC-Unique: SrgLe5kGPdiYfA08ciEdMA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 75CBD802B8C;
 Tue,  7 Jan 2020 14:30:03 +0000 (UTC)
Received: from localhost (ovpn-116-171.ams2.redhat.com [10.36.116.171])
 by smtp.corp.redhat.com (Postfix) with ESMTP id F35CC85F13;
 Tue,  7 Jan 2020 14:30:02 +0000 (UTC)
Date: Tue, 7 Jan 2020 15:30:02 +0100
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20200107143002.zrawtvjmhv6prb5q@wingsuit>
References: <MN2PR06MB5966D55A1D656DE364345514B32D0@MN2PR06MB5966.namprd06.prod.outlook.com>
 <38520022.16705087.1576841179351.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <38520022.16705087.1576841179351.JavaMail.zimbra@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
Subject: Re: [Spice-devel] spice-vdagent does not work on ubuntu18.04
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Cc: spice-devel@lists.freedesktop.org, franklin zhou <codeit@live.com>
Content-Type: multipart/mixed; boundary="===============0789031466=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0789031466==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="gdpndrjdd5xjxxhi"
Content-Disposition: inline

--gdpndrjdd5xjxxhi
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Dec 20, 2019 at 06:26:19AM -0500, Frediano Ziglio wrote:
> > hi, all,
>=20
> > I install ubuntu 18.04 amd64 with virt-manager,
>=20
> > the vdagent default installed is ok. the copy &paste and windows resize=
 is
> > ok=E3=80=82
>=20
> > but when I build the vdagent with the source code, it does not work.
> > and log has this error: "GetSeats failed: The name org.freedesktop.Cons=
oleKit

Hm, perhaps you want to use the systemd based one?

> > was not provided by any .service files"
>=20
> > was I missing something ?
>=20
> > all my build command here:
> > /********************************************
> > sudo apt-get install autoconf libtool libpixman-1-dev libjpeg-dev libop=
us-dev
> > python-pyparsing python-six
> > sudo apt-get install build-essential
> > sudo apt-get install pkg-config
>=20
> > sudo apt-get install libperl-dev
> > sudo apt-get install libgtk2.0-dev
> > sudo apt install libasound2-dev
> > sudo apt-get install libdbus-1-dev
> > sudo apt-get install libdrm-dev
> > sudo apt-get install libpciaccess-dev
>=20
> Last time I built a package on Debian based distro was too much ago but
> I remember I searched something like "debian rebuild deb package".
> For instance I found https://raphaelhertzog.com/2010/12/15/howto-to-rebui=
ld-debian-packages/
> The key is the command "apt-get build-dep" that will install all needed
> dependencies. Although you don't want to build a Debian package it will
> install the dependencies needed for the sources.
> One possible missing dependencies looking at error above is some systemd
> development package.
>=20
>=20
> > git clone https://gitlab.freedesktop.org/spice/spice-protocol.git
> > git checkout v0.14.0
> > ./autogen.sh --prefix=3D/usr
> > sudo make install
>=20
> > git clone https://gitlab.freedesktop.org/spice/linux/vd_agent.git
> > git checkout spice-vdagent-0.17.0
>=20
> > ./autogen.sh --prefix=3D/usr

Try adding --with-session-info=3Dsystemd and installing what is
needed for that to build and be used. Not that many WM using
ConsoleKit I think.

> > sudo make install
> > ******************************************/
>=20
> Frediano
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--gdpndrjdd5xjxxhi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl4UlekACgkQl9kSPeN6
SE/39w/9GLmBrGFFEcbjSQu4XgaD0bBMqvRIf5AtWW/RonLjorOdEZP1s46QDExB
d69mqqX9EfZbRyMHBpQf62SwQEWVAIWq9TTtJK0uJEYGn188Hm5ZyPPwV8x4aWyW
hXD9W9DZGL5qAY3nq9kXbXvyzsaqnPc23hgC8dvXDflRZ5RFsjaFJE8x2Am1rpKS
+a14moNj08jdR5Y48OZwDAAevQGvXLDvmy3ur+0lWM6/KfPlzpalKfDA8TOy8ees
J3hMT+oor7FYw7yJHvlMEaSUz9e7kkiTnHjEEivynwXyQXvc5jACH8Rb1q9FGi8N
4Y13gFhMoW/t9Ct5lT6HtSbxCdoakWvqJkOZy+muU2tKy7Vtwjjj2wwb4XZX2KFh
qOvmqt8B2nrmLr2bC0BK214Hunt/rc+JOm8JN2Dw2TGVZr7lmcDd4++yL3aMbwng
XXx2qCDlmkWh4ZPtWCwOtdXGWP5AhCgPL5anjEd/rhHXU8rQdQHJbhG8PhGCKyk6
cEwV2M2Gnw+Wt389MYfKgjFL9G8kVg5SVP/RKjXw1h6qTPolZby205oFSj4FCJaT
joyDpVge5WiUcmEqJrwiZ0/oTGHDDMQhuvx0I4eaUA90nLmS/EG0Cx0wvIXXTvBt
J0Ne0gLU31Zonp+E80VpJ6fBHvUldzG0GRA8/3dE8iQUR1IvD28=
=dwq8
-----END PGP SIGNATURE-----

--gdpndrjdd5xjxxhi--


--===============0789031466==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0789031466==--

