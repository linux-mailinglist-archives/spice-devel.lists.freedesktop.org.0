Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35246A9C6A
	for <lists+spice-devel@lfdr.de>; Thu,  5 Sep 2019 09:58:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B837D89FA5;
	Thu,  5 Sep 2019 07:58:15 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A84C89FA5
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Sep 2019 07:58:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 159EB3090FEF
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Sep 2019 07:58:14 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B00A61001956;
 Thu,  5 Sep 2019 07:58:13 +0000 (UTC)
Date: Thu, 5 Sep 2019 09:58:12 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190905075812.dqxuwpfuothvxrg7@wingsuit>
References: <20190904122041.23408-1-victortoso@redhat.com>
 <20190904122041.23408-2-victortoso@redhat.com>
 <318391988.10754741.1567669900818.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <318391988.10754741.1567669900818.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Thu, 05 Sep 2019 07:58:14 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk v1 2/3] main: migration: check return
 value to count channels
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
Content-Type: multipart/mixed; boundary="===============1723256430=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1723256430==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ycgdd6novkzt44iw"
Content-Disposition: inline


--ycgdd6novkzt44iw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Sep 05, 2019 at 03:51:40AM -0400, Frediano Ziglio wrote:
> >=20
> > From: Victor Toso <me@victortoso.com>
> >=20
> > Although spice_channel_connect() works in idle, if it returns false
> > it'll not emit any signal further and we would be counting a
> > 'connected' channel that wouldn't be emitting anything.
> >=20
> > As other callbacks take this in consideration, we should only
> > increment the counter if we reached spice-channel::connect_delayed()
> > callback.
> >=20
> > Signed-off-by: Victor Toso <victortoso@redhat.com>
> > ---
> >  src/channel-main.c | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> >=20
> > diff --git a/src/channel-main.c b/src/channel-main.c
> > index a1e5498..3d1b1b5 100644
> > --- a/src/channel-main.c
> > +++ b/src/channel-main.c
> > @@ -2174,8 +2174,9 @@ migrate_channel_connect(spice_migrate *mig, int t=
ype,
> > int id)
> >      SPICE_DEBUG("migrate_channel_connect %d:%d", type, id);
> > =20
> >      SpiceChannel *newc =3D spice_channel_new(mig->session, type, id);
> > -    spice_channel_connect(newc);
> > -    mig->nchannels++;
> > +    if (newc !=3D NULL && spice_channel_connect(newc)) {
> > +        mig->nchannels++;
> > +    }
> >  }
> > =20
> >  /* coroutine context */
>=20
> Acked-by: Frediano Ziglio <fziglio@redhat.com>

Thanks,

>=20
> It makes sense but if spice_channel_connect for any reason fails the chan=
nel
> will go to unconnected state and we will "forget" the pointer so basically
> looks like a leak.

In such case, in the migration part, we should catch
SpiceChannel::channel-event with error, which would abort
migration and free the related resources..

The leak you mention could also be a hang, that is, waiting
nchannels reach to 0

> At least I would expect that if I attempt to disconnect it the
> object is freed.

Note that this is more of code inspection kinda change, makes no
sense to nchannels++ if spice_channel_connect() failed early for
whatever reason. Didn't hit an issue with this code path.

--ycgdd6novkzt44iw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1wwBQACgkQl9kSPeN6
SE98YBAArX4hi2zYOavV77GUcCLkj5BlxBpeIOt+CEBKV7ZqhT5PjpAtfBvCK4q0
lJAE53uo2t64jJ7R2qwhG3kB9bY7vEcA5+oTYeHD8MB6X7mnQBn7p5lYJbzz12tl
z3nhupDpgOhE9Fp0stskhQ7pR5SkhgCcJrEnZx1WPyRt7IwR22aZ218ofT2jL8LT
4nJOpNqFpcJtG0uJnbW0qrnwnYfVHbmAGBI8/Ie4+PV2uIKMG99Dr04djLoAaFiV
GZcfsS8fc+8Ffmc0cxz8k6NgL74tre0WGtGulOG25M7gyqxDqHvhkVq4J+X3q/8r
2LQnySqkYR5k9xx25C2AY4CjGiu1jpI0XYgGhx1yalGZj++lCMAs/Ny8NnkcOPpp
y3mAeSA6lnXeo/kqxeNQ+fGUIsslChHhukr+R0MZDfRh7A65hufqEGe+DpdzWYyo
VIGsN2T73P73hudrW2YAtQp940PWxEOAff6ocLl0EZmt8zatXbksmN8EZFR8AMQz
HlmaIKn3cFOo67RC8vB47gYsGvuFF4cZG+RvV3avewXsNd5YuLlHOTWAsyfhgfLC
QTCy/5ckMTVexiZANKArAt+sqhkS0FXE3q0T8vGKi4mGqUsVUCSQdlL1zg5hFpjW
dF8idKgd3XHbAQFDORBeRZ5/KNnxXYVc9aiJQ0EwRGC435JBqvI=
=R+Jw
-----END PGP SIGNATURE-----

--ycgdd6novkzt44iw--

--===============1723256430==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1723256430==--
