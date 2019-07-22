Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3905702E5
	for <lists+spice-devel@lfdr.de>; Mon, 22 Jul 2019 17:00:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E070789BF4;
	Mon, 22 Jul 2019 15:00:29 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EA8589BF4
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Jul 2019 15:00:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 03ECA83F42;
 Mon, 22 Jul 2019 15:00:28 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7B9BA19D7C;
 Mon, 22 Jul 2019 15:00:27 +0000 (UTC)
Date: Mon, 22 Jul 2019 17:00:26 +0200
From: Victor Toso <victortoso@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <20190722150026.ptsqn6ubuljmlxcq@wingsuit>
References: <20190714140741.3274-1-yuri.benditovich@daynix.com>
 <20190714140741.3274-6-yuri.benditovich@daynix.com>
 <CAOEp5Oeb6BDHYx7J+QrjxnidtMHbq4R=X6oPM-E_Bs9P5QWgzg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAOEp5Oeb6BDHYx7J+QrjxnidtMHbq4R=X6oPM-E_Bs9P5QWgzg@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Mon, 22 Jul 2019 15:00:28 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk 5/5] usb-redir: move USB events
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
Cc: Yan Vugenfirer <yan@daynix.com>,
 Spice List <spice-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============1013018223=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1013018223==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="t6uf3efboezmca2d"
Content-Disposition: inline


--t6uf3efboezmca2d
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Mon, Jul 22, 2019 at 04:34:48PM +0300, Yuri Benditovich wrote:
> Ping

Sorry, missed it.

Patch seems fine and again, code is getting nicer thanks to
usb-backend.[ch]. Thanks. Only cosmetic changes for v2.

> On Sun, Jul 14, 2019 at 5:07 PM Yuri Benditovich
> <yuri.benditovich@daynix.com> wrote:
> >
> > Before this commit:
> > usb-device-manager starts thread for handling libusb events.
> >   On Linux - from the beginning (as it is needed for hotplug
> >   callbacks)
> >   On Windows - starts it on first redirection and stops when
> >   there are no redirections (it can't keep the thread when
> >   there are no redirections as with libusb < 1.0.21 it will
> >   not be able to force the thread to exit as there are no events)
> > Current commit moves the event thread and handling events
> >   completely to usb backend; usb-device-manager and other
> >   are not aware of libusb and should not assume what it
> >   needs to work. We start the event thread from the beginning
> >   on both Linux and Windows and on Linux it works only for
> >   hotplug callbacks, on Windows - just waits until device
> >   redirection starts. On dispose of usb-device-manager
> >   (when hotplug callbacks are deregistered), we interrupt
> >   the thread once to stop it.
> > This removes many lines of code and also removes all the
> > differences between Linux and Windows in usb-device-manager.

Log is fine, I'd remove the indentation space and add empty line
before 'Current commit', not important.

