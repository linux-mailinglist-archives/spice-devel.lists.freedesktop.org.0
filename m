Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F67D6399
	for <lists+spice-devel@lfdr.de>; Mon, 14 Oct 2019 15:18:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C1F76E2DD;
	Mon, 14 Oct 2019 13:18:22 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09E936E2DD
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Oct 2019 13:18:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9C69BA3CD85
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Oct 2019 13:18:20 +0000 (UTC)
Received: from localhost (unknown [10.32.181.83])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3CB7A1001DC0;
 Mon, 14 Oct 2019 13:18:20 +0000 (UTC)
Date: Mon, 14 Oct 2019 15:18:19 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20191014131819.526raxal5ik65vxd@wingsuit>
References: <20191014114043.31988-1-victortoso@redhat.com>
 <784642266.6541229.1571057721950.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <784642266.6541229.1571057721950.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.68]); Mon, 14 Oct 2019 13:18:20 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH v2 1/2] docs: include protocol and
 for-newbies documents
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
Content-Type: multipart/mixed; boundary="===============2045496574=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============2045496574==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="n724i535g26rvebd"
Content-Disposition: inline


--n724i535g26rvebd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Oct 14, 2019 at 08:55:21AM -0400, Frediano Ziglio wrote:
> >=20
> > From: Victor Toso <me@victortoso.com>
> >=20
> > Only by building and sharing the documents we will be able to get them
> > up to date.
> >=20
>=20
> OT: is the page at www.spice-space.org updated manually based on these ch=
anges?
> (https://www.spice-space.org/documentation.html)
> I suppose being them in PDF format the reply is no.
>=20
> ... omissis ...

The repo for the website and its content is respectively:

    https://gitlab.freedesktop.org/spice/spice-space

    https://gitlab.freedesktop.org/spice/spice-space-pages

Shouldn't be too hard get latest docs from spice git master
instead of [0], if that's what is being in use, didn't check.

[0] https://gitlab.freedesktop.org/spice/spice-space/tree/master/content/st=
atic/docs

IMHO, I'm all in for updating website docs every spice release
(as the docs should match that/latest release) but I haven't
touched this for long time now.

--n724i535g26rvebd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2kdZsACgkQl9kSPeN6
SE9gNw//czGD0TFkK1FqfGTNDyoxGTwgS209wMuxbmawpYUAeFf4J7GUiApr0w3m
iR+KK4z3ykezkVSiUaMA54hPdh5chx9BY9X7PQVqLCPvFtDh8TFGnn4jqXDAbsYW
KPaOuRdF+2sQDeBD2QZbfU3PPeyUGj5VopGw3md7bLBUpEl7kR7ctHyT0QkfWx2K
p5xwfC9krkuEao3zfXo2EA+ViRMiJY+Eb8/BKmekkEmnBE0q8BqIWXDYz8knrlU0
sYIaOe+MYS771s524jv3c82R0NMyKUN4PMntmy4x2ssaoOlQQRwAq6PMu6lg+AyJ
fpQnvS23lZ8gb1R++RusrQ4nr78gnii4/geHpkbK87+pZ9xdg1ZX9qfjpCzB8ZV/
c7T21l4C34jJqYbFg5C5gJb3PwoyXgJsBWjnEFmwd/9P+9QkJ3ztSxqykXzkZ0jr
tchDPAEbmr3zOQl1DCwKKVZOSmmBP4swEuLZhZ1T+WrpSTgiNy2lb3bAXMw1qczA
6/Cy7XPDWatM6CSC+xaxS47iS9HanpUrGU2XYwcoucqhTs0P6gs1tkRJsfCUIH50
/eFp1R12et34k+G6RT27Dd6s563umOECol4QZeKYJPoBUmEIo36dF+aTsbgA0dce
+F1saZcxem6cvN8O5LCV9klt+3YuAvzhoXD7+DrV68KPCSwsCpU=
=pyF/
-----END PGP SIGNATURE-----

--n724i535g26rvebd--

--===============2045496574==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============2045496574==--
