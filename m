Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC12F6866E
	for <lists+spice-devel@lfdr.de>; Mon, 15 Jul 2019 11:39:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCFEA898C0;
	Mon, 15 Jul 2019 09:39:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70F22898C0
 for <spice-devel@lists.freedesktop.org>; Mon, 15 Jul 2019 09:39:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E4EAA3082E57
 for <spice-devel@lists.freedesktop.org>; Mon, 15 Jul 2019 09:39:06 +0000 (UTC)
Received: from localhost (unknown [10.32.181.70])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 91DBA5D9D6;
 Mon, 15 Jul 2019 09:39:05 +0000 (UTC)
Date: Mon, 15 Jul 2019 11:39:04 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190715093904.bw7dsbcx5waaqiec@wingsuit>
References: <20190712091242.13214-1-victortoso@redhat.com>
 <20190712091242.13214-4-victortoso@redhat.com>
 <133947907.67700.1563182023349.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <133947907.67700.1563182023349.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Mon, 15 Jul 2019 09:39:06 +0000 (UTC)
Subject: Re: [Spice-devel] [linux/vd-agent v1 3/7] covscan: check return
 value of fprintf
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
Content-Type: multipart/mixed; boundary="===============0093419265=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0093419265==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tezetmolvmipeskg"
Content-Disposition: inline


--tezetmolvmipeskg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jul 15, 2019 at 05:13:43AM -0400, Frediano Ziglio wrote:
> >=20
> > From: Victor Toso <me@victortoso.com>
> >=20
> >  | Error: CHECKED_RETURN (CWE-252):
> >  | spice-vdagent-0.19.0/src/vdagentd/vdagentd.c:999: check_return: Call=
ing
> >  | "fprintf" without checking return value (as is done elsewhere 29 out=
 of
> >  | 30 times).
> >  | spice-vdagent-0.19.0/src/vdagentd/xorg-conf.c:95: example_assign: Ex=
ample
> >  | 1: Assigning: "r" =3D return value from "fprintf(f, "# xorg.conf gen=
erated
> >  | by spice-vdagentd\n")".
> >  | spice-vdagent-0.19.0/src/vdagentd/xorg-conf.c:95: example_checked: E=
xample
> >  | 1 (cont.): "r" has its value checked in "r < 0".
> >  | spice-vdagent-0.19.0/src/vdagentd/xorg-conf.c:96: example_assign: Ex=
ample
> >  | 2: Assigning: "r" =3D return value from "fprintf(f, "# generated from
> >  | monitor info provided by the client\n\n")".
> >  | spice-vdagent-0.19.0/src/vdagentd/xorg-conf.c:96: example_checked: E=
xample
> >  | 2 (cont.): "r" has its value checked in "r < 0".
> >  | spice-vdagent-0.19.0/src/vdagentd/xorg-conf.c:99: example_assign: Ex=
ample
> >  | 3: Assigning: "r" =3D return value from "fprintf(f, "# Client has on=
ly 1
> >  | monitor\n")".
> >  | spice-vdagent-0.19.0/src/vdagentd/xorg-conf.c:99: example_checked: E=
xample
> >  | 3 (cont.): "r" has its value checked in "r < 0".
> >  | spice-vdagent-0.19.0/src/vdagentd/xorg-conf.c:100: example_assign: E=
xample
> >  | 4: Assigning: "r" =3D return value from "fprintf(f, "# This works be=
st with
> >  | no xorg.conf, leaving xorg.conf empty\n")".
> >  | spice-vdagent-0.19.0/src/vdagentd/xorg-conf.c:100: example_checked:
> >  | Example 4 (cont.): "r" has its value checked in "r < 0".
> >  | spice-vdagent-0.19.0/src/vdagentd/xorg-conf.c:106: example_assign: E=
xample
> >  | 5: Assigning: "r" =3D return value from "fprintf(f, "Section
> >  | \"ServerFlags\"\n")".
> >  | spice-vdagent-0.19.0/src/vdagentd/xorg-conf.c:106: example_checked:
> >  | Example 5 (cont.): "r" has its value checked in "r < 0".
> >  | #  997|           pidfile =3D fopen(pidfilename, "w");
> >  | #  998|           if (pidfile) {
> >  | #  999|->             fprintf(pidfile, "%d\n", (int)getpid());
> >  | # 1000|               fclose(pidfile);
> >  | # 1001|           }
> >=20
> > Signed-off-by: Victor Toso <victortoso@redhat.com>
> > ---
> >  src/vdagentd/vdagentd.c | 6 +++++-
> >  1 file changed, 5 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/src/vdagentd/vdagentd.c b/src/vdagentd/vdagentd.c
> > index 72a3e13..63f3a12 100644
> > --- a/src/vdagentd/vdagentd.c
> > +++ b/src/vdagentd/vdagentd.c
> > @@ -996,7 +996,11 @@ static void daemonize(void)
> >          }
> >          pidfile =3D fopen(pidfilename, "w");
> >          if (pidfile) {
> > -            fprintf(pidfile, "%d\n", (int)getpid());
> > +            int pid =3D (int) getpid();
> > +            int r =3D fprintf(pidfile, "%d\n", pid);
> > +            if (r < 0) {
> > +                syslog(LOG_ERR, "Failure to write pid %d to file %s", =
pid,
> > pidfilename);
> > +            }
> >              fclose(pidfile);
> >          }
> >          break;
>=20
> I would say it's pretty weird to give error if a rare situation
> happens (unable to write small data) but if we cannot create
> the file (which is much more common) there's no warning/error.

