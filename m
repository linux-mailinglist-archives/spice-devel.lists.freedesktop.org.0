Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A833B463
	for <lists+spice-devel@lfdr.de>; Mon, 10 Jun 2019 14:13:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A594989134;
	Mon, 10 Jun 2019 12:13:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFA8189134
 for <spice-devel@lists.freedesktop.org>; Mon, 10 Jun 2019 12:13:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 671B931628E4;
 Mon, 10 Jun 2019 12:13:03 +0000 (UTC)
Received: from localhost (unknown [10.32.181.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0E12D60141;
 Mon, 10 Jun 2019 12:13:02 +0000 (UTC)
Date: Mon, 10 Jun 2019 12:13:02 +0000
From: Victor Toso <victortoso@redhat.com>
To: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <20190610121302.akvwbwwch6bkby7p@toolbox>
References: <8f0d6136-c5a4-b541-46bf-6c2280eb302d@redhat.com>
 <20190527080409.3430-1-ssheribe@redhat.com>
 <CAJ+F1CKvO3T+VjG7D3=0EQ827zhBRBY4R+fK+gGQQb98BwiR2Q@mail.gmail.com>
 <53edc2b2-9233-bfd4-f5f7-d304204a6888@redhat.com>
MIME-Version: 1.0
In-Reply-To: <53edc2b2-9233-bfd4-f5f7-d304204a6888@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Mon, 10 Jun 2019 12:13:03 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH v3 spice-gtk] Adjust to window scaling
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
Content-Type: multipart/mixed; boundary="===============1700136299=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1700136299==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ni3kowa23w3ftfvs"
Content-Disposition: inline


--ni3kowa23w3ftfvs
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sun, Jun 02, 2019 at 03:55:28PM +0300, Snir Sheriber wrote:
> Hi,
>=20
>=20
> On 5/27/19 8:29 PM, Marc-Andr=E9 Lureau wrote:
> > Hi
> >=20
> > On Mon, May 27, 2019 at 10:04 AM Snir Sheriber <ssheribe@redhat.com> wr=
ote:
> > > When GDK_SCALE is !=3D 1 and egl is used, the image presented does not
> > > fit to the window (scale of 2 is often used with hidpi monitors).
> > > Usually this is not a problem since all components are adjusted by
> > > gdk/gtk but with egl, pixel-based data is not being scaled. In this
> > > case window's scale value can be used in order to determine whether
> > > to use a pixel resource with higher resolution data.
> > >=20
> > > In order to reproduce the problem set spice with virgl/Intel-vGPU
> > > and run spice-gtk with GDK_SCALE=3D2
> > >=20
> > > This issue was also reported at freedesktop gitlab repo:
> > > https://gitlab.freedesktop.org/spice/spice-gtk/issues/99
> > > ---
> > >   src/spice-widget-egl.c |  8 ++++----
> > >   src/spice-widget.c     | 31 +++++++++++++++++++++++--------
> > >   2 files changed, 27 insertions(+), 12 deletions(-)
> > >=20
> > > diff --git a/src/spice-widget-egl.c b/src/spice-widget-egl.c
> > > index 43fccd7..f688fd2 100644
> > > --- a/src/spice-widget-egl.c
> > > +++ b/src/spice-widget-egl.c
> > > @@ -360,9 +360,9 @@ gboolean spice_egl_realize_display(SpiceDisplay *=
display, GdkWindow *win, GError
> > >       DISPLAY_DEBUG(display, "egl realize");
> > >       if (!spice_widget_init_egl_win(display, win, err))
> > >           return FALSE;
> > > -
> > > -    spice_egl_resize_display(display, gdk_window_get_width(win),
> > > -                             gdk_window_get_height(win));
> > > +    gint gdk_scale =3D gdk_window_get_scale_factor(win);
> > Here too, I suppose gtk_widget_get_scale_factor() would be better.
>=20
>=20
> I used this for consistency although I'm still not sure which one is more
> consistent :P .
> If I'm using gtk_* would make sense to get also the sizes with gtk_*
> function but then
> passing the GdkWindow also seems a bit unnecessary..
>=20
> Another version is attached

It is hard to comment on attached files so I'll resend.
>=20
>=20
> >=20
> > > +    spice_egl_resize_display(display, gdk_window_get_width(win) * gd=
k_scale,
> > > +                             gdk_window_get_height(win) * gdk_scale);
> > >=20
> > >       return TRUE;
> > >   }
> > > @@ -427,7 +427,7 @@ void spice_egl_unrealize_display(SpiceDisplay *di=
splay)
> > >   }
> > >=20
> > >   G_GNUC_INTERNAL
> > > -void spice_egl_resize_display(SpiceDisplay *display, int w, int h)
> > > +void spice_egl_resize_display(SpiceDisplay *display, int w, int h) /=
/ w and h should be adjusted to gdk scaling
> > >   {
> > >       SpiceDisplayPrivate *d =3D display->priv;
> > >       int prog;
> > > diff --git a/src/spice-widget.c b/src/spice-widget.c
> > > index 1f2a154..c475c39 100644
> > > --- a/src/spice-widget.c
> > > +++ b/src/spice-widget.c
> > > @@ -1382,7 +1382,8 @@ static void set_egl_enabled(SpiceDisplay *displ=
ay, bool enabled)
> > >       }
> > >=20
> > >       if (enabled && d->egl.context_ready) {
> > > -        spice_egl_resize_display(display, d->ww, d->wh);
> > > +        gint gdk_scale =3D gtk_widget_get_scale_factor(GTK_WIDGET(di=
splay));
> > > +        spice_egl_resize_display(display, d->ww * gdk_scale, d->wh *=
 gdk_scale);
> > >       }
> > >=20
> > >       d->egl.enabled =3D enabled;
> > > @@ -1978,11 +1979,16 @@ static void transform_input(SpiceDisplay *dis=
play,
> > >       SpiceDisplayPrivate *d =3D display->priv;
> > >       int display_x, display_y, display_w, display_h;
> > >       double is;
> > > +    gint gdk_scale =3D 1;
> > >=20
> > >       spice_display_get_scaling(display, NULL,
> > >                                 &display_x, &display_y,
> > >                                 &display_w, &display_h);
> > > -
> > > +#if HAVE_EGL
> > > +        if (egl_enabled(d)) {
> > > +            gdk_scale =3D gtk_widget_get_scale_factor(GTK_WIDGET(dis=
play));
> > > +        }
> > > +#endif
> > >       /* For input we need a different scaling factor in order to
> > >          be able to reach the full width of a display. For instance, =
consider
> > >          a display of 100 pixels showing in a window 10 pixels wide. =
The normal
> > > @@ -1998,7 +2004,7 @@ static void transform_input(SpiceDisplay *displ=
ay,
> > >          coordinates in the inverse direction (window -> display) as =
the fb size
> > >          (display -> window).
> > >       */
> > > -    is =3D (double)(d->area.width-1) / (double)(display_w-1);
> > > +    is =3D ((double)(d->area.width-1) / (double)(display_w-1)) * gdk=
_scale;
> > >=20
> > >       window_x -=3D display_x;
> > >       window_y -=3D display_y;
> > > @@ -2183,8 +2189,10 @@ static void size_allocate(GtkWidget *widget, G=
tkAllocation *conf, gpointer data)
> > >           d->wh =3D conf->height;
> > >           recalc_geometry(widget);
> > >   #if HAVE_EGL
> > > -        if (egl_enabled(d))
> > > -            spice_egl_resize_display(display, conf->width, conf->hei=
ght);
> > > +        if (egl_enabled(d)) {
> > > +            gint gdk_scale =3D gtk_widget_get_scale_factor(widget);
> > > +            spice_egl_resize_display(display, conf->width * gdk_scal=
e, conf->height * gdk_scale);
> > > +        }
> > >   #endif
> > >       }
> > >=20
> > > @@ -2942,10 +2950,16 @@ void spice_display_get_scaling(SpiceDisplay *=
display,
> > >       int ww, wh;
> > >       int x, y, w, h;
> > >       double s;
> > > +    gint gdk_scale =3D 1;
> > >=20
> > >       if (gtk_widget_get_realized (GTK_WIDGET(display))) {
> > > -        ww =3D gtk_widget_get_allocated_width(GTK_WIDGET(display));
> > > -        wh =3D gtk_widget_get_allocated_height(GTK_WIDGET(display));
> > > +#if HAVE_EGL
> > > +        if (egl_enabled(d)) {
> > > +            gdk_scale =3D gtk_widget_get_scale_factor(GTK_WIDGET(dis=
play));
> > > +        }
> > > +#endif
> > > +        ww =3D gtk_widget_get_allocated_width(GTK_WIDGET(display)) *=
 gdk_scale;
> > > +        wh =3D gtk_widget_get_allocated_height(GTK_WIDGET(display)) =
* gdk_scale;
> > >       } else {
> > >           ww =3D fbw;
> > >           wh =3D fbh;
> > > @@ -3091,7 +3105,8 @@ void spice_display_widget_gl_scanout(SpiceDispl=
ay *display)
> > >               g_clear_error(&err);
> > >           }
> > >=20
> > > -        spice_egl_resize_display(display, d->ww, d->wh);
> > > +        gint gdk_scale =3D gtk_widget_get_scale_factor(GTK_WIDGET(di=
splay));
> > > +        spice_egl_resize_display(display, d->ww * gdk_scale, d->wh *=
 gdk_scale);
> > >       }
> > >   #endif
> > >=20
> > > --
> > > 2.21.0
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


