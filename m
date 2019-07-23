Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72988715CA
	for <lists+spice-devel@lfdr.de>; Tue, 23 Jul 2019 12:13:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76552890BE;
	Tue, 23 Jul 2019 10:13:31 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25CFD890BE
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 10:13:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id AAB0830860C5
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 10:13:29 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 59526600CD;
 Tue, 23 Jul 2019 10:13:29 +0000 (UTC)
Date: Tue, 23 Jul 2019 12:13:28 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190723101328.yxqqz4iwdpjcguxn@wingsuit>
References: <20190619155641.30143-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190619155641.30143-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Tue, 23 Jul 2019 10:13:29 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] event loop: improve
 implementation of watches
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
Content-Type: multipart/mixed; boundary="===============0342267685=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0342267685==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fg2z4ho3lpeyckve"
Content-Disposition: inline


--fg2z4ho3lpeyckve
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jun 19, 2019 at 04:56:41PM +0100, Frediano Ziglio wrote:
> Avoid having to destroy and create a new GSource every time
> we change event mask.
> Interfaces required for this patch are available since GLib 2.36.
> on Windows GPollFD::fd can be an HANDLE but not a socket.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> ---
>  server/event-loop.c | 97 +++++++++++++++++++++++++++++++++++++++------
>  1 file changed, 85 insertions(+), 12 deletions(-)
>=20
> diff --git a/server/event-loop.c b/server/event-loop.c
> index 80af2954f..33db4ffb0 100644
> --- a/server/event-loop.c
> +++ b/server/event-loop.c
> @@ -85,14 +85,6 @@ static void timer_remove(const SpiceCoreInterfaceInter=
nal *iface,
>      g_free(timer);
>  }
> =20
> -struct SpiceWatch {
> -    GMainContext *context;
> -    void *opaque;
> -    GSource *source;
> -    GIOChannel *channel;
> -    SpiceWatchFunc func;
> -};
> -
>  static GIOCondition spice_event_to_giocondition(int event_mask)
>  {
>      GIOCondition condition =3D 0;
> @@ -117,6 +109,15 @@ static int giocondition_to_spice_event(GIOCondition =
condition)
>      return event;
>  }
> =20
> +#ifdef _WIN32
> +struct SpiceWatch {
> +    GMainContext *context;
> +    void *opaque;
> +    GSource *source;
> +    GIOChannel *channel;
> +    SpiceWatchFunc func;
> +};
> +
>  static gboolean watch_func(GIOChannel *source, GIOCondition condition,
>                             gpointer data)
>  {
> @@ -161,11 +162,7 @@ static SpiceWatch *watch_add(const SpiceCoreInterfac=
eInternal *iface,
> =20
>      watch =3D g_new0(SpiceWatch, 1);
>      watch->context =3D iface->main_context;
> -#ifndef _WIN32
> -    watch->channel =3D g_io_channel_unix_new(fd);
> -#else
>      watch->channel =3D g_io_channel_win32_new_socket(fd);
> -#endif
>      watch->func =3D func;
>      watch->opaque =3D opaque;
> =20
> @@ -184,6 +181,82 @@ static void watch_remove(const SpiceCoreInterfaceInt=
ernal *iface,
>      g_free(watch);
>  }
> =20
> +#else
> +
> +struct SpiceWatch {
> +    GSource source;
> +    GPollFD pollfd;
> +};
> +
> +static gboolean
> +spice_watch_check(GSource *source)
> +{
> +    SpiceWatch *watch =3D SPICE_CONTAINEROF(source, SpiceWatch, source);
> +
> +    return watch->pollfd.events & watch->pollfd.revents;
> +}
> +
> +static gboolean
> +spice_watch_dispatch(GSource     *source,
> +                     GSourceFunc  callback,
> +                     gpointer     user_data)
> +{
> +    SpiceWatch *watch =3D SPICE_CONTAINEROF(source, SpiceWatch, source);
> +    SpiceWatchFunc func =3D (SpiceWatchFunc)(void*) callback;
> +
> +    func(watch->pollfd.fd, giocondition_to_spice_event(watch->pollfd.rev=
ents), user_data);
> +    /* timer might be free after func(), don't touch */
> +
> +    return G_SOURCE_CONTINUE;
> +}
> +
> +static GSourceFuncs spice_watch_funcs =3D {
> +    .check =3D spice_watch_check,
> +    .dispatch =3D spice_watch_dispatch,
> +};
> +
> +static void watch_update_mask(const SpiceCoreInterfaceInternal *iface,
> +                              SpiceWatch *watch, int event_mask)
> +{
> +    GIOCondition old_condition =3D watch->pollfd.events;
> +    GIOCondition new_condition =3D spice_event_to_giocondition(event_mas=
k);
> +
> +    watch->pollfd.events =3D new_condition;
> +    if (old_condition && !new_condition) {
> +        g_source_remove_poll(&watch->source, &watch->pollfd);
> +    } else if (!old_condition && new_condition) {
> +        g_source_add_poll(&watch->source, &watch->pollfd);

There is a note in the manual "Newly-written event sources should
try to use g_source_add_unix_fd() instead of this API." which is
present since 2.36.

> +    }
> +}
> +
> +static SpiceWatch *watch_add(const SpiceCoreInterfaceInternal *iface,
> +                             int fd, int event_mask, SpiceWatchFunc func=
, void *opaque)
> +{
> +    SpiceWatch *watch =3D (SpiceWatch *) g_source_new(&spice_watch_funcs=
, sizeof(SpiceWatch));
> +
> +    spice_return_val_if_fail(fd !=3D -1, NULL);
> +    spice_return_val_if_fail(func !=3D NULL, NULL);

If an issue in the guards, you would be leaking the GSource

> +
> +    watch->pollfd.fd =3D fd;
> +    watch->pollfd.events =3D 0;
> +
> +    g_source_set_callback(&watch->source, (GSourceFunc)(void*)(SpiceWatc=
hFunc) func, opaque, NULL);

I guess G_SOURCE_FUNC should work for casting *but* that is in
2.58 only :(

Potential addition to glib-compat.h ?

> +
> +    g_source_attach(&watch->source, iface->main_context);
> +
> +    watch_update_mask(iface, watch, event_mask);
> +
> +    return watch;
> +}
> +
> +static void watch_remove(const SpiceCoreInterfaceInternal *iface,
> +                         SpiceWatch *watch)
> +{

Not sure on situations that watch_remove() can be called actually
but you might considering add a conditional with
g_source_is_destroyed() to avoid unref multiple times. Perhaps
not important.

Cheers,
Victor

> +    g_source_destroy(&watch->source);
> +    g_source_unref(&watch->source);
> +}
> +#endif
> +
>  const SpiceCoreInterfaceInternal event_loop_core =3D {
>      .timer_add =3D timer_add,
>      .timer_start =3D timer_start,
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--fg2z4ho3lpeyckve
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl023cgACgkQl9kSPeN6
SE8cfBAApep52H5M+LVU3wKhqMZdbdSk1UuJjSnpWA4rg1iNemksAbLrTp6poG7C
htojOCv8BmawbEaRH9rH7snW3FefkjZavGIa3bN2S9CnACeLOuBgtI1E6jX08vxW
IwfxFMmHCrc2t484J6z0Vset0Smb3xDyxkUEAG6w8wN0yv95+wPKWweHKZtOx7Sm
BvkVX3hgvVjVxEIQZr2DC7iOZp5WO7A5j5dyBJVqeafABCHpllvpP34N0zRqi0MT
CX0zRV7u3x8oSVgWnwiXq/y3su0VtorqwLVxN4mbCEIJRX0UTuJ+WDxt9xMuc1E2
rDKg8B4hbORoWRuXiIlm7nNNUo+A5yJa3iSDzDXOjEk48GC3Dkh9UGBvCq5nR+yo
UgMiycmiW7x8VkHl0hLBsf8k7NYiwVIax3+GwigmdwnVQ+POdkK6+zG2s6g2KR0e
gSiqhFVqNRUNN4/efWFqNGsxjYUYakZyDRjeL9e+U8negWhslmyUTRbJu4r+wUpe
kDiwz3ypy3WoknVtmUuJeOMez2506y0TLFDDMjclJtI20Z751fzVJqYfWGsWxPV+
siCoVeoKaWPSZ3jGSunPn60rTlbNuH14BZYHjkx9gdHW5iB153zE3D2M/cLSEk/8
uUr8Hl7thm4H9rRkJJC8z7DYnGpHYKx3hwAR6UhJ1HjVrArfjHA=
=KigM
-----END PGP SIGNATURE-----

--fg2z4ho3lpeyckve--

--===============0342267685==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0342267685==--
