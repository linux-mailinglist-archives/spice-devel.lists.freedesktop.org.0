Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EAEA9E984
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 15:35:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB5CF89AE6;
	Tue, 27 Aug 2019 13:35:24 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D25089AE6
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 13:35:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 423FD308302F
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 13:35:23 +0000 (UTC)
Received: from localhost (unknown [10.32.181.212])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DFB1B5EE1D;
 Tue, 27 Aug 2019 13:35:17 +0000 (UTC)
Date: Tue, 27 Aug 2019 15:35:17 +0200
From: Victor Toso <victortoso@redhat.com>
To: Uri Lublin <uril@redhat.com>
Message-ID: <20190827133517.tbqckiqwessioppg@wingsuit>
References: <20190827101358.18435-1-victortoso@redhat.com>
 <1853629394.9359739.1566901647088.JavaMail.zimbra@redhat.com>
 <498b04a9-dc3a-4d53-cfc3-f65505421213@redhat.com>
MIME-Version: 1.0
In-Reply-To: <498b04a9-dc3a-4d53-cfc3-f65505421213@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Tue, 27 Aug 2019 13:35:23 +0000 (UTC)
Subject: Re: [Spice-devel] [linux/vd_agent v1 1/2] covscan: check and
 initialize argv's copy
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
Content-Type: multipart/mixed; boundary="===============1166167572=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1166167572==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="i6rweoj6qxx5xqsj"
Content-Disposition: inline


--i6rweoj6qxx5xqsj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

Sorry, forgot to reply earlier.

On Tue, Aug 27, 2019 at 03:12:24PM +0300, Uri Lublin wrote:
> On 8/27/19 1:27 PM, Frediano Ziglio wrote:
> > >=20
> > > From: Victor Toso <me@victortoso.com>
> > >=20
> > > Otherwise we get a CLANG_WARNING due accessing garbage.
> > >=20
> > > Covscan report:
> > >   > spice-vdagent-0.19.0/src/vdagent/vdagent.c:471:9: warning: 1st fu=
nction
> > >   > call argument is an uninitialized value
> > >   > #        execvp(orig_argv[0], orig_argv);
> > >   > #        ^      ~~~~~~~~~~~~
> > >   > spice-vdagent-0.19.0/src/vdagent/vdagent.c:421:24: note: Storing
> > >   > uninitialized value
> > >   > #    char **orig_argv =3D g_memdup(argv, sizeof(char*) * (argc+1)=
);
> > >   > #                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Here it doesn't say anything about g_memdup() itself (like, if it
took the branch where argv is NULL which means it returns NULL or
if it took the branch wehre argv is not NULL which it does
g_malloc + memcpy, same you suggested.

> > >   > spice-vdagent-0.19.0/src/vdagent/vdagent.c:434:9: note: Assuming =
'error'
> > >   > is equal to NULL
> > >   > #    if (error !=3D NULL) {
> > >   > #        ^~~~~~~~~~~~~
> > >   > spice-vdagent-0.19.0/src/vdagent/vdagent.c:434:5: note: Taking fa=
lse
> > >   > branch
> > >   > #    if (error !=3D NULL) {
> > >   > #    ^
> > >   > spice-vdagent-0.19.0/src/vdagent/vdagent.c:442:9: note: Assuming =
'portdev'
> > >   > is not equal to NULL
> > >   > #    if (portdev =3D=3D NULL)
> > >   > #        ^~~~~~~~~~~~~~~
> > >   > spice-vdagent-0.19.0/src/vdagent/vdagent.c:442:5: note: Taking fa=
lse
> > >   > branch
> > >   > #    if (portdev =3D=3D NULL)
> > >   > #    ^
> > >   > spice-vdagent-0.19.0/src/vdagent/vdagent.c:445:9: note: Assuming
> > >   > 'vdagentd_socket' is not equal to NULL
> > >   > #    if (vdagentd_socket =3D=3D NULL)
> > >   > #        ^~~~~~~~~~~~~~~~~~~~~~~
> > >   > spice-vdagent-0.19.0/src/vdagent/vdagent.c:445:5: note: Taking fa=
lse
> > >   > branch
> > >   > #    if (vdagentd_socket =3D=3D NULL)
> > >   > #    ^
> > >   > spice-vdagent-0.19.0/src/vdagent/vdagent.c:448:30: note: Assuming
> > >   > 'do_daemonize' is 0
> > >   > #    openlog("spice-vdagent", do_daemonize ? LOG_PID : (LOG_PID |
> > >   > LOG_PERROR),
> > >   > #                             ^~~~~~~~~~~~
> > >   > spice-vdagent-0.19.0/src/vdagent/vdagent.c:448:30: note: '?' cond=
ition is
> > >   > false
> > >   > spice-vdagent-0.19.0/src/vdagent/vdagent.c:451:9: note: Assuming =
the
> > >   > condition is false
> > >   > #    if (!g_file_test(portdev, G_FILE_TEST_EXISTS)) {
> > >   > #        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > >   > spice-vdagent-0.19.0/src/vdagent/vdagent.c:451:5: note: Taking fa=
lse
> > >   > branch
> > >   > #    if (!g_file_test(portdev, G_FILE_TEST_EXISTS)) {
> > >   > #    ^
> > >   > spice-vdagent-0.19.0/src/vdagent/vdagent.c:457:9: note: Assuming
> > >   > 'do_daemonize' is 0
> > >   > #    if (do_daemonize)
> > >   > #        ^~~~~~~~~~~~
> > >   > spice-vdagent-0.19.0/src/vdagent/vdagent.c:457:5: note: Taking fa=
lse
> > >   > branch
> > >   > #    if (do_daemonize)
> > >   > #    ^
> > >   > spice-vdagent-0.19.0/src/vdagent/vdagent.c:468:9: note: Assuming
> > >   > 'version_mismatch' is not equal to 0
> > >   > #    if (version_mismatch) {
> > >   > #        ^~~~~~~~~~~~~~~~
> > >   > spice-vdagent-0.19.0/src/vdagent/vdagent.c:468:5: note: Taking tr=
ue branch
> > >   > #    if (version_mismatch) {
> > >   > #    ^
> > >   > spice-vdagent-0.19.0/src/vdagent/vdagent.c:471:9: note: 1st funct=
ion call
> > >   > argument is an uninitialized value
> > >   > #        execvp(orig_argv[0], orig_argv);
> > >   > #        ^      ~~~~~~~~~~~~
> > >   > #  469|           syslog(LOG_INFO, "Version mismatch, restarting"=
);
> > >   > #  470|           sleep(1);
> > >   > #  471|->         execvp(orig_argv[0], orig_argv);
> > >   > #  472|       }
> > >   > #  473|
> > >=20
> > > Signed-off-by: Victor Toso <victortoso@redhat.com>
> > > ---
> > >   src/vdagent/vdagent.c | 6 +++++-
> > >   1 file changed, 5 insertions(+), 1 deletion(-)
> > >=20
> > > diff --git a/src/vdagent/vdagent.c b/src/vdagent/vdagent.c
> > > index 0e2e73e..982fc72 100644
> > > --- a/src/vdagent/vdagent.c
> > > +++ b/src/vdagent/vdagent.c
> > > @@ -418,7 +418,11 @@ int main(int argc, char *argv[])
> > >       GOptionContext *context;
> > >       GError *error =3D NULL;
> > >       VDAgent *agent;
> > > -    char **orig_argv =3D g_memdup(argv, sizeof(char*) * (argc+1));
> > > +    char **orig_argv;
> > > +
> > > +    g_return_val_if_fail(argc > 0 && argv !=3D NULL, -1);
> > > +    orig_argv =3D g_memdup(argv, sizeof(char*) * (argc+1));
>=20
> Hi,
>=20
> I was able to "fix" it by replacing g_memdup with g_malloc + memcpy
> -    char **orig_argv =3D g_memdup(argv, sizeof(char*) * (argc+1));
> +    char **orig_argv =3D g_malloc(sizeof(char*) * (argc+1) );
> +    memcpy(orig_argv, argv, sizeof(char*) * (argc+1) );
>=20
> So clang seems to be confused by "side effects" of g_memdup.

