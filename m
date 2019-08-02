Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 273567F4B3
	for <lists+spice-devel@lfdr.de>; Fri,  2 Aug 2019 12:09:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2EAB6EDA6;
	Fri,  2 Aug 2019 10:09:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 261C06EDA6
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Aug 2019 10:09:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B81F8285AE
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Aug 2019 10:09:44 +0000 (UTC)
Received: from localhost (unknown [10.32.181.128])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6305A600C8;
 Fri,  2 Aug 2019 10:09:44 +0000 (UTC)
Date: Fri, 2 Aug 2019 12:09:43 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190802100943.zb4coeqmr3b6wyw7@wingsuit>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-9-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190530142254.28937-9-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Fri, 02 Aug 2019 10:09:44 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 09/13] dispatcher: Use a new
 API to handle events
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
Content-Type: multipart/mixed; boundary="===============1753696546=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1753696546==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jvaimqyhsoiopsqp"
Content-Disposition: inline


--jvaimqyhsoiopsqp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 30, 2019 at 03:22:50PM +0100, Frediano Ziglio wrote:
> Instead of having to manually register the file descriptor and
> than need to call dispatcher_handle_recv_read just provide a single
> API to create the watch.
> This has some advantage:
> - replace 2 API with 1;
> - code reuse for handling the event (removed 2 functions);
> - avoid the caller to use the file descriptor;
> - avoid the caller to register wrong events.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

Nothing to add, looks better.
Acked-by: Victor Toso <victortoso@redhat.com>

> ---
>  server/dispatcher.c      | 15 +++++++++------
>  server/dispatcher.h      | 25 +++++--------------------
>  server/main-dispatcher.c | 12 +-----------
>  server/red-worker.c      | 10 +---------
>  4 files changed, 16 insertions(+), 46 deletions(-)
>=20
> diff --git a/server/dispatcher.c b/server/dispatcher.c
> index 602f30a8e..bd74b6f35 100644
> --- a/server/dispatcher.c
> +++ b/server/dispatcher.c
> @@ -317,11 +317,13 @@ static int dispatcher_handle_single_read(Dispatcher=
 *dispatcher)
