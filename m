Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ABD0D26C9
	for <lists+spice-devel@lfdr.de>; Thu, 10 Oct 2019 11:54:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1F186E353;
	Thu, 10 Oct 2019 09:54:38 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B4426E353
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Oct 2019 09:54:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2412718C8902
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Oct 2019 09:54:37 +0000 (UTC)
Received: from localhost (unknown [10.32.181.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7935C5C1B5;
 Thu, 10 Oct 2019 09:54:36 +0000 (UTC)
Date: Thu, 10 Oct 2019 11:54:35 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20191010095435.t7f4ptbgwi4bzfdg@wingsuit>
References: <20190806145250.31813-1-fziglio@redhat.com>
 <20190806145250.31813-2-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190806145250.31813-2-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.70]); Thu, 10 Oct 2019 09:54:37 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 2/2] event-loop: Change
 internal core interface
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
Content-Type: multipart/mixed; boundary="===============1372491113=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1372491113==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ixjwqw5az33mxsfk"
Content-Disposition: inline


--ixjwqw5az33mxsfk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Aug 06, 2019 at 03:52:50PM +0100, Frediano Ziglio wrote:
> Allow to modify/cancel timers/watches without having to
> retrieve the code interface.
> This will make sure that you are not using the wrong interface.
> Simplify code to deal with timers/watches.
> Remove the requirement to have the core interface available
> for removing timers/watches.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

Sorry to ask but could you please send a rebased version?

