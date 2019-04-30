Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D21F225
	for <lists+spice-devel@lfdr.de>; Tue, 30 Apr 2019 10:40:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8DAB8916B;
	Tue, 30 Apr 2019 08:40:33 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B815C8916B
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 08:40:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1F2A430018F6
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 08:40:31 +0000 (UTC)
Received: from localhost (unknown [10.32.181.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B223A42401;
 Tue, 30 Apr 2019 08:40:00 +0000 (UTC)
Date: Tue, 30 Apr 2019 08:39:59 +0000
From: Victor Toso <victortoso@redhat.com>
To: Uri Lublin <uril@redhat.com>
Message-ID: <20190430083959.bzwvgkvwwh5oq46s@toolbox>
References: <20190423152457.16958-1-uril@redhat.com>
 <c5e2549c-40af-de8f-37b1-20f5daa6a379@redhat.com>
MIME-Version: 1.0
In-Reply-To: <c5e2549c-40af-de8f-37b1-20f5daa6a379@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Tue, 30 Apr 2019 08:40:31 +0000 (UTC)
Subject: Re: [Spice-devel] [Patch spice-gtk 0/2] Fix out-of-tree builds
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
Content-Type: multipart/mixed; boundary="===============1415177396=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1415177396==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qfzb3uopclrfh5lm"
Content-Disposition: inline


--qfzb3uopclrfh5lm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

HI,

On Tue, Apr 23, 2019 at 07:05:00PM +0300, Uri Lublin wrote:
> On 4/23/19 6:24 PM, Uri Lublin wrote:
> > There are two patches:
> >    The first picks the fixed spice-common
> >    The second adds a gitlab-ci test for out-of-tree builds
>=20
> gitlab-ci pipeline with both patches:
>     https://gitlab.freedesktop.org/uril/spice-gtk/pipelines/32682
>=20
> gitlab-ci pipeline with only the second patch (fails as expected):
>     https://gitlab.freedesktop.org/uril/spice-gtk/pipelines/32558

Thanks,
Acked-by: Victor Toso <victortoso@redhat.com>

>=20
>=20
>=20
> >=20
> > Uri Lublin (2):
> >    spice-common: update submodule
> >    gitlab-ci: build out-of-tree too
> >=20
> >   .gitlab-ci.yml           | 7 +++++--
> >   subprojects/spice-common | 2 +-
> >   2 files changed, 6 insertions(+), 3 deletions(-)
> >=20
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--qfzb3uopclrfh5lm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAlzICd8ACgkQl9kSPeN6
SE9nQBAAuhxZG87CBpSnqPiVPNs+pwIYMkWUzHuvSXco/PBTp/T+iKGDGpu7wvIu
UO7d7aj8/9mtEYHC3NcRHeULUNMzDmReSyRYVFNJin9bl5s1OSQn5Vv/UxeRdDJ+
NeOoUOSHHfEczpu4u0S73NsdE0Zto1OG02eAIl2fFR44Mp5ttGvL3IBjQ5TLrDL6
vHYLvBWq6ZWo74Zb2HJx1sZ+G/T5DJ32LLXN5x1en03tIXdsCAiWHaMNeWW8CjUZ
ICQ81jvoYZTFwtzCcuk0i5snY7+jlfdjKYiGosi2Ki+PZBF5d6jCMsPzaRBPBVNH
10zJGUKRhFdoFdzbIhG+E/cdli836UK1uCYqeblu9jdSbvY/nwKLoTZUN32FIuxr
BDf2Q3I3p7M/dDF/ZdswUZV+MzaxnjLDp7dbZfey0tUEvAENzHdksyxNBtVX3cQG
A/K7tx0TxFRU0t8gj8IEngKBeC9RA92+YfaENcnGshObi9Ja4XcIAiS5yoKCyuD4
n5j9tTIZeRn4VfcWbVGpnVlZTIUx59TTy1KlWD4/QfhGu9g9UbcPMmDbU+1uNQdG
fXPJ0Of3fx/ik9XnbKJ/t2CVXLlSFSfgAFYIaRlQwFIASTVVmFe7Rzhr0ecjGl4e
Ah/+KFuEN6H9fsTIz908Pidnf8svsmVEl3BfT9PrEdtfRcm670w=
=bHMG
-----END PGP SIGNATURE-----

--qfzb3uopclrfh5lm--

--===============1415177396==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1415177396==--
