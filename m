Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3573645B5
	for <lists+spice-devel@lfdr.de>; Wed, 10 Jul 2019 13:27:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6B0F89812;
	Wed, 10 Jul 2019 11:27:20 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BE9389812
 for <spice-devel@lists.freedesktop.org>; Wed, 10 Jul 2019 11:27:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 05B1330C34C0
 for <spice-devel@lists.freedesktop.org>; Wed, 10 Jul 2019 11:27:19 +0000 (UTC)
Received: from localhost (unknown [10.32.181.70])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A587C5B0BD;
 Wed, 10 Jul 2019 11:27:16 +0000 (UTC)
Date: Wed, 10 Jul 2019 13:27:15 +0200
From: Victor Toso <victortoso@redhat.com>
To: Uri Lublin <uril@redhat.com>
Message-ID: <20190710112715.ieaizhvlcemirfnu@wingsuit>
References: <20190708120016.27270-1-fziglio@redhat.com>
 <a29c56ec-11b8-247a-1ec1-6feb0bb8033f@redhat.com>
 <1438838942.26817085.1562672838194.JavaMail.zimbra@redhat.com>
 <20190709141619.im3227v46n2s2u52@wingsuit>
 <ebbe6125-75a6-5773-c5c3-77f14ff74e45@redhat.com>
MIME-Version: 1.0
In-Reply-To: <ebbe6125-75a6-5773-c5c3-77f14ff74e45@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Wed, 10 Jul 2019 11:27:19 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk 0/2] Drop autotools
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
Content-Type: multipart/mixed; boundary="===============1957017980=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1957017980==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qs4rw6uslw6nyrcd"
Content-Disposition: inline


--qs4rw6uslw6nyrcd
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 10, 2019 at 02:11:48PM +0300, Uri Lublin wrote:
> On 7/9/19 5:16 PM, Victor Toso wrote:
> > Hi,
> >=20
> > On Tue, Jul 09, 2019 at 07:47:18AM -0400, Frediano Ziglio wrote:
> > > >=20
> > > > On 7/8/19 3:00 PM, Frediano Ziglio wrote:
> > > > > This series is from Marc-Andr=E9, I just rebased it on current ma=
ster.
> > > > > Not much left of the original series.
> > > > > I think it's time to get back to it.
> > > >=20
> > > >=20
> > > > Does meson work well for mingw-spice-gtk ?
> >=20
> > It should, note tha mingw64-filesystem-106 provides mingw64-meson
> >=20
> >      (wingsuit) spice-gtk (master 9a6ffbac) $ dnf whatprovides mingw64-=
meson
> >      Last metadata expiration check: 6:36:54 ago on Mon 08 Jul 2019 13:=
36:17 CEST.
> >      mingw64-filesystem-106-1.fc30.noarch : MinGW cross compiler base f=
ilesystem and environment for the win64 target
> >      Repo        : fedora
> >      Matched from:
> >      Filename    : /usr/bin/mingw64-meson
> >=20
> >=20
> > > >=20
> > > > I think a safer path is to make a release with Meson
> > > > before removing autotools.
> >=20
> > I had that in mind with 0.37 release o/
> >=20
> > https://gitlab.freedesktop.org/spice/spice-gtk/-/tags/v0.37
>=20
> Note that this release was done with autotools and not meson.
>=20
> https://www.spice-space.org/download/gtk/spice-gtk-0.37.tar.bz2
>=20
> Uri

Yes, but my reply was to "make a release with Meson", meson.build
is included.


--qs4rw6uslw6nyrcd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl0ly5MACgkQl9kSPeN6
SE9q4Q//c/f6O3CEKtWOFBkiIlK01stcfq1HOdIMSttUJ1AMntDPY6HkACUP4OtE
aLjKwER7WJJlbQlv20u87BK6U88O+CZD2cM7q9uwBLPvei2N08aoz0gEAMlJHi0M
Taf88SmPHW35oaJTxty9r4EK4jmYOTFv842JusRyH95m+YVHXxfhKdLDGz6Pt8En
6JoqCTlJivXfAG76I7rI6DIxbr2U1rs3fr+PZLtMB72rYmwUVvZUQVw8/ybhu+ZX
BqCJAnmqndT4USffbcRlrnLd1TWxfz/95dAkRt/AHV1eeAw4piSs6OemgROICCph
Fzp0SfjLV//kXv/g5oJznDPYW6RFFC5tj2B3WSX308V+kpaNRDdKaKwuUWB1lPVw
Ypd6+PDM6zuJ9W3m169fZqrYNGjEPBsAWXGGyhNZcvzb/ijH4ovf2SicS15o5SyW
shpTgr7Dx5rYLYmWoTWGBa7v1iAMT3pPeyZgyaphF+MpuArHmp+7Ojuu7B5OSFAW
WPT1limegAJ9m7aOgcPi3MiKXs+7g2K8IgvBGroyeD8XZZ8rEnxok0XW/Mu+krEK
gDedOw7Xh0iMGhNag40rBwlu/BvMVAMIHgvrVsqXFHJY3r5wlbaKtfuFB/2j1EgL
LCF3ZD8y67dCWugkg8P2kTKRo8rB8PDZdedQMWbpNlX4bDVDmKc=
=/f8I
-----END PGP SIGNATURE-----

--qs4rw6uslw6nyrcd--

--===============1957017980==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1957017980==--
