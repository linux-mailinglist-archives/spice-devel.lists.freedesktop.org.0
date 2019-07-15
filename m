Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 517B468687
	for <lists+spice-devel@lfdr.de>; Mon, 15 Jul 2019 11:43:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D80708991A;
	Mon, 15 Jul 2019 09:43:35 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D225B8991A
 for <spice-devel@lists.freedesktop.org>; Mon, 15 Jul 2019 09:43:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7C4A8307D88C
 for <spice-devel@lists.freedesktop.org>; Mon, 15 Jul 2019 09:43:34 +0000 (UTC)
Received: from localhost (unknown [10.32.181.70])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 292AF6012C;
 Mon, 15 Jul 2019 09:43:34 +0000 (UTC)
Date: Mon, 15 Jul 2019 11:43:33 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190715094333.c5iyuozdqnxkf2fu@wingsuit>
References: <20190712091242.13214-1-victortoso@redhat.com>
 <20190712091242.13214-6-victortoso@redhat.com>
 <2056402581.67874.1563182163605.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <2056402581.67874.1563182163605.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Mon, 15 Jul 2019 09:43:34 +0000 (UTC)
Subject: Re: [Spice-devel] [linux/vd-agent v1 5/7] coverity: allow pass by
 value with XEvent
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
Content-Type: multipart/mixed; boundary="===============0933457817=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0933457817==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xy2ryncej5jlqeta"
Content-Disposition: inline


--xy2ryncej5jlqeta
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 15, 2019 at 05:16:03AM -0400, Frediano Ziglio wrote:
> > Subject: [Spice-devel] [linux/vd-agent v1 5/7] coverity: allow pass by =
value with XEvent
>=20
> I would say that this patch is ignoring a warning, the code is
> compiling.

Hmm, I can rewrite shortlog but my feeling is that allowing
something means that wasn't that great but you allow it, not too
far from ignoring the problem, that is, both ways of saying this
are similar to me.

> >=20
> > From: Victor Toso <me@victortoso.com>
> >=20
> > Signed-off-by: Victor Toso <victortoso@redhat.com>
> > ---
> >  src/vdagent/x11-randr.c | 4 ++--
> >  src/vdagent/x11.c       | 1 +
> >  2 files changed, 3 insertions(+), 2 deletions(-)
> >=20
> > diff --git a/src/vdagent/x11-randr.c b/src/vdagent/x11-randr.c
> > index d000e28..924f5ec 100644
> > --- a/src/vdagent/x11-randr.c
> > +++ b/src/vdagent/x11-randr.c
> > @@ -528,8 +528,8 @@ void vdagent_x11_randr_handle_root_size_change(stru=
ct
> > vdagent_x11 *x11,
> >      }
> >  }
> > =20
> > -int vdagent_x11_randr_handle_event(struct vdagent_x11 *x11,
> > -    XEvent event)
> > +/* coverity[pass_by_value] */
> > +int vdagent_x11_randr_handle_event(struct vdagent_x11 *x11, XEvent eve=
nt)
> >  {
> >      int handled =3D TRUE;
> > =20
> > diff --git a/src/vdagent/x11.c b/src/vdagent/x11.c
> > index c2515a8..90d08a1 100644
> > --- a/src/vdagent/x11.c
> > +++ b/src/vdagent/x11.c
> > @@ -494,6 +494,7 @@ static int vdagent_x11_get_clipboard_selection(stru=
ct
> > vdagent_x11 *x11,
> >  }
> >  #endif
> > =20
> > +/* coverity[pass_by_value] */
> >  static void vdagent_x11_handle_event(struct vdagent_x11 *x11, XEvent e=
vent)
> >  {
> >      int i, handled =3D 0;
>=20
> Have you though about converting to "const XEvent*" ?
> The structure is not that small.

I did but wasn't sure this was worth the effort? Wayland > X11,
risk of regressions, etc. If you fee this is worth, I can work on
it too.

Thanks,

--xy2ryncej5jlqeta
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl0sSsUACgkQl9kSPeN6
SE/5cA/+KZjruJSETDj6Lwc/IeO4lo6hyalRiuQ2VU8jbCZ7hdTzEwQZ3+/S8z3t
DfMVuAM6AMXQS0dHheOm+pPvZXSVErI3lCzRLa92SggvguBTpiMq9BNy+qsExfKL
GOaYH3tZDaU2uPA2obNXH+o4syqotpxumk2jkAcO+5TSB2RTpN0REz0yRCzuRuLW
phFLxY/bkNZwj+zYco/y3OGq8rzY8qMN44JIFeY8MVsEgtv/Bnss6qEXkKuNUP3a
lRMHfRaiOBOECDO9UPGFOwYUKzSipvn1q7iwzUXn02ASIEMmoxqe3zWJAdLgS8+V
on06ZY6EOb65z5jytCq7UOc3SXLPp+ZmtnPesjzqaMMInwOQ8NHZ0hHXqQTVQ+I+
cZm29zmaQ2dpnMJmOYo0kdnif0XrGr7oOta1Qh+EYOtiVPoC7eGdcuKIg4tRn/CV
d6bP10yxlWXZInfPl037FiEyoGpynSvMjTGwks7kCBkzesnEjZrXyDGShkrDDVfX
UcPkS6o2Q7OYUd+9b5LwpyAQISUye3iBMMwpG58osfHsHPNnjvHFTO7qMaTRLOgr
2WOQ4sJIxW9WH/v54iNSfEi35g9FutvmY2vnZMscdkhrLW2+3BE1cJ3/NBcFrqUY
O/ru7/X60SHu4RctA0qPeuwq0uUs7ssb560Kpq1auLeVibovq74=
=cTu8
-----END PGP SIGNATURE-----

--xy2ryncej5jlqeta--

--===============0933457817==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0933457817==--
