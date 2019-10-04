Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B677CB68A
	for <lists+spice-devel@lfdr.de>; Fri,  4 Oct 2019 10:37:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC9366EAFC;
	Fri,  4 Oct 2019 08:37:15 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C00FC6EAFD
 for <spice-devel@lists.freedesktop.org>; Fri,  4 Oct 2019 08:37:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 435561057875
 for <spice-devel@lists.freedesktop.org>; Fri,  4 Oct 2019 08:37:14 +0000 (UTC)
Received: from localhost (unknown [10.32.181.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E5B2519C5B;
 Fri,  4 Oct 2019 08:37:11 +0000 (UTC)
Date: Fri, 4 Oct 2019 10:37:10 +0200
From: Victor Toso <victortoso@redhat.com>
To: Uri Lublin <uril@redhat.com>
Message-ID: <20191004083710.jyet5gfm4jbog6wh@wingsuit>
References: <20191003101423.732-1-victortoso@redhat.com>
 <20191003101423.732-2-victortoso@redhat.com>
 <100ed97c-3e9f-68ec-511d-c078abaf5dd3@redhat.com>
MIME-Version: 1.0
In-Reply-To: <100ed97c-3e9f-68ec-511d-c078abaf5dd3@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.64]); Fri, 04 Oct 2019 08:37:14 +0000 (UTC)
Subject: Re: [Spice-devel] [spice/tests/migrate v1 2/4] tests: migrate: wait
 user launch client option
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
Content-Type: multipart/mixed; boundary="===============0419841596=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0419841596==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hgwor6ynun7housq"
Content-Disposition: inline


--hgwor6ynun7housq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Oct 03, 2019 at 05:13:46PM +0300, Uri Lublin wrote:
> On 10/3/19 1:14 PM, Victor Toso wrote:
> > From: Victor Toso <me@victortoso.com>
> >=20
> > Useful to test different clients running different tools (gdb,
> > valgrind).
> >=20
> > Signed-off-by: Victor Toso <victortoso@redhat.com>
> > ---
> >   tests/migrate.py | 13 +++++++++----
> >   1 file changed, 9 insertions(+), 4 deletions(-)
> >=20
> > diff --git a/tests/migrate.py b/tests/migrate.py
> > index 5ed9eba4..88e17691 100755
> > --- a/tests/migrate.py
> > +++ b/tests/migrate.py
> > @@ -63,6 +63,8 @@ def get_args():
> >                           help=3D"Append options for agent's virtserial=
port")
> >       parser.add_argument('--wait-user-input', dest=3D"wait_user_input"=
, action=3D'store_true', default=3DFalse,
> >                           help=3D"Wait user's input to start migration =
test")
> > +    parser.add_argument('--wait-user-connect', dest=3D"wait_user_conne=
ct", action=3D'store_true', default=3DFalse,
> > +                        help=3D"Wait spice client to connect to move t=
o next step of migration (default False)")
>=20
> Consider adding a check for both  --wait-user-connect and --client=3Dnon-=
none
> (which I expect will break something)

Not really, runs fine here (assuming you mean a valid client such
as spicy or remote-viewer)

With --wait-user-connect it launches but migration only starts
after connection is established. Also tried with
--wait-user-input and client connects but no migration happens
till some keystroke on console.

Thanks for the reviews!
Victor

> Uri.
>=20
> >       parser.add_argument('--count', dest=3D'counter', type=3Dint, defa=
ult=3D100,
> >                           help=3D"Number of migrations to run (set 0 fo=
r infinite)")
> >       args =3D parser.parse_args(sys.argv[1:])
> > @@ -174,25 +176,28 @@ class Migrator(object):
> >               if os.path.exists(x):
> >                   os.unlink(x)
> > -    def iterate(self, wait_for_user_input=3DFalse):
> > +    def iterate(self, wait_for_user_input=3DFalse, wait_user_connect=
=3DFalse):
> >           wait_active(self.active.qmp, True)
> >           wait_active(self.target.qmp, False)
> >           if not self.connected_client:
> >               if self.client:
> >                   self.connected_client =3D start_client(client=3Dself.=
client, spice_port=3Dself.spice_ports[0])
> > -                wait_for_event(self.active.qmp, 'SPICE_INITIALIZED')
> >               if wait_for_user_input:
> >                   print "waiting for Enter to start migrations"
> >                   raw_input()
> > +        # Tester can launch its own client or we wait start_client() t=
o connect
> > +        if wait_user_connect:
> > +            wait_for_event(self.active.qmp, 'SPICE_INITIALIZED')
> > +
> >           self.active.qmp.cmd('client_migrate_info', {'protocol':'spice=
',
> >               'hostname':'localhost', 'port':self.target.spice_port})
> >           self.active.qmp.cmd('migrate', {'uri': 'tcp:localhost:%s' % s=
elf.migration_port})
> >           wait_active(self.active.qmp, False)
> >           wait_active(self.target.qmp, True)
> > -        if self.connected_client:
> > +        if self.connected_client or wait_user_connect:
> >               wait_for_event(self.target.qmp, 'SPICE_CONNECTED')
> >           dead =3D self.active
> > @@ -224,7 +229,7 @@ def main():
> >       atexit.register(cleanup, migrator)
> >       counter =3D 0
> >       while args.counter =3D=3D 0 or counter < args.counter:
> > -        migrator.iterate(args.wait_user_input)
> > +        migrator.iterate(args.wait_user_input, args.wait_user_connect)
> >           counter +=3D 1
> >   if __name__ =3D=3D '__main__':
> >=20
>=20

--hgwor6ynun7housq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2XBLYACgkQl9kSPeN6
SE9DjxAAwIwu+f0uJNK5zb+LPX/7Zyp2KqZvP7HBtIFGq1e7+IdhJUlZXmfrZ9BG
h3G8GpjX4zB3a26HGhrYx7WDZZ/hTnz6at3qz78M4u0toN25B5uBLwV6ZLup3znR
R90Gxut+eoUJ7Cqef+62g67YM6yjc3cwaWI9kvh5JLUytYudESW9PfD4Sz7JPLer
Znuh6QEVXmxiWRnXVfA6uLUja2jbM8AvJWpELtaDwoqlgtd/WwoLrK+BF5xFsMBZ
fcmHEaS95fhsDu81adlNHgo6IULmO8GX6AKEDGnakb53Tx/3PPpGXDJuannqjUTI
Otumhsp8oitTD1oOzGWRV3FmTdnHC2+IcEMhFOIK/nRus/3VMx7gzPR262Me1H04
fzC++sCX19rqIc+cPqALE2Eudzlb09WjIBL87dNr/pdY5WU7139Is3eK5+GOq83x
aqKE6azBbLdCEOM+F4rYaMJ+xYTT/DaydIZdCsEp73G9wB4XNf3VoCUW6g4+hInU
P21hfGPJl9oK9B3DOfNI2LxgT5Uuuxms0R9Z0EvdVi+uIRl6WH0rA3enm/fCO1wu
3bqpw88xUN0pvTzRz6R2Sil07M7DxVPAIevs22H9TWW8aTLS4NO7wMmUFBIC2wDo
O4POBeuHxnKbUOgNPwl27hvU2HugxFPcL+9Cx569wIq1e72Oq48=
=5aFr
-----END PGP SIGNATURE-----

--hgwor6ynun7housq--

--===============0419841596==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0419841596==--
