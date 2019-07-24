Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF25772C25
	for <lists+spice-devel@lfdr.de>; Wed, 24 Jul 2019 12:10:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73EFF6E4F0;
	Wed, 24 Jul 2019 10:10:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E0756E4E6
 for <spice-devel@lists.freedesktop.org>; Wed, 24 Jul 2019 10:10:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9E9D830BD1C6
 for <spice-devel@lists.freedesktop.org>; Wed, 24 Jul 2019 10:10:51 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4488F60BEC;
 Wed, 24 Jul 2019 10:10:51 +0000 (UTC)
Date: Wed, 24 Jul 2019 12:10:50 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190724101050.bytjvg5dxhk5zyvd@wingsuit>
References: <20190724092823.12551-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190724092823.12551-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Wed, 24 Jul 2019 10:10:51 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server v2] event loop: improve
 implementation of watches for Unix systems
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
Content-Type: multipart/mixed; boundary="===============1386595025=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1386595025==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="irsq6jtmzvcs6thn"
Content-Disposition: inline


--irsq6jtmzvcs6thn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jul 24, 2019 at 10:28:23AM +0100, Frediano Ziglio wrote:
> Avoid having to destroy and create a new GSource every time
> we change event mask.
> Interfaces required for this patch are available since GLib 2.36
> and are specific to Unix.
> On use old implementation.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

Acked-by: Victor Toso <victortoso@redhat.com>

> ---
> Changes since v1:
> - Use g_source_add_unix_fd and family instead of g_source_add_poll
>=20
> CI at https://gitlab.freedesktop.org/fziglio/spice/pipelines/50855
> ---
>  server/event-loop.c | 94 +++++++++++++++++++++++++++++++++++++++------
>  1 file changed, 82 insertions(+), 12 deletions(-)
>=20
> diff --git a/server/event-loop.c b/server/event-loop.c
> index 80af2954f..812c3a53b 100644
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
> @@ -184,6 +181,79 @@ static void watch_remove(const SpiceCoreInterfaceInt=
ernal *iface,
>      g_free(watch);
>  }
> =20
> +#else
> +
> +struct SpiceWatch {
> +    GSource source;
> +    gpointer unix_fd;
> +    int fd;
> +};
> +
> +static gboolean
> +spice_watch_check(GSource *source)
> +{
> +    SpiceWatch *watch =3D SPICE_CONTAINEROF(source, SpiceWatch, source);
> +
> +    return g_source_query_unix_fd(&watch->source, watch->unix_fd) !=3D 0;
> +}
> +
> +static gboolean
> +spice_watch_dispatch(GSource     *source,
> +                     GSourceFunc  callback,
> +                     gpointer     user_data)
> +{
> +    SpiceWatch *watch =3D SPICE_CONTAINEROF(source, SpiceWatch, source);
> +    SpiceWatchFunc func =3D (SpiceWatchFunc)(void*) callback;
> +    GIOCondition condition =3D g_source_query_unix_fd(&watch->source, wa=
tch->unix_fd);
> +
> +    func(watch->fd, giocondition_to_spice_event(condition), user_data);
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
> +    GIOCondition condition =3D spice_event_to_giocondition(event_mask);
> +
> +    g_source_modify_unix_fd(&watch->source, watch->unix_fd, condition);
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
> +
> +    watch->fd =3D fd;
> +
> +    g_source_set_callback(&watch->source, (GSourceFunc)(void*)(SpiceWatc=
hFunc) func, opaque, NULL);
> +
> +    g_source_attach(&watch->source, iface->main_context);
> +
> +    GIOCondition condition =3D spice_event_to_giocondition(event_mask);
> +    watch->unix_fd =3D g_source_add_unix_fd(&watch->source, watch->fd, c=
ondition);
> +
> +    return watch;
> +}
> +
> +static void watch_remove(const SpiceCoreInterfaceInternal *iface,
> +                         SpiceWatch *watch)
> +{
> +    g_source_remove_unix_fd(&watch->source, watch->unix_fd);
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

--irsq6jtmzvcs6thn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl04LqoACgkQl9kSPeN6
SE8/9hAAgoHkv0jkS+AieePJQG8YclqGE+CNRLwk7ozvS0wjrr13NBFJ6fv2lLeZ
iGFg4KV1GKqikOUnc2am9M8Rv6fX6Pu2sSQB2nFRv/ASiz5Tnfqc6u0gsc3Qj8Gz
1BJNO451cIITDnVNAExArXEB3dhQw0ugXQM8KDYVxCK0j1V4F3SQ5XHaDRE03ooy
6yI1tLO4LVm3fly3jxZ/HKvZ2u6rvJPadyCxRNbFLZf6JJ4u1FAZtVjJOYByvS0n
LNSg1Dmd6Y/g7ooUPtEn/W/JVKAF5fIn/ZjySHATm7cnzhQ8imLfqEQzilXK7Px0
Kv7XfZRBYZMQxWuYaYepoGbQwA6h2DLX1XFFSMkrqJoVn2Toiqx/ZjNUaNe5KCtc
yom3SZyTV/z0XThK8obNqamcxbGOFRn2AnCuwY5KZywUptpwz+IolBcnKV5z3N0q
eocNLA19m8rbRZyXBFvvRel+iOGxtouvxFr0wt5vmuRu8wdfrAruR3an/lHtEBmE
xsziXVUMXt/pqc3u7wzhuCOFX95Yn4heawu3g9FW3jqLwYyr1c4C5tVNFWw9eC6/
DMqpGKDUgfH8XCSF6uhmpXCujH1ykFjX41R9DCM9RKZ/9/hjd/rk8qOQyEqYzaGd
LIfwH2qNRk3X3shqBMKILzE4j0DMKL3GwQGGba0fNhaHHc/AvS8=
=pUZ1
-----END PGP SIGNATURE-----

--irsq6jtmzvcs6thn--

--===============1386595025==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1386595025==--
