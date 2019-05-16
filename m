Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F19120709
	for <lists+spice-devel@lfdr.de>; Thu, 16 May 2019 14:34:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C3998945B;
	Thu, 16 May 2019 12:34:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9CD88945B
 for <spice-devel@lists.freedesktop.org>; Thu, 16 May 2019 12:34:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 737363179165
 for <spice-devel@lists.freedesktop.org>; Thu, 16 May 2019 12:34:35 +0000 (UTC)
Received: from localhost (unknown [10.32.181.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1B0016012D
 for <spice-devel@lists.freedesktop.org>; Thu, 16 May 2019 12:34:34 +0000 (UTC)
Date: Thu, 16 May 2019 12:34:34 +0000
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <20190516123434.bdeor6dfxus2lhyp@toolbox>
References: <20190507085605.10054-1-victortoso@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190507085605.10054-1-victortoso@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Thu, 16 May 2019 12:34:35 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk v1 0/4] polkit code to be on
 usb-acl-helper
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
Content-Type: multipart/mixed; boundary="===============0515202772=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0515202772==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qq65szhbgaco3jem"
Content-Disposition: inline


--qq65szhbgaco3jem
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


On Tue, May 07, 2019 at 08:56:01AM +0000, Victor Toso wrote:

Ping :)

> From: Victor Toso <me@victortoso.com>
>=20
> Hi,
>=20
> While looking at channel-usbredir code, seems weird that we are
> ifdef USE_POLKIT on usb-acl-helper function that itself does not link
> with polkit but runs the binary spice-client-glib-usb-acl-helper that
> links to polkit library.
>=20
> This patchset suggestion is to keep the access control helper to work
> without polkit in order to remove the polkit build logic from
> channel-usbredir. That means always building usb-acl-helper and I don't
> see a strong reason not to.
>=20
> Tested on Fedora 29 with polkit and without.
>=20
> Cheers,
> Victor
>=20
> Gitlab-ci: https://gitlab.freedesktop.org/victortoso/spice-gtk/pipelines/=
35468
>=20
> Victor Toso (4):
>   usb-acl-helper: move exec of binary to its own function
>   usb-acl-helper: always build access control helper
>   channel-usbredir: use mutex on polkit code path
>   channel-usbredir: move polkit related checks to usb-acl-helper
>=20
>  src/Makefile.am        |  13 +----
>  src/channel-usbredir.c |  54 ++----------------
>  src/meson.build        |   7 +--
>  src/usb-acl-helper.c   | 124 +++++++++++++++++++++++++++--------------
>  4 files changed, 90 insertions(+), 108 deletions(-)
>=20
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--qq65szhbgaco3jem
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAlzdWNoACgkQl9kSPeN6
SE8eLQ/8CuLOht2bFOH7nzWm2tA6oIEWCAb6OKBDCjkEeXHqn/Wjl2fIrmZAnRzN
03e476hkRzdW9ZEIGNGfKExsIvkFSPK8mY190TH6nAQ2WIMZjl4FPwHbQ2ceTm5J
pdFUeF0wk05lNDMnQQ9WKeUB6Fb/JO6txj9UJzR09qqQGgz3Hn8RNiY0ACXOX/AQ
YYIMzdkDcUjIKpo9l5EJiw3NlzBj6HNb8FAmEe6R2WGIlpcTWn+hqdPdx6N07We4
OzSbpr7XzEo9tueMqsijexm3HzXiKYDVg7zbZMreEwoi9Vy3tckvzPnPN4huWA56
WJec+KHAD6NdRX0hj6+qSlQyJREWNlRShKMw1avYNvQsAG0axCgqmK35942Kgtg3
s8Jbal9S+rTZCJ1EuVeJEYtWOBzts7b0Xkw4ivHK30AymSNZ2Suz1/R76R1uQDWg
AsWP3dKqKtslIpgoeqwsjbhIE7HuzcJLpyFzRfb1TsveyNrrXnuZ4pSd5lKB57wq
N3aigcehU3Yg4ABKbLqwqHkgUVOwy5rZWO6N8KaHmxrCL0e03bF3WI91uS/p6x4P
wxRRqlRfuMP8F0kBrhp7TsVZ8QvzOgEd17gIuFEXsd64G489v/OaTqGqmXLLQJqz
7nypelVcTIJZ9ub91uqxC+CeWBTWcf3e8h1H4XdNXdtUwbT6AgQ=
=UFlO
-----END PGP SIGNATURE-----

--qq65szhbgaco3jem--

--===============0515202772==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0515202772==--
