Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C99BC9EC6
	for <lists+spice-devel@lfdr.de>; Thu,  3 Oct 2019 14:47:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12C736E133;
	Thu,  3 Oct 2019 12:47:26 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2086C6E133
 for <spice-devel@lists.freedesktop.org>; Thu,  3 Oct 2019 12:47:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B34797FDEC
 for <spice-devel@lists.freedesktop.org>; Thu,  3 Oct 2019 12:47:24 +0000 (UTC)
Received: from localhost (ovpn-117-253.ams2.redhat.com [10.36.117.253])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5777419C69;
 Thu,  3 Oct 2019 12:47:19 +0000 (UTC)
Date: Thu, 3 Oct 2019 14:47:18 +0200
From: Victor Toso <victortoso@redhat.com>
To: Uri Lublin <uril@redhat.com>
Message-ID: <20191003124718.qjurbdfcjbzdhshd@wingsuit>
References: <20191003101423.732-1-victortoso@redhat.com>
 <20191003101423.732-2-victortoso@redhat.com>
 <07ce7d94-6bb0-3ed8-ea85-bbb5c0fbbefb@redhat.com>
MIME-Version: 1.0
In-Reply-To: <07ce7d94-6bb0-3ed8-ea85-bbb5c0fbbefb@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Thu, 03 Oct 2019 12:47:24 +0000 (UTC)
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
Content-Type: multipart/mixed; boundary="===============1775280496=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1775280496==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="yltfsrqlsr2fphny"
Content-Disposition: inline


--yltfsrqlsr2fphny
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 03, 2019 at 03:34:50PM +0300, Uri Lublin wrote:
> On 10/3/19 1:14 PM, Victor Toso wrote:
> > From: Victor Toso <me@victortoso.com>
> >=20
> > Useful to test different clients running different tools (gdb,
> > valgrind).
>=20
> It seems to me it's already solved by --wait-user-input.
> The user can start the migration only after running the tool/client.

They are similar but with wait-user-input you can do the wait
without having to launch your own client, that is, it is good to
test the host side migration. Also, both of them should work well
together, that is:

=2E/migrate.py --wait-user-connect --wait-user-input

By default, test does not launch the client so it will wait we
connect remote-viewer, than after connected it waits for user
input to start migration.

> Uri.
>=20
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

--yltfsrqlsr2fphny
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2V7dYACgkQl9kSPeN6
SE8kZw/+NPa5M+xIbMobSpveayfIW+Icv8jFgE7oMa1zFeDsAEJj5JwFMsmk8jPs
BIYaI1JFaVwqZIUgRSYNTkTPPfWHO5ARD2yAZp/X5QpzvX2yRE89H8bzsG2keNNw
lymrT5z6Bd9dOFxAb3qyByDAEe7HnqbjJZmy/NU1gwp1nxQ+f6bk4Yv99HPne1I4
/eC1ARb6q/KX/sCnR0IivtMhmuD94TndeH4LeQ5XvgsLe1c92loGCVVBl8Qw064b
d3HweNUp+eF5NpBcudlCJ86ztQK73p9RGRvEyDrttJNUWAf/XTNhL1jPXHCaLFbT
uFfuO9H4p8/22U6R47o6KTT32TU8lJyPlOJ9dHlw/8fE53SaahGkiU5UDGmBWuGI
35jRy+NL1MqPe+Zd8BXWgGfJr7irDkz6UhKiXF2iTA/Sg43GSGBIitnN7Ps2pPhy
M4nzaFruRYU6cMCvKOUzSGx/SWpQoFTtYoNNdxHkSmVDzfjAlHdYaHnjuoxifHoB
c9eYNz8EYYsyL5nMmaIUlNhA1SCoOYnBgbUzA4z7jisVrgv34EBSICO+wbXnTYfA
LJ6rQDcBmZNV8EZLOFABucmos87YNHCY8zu3RHw8zoV8sA5szS/lMbbYdFz43Win
+1obDLwPa5RkUWG7zC1OcyW6CHr5hut/sYIj9r3n8OWOiX5Ow7c=
=nVcI
-----END PGP SIGNATURE-----

--yltfsrqlsr2fphny--

--===============1775280496==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1775280496==--
