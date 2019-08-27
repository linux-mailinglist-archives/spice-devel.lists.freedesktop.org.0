Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB0F9E825
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 14:40:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCC8589A5D;
	Tue, 27 Aug 2019 12:40:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F50289A5D
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 12:40:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id EE5E4305883E
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 12:40:45 +0000 (UTC)
Received: from localhost (unknown [10.32.181.212])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 996161001B1A;
 Tue, 27 Aug 2019 12:40:45 +0000 (UTC)
Date: Tue, 27 Aug 2019 14:40:44 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190827124044.eoykwg7xnc5e2lsv@wingsuit>
References: <20190827101358.18435-1-victortoso@redhat.com>
 <1853629394.9359739.1566901647088.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <1853629394.9359739.1566901647088.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Tue, 27 Aug 2019 12:40:45 +0000 (UTC)
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
Content-Type: multipart/mixed; boundary="===============0324289728=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0324289728==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="m76oq7t3sg7orrrn"
Content-Disposition: inline


--m76oq7t3sg7orrrn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Aug 27, 2019 at 06:27:27AM -0400, Frediano Ziglio wrote:
> >=20
> > From: Victor Toso <me@victortoso.com>
> >=20
> > Otherwise we get a CLANG_WARNING due accessing garbage.
> >=20
> > Covscan report:
> >  > spice-vdagent-0.19.0/src/vdagent/vdagent.c:471:9: warning: 1st funct=
ion
> >  > call argument is an uninitialized value
> >  > #        execvp(orig_argv[0], orig_argv);
> >  > #        ^      ~~~~~~~~~~~~
> >  > spice-vdagent-0.19.0/src/vdagent/vdagent.c:421:24: note: Storing
> >  > uninitialized value
> >  > #    char **orig_argv =3D g_memdup(argv, sizeof(char*) * (argc+1));
> >  > #                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >  > spice-vdagent-0.19.0/src/vdagent/vdagent.c:434:9: note: Assuming 'er=
ror'
> >  > is equal to NULL
> >  > #    if (error !=3D NULL) {
> >  > #        ^~~~~~~~~~~~~
> >  > spice-vdagent-0.19.0/src/vdagent/vdagent.c:434:5: note: Taking false
> >  > branch
> >  > #    if (error !=3D NULL) {
> >  > #    ^
> >  > spice-vdagent-0.19.0/src/vdagent/vdagent.c:442:9: note: Assuming 'po=
rtdev'
> >  > is not equal to NULL
> >  > #    if (portdev =3D=3D NULL)
> >  > #        ^~~~~~~~~~~~~~~
> >  > spice-vdagent-0.19.0/src/vdagent/vdagent.c:442:5: note: Taking false
> >  > branch
> >  > #    if (portdev =3D=3D NULL)
> >  > #    ^
> >  > spice-vdagent-0.19.0/src/vdagent/vdagent.c:445:9: note: Assuming
> >  > 'vdagentd_socket' is not equal to NULL
> >  > #    if (vdagentd_socket =3D=3D NULL)
> >  > #        ^~~~~~~~~~~~~~~~~~~~~~~
> >  > spice-vdagent-0.19.0/src/vdagent/vdagent.c:445:5: note: Taking false
> >  > branch
> >  > #    if (vdagentd_socket =3D=3D NULL)
> >  > #    ^
> >  > spice-vdagent-0.19.0/src/vdagent/vdagent.c:448:30: note: Assuming
> >  > 'do_daemonize' is 0
> >  > #    openlog("spice-vdagent", do_daemonize ? LOG_PID : (LOG_PID |
> >  > LOG_PERROR),
> >  > #                             ^~~~~~~~~~~~
> >  > spice-vdagent-0.19.0/src/vdagent/vdagent.c:448:30: note: '?' conditi=
on is
> >  > false
> >  > spice-vdagent-0.19.0/src/vdagent/vdagent.c:451:9: note: Assuming the
> >  > condition is false
> >  > #    if (!g_file_test(portdev, G_FILE_TEST_EXISTS)) {
> >  > #        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >  > spice-vdagent-0.19.0/src/vdagent/vdagent.c:451:5: note: Taking false
> >  > branch
> >  > #    if (!g_file_test(portdev, G_FILE_TEST_EXISTS)) {
> >  > #    ^
> >  > spice-vdagent-0.19.0/src/vdagent/vdagent.c:457:9: note: Assuming
> >  > 'do_daemonize' is 0
> >  > #    if (do_daemonize)
> >  > #        ^~~~~~~~~~~~
> >  > spice-vdagent-0.19.0/src/vdagent/vdagent.c:457:5: note: Taking false
> >  > branch
> >  > #    if (do_daemonize)
> >  > #    ^
> >  > spice-vdagent-0.19.0/src/vdagent/vdagent.c:468:9: note: Assuming
> >  > 'version_mismatch' is not equal to 0
> >  > #    if (version_mismatch) {
> >  > #        ^~~~~~~~~~~~~~~~
> >  > spice-vdagent-0.19.0/src/vdagent/vdagent.c:468:5: note: Taking true =
branch
> >  > #    if (version_mismatch) {
> >  > #    ^
> >  > spice-vdagent-0.19.0/src/vdagent/vdagent.c:471:9: note: 1st function=
 call
