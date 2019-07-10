Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E231643DB
	for <lists+spice-devel@lfdr.de>; Wed, 10 Jul 2019 10:56:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3D396E0CF;
	Wed, 10 Jul 2019 08:56:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90CC46E0CF
 for <spice-devel@lists.freedesktop.org>; Wed, 10 Jul 2019 08:56:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3591F300B916;
 Wed, 10 Jul 2019 08:56:07 +0000 (UTC)
Received: from localhost (unknown [10.32.181.70])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 425CC84939;
 Wed, 10 Jul 2019 08:56:06 +0000 (UTC)
Date: Wed, 10 Jul 2019 10:56:05 +0200
From: Victor Toso <victortoso@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <20190710085605.6v3vuyvqxj7wowgc@wingsuit>
References: <20190410193139.10912-1-yuri.benditovich@daynix.com>
 <20190410193139.10912-3-yuri.benditovich@daynix.com>
 <20190610104820.lyydy6rmbroobb5x@toolbox>
 <CAOEp5Od5vXhdPF2L+6dH-Et2Sv_pc_LxsSFfREdN2jyukoeNcg@mail.gmail.com>
 <20190709100745.jls5mvq5dwe7lphz@wingsuit>
 <CAOEp5OfOQYbV=dXDpeTtsCTVK4sVzFh6Q2Vnit-WEKubqqEEQQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAOEp5OfOQYbV=dXDpeTtsCTVK4sVzFh6Q2Vnit-WEKubqqEEQQ@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Wed, 10 Jul 2019 08:56:07 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH 2/3] usb-redirection: isolate usage of
 libusb and usbredirhost
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
Content-Type: multipart/mixed; boundary="===============1789154649=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1789154649==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="p2qoumomqa5x63iu"
Content-Disposition: inline


--p2qoumomqa5x63iu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Wed, Jul 10, 2019 at 11:02:13AM +0300, Yuri Benditovich wrote:
> On Tue, Jul 9, 2019 at 1:07 PM Victor Toso <victortoso@redhat.com> wrote:
> >
> > Hi,
> >
> > On Mon, Jun 24, 2019 at 06:02:23PM +0300, Yuri Benditovich wrote:
> > > On Mon, Jun 10, 2019 at 1:48 PM Victor Toso <victortoso@redhat.com> wrote:
> > > >
> > > > Hi,
> > > >
> > > > Keeping the chat as you might enjoy then, in order to merge this
> > > > patches:
> > > >
> > > > On Wed, Apr 10, 2019 at 10:31:38PM +0300, Yuri Benditovich wrote:
> > > > > As a step toward possibility to present emulated USB devices
> > > > > to the guest, we remove the knowledge about libusb and
> > > > > usbredirhost (which depends on libusb) from all the modules
> > > > > and concentrate it in one (usb backend) which presents
> > > > > abstract USB objects and internal API to all other modules.
> > > >
> > > > I'm asking you to add information about "abstract USB objects and
> > > > internal API" that are being introduced to the commit log and a
> > > > short intro on their role.
> >
> > Note, something like this I find to be a must.
> https://gitlab.freedesktop.org/yuri_benditovich/spice-gtk/commit/68984d3727d2893dbcfbe8778e4d6608d9f1a6cc
> contains extended commit description
> Please let me know whether it is enough.

It's fine

