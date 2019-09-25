Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73DCBBDB8D
	for <lists+spice-devel@lfdr.de>; Wed, 25 Sep 2019 11:55:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD45C6EB63;
	Wed, 25 Sep 2019 09:55:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E8086EB63
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:55:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2C6A77FDCA
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:55:36 +0000 (UTC)
Received: from localhost (unknown [10.32.181.60])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CE0D261F24;
 Wed, 25 Sep 2019 09:55:35 +0000 (UTC)
Date: Wed, 25 Sep 2019 11:55:34 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190925095534.7paraxcefdl773fm@wingsuit>
References: <20190925090701.19130-1-victortoso@redhat.com>
 <20190925090701.19130-9-victortoso@redhat.com>
 <1514848675.3206007.1569404390361.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <1514848675.3206007.1569404390361.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Wed, 25 Sep 2019 09:55:36 +0000 (UTC)
Subject: Re: [Spice-devel] [spice 8/8] tests: migrate: add counter for tests
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
Content-Type: multipart/mixed; boundary="===============0837689459=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0837689459==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xuutdlo4ljpa3kgj"
Content-Disposition: inline


--xuutdlo4ljpa3kgj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 25, 2019 at 05:39:50AM -0400, Frediano Ziglio wrote:
> >=20
> > From: Victor Toso <me@victortoso.com>
> >=20
> > Signed-off-by: Victor Toso <victortoso@redhat.com>
> > ---
> >  tests/migrate.py | 6 +++++-
> >  1 file changed, 5 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/tests/migrate.py b/tests/migrate.py
> > index fcf51bdb..e83a6159 100755
> > --- a/tests/migrate.py
> > +++ b/tests/migrate.py
> > @@ -62,6 +62,8 @@ def get_args():
> >                          help=3D"Append options for agent's virtserialp=
ort")
> >      parser.add_argument('--wait-to-start', dest=3D"wait_user_input",
> >      action=3D'store_true', default=3DFalse,
> >                          help=3D"Wait user's input to start migration t=
est")
> > +    parser.add_argument('--count', dest=3D'counter', type=3Dint, defau=
lt=3D100,
>=20
> Previous default was infinite. But even 100 is a big number.

I let it run > 4000 times last night. 0:-)

I think if we want infinite we should set it, as you said,
default to big but not infinite should be fine enough.

> > +                        help=3D"Number of migrations to run (set 0 for
> > infinite)")
> >      args =3D parser.parse_args(sys.argv[1:])
> >      if os.path.exists(args.qemu):
> >          args.qemu_exec =3D args.qemu
> > @@ -215,8 +217,10 @@ def main():
> >          migration_port=3Dargs.migrate_port, spice_ports=3D[args.spice_=
port1,
> >          args.spice_port2], vdagent=3Dargs.vdagent)
> >      atexit.register(cleanup, migrator)
> > -    while True:
> > +    counter =3D 0
> > +    while args.counter =3D=3D 0 or counter < args.counter:
> >          migrator.iterate(args.wait_user_input)
> > +        counter +=3D 1
> > =20
> >  if __name__ =3D=3D '__main__':
> >      main()
>=20
> Otherwise,
>   Acked-by: Frediano Ziglio <fziglio@redhat.com>
>=20
> Frediano

Thanks,

--xuutdlo4ljpa3kgj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIyBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2LOZYACgkQl9kSPeN6
SE+krg/3U6kM56zqDoh2z33d2y7P4WSEvN9OSO6JLUwmggjgKmdL9P9bYjN3huQ8
GhC4ZnjEiro+3ruyjVDWpqZ516YEmU6NEiqz93Vy1xXiAYKtAKyXrFy2+K2XJzPC
vWKTov+kZn1I4osBHmGkW0D2P8SndG0Ag0aXOlPoQwp+QT7IoGZGbZjqrY9UImIa
wLqnvHrmS9W1t9dc7JqdIQREfTX3KLNFSkK1CpsfWBWCTGWKDUuwRvzTOfT4Y6e9
FyA3N9pBqJgZq2o+9ZujSxe2/no92o0LgH1spObeYiqAyjEkrBvRdBlD9o88EE2U
sOQp4HVEPq9iGzVFb92uCivM1ieZxrnoCY6DabaNNJ1JRq1daEx+6EJnMT8z9Yu+
7Q2HB1MMsrORIE93gY9NwMZSWXWROHsZ4tOMf6UMSRFFDeTqT1vDm2KzpAyhd3Vg
6EZQlsABJTfFs46YniyQ5BpNNCn3Qkxnmj4vTqHQW3EElnjZKBwsOy9+EVvA8IKV
qrDF03r/HXMzT+iZb2LoX4IdtbguJiY5Kx7w4Ykdc8ooZVy9Kd9Z/qIlHG5OdzLy
rjNJVRDW35CSoofiyheAP4HUNOzkbR4Ofu8j6ZP3fmw9H+owFoiC+SjJRiREPbg2
Hitvp1rpQjfRSooT16TR+JZ4bxgbu72szPtQgy1yisoAunETJA==
=QZSm
-----END PGP SIGNATURE-----

--xuutdlo4ljpa3kgj--

--===============0837689459==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0837689459==--
