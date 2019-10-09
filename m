Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C90B7D0B42
	for <lists+spice-devel@lfdr.de>; Wed,  9 Oct 2019 11:32:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5373B89B12;
	Wed,  9 Oct 2019 09:32:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD0FD89B12
 for <spice-devel@lists.freedesktop.org>; Wed,  9 Oct 2019 09:32:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7B49B19CFF5
 for <spice-devel@lists.freedesktop.org>; Wed,  9 Oct 2019 09:32:37 +0000 (UTC)
Received: from localhost (unknown [10.32.181.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2561010013D9;
 Wed,  9 Oct 2019 09:32:37 +0000 (UTC)
Date: Wed, 9 Oct 2019 11:32:36 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20191009093236.6eyvghcfpas5nory@wingsuit>
References: <20191009092302.15025-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20191009092302.15025-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Wed, 09 Oct 2019 09:32:37 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server v3 0/5] Multiple improvements
 for Smartcard code
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
Content-Type: multipart/mixed; boundary="===============0307042900=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0307042900==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="nojiutdar47dblmw"
Content-Disposition: inline


--nojiutdar47dblmw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 09, 2019 at 10:22:57AM +0100, Frediano Ziglio wrote:
> Multiple fixes and automatic test of the device/channel.
> Improve previous series.
> Most fixes came from automatic test.
>=20
> Changes since v2:
> - update some comments;
> - split one fix into 2.

Acked-by: Victor Toso <victortoso@redhat.com>
Thanks,

>=20
> Frediano Ziglio (5):
>   smartcard: Fix copying remaining request
>   smartcard: Fix parsing multiple messages from the device
>   test-stream-device: Factor out VMC emulation
>   test-smartcard: Add test for Smartcard device
>   test-smardcard: Improve test coverage
>=20
>  server/smartcard.c                |  27 ++-
>  server/tests/.gitignore           |   1 +
>  server/tests/Makefile.am          |   6 +
>  server/tests/meson.build          |   6 +
>  server/tests/test-smartcard.c     | 379 ++++++++++++++++++++++++++++++
>  server/tests/test-stream-device.c | 224 +++++-------------
>  server/tests/vmc-emu.c            | 124 ++++++++++
>  server/tests/vmc-emu.h            |  51 ++++
>  8 files changed, 648 insertions(+), 170 deletions(-)
>  create mode 100644 server/tests/test-smartcard.c
>  create mode 100644 server/tests/vmc-emu.c
>  create mode 100644 server/tests/vmc-emu.h
>=20
> --=20
> 2.21.0
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--nojiutdar47dblmw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2dqTQACgkQl9kSPeN6
SE+9AA/8DiId0p0mjTaADB+YzLW7LA+omx3gMs1gjXOJ+fKnNdwLgTQbbyKoRvmI
UD3rY6tzI6cUfCwIldEiMKj6rNhUARdI6M9gEPlQi45tPW2cpgTA5/Us5VxAeC/t
Nq/eWVugNh14Cv0w31IpSbIOfy1i5z2sgm1qBxRY5adeV6u4nrzGIISosqd8P/oZ
BQbS04+9o4HLGl3LiuC16jzPl1+qopJ796gPDU4c3hvSNifgVTq4vObZB+8PeTV8
z8+fzgRK9VEFED8kFXCe2zl8974JXUYV9/gOvyZn8IBgyPxJBN9nydw27C5V9M4x
GfyfMVMiL4QoodUIkPr1RiKs6b0190ug3y4XZnkOg3o7EtvQh85OIKCX6mytJxFu
sGSlvekRVYWMQrcA9/yEBlwoK14GqKMFrycm2fmw7MGnNysDRAr2823lRGMhCcuI
EiEnvQPQOPrER6zQ8ycEWABMUSwdI3b3agqdfyTwTbhUb5ggZLyWh5srxAGe9Jpl
x9Ba398BQ8nut5KxVd7dqhi8AkigLypJ0gfERQguLDNK4ONk5jW1EUJEAfVw5IWb
2YNOF3Rwrpli+92O1KS5XChPbSm9f0vjiss21tVJi/tuPPQMXoqsw3fEmYhYB64K
67+HDAU7fJGZZ1xY5aeiqPJuoWYAf7I/paZYlwDezpNtMHdDPrQ=
=Ml1L
-----END PGP SIGNATURE-----

--nojiutdar47dblmw--

--===============0307042900==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0307042900==--
