Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D73873B52E
	for <lists+spice-devel@lfdr.de>; Mon, 10 Jun 2019 14:45:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B83118908B;
	Mon, 10 Jun 2019 12:45:35 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADD22890B1
 for <spice-devel@lists.freedesktop.org>; Mon, 10 Jun 2019 12:45:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4DC073084042
 for <spice-devel@lists.freedesktop.org>; Mon, 10 Jun 2019 12:45:34 +0000 (UTC)
Received: from localhost (unknown [10.32.181.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EDF945B684
 for <spice-devel@lists.freedesktop.org>; Mon, 10 Jun 2019 12:45:33 +0000 (UTC)
Date: Mon, 10 Jun 2019 12:45:33 +0000
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <20190610124533.iensfzeie6kna43v@toolbox>
References: <20190527080409.3430-1-ssheribe@redhat.com>
 <20190610121527.24095-1-victortoso@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190610121527.24095-1-victortoso@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Mon, 10 Jun 2019 12:45:34 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk v4] Adjust to window scaling
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
Content-Type: multipart/mixed; boundary="===============0025075347=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0025075347==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6b4ubm4oljd7rryp"
Content-Disposition: inline


--6b4ubm4oljd7rryp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jun 10, 2019 at 12:15:27PM +0000, Victor Toso wrote:
> From: Snir Sheriber <ssheribe@redhat.com>
>=20
> When GDK_SCALE is !=3D 1 and egl is used, the image presented does not
> fit to the window (scale of 2 is often used with hidpi monitors).
> Usually this is not a problem since all components are adjusted by
> gdk/gtk but with egl, pixel-based data is not being scaled. In this
> case window's scale value can be used in order to determine whether
> to use a pixel resource with higher resolution data.
>=20
> In order to reproduce the problem set spice with virgl/Intel-vGPU
> and run spice-gtk with GDK_SCALE=3D2
>=20
> This issue was also reported at freedesktop gitlab repo:
> https://gitlab.freedesktop.org/spice/spice-gtk/issues/99
> ---
>  src/spice-widget-egl.c |  8 ++++----
>  src/spice-widget.c     | 31 +++++++++++++++++++++++--------
>  2 files changed, 27 insertions(+), 12 deletions(-)
>=20
> diff --git a/src/spice-widget-egl.c b/src/spice-widget-egl.c
> index 43fccd7..4c2a58e 100644
> --- a/src/spice-widget-egl.c
> +++ b/src/spice-widget-egl.c
> @@ -360,9 +360,9 @@ gboolean spice_egl_realize_display(SpiceDisplay *disp=
lay, GdkWindow *win, GError
>      DISPLAY_DEBUG(display, "egl realize");
>      if (!spice_widget_init_egl_win(display, win, err))
>          return FALSE;
> -
> -    spice_egl_resize_display(display, gdk_window_get_width(win),
> -                             gdk_window_get_height(win));
> +    gint scale_factor =3D gtk_widget_get_scale_factor(GTK_WIDGET(display=
));
> +    spice_egl_resize_display(display, gdk_window_get_width(win) * scale_=
factor,
> +                             gdk_window_get_height(win) * scale_factor);
> =20
>      return TRUE;
>  }
> @@ -427,7 +427,7 @@ void spice_egl_unrealize_display(SpiceDisplay *displa=
y)
>  }
> =20
>  G_GNUC_INTERNAL
> -void spice_egl_resize_display(SpiceDisplay *display, int w, int h)
> +void spice_egl_resize_display(SpiceDisplay *display, int w, int h) // w =
and h should be adjusted to gdk scaling

Why not a comment before the function declaration?

