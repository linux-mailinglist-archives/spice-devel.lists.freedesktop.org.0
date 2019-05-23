Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B2327B40
	for <lists+spice-devel@lfdr.de>; Thu, 23 May 2019 13:00:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2C8289D9B;
	Thu, 23 May 2019 11:00:17 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5C0D89D9B
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 11:00:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5D0D5307D9CE;
 Thu, 23 May 2019 11:00:16 +0000 (UTC)
Received: from localhost (unknown [10.32.181.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 05B617D672;
 Thu, 23 May 2019 11:00:15 +0000 (UTC)
Date: Thu, 23 May 2019 11:00:15 +0000
From: Victor Toso <victortoso@redhat.com>
To: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <20190523110015.wxmeokphdufp6c25@toolbox>
References: <20190317152830.5012-1-ssheribe@redhat.com>
 <CAJ+F1CL0zGYtr2wHab=YP-a_FBChZvsMqiseNwmCXjoiCHLgEw@mail.gmail.com>
 <e6ae8724-50ea-f580-745b-5a15160a6ab5@redhat.com>
MIME-Version: 1.0
In-Reply-To: <e6ae8724-50ea-f580-745b-5a15160a6ab5@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Thu, 23 May 2019 11:00:16 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH v2 spice-gtk] Adjust to window scaling
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============1713890917=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1713890917==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lrrc62fbgdyldcwk"
Content-Disposition: inline


--lrrc62fbgdyldcwk
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, May 23, 2019 at 01:01:12PM +0300, Snir Sheriber wrote:
> Hi,
>=20
> On 5/22/19 6:02 PM, Marc-Andr=E9 Lureau wrote:
> > Hi
> >=20
> > On Sun, Mar 17, 2019 at 4:28 PM Snir Sheriber <ssheribe@redhat.com> wro=
te:
> > > When GDK_SCALE is !=3D 1 and egl is used, the image presented does not
> > > fit to the window (scale of 2 is often used with hidpi monitors).
> > > Usually this is not a problem since all components are adjusted by
> > > gdk/gtk but with egl, pixel-based data is not being scaled. In this
> > > case window's scale value can be used in order to determine whether
> > > to use a pixel resource with higher resolution data.
> > >=20
> > > In order to reproduce the problem set spice with virgl/Intel-vGPU
> > > and run spice-gtk with GDK_SCALE=3D2
> > > ---
> > > Changes from v1:
> > > -commit msg
> > > -replace var naming (ws with win_scale)
> > >=20
> > >=20
> > > This patch is kind of RFC, it fixes the issue, but it's a bit hacky
> > > and specific. I didn't come across other scale issues but it is likely
> > > that more of these exist and better and generic fix is needed.
> > >=20
> > > ---
> > >   src/spice-widget-egl.c  | 15 +++++++++++++--
> > >   src/spice-widget-priv.h |  1 +
> > >   2 files changed, 14 insertions(+), 2 deletions(-)
> > >=20
> > > diff --git a/src/spice-widget-egl.c b/src/spice-widget-egl.c
> > > index 43fccd7..600c87a 100644
> > > --- a/src/spice-widget-egl.c
> > > +++ b/src/spice-widget-egl.c
> > > @@ -326,6 +326,8 @@ static gboolean spice_widget_init_egl_win(SpiceDi=
splay *display, GdkWindow *win,
> > >       if (d->egl.surface)
> > >           return TRUE;
> > >=20
> > > +    d->egl.scale =3D gdk_window_get_scale_factor(win);
> > Why not use gtk_widget_get_scale_factor() directly from
> > spice_egl_resize_display?
>=20
> There is no special objection for that, just because i adjust
> scaling also in spice_egl_update_display and i assumed scaling
> is not being changed frequently.

But it can be changed, right? In that case, d->egl.scale would
not have the right value in spice_egl_resize_display()

Note that user tested that this patches fixes so I'd add that to
commit log:

    https://gitlab.freedesktop.org/spice/spice-gtk/issues/99

Cheers,

> Snir.
>=20
> > > +
> > >   #ifdef GDK_WINDOWING_X11
> > >       if (GDK_IS_X11_WINDOW(win)) {
> > >           native =3D (EGLNativeWindowType)GDK_WINDOW_XID(win);
> > > @@ -431,15 +433,17 @@ void spice_egl_resize_display(SpiceDisplay *dis=
play, int w, int h)
> > >   {
> > >       SpiceDisplayPrivate *d =3D display->priv;
> > >       int prog;
> > > +    gint win_scale;
> > >=20
> > >       if (!gl_make_current(display, NULL))
> > >           return;
> > >=20
> > > +    win_scale =3D d->egl.scale;
> > >       glGetIntegerv(GL_CURRENT_PROGRAM, &prog);
> > >=20
> > >       glUseProgram(d->egl.prog);
> > > -    apply_ortho(d->egl.mproj, 0, w, 0, h, -1, 1);
> > > -    glViewport(0, 0, w, h);
> > > +    apply_ortho(d->egl.mproj, 0, w * win_scale , 0, h * win_scale, -=
1, 1);
> > > +    glViewport(0, 0, w * win_scale, h * win_scale);
> > >=20
> > >       if (d->ready)
> > >           spice_egl_update_display(display);
> > > @@ -559,6 +563,13 @@ void spice_egl_update_display(SpiceDisplay *disp=
lay)
> > >=20
> > >       spice_display_get_scaling(display, &s, &x, &y, &w, &h);
> > >=20
> > > +    // Adjust to gdk scale
> > > +    s *=3D d->egl.scale;
> > > +    x *=3D d->egl.scale;
> > > +    y *=3D d->egl.scale;
> > > +    w *=3D d->egl.scale;
> > > +    h *=3D d->egl.scale;
> > > +
> > >       glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
> > >       glClear(GL_COLOR_BUFFER_BIT);
> > >=20
> > > diff --git a/src/spice-widget-priv.h b/src/spice-widget-priv.h
> > > index 65eb404..8f110ac 100644
> > > --- a/src/spice-widget-priv.h
> > > +++ b/src/spice-widget-priv.h
> > > @@ -149,6 +149,7 @@ struct _SpiceDisplayPrivate {
> > >           EGLImageKHR         image;
> > >           gboolean            call_draw_done;
> > >           SpiceGlScanout      scanout;
> > > +        gint                scale;
> > >       } egl;
> > >   #endif // HAVE_EGL
> > >       double scroll_delta_y;
> > > --
> > > 2.19.1
> > >=20
> > > _______________________________________________
> > > Spice-devel mailing list
> > > Spice-devel@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/spice-devel
> >=20
> >=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--lrrc62fbgdyldcwk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAlzmfT8ACgkQl9kSPeN6
SE9IsQ/+M2BYAX+fo/xDnggGZ7T3x/YxuMOAwOwI61mFNiKLyI3UsT4iwTb4T8WC
75dmVXa4L06LbaTrXJOLXcr90EaRmxIzfBNm1dnlW+0PFgQAnvjBZrHhzFensKww
S0hIk4rjx1PMmOFF1BH8mlaZERxEM8f1FnEOCKNfzzui88NB9u+RHNo6NoJy3Zog
9TJvbHTN6iud7KGTi8StdEci1sLzPkhpxrQ7IzjIXbTrLLf7jiw+cvzPLvnz9PVR
H44KT4bDyRuWK44ESfeFfpALl9Uf/H5k1slsXesh2qTLVl+52z05fDlOi4OljrcL
7u359xeEpiYpHV02spJ9amqvUZ5IHkfZm1VndxhasdPFR8/1AJaHKggaNLwq7MYQ
XE1Ho3qBOGSypcj2q8OebJGp2rr2AViBod36opKUJTQByjwmHP9COyZcybSKktXF
ABnt7Tmom07USf1bIfxd+zbmNtR1hYsKPTrK9fTX1JBkQcf6RXEF6y0nq2jMhc2q
fP5QcRFbg8wYX4qVANMwYVPQCvaW8F6yeneK4fb69frlp+VPiMv07wxM7Udf9zIh
J3PPC7hIbmW2hxA3Y50AJE0UMkBzNwAlWl9hII449DV0a71cbMFbfGJKMHkaFuxE
dM+LnKA5/NL79f8fNlKIlNtFt/bnWn4OtkwipJvt41D/oo0qCFM=
=WpQV
-----END PGP SIGNATURE-----

--lrrc62fbgdyldcwk--

--===============1713890917==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1713890917==--
