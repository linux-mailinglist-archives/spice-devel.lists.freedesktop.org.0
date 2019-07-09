Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF0463791
	for <lists+spice-devel@lfdr.de>; Tue,  9 Jul 2019 16:16:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14B8E6E060;
	Tue,  9 Jul 2019 14:16:25 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C87B6E060
 for <spice-devel@lists.freedesktop.org>; Tue,  9 Jul 2019 14:16:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3C18830ADC7C
 for <spice-devel@lists.freedesktop.org>; Tue,  9 Jul 2019 14:16:23 +0000 (UTC)
Received: from localhost (ovpn-117-37.ams2.redhat.com [10.36.117.37])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9FDB35DD9B;
 Tue,  9 Jul 2019 14:16:20 +0000 (UTC)
Date: Tue, 9 Jul 2019 16:16:19 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190709141619.im3227v46n2s2u52@wingsuit>
References: <20190708120016.27270-1-fziglio@redhat.com>
 <a29c56ec-11b8-247a-1ec1-6feb0bb8033f@redhat.com>
 <1438838942.26817085.1562672838194.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <1438838942.26817085.1562672838194.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Tue, 09 Jul 2019 14:16:23 +0000 (UTC)
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
Content-Type: multipart/mixed; boundary="===============2123952883=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============2123952883==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="gtzwekkkooe26ivy"
Content-Disposition: inline


--gtzwekkkooe26ivy
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Jul 09, 2019 at 07:47:18AM -0400, Frediano Ziglio wrote:
> >=20
> > On 7/8/19 3:00 PM, Frediano Ziglio wrote:
> > > This series is from Marc-Andr=E9, I just rebased it on current master.
> > > Not much left of the original series.
> > > I think it's time to get back to it.
> >=20
> >=20
> > Does meson work well for mingw-spice-gtk ?

It should, note tha mingw64-filesystem-106 provides mingw64-meson

    (wingsuit) spice-gtk (master 9a6ffbac) $ dnf whatprovides mingw64-meson
    Last metadata expiration check: 6:36:54 ago on Mon 08 Jul 2019 13:36:17=
 CEST.
    mingw64-filesystem-106-1.fc30.noarch : MinGW cross compiler base filesy=
stem and environment for the win64 target
    Repo        : fedora
    Matched from:
    Filename    : /usr/bin/mingw64-meson


> >=20
> > I think a safer path is to make a release with Meson
> > before removing autotools.

I had that in mind with 0.37 release o/

https://gitlab.freedesktop.org/spice/spice-gtk/-/tags/v0.37

> >=20
> > Uri.
> >=20
>=20
> We had windows in CI and Marc-andre is using Meson for Fedora.
> Victor, as far as I know, managed to do a package using Meson.
> We could rollback if needed but we tested it in different ways.
> RHEL 7 has Meson packages needed (although I don't remember if
> this was tested).

So far, I think this should be fine. Lots of GNOME projects are under
meson  only which means, I expect high compatibility with newer systems

Cheers,
Victor

--gtzwekkkooe26ivy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIyBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl0kobMACgkQl9kSPeN6
SE/Aog/3WE6/O4CKVaL9n66miTsC+i7h/tBNZbGqEDoi/qSLmLhSFVCTo6ZUQu6f
Ct7dml9tPNom05THMg7cCg1DCGdAcHFxpAXYeNC2t7/r0RQIXsrhhsFPyjCxXXTc
hDdPr1ebSZOW7GwqetIVQRWtdOHHqNrQxCOPDq1BV81AfqorZWXqSd66PeRKCK0n
hQCzi2RGT76sWop+4fJOAcZ/C6SWjrHG2TO4+/Z7Qs9yAiSRJaj6eeXCf7AC1+EB
L+j9JsMW6nsBHlnUp6b5hKaCTyiVHs+jaBbXCAg+4w2hiuzcc9gA5FAz/TKv/wNB
FuXwtKGEfvME2ju4oSTjWH18NrXyz7pIPujzSSkw69KDCRU2ZIpG4ePLP+i6Cuqg
k4kMv7sMRfBb+dW97wSdMCLWb9s+S5125hYCiYxSynZU/5Pn6I9w+8Wnj6KNvf5f
WryZWC3s/fLB+kVZsSQpBWvsCQ2YMyLYn5ms6GYNcAHBM65h+GFuHzR02A3n/kht
BmRZVnTr6hd2emMCWVktVs3+SPxZHgaVa76GreUZKu5zeyR3E+SL0e+kuGOss3H9
97q4XPZS3lnMflOuJCWxvJ9kGM3zMcG2HWq90argZUrar5taz6yZ6VDGW43GOiiN
Wtmi+OAN+KUMVGeLUvsTVTlmSXVFeJNvLGz53NuibjFWJ/dRpQ==
=xYpA
-----END PGP SIGNATURE-----

--gtzwekkkooe26ivy--

--===============2123952883==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============2123952883==--