> >  > argument is an uninitialized value
> >  > #        execvp(orig_argv[0], orig_argv);
> >  > #        ^      ~~~~~~~~~~~~
> >  > #  469|           syslog(LOG_INFO, "Version mismatch, restarting");
> >  > #  470|           sleep(1);
> >  > #  471|->         execvp(orig_argv[0], orig_argv);
> >  > #  472|       }
> >  > #  473|
> >=20
> > Signed-off-by: Victor Toso <victortoso@redhat.com>
> > ---
> >  src/vdagent/vdagent.c | 6 +++++-
> >  1 file changed, 5 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/src/vdagent/vdagent.c b/src/vdagent/vdagent.c
> > index 0e2e73e..982fc72 100644
> > --- a/src/vdagent/vdagent.c
> > +++ b/src/vdagent/vdagent.c
> > @@ -418,7 +418,11 @@ int main(int argc, char *argv[])
> >      GOptionContext *context;
> >      GError *error =3D NULL;
> >      VDAgent *agent;
> > -    char **orig_argv =3D g_memdup(argv, sizeof(char*) * (argc+1));
> > +    char **orig_argv;
> > +
> > +    g_return_val_if_fail(argc > 0 && argv !=3D NULL, -1);
> > +    orig_argv =3D g_memdup(argv, sizeof(char*) * (argc+1));
> > +    orig_argv[argc] =3D NULL;
> > =20
> >      context =3D g_option_context_new(NULL);
> >      g_option_context_add_main_entries(context, entries, NULL);
>=20
> I would say better to disable Clang test instead. The code is
> perfectly fine. argc is at least 1 (the executable name!) and
> argv is always terminated with NULL (that's the standard!).
> See https://clang-analyzer.llvm.org/faq.html.

Actually, the g_return_val_if_fail() is not needed. I was being
extra careful to eliminate the warning. Just initialized
orig_argv[argc] =3D NULL; seems enough as it might consider that
argc is zero and we would pass garbage on the execvp() with
orig_argv[0] instead of NULL.

Sending a v2.

> I don't know where this -1 come, but EXIT_FAILURE (which is
> usually 1) is the standard return for main function.
>=20
> Frediano

--m76oq7t3sg7orrrn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1lJMwACgkQl9kSPeN6
SE+tLRAAkuydLaQ9TMpNt7oeHkChqsmDGCEaQQY4kJ/GwEVmNS1KTpG/IjRA28L9
FcI352KmrFiKDLl9SiQHCRloRemnZlNmJqRlkhvgAmN2RIOMCbU+1SYPg8QvGwgQ
r2ziD4T3Fdard3sgAc6OLLbLIPkDXnbvrVkVj+2+QAb2AKZk2ZB3SsJIyf7PVinn
g+SxwgAodddaewEoVWXWUEAQeC7zWDdn245kfGLRrwh5upfMVjwMLSHuomsnG8aH
0aWTMIubVByEW1/GdxQZSo7uz6RyR8DKeZ2Vs+C8YattbftVBhO0jWOfA9ShRL13
cy+6jyUrd3coQBQFXdjQXgpxSLv+SBNLtlweAwKqBYafqKcdb1I7QLgDi4SA52Lv
b8xMe3GUKeMNkyDMEW75OUO4cCljvxawEE2Kg3TBIiJV4KT9OwXEY3278ufFKcb9
sj7S4/azLJX0We+JJpqeTkiDJiMIcm57RaH5rsolzWnCI/xZhIAYhlqJyzEW22GJ
qFvVfBxtu0DR2gmlhDCZgE5B94lmYyJkkd0JrKMkCGO0CEbM6tTu//ZspF4l5R4t
YcxXSsrVoN+7cpfsxyqqM6rgvQCvZSMBllbzxxwu98S5Dnz56vuiHmUo49WzFinq
G8OOHuBLDvQdInADwF3regkcKXqcgDVwMk7K8OBAkac07bdkcxE=
=lQX0
-----END PGP SIGNATURE-----

--m76oq7t3sg7orrrn--

--===============0324289728==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0324289728==--
