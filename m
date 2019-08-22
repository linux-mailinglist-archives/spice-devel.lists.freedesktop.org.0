Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3AB3992E7
	for <lists+spice-devel@lfdr.de>; Thu, 22 Aug 2019 14:10:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76C756E4B1;
	Thu, 22 Aug 2019 12:10:17 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BA696E4B1
 for <spice-devel@lists.freedesktop.org>; Thu, 22 Aug 2019 12:10:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 94B7781DE1;
 Thu, 22 Aug 2019 12:10:15 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3EA2210016EA;
 Thu, 22 Aug 2019 12:10:15 +0000 (UTC)
Date: Thu, 22 Aug 2019 14:10:14 +0200
From: Victor Toso <victortoso@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <20190822121014.o3aygycmlhqlvexy@wingsuit>
References: <20190812095729.32692-1-yuri.benditovich@daynix.com>
 <20190822102010.t6gj2lziakbdysme@wingsuit>
 <CAOEp5Oesz8nW3KtXXbBUH0PHYjATnOL6G+p-MhLGKCLxXbgqog@mail.gmail.com>
 <2040683497.8221474.1566470443901.JavaMail.zimbra@redhat.com>
 <CAOEp5OehcAata_psv_Y7FBTdik8gUPnEk2XZftfM4b1hpiHQVA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAOEp5OehcAata_psv_Y7FBTdik8gUPnEk2XZftfM4b1hpiHQVA@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Thu, 22 Aug 2019 12:10:15 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk v3 0/9] added feature of sharing CD
 image
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
Cc: Yan Vugenfirer <yan@daynix.com>,
 Spice List <spice-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============0492835480=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0492835480==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="imtqmk7ows2fula4"
Content-Disposition: inline


--imtqmk7ows2fula4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Aug 22, 2019 at 02:09:35PM +0300, Yuri Benditovich wrote:
> On Thu, Aug 22, 2019 at 1:40 PM Frediano Ziglio <fziglio@redhat.com> wrot=
e:
> > > > It is a shame that no unit tests were added. Do you plan
> > > > to do it in future patchsets?
> > >
> > > How many features in spice-gtk do have unit tests and how
> > > many do not?
> > >
> >
> > This is not answering what Victor asked.
> > He asked if you plan to add some new tests.
>=20
> First of all, there is a claim: "it is a shame..."
> So I've tried to evaluate the measure of the problem.

Sorry if this offended you in any way. I use the "it is a shame"
the same way I'd use "It is unfortunate".

As you mentioned, our code is not well unit tested and a new
feature that changes the code and introduces something *emulated*
does sound to me as a good case for improving tests thus I asked.

> My plans are derived from priorities and the priorities at the
> moment are: to deliver the feature and its GUI.
> After that I can reevaluate the plans

So, you'll evaluate writing tests once this feature is merged and
GUI is integrated.

Note that in my ~15 words question, I didn't require the tests.
This'll likely change in near future.

> > As I said in a previous reply the company is asking us to
> > improve testing in the code.
>=20
> IMO, unit tests are mainly indended to help us preventing
> regression when the code is changed.

Imho, to avoid regressions, unit tests are the important, yes.
But also to prove that a bug in the codebase is fixed.

> So, development of tests should be planned and prioritized.

--imtqmk7ows2fula4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1ehiYACgkQl9kSPeN6
SE+k7RAAjckVdbwfILNDU/GEZq1WTJWGpfrYbVjrSfQuslzuOccUpRcSNP44nGmv
O3G7+B4YitjDMkPE/SeisuR0qeuj/cGneGgr8LIYsitPQRUlML+TnaAALJLYtEum
UGNhBj6y6iwLpmYaiA5mQL623iUPZlBoMWl07opkC2A+8/+XILstdXL5HPoexc2E
tftdB9FeKmpsa69mTmpg0m1FIBGFXQnUeWy3t86qU4SNONFUU7p/FybRnW/itL47
7UaCcitwOinvPmTHLpDuFIvp/A4rwJoLdpuvpik4tuT0FaIfizFA57cGwhgxECtx
tE0wUUjnvykNorcEkoIMOLuZvrJNdpi9w6ZJ/m3A2D4zQeczZhRaF5kVH+cqnFFM
n5vhaUswQnSR5f9ux6+cU0c5eoGXHXwAPpERk+Lo3aooT+xxxjkWWP+Fssj8gQR9
Scacb3zAU29nDJx4Qdi9ZjyiRO0Q2OWmjo1yReuOp+kvCSXT9ryaZeRGGNtgWbvG
4Ch0ZB46ycE8/Hu4dGKkaRU6yVV9DEg52x9cNw4DDqjN990Ppha7BzGS557Xz7VK
JJAhvFMzmjcS4ET/NzjHXnwweCZOlfa2iV6zjzQ0FGlpZpvrwveF7pbaxGs4Bjj4
vi0UFgZ3+e3pppQYzTH70nYCDtY8DLdQz6w1OtIed6DRCJBbgBQ=
=oFNB
-----END PGP SIGNATURE-----

--imtqmk7ows2fula4--

--===============0492835480==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0492835480==--
