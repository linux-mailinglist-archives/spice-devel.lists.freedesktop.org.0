Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF7568695
	for <lists+spice-devel@lfdr.de>; Mon, 15 Jul 2019 11:46:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17F27898BE;
	Mon, 15 Jul 2019 09:46:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0408898BE
 for <spice-devel@lists.freedesktop.org>; Mon, 15 Jul 2019 09:46:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 87E183082132
 for <spice-devel@lists.freedesktop.org>; Mon, 15 Jul 2019 09:46:06 +0000 (UTC)
Received: from localhost (unknown [10.32.181.70])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 31C4960C4D;
 Mon, 15 Jul 2019 09:46:06 +0000 (UTC)
Date: Mon, 15 Jul 2019 11:46:05 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190715094605.bw2dbvlimydt5ueg@wingsuit>
References: <20190712091242.13214-1-victortoso@redhat.com>
 <20190712091242.13214-7-victortoso@redhat.com>
 <1870637329.68793.1563182297027.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <1870637329.68793.1563182297027.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Mon, 15 Jul 2019 09:46:06 +0000 (UTC)
Subject: Re: [Spice-devel] [linux/vd-agent v1 6/7] x11-randr: simplest fix
 for address-of-packed-member
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
Content-Type: multipart/mixed; boundary="===============0000206269=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0000206269==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tr7k4gtbzo5k5554"
Content-Disposition: inline


