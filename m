Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 252E5CDCE4
	for <lists+spice-devel@lfdr.de>; Mon,  7 Oct 2019 10:11:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D8506E4A7;
	Mon,  7 Oct 2019 08:11:00 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D9DC6E4A7
 for <spice-devel@lists.freedesktop.org>; Mon,  7 Oct 2019 08:11:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A121E8A1CAB
 for <spice-devel@lists.freedesktop.org>; Mon,  7 Oct 2019 08:10:59 +0000 (UTC)
Received: from localhost (unknown [10.32.181.37])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4BA3E5C22F;
 Mon,  7 Oct 2019 08:10:56 +0000 (UTC)
Date: Mon, 7 Oct 2019 10:10:56 +0200
From: Victor Toso <victortoso@redhat.com>
To: Uri Lublin <uril@redhat.com>
Message-ID: <20191007081056.xtusovoaptbwydzl@wingsuit>
References: <20191003101423.732-1-victortoso@redhat.com>
 <20191003101423.732-2-victortoso@redhat.com>
 <100ed97c-3e9f-68ec-511d-c078abaf5dd3@redhat.com>
 <20191004083710.jyet5gfm4jbog6wh@wingsuit>
 <ec804e0e-9339-fe6e-d898-8048895b5a27@redhat.com>
MIME-Version: 1.0
In-Reply-To: <ec804e0e-9339-fe6e-d898-8048895b5a27@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.69]); Mon, 07 Oct 2019 08:10:59 +0000 (UTC)
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
Content-Type: multipart/mixed; boundary="===============1957674577=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1957674577==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tig6u3t6whwjghhy"
Content-Disposition: inline