> ---
>  server/char-device.c            |  28 ++---
>  server/event-loop.c             | 206 ++++++++++++++++++++++++--------
>  server/inputs-channel.c         |   6 +-
>  server/main-dispatcher.c        |   2 +-
>  server/red-channel-client.c     |  43 +++----
>  server/red-common.h             |  15 ++-
>  server/red-stream-device.c      |   5 +-
>  server/red-stream.c             |   2 +-
>  server/red-worker.c             |   2 +-
>  server/reds.c                   |  69 ++---------
>  server/reds.h                   |  12 --
>  server/tests/basic-event-loop.c |  35 +-----
>  12 files changed, 211 insertions(+), 214 deletions(-)
>=20
> diff --git a/server/char-device.c b/server/char-device.c
> index cfcc29da0..1ac54d5c5 100644
> --- a/server/char-device.c
> +++ b/server/char-device.c
> @@ -163,7 +163,7 @@ static void red_char_device_client_free(RedCharDevice=
 *dev,
>  {
>      GList *l, *next;
> =20
> -    reds_core_timer_remove(dev->priv->reds, dev_client->wait_for_tokens_=
timer);
> +    red_timer_remove(dev_client->wait_for_tokens_timer);
>      dev_client->wait_for_tokens_timer =3D NULL;
> =20
>      g_queue_free_full(dev_client->send_queue, (GDestroyNotify)red_pipe_i=
tem_unref);
> @@ -249,8 +249,6 @@ static uint64_t red_char_device_max_send_tokens(RedCh=
arDevice *dev)
>  static void red_char_device_add_msg_to_client_queue(RedCharDeviceClient =
*dev_client,
>                                                      RedPipeItem *msg)
>  {
> -    RedCharDevice *dev =3D dev_client->dev;
> -
>      if (g_queue_get_length(dev_client->send_queue) >=3D dev_client->max_=
send_queue_size) {
>          red_char_device_handle_client_overflow(dev_client);
>          return;
> @@ -259,8 +257,8 @@ static void red_char_device_add_msg_to_client_queue(R=
edCharDeviceClient *dev_cli
>      red_pipe_item_ref(msg);
>      g_queue_push_head(dev_client->send_queue, msg);
>      if (!dev_client->wait_for_tokens_started) {
> -        reds_core_timer_start(dev->priv->reds, dev_client->wait_for_toke=
ns_timer,
> -                              RED_CHAR_DEVICE_WAIT_TOKENS_TIMEOUT);
> +        red_timer_start(dev_client->wait_for_tokens_timer,
> +                        RED_CHAR_DEVICE_WAIT_TOKENS_TIMEOUT);
>          dev_client->wait_for_tokens_started =3D TRUE;
>      }
>  }
> @@ -372,12 +370,12 @@ red_char_device_send_to_client_tokens_absorb(RedCha=
rDevice *dev,
>      }
> =20
>      if (red_char_device_can_send_to_client(dev_client)) {
> -        reds_core_timer_cancel(dev->priv->reds, dev_client->wait_for_tok=
ens_timer);
> +        red_timer_cancel(dev_client->wait_for_tokens_timer);
>          dev_client->wait_for_tokens_started =3D FALSE;
>          red_char_device_read_from_device(dev_client->dev);
>      } else if (!g_queue_is_empty(dev_client->send_queue)) {
> -        reds_core_timer_start(dev->priv->reds, dev_client->wait_for_toke=
ns_timer,
> -                              RED_CHAR_DEVICE_WAIT_TOKENS_TIMEOUT);
> +        red_timer_start(dev_client->wait_for_tokens_timer,
> +                        RED_CHAR_DEVICE_WAIT_TOKENS_TIMEOUT);
>          dev_client->wait_for_tokens_started =3D TRUE;
>      }
>  }
> @@ -438,7 +436,7 @@ static int red_char_device_write_to_device(RedCharDev=
ice *dev)
>      g_object_ref(dev);
> =20
>      if (dev->priv->write_to_dev_timer) {
> -        reds_core_timer_cancel(dev->priv->reds, dev->priv->write_to_dev_=
timer);
> +        red_timer_cancel(dev->priv->write_to_dev_timer);
>      }
> =20
>      sif =3D spice_char_device_get_interface(dev->priv->sin);
> @@ -475,8 +473,8 @@ static int red_char_device_write_to_device(RedCharDev=
ice *dev)
>      if (dev->priv->running) {
>          if (dev->priv->cur_write_buf) {
>              if (dev->priv->write_to_dev_timer) {
> -                reds_core_timer_start(dev->priv->reds, dev->priv->write_=
to_dev_timer,
> -                                      CHAR_DEVICE_WRITE_TO_TIMEOUT);
> +                red_timer_start(dev->priv->write_to_dev_timer,
> +                                CHAR_DEVICE_WRITE_TO_TIMEOUT);
>              }
>          } else {
>              spice_assert(g_queue_is_empty(&dev->priv->write_queue));
> @@ -493,7 +491,7 @@ static void red_char_device_write_retry(void *opaque)
>      RedCharDevice *dev =3D opaque;
> =20
>      if (dev->priv->write_to_dev_timer) {
> -        reds_core_timer_cancel(dev->priv->reds, dev->priv->write_to_dev_=
timer);
> +        red_timer_cancel(dev->priv->write_to_dev_timer);
>      }
>      red_char_device_write_to_device(dev);
>  }
> @@ -762,7 +760,7 @@ void red_char_device_stop(RedCharDevice *dev)
>      dev->priv->running =3D FALSE;
>      dev->priv->active =3D FALSE;
>      if (dev->priv->write_to_dev_timer) {
> -        reds_core_timer_cancel(dev->priv->reds, dev->priv->write_to_dev_=
timer);
> +        red_timer_cancel(dev->priv->write_to_dev_timer);
>      }
>  }
> =20
> @@ -947,7 +945,7 @@ static void red_char_device_init_device_instance(RedC=
harDevice *self)
> =20
>      g_return_if_fail(self->priv->reds);
> =20
> -    reds_core_timer_remove(self->priv->reds, self->priv->write_to_dev_ti=
mer);
> +    red_timer_remove(self->priv->write_to_dev_timer);
>      self->priv->write_to_dev_timer =3D NULL;
> =20
>      if (self->priv->sin =3D=3D NULL) {
> @@ -1037,7 +1035,7 @@ red_char_device_finalize(GObject *object)
>  {
>      RedCharDevice *self =3D RED_CHAR_DEVICE(object);
> =20
> -    reds_core_timer_remove(self->priv->reds, self->priv->write_to_dev_ti=
mer);
> +    red_timer_remove(self->priv->write_to_dev_timer);
>      self->priv->write_to_dev_timer =3D NULL;
> =20
>      write_buffers_queue_free(&self->priv->write_queue);
> diff --git a/server/event-loop.c b/server/event-loop.c
> index 1ccfd671f..6d2de95f2 100644
> --- a/server/event-loop.c
> +++ b/server/event-loop.c
> @@ -25,28 +25,83 @@
> =20
>  #include "red-common.h"
> =20
> +typedef struct SpiceCoreFuncs {
> +    void (*timer_start)(SpiceTimer *timer, uint32_t ms);
> +    void (*timer_cancel)(SpiceTimer *timer);
> +    void (*timer_remove)(SpiceTimer *timer);
> +    void (*watch_update_mask)(SpiceWatch *watch, int event_mask);
> +    void (*watch_remove)(SpiceWatch *watch);
> +} SpiceCoreFuncs;
> +
>  struct SpiceTimer {
> +    const SpiceCoreFuncs *funcs;
> +};
> +
> +struct SpiceWatch {
> +    const SpiceCoreFuncs *funcs;
> +};
> +
> +void red_timer_start(SpiceTimer *timer, uint32_t ms)
> +{
> +    if (timer) {
> +        timer->funcs->timer_start(timer, ms);
> +    }
> +}
> +
> +void red_timer_cancel(SpiceTimer *timer)
> +{
> +    if (timer) {
> +        timer->funcs->timer_cancel(timer);
> +    }
> +}
> +
> +void red_timer_remove(SpiceTimer *timer)
> +{
> +    if (timer) {
> +        timer->funcs->timer_remove(timer);
> +    }
> +}
> +
> +void red_watch_update_mask(SpiceWatch *watch, int event_mask)
> +{
> +    if (watch) {
> +        watch->funcs->watch_update_mask(watch, event_mask);
> +    }
> +}
> +
> +void red_watch_remove(SpiceWatch *watch)
> +{
> +    if (watch) {
> +        watch->funcs->watch_remove(watch);
> +    }
> +}
> +
> +static const SpiceCoreFuncs glib_core_funcs;
> +
> +typedef struct SpiceTimerGlib {
> +    SpiceTimer base;
>      GMainContext *context;
>      SpiceTimerFunc func;
>      void *opaque;
>      GSource *source;
> -};
> +} SpiceTimerGlib;
> =20
>  static SpiceTimer* timer_add(const SpiceCoreInterfaceInternal *iface,
>                               SpiceTimerFunc func, void *opaque)
>  {
> -    SpiceTimer *timer =3D g_new0(SpiceTimer, 1);
> +    SpiceTimerGlib *timer =3D g_new0(SpiceTimerGlib, 1);
> =20
> +    timer->base.funcs =3D &glib_core_funcs;
>      timer->context =3D iface->main_context;
>      timer->func =3D func;
>      timer->opaque =3D opaque;
> =20
> -    return timer;
> +    return &timer->base;
>  }
> =20
>  static gboolean timer_func(gpointer user_data)
>  {
> -    SpiceTimer *timer =3D user_data;
> +    SpiceTimerGlib *timer =3D (SpiceTimerGlib*) user_data;
> =20
>      timer->func(timer->opaque);
>      /* timer might be free after func(), don't touch */
> @@ -54,9 +109,9 @@ static gboolean timer_func(gpointer user_data)
>      return FALSE;
>  }
> =20
> -static void timer_cancel(const SpiceCoreInterfaceInternal *iface,
> -                         SpiceTimer *timer)
> +static void timer_cancel(SpiceTimer *timer_base)
>  {
> +    SpiceTimerGlib *timer =3D SPICE_UPCAST(SpiceTimerGlib, timer_base);
>      if (timer->source) {
>          g_source_destroy(timer->source);
>          g_source_unref(timer->source);
> @@ -64,10 +119,11 @@ static void timer_cancel(const SpiceCoreInterfaceInt=
ernal *iface,
>      }
>  }
> =20
> -static void timer_start(const SpiceCoreInterfaceInternal *iface,
> -                        SpiceTimer *timer, uint32_t ms)
> +static void timer_start(SpiceTimer *timer_base, uint32_t ms)
>  {
> -    timer_cancel(iface, timer);
> +    timer_cancel(timer_base);
> +
> +    SpiceTimerGlib *timer =3D SPICE_UPCAST(SpiceTimerGlib, timer_base);
> =20
>      timer->source =3D g_timeout_source_new(ms);
>      spice_assert(timer->source !=3D NULL);
> @@ -77,10 +133,11 @@ static void timer_start(const SpiceCoreInterfaceInte=
rnal *iface,
>      g_source_attach(timer->source, timer->context);
>  }
> =20
> -static void timer_remove(const SpiceCoreInterfaceInternal *iface,
> -                         SpiceTimer *timer)
> +static void timer_remove(SpiceTimer *timer_base)
>  {
> -    timer_cancel(iface, timer);
> +    timer_cancel(timer_base);
> +
> +    SpiceTimerGlib *timer =3D SPICE_UPCAST(SpiceTimerGlib, timer_base);
>      spice_assert(timer->source =3D=3D NULL);
>      g_free(timer);
>  }
> @@ -110,18 +167,19 @@ static int giocondition_to_spice_event(GIOCondition=
 condition)
>  }
> =20
>  #ifdef _WIN32
> -struct SpiceWatch {
> +typedef struct SpiceWatchGlib {
> +    SpiceWatch base;
>      GMainContext *context;
>      void *opaque;
>      GSource *source;
>      GIOChannel *channel;
>      SpiceWatchFunc func;
> -};
> +} SpiceWatchGlib;
> =20
>  static gboolean watch_func(GIOChannel *source, GIOCondition condition,
>                             gpointer data)
>  {
> -    SpiceWatch *watch =3D data;
> +    SpiceWatchGlib *watch =3D (SpiceWatchGlib*) data;
>      // this works also under Windows despite the name
>      int fd =3D g_io_channel_unix_get_fd(source);
> =20
> @@ -130,9 +188,9 @@ static gboolean watch_func(GIOChannel *source, GIOCon=
dition condition,
>      return TRUE;
>  }
> =20
> -static void watch_update_mask(const SpiceCoreInterfaceInternal *iface,
> -                              SpiceWatch *watch, int event_mask)
> +static void watch_update_mask(SpiceWatch *watch_base, int event_mask)
>  {
> +    SpiceWatchGlib *watch =3D SPICE_UPCAST(SpiceWatchGlib, watch_base);
>      if (watch->source) {
>          g_source_destroy(watch->source);
>          g_source_unref(watch->source);
> @@ -155,26 +213,27 @@ static void watch_update_mask(const SpiceCoreInterf=
aceInternal *iface,
>  static SpiceWatch *watch_add(const SpiceCoreInterfaceInternal *iface,
>                               int fd, int event_mask, SpiceWatchFunc func=
, void *opaque)
>  {
> -    SpiceWatch *watch;
> +    SpiceWatchGlib *watch;
> =20
>      spice_return_val_if_fail(fd !=3D -1, NULL);
>      spice_return_val_if_fail(func !=3D NULL, NULL);
> =20
> -    watch =3D g_new0(SpiceWatch, 1);
> +    watch =3D g_new0(SpiceWatchGlib, 1);
> +    watch->base.funcs =3D &glib_core_funcs;
>      watch->context =3D iface->main_context;
>      watch->channel =3D g_io_channel_win32_new_socket(fd);
>      watch->func =3D func;
>      watch->opaque =3D opaque;
> =20
> -    watch_update_mask(iface, watch, event_mask);
> +    watch_update_mask(&watch->base, event_mask);
> =20
> -    return watch;
> +    return &watch->base;
>  }
> =20
> -static void watch_remove(const SpiceCoreInterfaceInternal *iface,
> -                         SpiceWatch *watch)
> +static void watch_remove(SpiceWatch *watch_base)
>  {
> -    watch_update_mask(iface, watch, 0);
> +    SpiceWatchGlib *watch =3D SPICE_UPCAST(SpiceWatchGlib, watch_base);
> +    watch_update_mask(watch_base, 0);
>      spice_assert(watch->source =3D=3D NULL);
> =20
>      g_io_channel_unref(watch->channel);
> @@ -183,16 +242,17 @@ static void watch_remove(const SpiceCoreInterfaceIn=
ternal *iface,
> =20
>  #else
> =20
> -struct SpiceWatch {
> +typedef struct SpiceWatchGlib {
>      GSource source;
> +    SpiceWatch spice_base;
>      gpointer unix_fd;
>      int fd;
> -};
> +} SpiceWatchGlib;
> =20
>  static gboolean
>  spice_watch_check(GSource *source)
>  {
> -    SpiceWatch *watch =3D SPICE_CONTAINEROF(source, SpiceWatch, source);
> +    SpiceWatchGlib *watch =3D SPICE_CONTAINEROF(source, SpiceWatchGlib, =
source);
> =20
>      return g_source_query_unix_fd(&watch->source, watch->unix_fd) !=3D 0;
>  }
> @@ -202,7 +262,7 @@ spice_watch_dispatch(GSource     *source,
>                       GSourceFunc  callback,
>                       gpointer     user_data)
>  {
> -    SpiceWatch *watch =3D SPICE_CONTAINEROF(source, SpiceWatch, source);
> +    SpiceWatchGlib *watch =3D SPICE_CONTAINEROF(source, SpiceWatchGlib, =
source);
>      SpiceWatchFunc func =3D (SpiceWatchFunc)(void*) callback;
>      GIOCondition condition =3D g_source_query_unix_fd(&watch->source, wa=
tch->unix_fd);
> =20
> @@ -217,9 +277,9 @@ static GSourceFuncs spice_watch_funcs =3D {
>      .dispatch =3D spice_watch_dispatch,
>  };
> =20
> -static void watch_update_mask(const SpiceCoreInterfaceInternal *iface,
> -                              SpiceWatch *watch, int event_mask)
> +static void watch_update_mask(SpiceWatch *watch_base, int event_mask)
>  {
> +    SpiceWatchGlib *watch =3D SPICE_CONTAINEROF(watch_base, SpiceWatchGl=
ib, spice_base);
>      GIOCondition condition =3D spice_event_to_giocondition(event_mask);
> =20
>      g_source_modify_unix_fd(&watch->source, watch->unix_fd, condition);
> @@ -228,11 +288,14 @@ static void watch_update_mask(const SpiceCoreInterf=
aceInternal *iface,
>  static SpiceWatch *watch_add(const SpiceCoreInterfaceInternal *iface,
>                               int fd, int event_mask, SpiceWatchFunc func=
, void *opaque)
>  {
> -    SpiceWatch *watch =3D (SpiceWatch *) g_source_new(&spice_watch_funcs=
, sizeof(SpiceWatch));
> +    SPICE_VERIFY(SPICE_OFFSETOF(SpiceWatchGlib, source) =3D=3D 0);
> +    SpiceWatchGlib *watch =3D
> +        (SpiceWatchGlib *) g_source_new(&spice_watch_funcs, sizeof(Spice=
WatchGlib));
> =20
>      spice_return_val_if_fail(fd !=3D -1, NULL);
>      spice_return_val_if_fail(func !=3D NULL, NULL);
> =20
> +    watch->spice_base.funcs =3D &glib_core_funcs;
>      watch->fd =3D fd;
> =20
>      g_source_set_callback(&watch->source, (GSourceFunc)(void*)(SpiceWatc=
hFunc) func, opaque, NULL);
> @@ -242,68 +305,103 @@ static SpiceWatch *watch_add(const SpiceCoreInterf=
aceInternal *iface,
>      GIOCondition condition =3D spice_event_to_giocondition(event_mask);
>      watch->unix_fd =3D g_source_add_unix_fd(&watch->source, watch->fd, c=
ondition);
> =20
> -    return watch;
> +    return &watch->spice_base;
>  }
> =20
> -static void watch_remove(const SpiceCoreInterfaceInternal *iface,
> -                         SpiceWatch *watch)
> +static void watch_remove(SpiceWatch *watch_base)
>  {
> +    SpiceWatchGlib *watch =3D SPICE_CONTAINEROF(watch_base, SpiceWatchGl=
ib, spice_base);
> +
>      g_source_remove_unix_fd(&watch->source, watch->unix_fd);
>      g_source_destroy(&watch->source);
>      g_source_unref(&watch->source);
>  }
>  #endif
> =20
> -const SpiceCoreInterfaceInternal event_loop_core =3D {
> -    .timer_add =3D timer_add,
> +static const SpiceCoreFuncs glib_core_funcs =3D {
>      .timer_start =3D timer_start,
>      .timer_cancel =3D timer_cancel,
>      .timer_remove =3D timer_remove,
> =20
> -    .watch_add =3D watch_add,
>      .watch_update_mask =3D watch_update_mask,
>      .watch_remove =3D watch_remove,
>  };
> =20
> +const SpiceCoreInterfaceInternal event_loop_core =3D {
> +    .timer_add =3D timer_add,
> +    .watch_add =3D watch_add,
> +};
> +
>  /*
>   * Adapter for SpiceCodeInterface
>   */
> =20
> +static const SpiceCoreFuncs qemu_core_funcs;
> +
> +typedef struct SpiceTimerQemu {
> +    SpiceTimer base;
> +    SpiceCoreInterface *core;
> +    SpiceTimer *qemu_timer;
> +} SpiceTimerQemu;
> +
>  static SpiceTimer *adapter_timer_add(const SpiceCoreInterfaceInternal *i=
face, SpiceTimerFunc func, void *opaque)
>  {
> -    return iface->public_interface->timer_add(func, opaque);
> +    SpiceTimerQemu *timer =3D g_new0(SpiceTimerQemu, 1);
> +
> +    timer->base.funcs =3D &qemu_core_funcs;
> +    timer->core =3D iface->public_interface;
> +    timer->qemu_timer =3D timer->core->timer_add(func, opaque);
> +    return &timer->base;
>  }
> =20
> -static void adapter_timer_start(const SpiceCoreInterfaceInternal *iface,=
 SpiceTimer *timer, uint32_t ms)
> +static void adapter_timer_start(SpiceTimer *timer_, uint32_t ms)
>  {
> -    iface->public_interface->timer_start(timer, ms);
> +    SpiceTimerQemu *timer =3D SPICE_UPCAST(SpiceTimerQemu, timer_);
> +    timer->core->timer_start(timer->qemu_timer, ms);
>  }
> =20
> -static void adapter_timer_cancel(const SpiceCoreInterfaceInternal *iface=
, SpiceTimer *timer)
> +static void adapter_timer_cancel(SpiceTimer *timer_)
>  {
> -    iface->public_interface->timer_cancel(timer);
> +    SpiceTimerQemu *timer =3D SPICE_UPCAST(SpiceTimerQemu, timer_);
> +    timer->core->timer_cancel(timer->qemu_timer);
>  }
> =20
> -static void adapter_timer_remove(const SpiceCoreInterfaceInternal *iface=
, SpiceTimer *timer)
> +static void adapter_timer_remove(SpiceTimer *timer_)
>  {
> -    iface->public_interface->timer_remove(timer);
> +    SpiceTimerQemu *timer =3D SPICE_UPCAST(SpiceTimerQemu, timer_);
> +    timer->core->timer_remove(timer->qemu_timer);
> +    g_free(timer);
>  }
> =20
> +typedef struct SpiceWatchQemu {
> +    SpiceWatch base;
> +    SpiceCoreInterface *core;
> +    SpiceWatch *qemu_watch;
> +} SpiceWatchQemu;
> +
>  static SpiceWatch *adapter_watch_add(const SpiceCoreInterfaceInternal *i=
face,
>                                       int fd, int event_mask, SpiceWatchF=
unc func, void *opaque)
>  {
>      // note: Qemu API is fine having a SOCKET on Windows
> -    return iface->public_interface->watch_add(fd, event_mask, func, opaq=
ue);
> +    SpiceWatchQemu *watch =3D g_new0(SpiceWatchQemu, 1);
> +
> +    watch->base.funcs =3D &qemu_core_funcs;
> +    watch->core =3D iface->public_interface;
> +    watch->qemu_watch =3D watch->core->watch_add(fd, event_mask, func, o=
paque);
> +    return &watch->base;
>  }
> =20
> -static void adapter_watch_update_mask(const SpiceCoreInterfaceInternal *=
iface, SpiceWatch *watch, int event_mask)
> +static void adapter_watch_update_mask(SpiceWatch *watch_, int event_mask)
>  {
> -    iface->public_interface->watch_update_mask(watch, event_mask);
> +    SpiceWatchQemu *watch =3D SPICE_UPCAST(SpiceWatchQemu, watch_);
> +    watch->core->watch_update_mask(watch->qemu_watch, event_mask);
>  }
> =20
> -static void adapter_watch_remove(const SpiceCoreInterfaceInternal *iface=
, SpiceWatch *watch)
> +static void adapter_watch_remove(SpiceWatch *watch_)
>  {
> -    iface->public_interface->watch_remove(watch);
> +    SpiceWatchQemu *watch =3D SPICE_UPCAST(SpiceWatchQemu, watch_);
> +    watch->core->watch_remove(watch->qemu_watch);
> +    g_free(watch);
>  }
> =20
>  static void adapter_channel_event(const SpiceCoreInterfaceInternal *ifac=
e, int event, SpiceChannelEventInfo *info)
> @@ -312,13 +410,17 @@ static void adapter_channel_event(const SpiceCoreIn=
terfaceInternal *iface, int e
>          iface->public_interface->channel_event(event, info);
>  }
> =20
> -const SpiceCoreInterfaceInternal core_interface_adapter =3D {
> -    .timer_add =3D adapter_timer_add,
> +static const SpiceCoreFuncs qemu_core_funcs =3D {
>      .timer_start =3D adapter_timer_start,
>      .timer_cancel =3D adapter_timer_cancel,
>      .timer_remove =3D adapter_timer_remove,
> -    .watch_add =3D adapter_watch_add,
> +
>      .watch_update_mask =3D adapter_watch_update_mask,
>      .watch_remove =3D adapter_watch_remove,
> +};
> +
> +const SpiceCoreInterfaceInternal core_interface_adapter =3D {
> +    .timer_add =3D adapter_timer_add,
> +    .watch_add =3D adapter_watch_add,
>      .channel_event =3D adapter_channel_event,
>  };
> diff --git a/server/inputs-channel.c b/server/inputs-channel.c
> index a1c35565c..280783c17 100644
> --- a/server/inputs-channel.c
> +++ b/server/inputs-channel.c
> @@ -162,8 +162,7 @@ const VDAgentMouseState *inputs_channel_get_mouse_sta=
te(InputsChannel *inputs)
> =20
>  static void activate_modifiers_watch(InputsChannel *inputs)
>  {
> -    SpiceCoreInterfaceInternal *core =3D red_channel_get_core_interface(=
RED_CHANNEL(inputs));
> -    core->timer_start(core, inputs->key_modifiers_timer, KEY_MODIFIERS_T=
TL);
> +    red_timer_start(inputs->key_modifiers_timer, KEY_MODIFIERS_TTL);
>  }
> =20
>  static void kbd_push_scan(SpiceKbdInstance *sin, uint8_t scan)
> @@ -600,10 +599,9 @@ static void
>  inputs_channel_finalize(GObject *object)
>  {
>      InputsChannel *self =3D INPUTS_CHANNEL(object);
> -    SpiceCoreInterfaceInternal *core =3D red_channel_get_core_interface(=
RED_CHANNEL(self));
> =20
>      inputs_channel_detach_tablet(self, self->tablet);
> -    core->timer_remove(core, self->key_modifiers_timer);
> +    red_timer_remove(self->key_modifiers_timer);
> =20
>      G_OBJECT_CLASS(inputs_channel_parent_class)->finalize(object);
>  }
> diff --git a/server/main-dispatcher.c b/server/main-dispatcher.c
> index 2ca68a4d1..7579fd379 100644
> --- a/server/main-dispatcher.c
> +++ b/server/main-dispatcher.c
> @@ -288,7 +288,7 @@ static void main_dispatcher_finalize(GObject *object)
>  {
>      MainDispatcher *self =3D MAIN_DISPATCHER(object);
> =20
> -    reds_core_watch_remove(self->priv->reds, self->priv->watch);
> +    red_watch_remove(self->priv->watch);
>      self->priv->watch =3D NULL;
>      G_OBJECT_CLASS(main_dispatcher_parent_class)->finalize(object);
>  }
> diff --git a/server/red-channel-client.c b/server/red-channel-client.c
> index 337733d5d..d19eafe78 100644
> --- a/server/red-channel-client.c
> +++ b/server/red-channel-client.c
> @@ -216,8 +216,6 @@ typedef struct MarkerPipeItem {
> =20
>  static void red_channel_client_start_ping_timer(RedChannelClient *rcc, u=
int32_t timeout)
>  {
> -    SpiceCoreInterfaceInternal *core;
> -
>      if (!rcc->priv->latency_monitor.timer) {
>          return;
>      }
> @@ -226,14 +224,11 @@ static void red_channel_client_start_ping_timer(Red=
ChannelClient *rcc, uint32_t
>      }
>      rcc->priv->latency_monitor.state =3D PING_STATE_TIMER;
> =20
> -    core =3D red_channel_get_core_interface(rcc->priv->channel);
> -    core->timer_start(core, rcc->priv->latency_monitor.timer, timeout);
> +    red_timer_start(rcc->priv->latency_monitor.timer, timeout);
>  }
> =20
>  static void red_channel_client_cancel_ping_timer(RedChannelClient *rcc)
>  {
> -    SpiceCoreInterfaceInternal *core;
> -
>      if (!rcc->priv->latency_monitor.timer) {
>          return;
>      }
> @@ -241,8 +236,7 @@ static void red_channel_client_cancel_ping_timer(RedC=
hannelClient *rcc)
>          return;
>      }
> =20
> -    core =3D red_channel_get_core_interface(rcc->priv->channel);
> -    core->timer_cancel(core, rcc->priv->latency_monitor.timer);
> +    red_timer_cancel(rcc->priv->latency_monitor.timer);
>      rcc->priv->latency_monitor.state =3D PING_STATE_NONE;
>  }
> =20
> @@ -332,13 +326,12 @@ red_channel_client_finalize(GObject *object)
>  {
>      RedChannelClient *self =3D RED_CHANNEL_CLIENT(object);
> =20
> -    SpiceCoreInterfaceInternal *core =3D red_channel_get_core_interface(=
self->priv->channel);
>      if (self->priv->latency_monitor.timer) {
> -        core->timer_remove(core, self->priv->latency_monitor.timer);
> +        red_timer_remove(self->priv->latency_monitor.timer);
>          self->priv->latency_monitor.timer =3D NULL;
>      }
>      if (self->priv->connectivity_monitor.timer) {
> -        core->timer_remove(core, self->priv->connectivity_monitor.timer);
> +        red_timer_remove(self->priv->connectivity_monitor.timer);
>          self->priv->connectivity_monitor.timer =3D NULL;
>      }
> =20
> @@ -756,7 +749,6 @@ static void red_channel_client_connectivity_timer(voi=
d *opaque)
>      }
> =20
>      if (is_alive) {
> -        SpiceCoreInterfaceInternal *core =3D red_channel_get_core_interf=
ace(rcc->priv->channel);
>          monitor->received_bytes =3D false;
>          monitor->sent_bytes =3D false;
>          if (red_channel_client_is_blocked(rcc) || red_channel_client_wai=
ting_for_ack(rcc)) {
> @@ -767,7 +759,7 @@ static void red_channel_client_connectivity_timer(voi=
d *opaque)
>          } else {
>               monitor->state =3D CONNECTIVITY_STATE_CONNECTED;
>          }
> -        core->timer_start(core, rcc->priv->connectivity_monitor.timer,
> +        red_timer_start(rcc->priv->connectivity_monitor.timer,
>                            rcc->priv->connectivity_monitor.timeout);
>      } else {
>          monitor->state =3D CONNECTIVITY_STATE_DISCONNECTED;
> @@ -806,7 +798,7 @@ void red_channel_client_start_connectivity_monitoring=
(RedChannelClient *rcc, uin
>              core, red_channel_client_connectivity_timer, rcc);
>          rcc->priv->connectivity_monitor.timeout =3D timeout_ms;
>          if (!red_client_during_migrate_at_target(rcc->priv->client)) {
> -            core->timer_start(core, rcc->priv->connectivity_monitor.time=
r,
> +            red_timer_start(rcc->priv->connectivity_monitor.timer,
>                                rcc->priv->connectivity_monitor.timeout);
>          }
>      }
> @@ -964,14 +956,11 @@ cleanup:
>  static void
>  red_channel_client_watch_update_mask(RedChannelClient *rcc, int event_ma=
sk)
>  {
> -    SpiceCoreInterfaceInternal *core;
> -
>      if (!rcc->priv->stream->watch) {
>          return;
>      }
> =20
> -    core =3D red_channel_get_core_interface(rcc->priv->channel);
> -    core->watch_update_mask(core, rcc->priv->stream->watch, event_mask);
> +    red_watch_update_mask(rcc->priv->stream->watch, event_mask);
>  }
> =20
>  static void red_channel_client_seamless_migration_done(RedChannelClient =
*rcc)
> @@ -981,8 +970,7 @@ static void red_channel_client_seamless_migration_don=
e(RedChannelClient *rcc)
>      if (red_client_seamless_migration_done_for_channel(rcc->priv->client=
)) {
>          red_channel_client_start_ping_timer(rcc, PING_TEST_IDLE_NET_TIME=
OUT_MS);
>          if (rcc->priv->connectivity_monitor.timer) {
> -            SpiceCoreInterfaceInternal *core =3D red_channel_get_core_in=
terface(rcc->priv->channel);
> -            core->timer_start(core, rcc->priv->connectivity_monitor.time=
r,
> +            red_timer_start(rcc->priv->connectivity_monitor.timer,
>                                rcc->priv->connectivity_monitor.timeout);
>          }
>      }
> @@ -1000,14 +988,13 @@ bool red_channel_client_is_waiting_for_migrate_dat=
a(RedChannelClient *rcc)
> =20
>  void red_channel_client_default_migrate(RedChannelClient *rcc)
>  {
> -    SpiceCoreInterfaceInternal *core =3D red_channel_get_core_interface(=
rcc->priv->channel);
>      if (rcc->priv->latency_monitor.timer) {
>          red_channel_client_cancel_ping_timer(rcc);
> -        core->timer_remove(core, rcc->priv->latency_monitor.timer);
> +        red_timer_remove(rcc->priv->latency_monitor.timer);
>          rcc->priv->latency_monitor.timer =3D NULL;
>      }
>      if (rcc->priv->connectivity_monitor.timer) {
> -        core->timer_remove(core, rcc->priv->connectivity_monitor.timer);
> +        red_timer_remove(rcc->priv->connectivity_monitor.timer);
>          rcc->priv->connectivity_monitor.timer =3D NULL;
>      }
>      red_channel_client_pipe_add_type(rcc, RED_PIPE_ITEM_TYPE_MIGRATE);
> @@ -1024,8 +1011,7 @@ void red_channel_client_destroy(RedChannelClient *r=
cc)
>  void red_channel_client_shutdown(RedChannelClient *rcc)
>  {
>      if (rcc->priv->stream && rcc->priv->stream->watch) {
> -        SpiceCoreInterfaceInternal *core =3D red_channel_get_core_interf=
ace(rcc->priv->channel);
> -        core->watch_remove(core, rcc->priv->stream->watch);
> +        red_watch_remove(rcc->priv->stream->watch);
>          rcc->priv->stream->watch =3D NULL;
>          shutdown(rcc->priv->stream->socket, SHUT_RDWR);
>      }
> @@ -1719,22 +1705,21 @@ static void red_channel_client_on_disconnect(RedC=
hannelClient *rcc)
>  void red_channel_client_disconnect(RedChannelClient *rcc)
>  {
>      RedChannel *channel =3D rcc->priv->channel;
> -    SpiceCoreInterfaceInternal *core =3D red_channel_get_core_interface(=
channel);
> =20
>      if (!red_channel_client_is_connected(rcc)) {
>          return;
>      }
>      red_channel_client_pipe_clear(rcc);
>      if (rcc->priv->stream->watch) {
> -        core->watch_remove(core, rcc->priv->stream->watch);
> +        red_watch_remove(rcc->priv->stream->watch);
>          rcc->priv->stream->watch =3D NULL;
>      }
>      if (rcc->priv->latency_monitor.timer) {
> -        core->timer_remove(core, rcc->priv->latency_monitor.timer);
> +        red_timer_remove(rcc->priv->latency_monitor.timer);
>          rcc->priv->latency_monitor.timer =3D NULL;
>      }
>      if (rcc->priv->connectivity_monitor.timer) {
> -        core->timer_remove(core, rcc->priv->connectivity_monitor.timer);
> +        red_timer_remove(rcc->priv->connectivity_monitor.timer);
>          rcc->priv->connectivity_monitor.timer =3D NULL;
>      }
>      red_channel_remove_client(channel, rcc);
> diff --git a/server/red-common.h b/server/red-common.h
> index 22ea8fc37..4b2e9f87c 100644
> --- a/server/red-common.h
> +++ b/server/red-common.h
> @@ -40,17 +40,20 @@
>  #define SPICE_UPCAST(type, ptr) \
>      (verify_expr(SPICE_OFFSETOF(type, base) =3D=3D 0,SPICE_CONTAINEROF(p=
tr, type, base)))
> =20
> +SPICE_BEGIN_DECLS
> +
> +void red_timer_start(SpiceTimer *timer, uint32_t ms);
> +void red_timer_cancel(SpiceTimer *timer);
> +void red_timer_remove(SpiceTimer *timer);
> +void red_watch_update_mask(SpiceWatch *watch, int event_mask);
> +void red_watch_remove(SpiceWatch *watch);
> +
>  typedef struct SpiceCoreInterfaceInternal SpiceCoreInterfaceInternal;
> =20
>  struct SpiceCoreInterfaceInternal {
>      SpiceTimer *(*timer_add)(const SpiceCoreInterfaceInternal *iface, Sp=
iceTimerFunc func, void *opaque);
> -    void (*timer_start)(const SpiceCoreInterfaceInternal *iface, SpiceTi=
mer *timer, uint32_t ms);
> -    void (*timer_cancel)(const SpiceCoreInterfaceInternal *iface, SpiceT=
imer *timer);
> -    void (*timer_remove)(const SpiceCoreInterfaceInternal *iface, SpiceT=
imer *timer);
> =20
>      SpiceWatch *(*watch_add)(const SpiceCoreInterfaceInternal *iface, in=
t fd, int event_mask, SpiceWatchFunc func, void *opaque);
> -    void (*watch_update_mask)(const SpiceCoreInterfaceInternal *iface, S=
piceWatch *watch, int event_mask);
> -    void (*watch_remove)(const SpiceCoreInterfaceInternal *iface, SpiceW=
atch *watch);
> =20
>      void (*channel_event)(const SpiceCoreInterfaceInternal *iface, int e=
vent, SpiceChannelEventInfo *info);
> =20
> @@ -126,4 +129,6 @@ typedef struct GListIter {
>      { return G_TYPE_INSTANCE_GET_CLASS(obj, \
>               module_obj_name ## _get_type(), ModuleObjName ## Class); }
> =20
> +SPICE_END_DECLS
> +
>  #endif /* RED_COMMON_H_ */
> diff --git a/server/red-stream-device.c b/server/red-stream-device.c
> index 620e581ef..44d9cd09d 100644
> --- a/server/red-stream-device.c
> +++ b/server/red-stream-device.c
> @@ -120,7 +120,7 @@ stream_device_partial_read(StreamDevice *dev, SpiceCh=
arDeviceInstance *sin)
>          if (!dev->close_timer) {
>              dev->close_timer =3D reds_core_timer_add(reds, close_timer_f=
unc, dev);
>          }
> -        reds_core_timer_start(reds, dev->close_timer, 0);
> +        red_timer_start(dev->close_timer, 0);
>          return false;
>      }
> =20
> @@ -649,8 +649,7 @@ stream_device_dispose(GObject *object)
>  {
>      StreamDevice *dev =3D STREAM_DEVICE(object);
> =20
> -    RedsState *reds =3D red_char_device_get_server(RED_CHAR_DEVICE(dev));
> -    reds_core_timer_remove(reds, dev->close_timer);
> +    red_timer_remove(dev->close_timer);
> =20
>      if (dev->stream_channel) {
>          // close all current connections and drop the reference
> diff --git a/server/red-stream.c b/server/red-stream.c
> index 04be3af37..aec482fb8 100644
> --- a/server/red-stream.c
> +++ b/server/red-stream.c
> @@ -213,7 +213,7 @@ static ssize_t stream_ssl_read_cb(RedStream *s, void =
*buf, size_t size)
>  void red_stream_remove_watch(RedStream* s)
>  {
>      if (s->watch) {
> -        s->priv->core->watch_remove(s->priv->core, s->watch);
> +        red_watch_remove(s->watch);
>          s->watch =3D NULL;
>      }
>  }
> diff --git a/server/red-worker.c b/server/red-worker.c
> index 98a4a9dc3..12a8e7398 100644
> --- a/server/red-worker.c
> +++ b/server/red-worker.c
> @@ -1185,7 +1185,7 @@ void red_worker_free(RedWorker *worker)
>      worker->display_channel =3D NULL;
> =20
>      if (worker->dispatch_watch) {
> -        worker->core.watch_remove(&worker->core, worker->dispatch_watch);
> +        red_watch_remove(worker->dispatch_watch);
>      }
> =20
>      g_main_context_unref(worker->core.main_context);
> diff --git a/server/reds.c b/server/reds.c
> index f432f55a4..96dd58433 100644
> --- a/server/reds.c
> +++ b/server/reds.c
> @@ -410,7 +410,7 @@ static void reds_mig_cleanup(RedsState *reds)
>          reds->mig_inprogress =3D FALSE;
>          reds->mig_wait_connect =3D FALSE;
>          reds->mig_wait_disconnect =3D FALSE;
> -        reds_core_timer_cancel(reds, reds->mig_timer);
> +        red_timer_cancel(reds->mig_timer);
>          reds_mig_cleanup_wait_disconnect(reds);
>      }
>  }
> @@ -2429,7 +2429,6 @@ static void reds_handle_new_link(RedLinkInfo *link)
>  static void reds_handle_ssl_accept(int fd, int event, void *data)
>  {
>      RedLinkInfo *link =3D (RedLinkInfo *)data;
> -    RedsState *reds =3D link->reds;
>      RedStreamSslStatus return_code =3D red_stream_ssl_accept(link->strea=
m);
> =20
>      switch (return_code) {
> @@ -2437,12 +2436,10 @@ static void reds_handle_ssl_accept(int fd, int ev=
ent, void *data)
>              reds_link_free(link);
>              return;
>          case RED_STREAM_SSL_STATUS_WAIT_FOR_READ:
> -            reds_core_watch_update_mask(reds, link->stream->watch,
> -                                        SPICE_WATCH_EVENT_READ);
> +            red_watch_update_mask(link->stream->watch, SPICE_WATCH_EVENT=
_READ);
>              return;
>          case RED_STREAM_SSL_STATUS_WAIT_FOR_WRITE:
> -            reds_core_watch_update_mask(reds, link->stream->watch,
> -                                        SPICE_WATCH_EVENT_WRITE);
> +            red_watch_update_mask(link->stream->watch, SPICE_WATCH_EVENT=
_WRITE);
>              return;
>          case RED_STREAM_SSL_STATUS_OK:
>              red_stream_remove_watch(link->stream);
> @@ -2702,7 +2699,7 @@ void reds_set_client_mm_time_latency(RedsState *red=
s, RedClient *client, uint32_
>  static void reds_cleanup_net(SpiceServer *reds)
>  {
>      if (reds->listen_socket !=3D -1) {
> -       reds_core_watch_remove(reds, reds->listen_watch);
> +       red_watch_remove(reds->listen_watch);
>         if (reds->config->spice_listen_socket_fd !=3D reds->listen_socket=
) {
>            socket_close(reds->listen_socket);
>         }
> @@ -2710,7 +2707,7 @@ static void reds_cleanup_net(SpiceServer *reds)
>         reds->listen_socket =3D -1;
>      }
>      if (reds->secure_listen_socket !=3D -1) {
> -       reds_core_watch_remove(reds, reds->secure_listen_watch);
> +       red_watch_remove(reds->secure_listen_watch);
>         socket_close(reds->secure_listen_socket);
>         reds->secure_listen_watch =3D NULL;
>         reds->secure_listen_socket =3D -1;
> @@ -3031,7 +3028,7 @@ static void reds_mig_started(RedsState *reds)
> =20
>      reds->mig_inprogress =3D TRUE;
>      reds->mig_wait_connect =3D TRUE;
> -    reds_core_timer_start(reds, reds->mig_timer, MIGRATE_TIMEOUT);
> +    red_timer_start(reds->mig_timer, MIGRATE_TIMEOUT);
>  }
> =20
>  static void reds_mig_fill_wait_disconnect(RedsState *reds)
> @@ -3046,7 +3043,7 @@ static void reds_mig_fill_wait_disconnect(RedsState=
 *reds)
>      }
>      reds->mig_wait_connect =3D FALSE;
>      reds->mig_wait_disconnect =3D TRUE;
> -    reds_core_timer_start(reds, reds->mig_timer, MIGRATE_TIMEOUT);
> +    red_timer_start(reds->mig_timer, MIGRATE_TIMEOUT);
>  }
> =20
>  static void reds_mig_cleanup_wait_disconnect(RedsState *reds)
> @@ -3863,7 +3860,7 @@ SPICE_GNUC_VISIBLE void spice_server_destroy(SpiceS=
erver *reds)
>      if (reds->main_channel) {
>          red_channel_destroy(RED_CHANNEL(reds->main_channel));
>      }
> -    reds_core_timer_remove(reds, reds->mig_timer);
> +    red_timer_remove(reds->mig_timer);
> =20
>      if (reds->ctx) {
>          SSL_CTX_free(reds->ctx);
> @@ -4437,24 +4434,6 @@ SpiceWatch *reds_core_watch_add(RedsState *reds,
>     return reds->core.watch_add(&reds->core, fd, event_mask, func, opaque=
);
>  }
> =20
> -void reds_core_watch_update_mask(RedsState *reds,
> -                                 SpiceWatch *watch,
> -                                 int event_mask)
> -{
> -   g_return_if_fail(reds !=3D NULL);
> -   g_return_if_fail(reds->core.watch_update_mask !=3D NULL);
> -
> -   reds->core.watch_update_mask(&reds->core, watch, event_mask);
> -}
> -
> -void reds_core_watch_remove(RedsState *reds, SpiceWatch *watch)
> -{
> -   g_return_if_fail(reds !=3D NULL);
> -   g_return_if_fail(reds->core.watch_remove !=3D NULL);
> -
> -   reds->core.watch_remove(&reds->core, watch);
> -}
> -
>  SpiceTimer *reds_core_timer_add(RedsState *reds,
>                                  SpiceTimerFunc func,
>                                  void *opaque)
> @@ -4466,38 +4445,6 @@ SpiceTimer *reds_core_timer_add(RedsState *reds,
> =20
>  }
> =20
> -void reds_core_timer_start(RedsState *reds,
> -                           SpiceTimer *timer,
> -                           uint32_t ms)
> -{
> -   g_return_if_fail(reds !=3D NULL);
> -   g_return_if_fail(reds->core.timer_start !=3D NULL);
> -
> -   return reds->core.timer_start(&reds->core, timer, ms);
> -}
> -
> -void reds_core_timer_cancel(RedsState *reds,
> -                            SpiceTimer *timer)
> -{
> -   g_return_if_fail(reds !=3D NULL);
> -   g_return_if_fail(reds->core.timer_cancel !=3D NULL);
> -
> -   return reds->core.timer_cancel(&reds->core, timer);
> -}
> -
> -void reds_core_timer_remove(RedsState *reds,
> -                            SpiceTimer *timer)
> -{
> -    if (timer =3D=3D NULL) {
> -        return;
> -    }
> -
> -    g_return_if_fail(reds !=3D NULL);
> -    g_return_if_fail(reds->core.timer_remove !=3D NULL);
> -
> -    reds->core.timer_remove(&reds->core, timer);
> -}
> -
>  void reds_update_client_mouse_allowed(RedsState *reds)
>  {
>      int allow_now =3D FALSE;
> diff --git a/server/reds.h b/server/reds.h
> index e3355f817..e2b6904ab 100644
> --- a/server/reds.h
> +++ b/server/reds.h
> @@ -115,20 +115,8 @@ SpiceWatch *reds_core_watch_add(RedsState *reds,
>                                  int fd, int event_mask,
>                                  SpiceWatchFunc func,
>                                  void *opaque);
> -void reds_core_watch_update_mask(RedsState *reds,
> -                                 SpiceWatch *watch,
> -                                 int event_mask);
> -void reds_core_watch_remove(RedsState *reds, SpiceWatch *watch);
> -
>  SpiceTimer *reds_core_timer_add(RedsState *reds,
>                                  SpiceTimerFunc func,
>                                  void *opaque);
> -void reds_core_timer_start(RedsState *reds,
> -                           SpiceTimer *timer,
> -                           uint32_t ms);
> -void reds_core_timer_cancel(RedsState *reds,
> -                            SpiceTimer *timer);
> -void reds_core_timer_remove(RedsState *reds,
> -                            SpiceTimer *timer);
> =20
>  #endif /* REDS_H_ */
> diff --git a/server/tests/basic-event-loop.c b/server/tests/basic-event-l=
oop.c
> index e331e8522..70c9a4df5 100644
> --- a/server/tests/basic-event-loop.c
> +++ b/server/tests/basic-event-loop.c
> @@ -83,48 +83,23 @@ static SpiceTimer* base_timer_add(SpiceTimerFunc func=
, void *opaque)
>      return base_core_interface.timer_add(&base_core_interface, func, opa=
que);
>  }
> =20
> -static void base_timer_start(SpiceTimer *timer, uint32_t ms)
> -{
> -    base_core_interface.timer_start(&base_core_interface, timer, ms);
> -}
> -
> -static void base_timer_cancel(SpiceTimer *timer)
> -{
> -    base_core_interface.timer_cancel(&base_core_interface, timer);
> -}
> -
> -static void base_timer_remove(SpiceTimer *timer)
> -{
> -    base_core_interface.timer_remove(&base_core_interface, timer);
> -}
> -
>  static SpiceWatch *base_watch_add(int fd, int event_mask, SpiceWatchFunc=
 func, void *opaque)
>  {
>      return base_core_interface.watch_add(&base_core_interface, fd, event=
_mask, func, opaque);
>  }
> =20
> -static void base_watch_update_mask(SpiceWatch *watch, int event_mask)
> -{
> -    base_core_interface.watch_update_mask(&base_core_interface, watch, e=
vent_mask);
> -}
> -
> -static void base_watch_remove(SpiceWatch *watch)
> -{
> -    base_core_interface.watch_remove(&base_core_interface, watch);
> -}
> -
>  static SpiceCoreInterface core =3D {
>      .base =3D {
>          .major_version =3D SPICE_INTERFACE_CORE_MAJOR,
>          .minor_version =3D SPICE_INTERFACE_CORE_MINOR,
>      },
>      .timer_add =3D base_timer_add,
> -    .timer_start =3D base_timer_start,
> -    .timer_cancel =3D base_timer_cancel,
> -    .timer_remove =3D base_timer_remove,
> +    .timer_start =3D red_timer_start,
> +    .timer_cancel =3D red_timer_cancel,
> +    .timer_remove =3D red_timer_remove,
>      .watch_add =3D base_watch_add,
> -    .watch_update_mask =3D base_watch_update_mask,
> -    .watch_remove =3D base_watch_remove,
> +    .watch_update_mask =3D red_watch_update_mask,
> +    .watch_remove =3D red_watch_remove,
>      .channel_event =3D event_loop_channel_event,
>  };
> =20
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--ixjwqw5az33mxsfk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2e/9sACgkQl9kSPeN6
SE9ypw/8Cj+yZFmccgiF3horNUCqLXx3QmypHDvLQ8MVG1GiKxg6VP9qg8jq7KCM
O1oP672bhXIJR3+IY5/3soB0rAN7t+KnxrCx1I4yt/tWqXgIWIa7qxt5f/C3b8vU
HfPEPsvmk67hZl5J1mLr+7mHPbDVjCI+0JYkt61Ck5OX8B499XfAU8x4baDNJetn
UCajEHApBiJfxYpTbmx/VT4343m45FrxsTrXYs+rQpYr5HpnmM8fKZ4Qsfqf9t59
q+G310K9W5fVhyqeDP57ySwVHAga38xumoy+l7SncPGATnL9WeRgo+6rAQNiBGHA
060shnTT9mBfkUHtf8mhzR2EmC0xUaxd48jPxSv6tNGJiYdxkD9x1NdNoTAnarlr
sDkwbp9/biFJv4V03F2wTS/B5lcn566rIjD58AqO1M76CPemfRlK5hXnhqIzEqnj
YDczVIE1+0RAA/46XaX5mP9KXr1A/nPdzjHKmPK7SQggf8Tg2e9AkIbqllnBGhBc
T7ARUnzflU03cAXMYA5SPZfpGYFuFXvf0/IiN154qgWHyEQ9csh/sv31myrb6m9G
wtMeK2PH+BPg6H4q6I6TU9xFHGeIdECgF2TVYb3Xa1dYfzRwg7Al6xh98tkAYYqC
n2Re7PyqusMe13ouRhArvQUKkBKkbTHBzyN5vFiSV8OB15dTeFE=
=T8cj
-----END PGP SIGNATURE-----

--ixjwqw5az33mxsfk--

--===============1372491113==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1372491113==--