>  }
> =20
>  /*
> - * dispatcher_handle_recv_read
> + * dispatcher_handle_event
>   * doesn't handle being in the middle of a message. all reads are blocki=
ng.
>   */
> -void dispatcher_handle_recv_read(Dispatcher *dispatcher)
> +static void dispatcher_handle_event(int fd, int event, void *opaque)
>  {
> +    Dispatcher *dispatcher =3D opaque;
> +
>      while (dispatcher_handle_single_read(dispatcher)) {
>      }
>  }
> @@ -430,14 +432,15 @@ static void setup_dummy_signal_handler(void)
>  }
>  #endif
> =20
> -void dispatcher_set_opaque(Dispatcher *self, void *opaque)
> +SpiceWatch *dispatcher_create_watch(Dispatcher *dispatcher, SpiceCoreInt=
erfaceInternal *core)
>  {
> -    self->priv->opaque =3D opaque;
> +    return core->watch_add(core, dispatcher->priv->recv_fd,
> +                           SPICE_WATCH_EVENT_READ, dispatcher_handle_eve=
nt, dispatcher);
>  }
> =20
> -int dispatcher_get_recv_fd(Dispatcher *dispatcher)
> +void dispatcher_set_opaque(Dispatcher *self, void *opaque)
>  {
> -    return dispatcher->priv->recv_fd;
> +    self->priv->opaque =3D opaque;
>  }
> =20
>  pthread_t dispatcher_get_thread_id(Dispatcher *self)
> diff --git a/server/dispatcher.h b/server/dispatcher.h
> index 49215782a..5bd0b1055 100644
> --- a/server/dispatcher.h
> +++ b/server/dispatcher.h
> @@ -148,29 +148,14 @@ void dispatcher_register_handler(Dispatcher *dispat=
cher, uint32_t message_type,
>  void dispatcher_register_universal_handler(Dispatcher *dispatcher,
>                                      dispatcher_handle_any_message handle=
r);
> =20
> -/* dispatcher_handle_recv_read
> +/* dispatcher_create_watch
>   *
> - * A convenience function that is intended to be called by the receiving=
 thread
> - * to handle all incoming messages and execute any handlers for those me=
ssages.
> - * This function will handle all incoming messages until there is no mor=
e data
> - * to read, so multiple handlers may be executed from a single call to
> - * dispatcher_handle_recv_read().
> + * Create a new watch to handle events for the dispatcher.
> + * You should release it before releasing the dispatcher.
>   *
> - * @dispatcher: Dispatcher instance
> - */
> -void dispatcher_handle_recv_read(Dispatcher *);
> -
> -/* dispatcher_get_recv_fd
> - *
> - * This function returns the file descriptor that is used by the receivi=
ng
> - * thread to listen for incoming messages. You should not read or write
> - * directly to this fd, but should only use it to watch for read events.=
 When
> - * there is a read event, you should use dispatcher_handle_recv_read() to
> - * handle the incoming messages.
> - *
> - * @return: receive file descriptor of the dispatcher
> + * @return: newly created watch
>   */
> -int dispatcher_get_recv_fd(Dispatcher *);
> +SpiceWatch *dispatcher_create_watch(Dispatcher *dispatcher, SpiceCoreInt=
erfaceInternal *core);
> =20
>  /* dispatcher_set_opaque
>   *
> diff --git a/server/main-dispatcher.c b/server/main-dispatcher.c
> index 839e7242c..2ca68a4d1 100644
> --- a/server/main-dispatcher.c
> +++ b/server/main-dispatcher.c
> @@ -247,13 +247,6 @@ void main_dispatcher_client_disconnect(MainDispatche=
r *self, RedClient *client)
>      }
>  }
> =20
> -static void dispatcher_handle_read(int fd, int event, void *opaque)
> -{
> -    Dispatcher *dispatcher =3D opaque;
> -
> -    dispatcher_handle_recv_read(dispatcher);
> -}
> -
>  /*
>   * FIXME:
>   * Reds routines shouldn't be exposed. Instead reds.c should register th=
e callbacks,
> @@ -276,10 +269,7 @@ void main_dispatcher_constructed(GObject *object)
>      dispatcher_set_opaque(DISPATCHER(self), self->priv->reds);
> =20
>      self->priv->watch =3D
> -        reds_core_watch_add(self->priv->reds,
> -                            dispatcher_get_recv_fd(DISPATCHER(self)),
> -                            SPICE_WATCH_EVENT_READ, dispatcher_handle_re=
ad,
> -                            DISPATCHER(self));
> +        dispatcher_create_watch(DISPATCHER(self), reds_get_core_interfac=
e(self->priv->reds));
>      dispatcher_register_handler(DISPATCHER(self), MAIN_DISPATCHER_CHANNE=
L_EVENT,
>                                  main_dispatcher_handle_channel_event,
>                                  sizeof(MainDispatcherChannelEventMessage=
), false);
> diff --git a/server/red-worker.c b/server/red-worker.c
> index b3335a53a..98a4a9dc3 100644
> --- a/server/red-worker.c
> +++ b/server/red-worker.c
> @@ -980,13 +980,6 @@ static void register_callbacks(Dispatcher *dispatche=
r)
> =20
> =20
> =20
> -static void handle_dev_input(int fd, int event, void *opaque)
> -{
> -    Dispatcher *dispatcher =3D opaque;
> -
> -    dispatcher_handle_recv_read(dispatcher);
> -}
> -
>  typedef struct RedWorkerSource {
>      GSource source;
>      RedWorker *worker;
> @@ -1086,8 +1079,7 @@ RedWorker* red_worker_new(QXLInstance *qxl)
>      stat_init_counter(&worker->total_loop_counter, reds, &worker->stat, =
"total_loops", TRUE);
> =20
>      worker->dispatch_watch =3D
> -        worker->core.watch_add(&worker->core, dispatcher_get_recv_fd(dis=
patcher),
> -                               SPICE_WATCH_EVENT_READ, handle_dev_input,=
 dispatcher);
> +        dispatcher_create_watch(dispatcher, &worker->core);
>      spice_assert(worker->dispatch_watch !=3D NULL);
> =20
>      GSource *source =3D g_source_new(&worker_source_funcs, sizeof(RedWor=
kerSource));
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--jvaimqyhsoiopsqp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1EC+cACgkQl9kSPeN6
SE+yhw/6Auke8TyhC8O7cgaaVT7J3He8DJCcElzq8wBg3Xm+8tqcrLqwjrnb4DRg
Muo1xUtcnGTTwx9YB7/uPDKqMGFtTYHutWlZ8nijrKAxf1amKMAV8k+bwO6u+DFW
OpaxWGkrEQiKaazJa6nEd36AmNuEViB/00qVxMn+Z0E22WaToWwpNOW5CLiq+O2C
OJvE9gFuVDO6Q4y5rVHBlrSnjAuJMw5FyvGrquVotvkby+8IxIxB/S96Vhpydm7Y
WK6E1OSRhfjDtBqbwRdi1V3zBZPmkTqXqjGoZm+skUWjjJM/8lb51i3p/HnLIQB4
equP3ZM8duYbvaSmNUj6b1b0fzHS8WLUA7sAHB5neDnilCwnlffNTa/5zC1mSS/v
COvn+7kL/pSFpbJ0LH4Nec4UEmb41pvb/wdbEUiOlNEiPEAZvhHCx1KQnMK2dDeM
DjPUTH1f1187Ro2nxD5EigjkfiZ6MlQo+xn2UppL6pxT8xx3DeIIXSy+/4ImuwGX
70G0ABmqI6bWqd68wNfsRL+9npiObQlZopsKl+4YyVpja0vhxc9FLepSjxcg9oT2
oWYd1sSTefDaO7HTGlMhJXaxVRUpOTdDmhkSlUTdXq9tOU3oIW7WcTO9po6QHUwc
ax/YzGP2x6suv6o5Ug5oVkmhoTIs3MD/Vxvcxt6LPgHt3gdAxpc=
=/4m9
-----END PGP SIGNATURE-----

--jvaimqyhsoiopsqp--

--===============1753696546==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1753696546==--