I didn't test it but I trust you that it works. Weird that if
this complain was with the fact that orig_argv is NULL, it should
be more explicit. Doesn't matter much the possible fix as this
still is a false positive, argc is > 0 and argv is not null and
either g_memdup() is going to return valid memory or abort if
ENOMEM.

My 'fix' is just because we really have an extra char* which
seems to be uninitialized.

> Uri.
>=20
> > > +    orig_argv[argc] =3D NULL;
> > >       context =3D g_option_context_new(NULL);
> > >       g_option_context_add_main_entries(context, entries, NULL);
> >=20
> > I would say better to disable Clang test instead. The code is perfectly
> > fine. argc is at least 1 (the executable name!) and argv is always term=
inated
> > with NULL (that's the standard!).
> > See https://clang-analyzer.llvm.org/faq.html.
> >=20
> > I don't know where this -1 come, but EXIT_FAILURE (which is usually 1) =
is the standard
> > return for main function.
> >=20
> > Frediano
> > _______________________________________________
> > Spice-devel mailing list
> > Spice-devel@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/spice-devel
> >=20
>=20

--i6rweoj6qxx5xqsj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1lMZQACgkQl9kSPeN6
SE9Pdw//X0ziBzSK1NmyLxee8DSF157B6QzAivWe/2KUJVxYu7arYkIcH9gLxDbM
FmMTJN58fPJZY4aotjYlvJ2w0Z/PVoHpEAsxWmt4wqr5gr68hVO0abgd5uY1Aaq8
8fJtooSFbYmxlSpnz9yD9Rdkw5XVl7E+U33Qa6inug36UVGanvzDhR35zy19TZfa
AxrjngwwKvncAeQM4VAlJ90yGyPpPbgnmaDV3s87bm1FWD615HC8LxnD1hCzA2Kx
jrTR05OuHodORg7mEDLquaom4D5PNWtA0VBVQdIA9+X5gQbi3VlqdpOAkoI0LuE2
6dpgbPgQniJDSNB2TjoB4kQvmGHnZvvbn1w+FFoPKGXUQ8cx/zD8aet4Tm0ZmEO7
rpQZafow+8jQHljGcRboYvKdDr3i5UP4QA2TxNt2HpjZ0SePSAvOM7tPFDQOgW0O
Zk1RdrqgnwdqbG9LSY95CCCIYcG80zd7CPfrY27V2Of5PKCL6cNorKJy0bSRwt0g
p0neI859jpgMPOqf+CFxW/y45goidqPgYV7jDztR9Ap8u+R5pSqH3PcPmL9wf8SY
1TPnb2uAW8lQZFUFCKvJ9uJQJXaajPbjnFQSuDVPcIWBzt+RcQG4hk1TkudVvi5I
j8iZOlWZiPoVTnZvg7cuLu7nphVK98RR3Wx8z2wewFKXN6ay82k=
=Hi6y
-----END PGP SIGNATURE-----

--i6rweoj6qxx5xqsj--

--===============1166167572==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1166167572==--
