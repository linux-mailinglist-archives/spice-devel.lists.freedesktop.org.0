Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A12A711CF
	for <lists+spice-devel@lfdr.de>; Tue, 23 Jul 2019 08:24:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B5FB89DC7;
	Tue, 23 Jul 2019 06:24:40 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B59989DC7
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 06:24:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B5FE64E919;
 Tue, 23 Jul 2019 06:24:38 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 348DD5C230;
 Tue, 23 Jul 2019 06:24:38 +0000 (UTC)
Date: Tue, 23 Jul 2019 08:24:37 +0200
From: Victor Toso <victortoso@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <20190723062437.wm2jhdna5vpmbfpr@wingsuit>
References: <20190714140741.3274-1-yuri.benditovich@daynix.com>
 <20190714140741.3274-6-yuri.benditovich@daynix.com>
 <CAOEp5Oeb6BDHYx7J+QrjxnidtMHbq4R=X6oPM-E_Bs9P5QWgzg@mail.gmail.com>
 <20190722150026.ptsqn6ubuljmlxcq@wingsuit>
 <CAOEp5OduGLYmT4uqhgsjPgf+P+cJgHkTrGb+ybt+dYvXGn43sA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAOEp5OduGLYmT4uqhgsjPgf+P+cJgHkTrGb+ybt+dYvXGn43sA@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Tue, 23 Jul 2019 06:24:38 +0000 (UTC)
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
Content-Type: multipart/mixed; boundary="===============0176606477=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0176606477==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tu2eggoiovwfagfs"
Content-Disposition: inline


