Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 071F36C946
	for <lists+spice-devel@lfdr.de>; Thu, 18 Jul 2019 08:26:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FDE86E311;
	Thu, 18 Jul 2019 06:26:44 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F07806E311
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 06:26:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 86F118553B;
 Thu, 18 Jul 2019 06:26:42 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 30D2B19C5B;
 Thu, 18 Jul 2019 06:26:42 +0000 (UTC)
Date: Thu, 18 Jul 2019 08:26:41 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190718062641.25jootazgcptiijb@wingsuit>
References: <20190714140741.3274-1-yuri.benditovich@daynix.com>
 <20190714140741.3274-2-yuri.benditovich@daynix.com>
 <2128834677.166369.1563200514428.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <2128834677.166369.1563200514428.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Thu, 18 Jul 2019 06:26:42 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk 1/5] build: require minimal libusb
 version 1.0.21
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
Cc: yan@daynix.com, spice-devel@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============0617323763=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0617323763==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vukx55hev4zeeiu4"
Content-Disposition: inline


--vukx55hev4zeeiu4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 15, 2019 at 10:21:54AM -0400, Frediano Ziglio wrote:
>=20
> >=20
> > Previous commit ca641a5b92 uses libusb_interrupt_event_handler
> > which requires newer version of libusb.
> >=20
> > Signed-off-by: Yuri Benditovich <yuri.benditovich@daynix.com>
>=20
> My fault.

And mine, I acked but didn't check that ;)

> According to repology this should not be an issue.
> Fine for me.

Too,
Acked-by: Victor Toso <victortoso@redhat.com>

>=20
> > ---
> >  meson.build | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >=20
> > diff --git a/meson.build b/meson.build
> > index 32561ee..54160f9 100644
> > --- a/meson.build
> > +++ b/meson.build
> > @@ -199,7 +199,7 @@ usbredir_version =3D '0.7.1'
> >  usbredir_version_info =3D '>=3D @0@'.format(usbredir_version)
> >  d1 =3D dependency('libusbredirparser-0.5', version: usbredir_version_i=
nfo,
> >  required : get_option('usbredir'))
> >  d2 =3D dependency('libusbredirhost', version: usbredir_version_info, r=
equired
> >  : get_option('usbredir'))
> > -d3 =3D dependency('libusb-1.0', version : '>=3D 1.0.16', required :
> > get_option('usbredir'))
> > +d3 =3D dependency('libusb-1.0', version : '>=3D 1.0.21', required :
> > get_option('usbredir'))
> >  if d1.found() and d2.found() and d3.found()
> >    spice_glib_deps +=3D [d1, d2, d3]
> >    spice_gtk_config_data.set('USE_USBREDIR', '1')
>=20
> Frediano
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--vukx55hev4zeeiu4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl0wESEACgkQl9kSPeN6
SE/r5w/+M9zlQl+FDobJAT5DP2OBCmCd63YHeuqnqMY2E8aVS7gtOuapI9dwW0A+
+ObNbtMnNXqwi7kptmOFPEEp2w4kLZHslRqFy+01Zxnz335i5O+kvHZdcvblmmXt
907kkYCJunXCuPk0xYsYGEnhJJAVQH5xhf2HWlLXkP+OGE4yrD4qsPigIWWX8jts
luHgKxT2DCuipXRkvuUw/iS51A5J+2s1aq5jyNjsUU0BR7Q3R3x5w+eCDqmdArVV
htmI8kACqvzhc4x1ueBG/YMUNF5pgFsYXf2+hJJ7Vfj/1hF7pKWccG2hGSdcF37A
Oi4eIb30+4TKl0Q0CyKZe6Vrc/mRS8CFjLU1CPKZMDHMEgSf/E+rg3uMh8wMhsuj
EPWgz4uogOfBaepk+fssp1qE9lAENMip4k2pILHeEfBVCBMLiaGsVIFDIStROa+v
43kknaKkmYxL5xhnx9Ak1fLOXZQv9fYy+SbjC1y5AWsqNDQWn3Qjrpy3odf0RE1N
WZtkRksxczd4qqgBES+Q5lS6nxwSwofKGwHSFnzqzkB/Ln7Jiz38K579Ej+tOsvC
iA4Ax0d3OEjBvPN5KzOUyOVVW8BtKHjAfjJUw+K+aFoN+REjAvvOgsD/xE52kyI8
/mJg/taASfPapes4GDEK7JdcSvQChNRbIHvQF8vtBo/D+6U15Cc=
=ho/i
-----END PGP SIGNATURE-----

--vukx55hev4zeeiu4--

--===============0617323763==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0617323763==--