> >
> > > >
> > > > > Signed-off-by: Yuri Benditovich <yuri.benditovich@daynix.com>
> > > > > ---
> > > > >  src/Makefile.am               |   2 +
> > > > >  src/channel-usbredir-priv.h   |   9 +-
> > > > >  src/channel-usbredir.c        | 216 +++---------
> > > > >  src/meson.build               |   2 +
> > > > >  src/usb-backend.c             | 622 ++++++++++++++++++++++++++++++++++
> > > > >  src/usb-backend.h             | 110 ++++++
> > > > >  src/usb-device-manager-priv.h |   1 -
> > > > >  src/usb-device-manager.c      | 336 ++++++------------
> > > > >  src/usbutil.c                 |   6 -
> > > > >  src/usbutil.h                 |   2 -
> > > > >  src/win-usb-dev.c             | 103 ++----
> > > > >  src/win-usb-dev.h             |   5 +-
> > > > >  12 files changed, 929 insertions(+), 485 deletions(-)
> > > > >  create mode 100644 src/usb-backend.c
> > > > >  create mode 100644 src/usb-backend.h
> > > > >
> > > > > diff --git a/src/Makefile.am b/src/Makefile.am
> > > > > index cdc4d28..6c5de9f 100644
> > > > > --- a/src/Makefile.am
> > > > > +++ b/src/Makefile.am
> > > > > @@ -262,6 +262,8 @@ libspice_client_glib_impl_la_SOURCES =                    \
> > > > >       spice-uri-priv.h                                \
> > > > >       usb-device-manager.c                            \
> > > > >       usb-device-manager-priv.h                       \
> > > > > +     usb-backend.c                                   \
> > > > > +     usb-backend.h                                   \
> > > > >       usbutil.c                                       \
> > > > >       usbutil.h                                       \
> > > > >       $(USB_ACL_HELPER_SRCS)                          \
> > > > > diff --git a/src/channel-usbredir-priv.h b/src/channel-usbredir-priv.h
> > > > > index 17e9716..46c2c56 100644
> > > > > --- a/src/channel-usbredir-priv.h
> > > > > +++ b/src/channel-usbredir-priv.h
> > > > > @@ -21,9 +21,8 @@
> > > > >  #ifndef __SPICE_CLIENT_USBREDIR_CHANNEL_PRIV_H__
> > > > >  #define __SPICE_CLIENT_USBREDIR_CHANNEL_PRIV_H__
> > > > >
> > > > > -#include <libusb.h>
> > > > > -#include <usbredirfilter.h>
> > > > >  #include "spice-client.h"
> > > > > +#include "usb-backend.h"
> > > > >
> > > > >  G_BEGIN_DECLS
> > > > >
> > > > > @@ -31,7 +30,7 @@ G_BEGIN_DECLS
> > > > >     context should not be destroyed before the last device has been
> > > > >     disconnected */
> > > > >  void spice_usbredir_channel_set_context(SpiceUsbredirChannel *channel,
> > > > > -                                        libusb_context       *context);
> > > > > +                                        SpiceUsbBackend      *context);
> > > > >
> > > > >  void spice_usbredir_channel_disconnect_device_async(SpiceUsbredirChannel *channel,
> > > > >                                                      GCancellable *cancellable,
> > > > > @@ -46,7 +45,7 @@ gboolean spice_usbredir_channel_disconnect_device_finish(SpiceUsbredirChannel *c
> > > > >     (through spice_channel_connect()), before calling this. */
> > > > >  void spice_usbredir_channel_connect_device_async(
> > > > >                                          SpiceUsbredirChannel *channel,
> > > > > -                                        libusb_device        *device,
> > > > > +                                        SpiceUsbBackendDevice *device,
> > > > >                                          SpiceUsbDevice       *spice_device,
> > > > >                                          GCancellable         *cancellable,
> > > > >                                          GAsyncReadyCallback   callback,
> > > > > @@ -58,7 +57,7 @@ gboolean spice_usbredir_channel_connect_device_finish(
> > > > >
> > > > >  void spice_usbredir_channel_disconnect_device(SpiceUsbredirChannel *channel);
> > > > >
> > > > > -libusb_device *spice_usbredir_channel_get_device(SpiceUsbredirChannel *channel);
> > > > > +SpiceUsbBackendDevice *spice_usbredir_channel_get_device(SpiceUsbredirChannel *channel);
> > > > >
> > > > >  void spice_usbredir_channel_lock(SpiceUsbredirChannel *channel);
> > > > >
> > > > > diff --git a/src/channel-usbredir.c b/src/channel-usbredir.c
> > > > > index 3562164..d894130 100644
> > > > > --- a/src/channel-usbredir.c
> > > > > +++ b/src/channel-usbredir.c
> > > > > @@ -23,7 +23,6 @@
> > > > >
> > > > >  #ifdef USE_USBREDIR
> > > > >  #include <glib/gi18n-lib.h>
> > > > > -#include <usbredirhost.h>
> > > > >  #ifdef USE_LZ4
> > > > >  #include <lz4.h>
> > > > >  #endif
> > > > > @@ -66,15 +65,12 @@ enum SpiceUsbredirChannelState {
> > > > >  };
> > > > >
> > > > >  struct _SpiceUsbredirChannelPrivate {
> > > > > -    libusb_device *device;
> > > > > +    SpiceUsbBackendDevice *device;
> > > > >      SpiceUsbDevice *spice_device;
> > > > > -    libusb_context *context;
> > > > > -    struct usbredirhost *host;
> > > > > +    SpiceUsbBackend *context;
> > > > > +    SpiceUsbBackendChannel *host;
> > > > >      /* To catch usbredirhost error messages and report them as a GError */
> > > > >      GError **catch_error;
> > > > > -    /* Data passed from channel handle msg to the usbredirhost read cb */
> > > > > -    const uint8_t *read_buf;
> > > > > -    int read_buf_size;
> > > > >      enum SpiceUsbredirChannelState state;
> > > > >  #ifdef USE_POLKIT
> > > > >      GTask *task;
> > > > > @@ -90,16 +86,9 @@ static void spice_usbredir_channel_dispose(GObject *obj);
> > > > >  static void spice_usbredir_channel_finalize(GObject *obj);
> > > > >  static void usbredir_handle_msg(SpiceChannel *channel, SpiceMsgIn *in);
> > > > >
> > > > > -static void usbredir_log(void *user_data, int level, const char *msg);
> > > > > -static int usbredir_read_callback(void *user_data, uint8_t *data, int count);
> > > > >  static int usbredir_write_callback(void *user_data, uint8_t *data, int count);
> > > > > -static void usbredir_write_flush_callback(void *user_data);
> > > > > -static uint64_t usbredir_buffered_output_size_callback(void *user_data);
> > > > > -
> > > > > -static void *usbredir_alloc_lock(void);
> > > > > -static void usbredir_lock_lock(void *user_data);
> > > > > -static void usbredir_unlock_lock(void *user_data);
> > > > > -static void usbredir_free_lock(void *user_data);
> > > > > +static gboolean usbredir_is_channel_ready(void *user_data);
> > > > > +static uint64_t usbredir_get_queue_size(void *user_data);
> > > > >
> > > > >  #else
> > > > >  struct _SpiceUsbredirChannelPrivate {
> > > > > @@ -126,7 +115,7 @@ static void _channel_reset_finish(SpiceUsbredirChannel *channel, gboolean migrat
> > > > >
> > > > >      spice_usbredir_channel_lock(channel);
> > > > >
> > > > > -    usbredirhost_close(priv->host);
> > > > > +    spice_usb_backend_channel_delete(priv->host);
> > > > >      priv->host = NULL;
> > > > >
> > > > >      /* Call set_context to re-create the host */
> > > > > @@ -236,7 +225,7 @@ static void spice_usbredir_channel_finalize(GObject *obj)
> > > > >      SpiceUsbredirChannel *channel = SPICE_USBREDIR_CHANNEL(obj);
> > > > >
> > > > >      if (channel->priv->host)
> > > > > -        usbredirhost_close(channel->priv->host);
> > > > > +        spice_usb_backend_channel_delete(channel->priv->host);
> > > > >  #ifdef USE_USBREDIR
> > > > >      g_mutex_clear(&channel->priv->device_connect_mutex);
> > > > >  #endif
> > > > > @@ -261,30 +250,22 @@ static void channel_set_handlers(SpiceChannelClass *klass)
> > > > >
> > > > >  G_GNUC_INTERNAL
> > > > >  void spice_usbredir_channel_set_context(SpiceUsbredirChannel *channel,
> > > > > -                                        libusb_context       *context)
> > > > > +                                        SpiceUsbBackend      *context)
> > > > >  {
> > > > >      SpiceUsbredirChannelPrivate *priv = channel->priv;
> > > > > +    SpiceUsbBackendChannelInitData init_data;
> > > > > +    init_data.user_data = channel;
> > > > > +    init_data.get_queue_size = usbredir_get_queue_size;
> > > > > +    init_data.is_channel_ready = usbredir_is_channel_ready;
> > > > > +    init_data.write_callback = usbredir_write_callback;
> > > >
> > > > I'd rather we export those three functions instead of using
> > > > SpiceUsbBackendChannelInitData. You just create wrappers again to
> > > > them in usb-backend. I don't think it is a good effort mainly
> > > > because usb-backend and channel-usbredir are bounded.
> > > >
> > > > Channel-usbredir is a SpiceChannel so you could even remove
> > > > _get_queue_size() and _is_channel_ready() if compromised a bit
> > > > the design and have those functions there as they'll be useless
> > > > in channel-usbredir (...)
> > > >
> > > > If we had different users for spice_usb_backend_channel_new() I
> > > > wouldn't mind.
> > > >
> > > > So, please G_GNUC_INTERNAL on those and remove those wrappers in
> > > > usb-backend.c
> > > >
> > > > >      g_return_if_fail(priv->host == NULL);
> > > > >
> > > > >      priv->context = context;
> > > > > -    priv->host = usbredirhost_open_full(
> > > > > -                                   context, NULL,
> > > > > -                                   usbredir_log,
> > > > > -                                   usbredir_read_callback,
> > > > > -                                   usbredir_write_callback,
> > > > > -                                   usbredir_write_flush_callback,
> > > > > -                                   usbredir_alloc_lock,
> > > > > -                                   usbredir_lock_lock,
> > > > > -                                   usbredir_unlock_lock,
> > > > > -                                   usbredir_free_lock,
> > > > > -                                   channel, PACKAGE_STRING,
> > > > > -                                   spice_util_get_debug() ? usbredirparser_debug : usbredirparser_warning,
> > > > > -                                   usbredirhost_fl_write_cb_owns_buffer);
> > > > > +    priv->host = spice_usb_backend_channel_new(context, &init_data);
> > > > >      if (!priv->host)
> > > > > -        g_error("Out of memory allocating usbredirhost");
> > > > > +        g_error("Out of memory initializing redirection support");
> > > > >
> > > > > -    usbredirhost_set_buffered_output_size_cb(priv->host, usbredir_buffered_output_size_callback);
> > > > >  #ifdef USE_LZ4
> > > > >      spice_channel_set_capability(channel, SPICE_SPICEVMC_CAP_DATA_COMPRESS_LZ4);
> > > > >  #endif
> > > > > @@ -295,8 +276,6 @@ static gboolean spice_usbredir_channel_open_device(
> > > > >  {
> > > > >      SpiceUsbredirChannelPrivate *priv = channel->priv;
> > > > >      SpiceSession *session;
> > > > > -    libusb_device_handle *handle = NULL;
> > > > > -    int rc, status;
> > > > >      SpiceUsbDeviceManager *manager;
> > > > >
> > > > >      g_return_val_if_fail(priv->state == STATE_DISCONNECTED
> > > > > @@ -305,19 +284,11 @@ static gboolean spice_usbredir_channel_open_device(
> > > > >  #endif
> > > > >                           , FALSE);
> > > > >
> > > > > -    rc = libusb_open(priv->device, &handle);
> > > > > -    if (rc != 0) {
> > > > > -        g_set_error(err, SPICE_CLIENT_ERROR, SPICE_CLIENT_ERROR_FAILED,
> > > > > -                    "Could not open usb device: %s [%i]",
> > > > > -                    spice_usbutil_libusb_strerror(rc), rc);
> > > > > -        return FALSE;
> > > > > -    }
> > > > > -
> > > > > -    priv->catch_error = err;
> > > > > -    status = usbredirhost_set_device(priv->host, handle);
> > > > > -    priv->catch_error = NULL;
> > > > > -    if (status != usb_redir_success) {
> > > > > -        g_return_val_if_fail(err == NULL || *err != NULL, FALSE);
> > > > > +    if (!spice_usb_backend_channel_attach(priv->host, priv->device, err)) {
> > > > > +        if (*err == NULL) {
> > > > > +            g_set_error(err, SPICE_CLIENT_ERROR, SPICE_CLIENT_ERROR_FAILED,
> > > > > +                "Error attaching device: (no error information)");
> > > > > +        }
> > > > >          return FALSE;
> > > > >      }
> > > > >
> > > > > @@ -327,7 +298,7 @@ static gboolean spice_usbredir_channel_open_device(
> > > > >
> > > > >      priv->usb_device_manager = g_object_ref(manager);
> > > > >      if (!spice_usb_device_manager_start_event_listening(priv->usb_device_manager, err)) {
> > > > > -        usbredirhost_set_device(priv->host, NULL);
> > > > > +        spice_usb_backend_channel_detach(priv->host);
> > > > >          return FALSE;
> > > > >      }
> > > > >
> > > > > @@ -358,8 +329,7 @@ static void spice_usbredir_channel_open_acl_cb(
> > > > >          spice_usbredir_channel_open_device(channel, &err);
> > > > >      }
> > > > >      if (err) {
> > > > > -        libusb_unref_device(priv->device);
> > > > > -        priv->device = NULL;
> > > > > +        g_clear_pointer(&priv->device, spice_usb_backend_device_unref);
> > > > >          g_boxed_free(spice_usb_device_get_type(), priv->spice_device);
> > > > >          priv->spice_device = NULL;
> > > > >          priv->state  = STATE_DISCONNECTED;
> > > > > @@ -390,8 +360,7 @@ _open_device_async_cb(GTask *task,
> > > > >      spice_usbredir_channel_lock(channel);
> > > > >
> > > > >      if (!spice_usbredir_channel_open_device(channel, &err)) {
> > > > > -        libusb_unref_device(priv->device);
> > > > > -        priv->device = NULL;
> > > > > +        g_clear_pointer(&priv->device, spice_usb_backend_device_unref);
> > > > >          g_boxed_free(spice_usb_device_get_type(), priv->spice_device);
> > > > >          priv->spice_device = NULL;
> > > > >      }
> > > > > @@ -409,13 +378,16 @@ _open_device_async_cb(GTask *task,
> > > > >  G_GNUC_INTERNAL
> > > > >  void spice_usbredir_channel_connect_device_async(
> > > > >                                            SpiceUsbredirChannel *channel,
> > > > > -                                          libusb_device        *device,
> > > > > +                                          SpiceUsbBackendDevice *device,
> > > > >                                            SpiceUsbDevice       *spice_device,
> > > > >                                            GCancellable         *cancellable,
> > > > >                                            GAsyncReadyCallback   callback,
> > > > >                                            gpointer              user_data)
> > > > >  {
> > > > >      SpiceUsbredirChannelPrivate *priv = channel->priv;
> > > > > +#ifdef USE_POLKIT
> > > > > +    const UsbDeviceInformation *info = spice_usb_backend_device_get_info(device);
> > > > > +#endif
> > > > >      GTask *task;
> > > > >
> > > > >      g_return_if_fail(SPICE_IS_USBREDIR_CHANNEL(channel));
> > > > > @@ -442,7 +414,7 @@ void spice_usbredir_channel_connect_device_async(
> > > > >          goto done;
> > > > >      }
> > > > >
> > > > > -    priv->device = libusb_ref_device(device);
> > > > > +    priv->device = spice_usb_backend_device_ref(device);
> > > > >      priv->spice_device = g_boxed_copy(spice_usb_device_get_type(),
> > > > >                                        spice_device);
> > > > >  #ifdef USE_POLKIT
> > > > > @@ -452,8 +424,8 @@ void spice_usbredir_channel_connect_device_async(
> > > > >      g_object_set(spice_channel_get_session(SPICE_CHANNEL(channel)),
> > > > >                   "inhibit-keyboard-grab", TRUE, NULL);
> > > > >      spice_usb_acl_helper_open_acl_async(priv->acl_helper,
> > > > > -                                        libusb_get_bus_number(device),
> > > > > -                                        libusb_get_device_address(device),
> > > > > +                                        info->bus,
> > > > > +                                        info->address,
> > > > >                                          cancellable,
> > > > >                                          spice_usbredir_channel_open_acl_cb,
> > > > >                                          channel);
> > > > > @@ -511,9 +483,8 @@ void spice_usbredir_channel_disconnect_device(SpiceUsbredirChannel *channel)
> > > > >          g_clear_object(&priv->usb_device_manager);
> > > > >
> > > > >          /* This also closes the libusb handle we passed from open_device */
> > > > > -        usbredirhost_set_device(priv->host, NULL);
> > > > > -        libusb_unref_device(priv->device);
> > > > > -        priv->device = NULL;
> > > > > +        spice_usb_backend_channel_detach(priv->host);
> > > > > +        g_clear_pointer(&priv->device, spice_usb_backend_device_unref);
> > > > >          g_boxed_free(spice_usb_device_get_type(), priv->spice_device);
> > > > >          priv->spice_device = NULL;
> > > > >          priv->state  = STATE_DISCONNECTED;
> > > > > @@ -564,7 +535,7 @@ spice_usbredir_channel_get_spice_usb_device(SpiceUsbredirChannel *channel)
> > > > >  #endif
> > > > >
> > > > >  G_GNUC_INTERNAL
> > > > > -libusb_device *spice_usbredir_channel_get_device(SpiceUsbredirChannel *channel)
> > > > > +SpiceUsbBackendDevice *spice_usbredir_channel_get_device(SpiceUsbredirChannel *channel)
> > > > >  {
> > > > >      return channel->priv->device;
> > > > >  }
> > > > > @@ -579,83 +550,24 @@ void spice_usbredir_channel_get_guest_filter(
> > > > >
> > > > >      g_return_if_fail(priv->host != NULL);
> > > > >
> > > > > -    usbredirhost_get_guest_filter(priv->host, rules_ret, rules_count_ret);
> > > > > +    spice_usb_backend_channel_get_guest_filter(priv->host, rules_ret, rules_count_ret);
> > > > >  }
> > > > >
> > > > >  /* ------------------------------------------------------------------ */
> > > > >  /* callbacks (any context)                                            */
> > > > >
> > > > > -static uint64_t usbredir_buffered_output_size_callback(void *user_data)
> > > > > +static uint64_t usbredir_get_queue_size(void *user_data)
> > > > >  {
> > > > >      g_return_val_if_fail(SPICE_IS_USBREDIR_CHANNEL(user_data), 0);
> > > > >      return spice_channel_get_queue_size(SPICE_CHANNEL(user_data));
> > > > >  }
> > > > >
> > > > > -/* Note that this function must be re-entrant safe, as it can get called
> > > > > -   from both the main thread as well as from the usb event handling thread */
> > > > > -static void usbredir_write_flush_callback(void *user_data)
> > > > > +static gboolean usbredir_is_channel_ready(void *user_data)
> > > > >  {
> > > > >      SpiceUsbredirChannel *channel = SPICE_USBREDIR_CHANNEL(user_data);
> > > > >      SpiceUsbredirChannelPrivate *priv = channel->priv;
> > > > > -
> > > > > -    if (spice_channel_get_state(SPICE_CHANNEL(channel)) !=
> > > > > -            SPICE_CHANNEL_STATE_READY)
> > > > > -        return;
> > > > > -
> > > > > -    if (!priv->host)
> > > > > -        return;
> > > > > -
> > > > > -    usbredirhost_write_guest_data(priv->host);
> > > > > -}
> > > > > -
> > > > > -static void usbredir_log(void *user_data, int level, const char *msg)
> > > > > -{
> > > > > -    SpiceUsbredirChannel *channel = user_data;
> > > > > -    SpiceUsbredirChannelPrivate *priv = channel->priv;
> > > > > -
> > > > > -    if (priv->catch_error && level == usbredirparser_error) {
> > > > > -        CHANNEL_DEBUG(channel, "%s", msg);
> > > > > -        /* Remove "usbredirhost: " prefix from usbredirhost messages */
> > > > > -        if (strncmp(msg, "usbredirhost: ", 14) == 0)
> > > > > -            g_set_error_literal(priv->catch_error, SPICE_CLIENT_ERROR,
> > > > > -                                SPICE_CLIENT_ERROR_FAILED, msg + 14);
> > > > > -        else
> > > > > -            g_set_error_literal(priv->catch_error, SPICE_CLIENT_ERROR,
> > > > > -                                SPICE_CLIENT_ERROR_FAILED, msg);
> > > > > -        return;
> > > > > -    }
> > > > > -
> > > > > -    switch (level) {
> > > > > -        case usbredirparser_error:
> > > > > -            g_critical("%s", msg);
> > > > > -            break;
> > > > > -        case usbredirparser_warning:
> > > > > -            g_warning("%s", msg);
> > > > > -            break;
> > > > > -        default:
> > > > > -            CHANNEL_DEBUG(channel, "%s", msg);
> > > > > -    }
> > > > > -}
> > > > > -
> > > > > -static int usbredir_read_callback(void *user_data, uint8_t *data, int count)
> > > > > -{
> > > > > -    SpiceUsbredirChannel *channel = user_data;
> > > > > -    SpiceUsbredirChannelPrivate *priv = channel->priv;
> > > > > -
> > > > > -    count = MIN(priv->read_buf_size, count);
> > > > > -
> > > > > -    if (count != 0) {
> > > > > -        memcpy(data, priv->read_buf, count);
> > > > > -    }
> > > > > -
> > > > > -    priv->read_buf_size -= count;
> > > > > -    if (priv->read_buf_size) {
> > > > > -        priv->read_buf += count;
> > > > > -    } else {
> > > > > -        priv->read_buf = NULL;
> > > > > -    }
> > > > > -
> > > > > -    return count;
> > > > > +    return priv->host != NULL &&
> > > > > +           spice_channel_get_state(SPICE_CHANNEL(channel)) == SPICE_CHANNEL_STATE_READY;
> > > > >  }
> > > > >
> > > > >  static void usbredir_free_write_cb_data(uint8_t *data, void *user_data)
> > > > > @@ -663,7 +575,7 @@ static void usbredir_free_write_cb_data(uint8_t *data, void *user_data)
> > > > >      SpiceUsbredirChannel *channel = user_data;
> > > > >      SpiceUsbredirChannelPrivate *priv = channel->priv;
> > > > >
> > > > > -    usbredirhost_free_write_buffer(priv->host, data);
> > > > > +    spice_usb_backend_return_write_data(priv->host, data);
> > > > >  }
> > > > >
> > > > >  #ifdef USE_LZ4
> > > > > @@ -735,7 +647,7 @@ static int usbredir_write_callback(void *user_data, uint8_t *data, int count)
> > > > >
> > > > >  #ifdef USE_LZ4
> > > > >      if (try_write_compress_LZ4(channel, data, count)) {
> > > > > -        usbredirhost_free_write_buffer(channel->priv->host, data);
> > > > > +        spice_usb_backend_return_write_data(channel->priv->host, data);
> > > > >          return count;
> > > > >      }
> > > > >  #endif
> > > > > @@ -748,15 +660,6 @@ static int usbredir_write_callback(void *user_data, uint8_t *data, int count)
> > > > >      return count;
> > > > >  }
> > > > >
> > > > > -static void *usbredir_alloc_lock(void) {
> > > > > -    GMutex *mutex;
> > > > > -
> > > > > -    mutex = g_new0(GMutex, 1);
> > > > > -    g_mutex_init(mutex);
> > > > > -
> > > > > -    return mutex;
> > > > > -}
> > > > > -
> > > > >  G_GNUC_INTERNAL
> > > > >  void spice_usbredir_channel_lock(SpiceUsbredirChannel *channel)
> > > > >  {
> > > > > @@ -769,25 +672,6 @@ void spice_usbredir_channel_unlock(SpiceUsbredirChannel *channel)
> > > > >      g_mutex_unlock(&channel->priv->device_connect_mutex);
> > > > >  }
> > > > >
> > > > > -static void usbredir_lock_lock(void *user_data) {
> > > > > -    GMutex *mutex = user_data;
> > > > > -
> > > > > -    g_mutex_lock(mutex);
> > > > > -}
> > > > > -
> > > > > -static void usbredir_unlock_lock(void *user_data) {
> > > > > -    GMutex *mutex = user_data;
> > > > > -
> > > > > -    g_mutex_unlock(mutex);
> > > > > -}
> > > > > -
> > > > > -static void usbredir_free_lock(void *user_data) {
> > > > > -    GMutex *mutex = user_data;
> > > > > -
> > > > > -    g_mutex_clear(mutex);
> > > > > -    g_free(mutex);
> > > > > -}
> > > > > -
> > > > >  /* --------------------------------------------------------------------- */
> > > > >
> > > > >  typedef struct device_error_data {
> > > > > @@ -826,7 +710,7 @@ static void spice_usbredir_channel_up(SpiceChannel *c)
> > > > >
> > > > >      g_return_if_fail(priv->host != NULL);
> > > > >      /* Flush any pending writes */
> > > > > -    usbredirhost_write_guest_data(priv->host);
> > > > > +    spice_usb_backend_channel_up(priv->host);
> > > >
> > > > spice_usb_backend_channel_up() calls
> > > > usbredirhost_write_guest_data() so IMHO a better name is needed
> > > > for this wrapper. Perhaps spice_usb_backend_write_to_guest() or
> > > > something.
> > >
> > > From my point of view, the name like "spice_usb_backend_write_to_guest"
> > > is much less clear and makes impression that the usb-redir-channel should
> > > use it to write data to guest when it is not.
> > > Typically we call usbredirhost_write_guest_data() only when we receive
> > > 'flush' callback from the usbredirhost and only when we're ready to
> > > send data. But it is possible that when we create the instance of
> > > usbredirhost, we are not ready to send data yet and usbredirhost holds
> > > the data but not able to send them; it will not issue another 'flush' callback
> > > until it has a reason. So, when the channel gets up, we make single
> > > call to usbredirhost to flush the data that it has inside if any. This is
> > > exactly 'channel is up' notification to the usb backend.
> >
> > Ok, what about spice_usb_backend_flush() ? My confusion with
> > _channel_up() is that is clear to me on spice-channel but flush
> > or try-write, try-read seems nicer on usb_backend level, no?
> Changed to spice_usb_backend_channel_flush_writes in
> https://gitlab.freedesktop.org/yuri_benditovich/spice-gtk/commits/backend2-increment

Thanks

> >
> > > > >  static int try_handle_compressed_msg(SpiceMsgCompressedData *compressed_data_msg,
> > > > > @@ -876,26 +760,20 @@ static void usbredir_handle_msg(SpiceChannel *c, SpiceMsgIn *in)
> > > > >
> > > > >      g_return_if_fail(priv->host != NULL);
> > > > >
> > > > > -    /* No recursion allowed! */
> > > > > -    g_return_if_fail(priv->read_buf == NULL);
> > > > > -
> > > > >      if (spice_msg_in_type(in) == SPICE_MSG_SPICEVMC_COMPRESSED_DATA) {
> > > > >          SpiceMsgCompressedData *compressed_data_msg = spice_msg_in_parsed(in);
> > > > >          if (try_handle_compressed_msg(compressed_data_msg, &buf, &size)) {
> > > > > -            priv->read_buf_size = size;
> > > > > -            priv->read_buf = buf;
> > > > > +            /* uncompressed ok*/
> > > > >          } else {
> > > > > -            r = usbredirhost_read_parse_error;
> > > > > +            r = USB_REDIR_ERROR_READ_PARSE;
> > > > >          }
> > > > >      } else { /* Regular SPICE_MSG_SPICEVMC_DATA msg */
> > > > >          buf = spice_msg_in_raw(in, &size);
> > > > > -        priv->read_buf_size = size;
> > > > > -        priv->read_buf = buf;
> > > > >      }
> > > > >
> > > > >      spice_usbredir_channel_lock(channel);
> > > > >      if (r == 0)
> > > > > -        r = usbredirhost_read_guest_data(priv->host);
> > > > > +        r = spice_usb_backend_provide_read_data(priv->host, buf, size);
> > > >
> > > > Perhaps spice_usb_backend_read_from_guest()
> > > >
> > > > >      if (r != 0) {
> > > > >          SpiceUsbDevice *spice_device = priv->spice_device;
> > > > >          device_error_data err_data;
> > > > > @@ -909,16 +787,16 @@ static void usbredir_handle_msg(SpiceChannel *c, SpiceMsgIn *in)
> > > > >
> > > > >          desc = spice_usb_device_get_description(spice_device, NULL);
> > > > >          switch (r) {
> > > > > -        case usbredirhost_read_parse_error:
> > > > > +        case USB_REDIR_ERROR_READ_PARSE:
> > > > >              err = g_error_new(SPICE_CLIENT_ERROR, SPICE_CLIENT_ERROR_FAILED,
> > > > >                                _("usbredir protocol parse error for %s"), desc);
> > > > >              break;
> > > > > -        case usbredirhost_read_device_rejected:
> > > > > +        case USB_REDIR_ERROR_DEV_REJECTED:
> > > > >              err = g_error_new(SPICE_CLIENT_ERROR,
> > > > >                                SPICE_CLIENT_ERROR_USB_DEVICE_REJECTED,
> > > > >                                _("%s rejected by host"), desc);
> > > > >              break;
> > > > > -        case usbredirhost_read_device_lost:
> > > > > +        case USB_REDIR_ERROR_DEV_LOST:
> > > >
> > > > An utility function from usb-backend to make an error to GError
> > > > would be good fit I think, which would remove this code here as
> > > > well.
> > > >
> > > > >              err = g_error_new(SPICE_CLIENT_ERROR,
> > > > >                                SPICE_CLIENT_ERROR_USB_DEVICE_LOST,
> > > > >                                _("%s disconnected (fatal IO error)"), desc);
> > > > > diff --git a/src/meson.build b/src/meson.build
> > > > > index 5365f05..a51d0a9 100644
> > > > > --- a/src/meson.build
> > > > > +++ b/src/meson.build
> > > > > @@ -121,6 +121,8 @@ spice_client_glib_sources = [
> > > > >    'usb-device-manager-priv.h',
> > > > >    'usbutil.c',
> > > > >    'usbutil.h',
> > > > > +  'usb-backend.c',
> > > > > +  'usb-backend.h',
> > > > >    'vmcstream.c',
> > > > >    'vmcstream.h',
> > > > >  ]
> > > > > diff --git a/src/usb-backend.c b/src/usb-backend.c
> > > > > new file mode 100644
> > > > > index 0000000..675eb62
> > > > > --- /dev/null
> > > > > +++ b/src/usb-backend.c
> > > > > @@ -0,0 +1,622 @@
> > > > > +/* -*- Mode: C; c-basic-offset: 4; indent-tabs-mode: nil -*- */
> > > > > +/*
> > > > > +    Copyright (C) 2012-2018 Red Hat, Inc.
> > > > > +
> > > > > +    Red Hat Authors:
> > > > > +    Yuri Benditovich<ybendito@redhat.com>
> > > > > +    Hans de Goede <hdegoede@redhat.com>
> > > > > +
> > > > > +    This library is free software; you can redistribute it and/or
> > > > > +    modify it under the terms of the GNU Lesser General Public
> > > > > +    License as published by the Free Software Foundation; either
> > > > > +    version 2.1 of the License, or (at your option) any later version.
> > > > > +
> > > > > +    This library is distributed in the hope that it will be useful,
> > > > > +    but WITHOUT ANY WARRANTY; without even the implied warranty of
> > > > > +    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> > > > > +    Lesser General Public License for more details.
> > > > > +
> > > > > +    You should have received a copy of the GNU Lesser General Public
> > > > > +    License along with this library; if not, see <http://www.gnu.org/licenses/>.
> > > > > +*/
> > > > > +
> > > > > +#include "config.h"
> > > > > +
> > > > > +#ifdef USE_USBREDIR
> > > > > +
> > > > > +#include <glib-object.h>
> > > > > +#include <inttypes.h>
> > > > > +#include <gio/gio.h>
> > > > > +#include <errno.h>
> > > > > +#include <libusb.h>
> > > > > +#include <string.h>
> > > > > +#include <fcntl.h>
> > > > > +#include "usbredirhost.h"
> > > > > +#include "usbredirparser.h"
> > > > > +#include "spice-util.h"
> > > > > +#include "usb-backend.h"
> > > > > +
> > > > > +//#define LOUD_DEBUG SPICE_DEBUG
> > > > > +#define LOUD_DEBUG(x, ...)
> > > >
> > > > Any reason this is being kept?
> > >
> > > This is clear place where loud printouts can be enabled
> > > for debug purpose.
> >
> > It is a compile time change, that seems ok from developer on
> > developing stage. On maintaining stage, we want either a runtime
> > way to enable loud debugs or that they are present somehow.
> Addressed in https://gitlab.freedesktop.org/yuri_benditovich/spice-gtk/commits/backend2-increment

Forgot to commit perhaps?
Could you please squash and resend it to mailing list as v2, to
properly ack/push ?

Thanks,

> >
> > > >
> > > > > +
> > > > > +struct _SpiceUsbBackendDevice
> > > > > +{
> > > > > +    libusb_device *libusb_device;
> > > > > +    gint ref_count;
> > > > > +    SpiceUsbBackendChannel *attached_to;
> > > > > +    UsbDeviceInformation device_info;
> > > > > +};
> > > > > +
> > > > > +struct _SpiceUsbBackend
> > > > > +{
> > > > > +    libusb_context *libusb_context;
> > > > > +    usb_hot_plug_callback hotplug_callback;
> > > > > +    void *hotplug_user_data;
> > > > > +    libusb_hotplug_callback_handle hotplug_handle;
> > > > > +};
> > > > > +
> > > > > +struct _SpiceUsbBackendChannel
> > > > > +{
> > > > > +    struct usbredirhost *usbredirhost;
> > > > > +    uint8_t *read_buf;
> > > > > +    int read_buf_size;
> > > > > +    struct usbredirfilter_rule *rules;
> > > > > +    int rules_count;
> > > > > +    SpiceUsbBackendDevice *attached;
> > > > > +    SpiceUsbBackendChannelInitData channel_data;
> > > > > +    GError **error;
> > > > > +};
> > > > > +
> > > > > +// lock functions for usbredirhost and usbredirparser
> > > > > +static void *usbredir_alloc_lock(void) {
> > > > > +    GMutex *mutex;
> > > > > +
> > > > > +    mutex = g_new0(GMutex, 1);
> > > > > +    g_mutex_init(mutex);
> > > > > +
> > > > > +    return mutex;
> > > > > +}
> > > > > +
> > > > > +static void usbredir_free_lock(void *user_data) {
> > > > > +    GMutex *mutex = user_data;
> > > > > +
> > > > > +    g_mutex_clear(mutex);
> > > > > +    g_free(mutex);
> > > > > +}
> > > > > +
> > > > > +static void usbredir_lock_lock(void *user_data) {
> > > > > +    GMutex *mutex = user_data;
> > > > > +
> > > > > +    g_mutex_lock(mutex);
> > > > > +}
> > > > > +
> > > > > +static void usbredir_unlock_lock(void *user_data) {
> > > > > +    GMutex *mutex = user_data;
> > > > > +
> > > > > +    g_mutex_unlock(mutex);
> > > > > +}
> > > > > +
> > > > > +gboolean spice_usb_backend_device_isoch(SpiceUsbBackendDevice *dev)
> > > > > +{
> > > > > +    libusb_device *libdev = dev->libusb_device;
> > > > > +    struct libusb_config_descriptor *conf_desc;
> > > > > +    gboolean isoc_found = FALSE;
> > > > > +    gint i, j, k;
> > > > > +
> > > > > +    g_return_val_if_fail(libdev != NULL, 0);
> > > > > +
> > > > > +    if (libusb_get_active_config_descriptor(libdev, &conf_desc) != 0) {
> > > > > +        g_return_val_if_reached(0);
> > > >
> > > > A proper debug/warning message would be nice.
> > > >
> > > > > +    }
> > > > > +
> > > > > +    for (i = 0; !isoc_found && i < conf_desc->bNumInterfaces; i++) {
> > > > > +        for (j = 0; !isoc_found && j < conf_desc->interface[i].num_altsetting; j++) {
> > > > > +            for (k = 0; !isoc_found && k < conf_desc->interface[i].altsetting[j].bNumEndpoints;k++) {
> > > > > +                gint attributes = conf_desc->interface[i].altsetting[j].endpoint[k].bmAttributes;
> > > > > +                gint type = attributes & LIBUSB_TRANSFER_TYPE_MASK;
> > > > > +                if (type == LIBUSB_TRANSFER_TYPE_ISOCHRONOUS)
> > > > > +                    isoc_found = TRUE;
> > > >
> > > > Always open/close braces {} in new code
> > > >
> > > > > +            }
> > > > > +        }
> > > > > +    }
> > > > > +
> > > > > +    libusb_free_config_descriptor(conf_desc);
> > > > > +    return isoc_found;
> > > > > +}
> > > > > +
> > > > > +static gboolean fill_usb_info(SpiceUsbBackendDevice *bdev)
> > > > > +{
> > > > > +    UsbDeviceInformation *info = &bdev->device_info;
> > > > > +
> > > > > +    struct libusb_device_descriptor desc;
> > > > > +    libusb_device *libdev = bdev->libusb_device;
> > > > > +    libusb_get_device_descriptor(libdev, &desc);
> > > > > +    info->bus = libusb_get_bus_number(libdev);
> > > > > +    info->address = libusb_get_device_address(libdev);
> > > > > +    if (info->address == 0xff || /* root hub (HCD) */
> > > > > +        info->address <= 1 || /* root hub or bad address */
> > > > > +        (desc.bDeviceClass == LIBUSB_CLASS_HUB) /*hub*/) {
> > > >
> > > > Note that there is a mix of comment style as well, if I'm not
> > > > mistaken /* is preferred */ over // this
> > > >
> > > > > +        return FALSE;
> > > > > +    }
> > > > > +
> > > > > +    info->vid = desc.idVendor;
> > > > > +    info->pid = desc.idProduct;
> > > > > +    info->class = desc.bDeviceClass;
> > > > > +    info->subclass = desc.bDeviceSubClass;
> > > > > +    info->protocol = desc.bDeviceProtocol;
> > > > > +
> > > > > +    return TRUE;
> > > > > +}
> > > > > +
> > > > > +static SpiceUsbBackendDevice *allocate_backend_device(libusb_device *libdev)
> > > > > +{
> > > > > +    SpiceUsbBackendDevice *dev = g_new0(SpiceUsbBackendDevice, 1);
> > > > > +    dev->ref_count = 1;
> > > > > +    dev->libusb_device = libdev;
> > > > > +    if (!fill_usb_info(dev)) {
> > > > > +        g_free(dev);
> > > > > +        dev = NULL;
> > > >
> > > > g_clear_pointer(&dev, g_free);
> > > >
> > > > > +    }
> > > > > +    return dev;
> > > > > +}
> > > > > +
> > > > > +/* Note that this function must be re-entrant safe, as it can get called
> > > > > +from both the main thread as well as from the usb event handling thread */
> > > > > +static void usbredir_write_flush_callback(void *user_data)
> > > > > +{
> > > > > +    SpiceUsbBackendChannel *ch = user_data;
> > > > > +    gboolean ok = ch->channel_data.is_channel_ready(ch->channel_data.user_data);
> > > > > +    if (ok && ch->usbredirhost) {
> > > >
> > > > I'd move the ch->usbredirhost to its own check, prior to
> > > > _is_channel_ready(). Why flush_callback can be called without a
> > > > ch->usbredirhost being set?
> > > >
> > > > > +        SPICE_DEBUG("%s ch %p -> usbredirhost", __FUNCTION__, ch);
> > > > > +        usbredirhost_write_guest_data(ch->usbredirhost);
> > > > > +    } else {
> > > > > +        SPICE_DEBUG("%s ch %p (not ready)", __FUNCTION__, ch);
> > > > > +    }
> > > > > +}
> > > > > +
> > > > > +SpiceUsbBackend *spice_usb_backend_new(GError **error)
> > > > > +{
> > > > > +    int rc;
> > > > > +    SpiceUsbBackend *be;
> > > > > +    SPICE_DEBUG("%s >>", __FUNCTION__);
> > > > > +    be = (SpiceUsbBackend *)g_new0(SpiceUsbBackend, 1);
> > > >
> > > > "Returns a pointer to the allocated memory, cast to a pointer to
> > > > struct_type)" ~ Cast is not needed.
> > > >
> > > > > +    rc = libusb_init(&be->libusb_context);
> > > > > +    if (rc < 0) {
> > > > > +        const char *desc = libusb_error_name(rc);
> > > > > +        g_warning("Error initializing LIBUSB support: %s [%i]", desc, rc);
> > > > > +        g_set_error(error, SPICE_CLIENT_ERROR, SPICE_CLIENT_ERROR_FAILED,
> > > > > +            "Error initializing LIBUSB support: %s [%i]", desc, rc);
> > > > > +        g_free(be);
> > > > > +        be = NULL;
> > > > > +    } else {
> > > > > +#ifdef G_OS_WIN32
> > > > > +#if LIBUSB_API_VERSION >= 0x01000106
> > > > > +    libusb_set_option(be->libusb_context, LIBUSB_OPTION_USE_USBDK);
> > > >
> > > > Indentation
> > > >
> > > > > +#endif
> > > > > +#endif
> > > > > +    }
> > > > > +    SPICE_DEBUG("%s <<", __FUNCTION__);
> > > > > +    return be;
> > > > > +}
> > > > > +
> > > > > +gboolean spice_usb_backend_handle_events(SpiceUsbBackend *be)
> > > > > +{
> > > > > +    SPICE_DEBUG("%s >>", __FUNCTION__);
> > > > > +    gboolean ok = FALSE;
> > > > > +    if (be->libusb_context) {
> > > > > +        int res = libusb_handle_events(be->libusb_context);
> > > > > +        ok = res == 0;
> > > > > +        if (res && res != LIBUSB_ERROR_INTERRUPTED) {
> > > > > +            const char *desc = libusb_error_name(res);
> > > > > +            g_warning("Error handling USB events: %s [%i]", desc, res);
> > > > > +            ok = FALSE;
> > > > > +        }
> > > > > +    }
> > > > > +    SPICE_DEBUG("%s << %d", __FUNCTION__, ok);
> > > > > +    return ok;
> > > > > +}
> > > > > +
> > > > > +static int LIBUSB_CALL hotplug_callback(libusb_context *ctx,
> > > > > +                                        libusb_device *device,
> > > > > +                                        libusb_hotplug_event event,
> > > > > +                                        void *user_data)
> > > > > +{
> > > > > +    SpiceUsbBackend *be = (SpiceUsbBackend *)user_data;
> > > > > +    if (be->hotplug_callback) {
> > > > > +        SpiceUsbBackendDevice *dev;
> > > > > +        gboolean val = event == LIBUSB_HOTPLUG_EVENT_DEVICE_ARRIVED;
> > > > > +        dev = allocate_backend_device(device);
> > > > > +        if (dev) {
> > > > > +            SPICE_DEBUG("created dev %p, usblib dev %p", dev, device);
> > > > > +            libusb_ref_device(device);
> > > > > +            be->hotplug_callback(be->hotplug_user_data, dev, val);
> > > > > +            spice_usb_backend_device_unref(dev);
> > > > > +        }
> > > > > +    }
> > > > > +    return 0;
> > > > > +}
> > > > > +
> > > > > +void spice_usb_backend_deregister_hotplug(SpiceUsbBackend *be)
> > > > > +{
> > > > > +    g_return_if_fail(be != NULL);
> > > > > +    if (be->hotplug_handle) {
> > > > > +        libusb_hotplug_deregister_callback(be->libusb_context, be->hotplug_handle);
> > > > > +        be->hotplug_handle = 0;
> > > > > +    }
> > > > > +    be->hotplug_callback = NULL;
> > > > > +}
> > > > > +
> > > > > +gboolean spice_usb_backend_register_hotplug(SpiceUsbBackend *be,
> > > > > +                                            void *user_data,
> > > > > +                                            usb_hot_plug_callback proc)
> > > > > +{
> > > > > +    int rc;
> > > > > +    g_return_val_if_fail(be != NULL, FALSE);
> > > > > +
> > > > > +    be->hotplug_callback = proc;
> > > > > +    be->hotplug_user_data = user_data;
> > > > > +    rc = libusb_hotplug_register_callback(be->libusb_context,
> > > > > +        LIBUSB_HOTPLUG_EVENT_DEVICE_ARRIVED | LIBUSB_HOTPLUG_EVENT_DEVICE_LEFT,
> > > > > +        LIBUSB_HOTPLUG_ENUMERATE, LIBUSB_HOTPLUG_MATCH_ANY,
> > > > > +        LIBUSB_HOTPLUG_MATCH_ANY, LIBUSB_HOTPLUG_MATCH_ANY,
> > > > > +        hotplug_callback, be, &be->hotplug_handle);
> > > > > +    if (rc != LIBUSB_SUCCESS) {
> > > > > +        const char *desc = libusb_error_name(rc);
> > > > > +        g_warning("Error initializing USB hotplug support: %s [%i]", desc, rc);
> > > > > +        be->hotplug_callback = NULL;
> > > > > +        return FALSE;
> > > > > +    }
> > > > > +    return TRUE;
> > > > > +}
> > > > > +
> > > > > +void spice_usb_backend_delete(SpiceUsbBackend *be)
> > > > > +{
> > > > > +    g_return_if_fail(be != NULL);
> > > > > +    SPICE_DEBUG("%s >>", __FUNCTION__);
> > > > > +    if (be->libusb_context) {
> > > > > +        libusb_exit(be->libusb_context);
> > > > > +    }
> > > > > +    g_free(be);
> > > > > +    SPICE_DEBUG("%s <<", __FUNCTION__);
> > > > > +}
> > > > > +
> > > > > +SpiceUsbBackendDevice **spice_usb_backend_get_device_list(SpiceUsbBackend *be)
> > > > > +{
> > > > > +    LOUD_DEBUG("%s >>", __FUNCTION__);
> > > > > +    libusb_device **devlist = NULL, **dev;
> > > > > +    SpiceUsbBackendDevice *d, **list;
> > > > > +
> > > > > +    int n = 0, index;
> > > > > +
> > > > > +    if (be && be->libusb_context) {
> > > > > +        libusb_get_device_list(be->libusb_context, &devlist);
> > > > > +    }
> > > > > +
> > > > > +    // add all the libusb device that not present in our list
> > > > > +    for (dev = devlist; dev && *dev; dev++) {
> > > > > +        n++;
> > > > > +    }
> > > > > +
> > > > > +    list = g_new0(SpiceUsbBackendDevice*, n + 1);
> > > > > +
> > > > > +    index = 0;
> > > > > +
> > > > > +    for (dev = devlist; dev && *dev; dev++) {
> > > > > +        d = allocate_backend_device(*dev);
> > > > > +        if (!d) {
> > > > > +            libusb_unref_device(*dev);
> > > > > +        } else {
> > > > > +            SPICE_DEBUG("created dev %p, usblib dev %p", d, *dev);
> > > > > +            list[index++] = d;
> > > > > +        }
> > > > > +    }
> > > > > +
> > > > > +    if (devlist) {
> > > > > +        libusb_free_device_list(devlist, 0);
> > > > > +    }
> > > > > +
> > > > > +    LOUD_DEBUG("%s <<", __FUNCTION__);
> > > > > +    return list;
> > > > > +}
> > > > > +
> > > > > +gboolean spice_usb_backend_device_is_hub(SpiceUsbBackendDevice *dev)
> > > > > +{
> > > > > +    return dev->device_info.class == LIBUSB_CLASS_HUB;
> > > > > +}
> > > > > +
> > > > > +const UsbDeviceInformation* spice_usb_backend_device_get_info(SpiceUsbBackendDevice *dev)
> > > > > +{
> > > > > +    return &dev->device_info;
> > > > > +}
> > > > > +
> > > > > +gconstpointer spice_usb_backend_device_get_libdev(SpiceUsbBackendDevice *dev)
> > > > > +{
> > > > > +    return dev->libusb_device;
> > > > > +}
> > > > > +
> > > > > +void spice_usb_backend_free_device_list(SpiceUsbBackendDevice **devlist)
> > > > > +{
> > > > > +    LOUD_DEBUG("%s >>", __FUNCTION__);
> > > > > +    SpiceUsbBackendDevice **dev;
> > > > > +    for (dev = devlist; *dev; dev++) {
> > > > > +        SpiceUsbBackendDevice *d = *dev;
> > > > > +        spice_usb_backend_device_unref(d);
> > > > > +    }
> > > > > +    g_free(devlist);
> > > > > +    LOUD_DEBUG("%s <<", __FUNCTION__);
> > > > > +}
> > > > > +
> > > > > +SpiceUsbBackendDevice *spice_usb_backend_device_ref(SpiceUsbBackendDevice *dev)
> > > > > +{
> > > > > +    LOUD_DEBUG("%s >> %p", __FUNCTION__, dev);
> > > > > +    g_atomic_int_inc(&dev->ref_count);
> > > > > +    return dev;
> > > > > +}
> > > > > +
> > > > > +void spice_usb_backend_device_unref(SpiceUsbBackendDevice *dev)
> > > > > +{
> > > > > +    LOUD_DEBUG("%s >> %p(%d)", __FUNCTION__, dev, dev->ref_count);
> > > > > +    if (g_atomic_int_dec_and_test(&dev->ref_count)) {
> > > > > +        libusb_unref_device(dev->libusb_device);
> > > > > +        LOUD_DEBUG("%s freeing %p (libusb %p)", __FUNCTION__, dev, dev->libusb_device);
> > > > > +        g_free(dev);
> > > > > +    }
> > > > > +}
> > > > > +
> > > > > +int spice_usb_backend_device_check_filter(
> > > > > +    SpiceUsbBackendDevice *dev,
> > > > > +    const struct usbredirfilter_rule *rules,
> > > > > +    int count)
> > > > > +{
> > > > > +    return usbredirhost_check_device_filter(
> > > > > +        rules, count, dev->libusb_device, 0);
> > > > > +}
> > > > > +
> > > > > +static int usbredir_read_callback(void *user_data, uint8_t *data, int count)
> > > > > +{
> > > > > +    SpiceUsbBackendChannel *ch = user_data;
> > > > > +
> > > > > +    count = MIN(ch->read_buf_size, count);
> > > > > +
> > > > > +    if (count != 0) {
> > > > > +        memcpy(data, ch->read_buf, count);
> > > > > +    }
> > > > > +
> > > > > +    ch->read_buf_size -= count;
> > > > > +    if (ch->read_buf_size) {
> > > > > +        ch->read_buf += count;
> > > > > +    }
> > > > > +    else {
> > > > > +        ch->read_buf = NULL;
> > > > > +    }
> > > > > +    SPICE_DEBUG("%s ch %p, %d bytes", __FUNCTION__, ch, count);
> > > > > +
> > > > > +    return count;
> > > > > +}
> > > > > +
> > > > > +static const char *strip_usbredir_prefix(const char *msg)
> > > > > +{
> > > > > +    if (strncmp(msg, "usbredirhost: ", 14) == 0) {
> > > > > +        msg += 14;
> > > > > +    }
> > > > > +    return msg;
> > > > > +}
> > > > > +
> > > > > +static void channel_error(SpiceUsbBackendChannel *ch, const char *msg)
> > > > > +{
> > > > > +    if (!ch->error)
> > > > > +        return;
> > > > > +    g_set_error_literal(ch->error, SPICE_CLIENT_ERROR, SPICE_CLIENT_ERROR_FAILED, msg);
> > > > > +    ch->error = NULL;
> > > > > +}
> > > > > +
> > > > > +static void usbredir_log(void *user_data, int level, const char *msg)
> > > > > +{
> > > > > +    SpiceUsbBackendChannel *ch = (SpiceUsbBackendChannel *)user_data;
> > > > > +    const char *stripped_msg = strip_usbredir_prefix(msg);
> > > > > +    switch (level) {
> > > > > +    case usbredirparser_error:
> > > > > +        g_critical("%s", msg);
> > > > > +        channel_error(ch, stripped_msg);
> > > > > +        break;
> > > > > +    case usbredirparser_warning:
> > > > > +        g_warning("%s", msg);
> > > > > +        channel_error(ch, stripped_msg);
> > > > > +        break;
> > > > > +    default:
> > > > > +        break;
> > > > > +    }
> > > > > +}
> > > > > +
> > > > > +static int usbredir_write_callback(void *user_data, uint8_t *data, int count)
> > > > > +{
> > > > > +    SpiceUsbBackendChannel *ch = user_data;
> > > > > +    int res;
> > > > > +    SPICE_DEBUG("%s ch %p, %d bytes", __FUNCTION__, ch, count);
> > > > > +    res = ch->channel_data.write_callback(ch->channel_data.user_data, data, count);
> > > > > +    return res;
> > > > > +}
> > > > > +
> > > > > +static uint64_t usbredir_buffered_output_size_callback(void *user_data)
> > > > > +{
> > > > > +    SpiceUsbBackendChannel *ch = user_data;
> > > > > +    return ch->channel_data.get_queue_size(ch->channel_data.user_data);
> > > > > +}
> > > > > +
> > > > > +int spice_usb_backend_provide_read_data(SpiceUsbBackendChannel *ch, uint8_t *data, int count)
> > > > > +{
> > > > > +    int res = 0;
> > > > > +
> > > > > +    g_return_val_if_fail(ch->read_buf == NULL, USB_REDIR_ERROR_READ_PARSE);
> > > > > +
> > > > > +    ch->read_buf = data;
> > > > > +    ch->read_buf_size = count;
> > > > > +    if (ch->usbredirhost) {
> > > > > +        res = usbredirhost_read_guest_data(ch->usbredirhost);
> > > > > +    } else {
> > > > > +        res = USB_REDIR_ERROR_IO;
> > > > > +    }
> > > > > +    switch (res)
> > > > > +    {
> > > > > +    case usbredirhost_read_io_error:
> > > > > +        res = USB_REDIR_ERROR_IO;
> > > > > +        break;
> > > > > +    case usbredirhost_read_parse_error:
> > > > > +        res = USB_REDIR_ERROR_READ_PARSE;
> > > > > +        break;
> > > > > +    case usbredirhost_read_device_rejected:
> > > > > +        res = USB_REDIR_ERROR_DEV_REJECTED;
> > > > > +        break;
> > > > > +    case usbredirhost_read_device_lost:
> > > > > +        res = USB_REDIR_ERROR_DEV_LOST;
> > > > > +        break;
> > > > > +    }
> > > > > +    SPICE_DEBUG("%s ch %p, %d bytes, res %d", __FUNCTION__, ch, count, res);
> > > > > +
> > > > > +    return res;
> > > > > +}
> > > > > +
> > > > > +void spice_usb_backend_return_write_data(SpiceUsbBackendChannel *ch, void *data)
> > > > > +{
> > > > > +    if (ch->usbredirhost) {
> > > > > +        SPICE_DEBUG("%s ch %p", __FUNCTION__, ch);
> > > > > +        usbredirhost_free_write_buffer(ch->usbredirhost, data);
> > > > > +    } else {
> > > > > +        SPICE_DEBUG("%s ch %p - NOBODY TO CALL", __FUNCTION__, ch);
> > > > > +    }
> > > > > +}
> > > > > +
> > > > > +gboolean spice_usb_backend_channel_attach(SpiceUsbBackendChannel *ch,
> > > > > +                                          SpiceUsbBackendDevice *dev,
> > > > > +                                          GError **error)
> > > > > +{
> > > > > +    SPICE_DEBUG("%s >> ch %p, dev %p (was attached %p)", __FUNCTION__, ch, dev, ch->attached);
> > > > > +    gboolean ok = FALSE;
> > > >
> > > > I think this ok variable is just making the code a bit more
> > > > complicated.
> > > >
> > > > > +    if (!dev) {
> > > > > +        return ok;
> > > > > +    }
> > > >
> > > > Why not g_return_val_if_fail(dev != NULL, FALSE);
> > > >
> > > > > +
> > > > > +    libusb_device_handle *handle = NULL;
> > > > > +    int rc = libusb_open(dev->libusb_device, &handle);
> > > >
> > > >     if (rc != 0) {
> > > >         /* error part first */
> > > >     }
> > > >     ...
> > > >     rc = usbredirhost_set_device(ch->usbredirhost, handle);
> > > >     if (rc != 0) {
> > > >         /* error part first */
> > > >     }
> > > >     ...
> > > >     ch->error = NULL;
> > > >     return TRUE;
> > > >  }
> > > >
> > > > > +    ok = rc == 0;
> > > > > +    if (ok) {
> > > > > +        ch->error = error;
> > > > > +        rc = usbredirhost_set_device(ch->usbredirhost, handle);
> > > > > +        if (rc) {
> > > > > +            SPICE_DEBUG("%s ch %p, dev %p usbredirhost error %d", __FUNCTION__, ch, dev, rc);
> > > > > +            ok = FALSE;
> > > > > +        } else {
> > > > > +            ch->attached = dev;
> > > > > +            dev->attached_to = ch;
> > > > > +        }
> > > > > +        ch->error = NULL;
> > > > > +    } else {
> > > > > +        const char *desc = libusb_error_name(rc);
> > > > > +        g_set_error(error, SPICE_CLIENT_ERROR, SPICE_CLIENT_ERROR_FAILED,
> > > > > +           "Error libusb_open: %s [%i]", desc, rc);
> > > > > +    }
> > > > > +
> > > > > +    return ok;
> > > > > +}
> > > > > +
> > > > > +void spice_usb_backend_channel_detach(SpiceUsbBackendChannel *ch)
> > > > > +{
> > > > > +    SPICE_DEBUG("%s >> ch %p, was attached %p", __FUNCTION__, ch, ch->attached);
> > > > > +    if (!ch->attached) {
> > > > > +        SPICE_DEBUG("%s: nothing to detach", __FUNCTION__);
> > > > > +        return;
> > > > > +    }
> > > > > +    if (ch->usbredirhost) {
> > > > > +        // it will call libusb_close internally
> > > > > +        usbredirhost_set_device(ch->usbredirhost, NULL);
> > > > > +    }
> > > > > +    SPICE_DEBUG("%s ch %p, detach done", __FUNCTION__, ch);
> > > > > +    ch->attached->attached_to = NULL;
> > > > > +    ch->attached = NULL;
> > > > > +}
> > > > > +
> > > > > +SpiceUsbBackendChannel *spice_usb_backend_channel_new(SpiceUsbBackend *be,
> > > > > +                                                      const SpiceUsbBackendChannelInitData *init_data)
> > > > > +{
> > > > > +    SpiceUsbBackendChannel *ch = g_new0(SpiceUsbBackendChannel, 1);
> > > > > +    SPICE_DEBUG("%s >>", __FUNCTION__);
> > > > > +    ch->channel_data = *init_data;
> > > > > +    if (be->libusb_context) {
> > > > > +        ch->usbredirhost = usbredirhost_open_full(
> > > > > +            be->libusb_context,
> > > > > +            NULL,
> > > > > +            usbredir_log,
> > > > > +            usbredir_read_callback,
> > > > > +            usbredir_write_callback,
> > > > > +            usbredir_write_flush_callback,
> > > > > +            usbredir_alloc_lock,
> > > > > +            usbredir_lock_lock,
> > > > > +            usbredir_unlock_lock,
> > > > > +            usbredir_free_lock,
> > > > > +            ch, PACKAGE_STRING,
> > > > > +            spice_util_get_debug() ? usbredirparser_debug : usbredirparser_warning,
> > > > > +            usbredirhost_fl_write_cb_owns_buffer);
> > > > > +        g_warn_if_fail(ch->usbredirhost != NULL);
> > > > > +    }
> > > > > +    if (ch->usbredirhost) {
> > > > > +        usbredirhost_set_buffered_output_size_cb(ch->usbredirhost, usbredir_buffered_output_size_callback);
> > > > > +    } else {
> > > > > +        g_free(ch);
> > > > > +        ch = NULL;
> > > > > +    }
> > > > > +
> > > > > +    SPICE_DEBUG("%s << %p", __FUNCTION__, ch);
> > > > > +    return ch;
> > > > > +}
> > > > > +
> > > > > +void spice_usb_backend_channel_up(SpiceUsbBackendChannel *ch)
> > > > > +{
> > > > > +    SPICE_DEBUG("%s %p, host %p", __FUNCTION__, ch, ch->usbredirhost);
> > > > > +    if (ch->usbredirhost) {
> > > > > +        usbredirhost_write_guest_data(ch->usbredirhost);
> > > > > +    }
> > > > > +}
> > > > > +
> > > > > +void spice_usb_backend_channel_delete(SpiceUsbBackendChannel *ch)
> > > > > +{
> > > > > +    SPICE_DEBUG("%s >> %p", __FUNCTION__, ch);
> > > >
> > > > Perhaps if (ch == NULL) { return; } could remove some checks on
> > > > the caller side.
> > > >
> > > > > +    if (ch->usbredirhost) {
> > > > > +        usbredirhost_close(ch->usbredirhost);
> > > > > +    }
> > > > > +
> > > > > +    if (ch->rules) {
> > > > > +        g_free(ch->rules);
> > > > > +    }
> > > > > +
> > > > > +    g_free(ch);
> > > > > +    SPICE_DEBUG("%s << %p", __FUNCTION__, ch);
> > > > > +}
> > > > > +
> > > > > +void spice_usb_backend_channel_get_guest_filter(
> > > > > +    SpiceUsbBackendChannel *ch,
> > > > > +    const struct usbredirfilter_rule **r,
> > > > > +    int *count)
> > > > > +{
> > > >
> > > > Please, don't user parameters like that even if previous code was
> > > > like this. We have 4 examples on Function indentation and I
> > > > personally would just stick with
> > > >
> > > >     void
> > > >     spice_usb_backend_channel_get_guest_filter(SpiceUsbBackendChannel *ch,
> > > >                                                const struct usbredirfilter_rule **r,
> > > >                                                int *count)
> > > >
> > > >
> > > > > +    int i;
> > > > > +    *r = NULL;
> > > > > +    *count = 0;
> > > > > +    if (ch->usbredirhost) {
> > > > > +        usbredirhost_get_guest_filter(ch->usbredirhost, r, count);
> > > > > +    }
> > > > > +    if (*r == NULL) {
> > > > > +        *r = ch->rules;
> > > > > +        *count = ch->rules_count;
> > > > > +    }
> > > > > +
> > > > > +    if (*count) {
> > > > > +        SPICE_DEBUG("%s ch %p: %d filters", __FUNCTION__, ch, *count);
> > > > > +    }
> > > >
> > > > Not sure why to check *count, 0 is not interesting filter?
> > > >
> > > > > +    for (i = 0; i < *count; i++) {
> > > > > +        const struct usbredirfilter_rule *ra = *r;
> > > > > +        SPICE_DEBUG("%s class %d, %X:%X",
> > > > > +            ra[i].allow ? "allowed" : "denied", ra[i].device_class,
> > > > > +            (uint32_t)ra[i].vendor_id, (uint32_t)ra[i].product_id);
> > > > > +    }
> > > > > +}
> > > > > +
> > > > > +#endif // USB_REDIR
> > > > > diff --git a/src/usb-backend.h b/src/usb-backend.h
> > > > > new file mode 100644
> > > > > index 0000000..9137916
> > > > > --- /dev/null
> > > > > +++ b/src/usb-backend.h
> > > > > @@ -0,0 +1,110 @@
> > > > > +/* -*- Mode: C; c-basic-offset: 4; indent-tabs-mode: nil -*- */
> > > > > +/*
> > > > > +    Copyright (C) 2018 Red Hat, Inc.
> > > > > +
> > > > > +    Red Hat Authors:
> > > > > +    Yuri Benditovich<ybendito@redhat.com>
> > > > > +
> > > > > +    This library is free software; you can redistribute it and/or
> > > > > +    modify it under the terms of the GNU Lesser General Public
> > > > > +    License as published by the Free Software Foundation; either
> > > > > +    version 2.1 of the License, or (at your option) any later version.
> > > > > +
> > > > > +    This library is distributed in the hope that it will be useful,
> > > > > +    but WITHOUT ANY WARRANTY; without even the implied warranty of
> > > > > +    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> > > > > +    Lesser General Public License for more details.
> > > > > +
> > > > > +    You should have received a copy of the GNU Lesser General Public
> > > > > +    License along with this library; if not, see <http://www.gnu.org/licenses/>.
> > > > > +*/
> > > > > +
> > > > > +#ifndef __SPICE_USB_BACKEND_H__
> > > > > +#define __SPICE_USB_BACKEND_H__
> > > > > +
> > > > > +#include <usbredirfilter.h>
> > > > > +#include "usb-device-manager.h"
> > > > > +
> > > > > +G_BEGIN_DECLS
> > > > > +
> > > > > +typedef struct _SpiceUsbBackend SpiceUsbBackend;
> > > > > +typedef struct _SpiceUsbBackendDevice SpiceUsbBackendDevice;
> > > > > +typedef struct _SpiceUsbBackendChannel SpiceUsbBackendChannel;
> > > > > +
> > > > > +typedef struct UsbDeviceInformation
> > > > > +{
> > > > > +    uint16_t bus;
> > > > > +    uint16_t address;
> > > > > +    uint16_t vid;
> > > > > +    uint16_t pid;
> > > > > +    uint8_t class;
> > > > > +    uint8_t subclass;
> > > > > +    uint8_t protocol;
> > > > > +} UsbDeviceInformation;
> > > > > +
> > > > > +typedef struct SpiceUsbBackendChannelInitData
> > > > > +{
> > > > > +    void *user_data;
> > > > > +    int (*write_callback)(void *user_data, uint8_t *data, int count);
> > > > > +    gboolean (*is_channel_ready)(void *user_data);
> > > > > +    uint64_t (*get_queue_size)(void *user_data);
> > > > > +} SpiceUsbBackendChannelInitData;
> > > > > +
> > > > > +typedef void(*usb_hot_plug_callback)(void *user_data, SpiceUsbBackendDevice *dev, gboolean added);
> > > > > +
> > > > > +enum {
> > > > > +    USB_REDIR_ERROR_IO = -1,
> > > > > +    USB_REDIR_ERROR_READ_PARSE = -2,
> > > > > +    USB_REDIR_ERROR_DEV_REJECTED = -3,
> > > > > +    USB_REDIR_ERROR_DEV_LOST = -4,
> > > > > +};
> > > > > +
> > > > > +/* Spice USB backend API */
> > > > > +/* sets error on failure */
> > > > > +SpiceUsbBackend *spice_usb_backend_new(GError **error);
> > > > > +void spice_usb_backend_delete(SpiceUsbBackend *context);
> > > > > +
> > > > > +/*
> > > > > +returns newly-allocated null-terminated list of
> > > > > +SpiceUsbBackendDevice pointers.
> > > > > +The caller must call spice_usb_backend_free_device_list
> > > > > +after it finishes list processing
> > > > > +*/
> > > > > +SpiceUsbBackendDevice **spice_usb_backend_get_device_list(SpiceUsbBackend *backend);
> > > > > +void spice_usb_backend_free_device_list(SpiceUsbBackendDevice **devlist);
> > > > > +gboolean spice_usb_backend_handle_events(SpiceUsbBackend *be);
> > > > > +gboolean spice_usb_backend_register_hotplug(SpiceUsbBackend *be,
> > > > > +                                            void *user_data,
> > > > > +                                            usb_hot_plug_callback proc);
> > > > > +void spice_usb_backend_deregister_hotplug(SpiceUsbBackend *be);
> > > > > +
> > > > > +/* Spice USB backend device API */
> > > > > +gboolean spice_usb_backend_device_is_hub(SpiceUsbBackendDevice *dev);
> > > > > +SpiceUsbBackendDevice *spice_usb_backend_device_ref(SpiceUsbBackendDevice *dev);
> > > > > +void spice_usb_backend_device_unref(SpiceUsbBackendDevice *dev);
> > > > > +gconstpointer spice_usb_backend_device_get_libdev(SpiceUsbBackendDevice *dev);
> > > > > +const UsbDeviceInformation* spice_usb_backend_device_get_info(SpiceUsbBackendDevice *dev);
> > > > > +gboolean spice_usb_backend_device_isoch(SpiceUsbBackendDevice *dev);
> > > > > +/* returns 0 if the device passes the filter */
> > > > > +int spice_usb_backend_device_check_filter(SpiceUsbBackendDevice *dev,
> > > > > +                                          const struct usbredirfilter_rule *rules, int count);
> > > > > +
> > > > > +/* Spice USB backend channel API */
> > > > > +SpiceUsbBackendChannel *spice_usb_backend_channel_new(SpiceUsbBackend *context,
> > > > > +                                                      const SpiceUsbBackendChannelInitData *init_data);
> > > > > +void spice_usb_backend_channel_delete(SpiceUsbBackendChannel *ch);
> > > > > +/* returns 0 for success or error code */
> > > > > +int spice_usb_backend_provide_read_data(SpiceUsbBackendChannel *ch, uint8_t *data, int count);
> > > > > +gboolean spice_usb_backend_channel_attach(SpiceUsbBackendChannel *ch,
> > > > > +                                          SpiceUsbBackendDevice *dev,
> > > > > +                                          GError **error);
> > > > > +void spice_usb_backend_channel_detach(SpiceUsbBackendChannel *ch);
> > > > > +void spice_usb_backend_channel_up(SpiceUsbBackendChannel *ch);
> > > > > +void spice_usb_backend_channel_get_guest_filter(SpiceUsbBackendChannel *ch,
> > > > > +                                                const struct usbredirfilter_rule  **rules,
> > > > > +                                                int *count);
> > > > > +void spice_usb_backend_return_write_data(SpiceUsbBackendChannel *ch, void *data);
> > > > > +
> > > > > +G_END_DECLS
> > > > > +
> > > > > +#endif
> > > > > diff --git a/src/usb-device-manager-priv.h b/src/usb-device-manager-priv.h
> > > > > index 83884d7..39aaf2f 100644
> > > > > --- a/src/usb-device-manager-priv.h
> > > > > +++ b/src/usb-device-manager-priv.h
> > > > > @@ -32,7 +32,6 @@ void spice_usb_device_manager_stop_event_listening(
> > > > >      SpiceUsbDeviceManager *manager);
> > > > >
> > > > >  #ifdef USE_USBREDIR
> > > > > -#include <libusb.h>
> > > > >  void spice_usb_device_manager_device_error(
> > > > >      SpiceUsbDeviceManager *manager, SpiceUsbDevice *device, GError *err);
> > > > >
> > > > > diff --git a/src/usb-device-manager.c b/src/usb-device-manager.c
> > > > > index bd42142..2bee55d 100644
> > > > > --- a/src/usb-device-manager.c
> > > > > +++ b/src/usb-device-manager.c
> > > > > @@ -25,15 +25,14 @@
> > > > >
> > > > >  #ifdef USE_USBREDIR
> > > > >  #include <errno.h>
> > > > > -#include <libusb.h>
> > > > >
> > > > >  #ifdef G_OS_WIN32
> > > > > +#include <windows.h>
> > > > >  #include "usbdk_api.h"
> > > > >  #include "win-usb-dev.h"
> > > > >  #endif
> > > > >
> > > > >  #include "channel-usbredir-priv.h"
> > > > > -#include "usbredirhost.h"
> > > > >  #include "usbutil.h"
> > > > >  #endif
> > > > >
> > > > > @@ -94,7 +93,7 @@ struct _SpiceUsbDeviceManagerPrivate {
> > > > >      gchar *auto_connect_filter;
> > > > >      gchar *redirect_on_connect;
> > > > >  #ifdef USE_USBREDIR
> > > > > -    libusb_context *context;
> > > > > +    SpiceUsbBackend *context;
> > > > >      int event_listeners;
> > > > >      GThread *event_thread;
> > > > >      gint event_thread_run;
> > > > > @@ -106,7 +105,6 @@ struct _SpiceUsbDeviceManagerPrivate {
> > > > >      GUdevClient *udev;
> > > > >  #else
> > > > >      gboolean redirecting; /* Handled by GUdevClient in the gudev case */
> > > > > -    libusb_hotplug_callback_handle hp_handle;
> > > > >  #endif
> > > > >  #ifdef G_OS_WIN32
> > > > >      usbdk_api_wrapper     *usbdk_api;
> > > > > @@ -136,7 +134,7 @@ typedef struct _SpiceUsbDeviceInfo {
> > > > >      guint16 vid;
> > > > >      guint16 pid;
> > > > >      gboolean isochronous;
> > > > > -    libusb_device *libdev;
> > > > > +    SpiceUsbBackendDevice *bdev;
> > > > >      gint    ref;
> > > > >  } SpiceUsbDeviceInfo;
> > > > >
> > > > > @@ -149,19 +147,18 @@ static void channel_event(SpiceChannel *channel, SpiceChannelEvent event,
> > > > >                            gpointer user_data);
> > > > >  #ifdef G_OS_WIN32
> > > > >  static void spice_usb_device_manager_uevent_cb(GUdevClient     *client,
> > > > > -                                               libusb_device   *udevice,
> > > > > +                                               SpiceUsbBackendDevice *udevice,
> > > > >                                                 gboolean         add,
> > > > >                                                 gpointer         user_data);
> > > > >  #else
> > > > > -static int spice_usb_device_manager_hotplug_cb(libusb_context       *ctx,
> > > > > -                                               libusb_device        *device,
> > > > > -                                               libusb_hotplug_event  event,
> > > > > -                                               void                 *data);
> > > > > +static void spice_usb_device_manager_hotplug_cb(void *user_data,
> > > > > +                                                SpiceUsbBackendDevice *dev,
> > > > > +                                                gboolean added);
> > > > >  #endif
> > > > >  static void spice_usb_device_manager_check_redir_on_connect(
> > > > >      SpiceUsbDeviceManager *self, SpiceChannel *channel);
> > > > >
> > > > > -static SpiceUsbDeviceInfo *spice_usb_device_new(libusb_device *libdev);
> > > > > +static SpiceUsbDeviceInfo *spice_usb_device_new(SpiceUsbBackendDevice *bdev);
> > > > >  static SpiceUsbDevice *spice_usb_device_ref(SpiceUsbDevice *device);
> > > > >  static void spice_usb_device_unref(SpiceUsbDevice *device);
> > > > >
> > > > > @@ -170,12 +167,12 @@ static void _usbdk_hider_update(SpiceUsbDeviceManager *manager);
> > > > >  static void _usbdk_hider_clear(SpiceUsbDeviceManager *manager);
> > > > >  #endif
> > > > >
> > > > > -static gboolean spice_usb_manager_device_equal_libdev(SpiceUsbDeviceManager *manager,
> > > > > -                                                      SpiceUsbDevice *device,
> > > > > -                                                      libusb_device *libdev);
> > > > > -static libusb_device *
> > > > > -spice_usb_device_manager_device_to_libdev(SpiceUsbDeviceManager *self,
> > > > > -                                          SpiceUsbDevice *device);
> > > > > +static gboolean spice_usb_manager_device_equal_bdev(SpiceUsbDeviceManager *manager,
> > > > > +                                                    SpiceUsbDevice *device,
> > > > > +                                                    SpiceUsbBackendDevice *bdev);
> > > > > +static SpiceUsbBackendDevice *
> > > > > +spice_usb_device_manager_device_to_bdev(SpiceUsbDeviceManager *self,
> > > > > +                                        SpiceUsbDevice *device);
> > > > >
> > > > >  static void
> > > > >  _spice_usb_device_manager_connect_device_async(SpiceUsbDeviceManager *self,
> > > > > @@ -277,14 +274,9 @@ static gboolean spice_usb_device_manager_initable_init(GInitable  *initable,
> > > > >      GList *it;
> > > > >
> > > > >  #ifndef G_OS_WIN32
> > > > > -    int rc;
> > > > >      /* Initialize libusb */
> > > > > -    rc = libusb_init(&priv->context);
> > > > > -    if (rc < 0) {
> > > > > -        const char *desc = spice_usbutil_libusb_strerror(rc);
> > > > > -        g_warning("Error initializing USB support: %s [%i]", desc, rc);
> > > > > -        g_set_error(err, SPICE_CLIENT_ERROR, SPICE_CLIENT_ERROR_FAILED,
> > > > > -                    "Error initializing USB support: %s [%i]", desc, rc);
> > > > > +    priv->context = spice_usb_backend_new(err);
> > > > > +    if (!priv->context) {
> > > > >          return FALSE;
> > > > >      }
> > > > >  #endif
> > > > > @@ -302,16 +294,8 @@ static gboolean spice_usb_device_manager_initable_init(GInitable  *initable,
> > > > >      /* Do coldplug (detection of already connected devices) */
> > > > >      g_udev_client_report_devices(priv->udev);
> > > > >  #else
> > > > > -    rc = libusb_hotplug_register_callback(priv->context,
> > > > > -        LIBUSB_HOTPLUG_EVENT_DEVICE_ARRIVED | LIBUSB_HOTPLUG_EVENT_DEVICE_LEFT,
> > > > > -        LIBUSB_HOTPLUG_ENUMERATE, LIBUSB_HOTPLUG_MATCH_ANY,
> > > > > -        LIBUSB_HOTPLUG_MATCH_ANY, LIBUSB_HOTPLUG_MATCH_ANY,
> > > > > -        spice_usb_device_manager_hotplug_cb, self, &priv->hp_handle);
> > > > > -    if (rc < 0) {
> > > > > -        const char *desc = spice_usbutil_libusb_strerror(rc);
> > > > > -        g_warning("Error initializing USB hotplug support: %s [%i]", desc, rc);
> > > > > -        g_set_error(err, SPICE_CLIENT_ERROR, SPICE_CLIENT_ERROR_FAILED,
> > > > > -                  "Error initializing USB hotplug support: %s [%i]", desc, rc);
> > > > > +    if (!spice_usb_backend_register_hotplug(priv->context, self,
> > > > > +                                            spice_usb_device_manager_hotplug_cb)) {
> > > > >          return FALSE;
> > > > >      }
> > > > >      spice_usb_device_manager_start_event_listening(self, NULL);
> > > > > @@ -342,21 +326,17 @@ static void spice_usb_device_manager_dispose(GObject *gobject)
> > > > >      SpiceUsbDeviceManagerPrivate *priv = self->priv;
> > > > >
> > > > >  #ifndef G_OS_WIN32
> > > > > -    if (priv->hp_handle) {
> > > > > -        spice_usb_device_manager_stop_event_listening(self);
> > > > > -        if (g_atomic_int_get(&priv->event_thread_run)) {
> > > > > -            /* Force termination of the event thread even if there were some
> > > > > -             * mismatched spice_usb_device_manager_{start,stop}_event_listening
> > > > > -             * calls. Otherwise, the usb event thread will be leaked, and will
> > > > > -             * try to use the libusb context we destroy in finalize(), which would
> > > > > -             * cause a crash */
> > > > > -             g_warn_if_reached();
> > > > > -             g_atomic_int_set(&priv->event_thread_run, FALSE);
> > > > > -        }
> > > > > -        /* This also wakes up the libusb_handle_events() in the event_thread */
> > > > > -        libusb_hotplug_deregister_callback(priv->context, priv->hp_handle);
> > > > > -        priv->hp_handle = 0;
> > > > > +    spice_usb_device_manager_stop_event_listening(self);
> > > > > +    if (g_atomic_int_get(&priv->event_thread_run)) {
> > > > > +        /* Force termination of the event thread even if there were some
> > > > > +         * mismatched spice_usb_device_manager_{start,stop}_event_listening
> > > > > +         * calls. Otherwise, the usb event thread will be leaked, and will
> > > > > +         * try to use the libusb context we destroy in finalize(), which would
> > > > > +         * cause a crash */
> > > > > +        g_warn_if_reached();
> > > > > +        g_atomic_int_set(&priv->event_thread_run, FALSE);
> > > > >      }
> > > > > +    spice_usb_backend_deregister_hotplug(priv->context);
> > > > >  #endif
> > > > >      if (priv->event_thread) {
> > > > >          g_warn_if_fail(g_atomic_int_get(&priv->event_thread_run) == FALSE);
> > > > > @@ -386,7 +366,7 @@ static void spice_usb_device_manager_finalize(GObject *gobject)
> > > > >      g_return_if_fail(priv->event_thread == NULL);
> > > > >  #ifndef G_OS_WIN32
> > > > >      if (priv->context)
> > > > > -        libusb_exit(priv->context);
> > > > > +        spice_usb_backend_delete(priv->context);
> > > > >  #endif
> > > > >      free(priv->auto_conn_filter_rules);
> > > > >      free(priv->redirect_on_connect_rules);
> > > > > @@ -709,37 +689,6 @@ static void spice_usb_device_manager_class_init(SpiceUsbDeviceManagerClass *klas
> > > > >                       G_TYPE_ERROR);
> > > > >  }
> > > > >
> > > > > -#ifdef USE_USBREDIR
> > > > > -
> > > > > -/* ------------------------------------------------------------------ */
> > > > > -/* gudev / libusb Helper functions                                    */
> > > > > -
> > > > > -static gboolean spice_usb_device_manager_get_device_descriptor(
> > > > > -    libusb_device *libdev,
> > > > > -    struct libusb_device_descriptor *desc)
> > > > > -{
> > > > > -    int errcode;
> > > > > -    const gchar *errstr;
> > > > > -
> > > > > -    g_return_val_if_fail(libdev != NULL, FALSE);
> > > > > -    g_return_val_if_fail(desc   != NULL, FALSE);
> > > > > -
> > > > > -    errcode = libusb_get_device_descriptor(libdev, desc);
> > > > > -    if (errcode < 0) {
> > > > > -        int bus, addr;
> > > > > -
> > > > > -        bus = libusb_get_bus_number(libdev);
> > > > > -        addr = libusb_get_device_address(libdev);
> > > > > -        errstr = spice_usbutil_libusb_strerror(errcode);
> > > > > -        g_warning("cannot get device descriptor for (%p) %d.%d -- %s(%d)",
> > > > > -                  libdev, bus, addr, errstr, errcode);
> > > > > -        return FALSE;
> > > > > -    }
> > > > > -    return TRUE;
> > > > > -}
> > > > > -
> > > > > -#endif // USE_USBREDIR
> > > > > -
> > > > >  /**
> > > > >   * spice_usb_device_get_libusb_device:
> > > > >   * @device: #SpiceUsbDevice to get the descriptor information of
> > > > > @@ -758,32 +707,12 @@ spice_usb_device_get_libusb_device(const SpiceUsbDevice *device G_GNUC_UNUSED)
> > > > >
> > > > >      g_return_val_if_fail(info != NULL, FALSE);
> > > > >
> > > > > -    return info->libdev;
> > > > > +    return spice_usb_backend_device_get_libdev(info->bdev);
> > > > >  #endif
> > > > >      return NULL;
> > > > >  }
> > > > >
> > > > >  #ifdef USE_USBREDIR
> > > > > -static gboolean spice_usb_device_manager_get_libdev_vid_pid(
> > > > > -    libusb_device *libdev, int *vid, int *pid)
> > > > > -{
> > > > > -    struct libusb_device_descriptor desc;
> > > > > -
> > > > > -    g_return_val_if_fail(libdev != NULL, FALSE);
> > > > > -    g_return_val_if_fail(vid != NULL, FALSE);
> > > > > -    g_return_val_if_fail(pid != NULL, FALSE);
> > > > > -
> > > > > -    *vid = *pid = 0;
> > > > > -
> > > > > -    if (!spice_usb_device_manager_get_device_descriptor(libdev, &desc)) {
> > > > > -        return FALSE;
> > > > > -    }
> > > > > -    *vid = desc.idVendor;
> > > > > -    *pid = desc.idProduct;
> > > > > -
> > > > > -    return TRUE;
> > > > > -}
> > > > > -
> > > > >  /* ------------------------------------------------------------------ */
> > > > >  /* callbacks                                                          */
> > > > >
> > > > > @@ -899,31 +828,24 @@ spice_usb_device_manager_find_device(SpiceUsbDeviceManager *self,
> > > > >  }
> > > > >
> > > > >  static void spice_usb_device_manager_add_dev(SpiceUsbDeviceManager  *self,
> > > > > -                                             libusb_device          *libdev)
> > > > > +                                             SpiceUsbBackendDevice  *bdev)
> > > > >  {
> > > > >      SpiceUsbDeviceManagerPrivate *priv = self->priv;
> > > > > -    struct libusb_device_descriptor desc;
> > > > > +    const UsbDeviceInformation *b_info = spice_usb_backend_device_get_info(bdev);
> > > > >      SpiceUsbDevice *device;
> > > > >
> > > > > -    if (!spice_usb_device_manager_get_device_descriptor(libdev, &desc))
> > > > > -        return;
> > > > > -
> > > > > -    /* Skip hubs */
> > > > > -    if (desc.bDeviceClass == LIBUSB_CLASS_HUB)
> > > > > -        return;
> > > > > -
> > > > >      if (spice_usb_device_manager_find_device(self,
> > > > > -                                             libusb_get_bus_number(libdev),
> > > > > -                                             libusb_get_device_address(libdev))) {
> > > > > +                                             b_info->bus,
> > > > > +                                             b_info->address)) {
> > > > >          SPICE_DEBUG("device not added %d:%d %04x:%04x",
> > > > > -                    libusb_get_bus_number(libdev),
> > > > > -                    libusb_get_device_address(libdev),
> > > > > -                    desc.idVendor,
> > > > > -                    desc.idProduct);
> > > > > +                    b_info->bus,
> > > > > +                    b_info->address,
> > > > > +                    b_info->vid,
> > > > > +                    b_info->pid);
> > > > >          return;
> > > > >      }
> > > > >
> > > > > -    device = (SpiceUsbDevice*)spice_usb_device_new(libdev);
> > > > > +    device = (SpiceUsbDevice*)spice_usb_device_new(bdev);
> > > > >      if (!device)
> > > > >          return;
> > > > >
> > > > > @@ -935,10 +857,10 @@ static void spice_usb_device_manager_add_dev(SpiceUsbDeviceManager  *self,
> > > > >          can_redirect = spice_usb_device_manager_can_redirect_device(
> > > > >                                          self, device, NULL);
> > > > >
> > > > > -        auto_ok = usbredirhost_check_device_filter(
> > > > > +        auto_ok = spice_usb_backend_device_check_filter(
> > > > > +                            bdev,
> > > > >                              priv->auto_conn_filter_rules,
> > > > > -                            priv->auto_conn_filter_rules_count,
> > > > > -                            libdev, 0) == 0;
> > > > > +                            priv->auto_conn_filter_rules_count) == 0;
> > > > >
> > > > >          if (can_redirect && auto_ok)
> > > > >              spice_usb_device_manager_connect_device_async(self,
> > > > > @@ -955,15 +877,16 @@ static void spice_usb_device_manager_add_dev(SpiceUsbDeviceManager  *self,
> > > > >  }
> > > > >
> > > > >  static void spice_usb_device_manager_remove_dev(SpiceUsbDeviceManager *self,
> > > > > -                                                guint bus, guint address)
> > > > > +                                                SpiceUsbBackendDevice *bdev)
> > > > >  {
> > > > >      SpiceUsbDeviceManagerPrivate *priv = self->priv;
> > > > >      SpiceUsbDevice *device;
> > > > > +    const UsbDeviceInformation *b_info = spice_usb_backend_device_get_info(bdev);
> > > > >
> > > > > -    device = spice_usb_device_manager_find_device(self, bus, address);
> > > > > +    device = spice_usb_device_manager_find_device(self, b_info->bus, b_info->address);
> > > > >      if (!device) {
> > > > >          g_warning("Could not find USB device to remove " DEV_ID_FMT,
> > > > > -                  bus, address);
> > > > > +                  b_info->bus, b_info->address);
> > > > >          return;
> > > > >      }
> > > > >
> > > > > @@ -982,24 +905,22 @@ static void spice_usb_device_manager_remove_dev(SpiceUsbDeviceManager *self,
> > > > >
> > > > >  #ifdef G_OS_WIN32
> > > > >  static void spice_usb_device_manager_uevent_cb(GUdevClient     *client,
> > > > > -                                               libusb_device   *dev,
> > > > > +                                               SpiceUsbBackendDevice *bdev,
> > > > >                                                 gboolean         add,
> > > > >                                                 gpointer         user_data)
> > > > >  {
> > > > >      SpiceUsbDeviceManager *self = SPICE_USB_DEVICE_MANAGER(user_data);
> > > > >
> > > > >      if (add)
> > > > > -        spice_usb_device_manager_add_dev(self, dev);
> > > > > +        spice_usb_device_manager_add_dev(self, bdev);
> > > > >      else
> > > > > -        spice_usb_device_manager_remove_dev(self,
> > > > > -                                            libusb_get_bus_number(dev),
> > > > > -                                            libusb_get_device_address(dev));
> > > > > +        spice_usb_device_manager_remove_dev(self, bdev);
> > > > >  }
> > > > >  #else
> > > > >  struct hotplug_idle_cb_args {
> > > > >      SpiceUsbDeviceManager *self;
> > > > > -    libusb_device *device;
> > > > > -    libusb_hotplug_event event;
> > > > > +    SpiceUsbBackendDevice *device;
> > > > > +    gboolean               added;
> > > > >  };
> > > > >
> > > > >  static gboolean spice_usb_device_manager_hotplug_idle_cb(gpointer user_data)
> > > > > @@ -1007,36 +928,29 @@ static gboolean spice_usb_device_manager_hotplug_idle_cb(gpointer user_data)
> > > > >      struct hotplug_idle_cb_args *args = user_data;
> > > > >      SpiceUsbDeviceManager *self = SPICE_USB_DEVICE_MANAGER(args->self);
> > > > >
> > > > > -    switch (args->event) {
> > > > > -    case LIBUSB_HOTPLUG_EVENT_DEVICE_ARRIVED:
> > > > > +    if (args->added)
> > > > >          spice_usb_device_manager_add_dev(self, args->device);
> > > > > -        break;
> > > > > -    case LIBUSB_HOTPLUG_EVENT_DEVICE_LEFT:
> > > > > -        spice_usb_device_manager_remove_dev(self,
> > > > > -                                    libusb_get_bus_number(args->device),
> > > > > -                                    libusb_get_device_address(args->device));
> > > > > -        break;
> > > > > -    }
> > > > > -    libusb_unref_device(args->device);
> > > > > +    else
> > > > > +        spice_usb_device_manager_remove_dev(self, args->device);
> > > > > +
> > > > > +    spice_usb_backend_device_unref(args->device);
> > > > >      g_object_unref(self);
> > > > >      g_free(args);
> > > > >      return FALSE;
> > > > >  }
> > > > >
> > > > >  /* Can be called from both the main-thread as well as the event_thread */
> > > > > -static int spice_usb_device_manager_hotplug_cb(libusb_context       *ctx,
> > > > > -                                               libusb_device        *device,
> > > > > -                                               libusb_hotplug_event  event,
> > > > > -                                               void                 *user_data)
> > > > > +static void spice_usb_device_manager_hotplug_cb(void *user_data,
> > > > > +                                                SpiceUsbBackendDevice *dev,
> > > > > +                                                gboolean added)
> > > > >  {
> > > > >      SpiceUsbDeviceManager *self = SPICE_USB_DEVICE_MANAGER(user_data);
> > > > >      struct hotplug_idle_cb_args *args = g_malloc0(sizeof(*args));
> > > > >
> > > > >      args->self = g_object_ref(self);
> > > > > -    args->device = libusb_ref_device(device);
> > > > > -    args->event = event;
> > > > > +    args->device = spice_usb_backend_device_ref(dev);
> > > > > +    args->added = added;
> > > > >      g_idle_add(spice_usb_device_manager_hotplug_idle_cb, args);
> > > > > -    return 0;
> > > > >  }
> > > > >  #endif // USE_USBREDIR
> > > > >
> > > > > @@ -1063,13 +977,9 @@ static gpointer spice_usb_device_manager_usb_ev_thread(gpointer user_data)
> > > > >  {
> > > > >      SpiceUsbDeviceManager *self = SPICE_USB_DEVICE_MANAGER(user_data);
> > > > >      SpiceUsbDeviceManagerPrivate *priv = self->priv;
> > > > > -    int rc;
> > > > >
> > > > >      while (g_atomic_int_get(&priv->event_thread_run)) {
> > > > > -        rc = libusb_handle_events(priv->context);
> > > > > -        if (rc && rc != LIBUSB_ERROR_INTERRUPTED) {
> > > > > -            const char *desc = spice_usbutil_libusb_strerror(rc);
> > > > > -            g_warning("Error handling USB events: %s [%i]", desc, rc);
> > > > > +        if (!spice_usb_backend_handle_events(priv->context)) {
> > > > >              break;
> > > > >          }
> > > > >      }
> > > > > @@ -1120,7 +1030,7 @@ static void spice_usb_device_manager_check_redir_on_connect(
> > > > >      SpiceUsbDeviceManagerPrivate *priv = self->priv;
> > > > >      GTask *task;
> > > > >      SpiceUsbDevice *device;
> > > > > -    libusb_device *libdev;
> > > > > +    SpiceUsbBackendDevice *bdev;
> > > > >      guint i;
> > > > >
> > > > >      if (priv->redirect_on_connect == NULL)
> > > > > @@ -1132,11 +1042,11 @@ static void spice_usb_device_manager_check_redir_on_connect(
> > > > >          if (spice_usb_device_manager_is_device_connected(self, device))
> > > > >              continue;
> > > > >
> > > > > -        libdev = spice_usb_device_manager_device_to_libdev(self, device);
> > > > > -        if (usbredirhost_check_device_filter(
> > > > > +        bdev = spice_usb_device_manager_device_to_bdev(self, device);
> > > > > +        if (spice_usb_backend_device_check_filter(
> > > > > +                            bdev,
> > > > >                              priv->redirect_on_connect_rules,
> > > > > -                            priv->redirect_on_connect_rules_count,
> > > > > -                            libdev, 0) == 0) {
> > > > > +                            priv->redirect_on_connect_rules_count) == 0) {
> > > > >              /* Note: re-uses spice_usb_device_manager_connect_device_async's
> > > > >                 completion handling code! */
> > > > >              task = g_task_new(self,
> > > > > @@ -1146,14 +1056,14 @@ static void spice_usb_device_manager_check_redir_on_connect(
> > > > >
> > > > >              spice_usbredir_channel_connect_device_async(
> > > > >                                 SPICE_USBREDIR_CHANNEL(channel),
> > > > > -                               libdev, device, NULL,
> > > > > +                               bdev, device, NULL,
> > > > >                                 spice_usb_device_manager_channel_connect_cb,
> > > > >                                 task);
> > > > > -            libusb_unref_device(libdev);
> > > > > +            spice_usb_backend_device_unref(bdev);
> > > > >              return; /* We've taken the channel! */
> > > > >          }
> > > > >
> > > > > -        libusb_unref_device(libdev);
> > > > > +        spice_usb_backend_device_unref(bdev);
> > > > >      }
> > > > >  }
> > > > >
> > > > > @@ -1177,8 +1087,8 @@ static SpiceUsbredirChannel *spice_usb_device_manager_get_channel_for_dev(
> > > > >      for (i = 0; i < priv->channels->len; i++) {
> > > > >          SpiceUsbredirChannel *channel = g_ptr_array_index(priv->channels, i);
> > > > >          spice_usbredir_channel_lock(channel);
> > > > > -        libusb_device *libdev = spice_usbredir_channel_get_device(channel);
> > > > > -        if (spice_usb_manager_device_equal_libdev(manager, device, libdev)) {
> > > > > +        SpiceUsbBackendDevice *bdev = spice_usbredir_channel_get_device(channel);
> > > > > +        if (spice_usb_manager_device_equal_bdev(manager, device, bdev)) {
> > > > >              spice_usbredir_channel_unlock(channel);
> > > > >              return channel;
> > > > >          }
> > > > > @@ -1235,9 +1145,9 @@ GPtrArray* spice_usb_device_manager_get_devices_with_filter(
> > > > >          SpiceUsbDevice *device = g_ptr_array_index(priv->devices, i);
> > > > >
> > > > >          if (rules) {
> > > > > -            libusb_device *libdev =
> > > > > -                spice_usb_device_manager_device_to_libdev(self, device);
> > > > > -            if (usbredirhost_check_device_filter(rules, count, libdev, 0) != 0)
> > > > > +            SpiceUsbBackendDevice *bdev =
> > > > > +                spice_usb_device_manager_device_to_bdev(self, device);
> > > > > +            if (spice_usb_backend_device_check_filter(bdev, rules, count) != 0)
> > > > >                  continue;
> > > > >          }
> > > > >          g_ptr_array_add(devices_copy, spice_usb_device_ref(device));
> > > > > @@ -1311,7 +1221,7 @@ _spice_usb_device_manager_connect_device_async(SpiceUsbDeviceManager *self,
> > > > >      task = g_task_new(self, cancellable, callback, user_data);
> > > > >
> > > > >      SpiceUsbDeviceManagerPrivate *priv = self->priv;
> > > > > -    libusb_device *libdev;
> > > > > +    SpiceUsbBackendDevice *bdev;
> > > > >      guint i;
> > > > >
> > > > >      if (spice_usb_device_manager_is_device_connected(self, device)) {
> > > > > @@ -1327,14 +1237,14 @@ _spice_usb_device_manager_connect_device_async(SpiceUsbDeviceManager *self,
> > > > >          if (spice_usbredir_channel_get_device(channel))
> > > > >              continue; /* Skip already used channels */
> > > > >
> > > > > -        libdev = spice_usb_device_manager_device_to_libdev(self, device);
> > > > > +        bdev = spice_usb_device_manager_device_to_bdev(self, device);
> > > > >          spice_usbredir_channel_connect_device_async(channel,
> > > > > -                                 libdev,
> > > > > +                                 bdev,
> > > > >                                   device,
> > > > >                                   cancellable,
> > > > >                                   spice_usb_device_manager_channel_connect_cb,
> > > > >                                   task);
> > > > > -        libusb_unref_device(libdev);
> > > > > +        spice_usb_backend_device_unref(bdev);
> > > > >          return;
> > > > >      }
> > > > >
> > > > > @@ -1596,13 +1506,14 @@ spice_usb_device_manager_can_redirect_device(SpiceUsbDeviceManager  *self,
> > > > >
> > > > >      if (guest_filter_rules) {
> > > > >          gboolean filter_ok;
> > > > > -        libusb_device *libdev;
> > > > > -
> > > > > -        libdev = spice_usb_device_manager_device_to_libdev(self, device);
> > > > > -        filter_ok = (usbredirhost_check_device_filter(
> > > > > -                            guest_filter_rules, guest_filter_rules_count,
> > > > > -                            libdev, 0) == 0);
> > > > > -        libusb_unref_device(libdev);
> > > > > +        SpiceUsbBackendDevice *bdev;
> > > > > +
> > > > > +        bdev = spice_usb_device_manager_device_to_bdev(self, device);
> > > > > +        filter_ok = (spice_usb_backend_device_check_filter(
> > > > > +                            bdev,
> > > > > +                            guest_filter_rules,
> > > > > +                            guest_filter_rules_count) == 0);
> > > > > +        spice_usb_backend_device_unref(bdev);
> > > > >          if (!filter_ok) {
> > > > >              g_set_error_literal(err, SPICE_CLIENT_ERROR, SPICE_CLIENT_ERROR_FAILED,
> > > > >                                  _("Some USB devices are blocked by host policy"));
> > > > > @@ -1696,60 +1607,27 @@ gchar *spice_usb_device_get_description(SpiceUsbDevice *device, const gchar *for
> > > > >
> > > > >
> > > > >  #ifdef USE_USBREDIR
> > > > > -static gboolean probe_isochronous_endpoint(libusb_device *libdev)
> > > > > -{
> > > > > -    struct libusb_config_descriptor *conf_desc;
> > > > > -    gboolean isoc_found = FALSE;
> > > > > -    gint i, j, k;
> > > > > -
> > > > > -    g_return_val_if_fail(libdev != NULL, FALSE);
> > > > > -
> > > > > -    if (libusb_get_active_config_descriptor(libdev, &conf_desc) != 0) {
> > > > > -        g_return_val_if_reached(FALSE);
> > > > > -    }
> > > > > -
> > > > > -    for (i = 0; !isoc_found && i < conf_desc->bNumInterfaces; i++) {
> > > > > -        for (j = 0; !isoc_found && j < conf_desc->interface[i].num_altsetting; j++) {
> > > > > -            for (k = 0; !isoc_found && k < conf_desc->interface[i].altsetting[j].bNumEndpoints;k++) {
> > > > > -                gint attributes = conf_desc->interface[i].altsetting[j].endpoint[k].bmAttributes;
> > > > > -                gint type = attributes & LIBUSB_TRANSFER_TYPE_MASK;
> > > > > -                if (type == LIBUSB_TRANSFER_TYPE_ISOCHRONOUS)
> > > > > -                    isoc_found = TRUE;
> > > > > -            }
> > > > > -        }
> > > > > -    }
> > > > > -
> > > > > -    libusb_free_config_descriptor(conf_desc);
> > > > > -    return isoc_found;
> > > > > -}
> > > > > -
> > > > >  /*
> > > > >   * SpiceUsbDeviceInfo
> > > > >   */
> > > > > -static SpiceUsbDeviceInfo *spice_usb_device_new(libusb_device *libdev)
> > > > > +static SpiceUsbDeviceInfo *spice_usb_device_new(SpiceUsbBackendDevice *bdev)
> > > > >  {
> > > > >      SpiceUsbDeviceInfo *info;
> > > > > -    int vid, pid;
> > > > > -    guint8 bus, addr;
> > > > > -
> > > > > -    g_return_val_if_fail(libdev != NULL, NULL);
> > > > > +    const UsbDeviceInformation *bdev_info;
> > > > >
> > > > > -    bus = libusb_get_bus_number(libdev);
> > > > > -    addr = libusb_get_device_address(libdev);
> > > > > +    g_return_val_if_fail(bdev != NULL, NULL);
> > > > >
> > > > > -    if (!spice_usb_device_manager_get_libdev_vid_pid(libdev, &vid, &pid)) {
> > > > > -        return NULL;
> > > > > -    }
> > > > > +    bdev_info = spice_usb_backend_device_get_info(bdev);
> > > > >
> > > > >      info = g_new0(SpiceUsbDeviceInfo, 1);
> > > > >
> > > > > -    info->busnum  = bus;
> > > > > -    info->devaddr = addr;
> > > > > -    info->vid = vid;
> > > > > -    info->pid = pid;
> > > > > +    info->busnum  = bdev_info->bus;
> > > > > +    info->devaddr = bdev_info->address;
> > > > > +    info->vid = bdev_info->vid;
> > > > > +    info->pid = bdev_info->pid;
> > > > >      info->ref = 1;
> > > > > -    info->isochronous = probe_isochronous_endpoint(libdev);
> > > > > -    info->libdev = libusb_ref_device(libdev);
> > > > > +    info->bdev = spice_usb_backend_device_ref(bdev);
> > > > > +    info->isochronous = spice_usb_backend_device_isoch(bdev);
> > > > >
> > > > >      return info;
> > > > >  }
> > > > > @@ -1885,35 +1763,35 @@ static void spice_usb_device_unref(SpiceUsbDevice *device)
> > > > >
> > > > >      ref_count_is_0 = g_atomic_int_dec_and_test(&info->ref);
> > > > >      if (ref_count_is_0) {
> > > > > -        libusb_unref_device(info->libdev);
> > > > > +        spice_usb_backend_device_unref(info->bdev);
> > > > >          g_free(info);
> > > > >      }
> > > > >  }
> > > > >
> > > > >  static gboolean
> > > > > -spice_usb_manager_device_equal_libdev(SpiceUsbDeviceManager *manager,
> > > > > -                                      SpiceUsbDevice *device,
> > > > > -                                      libusb_device  *libdev)
> > > > > +spice_usb_manager_device_equal_bdev(SpiceUsbDeviceManager *manager,
> > > > > +                                    SpiceUsbDevice *device,
> > > > > +                                    SpiceUsbBackendDevice *bdev)
> > > > >  {
> > > > >      SpiceUsbDeviceInfo *info = (SpiceUsbDeviceInfo *)device;
> > > > >
> > > > > -    if ((device == NULL) || (libdev == NULL))
> > > > > +    if ((device == NULL) || (bdev == NULL))
> > > > >          return FALSE;
> > > > >
> > > > > -    return info->libdev == libdev;
> > > > > +    return info->bdev == bdev;
> > > > >  }
> > > > >
> > > > >  /*
> > > > >   * Caller must libusb_unref_device the libusb_device returned by this function.
> > > > >   * Returns a libusb_device, or NULL upon failure
> > > > >   */
> > > > > -static libusb_device *
> > > > > -spice_usb_device_manager_device_to_libdev(SpiceUsbDeviceManager *self,
> > > > > -                                          SpiceUsbDevice *device)
> > > > > +static SpiceUsbBackendDevice *
> > > > > +spice_usb_device_manager_device_to_bdev(SpiceUsbDeviceManager *self,
> > > > > +                                        SpiceUsbDevice *device)
> > > > >  {
> > > > >      /* Simply return a ref to the cached libdev */
> > > > >      SpiceUsbDeviceInfo *info = (SpiceUsbDeviceInfo *)device;
> > > > >
> > > > > -    return libusb_ref_device(info->libdev);
> > > > > +    return spice_usb_backend_device_ref(info->bdev);
> > > > >  }
> > > > >  #endif /* USE_USBREDIR */
> > > > > diff --git a/src/usbutil.c b/src/usbutil.c
> > > > > index 4aa6ef7..5052ef3 100644
> > > > > --- a/src/usbutil.c
> > > > > +++ b/src/usbutil.c
> > > > > @@ -58,12 +58,6 @@ static GMutex usbids_load_mutex;
> > > > >  static int usbids_vendor_count = 0; /* < 0: failed, 0: empty, > 0: loaded */
> > > > >  static usb_vendor_info *usbids_vendor_info = NULL;
> > > > >
> > > > > -G_GNUC_INTERNAL
> > > > > -const char *spice_usbutil_libusb_strerror(enum libusb_error error_code)
> > > > > -{
> > > > > -    return libusb_error_name(error_code);
> > > > > -}
> > > > > -
> > > > >  #ifdef __linux__
> > > > >  /* <Sigh> libusb does not allow getting the manufacturer and product strings
> > > > >     without opening the device, so grab them directly from sysfs */
> > > > > diff --git a/src/usbutil.h b/src/usbutil.h
> > > > > index de5e92a..d18d688 100644
> > > > > --- a/src/usbutil.h
> > > > > +++ b/src/usbutil.h
> > > > > @@ -24,11 +24,9 @@
> > > > >  #include <glib.h>
> > > > >
> > > > >  #ifdef USE_USBREDIR
> > > > > -#include <libusb.h>
> > > > >
> > > > >  G_BEGIN_DECLS
> > > > >
> > > > > -const char *spice_usbutil_libusb_strerror(enum libusb_error error_code);
> > > > >  void spice_usb_util_get_device_strings(int bus, int address,
> > > > >                                         int vendor_id, int product_id,
> > > > >                                         gchar **manufacturer, gchar **product);
> > > > > diff --git a/src/win-usb-dev.c b/src/win-usb-dev.c
> > > > > index a4dfa78..c2a5115 100644
> > > > > --- a/src/win-usb-dev.c
> > > > > +++ b/src/win-usb-dev.c
> > > > > @@ -23,11 +23,9 @@
> > > > >  #include "config.h"
> > > > >
> > > > >  #include <windows.h>
> > > > > -#include <libusb.h>
> > > > >  #include "win-usb-dev.h"
> > > > >  #include "spice-marshal.h"
> > > > >  #include "spice-util.h"
> > > > > -#include "usbutil.h"
> > > > >
> > > > >  enum {
> > > > >      PROP_0,
> > > > > @@ -35,7 +33,7 @@ enum {
> > > > >  };
> > > > >
> > > > >  struct _GUdevClientPrivate {
> > > > > -    libusb_context *ctx;
> > > > > +    SpiceUsbBackend *ctx;
> > > > >      GList *udev_list;
> > > > >      HWND hwnd;
> > > > >      gboolean redirecting;
> > > > > @@ -68,9 +66,7 @@ static void g_udev_device_print_list(GList *l, const gchar *msg);
> > > > >  #else
> > > > >  static void g_udev_device_print_list(GList *l, const gchar *msg) {}
> > > > >  #endif
> > > > > -static void g_udev_device_print(libusb_device *dev, const gchar *msg);
> > > > > -
> > > > > -static gboolean g_udev_skip_search(libusb_device *dev);
> > > > > +static void g_udev_device_print(SpiceUsbBackendDevice *dev, const gchar *msg);
> > > > >
> > > > >  GQuark g_udev_client_error_quark(void)
> > > > >  {
> > > > > @@ -86,7 +82,7 @@ GUdevClient *g_udev_client_new(void)
> > > > >      return singleton;
> > > > >  }
> > > > >
> > > > > -libusb_context *g_udev_client_get_context(GUdevClient *client)
> > > > > +SpiceUsbBackend *g_udev_client_get_context(GUdevClient *client)
> > > > >  {
> > > > >      return client->priv->ctx;
> > > > >  }
> > > > > @@ -99,8 +95,7 @@ static ssize_t
> > > > >  g_udev_client_list_devices(GUdevClient *self, GList **devs,
> > > > >                             GError **err, const gchar *name)
> > > > >  {
> > > > > -    gssize rc;
> > > > > -    libusb_device **lusb_list, **dev;
> > > > > +    SpiceUsbBackendDevice **lusb_list, **dev;
> > > > >      GUdevClientPrivate *priv;
> > > > >      ssize_t n;
> > > > >
> > > > > @@ -111,43 +106,33 @@ g_udev_client_list_devices(GUdevClient *self, GList **devs,
> > > > >
> > > > >      g_return_val_if_fail(self->priv->ctx != NULL, -3);
> > > > >
> > > > > -    rc = libusb_get_device_list(priv->ctx, &lusb_list);
> > > > > -    if (rc < 0) {
> > > > > -        const char *errstr = spice_usbutil_libusb_strerror(rc);
> > > > > -        g_warning("%s: libusb_get_device_list failed - %s", name, errstr);
> > > > > +    lusb_list = spice_usb_backend_get_device_list(priv->ctx);
> > > > > +    if (!lusb_list) {
> > > > >          g_set_error(err, G_UDEV_CLIENT_ERROR, G_UDEV_CLIENT_LIBUSB_FAILED,
> > > > > -                    "%s: Error getting device list from libusb: %s [%"G_GSSIZE_FORMAT"]",
> > > > > -                    name, errstr, rc);
> > > > > +                    "%s: Error getting USB device list", name);
> > > > >          return -4;
> > > > >      }
> > > > >
> > > > >      n = 0;
> > > > >      for (dev = lusb_list; *dev; dev++) {
> > > > > -        if (g_udev_skip_search(*dev)) {
> > > > > -            continue;
> > > > > -        }
> > > > > -        *devs = g_list_prepend(*devs, libusb_ref_device(*dev));
> > > > > +        *devs = g_list_prepend(*devs, spice_usb_backend_device_ref(*dev));
> > > > >          n++;
> > > > >      }
> > > > > -    libusb_free_device_list(lusb_list, 1);
> > > > > +    spice_usb_backend_free_device_list(lusb_list);
> > > > >
> > > > >      return n;
> > > > >  }
> > > > >
> > > > > -static void unreference_libusb_device(gpointer data)
> > > > > +static void unreference_backend_device(gpointer data)
> > > > >  {
> > > > > -    libusb_unref_device((libusb_device *)data);
> > > > > +    spice_usb_backend_device_unref((SpiceUsbBackendDevice *)data);
> > > > >  }
> > > > >
> > > > >  static void g_udev_client_free_device_list(GList **devs)
> > > > >  {
> > > > >      g_return_if_fail(devs != NULL);
> > > > >      if (*devs) {
> > > > > -        /* the unreference_libusb_device method is required as
> > > > > -         * libusb_unref_device calling convention differs from glib's
> > > > > -         * see 558c967ec
> > > > > -         */
> > > > > -        g_list_free_full(*devs, unreference_libusb_device);
> > > > > +        g_list_free_full(*devs, unreference_backend_device);
> > > > >          *devs = NULL;
> > > > >      }
> > > > >  }
> > > > > @@ -160,7 +145,6 @@ g_udev_client_initable_init(GInitable *initable, GCancellable *cancellable,
> > > > >      GUdevClient *self;
> > > > >      GUdevClientPrivate *priv;
> > > > >      WNDCLASS wcls;
> > > > > -    int rc;
> > > > >
> > > > >      g_return_val_if_fail(G_UDEV_IS_CLIENT(initable), FALSE);
> > > > >      g_return_val_if_fail(cancellable == NULL, FALSE);
> > > > > @@ -168,14 +152,11 @@ g_udev_client_initable_init(GInitable *initable, GCancellable *cancellable,
> > > > >      self = G_UDEV_CLIENT(initable);
> > > > >      priv = self->priv;
> > > > >
> > > > > -    rc = libusb_init(&priv->ctx);
> > > > > -    if (rc < 0) {
> > > > > -        const char *errstr = spice_usbutil_libusb_strerror(rc);
> > > > > -        g_warning("Error initializing USB support: %s [%i]", errstr, rc);
> > > > > -        g_set_error(err, G_UDEV_CLIENT_ERROR, G_UDEV_CLIENT_LIBUSB_FAILED,
> > > > > -                    "Error initializing USB support: %s [%i]", errstr, rc);
> > > > > +    priv->ctx = spice_usb_backend_new(err);
> > > > > +    if (!priv->ctx) {
> > > > >          return FALSE;
> > > > >      }
> > > > > +
> > > > >  #ifdef G_OS_WIN32
> > > > >  #if LIBUSB_API_VERSION >= 0x01000106
> > > > >      libusb_set_option(priv->ctx, LIBUSB_OPTION_USE_USBDK);
> > > > > @@ -248,9 +229,9 @@ static void g_udev_client_finalize(GObject *gobject)
> > > > >      UnregisterClass(G_UDEV_CLIENT_WINCLASS_NAME, NULL);
> > > > >      g_udev_client_free_device_list(&priv->udev_list);
> > > > >
> > > > > -    /* free libusb context initializing by libusb_init() */
> > > > > +    /* free backend context */
> > > > >      g_warn_if_fail(priv->ctx != NULL);
> > > > > -    libusb_exit(priv->ctx);
> > > > > +    spice_usb_backend_delete(priv->ctx);
> > > > >
> > > > >      /* Chain up to the parent class */
> > > > >      if (G_OBJECT_CLASS(g_udev_client_parent_class)->finalize)
> > > > > @@ -340,20 +321,18 @@ static void g_udev_client_class_init(GUdevClientClass *klass)
> > > > >  }
> > > > >
> > > > >  /* comparing bus:addr and vid:pid */
> > > > > -static gint compare_libusb_devices(gconstpointer a, gconstpointer b)
> > > > > +static gint compare_usb_devices(gconstpointer a, gconstpointer b)
> > > > >  {
> > > > > -    libusb_device *a_dev = (libusb_device *)a;
> > > > > -    libusb_device *b_dev = (libusb_device *)b;
> > > > > -    struct libusb_device_descriptor a_desc, b_desc;
> > > > > +    const UsbDeviceInformation *a_info, *b_info;
> > > > >      gboolean same_bus, same_addr, same_vid, same_pid;
> > > > > +    a_info = spice_usb_backend_device_get_info((SpiceUsbBackendDevice *)a);
> > > > > +    b_info = spice_usb_backend_device_get_info((SpiceUsbBackendDevice *)b);
> > > > >
> > > > > -    libusb_get_device_descriptor(a_dev, &a_desc);
> > > > > -    libusb_get_device_descriptor(b_dev, &b_desc);
> > > > >
> > > > > -    same_bus = (libusb_get_bus_number(a_dev) == libusb_get_bus_number(b_dev));
> > > > > -    same_addr = (libusb_get_device_address(a_dev) == libusb_get_device_address(b_dev));
> > > > > -    same_vid = (a_desc.idVendor == b_desc.idVendor);
> > > > > -    same_pid = (a_desc.idProduct == b_desc.idProduct);
> > > > > +    same_bus = (a_info->bus == b_info->bus);
> > > > > +    same_addr = (a_info->address == b_info->address);
> > > > > +    same_vid = (a_info->vid == b_info->vid);
> > > > > +    same_pid = (a_info->pid == b_info->pid);
> > > > >
> > > > >      return (same_bus && same_addr && same_vid && same_pid) ? 0 : -1;
> > > > >  }
> > > > > @@ -363,12 +342,12 @@ static void update_device_list(GUdevClient *self, GList *new_device_list)
> > > > >      GList *dev;
> > > > >
> > > > >      for (dev = g_list_first(new_device_list); dev != NULL; dev = g_list_next(dev)) {
> > > > > -        GList *found = g_list_find_custom(self->priv->udev_list, dev->data, compare_libusb_devices);
> > > > > +        GList *found = g_list_find_custom(self->priv->udev_list, dev->data, compare_usb_devices);
> > > > >          if (found != NULL) {
> > > > >              /* keep old existing libusb_device in the new list, when
> > > > >                 usb-dev-manager will maintain its own list of libusb_device,
> > > > >                 these lists will be completely consistent */
> > > > > -            libusb_device *temp = found->data;
> > > > > +            SpiceUsbBackendDevice *temp = found->data;
> > > > >              found->data = dev->data;
> > > > >              dev->data = temp;
> > > > >          }
> > > > > @@ -386,7 +365,7 @@ static void notify_dev_state_change(GUdevClient *self,
> > > > >      GList *dev;
> > > > >
> > > > >      for (dev = g_list_first(old_list); dev != NULL; dev = g_list_next(dev)) {
> > > > > -        GList *found = g_list_find_custom(new_list, dev->data, compare_libusb_devices);
> > > > > +        GList *found = g_list_find_custom(new_list, dev->data, compare_usb_devices);
> > > > >          if (found == NULL) {
> > > > >              g_udev_device_print(dev->data, add ? "add" : "remove");
> > > > >              g_signal_emit(self, signals[UEVENT_SIGNAL], 0, dev->data, add);
> > > > > @@ -447,29 +426,11 @@ static void g_udev_device_print_list(GList *l, const gchar *msg)
> > > > >  }
> > > > >  #endif
> > > > >
> > > > > -static void g_udev_device_print(libusb_device *dev, const gchar *msg)
> > > > > +static void g_udev_device_print(SpiceUsbBackendDevice *dev, const gchar *msg)
> > > > >  {
> > > > > -    struct libusb_device_descriptor desc;
> > > > > -
> > > > > -    libusb_get_device_descriptor(dev, &desc);
> > > > > +    const UsbDeviceInformation *info = spice_usb_backend_device_get_info(dev);
> > > > >
> > > > >      SPICE_DEBUG("%s: %d.%d 0x%04x:0x%04x class %d", msg,
> > > > > -                libusb_get_bus_number(dev),
> > > > > -                libusb_get_device_address(dev),
> > > > > -                desc.idVendor, desc.idProduct, desc.bDeviceClass);
> > > > > -}
> > > > > -
> > > > > -static gboolean g_udev_skip_search(libusb_device *dev)
> > > > > -{
> > > > > -    gboolean skip;
> > > > > -    uint8_t addr = libusb_get_device_address(dev);
> > > > > -    struct libusb_device_descriptor desc;
> > > > > -
> > > > > -    libusb_get_device_descriptor(dev, &desc);
> > > > > -
> > > > > -    skip = ((addr == 0xff) ||  /* root hub (HCD) */
> > > > > -            (addr == 1) || /* root hub addr */
> > > > > -            (desc.bDeviceClass == LIBUSB_CLASS_HUB) || /* hub*/
> > > > > -            (addr == 0)); /* bad address */
> > > > > -    return skip;
> > > > > +                info->bus, info->address,
> > > > > +                info->vid, info->pid, info->class);
> > > > >  }
> > > > > diff --git a/src/win-usb-dev.h b/src/win-usb-dev.h
> > > > > index b1c0e27..fdfe73a 100644
> > > > > --- a/src/win-usb-dev.h
> > > > > +++ b/src/win-usb-dev.h
> > > > > @@ -23,6 +23,7 @@
> > > > >  #define __WIN_USB_DEV_H__
> > > > >
> > > > >  #include <gio/gio.h>
> > > > > +#include "usb-backend.h"
> > > > >
> > > > >  G_BEGIN_DECLS
> > > > >
> > > > > @@ -51,12 +52,12 @@ struct _GUdevClientClass
> > > > >      GObjectClass parent_class;
> > > > >
> > > > >      /* signals */
> > > > > -    void (*uevent)(GUdevClient *client, libusb_device *device, gboolean add);
> > > > > +    void (*uevent)(GUdevClient *client, SpiceUsbBackendDevice *device, gboolean add);
> > > > >  };
> > > > >
> > > > >  GType g_udev_client_get_type(void) G_GNUC_CONST;
> > > > >  GUdevClient *g_udev_client_new(void);
> > > > > -libusb_context *g_udev_client_get_context(GUdevClient *client);
> > > > > +SpiceUsbBackend *g_udev_client_get_context(GUdevClient *client);
> > > > >  void g_udev_client_report_devices(GUdevClient *client);
> > > > >
> > > > >  GQuark g_udev_client_error_quark(void);
> > >
> > > All other notes has been addressed (I hope).
> > > Incremental fixes you can see at
> > > https://gitlab.freedesktop.org/yuri_benditovich/spice-gtk/commits/backend2-increment
> > >
> > > > > --
> > > > > 2.17.1
> > > > >
> > > > > _______________________________________________
> > > > > Spice-devel mailing list
> > > > > Spice-devel@lists.freedesktop.org
> > > > > https://lists.freedesktop.org/mailman/listinfo/spice-devel

--p2qoumomqa5x63iu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl0lqCUACgkQl9kSPeN6
SE+fcg//ZBOFcLm9Lgh8EwNXhm/ZPqbBUwRDOU7MAH7xvVRL/bXC45y/2uYEivP1
9KdPrAkVA2SoBbu3LfJb+gJG8Nh5EvHIdfVBQJN+lO7kTHUjHr7KqYlxH+dgqTy7
qhI0Yg7jOI/7pRFWx4x3ZNWWsMv0DfYB+JXSafaPapXHVgFUn7G4XE6KbVDeE+zp
C60GdQi4N/1YZK760dhwOII4UtZoFqnaDBCvNm38L7E2Phvfl3HcfAWgwmBgUt6S
3VzLq66ebCkFpDtmiU0QjzIH6URBbVc/pH/UllJGslQSGuRYvEobSq1vgOdgJPfZ
v6gE2EFR9Ft81KvPAToVLwIATHEoFXBPoiL0pYn9XKyH/8y2deBpC1I44RlE9y5B
G2qu2JP+QjY2uVWGhfaOGgSd9fMUzl8eoM9nsxOO6KnRdyZFVrT0nv9O6P/4qEI1
G1co4RR1wqdcBVGMohPptpuY+6wsI6nz0w52TW3Rt4xW7Rdafbd4uArM2D2VIGyU
uL6NSDjgQ+IXgujZbSe3fRoJ8xeIGxHhnIEEvCENbNI/1bh9doJiBfxYPMao5Xnu
3aavu/U+6V5nnUjyCBIvpLNTVV0B0VqT3Zo37X1jcB1RolhK86/PwdWiyIbFhFvD
QsOn+HpaeNI+En/6GZ1C76S9542AdWWMKFxSSJtK614f1B2K6iA=
=OdFy
-----END PGP SIGNATURE-----

--p2qoumomqa5x63iu--

--===============1789154649==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1789154649==--
