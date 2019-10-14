Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E426D64FB
	for <lists+spice-devel@lfdr.de>; Mon, 14 Oct 2019 16:20:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0B6889D3E;
	Mon, 14 Oct 2019 14:20:30 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BF9289D3E
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Oct 2019 14:20:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1321E8980ED
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Oct 2019 14:20:29 +0000 (UTC)
Received: from localhost (ovpn-116-33.ams2.redhat.com [10.36.116.33])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A50454D9E1;
 Mon, 14 Oct 2019 14:20:26 +0000 (UTC)
Date: Mon, 14 Oct 2019 16:20:26 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20191014142026.br4onv4srrtf45ha@wingsuit>
References: <20191011095629.28447-1-fziglio@redhat.com>
 <20191014104027.6guigds4d3ohr66x@wingsuit>
 <352330255.6546945.1571059131376.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <352330255.6546945.1571059131376.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.67]); Mon, 14 Oct 2019 14:20:29 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-protocol 0/5] SPEC integration
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
Content-Type: multipart/mixed; boundary="===============0039032785=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0039032785==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="676tv565455bq5tw"
Content-Disposition: inline


--676tv565455bq5tw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Oct 14, 2019 at 09:18:51AM -0400, Frediano Ziglio wrote:
> >=20
> > Hi,
> >=20
> > On Fri, Oct 11, 2019 at 10:56:24AM +0100, Frediano Ziglio wrote:
> > > This series is part from a former series.
> > > There's an initial import commit to better understand the changes.
> > > It contains some work from Eduardo for MingW packaging.
> > > Final patches are really minor.
> >=20
> > Should I/we wait for Eduardo's review?
> >=20
>=20
> No idea what to suggest here. But surely I'd like some comments from
> him. Part of the implementation came from his job.

Ok, I'll try to give feedback later this week too.

> > > Frediano Ziglio (5):
> > >   build-sys: Import spec file from Fedora
> > >   build-sys: Provide spec file during build
> > >   build-sys: Allows spec file to build MingW packages
> > >   build-sys: Update URL in SPEC file
> > >   build-sys: Requires proper pkg-config for MingW
> > >=20
> > >  Makefile.am            |   1 +
> > >  configure.ac           |   1 +
> > >  spice-protocol.spec.in | 224 +++++++++++++++++++++++++++++++++++++++=
++
> >=20
> > Let's add to meson too?
> >=20
>=20
> I didn't though about. All SPEC files I started with are using autoconf
> and I never tested distribution with Meson (I did instead with spice-gtk).
> But it seems a bit of a follow up at the moment, it would require some
> additional scripts to make Meson distribute processed files and other cha=
nges.
> Not considering that if the SPEC at the end is using autoconf a Meson
> build would have to add generated "configure" and other relative files
> which is a bit odd and complex.

As follow up is fine, not a huge issue.

--676tv565455bq5tw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2khCkACgkQl9kSPeN6
SE85ag/+Nw05BHB1TxI5x61PvZcHhka/3mjl1tTq08BgT/QfipzwvFHdg1dPfYRd
JQ+FZDA+dYKvz3XdRWLcSI8YmSPQ7Tb2M5/A6QFR3+YxbKlpN9lZ/5v+57PXNNo9
Kk6SGDer2vWlH8TEH0IYevccZJ03dyBViFm15fIy4o9D1YIyF1gKs+83B1i3c/8E
WLbFzSgX+R669i3nY5YXGfyQWBAVh9zgdSbdGJVFtnwbmMGIYQP2T7X19h9IpzVT
psq9qscs3EnD4rxcuJo1FPIkn+e9uXvoR3rpwCgZNWDo+U5we/k7MNK2nT5HKo66
M1HnXd2VNae5jIZxwh2/250ol7P1l0F3JzJyxZAz0FCLoFd1IKH4K/iuuKGIWBeC
103EFvt95ttuP+UsV1xOxb6i6TDgvoy8qcKBUtLloZvCKbI2AugNntEDaEKwE1ug
liseVSvJOYfUl3zov86C+q6d6MKDBB71RHOVJvixnhJdeDteO6jFhwLdWWiThxwM
CJqpLdhhpR+44EWCSM5peyEYgBPhfHUp+qEX1nxTVQ0G+VVExhOx4uZWoUO8xKud
D0DatZn96Jz9VM/oksMv4nTurKm6zv+OkLBY/PcmsKmS7WoK4ZCyMzmSdE2bBJpm
0Ctw2QiVXh49hujVYwCFrAEo7rK2FZap9CTrm6oEdnvxu4HCpbk=
=Z+yX
-----END PGP SIGNATURE-----

--676tv565455bq5tw--

--===============0039032785==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0039032785==--