>  {
>      SpiceDisplayPrivate *d =3D display->priv;
>      int prog;
> diff --git a/src/spice-widget.c b/src/spice-widget.c
> index 1f2a154..a2651ff 100644
> --- a/src/spice-widget.c
> +++ b/src/spice-widget.c
> @@ -1382,7 +1382,8 @@ static void set_egl_enabled(SpiceDisplay *display, =
bool enabled)
>      }
> =20
>      if (enabled && d->egl.context_ready) {
> -        spice_egl_resize_display(display, d->ww, d->wh);
> +        gint scale_factor =3D gtk_widget_get_scale_factor(GTK_WIDGET(dis=
play));
> +        spice_egl_resize_display(display, d->ww * scale_factor, d->wh * =
scale_factor);
>      }
> =20
>      d->egl.enabled =3D enabled;
> @@ -1978,11 +1979,16 @@ static void transform_input(SpiceDisplay *display,
>      SpiceDisplayPrivate *d =3D display->priv;
>      int display_x, display_y, display_w, display_h;
>      double is;
> +    gint scale_factor =3D 1;
> =20
>      spice_display_get_scaling(display, NULL,
>                                &display_x, &display_y,
>                                &display_w, &display_h);
> -
> +#if HAVE_EGL
> +        if (egl_enabled(d)) {
> +            scale_factor =3D gtk_widget_get_scale_factor(GTK_WIDGET(disp=
lay));
> +        }
> +#endif

I don't think this #if HAVE_EGL is needed because that's in
egl_enabled() too, in case egl is disabled it should always
return false which I hope compiler can optimize...

>      /* For input we need a different scaling factor in order to
>         be able to reach the full width of a display. For instance, consi=
der
>         a display of 100 pixels showing in a window 10 pixels wide. The n=
ormal
> @@ -1998,7 +2004,7 @@ static void transform_input(SpiceDisplay *display,
>         coordinates in the inverse direction (window -> display) as the f=
b size
>         (display -> window).
>      */
> -    is =3D (double)(d->area.width-1) / (double)(display_w-1);
> +    is =3D ((double)(d->area.width-1) / (double)(display_w-1)) * scale_f=
actor;
> =20
>      window_x -=3D display_x;
>      window_y -=3D display_y;
> @@ -2183,8 +2189,10 @@ static void size_allocate(GtkWidget *widget, GtkAl=
location *conf, gpointer data)
>          d->wh =3D conf->height;
>          recalc_geometry(widget);
>  #if HAVE_EGL
> -        if (egl_enabled(d))
> -            spice_egl_resize_display(display, conf->width, conf->height);
> +        if (egl_enabled(d)) {
> +            gint scale_factor =3D gtk_widget_get_scale_factor(widget);
> +            spice_egl_resize_display(display, conf->width * scale_factor=
, conf->height * scale_factor);
> +        }

Indentation is wrong

>  #endif
>      }
> =20
> @@ -2942,10 +2950,16 @@ void spice_display_get_scaling(SpiceDisplay *disp=
lay,
>      int ww, wh;
>      int x, y, w, h;
>      double s;
> +    gint scale_factor =3D 1;
> =20
>      if (gtk_widget_get_realized (GTK_WIDGET(display))) {
> -        ww =3D gtk_widget_get_allocated_width(GTK_WIDGET(display));
> -        wh =3D gtk_widget_get_allocated_height(GTK_WIDGET(display));
> +#if HAVE_EGL
> +        if (egl_enabled(d)) {
> +            scale_factor =3D gtk_widget_get_scale_factor(GTK_WIDGET(disp=
lay));
> +        }
> +#endif

=2E. same here but I haven't tested this version nor checked the
assembly code so, take this as suggestion only :)

Acked-by: Victor Toso <victortoso@redhat.com>

> +        ww =3D gtk_widget_get_allocated_width(GTK_WIDGET(display)) * sca=
le_factor;
> +        wh =3D gtk_widget_get_allocated_height(GTK_WIDGET(display)) * sc=
ale_factor;
>      } else {
>          ww =3D fbw;
>          wh =3D fbh;
> @@ -3091,7 +3105,8 @@ void spice_display_widget_gl_scanout(SpiceDisplay *=
display)
>              g_clear_error(&err);
>          }
> =20
> -        spice_egl_resize_display(display, d->ww, d->wh);
> +        gint scale_factor =3D gtk_widget_get_scale_factor(GTK_WIDGET(dis=
play));
> +        spice_egl_resize_display(display, d->ww * scale_factor, d->wh * =
scale_factor);
>      }
>  #endif
> =20
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--6b4ubm4oljd7rryp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAlz+UO0ACgkQl9kSPeN6
SE9kTRAAwNf1hXb7H4Lx3zXrUpA76+rUil0nAtRh5EZmPh0VyqlmMj6NOAviipqr
zzgLAH6CGourPhitfDr3yKMfjCzwxw81a4p9zL5nft8L7pCe+DSMh42V9AWzIctY
9Eok6HEUqmvacOB19wMk2z93dtqMjti2URhyMtJBKTIpY6VHQVFS2l8bkDG6Ul+o
2+gZv/WiBDlrsgKrXRI439seqrUbkg2ObJMYz/366a4zfhzRiVnJwLolcevvCUsi
A2pz785w280HrqEWlOL6PJpXlQf10en4iXWd+BzhgYY3XYXo55DRq+DJp20mSY18
LPiGSrPjf+gitEO9YR8jT6/jCzVNgNReLFwFIrhG2foRS5qwoq3CMaFtztnHrb0z
4e1Ki70NUy7KExhAzu1sEQ1JCNJcc1T5CbUE/fCvyTVa3bCQRW1kwI9qj9wIVhnG
bchuzd+6dAiinVi/1hbq61JqOYJvpX2aC2clc8B+LusyoOd+jnP41KRkRSpGGFI8
eveYfrvHXlb28C20D/Z3WwhXxFBdEXSuToEG6f8gqTA1p6YTkX+b13neuuXhPP23
h3W+OG1PDJg8w96pX7tFW84RiNV57Gn945eh59YAU5zY5bgYq8v7NGv5HZBe9klG
wU9nzYxOE8YuhfH/wphGviCotbTjF3duHUKSiENmk2nUmI0kThA=
=YNd3
-----END PGP SIGNATURE-----

--6b4ubm4oljd7rryp--

--===============0025075347==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0025075347==--