--tr7k4gtbzo5k5554
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jul 15, 2019 at 05:18:17AM -0400, Frediano Ziglio wrote:
> >=20
> > From: Victor Toso <me@victortoso.com>
> >=20
> > The struct type for width/height is uint32_t while we are trying to
> > access and change it with int* - code can be improved a bit in following
> > patches but this one fixes the warning by copying the value from the
> > struct and copying back new value afterwards.
> >=20
> > Also:
> > - Moved variables to internal scope;
> > - Added braces to inner if;
> >=20
> >  > src/vdagent/x11-randr.c: In function =E2=80=98zero_base_monitors=E2=
=80=99:
> >  >     src/vdagent/x11-randr.c:621:28: error: taking address of packed =
member
> >  >     of
> >  >     =E2=80=98struct VDAgentMonConfig=E2=80=99 may result in an unali=
gned pointer value
> >  > [-Werror=3Daddress-of-packed-member]
> >  >   621 |         mon_width =3D (int *)&mon_config->monitors[i].width;
> >  >       |                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >  > src/vdagent/x11-randr.c:622:29: error: taking address of packed memb=
er of
> >  >     =E2=80=98struct VDAgentMonConfig=E2=80=99 may result in an unali=
gned pointer value
> >  >     [-Werror=3Daddress-of-packed-member]
> >  >   622 |         mon_height =3D (int *)&mon_config->monitors[i].heigh=
t;
> >  >       |                             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >=20
> > Signed-off-by: Victor Toso <victortoso@redhat.com>
> > ---
> >  src/vdagent/x11-randr.c | 18 +++++++++++-------
> >  1 file changed, 11 insertions(+), 7 deletions(-)
> >=20
> > diff --git a/src/vdagent/x11-randr.c b/src/vdagent/x11-randr.c
> > index 924f5ec..7585031 100644
> > --- a/src/vdagent/x11-randr.c
> > +++ b/src/vdagent/x11-randr.c
> > @@ -611,20 +611,24 @@ static void zero_base_monitors(struct vdagent_x11=
 *x11,
> >                                 int *width, int *height)
> >  {
> >      int i, min_x =3D INT_MAX, min_y =3D INT_MAX, max_x =3D INT_MIN, ma=
x_y =3D
> >      INT_MIN;
> > -    int *mon_height, *mon_width;
> > =20
> >      for (i =3D 0; i < mon_config->num_of_monitors; i++) {
> > -        if (!monitor_enabled(&mon_config->monitors[i]))
> > +        int mon_height, mon_width;
> > +
> > +        if (!monitor_enabled(&mon_config->monitors[i])) {
> >              continue;
> > +        }
> >          mon_config->monitors[i].x &=3D ~7;
> >          mon_config->monitors[i].width &=3D ~7;
> > -        mon_width =3D (int *)&mon_config->monitors[i].width;
> > -        mon_height =3D (int *)&mon_config->monitors[i].height;
> > -        constrain_to_screen(x11, mon_width, mon_height);
> > +        mon_width =3D mon_config->monitors[i].width;
> > +        mon_height =3D mon_config->monitors[i].height;
>=20
> Why not following C99 and define and initialize in the same
> line?

I'm fine with that but as general rule I try to follow the
surrounding coding style. Would you prefer we stick with C99 for
new codebase even if surrounding code is not following that? We
discussed a few times irc/email but no rule was made, so I get a
bit confused sometimes with this.

> > +        constrain_to_screen(x11, &mon_width, &mon_height);
> >          min_x =3D MIN(mon_config->monitors[i].x, min_x);
> >          min_y =3D MIN(mon_config->monitors[i].y, min_y);
> > -        max_x =3D MAX(mon_config->monitors[i].x + *mon_width, max_x);
> > -        max_y =3D MAX(mon_config->monitors[i].y + *mon_height, max_y);
> > +        max_x =3D MAX(mon_config->monitors[i].x + mon_width, max_x);
> > +        max_y =3D MAX(mon_config->monitors[i].y + mon_height, max_y);
> > +        mon_config->monitors[i].width =3D mon_width;
> > +        mon_config->monitors[i].height =3D mon_height;
> >      }
> >      if (min_x !=3D 0 || min_y !=3D 0) {
> >          syslog(LOG_ERR, "%s: agent config %d,%d rooted, adjusting to 0=
,0.",
>=20
> Otherwise patch looks good, I think the code generated could also
> be better than before.
>=20
> Frediano

Thanks, I'll wait your reply before pushing.

Cheers,

--tr7k4gtbzo5k5554
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl0sS10ACgkQl9kSPeN6
SE9sjA//Uf4BK8NdprycrzMy57uaw2uj352d/dwfqOhq6WdUCEk/7dGdUEB53XVn
hhDMBR1NpHDRY/hoJDEz92uoVcKZG3qDxum+Fq3I17S2ix4ieudjX+b+h2I6Hazs
W46OeqEfI4QUEs5Vv/gQ2nMtLq/NGBrt2walW+1hNysyAbuzVK+YaC4JYjOxRanj
TszSWnzm4dJR+KSbKM97wcI2Em6uBWVvAzDsmlZXLiUoC8Md3MjINLvl9v+l9/Hu
u98x8tBCAum+/ZwE/H6iFYZM8cuccxxMozK7yOEYn/Y7O9cExQ3a4wvuu6XaSEu/
z+vtpUxmQsgv84EuaV2OZmzF02gM4cgJXfbEO7KgOs+LVzgXpY83hTUBvwrBz5/k
z8mJiMkgepEeb/A7G6/bXG3/EvEutetxFY+9Zx3+aEk3wVTJHfp4vePa/0HnFRDL
yg09R8uzReV6QDhGYnTJtQQ1WaqBkJa4qdq4CnhVynP+fSOomH352HS6cZgKKPAt
oCVJ7Uz3YeuXEK4hmUvEOQCkb7cm0AR1kz8Oa4zcpt4fsl77U2/GQ73bAOexzUqN
cH58ZT1vCzwBHVMjZ52lBauhAV1DPMvHLt/0YCyteYO9/jE2715jtjTvxOV7L6rR
6LwEK2x7kGGd8jo8rI/Sl/g0bMmrbbRiVRlXLCfLpVTTyiWi6kA=
=1WPE
-----END PGP SIGNATURE-----

--tr7k4gtbzo5k5554--

--===============0000206269==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0000206269==--
