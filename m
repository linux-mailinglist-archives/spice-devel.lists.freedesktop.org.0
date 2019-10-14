Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D49D6117
	for <lists+spice-devel@lfdr.de>; Mon, 14 Oct 2019 13:17:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C1396E25E;
	Mon, 14 Oct 2019 11:17:24 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 338B76E25E
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Oct 2019 11:17:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id ADA7820E9
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Oct 2019 11:17:22 +0000 (UTC)
Received: from localhost (unknown [10.32.181.83])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 585B51001B0B;
 Mon, 14 Oct 2019 11:17:22 +0000 (UTC)
Date: Mon, 14 Oct 2019 13:17:21 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20191014111721.42pfpopsadfqfyfg@wingsuit>
References: <20191010145630.23553-1-fziglio@redhat.com>
 <20191014103624.jknw2x4b4volp6jv@wingsuit>
 <1916106819.6531694.1571050925073.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <1916106819.6531694.1571050925073.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.71]); Mon, 14 Oct 2019 11:17:22 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] spice_protocol: Update many
 names
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
Content-Type: multipart/mixed; boundary="===============1031452224=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1031452224==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4smuo4r27cyw4slu"
Content-Disposition: inline


--4smuo4r27cyw4slu
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 14, 2019 at 07:02:05AM -0400, Frediano Ziglio wrote:
>=20
> > Hi,
> >=20
> > On Thu, Oct 10, 2019 at 03:56:30PM +0100, Frediano Ziglio wrote:
> > > Using an old "renames" file found in spice-protocol repository
> > > I update some old names in the documentation protocol.
> > > Also updated some other names manually.
> > > I processed the file and fixed some code indentation.
> > > File looks much more up to date.
> > >=20
> > > Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> >=20
> > I'd add doc: as prefix of shortlog to be clear that commit
> > purpose is on docs. I had a quick look and built and checked the
> > html, looks okay. I've also sent a patch to add this and others
> > in meson.build
> >=20
>=20
> So, better to change shortlog to:
>=20
> docs: Update many names in spice_protocol.txt
>=20
> ??

Sure

> > Acked-by: Victor Toso <victortoso@redhat.com>
> >=20
> > > ---
> > >  docs/spice_protocol.txt | 808 ++++++++++++++++++++------------------=
--
> > >  1 file changed, 404 insertions(+), 404 deletions(-)
> > >=20
> > > diff --git a/docs/spice_protocol.txt b/docs/spice_protocol.txt
> > > index 58bc01664..d191462d1 100644
> > > --- a/docs/spice_protocol.txt
> > > +++ b/docs/spice_protocol.txt
> > > @@ -51,10 +51,10 @@ is in little endian format.
> > >  .. UINT32 =E2=80=93 32 bits unsigned  integer
> > >  .. INT32 - 32 bits signed integer
> > >  .. UINT64 =E2=80=93 64 bits unsigned  integer
> > > -.. ADDRESS - 64 bits unsigned integer, value is the offset of the
> > > addressed
> > > +.. SPICE_ADDRESS - 64 bits unsigned integer, value is the offset of =
the
> > > addressed
> > >  data from the beginning of spice protocol message body (i.e., data
> > >  following
> > > -RedDataHeader or RedSubMessage).
> > > -.. FIXED28_4 =E2=80=93 32 bits fixed point number. 28 high bits are =
signed
> > > integer. Low
> > > +SpiceDataHeader or SpicedSubMessage).
> > > +.. SPICE_FIXED28_4 =E2=80=93 32 bits fixed point number. 28 high bit=
s are signed
> > > integer. Low
>=20
> ... omissis ...
>=20
> Frediano

--4smuo4r27cyw4slu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2kWUEACgkQl9kSPeN6
SE+a6A/8CmvZMymZckkKNmW1rf4f/GZ+FaT3P+Pf44xl9KCnZWCBvhkfjyyzEL4z
w0V/UbXKsJxKGgZTL7SFu5JrQZ6JSuBQsdZquPTNENnqzHJiNNdPV5X7fDsvNEr6
nz7ab17W0UuUAZ81Yfy6ow7fB6HANBVjrcmjZe+Hq3ziheM1kD6/mrqjSl4Ga325
dWJfECUhzQ74UH2ELLRYMAFs2EDjMLgI1pz+wnRvyr2v99Dkm6gqDcAoCNjZRZsN
jFiwuNEeJq0umJTm/an32yhygt0VfKXFVsrtE+AOvXxwsb5QTM170NKWgNMCp1vR
nvgbBOkC8ffS7WtLz/EYuMvntaejAzfc3rqaKuJU3thslHePdh82jDTGcoXqartg
zlnyQm8Nl2uKU2wAITYCmKckYq0mCVQmuCR74TfP8U2F9nKbWwB2kkNfI0R2xuD5
zWiaqRpTbVdVrbbBWV25o45liXwrFDQPIw6Yov6573nExzOcwaqwQzhAlwBWtMWE
wO8XUGUHLpKIF7FKf8i5jKSGnpoNvIoVrPoeuLlp8YP4uRSJDMQUHjvPrKfVHdGm
Q+YWbtx9QLcuY17mjqqonVFQS6nwSIuFt2sYhNYgIg7mDGh5FQ5j649vUDvLNi/Z
JvoZem/vLRwT+mz6Wwcrli/hHFPQM/lT2uoRmN5SdWpPMmznqzg=
=nxus
-----END PGP SIGNATURE-----

--4smuo4r27cyw4slu--

--===============1031452224==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1031452224==--
