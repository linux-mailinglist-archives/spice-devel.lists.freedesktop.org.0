Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C38F6E42E
	for <lists+spice-devel@lfdr.de>; Fri, 19 Jul 2019 12:23:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 834476E7FA;
	Fri, 19 Jul 2019 10:23:25 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DF466E7FA
 for <spice-devel@lists.freedesktop.org>; Fri, 19 Jul 2019 10:23:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B8B5E2F8BDC;
 Fri, 19 Jul 2019 10:23:24 +0000 (UTC)
Received: from localhost (ovpn-117-237.ams2.redhat.com [10.36.117.237])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5976C61369;
 Fri, 19 Jul 2019 10:23:22 +0000 (UTC)
Date: Fri, 19 Jul 2019 12:23:22 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190719102322.3h6qmhnrayhd7lk4@wingsuit>
References: <20190714140741.3274-1-yuri.benditovich@daynix.com>
 <20190714140741.3274-5-yuri.benditovich@daynix.com>
 <582622360.127784.1563199477825.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <582622360.127784.1563199477825.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Fri, 19 Jul 2019 10:23:24 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk 4/5] usb-redir: delete usb-backend
 context on initialization error
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
Content-Type: multipart/mixed; boundary="===============0374258903=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0374258903==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ejvebjbfe57feapt"
Content-Disposition: inline


--ejvebjbfe57feapt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 15, 2019 at 10:04:37AM -0400, Frediano Ziglio wrote:
> >=20
> > The delete in error flow was missing.
> >=20
> > Signed-off-by: Yuri Benditovich <yuri.benditovich@daynix.com>
> > ---
> >  src/usb-device-manager.c | 1 +
> >  1 file changed, 1 insertion(+)
> >=20
> > diff --git a/src/usb-device-manager.c b/src/usb-device-manager.c
> > index 857d057..7105ff1 100644
> > --- a/src/usb-device-manager.c
> > +++ b/src/usb-device-manager.c
> > @@ -259,6 +259,7 @@ static gboolean
> > spice_usb_device_manager_initable_init(GInitable  *initable,
> >      if (!spice_usb_backend_register_hotplug(priv->context, self,
> >                                              spice_usb_device_manager_h=
otplug_cb,
> >                                              err)) {
> > +        spice_usb_backend_delete(priv->context);
>=20
> Should not have a following "priv->context =3D NULL" ?

Good catch

>=20
> >          return FALSE;
> >      }
> >  #ifndef G_OS_WIN32
>=20
> Frediano
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--ejvebjbfe57feapt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl0xmhkACgkQl9kSPeN6
SE9VCg//V23djLQva/r1leTUJ+DwTM42INML1XYsC32Z3geUhVT8ivmfkYZAKxZa
a05s5R3IgRXJyWe5ELU3AAfJdNTk4ZLUn1XT6kWNbibSnS5/E4pc59UY0RLFCs9O
nv15AN5k1/imVXIQjFR4rKob/WzwMbAM1cdc05Zk0ddak0Zb15YFWCS1j+aEzUT7
fCYVEzytTVoCLrMObiQUeLLjiyMx+kHM/7FgFWa6hGVud9cid9vYNdqdV64ICa7x
z7hCPzdmu5oqyChTT1466ZYvex7xdFBSRygni3pVmeqiza5SVn7qpHFkg0H1V7SH
Mqt3z6uCf64IgEHiBwucEcujp3ow7VbVLBaZk5uNkUFw1xeqgE1wbM62gng1oTSE
lIUHsfp77lPGMa3jjjtB7YIriY5D1iyhIw0DzlkFUWnHEkMXlyzN/fzwffUdFQJm
qqFDWtzXSK5cfMW9sEDImS1K8unLEHJcIs5w2iBHGq8bxnWMQDfTd2asSgAKBVT6
0rDlDKubD723yNc/7bjIUJ8hLz9AYkpnIc8qW0QDYexUJQSz0+Q/9XBllOKuWiXf
2i3ybM74vLt/61BB3Sn+VOFp6yC7tMgk7GtVhhghjzTd/1sprx50aaR93Ri0afTG
CzIAYvlXhudaxkZ8yfuWPWSL6I69G2N5eXe25iPsORIWy0V23o0=
=Dx0u
-----END PGP SIGNATURE-----

--ejvebjbfe57feapt--

--===============0374258903==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0374258903==--
