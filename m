Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B7BB750C
	for <lists+spice-devel@lfdr.de>; Thu, 19 Sep 2019 10:25:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E7B76F46F;
	Thu, 19 Sep 2019 08:25:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50B6C6F46F
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 08:25:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 063D988383C
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 08:25:57 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A9B816013A;
 Thu, 19 Sep 2019 08:25:56 +0000 (UTC)
Date: Thu, 19 Sep 2019 10:25:55 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190919082555.ptdj2pi6pkcjqg3g@wingsuit>
References: <20190916102104.20943-1-victortoso@redhat.com>
 <20190916102104.20943-7-victortoso@redhat.com>
 <1844961138.451355.1568801364300.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <1844961138.451355.1568801364300.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.69]); Thu, 19 Sep 2019 08:25:57 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH v7 06/20] usb-backend: add safe check on
 attach()
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
Content-Type: multipart/mixed; boundary="===============0853331753=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0853331753==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="56ki4tuqr645g4lv"
Content-Disposition: inline


--56ki4tuqr645g4lv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Sep 18, 2019 at 06:09:24AM -0400, Frediano Ziglio wrote:
> >=20
> > From: Frediano Ziglio <fziglio@redhat.com>
> >=20
> > At this moment, spice_usb_backend_channel_attach() is only related to
> > real devices and this call might happen on channel-up event that can
> > possibly come before usbredirhost has been created.
>=20
> Were you able to reproduce this condition?

I don't think I did. I recall reading the code to understand the
check from real-device perspective.

> If I put the check I put because the code will support not
> having usbredirhost at all, not because it will be created in
> the future (in this case will ever be NULL).

It is a fact that we shouldn't call this function without
usbredirhost on real-device scenario. I can extend the commit log
if you think it makes sense, adding something like:

" before usbredirhost has been created.".concat(" This checks
also becomes a must in following patches while introducing
emulated devices")

Otherwise, if you prefer that I squash it back, let me know.
=20
> > Signed-off-by: Victor Toso <victortoso@redhat.com>
> > ---
> >  src/usb-backend.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> >=20
> > diff --git a/src/usb-backend.c b/src/usb-backend.c
> > index 6ed957c..68faaae 100644
> > --- a/src/usb-backend.c
> > +++ b/src/usb-backend.c
> > @@ -720,6 +720,11 @@ gboolean
> > spice_usb_backend_channel_attach(SpiceUsbBackendChannel *ch,
> > =20
> >      g_return_val_if_fail(dev !=3D NULL, FALSE);
> > =20
> > +    // no physical device enabled
> > +    if (ch->usbredirhost =3D=3D NULL) {
> > +        return FALSE;
> > +    }
> > +
> >      libusb_device_handle *handle =3D NULL;
> > =20
> >      /*
>=20
> Frediano

--56ki4tuqr645g4lv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2DO5MACgkQl9kSPeN6
SE+LmA/+IRwlFmOe4c4NK4wfnEwPdn/25UPj1yBBjfrHUWf5lmCORpgEKfg0WwEB
5Gdc+x/KAwdvziuxny0ETxXxpc/lI3XX6e6J9MJYBKfYqORpv0eR+pMEp9ltn4UR
Wq2vuosX7tsDez/MRQm/JUvBF1BNws9UBvzzmASpjjaNZlrlXCnLsPkFqU0dhIXP
YxkQAAA7nPTYvr6o1SyZVr4OvBqZquVTW+Q5hR0r3pkWvssgcNnT9QeSBmczO6JU
ThMzrlzgTUh6Jj/l05SSzQLo1+SynJTzEdY39dHkuJv3TE3yKXYARovl5iqPhwZk
7sTycysJWKJX2UmOHetD5v+Qf8kP+0/FBa/J2P/tyzZQ7UWEdnwK1XHQypSPvNRn
epMjFrpjR1CMv/StNy2Kn2b8S7GSCsEXrJhpJYZe8FKfgWp4oa0ZebYiCte7t0FE
R+KCkxGNkSWsY0SWdploWvDVMY/N7PFpGrEtr8KuW1vqY0XrrPor8Mhd5zCYFBB8
tGOUVDFCjan7S7FQTiuznQHWDaxTMa0Wv+Sgwq+D6Yl9O0sNC7s9NFCWDqi6sPW4
r2vJVdfupCkgHsX7wGFjNC61xzcJjPBMwe/iwGW2EgWj9ti12dE33TSqIEuN1u92
KyNzuAo2pIHP+Uix7Mi/hcl6UgyoC8UwyfQ+R9mIBjtoTZn1CKU=
=HPiM
-----END PGP SIGNATURE-----

--56ki4tuqr645g4lv--

--===============0853331753==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0853331753==--
