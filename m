Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 619A2719AB
	for <lists+spice-devel@lfdr.de>; Tue, 23 Jul 2019 15:47:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB5A56E29F;
	Tue, 23 Jul 2019 13:47:12 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA59E6E29F
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 13:47:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8C49D8F916;
 Tue, 23 Jul 2019 13:47:11 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 141DD19D7E;
 Tue, 23 Jul 2019 13:47:10 +0000 (UTC)
Date: Tue, 23 Jul 2019 15:47:10 +0200
From: Victor Toso <victortoso@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <20190723134710.i4antqietwaq6ksl@wingsuit>
References: <20190723072708.2575-1-yuri.benditovich@daynix.com>
 <20190723072708.2575-9-yuri.benditovich@daynix.com>
MIME-Version: 1.0
In-Reply-To: <20190723072708.2575-9-yuri.benditovich@daynix.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Tue, 23 Jul 2019 13:47:11 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk v2 8/9] usb-redir: move USB events
 handling to USB backend
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
Cc: yan@daynix.com, spice-devel@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============1836297215=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1836297215==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="g7rzkkkmjzendnzy"
Content-Disposition: inline


--g7rzkkkmjzendnzy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 23, 2019 at 10:27:07AM +0300, Yuri Benditovich wrote:
> Before this commit:
> usb-device-manager starts thread for handling libusb events:
> on Linux - from the beginning (as it is needed for hotplug
> callbacks), on Windows - starts it on first redirection and
> stops when there are no redirections (it can't keep the thread
> when there are no redirections as with libusb < 1.0.21 it will
> not be able to force the thread to exit if there are no events).
>=20
> Current commit moves the event thread and handling events
> completely to usb backend; usb-device-manager and other
> are not aware of libusb and should not assume what it needs
> to work. We start the event thread from the beginning on both
> Linux and Windows. On Linux it works only for hotplug callbacks,
> on Windows - just waits until device redirection starts.
> On dispose of usb-device-manager (when hotplug callbacks are
> deregistered), we interrupt the thread once to stop it.
>=20
> This removes many lines of code and also removes all the
> differences between Linux and Windows in usb-device-manager.
>=20
> Signed-off-by: Yuri Benditovich <yuri.benditovich@daynix.com>

Acked-by: Victor Toso <victortoso@redhat.com>