--tu2eggoiovwfagfs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jul 22, 2019 at 06:31:24PM +0300, Yuri Benditovich wrote:
> On Mon, Jul 22, 2019 at 6:00 PM Victor Toso <victortoso@redhat.com> wrote:
> >
> > Hi,
> >
> > On Mon, Jul 22, 2019 at 04:34:48PM +0300, Yuri Benditovich wrote:
> > > Ping
> >
> > Sorry, missed it.
> >
> > Patch seems fine and again, code is getting nicer thanks to
> > usb-backend.[ch]. Thanks. Only cosmetic changes for v2.
> >
> > > On Sun, Jul 14, 2019 at 5:07 PM Yuri Benditovich
> > > <yuri.benditovich@daynix.com> wrote:
> > > >
> > > > Before this commit:
> > > > usb-device-manager starts thread for handling libusb events.
> > > >   On Linux - from the beginning (as it is needed for hotplug
> > > >   callbacks)
> > > >   On Windows - starts it on first redirection and stops when
> > > >   there are no redirections (it can't keep the thread when
> > > >   there are no redirections as with libusb < 1.0.21 it will
> > > >   not be able to force the thread to exit as there are no events)
> > > > Current commit moves the event thread and handling events
> > > >   completely to usb backend; usb-device-manager and other
> > > >   are not aware of libusb and should not assume what it
> > > >   needs to work. We start the event thread from the beginning
> > > >   on both Linux and Windows and on Linux it works only for
> > > >   hotplug callbacks, on Windows - just waits until device
> > > >   redirection starts. On dispose of usb-device-manager
> > > >   (when hotplug callbacks are deregistered), we interrupt
> > > >   the thread once to stop it.
> > > > This removes many lines of code and also removes all the
> > > > differences between Linux and Windows in usb-device-manager.
> >
> > Log is fine, I'd remove the indentation space and add empty line
> > before 'Current commit', not important.
> >
> > > > Signed-off-by: Yuri Benditovich <yuri.benditovich@daynix.com>
> > > > ---
> > > >  src/channel-usbredir.c        | 28 -------------
> > > >  src/usb-backend.c             | 48 ++++++++++++++-------
> > > >  src/usb-backend.h             |  2 -
> > > >  src/usb-device-manager-priv.h |  6 ---
> > > >  src/usb-device-manager.c      | 79 -------------------------------=
----
> > > >  5 files changed, 33 insertions(+), 130 deletions(-)
> > > >
> > > > diff --git a/src/channel-usbredir.c b/src/channel-usbredir.c
> > > > index 04acf0b..8d4cd66 100644
> > > > --- a/src/channel-usbredir.c
> > > > +++ b/src/channel-usbredir.c
> > > > @@ -72,7 +72,6 @@ struct _SpiceUsbredirChannelPrivate {
> > > >      SpiceUsbAclHelper *acl_helper;
> > > >  #endif
> > > >      GMutex device_connect_mutex;
> > > > -    SpiceUsbDeviceManager *usb_device_manager;
> > > >  };
> > > >
> > > >  static void channel_set_handlers(SpiceChannelClass *klass);
> > > > @@ -169,11 +168,6 @@ static void spice_usbredir_channel_dispose(GOb=
ject *obj)
> > > >      SpiceUsbredirChannel *channel =3D SPICE_USBREDIR_CHANNEL(obj);
> > > >
> > > >      spice_usbredir_channel_disconnect_device(channel);
> > > > -    /* This should have been set to NULL during device disconnecti=
on,
> > > > -     * but better not to leak it if this does not happen for some =
reason
> > > > -     */
> > > > -    g_warn_if_fail(channel->priv->usb_device_manager =3D=3D NULL);
> > > > -    g_clear_object(&channel->priv->usb_device_manager);
> > > >
> > > >      /* Chain up to the parent class */
> > > >      if (G_OBJECT_CLASS(spice_usbredir_channel_parent_class)->dispo=
se)
> > > > @@ -248,8 +242,6 @@ static gboolean spice_usbredir_channel_open_dev=
ice(
> > > >      SpiceUsbredirChannel *channel, GError **err)
> > > >  {
> > > >      SpiceUsbredirChannelPrivate *priv =3D channel->priv;
> > > > -    SpiceSession *session;
> > > > -    SpiceUsbDeviceManager *manager;
> > > >
> > > >      g_return_val_if_fail(priv->state =3D=3D STATE_DISCONNECTED
> > > >  #ifdef USE_POLKIT
> > > > @@ -265,16 +257,6 @@ static gboolean spice_usbredir_channel_open_de=
vice(
> > > >          return FALSE;
> > > >      }
> > > >
> > > > -    session =3D spice_channel_get_session(SPICE_CHANNEL(channel));
> > > > -    manager =3D spice_usb_device_manager_get(session, NULL);
> > > > -    g_return_val_if_fail(manager !=3D NULL, FALSE);
> > > > -
> > > > -    priv->usb_device_manager =3D g_object_ref(manager);
> > > > -    if (!spice_usb_device_manager_start_event_listening(priv->usb_=
device_manager, err)) {
> > > > -        spice_usb_backend_channel_detach(priv->host);
> > > > -        return FALSE;
> > > > -    }
> > > > -
> > > >      priv->state =3D STATE_CONNECTED;
> > > >
> > > >      return TRUE;
> > > > @@ -445,16 +427,6 @@ void spice_usbredir_channel_disconnect_device(=
SpiceUsbredirChannel *channel)
> > > >          break;
> > > >  #endif
> > > >      case STATE_CONNECTED:
> > > > -        /*
> > > > -         * This sets the usb event thread run condition to FALSE, =
therefor
> > > > -         * it must be done before usbredirhost_set_device NULL, as
> > > > -         * usbredirhost_set_device NULL will interrupt the
> > > > -         * libusb_handle_events call in the thread.
> > > > -         */
> > > > -        g_warn_if_fail(priv->usb_device_manager !=3D NULL);
> > > > -        spice_usb_device_manager_stop_event_listening(priv->usb_de=
vice_manager);
> > > > -        g_clear_object(&priv->usb_device_manager);
> > > > -
> > > >          /* This also closes the libusb handle we passed from open_=
device */
> > > >          spice_usb_backend_channel_detach(priv->host);
> > > >          g_clear_pointer(&priv->device, spice_usb_backend_device_un=
ref);
> > > > diff --git a/src/usb-backend.c b/src/usb-backend.c
> > > > index 829d81d..37db951 100644
> > > > --- a/src/usb-backend.c
> > > > +++ b/src/usb-backend.c
> > > > @@ -58,6 +58,9 @@ struct _SpiceUsbBackend
> > > >      usb_hot_plug_callback hotplug_callback;
> > > >      void *hotplug_user_data;
> > > >      libusb_hotplug_callback_handle hotplug_handle;
> > > > +    GThread *event_thread;
> > > > +    gint event_thread_run;
> > > > +
> > > >  #ifdef G_OS_WIN32
> > > >      HANDLE hWnd;
> > > >      libusb_device **libusb_device_list;
> > > > @@ -406,28 +409,25 @@ SpiceUsbBackend *spice_usb_backend_new(GError=
 **error)
> > > >      return be;
> > > >  }
> > > >
> > > > -gboolean spice_usb_backend_handle_events(SpiceUsbBackend *be)
> > > > +static gpointer handle_libusb_events(gpointer user_data)
> > > >  {
> > > > +    SpiceUsbBackend *be =3D (SpiceUsbBackend *)user_data;
> >
> > I don't think you need to cast from gpointer.
> >
> > > >      SPICE_DEBUG("%s >>", __FUNCTION__);
> > > > -    gboolean ok =3D FALSE;
> > > > -    if (be->libusb_context) {
> > > > -        int res =3D libusb_handle_events(be->libusb_context);
> > > > -        ok =3D res =3D=3D 0;
> > > > +    int res =3D 0;
> > > > +    const char *desc =3D "";
> > > > +    while (g_atomic_int_get(&be->event_thread_run)) {
> > > > +        res =3D libusb_handle_events(be->libusb_context);
> > > >          if (res && res !=3D LIBUSB_ERROR_INTERRUPTED) {
> > > > -            const char *desc =3D libusb_strerror(res);
> > > > +            desc =3D libusb_strerror(res);
> > > >              g_warning("Error handling USB events: %s [%i]", desc, =
res);
> > > > -            ok =3D FALSE;
> > > > +            break;
> > > >          }
> > > >      }
> > > > -    SPICE_DEBUG("%s << %d", __FUNCTION__, ok);
> > > > -    return ok;
> > > > -}
> > > > -
> > > > -void spice_usb_backend_interrupt_event_handler(SpiceUsbBackend *be)
> > > > -{
> > > > -    if (be->libusb_context) {
> > > > -        libusb_interrupt_event_handler(be->libusb_context);
> > > > +    if (be->event_thread_run) {
> > > > +        SPICE_DEBUG("%s: the thread aborted, %s(%d)", __FUNCTION__=
, desc, res);
> > > >      }
> > > > +    SPICE_DEBUG("%s <<", __FUNCTION__);
> > > > +    return NULL;
> > > >  }
> > > >
> > > >  void spice_usb_backend_deregister_hotplug(SpiceUsbBackend *be)
> > > > @@ -438,6 +438,12 @@ void spice_usb_backend_deregister_hotplug(Spic=
eUsbBackend *be)
> > > >          be->hotplug_handle =3D 0;
> > > >      }
> > > >      be->hotplug_callback =3D NULL;
> > > > +    g_atomic_int_set(&be->event_thread_run, FALSE);
> > > > +    if (be->event_thread) {
> > > > +        libusb_interrupt_event_handler(be->libusb_context);
> > > > +        g_thread_join(be->event_thread);
> > > > +        be->event_thread =3D NULL;
> > > > +    }
> > > >  }
> > > >
> > > >  gboolean spice_usb_backend_register_hotplug(SpiceUsbBackend *be,
> > > > @@ -461,6 +467,16 @@ gboolean spice_usb_backend_register_hotplug(Sp=
iceUsbBackend *be,
> > > >             "Error on USB hotplug detection: %s [%i]", desc, rc);
> > > >          return FALSE;
> > > >      }
> > > > +
> > > > +    g_atomic_int_set(&be->event_thread_run, TRUE);
> > > > +    be->event_thread =3D g_thread_try_new("usb_ev_thread",
> > > > +                                    handle_libusb_events,
> > > > +                                    be, error);
> >
> > It was g_thread_new() before, this changed it, why do you think
> > it is important? I'd do that in a separate patch with a proper
> > rationale for it.
>=20
> From the beginning it should be g_thread_try_new but this was
> not available in old glib.
> g_thread_try_new does not abort the application on error when
> g_thread_new does.

Yeah, I'm fine with the change but I'd still do it in a separate
patch titled something along the line "do not abort if can't
create a thread" instead of "move USB events handling to USB
backend"

> > > > +    if (!be->event_thread) {
> > > > +        g_warning("Error starting event thread");
> > > > +        spice_usb_backend_deregister_hotplug(be);
> > > > +        return FALSE;
> > > > +    }
> > > >      return TRUE;
> > > >  }
> > > >
> > > > @@ -468,6 +484,8 @@ void spice_usb_backend_delete(SpiceUsbBackend *=
be)
> > > >  {
> > > >      g_return_if_fail(be !=3D NULL);
> > > >      SPICE_DEBUG("%s >>", __FUNCTION__);
> > > > +    /* just to be on the safe side if not deregistered */
> > > > +    spice_usb_backend_deregister_hotplug(be);
> >
> > Not sure if I follow the comment, should a warn be added in case
> > spice_usb_backend_delete() is called in some unexpected situation?

Thanks,



> >
> > > >      if (be->libusb_context) {
> > > >          libusb_exit(be->libusb_context);
> > > >      }
> > > > diff --git a/src/usb-backend.h b/src/usb-backend.h
> > > > index 814da46..69a490b 100644
> > > > --- a/src/usb-backend.h
> > > > +++ b/src/usb-backend.h
> > > > @@ -56,8 +56,6 @@ enum {
> > > >  SpiceUsbBackend *spice_usb_backend_new(GError **error);
> > > >  void spice_usb_backend_delete(SpiceUsbBackend *context);
> > > >
> > > > -gboolean spice_usb_backend_handle_events(SpiceUsbBackend *be);
> > > > -void spice_usb_backend_interrupt_event_handler(SpiceUsbBackend *be=
);
> > > >  gboolean spice_usb_backend_register_hotplug(SpiceUsbBackend *be,
> > > >                                              void *user_data,
> > > >                                              usb_hot_plug_callback =
proc,
> > > > diff --git a/src/usb-device-manager-priv.h b/src/usb-device-manager=
-priv.h
> > > > index 39aaf2f..66acf6d 100644
> > > > --- a/src/usb-device-manager-priv.h
> > > > +++ b/src/usb-device-manager-priv.h
> > > > @@ -25,12 +25,6 @@
> > > >
> > > >  G_BEGIN_DECLS
> > > >
> > > > -gboolean spice_usb_device_manager_start_event_listening(
> > > > -    SpiceUsbDeviceManager *manager, GError **err);
> > > > -
> > > > -void spice_usb_device_manager_stop_event_listening(
> > > > -    SpiceUsbDeviceManager *manager);
> > > > -
> > > >  #ifdef USE_USBREDIR
> > > >  void spice_usb_device_manager_device_error(
> > > >      SpiceUsbDeviceManager *manager, SpiceUsbDevice *device, GError=
 *err);
> > > > diff --git a/src/usb-device-manager.c b/src/usb-device-manager.c
> > > > index 7105ff1..25fac04 100644
> > > > --- a/src/usb-device-manager.c
> > > > +++ b/src/usb-device-manager.c
> > > > @@ -93,9 +93,6 @@ struct _SpiceUsbDeviceManagerPrivate {
> > > >      gchar *redirect_on_connect;
> > > >  #ifdef USE_USBREDIR
> > > >      SpiceUsbBackend *context;
> > > > -    int event_listeners;
> > > > -    GThread *event_thread;
> > > > -    gint event_thread_run;
> > > >      struct usbredirfilter_rule *auto_conn_filter_rules;
> > > >      struct usbredirfilter_rule *redirect_on_connect_rules;
> > > >      int auto_conn_filter_rules_count;
> > > > @@ -262,9 +259,6 @@ static gboolean spice_usb_device_manager_initab=
le_init(GInitable  *initable,
> > > >          spice_usb_backend_delete(priv->context);
> > > >          return FALSE;
> > > >      }
> > > > -#ifndef G_OS_WIN32
> > > > -    spice_usb_device_manager_start_event_listening(self, NULL);
> > > > -#endif
> > > >
> > > >      /* Start listening for usb channels connect/disconnect */
> > > >      spice_g_signal_connect_object(priv->session, "channel-new", G_=
CALLBACK(channel_new), self, G_CONNECT_AFTER);
> > > > @@ -286,27 +280,8 @@ static void spice_usb_device_manager_dispose(G=
Object *gobject)
> > > >      SpiceUsbDeviceManager *self =3D SPICE_USB_DEVICE_MANAGER(gobje=
ct);
> > > >      SpiceUsbDeviceManagerPrivate *priv =3D self->priv;
> > > >
> > > > -#ifndef G_OS_WIN32
> > > > -    spice_usb_device_manager_stop_event_listening(self);
> > > > -    if (g_atomic_int_get(&priv->event_thread_run)) {
> > > > -        /* Force termination of the event thread even if there wer=
e some
> > > > -         * mismatched spice_usb_device_manager_{start,stop}_event_=
listening
> > > > -         * calls. Otherwise, the usb event thread will be leaked, =
and will
> > > > -         * try to use the libusb context we destroy in finalize(),=
 which would
> > > > -         * cause a crash */
> > > > -        g_warn_if_reached();
> > > > -        g_atomic_int_set(&priv->event_thread_run, FALSE);
> > > > -    }
> > > > -#endif
> > > >      spice_usb_backend_deregister_hotplug(priv->context);
> > > >
> > > > -    if (priv->event_thread) {
> > > > -        g_warn_if_fail(g_atomic_int_get(&priv->event_thread_run) =
=3D=3D FALSE);
> > > > -        g_atomic_int_set(&priv->event_thread_run, FALSE);
> > > > -        spice_usb_backend_interrupt_event_handler(priv->context);
> > > > -        g_thread_join(priv->event_thread);
> > > > -        priv->event_thread =3D NULL;
> > > > -    }
> > > >  #endif
> > > >
> > > >      /* Chain up to the parent class */
> > > > @@ -324,7 +299,6 @@ static void spice_usb_device_manager_finalize(G=
Object *gobject)
> > > >      if (priv->devices) {
> > > >          g_ptr_array_unref(priv->devices);
> > > >      }
> > > > -    g_return_if_fail(priv->event_thread =3D=3D NULL);
> > > >      if (priv->context) {
> > > >          spice_usb_backend_delete(priv->context);
> > > >      }
> > > > @@ -916,59 +890,6 @@ static void spice_usb_device_manager_channel_c=
onnect_cb(
> > > >  /* ---------------------------------------------------------------=
--- */
> > > >  /* private api                                                    =
    */
> > > >
> > > > -static gpointer spice_usb_device_manager_usb_ev_thread(gpointer us=
er_data)
> > > > -{
> > > > -    SpiceUsbDeviceManager *self =3D SPICE_USB_DEVICE_MANAGER(user_=
data);
> > > > -    SpiceUsbDeviceManagerPrivate *priv =3D self->priv;
> > > > -
> > > > -    while (g_atomic_int_get(&priv->event_thread_run)) {
> > > > -        if (!spice_usb_backend_handle_events(priv->context)) {
> > > > -            break;
> > > > -        }
> > > > -    }
> > > > -
> > > > -    return NULL;
> > > > -}
> > > > -
> > > > -gboolean spice_usb_device_manager_start_event_listening(
> > > > -    SpiceUsbDeviceManager *self, GError **err)
> > > > -{
> > > > -    SpiceUsbDeviceManagerPrivate *priv =3D self->priv;
> > > > -
> > > > -    g_return_val_if_fail(err =3D=3D NULL || *err =3D=3D NULL, FALS=
E);
> > > > -
> > > > -    priv->event_listeners++;
> > > > -    if (priv->event_listeners > 1)
> > > > -        return TRUE;
> > > > -
> > > > -    /* We don't join the thread when we stop event listening, as t=
he
> > > > -       libusb_handle_events call in the thread won't exit until the
> > > > -       libusb_close call for the device is made from usbredirhost_=
close. */
> > > > -    if (priv->event_thread) {
> > > > -        g_atomic_int_set(&priv->event_thread_run, FALSE);
> > > > -        spice_usb_backend_interrupt_event_handler(priv->context);
> > > > -         g_thread_join(priv->event_thread);
> > > > -         priv->event_thread =3D NULL;
> > > > -    }
> > > > -    g_atomic_int_set(&priv->event_thread_run, TRUE);
> > > > -    priv->event_thread =3D g_thread_new("usb_ev_thread",
> > > > -                                      spice_usb_device_manager_usb=
_ev_thread,
> > > > -                                      self);
> > > > -    return priv->event_thread !=3D NULL;
> > > > -}
> > > > -
> > > > -void spice_usb_device_manager_stop_event_listening(
> > > > -    SpiceUsbDeviceManager *self)
> > > > -{
> > > > -    SpiceUsbDeviceManagerPrivate *priv =3D self->priv;
> > > > -
> > > > -    g_return_if_fail(priv->event_listeners > 0);
> > > > -
> > > > -    priv->event_listeners--;
> > > > -    if (priv->event_listeners =3D=3D 0)
> > > > -        g_atomic_int_set(&priv->event_thread_run, FALSE);
> > > > -}
> > > > -
> > > >  static void spice_usb_device_manager_check_redir_on_connect(
> > > >      SpiceUsbDeviceManager *self, SpiceChannel *channel)
> > > >  {
> > > > --
> > > > 2.17.1
> > > >
> > > _______________________________________________
> > > Spice-devel mailing list
> > > Spice-devel@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/spice-devel

--tu2eggoiovwfagfs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl02qCUACgkQl9kSPeN6
SE+x3g/6AtVlj7Yr3gc42NU2+EA6seayyVR3M4pHXWxqTs5L2H9RFT/9urbC3r/s
R5IpA3EpBvVmu+MGJbWQrxCQOR+eDSV1t8wFDcukEoujcTZK5OOFZFMDsN9u0u1w
v+WTF2VWwTYK8s9k7VJPYOLCwPGfA3+8VFYdn5SjmKTKt720YN2A4BLaHsd62+y0
zhRk2tW5BkHpgo5r9DffrBwVUpUaORCt1Ys8hnvofrTcefGlcLvRe+uVr5T8aaTS
hd5PG89804TEOWMbb1jfIAU03N+7znuMwS0yjFy5cOfwJo5E8aCcwGHH5AvBYf/e
/XH4DEeb1XC/CvEYbgypcYx8lYf5C8Gdx2PkHKU96fS+CoA4yxbWcXradp8YKiaF
U8tj/y+rHKyWAezk5VGJ17AK9bmm8XCNYsc0vpnhETJXSxV6wWVGFr8BNTb5l/2i
oI1StVGfJOjerLpBERdzFxQQ18guZkrivP2FhEuT5nZopKsaeIlUpyS4EDrPpImG
veK8cqQmR2Loh1dpWJmBPpmw/LCT2JsfbEf7DF+BVtVdIPCYsdnlx8zfR6i/L5M4
mOz2P1z/WIXMKirZ7B6bdbztILWzq46k9ZD+TIEnsZEXtfSPrjMWYipDbx1e+s7F
htdjfcoXi0JGGLUcytTjkSrX0IsnDY1F2ry5DCIqwwUPsLlbvVI=
=nw0y
-----END PGP SIGNATURE-----

--tu2eggoiovwfagfs--

--===============0176606477==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0176606477==--
