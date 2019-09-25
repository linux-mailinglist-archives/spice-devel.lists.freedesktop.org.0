Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 511DFBDB0F
	for <lists+spice-devel@lfdr.de>; Wed, 25 Sep 2019 11:34:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C722B6EB60;
	Wed, 25 Sep 2019 09:34:15 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9FA76EB60
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:34:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 740E630860DF
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:34:14 +0000 (UTC)
Received: from localhost (unknown [10.32.181.60])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 225FF60F82;
 Wed, 25 Sep 2019 09:34:13 +0000 (UTC)
Date: Wed, 25 Sep 2019 11:34:13 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190925093413.4ellpkzls3h76q2u@wingsuit>
References: <20190925090701.19130-1-victortoso@redhat.com>
 <20190925090701.19130-4-victortoso@redhat.com>
 <22183329.3205299.1569403796665.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <22183329.3205299.1569403796665.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Wed, 25 Sep 2019 09:34:14 +0000 (UTC)
Subject: Re: [Spice-devel] [spice 3/8] tests: migrate: add support to run
 with remote-viewer
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
Content-Type: multipart/mixed; boundary="===============2048540718=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============2048540718==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dorrcsybxwe4zctd"
Content-Disposition: inline


--dorrcsybxwe4zctd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Sep 25, 2019 at 05:29:56AM -0400, Frediano Ziglio wrote:
> >=20
> > From: Victor Toso <me@victortoso.com>
> >=20
> > Signed-off-by: Victor Toso <victortoso@redhat.com>
> > ---
> >  tests/migrate.py | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/tests/migrate.py b/tests/migrate.py
> > index 5a0f5930..f893b2ac 100755
> > --- a/tests/migrate.py
> > +++ b/tests/migrate.py
> > @@ -58,7 +58,7 @@ def get_args():
> >      parser.add_argument('--qemu', dest=3D'qemu',
> >      default=3D'../../qemu/x86_64-softmmu/qemu-system-x86_64')
> >      parser.add_argument('--log_filename', dest=3D'log_filename',
> >      default=3D'migrate.log')
> >      parser.add_argument('--image', dest=3D'image', default=3D'')
> > -    parser.add_argument('--client', dest=3D'client', default=3D'spicy',
> > choices=3D['spicy'])
> > +    parser.add_argument('--client', dest=3D'client', default=3D'spicy',
> > choices=3D['spicy', 'remote-viewer'])
> >      parser.add_argument('--vdagent', choices=3D['on', 'off'], default=
=3D'on')
> >      args =3D parser.parse_args(sys.argv[1:])
> >      if os.path.exists(args.qemu):
> > @@ -97,6 +97,9 @@ def start_qemu(qemu_exec, image, spice_port, qmp_file=
name,
> > incoming_port=3DNone, e
> > =20
> >  def start_client(client, spice_port):
> >      client_cmd =3D "spicy --uri spice://localhost:%s" % (spice_port)
> > +    if client =3D=3D "remote-viewer":
> > +        client_cmd =3D "%s spice://localhost:%s" % (client, spice_port)
>=20
> Maybe here can just be
>=20
>   client_cmd =3D "remote-viewer spice://localhost:%s" % (spice_port)

Ah, yes, before it was !=3D "spicy" but I changed.
Either way is fine for me.

> > +
> >      return Popen(client_cmd.split(), executable=3Dclient)
> > =20
> >  def wait_active(q, active):
>=20
> Otherwise,
>   Acked-by: Frediano Ziglio <fziglio@redhat.com>
>=20
> Frediano

--dorrcsybxwe4zctd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2LNJUACgkQl9kSPeN6
SE/Ufw//cCJpxpxvMWntFm8jRzCTn4/1jNy4bbMR7MlHPvCZBCKZPuNnrsWGOCjW
UovUP07WXQda0/jpzHt/u8sa9bpIymdGjapYPQ3QNgSZToh5pZ6ygfrsEoYeDwLF
3ja5eQ5L+2uovVcx8WTFp2Dk7/6Zy26lLoEv0bJDpc1yIvMzKzaO0aBOQBWQcGBU
gfNZnukoxBTegz6+u7MD6U7atTl6UR7TYWRz+KvXXK8oFo1bMuUeoAJn5LrSlywf
nVX7N4oysJb1rJVRld4Pdlc47LCu7StOXm8l0IgckhpwTJtF8vf3WIrvSVD0z55D
dIvlBgtxKpAKruz3D2oL1VBUab45W5fgVYwTDgOnfIhl28vX/ebjunBoQK65y8O/
ersedUQtbQJt1W3Hc7Gedom2zQTQrOqQRwEt39GZ2JcKwCop1dvbUrz7VgGvw3EA
4tan6tmZMvEN+GLHc5N3XWmSbOdlFYvHGMPEKv0/XGft96Xg+60rtDqwpiz411Tt
B6zL/p7qNhN4t/75p3gHqo5ZgETvHhd2uEUH58+8LxvCIo+rF/XEMBuxduMsvXl+
7HnVA0jw6NrTEbCHYlDnyxPSe7h4aHdBNW8+GbGcl0QNkjzZyQuweo+fNv0L4xZq
/bRxBclolJbN9Uj/oQVI0zVD53gCGJYw8qIqSH06ZHTcQ5a07dQ=
=RYHS
-----END PGP SIGNATURE-----

--dorrcsybxwe4zctd--

--===============2048540718==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============2048540718==--