--tig6u3t6whwjghhy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sun, Oct 06, 2019 at 10:49:13AM +0300, Uri Lublin wrote:
> On 10/4/19 11:37 AM, Victor Toso > On Thu, Oct 03, 2019 at 05:13:46PM +03=
00,
> Uri Lublin wrote:>> On 10/3/19 1:14 PM, Victor Toso wrote:>>> From: Victor
> Toso <me@victortoso.com>>>>>>> Useful to test different clients running
> different tools (gdb,>>> valgrind).>>>>>> Signed-off-by: Victor Toso
> <victortoso@redhat.com>>>> --->>>    tests/migrate.py | 13 +++++++++---->=
>>
> 1 file changed, 9 insertions(+), 4 deletions(-)>>>>>> diff --git
> a/tests/migrate.py b/tests/migrate.py>>> index 5ed9eba4..88e17691 100755>=
>>
> --- a/tests/migrate.py>>> +++ b/tests/migrate.py>>> @@ -63,6 +63,8 @@ def
> get_args():>>>              help=3D"Append options for agent's
> virtserialport")>>>  parser.add_argument('--wait-user-input',
> dest=3D"wait_user_input", action=3D'store_true', default=3DFalse,>>> help=
=3D"Wait
> user's input to start migration test")>>> +
> parser.add_argument('--wait-user-connect', dest=3D"wait_user_connect",
> action=3D'store_true', default=3DFalse,>>> + help=3D"Wait spice client to=
 connect
> to move to next step of migration (default False)")>>>> Consider adding a
> check for both --wait-user-connect and --client=3Dnon-none>> (which I exp=
ect
> will break something)
> > Not really, runs fine here (assuming you mean a valid client such
> > as spicy or remote-viewer)
>=20
> I do mean with e.g. remote-viewer.
>=20
> The problem is that there are two clients in this scenario:
>  1. the one that is started by the script (--client)
>  2. the one that is started by the user ( --wait-user-connect )

Not sure where is the problem? If you mean issues in the client
itself, reproducing them easily is the reason I started to poke
with this migrate.py! I'm trying to address them now.

Just to be 100% clear, I'm fine in having specific client
launched (1) for automated testing scenarios, so you don't need
to run a client by yourself; I'm happy in having (2) for
debugging and also to play with different clients.

Thanks for the comments and reviews!
Victor

> Uri.
>=20
> >=20
> > With --wait-user-connect it launches but migration only starts
> > after connection is established. Also tried with
> > --wait-user-input and client connects but no migration happens
> > till some keystroke on console.
> >=20
>=20
> > Thanks for the reviews!
> > Victor
> >=20
> > > Uri.
> > >=20
> > > >        parser.add_argument('--count', dest=3D'counter', type=3Dint,=
 default=3D100,
> > > >                            help=3D"Number of migrations to run (set=
 0 for infinite)")
> > > >        args =3D parser.parse_args(sys.argv[1:])
> > > > @@ -174,25 +176,28 @@ class Migrator(object):
> > > >                if os.path.exists(x):
> > > >                    os.unlink(x)
> > > > -    def iterate(self, wait_for_user_input=3DFalse):
> > > > +    def iterate(self, wait_for_user_input=3DFalse, wait_user_conne=
ct=3DFalse):
> > > >            wait_active(self.active.qmp, True)
> > > >            wait_active(self.target.qmp, False)
> > > >            if not self.connected_client:
> > > >                if self.client:
> > > >                    self.connected_client =3D start_client(client=3D=
self.client, spice_port=3Dself.spice_ports[0])
> > > > -                wait_for_event(self.active.qmp, 'SPICE_INITIALIZED=
')
> > > >                if wait_for_user_input:
> > > >                    print "waiting for Enter to start migrations"
> > > >                    raw_input()
> > > > +        # Tester can launch its own client or we wait start_client=
() to connect
> > > > +        if wait_user_connect:
> > > > +            wait_for_event(self.active.qmp, 'SPICE_INITIALIZED')
> > > > +
> > > >            self.active.qmp.cmd('client_migrate_info', {'protocol':'=
spice',
> > > >                'hostname':'localhost', 'port':self.target.spice_por=
t})
> > > >            self.active.qmp.cmd('migrate', {'uri': 'tcp:localhost:%s=
' % self.migration_port})
> > > >            wait_active(self.active.qmp, False)
> > > >            wait_active(self.target.qmp, True)
> > > > -        if self.connected_client:
> > > > +        if self.connected_client or wait_user_connect:
> > > >                wait_for_event(self.target.qmp, 'SPICE_CONNECTED')
> > > >            dead =3D self.active
> > > > @@ -224,7 +229,7 @@ def main():
> > > >        atexit.register(cleanup, migrator)
> > > >        counter =3D 0
> > > >        while args.counter =3D=3D 0 or counter < args.counter:
> > > > -        migrator.iterate(args.wait_user_input)
> > > > +        migrator.iterate(args.wait_user_input, args.wait_user_conn=
ect)
> > > >            counter +=3D 1
> > > >    if __name__ =3D=3D '__main__':
> > > >=20
> > >=20
>=20

--tig6u3t6whwjghhy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2a8xAACgkQl9kSPeN6
SE9IVg//TKoieVhPQJSVXEKpftlh2V79N10I58a8YA3kK5XW2x/CP1srXJkY+mp+
DSzF2Py4cJfPyl5Lkd4DDxn6nyE8NfNUZQjzjVvpt+Rv2NyngpQF7QiOAyq9h0HS
E8JnAiHs0XRkamEx+wVlrtRHUAr2dAefvUgCbvDWurKgRBWd7NOWPIFV847N/1ri
0/TJ/8AhmcC8FpOOjdj3/12zm5g1oZCeOQ4p/jmBgRfMO09v1eJoazmBhDOlrySJ
Db7FMHRrF8Syud9L7dEry8ouRo/JWIjkMB/97D4nmEaJIndC0fLVGbYV8GVFmCnk
zmcWHJsGgHNqYdnYThGJRM6cyZDJo2zkKiR2e+X8ZZXFX9rcX+eo4eShOzhn2SR1
7Po+/S0xvDbIge1DnEgTZ8/O/6xSkJBUfSzyl/bLfikQKRgyDwi7GHK7PHx5xAPP
mrdacVyHOOXPwEwCSfUUrEVmLWQuGh0mW2KwXsbWF6VniWqLmJFXxxlS6T1qDtsL
2oCEGs0VYjd/rDNpWPgqjgaEpt8DNIc2Pj34Yi7F1BUvleHo6RoFY9F+TWCtXfnF
3n60Mt2SKKqXvVJ6TI/YwPd3/+tTcRqJsseEUufDFEtgIUpTocVac88qoCYGraYm
ClqCtOi4J060cZxlpFp43fK9olzhIYGzgikmGoBxuo+TcY3Ry8c=
=+FYN
-----END PGP SIGNATURE-----

--tig6u3t6whwjghhy--

--===============1957674577==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1957674577==--