> ---
>  src/channel-usbredir.c        | 28 -------------
>  src/usb-backend.c             | 54 +++++++++++++++++-------
>  src/usb-backend.h             |  2 -
>  src/usb-device-manager-priv.h |  6 ---
>  src/usb-device-manager.c      | 79 -----------------------------------
>  5 files changed, 39 insertions(+), 130 deletions(-)
>=20
> diff --git a/src/channel-usbredir.c b/src/channel-usbredir.c
> index 04acf0b..8d4cd66 100644
> --- a/src/channel-usbredir.c
> +++ b/src/channel-usbredir.c
> @@ -72,7 +72,6 @@ struct _SpiceUsbredirChannelPrivate {
>      SpiceUsbAclHelper *acl_helper;
>  #endif
>      GMutex device_connect_mutex;
> -    SpiceUsbDeviceManager *usb_device_manager;
>  };
> =20
>  static void channel_set_handlers(SpiceChannelClass *klass);
> @@ -169,11 +168,6 @@ static void spice_usbredir_channel_dispose(GObject *=
obj)
>      SpiceUsbredirChannel *channel =3D SPICE_USBREDIR_CHANNEL(obj);
> =20
>      spice_usbredir_channel_disconnect_device(channel);
> -    /* This should have been set to NULL during device disconnection,
> -     * but better not to leak it if this does not happen for some reason
> -     */
> -    g_warn_if_fail(channel->priv->usb_device_manager =3D=3D NULL);
> -    g_clear_object(&channel->priv->usb_device_manager);
> =20
>      /* Chain up to the parent class */
>      if (G_OBJECT_CLASS(spice_usbredir_channel_parent_class)->dispose)
> @@ -248,8 +242,6 @@ static gboolean spice_usbredir_channel_open_device(
>      SpiceUsbredirChannel *channel, GError **err)
>  {
>      SpiceUsbredirChannelPrivate *priv =3D channel->priv;
> -    SpiceSession *session;
> -    SpiceUsbDeviceManager *manager;
> =20
>      g_return_val_if_fail(priv->state =3D=3D STATE_DISCONNECTED
>  #ifdef USE_POLKIT
> @@ -265,16 +257,6 @@ static gboolean spice_usbredir_channel_open_device(
>          return FALSE;
>      }
> =20
> -    session =3D spice_channel_get_session(SPICE_CHANNEL(channel));
> -    manager =3D spice_usb_device_manager_get(session, NULL);
> -    g_return_val_if_fail(manager !=3D NULL, FALSE);
> -
> -    priv->usb_device_manager =3D g_object_ref(manager);
> -    if (!spice_usb_device_manager_start_event_listening(priv->usb_device=
_manager, err)) {
> -        spice_usb_backend_channel_detach(priv->host);
> -        return FALSE;
> -    }
> -
>      priv->state =3D STATE_CONNECTED;
> =20
>      return TRUE;
> @@ -445,16 +427,6 @@ void spice_usbredir_channel_disconnect_device(SpiceU=
sbredirChannel *channel)
>          break;
>  #endif
>      case STATE_CONNECTED:
> -        /*
> -         * This sets the usb event thread run condition to FALSE, theref=
or
> -         * it must be done before usbredirhost_set_device NULL, as
> -         * usbredirhost_set_device NULL will interrupt the
> -         * libusb_handle_events call in the thread.
> -         */
> -        g_warn_if_fail(priv->usb_device_manager !=3D NULL);
> -        spice_usb_device_manager_stop_event_listening(priv->usb_device_m=
anager);
> -        g_clear_object(&priv->usb_device_manager);
> -
>          /* This also closes the libusb handle we passed from open_device=
 */
>          spice_usb_backend_channel_detach(priv->host);
>          g_clear_pointer(&priv->device, spice_usb_backend_device_unref);
> diff --git a/src/usb-backend.c b/src/usb-backend.c
> index 486875e..bbd3b67 100644
> --- a/src/usb-backend.c
> +++ b/src/usb-backend.c
> @@ -58,6 +58,9 @@ struct _SpiceUsbBackend
>      usb_hot_plug_callback hotplug_callback;
>      void *hotplug_user_data;
>      libusb_hotplug_callback_handle hotplug_handle;
> +    GThread *event_thread;
> +    gint event_thread_run;
> +
>  #ifdef G_OS_WIN32
>      HANDLE hWnd;
>      libusb_device **libusb_device_list;
> @@ -406,28 +409,25 @@ SpiceUsbBackend *spice_usb_backend_new(GError **err=
or)
>      return be;
>  }
> =20
> -gboolean spice_usb_backend_handle_events(SpiceUsbBackend *be)
> +static gpointer handle_libusb_events(gpointer user_data)
>  {
> +    SpiceUsbBackend *be =3D user_data;
>      SPICE_DEBUG("%s >>", __FUNCTION__);
> -    gboolean ok =3D FALSE;
> -    if (be->libusb_context) {
> -        int res =3D libusb_handle_events(be->libusb_context);
> -        ok =3D res =3D=3D 0;
> +    int res =3D 0;
> +    const char *desc =3D "";
> +    while (g_atomic_int_get(&be->event_thread_run)) {
> +        res =3D libusb_handle_events(be->libusb_context);
>          if (res && res !=3D LIBUSB_ERROR_INTERRUPTED) {
> -            const char *desc =3D libusb_strerror(res);
> +            desc =3D libusb_strerror(res);
>              g_warning("Error handling USB events: %s [%i]", desc, res);
> -            ok =3D FALSE;
> +            break;
>          }
>      }
> -    SPICE_DEBUG("%s << %d", __FUNCTION__, ok);
> -    return ok;
> -}
> -
> -void spice_usb_backend_interrupt_event_handler(SpiceUsbBackend *be)
> -{
> -    if (be->libusb_context) {
> -        libusb_interrupt_event_handler(be->libusb_context);
> +    if (be->event_thread_run) {
> +        SPICE_DEBUG("%s: the thread aborted, %s(%d)", __FUNCTION__, desc=
, res);
>      }
> +    SPICE_DEBUG("%s <<", __FUNCTION__);
> +    return NULL;
>  }
> =20
>  void spice_usb_backend_deregister_hotplug(SpiceUsbBackend *be)
> @@ -438,6 +438,12 @@ void spice_usb_backend_deregister_hotplug(SpiceUsbBa=
ckend *be)
>          be->hotplug_handle =3D 0;
>      }
>      be->hotplug_callback =3D NULL;
> +    g_atomic_int_set(&be->event_thread_run, FALSE);
> +    if (be->event_thread) {
> +        libusb_interrupt_event_handler(be->libusb_context);
> +        g_thread_join(be->event_thread);
> +        be->event_thread =3D NULL;
> +    }
>  }
> =20
>  gboolean spice_usb_backend_register_hotplug(SpiceUsbBackend *be,
> @@ -461,6 +467,16 @@ gboolean spice_usb_backend_register_hotplug(SpiceUsb=
Backend *be,
>                      "Error on USB hotplug detection: %s [%i]", desc, rc);
>          return FALSE;
>      }
> +
> +    g_atomic_int_set(&be->event_thread_run, TRUE);
> +    be->event_thread =3D g_thread_new("usb_ev_thread",
> +                                    handle_libusb_events,
> +                                    be);
> +    if (!be->event_thread) {
> +        g_warning("Error starting event thread");
> +        spice_usb_backend_deregister_hotplug(be);
> +        return FALSE;
> +    }
>      return TRUE;
>  }
> =20
> @@ -468,6 +484,14 @@ void spice_usb_backend_delete(SpiceUsbBackend *be)
>  {
>      g_return_if_fail(be !=3D NULL);
>      SPICE_DEBUG("%s >>", __FUNCTION__);
> +    /*
> +        we expect hotplug callbacks are deregistered
> +        and the event thread is terminated. If not,
> +        we do that anyway before delete the backend
> +    */
> +    g_warn_if_fail(be->hotplug_handle =3D=3D 0);
> +    g_warn_if_fail(be->event_thread =3D=3D NULL);
> +    spice_usb_backend_deregister_hotplug(be);
>      if (be->libusb_context) {
>          libusb_exit(be->libusb_context);
>      }
> diff --git a/src/usb-backend.h b/src/usb-backend.h
> index 814da46..69a490b 100644
> --- a/src/usb-backend.h
> +++ b/src/usb-backend.h
> @@ -56,8 +56,6 @@ enum {
>  SpiceUsbBackend *spice_usb_backend_new(GError **error);
>  void spice_usb_backend_delete(SpiceUsbBackend *context);
> =20
> -gboolean spice_usb_backend_handle_events(SpiceUsbBackend *be);
> -void spice_usb_backend_interrupt_event_handler(SpiceUsbBackend *be);
>  gboolean spice_usb_backend_register_hotplug(SpiceUsbBackend *be,
>                                              void *user_data,
>                                              usb_hot_plug_callback proc,
> diff --git a/src/usb-device-manager-priv.h b/src/usb-device-manager-priv.h
> index 39aaf2f..66acf6d 100644
> --- a/src/usb-device-manager-priv.h
> +++ b/src/usb-device-manager-priv.h
> @@ -25,12 +25,6 @@
> =20
>  G_BEGIN_DECLS
> =20
> -gboolean spice_usb_device_manager_start_event_listening(
> -    SpiceUsbDeviceManager *manager, GError **err);
> -
> -void spice_usb_device_manager_stop_event_listening(
> -    SpiceUsbDeviceManager *manager);
> -
>  #ifdef USE_USBREDIR
>  void spice_usb_device_manager_device_error(
>      SpiceUsbDeviceManager *manager, SpiceUsbDevice *device, GError *err);
> diff --git a/src/usb-device-manager.c b/src/usb-device-manager.c
> index 857d057..a530be9 100644
> --- a/src/usb-device-manager.c
> +++ b/src/usb-device-manager.c
> @@ -93,9 +93,6 @@ struct _SpiceUsbDeviceManagerPrivate {
>      gchar *redirect_on_connect;
>  #ifdef USE_USBREDIR
>      SpiceUsbBackend *context;
> -    int event_listeners;
> -    GThread *event_thread;
> -    gint event_thread_run;
>      struct usbredirfilter_rule *auto_conn_filter_rules;
>      struct usbredirfilter_rule *redirect_on_connect_rules;
>      int auto_conn_filter_rules_count;
> @@ -261,9 +258,6 @@ static gboolean spice_usb_device_manager_initable_ini=
t(GInitable  *initable,
>                                              err)) {
>          return FALSE;
>      }
> -#ifndef G_OS_WIN32
> -    spice_usb_device_manager_start_event_listening(self, NULL);
> -#endif
> =20
>      /* Start listening for usb channels connect/disconnect */
>      spice_g_signal_connect_object(priv->session, "channel-new", G_CALLBA=
CK(channel_new), self, G_CONNECT_AFTER);
> @@ -285,27 +279,8 @@ static void spice_usb_device_manager_dispose(GObject=
 *gobject)
>      SpiceUsbDeviceManager *self =3D SPICE_USB_DEVICE_MANAGER(gobject);
>      SpiceUsbDeviceManagerPrivate *priv =3D self->priv;
> =20
> -#ifndef G_OS_WIN32
> -    spice_usb_device_manager_stop_event_listening(self);
> -    if (g_atomic_int_get(&priv->event_thread_run)) {
> -        /* Force termination of the event thread even if there were some
> -         * mismatched spice_usb_device_manager_{start,stop}_event_listen=
ing
> -         * calls. Otherwise, the usb event thread will be leaked, and wi=
ll
> -         * try to use the libusb context we destroy in finalize(), which=
 would
> -         * cause a crash */
> -        g_warn_if_reached();
> -        g_atomic_int_set(&priv->event_thread_run, FALSE);
> -    }
> -#endif
>      spice_usb_backend_deregister_hotplug(priv->context);
> =20
> -    if (priv->event_thread) {
> -        g_warn_if_fail(g_atomic_int_get(&priv->event_thread_run) =3D=3D =
FALSE);
> -        g_atomic_int_set(&priv->event_thread_run, FALSE);
> -        spice_usb_backend_interrupt_event_handler(priv->context);
> -        g_thread_join(priv->event_thread);
> -        priv->event_thread =3D NULL;
> -    }
>  #endif
> =20
>      /* Chain up to the parent class */
> @@ -323,7 +298,6 @@ static void spice_usb_device_manager_finalize(GObject=
 *gobject)
>      if (priv->devices) {
>          g_ptr_array_unref(priv->devices);
>      }
> -    g_return_if_fail(priv->event_thread =3D=3D NULL);
>      if (priv->context) {
>          spice_usb_backend_delete(priv->context);
>      }
> @@ -915,59 +889,6 @@ static void spice_usb_device_manager_channel_connect=
_cb(
>  /* ------------------------------------------------------------------ */
>  /* private api                                                        */
> =20
> -static gpointer spice_usb_device_manager_usb_ev_thread(gpointer user_dat=
a)
> -{
> -    SpiceUsbDeviceManager *self =3D SPICE_USB_DEVICE_MANAGER(user_data);
> -    SpiceUsbDeviceManagerPrivate *priv =3D self->priv;
> -
> -    while (g_atomic_int_get(&priv->event_thread_run)) {
> -        if (!spice_usb_backend_handle_events(priv->context)) {
> -            break;
> -        }
> -    }
> -
> -    return NULL;
> -}
> -
> -gboolean spice_usb_device_manager_start_event_listening(
> -    SpiceUsbDeviceManager *self, GError **err)
> -{
> -    SpiceUsbDeviceManagerPrivate *priv =3D self->priv;
> -
> -    g_return_val_if_fail(err =3D=3D NULL || *err =3D=3D NULL, FALSE);
> -
> -    priv->event_listeners++;
> -    if (priv->event_listeners > 1)
> -        return TRUE;
> -
> -    /* We don't join the thread when we stop event listening, as the
> -       libusb_handle_events call in the thread won't exit until the
> -       libusb_close call for the device is made from usbredirhost_close.=
 */
> -    if (priv->event_thread) {
> -        g_atomic_int_set(&priv->event_thread_run, FALSE);
> -        spice_usb_backend_interrupt_event_handler(priv->context);
> -         g_thread_join(priv->event_thread);
> -         priv->event_thread =3D NULL;
> -    }
> -    g_atomic_int_set(&priv->event_thread_run, TRUE);
> -    priv->event_thread =3D g_thread_new("usb_ev_thread",
> -                                      spice_usb_device_manager_usb_ev_th=
read,
> -                                      self);
> -    return priv->event_thread !=3D NULL;
> -}
> -
> -void spice_usb_device_manager_stop_event_listening(
> -    SpiceUsbDeviceManager *self)
> -{
> -    SpiceUsbDeviceManagerPrivate *priv =3D self->priv;
> -
> -    g_return_if_fail(priv->event_listeners > 0);
> -
> -    priv->event_listeners--;
> -    if (priv->event_listeners =3D=3D 0)
> -        g_atomic_int_set(&priv->event_thread_run, FALSE);
> -}
> -
>  static void spice_usb_device_manager_check_redir_on_connect(
>      SpiceUsbDeviceManager *self, SpiceChannel *channel)
>  {
> --=20
> 2.17.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--g7rzkkkmjzendnzy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl03D94ACgkQl9kSPeN6
SE9E6A//fQTHVXe0qqJr5DcwiadwGUS9c2Kr6oddBy5lHErVziDTAFy59eZNIJWc
s+k4uRmFUt6riPJ5g71Ua7gOXAIliwUuwbkY0xs1+pOSsTIVq88UxJTJ63PpSGYw
SLkzsvtBJSil9X0lTk/vGWtPl4ET6JQnXUkbw0QAXimkbCFw4N9mPIlkySIW3lZf
80PmvoA5qJIFWXU6aPbvD+Z47mfdoGwyENNhbAhzrg6a1rxas2hlmi0a9p02ioPc
s/jcVEFYPAP5gep7LXZWgf7aavqQgMw16EMUifLFi9a4DuMlXnL3rivRMRIeFade
79ebriz6LAjzRwnENfZQQx0En/z+jA4Y1nUKOIiMSdMMIYCeeEOV52sZ24/C6oAX
fEqIdLdb0Ra9FLxmJq7jZUSos/IMu8KAsDtguY3LM21x3xokkXTzNBiqGFIWQ5zY
Gi/AQrKgZQ8GP2LN0h8QGUMegpjkLVJEa0W9VfdxIUJQLzMs7zgF3haXW1csmxVs
UNvmGjfSzCl6nM5KILxnIiNw9dlW+RwG/7LQiXQMyhwTBl3tQjYxrL/SMFLv6DDK
UWW/Db52MUHJ62PRJ29acsh1jr0C4cH/qQdOGLeQ/5Tvv/ZYa8q6Cp9F5LhZ2+X9
aTZfPnVMm3G/N/8EDHUYUTTLcrEvl63gt9kZOGlx/Mfs4OIY4gE=
=YfAv
-----END PGP SIGNATURE-----

--g7rzkkkmjzendnzy--

--===============1836297215==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1836297215==--