> > Signed-off-by: Yuri Benditovich <yuri.benditovich@daynix.com>
> > ---
> >  src/channel-usbredir.c        | 28 -------------
> >  src/usb-backend.c             | 48 ++++++++++++++-------
> >  src/usb-backend.h             |  2 -
> >  src/usb-device-manager-priv.h |  6 ---
> >  src/usb-device-manager.c      | 79 -----------------------------------
> >  5 files changed, 33 insertions(+), 130 deletions(-)
> >
> > diff --git a/src/channel-usbredir.c b/src/channel-usbredir.c
> > index 04acf0b..8d4cd66 100644
> > --- a/src/channel-usbredir.c
> > +++ b/src/channel-usbredir.c
> > @@ -72,7 +72,6 @@ struct _SpiceUsbredirChannelPrivate {
> >      SpiceUsbAclHelper *acl_helper;
> >  #endif
> >      GMutex device_connect_mutex;
> > -    SpiceUsbDeviceManager *usb_device_manager;
> >  };
> >
> >  static void channel_set_handlers(SpiceChannelClass *klass);
> > @@ -169,11 +168,6 @@ static void spice_usbredir_channel_dispose(GObject *obj)
> >      SpiceUsbredirChannel *channel = SPICE_USBREDIR_CHANNEL(obj);
> >
> >      spice_usbredir_channel_disconnect_device(channel);
> > -    /* This should have been set to NULL during device disconnection,
> > -     * but better not to leak it if this does not happen for some reason
> > -     */
> > -    g_warn_if_fail(channel->priv->usb_device_manager == NULL);
> > -    g_clear_object(&channel->priv->usb_device_manager);
> >
> >      /* Chain up to the parent class */
> >      if (G_OBJECT_CLASS(spice_usbredir_channel_parent_class)->dispose)
> > @@ -248,8 +242,6 @@ static gboolean spice_usbredir_channel_open_device(
> >      SpiceUsbredirChannel *channel, GError **err)
> >  {
> >      SpiceUsbredirChannelPrivate *priv = channel->priv;
> > -    SpiceSession *session;
> > -    SpiceUsbDeviceManager *manager;
> >
> >      g_return_val_if_fail(priv->state == STATE_DISCONNECTED
> >  #ifdef USE_POLKIT
> > @@ -265,16 +257,6 @@ static gboolean spice_usbredir_channel_open_device(
> >          return FALSE;
> >      }
> >
> > -    session = spice_channel_get_session(SPICE_CHANNEL(channel));
> > -    manager = spice_usb_device_manager_get(session, NULL);
> > -    g_return_val_if_fail(manager != NULL, FALSE);
> > -
> > -    priv->usb_device_manager = g_object_ref(manager);
> > -    if (!spice_usb_device_manager_start_event_listening(priv->usb_device_manager, err)) {
> > -        spice_usb_backend_channel_detach(priv->host);
> > -        return FALSE;
> > -    }
> > -
> >      priv->state = STATE_CONNECTED;
> >
> >      return TRUE;
> > @@ -445,16 +427,6 @@ void spice_usbredir_channel_disconnect_device(SpiceUsbredirChannel *channel)
> >          break;
> >  #endif
> >      case STATE_CONNECTED:
> > -        /*
> > -         * This sets the usb event thread run condition to FALSE, therefor
> > -         * it must be done before usbredirhost_set_device NULL, as
> > -         * usbredirhost_set_device NULL will interrupt the
> > -         * libusb_handle_events call in the thread.
> > -         */
> > -        g_warn_if_fail(priv->usb_device_manager != NULL);
> > -        spice_usb_device_manager_stop_event_listening(priv->usb_device_manager);
> > -        g_clear_object(&priv->usb_device_manager);
> > -
> >          /* This also closes the libusb handle we passed from open_device */
> >          spice_usb_backend_channel_detach(priv->host);
> >          g_clear_pointer(&priv->device, spice_usb_backend_device_unref);
> > diff --git a/src/usb-backend.c b/src/usb-backend.c
> > index 829d81d..37db951 100644
> > --- a/src/usb-backend.c
> > +++ b/src/usb-backend.c
> > @@ -58,6 +58,9 @@ struct _SpiceUsbBackend
> >      usb_hot_plug_callback hotplug_callback;
> >      void *hotplug_user_data;
> >      libusb_hotplug_callback_handle hotplug_handle;
> > +    GThread *event_thread;
> > +    gint event_thread_run;
> > +
> >  #ifdef G_OS_WIN32
> >      HANDLE hWnd;
> >      libusb_device **libusb_device_list;
> > @@ -406,28 +409,25 @@ SpiceUsbBackend *spice_usb_backend_new(GError **error)
> >      return be;
> >  }
> >
> > -gboolean spice_usb_backend_handle_events(SpiceUsbBackend *be)
> > +static gpointer handle_libusb_events(gpointer user_data)
> >  {
> > +    SpiceUsbBackend *be = (SpiceUsbBackend *)user_data;

I don't think you need to cast from gpointer.

> >      SPICE_DEBUG("%s >>", __FUNCTION__);
> > -    gboolean ok = FALSE;
> > -    if (be->libusb_context) {
> > -        int res = libusb_handle_events(be->libusb_context);
> > -        ok = res == 0;
> > +    int res = 0;
> > +    const char *desc = "";
> > +    while (g_atomic_int_get(&be->event_thread_run)) {
> > +        res = libusb_handle_events(be->libusb_context);
> >          if (res && res != LIBUSB_ERROR_INTERRUPTED) {
> > -            const char *desc = libusb_strerror(res);
> > +            desc = libusb_strerror(res);
> >              g_warning("Error handling USB events: %s [%i]", desc, res);
> > -            ok = FALSE;
> > +            break;
> >          }
> >      }
> > -    SPICE_DEBUG("%s << %d", __FUNCTION__, ok);
> > -    return ok;
> > -}
> > -
> > -void spice_usb_backend_interrupt_event_handler(SpiceUsbBackend *be)
> > -{
> > -    if (be->libusb_context) {
> > -        libusb_interrupt_event_handler(be->libusb_context);
> > +    if (be->event_thread_run) {
> > +        SPICE_DEBUG("%s: the thread aborted, %s(%d)", __FUNCTION__, desc, res);
> >      }
> > +    SPICE_DEBUG("%s <<", __FUNCTION__);
> > +    return NULL;
> >  }
> >
> >  void spice_usb_backend_deregister_hotplug(SpiceUsbBackend *be)
> > @@ -438,6 +438,12 @@ void spice_usb_backend_deregister_hotplug(SpiceUsbBackend *be)
> >          be->hotplug_handle = 0;
> >      }
> >      be->hotplug_callback = NULL;
> > +    g_atomic_int_set(&be->event_thread_run, FALSE);
> > +    if (be->event_thread) {
> > +        libusb_interrupt_event_handler(be->libusb_context);
> > +        g_thread_join(be->event_thread);
> > +        be->event_thread = NULL;
> > +    }
> >  }
> >
> >  gboolean spice_usb_backend_register_hotplug(SpiceUsbBackend *be,
> > @@ -461,6 +467,16 @@ gboolean spice_usb_backend_register_hotplug(SpiceUsbBackend *be,
> >             "Error on USB hotplug detection: %s [%i]", desc, rc);
> >          return FALSE;
> >      }
> > +
> > +    g_atomic_int_set(&be->event_thread_run, TRUE);
> > +    be->event_thread = g_thread_try_new("usb_ev_thread",
> > +                                    handle_libusb_events,
> > +                                    be, error);

It was g_thread_new() before, this changed it, why do you think
it is important? I'd do that in a separate patch with a proper
rationale for it.

> > +    if (!be->event_thread) {
> > +        g_warning("Error starting event thread");
> > +        spice_usb_backend_deregister_hotplug(be);
> > +        return FALSE;
> > +    }
> >      return TRUE;
> >  }
> >
> > @@ -468,6 +484,8 @@ void spice_usb_backend_delete(SpiceUsbBackend *be)
> >  {
> >      g_return_if_fail(be != NULL);
> >      SPICE_DEBUG("%s >>", __FUNCTION__);
> > +    /* just to be on the safe side if not deregistered */
> > +    spice_usb_backend_deregister_hotplug(be);

Not sure if I follow the comment, should a warn be added in case
spice_usb_backend_delete() is called in some unexpected situation?

Cheers,
Victor

> >      if (be->libusb_context) {
> >          libusb_exit(be->libusb_context);
> >      }
> > diff --git a/src/usb-backend.h b/src/usb-backend.h
> > index 814da46..69a490b 100644
> > --- a/src/usb-backend.h
> > +++ b/src/usb-backend.h
> > @@ -56,8 +56,6 @@ enum {
> >  SpiceUsbBackend *spice_usb_backend_new(GError **error);
> >  void spice_usb_backend_delete(SpiceUsbBackend *context);
> >
> > -gboolean spice_usb_backend_handle_events(SpiceUsbBackend *be);
> > -void spice_usb_backend_interrupt_event_handler(SpiceUsbBackend *be);
> >  gboolean spice_usb_backend_register_hotplug(SpiceUsbBackend *be,
> >                                              void *user_data,
> >                                              usb_hot_plug_callback proc,
> > diff --git a/src/usb-device-manager-priv.h b/src/usb-device-manager-priv.h
> > index 39aaf2f..66acf6d 100644
> > --- a/src/usb-device-manager-priv.h
> > +++ b/src/usb-device-manager-priv.h
> > @@ -25,12 +25,6 @@
> >
> >  G_BEGIN_DECLS
> >
> > -gboolean spice_usb_device_manager_start_event_listening(
> > -    SpiceUsbDeviceManager *manager, GError **err);
> > -
> > -void spice_usb_device_manager_stop_event_listening(
> > -    SpiceUsbDeviceManager *manager);
> > -
> >  #ifdef USE_USBREDIR
> >  void spice_usb_device_manager_device_error(
> >      SpiceUsbDeviceManager *manager, SpiceUsbDevice *device, GError *err);
> > diff --git a/src/usb-device-manager.c b/src/usb-device-manager.c
> > index 7105ff1..25fac04 100644
> > --- a/src/usb-device-manager.c
> > +++ b/src/usb-device-manager.c
> > @@ -93,9 +93,6 @@ struct _SpiceUsbDeviceManagerPrivate {
> >      gchar *redirect_on_connect;
> >  #ifdef USE_USBREDIR
> >      SpiceUsbBackend *context;
> > -    int event_listeners;
> > -    GThread *event_thread;
> > -    gint event_thread_run;
> >      struct usbredirfilter_rule *auto_conn_filter_rules;
> >      struct usbredirfilter_rule *redirect_on_connect_rules;
> >      int auto_conn_filter_rules_count;
> > @@ -262,9 +259,6 @@ static gboolean spice_usb_device_manager_initable_init(GInitable  *initable,
> >          spice_usb_backend_delete(priv->context);
> >          return FALSE;
> >      }
> > -#ifndef G_OS_WIN32
> > -    spice_usb_device_manager_start_event_listening(self, NULL);
> > -#endif
> >
> >      /* Start listening for usb channels connect/disconnect */
> >      spice_g_signal_connect_object(priv->session, "channel-new", G_CALLBACK(channel_new), self, G_CONNECT_AFTER);
> > @@ -286,27 +280,8 @@ static void spice_usb_device_manager_dispose(GObject *gobject)
> >      SpiceUsbDeviceManager *self = SPICE_USB_DEVICE_MANAGER(gobject);
> >      SpiceUsbDeviceManagerPrivate *priv = self->priv;
> >
> > -#ifndef G_OS_WIN32
> > -    spice_usb_device_manager_stop_event_listening(self);
> > -    if (g_atomic_int_get(&priv->event_thread_run)) {
> > -        /* Force termination of the event thread even if there were some
> > -         * mismatched spice_usb_device_manager_{start,stop}_event_listening
> > -         * calls. Otherwise, the usb event thread will be leaked, and will
> > -         * try to use the libusb context we destroy in finalize(), which would
> > -         * cause a crash */
> > -        g_warn_if_reached();
> > -        g_atomic_int_set(&priv->event_thread_run, FALSE);
> > -    }
> > -#endif
> >      spice_usb_backend_deregister_hotplug(priv->context);
> >
> > -    if (priv->event_thread) {
> > -        g_warn_if_fail(g_atomic_int_get(&priv->event_thread_run) == FALSE);
> > -        g_atomic_int_set(&priv->event_thread_run, FALSE);
> > -        spice_usb_backend_interrupt_event_handler(priv->context);
> > -        g_thread_join(priv->event_thread);
> > -        priv->event_thread = NULL;
> > -    }
> >  #endif
> >
> >      /* Chain up to the parent class */
> > @@ -324,7 +299,6 @@ static void spice_usb_device_manager_finalize(GObject *gobject)
> >      if (priv->devices) {
> >          g_ptr_array_unref(priv->devices);
> >      }
> > -    g_return_if_fail(priv->event_thread == NULL);
> >      if (priv->context) {
> >          spice_usb_backend_delete(priv->context);
> >      }
> > @@ -916,59 +890,6 @@ static void spice_usb_device_manager_channel_connect_cb(
> >  /* ------------------------------------------------------------------ */
> >  /* private api                                                        */
> >
> > -static gpointer spice_usb_device_manager_usb_ev_thread(gpointer user_data)
> > -{
> > -    SpiceUsbDeviceManager *self = SPICE_USB_DEVICE_MANAGER(user_data);
> > -    SpiceUsbDeviceManagerPrivate *priv = self->priv;
> > -
> > -    while (g_atomic_int_get(&priv->event_thread_run)) {
> > -        if (!spice_usb_backend_handle_events(priv->context)) {
> > -            break;
> > -        }
> > -    }
> > -
> > -    return NULL;
> > -}
> > -
> > -gboolean spice_usb_device_manager_start_event_listening(
> > -    SpiceUsbDeviceManager *self, GError **err)
> > -{
> > -    SpiceUsbDeviceManagerPrivate *priv = self->priv;
> > -
> > -    g_return_val_if_fail(err == NULL || *err == NULL, FALSE);
> > -
> > -    priv->event_listeners++;
> > -    if (priv->event_listeners > 1)
> > -        return TRUE;
> > -
> > -    /* We don't join the thread when we stop event listening, as the
> > -       libusb_handle_events call in the thread won't exit until the
> > -       libusb_close call for the device is made from usbredirhost_close. */
> > -    if (priv->event_thread) {
> > -        g_atomic_int_set(&priv->event_thread_run, FALSE);
> > -        spice_usb_backend_interrupt_event_handler(priv->context);
> > -         g_thread_join(priv->event_thread);
> > -         priv->event_thread = NULL;
> > -    }
> > -    g_atomic_int_set(&priv->event_thread_run, TRUE);
> > -    priv->event_thread = g_thread_new("usb_ev_thread",
> > -                                      spice_usb_device_manager_usb_ev_thread,
> > -                                      self);
> > -    return priv->event_thread != NULL;
> > -}
> > -
> > -void spice_usb_device_manager_stop_event_listening(
> > -    SpiceUsbDeviceManager *self)
> > -{
> > -    SpiceUsbDeviceManagerPrivate *priv = self->priv;
> > -
> > -    g_return_if_fail(priv->event_listeners > 0);
> > -
> > -    priv->event_listeners--;
> > -    if (priv->event_listeners == 0)
> > -        g_atomic_int_set(&priv->event_thread_run, FALSE);
> > -}
> > -
> >  static void spice_usb_device_manager_check_redir_on_connect(
> >      SpiceUsbDeviceManager *self, SpiceChannel *channel)
> >  {
> > --
> > 2.17.1
> >
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--t6uf3efboezmca2d
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl01z4oACgkQl9kSPeN6
SE/NJg//Rnwj/7Srms0JDDkAGfAJT/2L8TNALQaveMk/+4Gg8uqgYLk1aOB/ogpq
4gDiRIIXdM8EoxJ8zonjYAiuy4LdCyp9UL35mLwHL7P1HErOW2Tx1mzqywYyWpg5
xPpKvaoeijy/qoC4a2lv3xA05EQlV8B1avDi4udWR2kQ+dQEbV3/U2meq5//vjGR
Zyp5nVcDv4OHT/CHr1i9Q6lfU8eP+liE37iVqtxPgPTXwesK8+0v/6ZoLmMEPc8Q
GwIOA0ijLQOfzavNVdqkzPK5oQUvQl9kbf6Y0PjFAwWryHeEoRC+tIRRoh8tjV3N
yfYxToWqlU7hETdFp6hpC5mrV3tc47F+zKsfN1eVwedY3HSlbvJt4PxSQMOEVCdh
85X3siNnBOIP+viBSh2a44yoYIiaYVI3hsNKHJ2/ADfJHTuDjIgAozqG/820cef5
BCkSDbI1RGwpJtMjnmWW65AhmhHwqM7iuOeTfWvcLXXHQNkUK7FjQVmQnLW92eYg
xzbNxv6WNyRzRK6qTX7mPWWm6mzYDx/CJbE7nJ8wjbFCgbVKNSZg/UYTzWlEle0z
8D+hVw7QVKef+WzGDlrw5GuQMguq2/1Evmib94evly/2vtRaTC0mPK9OtpBJXxcr
ldOxnNOr8MEFzOk0aXwBWAHOxZgwkNxAT/u2qYs9/ioAzEBICaE=
=Th/t
-----END PGP SIGNATURE-----

--t6uf3efboezmca2d--

--===============1013018223==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1013018223==--