Indeed, I guess I was a bit too focused on cleaning the list of
warnings and didn't pay that much attention. I'll rework this.

> Why you had to add an additional "pid" variable?

I usually cache the value in a local var instead of calling the
function more than once. Not a hard rule but I usually like the
code more.

Thanks,

--tezetmolvmipeskg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl0sSbgACgkQl9kSPeN6
SE9g2g//eUukqHRLwKJFrZ7rhwxywGtmLfL3PKZIJoeJiC12A8U5wxQ0mQY+wA9l
uRL7iq0HSeFf4zSgPA02HU1w5EXrqTbxv9FPHcwjCzvkR8RRw4aOhLduvXIcYJuZ
RXZh56cVFe5BjgXogKqxM4eOJM6kCx95HaCAkLjt1+jmbsdmDUMRbh3Saaqm5v+h
d87YTSyYt3sYLJlZP1EDD5CysLtNdICpXILKO4f0DStLa5x19RUID2pkjmDXFKgx
KuajLuBIy9syBXImnd2vaQXHPqv9c7kM7f5xLqLvUznbxJkoSukFX7ne8r0EQLjG
SarcsDJyUmF9R042pel82jGFATzpd1uH2urnTjLrlXGuTJ9FBaOdcSIjK2QTYEqP
m37GODJiCs757ywyaiXpxYcx/j0KEs34DF9ZjLB8TiT3VSUvuQ6QRZTFoWDqj0W1
ds8+NEqeR3dl1ZGY7KjKzSPLq/NeM4fMAFMI+O5ZbPRyxSAzsN9rvEvubTTmeEjk
i24oTzEggQlLLFqSfxSnqTd1le+zv9euLbV3KL2CTEXYc5ep0A5aqioiPwKwP8pG
BGST3exPjYJ1mqPTIV7IvGsC+ZBHdoH6K2NPMU3L/8yUgjhoDNFlhB2nyYq0Kxq5
b/e1oBgegO7j5+UC13Ju5ml6ZaMFcmQGHUZv9G7kFoKhp2CuxlM=
=Wp4a
-----END PGP SIGNATURE-----

--tezetmolvmipeskg--

--===============0093419265==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0093419265==--