--ni3kowa23w3ftfvs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAlz+SU4ACgkQl9kSPeN6
SE+qQBAAqc0vcm94NepBEtI55O23FvFCZMZZ5Ftov1hCqa31RY0mLZvamomXqhBu
qvO2oF8fbVLem3XyAsVlHhTBqTtWyCh/tjKDgofd+JckQoP5EzR1Yl2hq1Esec7E
WZ0kLAhnUOZvcqjWZOzlolH9Au6LHDgUmxJHYe/VWKjR84F90SLdL+C2vNAAai8A
2HE5kVYG5TW1yqlu87bLc16Oy+09rutsmdz3sReXkeRvQMFCQEoikSMca2JsKK+3
n1qbNlVjsEiEPxbBLbCquFRxnNNqPJD5Rc+DXR1Iag2nxeDdnnfJhJBxGDyag6/2
sOVuwFtT8zGEnQM0mwbuRS1XF6KTGqKQj2W7xGeIGNrfmcPHGohkGJk2/bepSjaD
BjCwUT7CXyRFU79dPed3tjEaDSbkqNz/3uTCky9KVwwJ5mb7/IamZMb67uctN2Ii
1r65EU/O0o4MsuTzjtYQo1HuoFaXhu7hafBfrYin5Nwj3WjIp5YdRQyhtvl3n3pl
iz8649U96Op2P65nZAtZdebeUvxICHtlacwN61hjmTi0MTOnrjATtwm+758Put9T
grc2DAq2gPhl01F1bRD0ern/MFpORZJN966wU45zqJqDv/9/sTxj4cShzlSVqvwG
fvrgHuXWzJwiDVcOHk7AD40UfMdkNTVnwd1ph4HZRwTPrjHbCx0=
=Ni1l
-----END PGP SIGNATURE-----

--ni3kowa23w3ftfvs--

--===============1700136299==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1700136299==--
