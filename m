Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22F0024D14
	for <lists+spice-devel@lfdr.de>; Tue, 21 May 2019 12:45:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9614689202;
	Tue, 21 May 2019 10:45:45 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E16C89202
 for <spice-devel@lists.freedesktop.org>; Tue, 21 May 2019 10:45:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 47D8413A41
 for <spice-devel@lists.freedesktop.org>; Tue, 21 May 2019 10:45:43 +0000 (UTC)
Received: from localhost (unknown [10.32.181.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 711085D961
 for <spice-devel@lists.freedesktop.org>; Tue, 21 May 2019 10:45:42 +0000 (UTC)
Date: Tue, 21 May 2019 10:45:41 +0000
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <20190521104541.3wxlto7erndhvfnv@toolbox>
References: <20190521090552.2310-1-victortoso@redhat.com>
 <20190521090552.2310-4-victortoso@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190521090552.2310-4-victortoso@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Tue, 21 May 2019 10:45:43 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk v1 3/4] usb-redirection: isolate usage
 of libusb and usbredirhost
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
Content-Type: multipart/mixed; boundary="===============0709133245=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0709133245==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ci4egftsozxeu5yz"
Content-Disposition: inline


--ci4egftsozxeu5yz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

So this is the core of the series and we have a lot going on
here. The goal of this email is to start a discussion on current
design and proposed design and what can still be improved.

To be able to provide good enough feedback I had to actually
understand as much as possible, how things work together as we
have so many files, objects and roles for both win and linux
based systems.

What I actually found and discussed a bit with Frediano is that
we could do, in the current code, a bit better on design. But
this patch plans to change some of the design itself so, we have
two possibilities:

 A. refactor existing code and rebase/rework this patch series
 B. get this patch in shape and do more refactor later

I started to play with some possible changes for (A) like [0] and
[1] and if I could spend 100% time on this I might keep going but
it'll likely take good amount of time and testing so I'm inclined
to work with you on (B) approach.

[0] https://lists.freedesktop.org/archives/spice-devel/2019-May/049071.html
[1] https://lists.freedesktop.org/archives/spice-devel/2019-May/049087.html

So, with this introduction in mind, let's go.

On Tue, May 21, 2019 at 09:05:51AM +0000, Victor Toso wrote:
> From: Yuri Benditovich <yuri.benditovich@daynix.com>
>=20
> As a step toward possibility to present emulated USB devices
> to the guest, we remove the knowledge about libusb and
> usbredirhost (which depends on libusb) from all the modules
> and concentrate it in one (usb backend) which presents
> abstract USB objects and internal API to all other modules.

This is a good summary but it does so much in terms of code and
not much is explained here whatsoever.=20

One thing that makes me uncomfortable with current code but also
suggested code can be explained with the following type renames:

[var: context] libusb_context -> SpiceUsbBackend
[var: device ] libusb_device  -> SpiceUsbBackendDevice
[var: host   ] usbredirhost   -> SpiceUsbBackendChannel

Just renaming the types don't make anything simpler, IMHO but
what I really want to discuss is by introducing usb-backend,
can't we reduce some of the complexity, that is, instead of
dealing with 3 types we can interact with some SpiceUsbBacked
type alone that should handle context/usbredirhost per device?

SpiceUsbBackend's types should be handling libusb_context,
libusb_device and usbredir so I take that what channel-usbredir
might need from device can be reduce to some internal APIs and
existing functionality can be dropped instead of handling around
those new wrappers, eg:

* What's the role of spice_usbredir_channel_set_context() with
  this patch in? Comment in line on the function.

I don't find it constructive for me to reply to all parts of this
patch considering that I have doubts on how we should handle the
code design itself so, my suggestion is:

1) If you like my FIXUP, let's merge that and remove one patch :)

2) Let's clarify the future roles of channel-usbredir,
   usb-device-manager and usb-backend types. Note that this kind
   of thing probably must be on commit log.

3) Agree what should be ideal and what we can compromise to do
   later, that is, what are the necessary changes in your patches
   to be merged so we can go back to (A) because I'm not really
   trying to make you refactor all the code yourself with this,
   just asking your help with design itself ;)

> Signed-off-by: Yuri Benditovich <yuri.benditovich@daynix.com>
> ---
>  src/Makefile.am               |   2 +
>  src/channel-usbredir-priv.h   |   9 +-
>  src/channel-usbredir.c        | 216 +++---------
>  src/meson.build               |   2 +
>  src/usb-backend.c             | 622 ++++++++++++++++++++++++++++++++++
>  src/usb-backend.h             | 110 ++++++
>  src/usb-device-manager-priv.h |   1 -
>  src/usb-device-manager.c      | 336 ++++++------------
>  src/usbutil.h                 |   1 -
>  src/win-usb-dev.c             | 103 ++----
>  src/win-usb-dev.h             |   5 +-
>  11 files changed, 929 insertions(+), 478 deletions(-)
>  create mode 100644 src/usb-backend.c
>  create mode 100644 src/usb-backend.h
>=20
> diff --git a/src/Makefile.am b/src/Makefile.am
> index 7a7ecb4..bea4100 100644
> --- a/src/Makefile.am
> +++ b/src/Makefile.am
> @@ -264,6 +264,8 @@ libspice_client_glib_impl_la_SOURCES =3D			\
>  	spice-uri-priv.h				\
>  	usb-device-manager.c				\
>  	usb-device-manager-priv.h			\
> +	usb-backend.c					\
> +	usb-backend.h					\
>  	usbutil.c					\
>  	usbutil.h					\
>  	$(USB_ACL_HELPER_SRCS)				\
> diff --git a/src/channel-usbredir-priv.h b/src/channel-usbredir-priv.h
> index 1ea8a19..b821170 100644
> --- a/src/channel-usbredir-priv.h
> +++ b/src/channel-usbredir-priv.h
> @@ -23,9 +23,8 @@
> =20
>  #ifdef USE_USBREDIR
> =20
> -#include <libusb.h>
> -#include <usbredirfilter.h>
>  #include "spice-client.h"
> +#include "usb-backend.h"
> =20
>  G_BEGIN_DECLS
> =20
> @@ -33,7 +32,7 @@ G_BEGIN_DECLS
>     context should not be destroyed before the last device has been
>     disconnected */
>  void spice_usbredir_channel_set_context(SpiceUsbredirChannel *channel,
> -                                        libusb_context       *context);
> +                                        SpiceUsbBackend      *context);
> =20
>  void spice_usbredir_channel_disconnect_device_async(SpiceUsbredirChannel=
 *channel,
>                                                      GCancellable *cancel=
lable,
> @@ -48,7 +47,7 @@ gboolean spice_usbredir_channel_disconnect_device_finis=
h(SpiceUsbredirChannel *c
>     (through spice_channel_connect()), before calling this. */
>  void spice_usbredir_channel_connect_device_async(
>                                          SpiceUsbredirChannel *channel,
> -                                        libusb_device        *device,
> +                                        SpiceUsbBackendDevice *device,
>                                          SpiceUsbDevice       *spice_devi=
ce,
>                                          GCancellable         *cancellabl=
e,
>                                          GAsyncReadyCallback   callback,
> @@ -60,7 +59,7 @@ gboolean spice_usbredir_channel_connect_device_finish(
> =20
>  void spice_usbredir_channel_disconnect_device(SpiceUsbredirChannel *chan=
nel);
> =20
> -libusb_device *spice_usbredir_channel_get_device(SpiceUsbredirChannel *c=
hannel);
> +SpiceUsbBackendDevice *spice_usbredir_channel_get_device(SpiceUsbredirCh=
annel *channel);
> =20
>  void spice_usbredir_channel_lock(SpiceUsbredirChannel *channel);
> =20
> diff --git a/src/channel-usbredir.c b/src/channel-usbredir.c
> index 079a976..3e0838c 100644
> --- a/src/channel-usbredir.c
> +++ b/src/channel-usbredir.c
> @@ -23,7 +23,6 @@
> =20
>  #ifdef USE_USBREDIR
>  #include <glib/gi18n-lib.h>
> -#include <usbredirhost.h>
>  #ifdef USE_LZ4
>  #include <lz4.h>
>  #endif
> @@ -63,15 +62,12 @@ enum SpiceUsbredirChannelState {
>  };
> =20
>  struct _SpiceUsbredirChannelPrivate {
> -    libusb_device *device;
> +    SpiceUsbBackendDevice *device;
>      SpiceUsbDevice *spice_device;
> -    libusb_context *context;
> -    struct usbredirhost *host;
> +    SpiceUsbBackend *context;
> +    SpiceUsbBackendChannel *host;
>      /* To catch usbredirhost error messages and report them as a GError =
*/
>      GError **catch_error;
> -    /* Data passed from channel handle msg to the usbredirhost read cb */
> -    const uint8_t *read_buf;
> -    int read_buf_size;
>      enum SpiceUsbredirChannelState state;
>  #ifdef USE_POLKIT
>      GTask *task;
> @@ -87,16 +83,9 @@ static void spice_usbredir_channel_dispose(GObject *ob=
j);
>  static void spice_usbredir_channel_finalize(GObject *obj);
>  static void usbredir_handle_msg(SpiceChannel *channel, SpiceMsgIn *in);
> =20
> -static void usbredir_log(void *user_data, int level, const char *msg);
> -static int usbredir_read_callback(void *user_data, uint8_t *data, int co=
unt);
>  static int usbredir_write_callback(void *user_data, uint8_t *data, int c=
ount);
> -static void usbredir_write_flush_callback(void *user_data);
> -static uint64_t usbredir_buffered_output_size_callback(void *user_data);
> -
> -static void *usbredir_alloc_lock(void);
> -static void usbredir_lock_lock(void *user_data);
> -static void usbredir_unlock_lock(void *user_data);
> -static void usbredir_free_lock(void *user_data);
> +static gboolean usbredir_is_channel_ready(void *user_data);
> +static uint64_t usbredir_get_queue_size(void *user_data);
> =20
>  G_DEFINE_TYPE_WITH_PRIVATE(SpiceUsbredirChannel, spice_usbredir_channel,=
 SPICE_TYPE_CHANNEL)
> =20
> @@ -115,7 +104,7 @@ static void _channel_reset_finish(SpiceUsbredirChanne=
l *channel, gboolean migrat
> =20
>      spice_usbredir_channel_lock(channel);
> =20
> -    usbredirhost_close(priv->host);
> +    spice_usb_backend_channel_delete(priv->host);
>      priv->host =3D NULL;
> =20
>      /* Call set_context to re-create the host */
> @@ -221,7 +210,7 @@ static void spice_usbredir_channel_finalize(GObject *=
obj)
>      SpiceUsbredirChannel *channel =3D SPICE_USBREDIR_CHANNEL(obj);
> =20
>      if (channel->priv->host)
> -        usbredirhost_close(channel->priv->host);
> +        spice_usb_backend_channel_delete(channel->priv->host);
>      g_mutex_clear(&channel->priv->device_connect_mutex);
> =20
>      /* Chain up to the parent class */
> @@ -244,30 +233,22 @@ static void channel_set_handlers(SpiceChannelClass =
*klass)
> =20
>  G_GNUC_INTERNAL
>  void spice_usbredir_channel_set_context(SpiceUsbredirChannel *channel,
> -                                        libusb_context       *context)
> +                                        SpiceUsbBackend      *context)
>  {
>      SpiceUsbredirChannelPrivate *priv =3D channel->priv;
> +    SpiceUsbBackendChannelInitData init_data;
> +    init_data.user_data =3D channel;
> +    init_data.get_queue_size =3D usbredir_get_queue_size;
> +    init_data.is_channel_ready =3D usbredir_is_channel_ready;
> +    init_data.write_callback =3D usbredir_write_callback;

You can remove SpiceUsbBackendChannelInitData entirely.
SpiceUsbBackendChannel should rely on SpiceUsbredirChannel by
calling exposed internal APIs. So, better would be to expose
those functions and call them from usb-backend.c

This means that this function will be reduced to something like

 | G_GNUC_INTERNAL
 | void spice_usbredir_channel_set_context(SpiceUsbredirChannel *channel,
 |                                         SpiceUsbBackend      *context)
 | {
 |      SpiceUsbredirChannelPrivate *priv =3D channel->priv;
 |
 |      g_return_if_fail(priv->host =3D=3D NULL);
 |
 |     priv->context =3D context;
 |     priv->host =3D spice_usb_backend_channel_new(context, channel);
 |     if (!priv->host)
 |         g_error("Out of memory initializing redirection support");
 |
 | #ifdef USE_LZ4
 |     spice_channel_set_capability(channel, SPICE_SPICEVMC_CAP_DATA_COMPRE=
SS_LZ4);
 | #endif
 | }

That is, this creates a SpiceUsbBackendChannel and stores it in
channel-usbredir and also stores SpiceUsbBackend (context).

SpiceUsbBackend is basically not used anymore, which is good
thing. All previous libusb_context related code should now be
handled by usb-backend.

So, If libusb_context and usbredir is now handled by usb-backend,
I don't see how this function should be kept in the end.

Each channel-usbredir must be mapped to a single
SpiceUsbBackendChannel or SpiceUsbredirDevice and the type
SpiceUsbBackend itself is not even needed around
channel-usbredir.

Does it make sense to you? Am I missing something here?

Cheers,
Victor

>      g_return_if_fail(priv->host =3D=3D NULL);
> =20
>      priv->context =3D context;
> -    priv->host =3D usbredirhost_open_full(
> -                                   context, NULL,
> -                                   usbredir_log,
> -                                   usbredir_read_callback,
> -                                   usbredir_write_callback,
> -                                   usbredir_write_flush_callback,
> -                                   usbredir_alloc_lock,
> -                                   usbredir_lock_lock,
> -                                   usbredir_unlock_lock,
> -                                   usbredir_free_lock,
> -                                   channel, PACKAGE_STRING,
> -                                   spice_util_get_debug() ? usbredirpars=
er_debug : usbredirparser_warning,
> -                                   usbredirhost_fl_write_cb_owns_buffer);
> +    priv->host =3D spice_usb_backend_channel_new(context, &init_data);
>      if (!priv->host)
> -        g_error("Out of memory allocating usbredirhost");
> +        g_error("Out of memory initializing redirection support");
> =20
> -    usbredirhost_set_buffered_output_size_cb(priv->host, usbredir_buffer=
ed_output_size_callback);
>  #ifdef USE_LZ4
>      spice_channel_set_capability(channel, SPICE_SPICEVMC_CAP_DATA_COMPRE=
SS_LZ4);
>  #endif
> @@ -278,8 +259,6 @@ static gboolean spice_usbredir_channel_open_device(
>  {
>      SpiceUsbredirChannelPrivate *priv =3D channel->priv;
>      SpiceSession *session;
> -    libusb_device_handle *handle =3D NULL;
> -    int rc, status;
>      SpiceUsbDeviceManager *manager;
> =20
>      g_return_val_if_fail(priv->state =3D=3D STATE_DISCONNECTED
> @@ -288,19 +267,11 @@ static gboolean spice_usbredir_channel_open_device(
>  #endif
>                           , FALSE);
> =20
> -    rc =3D libusb_open(priv->device, &handle);
> -    if (rc !=3D 0) {
> -        g_set_error(err, SPICE_CLIENT_ERROR, SPICE_CLIENT_ERROR_FAILED,
> -                    "Could not open usb device: %s [%i]",
> -                    libusb_error_name(rc), rc);
> -        return FALSE;
> -    }
> -
> -    priv->catch_error =3D err;
> -    status =3D usbredirhost_set_device(priv->host, handle);
> -    priv->catch_error =3D NULL;
> -    if (status !=3D usb_redir_success) {
> -        g_return_val_if_fail(err =3D=3D NULL || *err !=3D NULL, FALSE);
> +    if (!spice_usb_backend_channel_attach(priv->host, priv->device, err)=
) {
> +        if (*err =3D=3D NULL) {
> +            g_set_error(err, SPICE_CLIENT_ERROR, SPICE_CLIENT_ERROR_FAIL=
ED,
> +                "Error attaching device: (no error information)");
> +        }
>          return FALSE;
>      }
> =20
> @@ -310,7 +281,7 @@ static gboolean spice_usbredir_channel_open_device(
> =20
>      priv->usb_device_manager =3D g_object_ref(manager);
>      if (!spice_usb_device_manager_start_event_listening(priv->usb_device=
_manager, err)) {
> -        usbredirhost_set_device(priv->host, NULL);
> +        spice_usb_backend_channel_detach(priv->host);
>          return FALSE;
>      }
> =20
> @@ -341,8 +312,7 @@ static void spice_usbredir_channel_open_acl_cb(
>          spice_usbredir_channel_open_device(channel, &err);
>      }
>      if (err) {
> -        libusb_unref_device(priv->device);
> -        priv->device =3D NULL;
> +        g_clear_pointer(&priv->device, spice_usb_backend_device_unref);
>          g_boxed_free(spice_usb_device_get_type(), priv->spice_device);
>          priv->spice_device =3D NULL;
>          priv->state  =3D STATE_DISCONNECTED;
> @@ -373,8 +343,7 @@ _open_device_async_cb(GTask *task,
>      spice_usbredir_channel_lock(channel);
> =20
>      if (!spice_usbredir_channel_open_device(channel, &err)) {
> -        libusb_unref_device(priv->device);
> -        priv->device =3D NULL;
> +        g_clear_pointer(&priv->device, spice_usb_backend_device_unref);
>          g_boxed_free(spice_usb_device_get_type(), priv->spice_device);
>          priv->spice_device =3D NULL;
>      }
> @@ -392,13 +361,16 @@ _open_device_async_cb(GTask *task,
>  G_GNUC_INTERNAL
>  void spice_usbredir_channel_connect_device_async(
>                                            SpiceUsbredirChannel *channel,
> -                                          libusb_device        *device,
> +                                          SpiceUsbBackendDevice *device,
>                                            SpiceUsbDevice       *spice_de=
vice,
>                                            GCancellable         *cancella=
ble,
>                                            GAsyncReadyCallback   callback,
>                                            gpointer              user_dat=
a)
>  {
>      SpiceUsbredirChannelPrivate *priv =3D channel->priv;
> +#ifdef USE_POLKIT
> +    const UsbDeviceInformation *info =3D spice_usb_backend_device_get_in=
fo(device);
> +#endif
>      GTask *task;
> =20
>      g_return_if_fail(SPICE_IS_USBREDIR_CHANNEL(channel));
> @@ -425,7 +397,7 @@ void spice_usbredir_channel_connect_device_async(
>          goto done;
>      }
> =20
> -    priv->device =3D libusb_ref_device(device);
> +    priv->device =3D spice_usb_backend_device_ref(device);
>      priv->spice_device =3D g_boxed_copy(spice_usb_device_get_type(),
>                                        spice_device);
>  #ifdef USE_POLKIT
> @@ -435,8 +407,8 @@ void spice_usbredir_channel_connect_device_async(
>      g_object_set(spice_channel_get_session(SPICE_CHANNEL(channel)),
>                   "inhibit-keyboard-grab", TRUE, NULL);
>      spice_usb_acl_helper_open_acl_async(priv->acl_helper,
> -                                        libusb_get_bus_number(device),
> -                                        libusb_get_device_address(device=
),
> +                                        info->bus,
> +                                        info->address,
>                                          cancellable,
>                                          spice_usbredir_channel_open_acl_=
cb,
>                                          channel);
> @@ -494,9 +466,8 @@ void spice_usbredir_channel_disconnect_device(SpiceUs=
bredirChannel *channel)
>          g_clear_object(&priv->usb_device_manager);
> =20
>          /* This also closes the libusb handle we passed from open_device=
 */
> -        usbredirhost_set_device(priv->host, NULL);
> -        libusb_unref_device(priv->device);
> -        priv->device =3D NULL;
> +        spice_usb_backend_channel_detach(priv->host);
> +        g_clear_pointer(&priv->device, spice_usb_backend_device_unref);
>          g_boxed_free(spice_usb_device_get_type(), priv->spice_device);
>          priv->spice_device =3D NULL;
>          priv->state  =3D STATE_DISCONNECTED;
> @@ -547,7 +518,7 @@ spice_usbredir_channel_get_spice_usb_device(SpiceUsbr=
edirChannel *channel)
>  #endif
> =20
>  G_GNUC_INTERNAL
> -libusb_device *spice_usbredir_channel_get_device(SpiceUsbredirChannel *c=
hannel)
> +SpiceUsbBackendDevice *spice_usbredir_channel_get_device(SpiceUsbredirCh=
annel *channel)
>  {
>      return channel->priv->device;
>  }
> @@ -562,83 +533,24 @@ void spice_usbredir_channel_get_guest_filter(
> =20
>      g_return_if_fail(priv->host !=3D NULL);
> =20
> -    usbredirhost_get_guest_filter(priv->host, rules_ret, rules_count_ret=
);
> +    spice_usb_backend_channel_get_guest_filter(priv->host, rules_ret, ru=
les_count_ret);
>  }
> =20
>  /* ------------------------------------------------------------------ */
>  /* callbacks (any context)                                            */
> =20
> -static uint64_t usbredir_buffered_output_size_callback(void *user_data)
> +static uint64_t usbredir_get_queue_size(void *user_data)
>  {
>      g_return_val_if_fail(SPICE_IS_USBREDIR_CHANNEL(user_data), 0);
>      return spice_channel_get_queue_size(SPICE_CHANNEL(user_data));
>  }
> =20
> -/* Note that this function must be re-entrant safe, as it can get called
> -   from both the main thread as well as from the usb event handling thre=
ad */
> -static void usbredir_write_flush_callback(void *user_data)
> +static gboolean usbredir_is_channel_ready(void *user_data)
>  {
>      SpiceUsbredirChannel *channel =3D SPICE_USBREDIR_CHANNEL(user_data);
>      SpiceUsbredirChannelPrivate *priv =3D channel->priv;
> -
> -    if (spice_channel_get_state(SPICE_CHANNEL(channel)) !=3D
> -            SPICE_CHANNEL_STATE_READY)
> -        return;
> -
> -    if (!priv->host)
> -        return;
> -
> -    usbredirhost_write_guest_data(priv->host);
> -}
> -
> -static void usbredir_log(void *user_data, int level, const char *msg)
> -{
> -    SpiceUsbredirChannel *channel =3D user_data;
> -    SpiceUsbredirChannelPrivate *priv =3D channel->priv;
> -
> -    if (priv->catch_error && level =3D=3D usbredirparser_error) {
> -        CHANNEL_DEBUG(channel, "%s", msg);
> -        /* Remove "usbredirhost: " prefix from usbredirhost messages */
> -        if (strncmp(msg, "usbredirhost: ", 14) =3D=3D 0)
> -            g_set_error_literal(priv->catch_error, SPICE_CLIENT_ERROR,
> -                                SPICE_CLIENT_ERROR_FAILED, msg + 14);
> -        else
> -            g_set_error_literal(priv->catch_error, SPICE_CLIENT_ERROR,
> -                                SPICE_CLIENT_ERROR_FAILED, msg);
> -        return;
> -    }
> -
> -    switch (level) {
> -        case usbredirparser_error:
> -            g_critical("%s", msg);
> -            break;
> -        case usbredirparser_warning:
> -            g_warning("%s", msg);
> -            break;
> -        default:
> -            CHANNEL_DEBUG(channel, "%s", msg);
> -    }
> -}
> -
> -static int usbredir_read_callback(void *user_data, uint8_t *data, int co=
unt)
> -{
> -    SpiceUsbredirChannel *channel =3D user_data;
> -    SpiceUsbredirChannelPrivate *priv =3D channel->priv;
> -
> -    count =3D MIN(priv->read_buf_size, count);
> -
> -    if (count !=3D 0) {
> -        memcpy(data, priv->read_buf, count);
> -    }
> -
> -    priv->read_buf_size -=3D count;
> -    if (priv->read_buf_size) {
> -        priv->read_buf +=3D count;
> -    } else {
> -        priv->read_buf =3D NULL;
> -    }
> -
> -    return count;
> +    return priv->host !=3D NULL &&
> +           spice_channel_get_state(SPICE_CHANNEL(channel)) =3D=3D SPICE_=
CHANNEL_STATE_READY;
>  }
> =20
>  static void usbredir_free_write_cb_data(uint8_t *data, void *user_data)
> @@ -646,7 +558,7 @@ static void usbredir_free_write_cb_data(uint8_t *data=
, void *user_data)
>      SpiceUsbredirChannel *channel =3D user_data;
>      SpiceUsbredirChannelPrivate *priv =3D channel->priv;
> =20
> -    usbredirhost_free_write_buffer(priv->host, data);
> +    spice_usb_backend_return_write_data(priv->host, data);
>  }
> =20
>  #ifdef USE_LZ4
> @@ -718,7 +630,7 @@ static int usbredir_write_callback(void *user_data, u=
int8_t *data, int count)
> =20
>  #ifdef USE_LZ4
>      if (try_write_compress_LZ4(channel, data, count)) {
> -        usbredirhost_free_write_buffer(channel->priv->host, data);
> +        spice_usb_backend_return_write_data(channel->priv->host, data);
>          return count;
>      }
>  #endif
> @@ -731,15 +643,6 @@ static int usbredir_write_callback(void *user_data, =
uint8_t *data, int count)
>      return count;
>  }
> =20
> -static void *usbredir_alloc_lock(void) {
> -    GMutex *mutex;
> -
> -    mutex =3D g_new0(GMutex, 1);
> -    g_mutex_init(mutex);
> -
> -    return mutex;
> -}
> -
>  G_GNUC_INTERNAL
>  void spice_usbredir_channel_lock(SpiceUsbredirChannel *channel)
>  {
> @@ -752,25 +655,6 @@ void spice_usbredir_channel_unlock(SpiceUsbredirChan=
nel *channel)
>      g_mutex_unlock(&channel->priv->device_connect_mutex);
>  }
> =20
> -static void usbredir_lock_lock(void *user_data) {
> -    GMutex *mutex =3D user_data;
> -
> -    g_mutex_lock(mutex);
> -}
> -
> -static void usbredir_unlock_lock(void *user_data) {
> -    GMutex *mutex =3D user_data;
> -
> -    g_mutex_unlock(mutex);
> -}
> -
> -static void usbredir_free_lock(void *user_data) {
> -    GMutex *mutex =3D user_data;
> -
> -    g_mutex_clear(mutex);
> -    g_free(mutex);
> -}
> -
>  /* ---------------------------------------------------------------------=
 */
> =20
>  typedef struct device_error_data {
> @@ -809,7 +693,7 @@ static void spice_usbredir_channel_up(SpiceChannel *c)
> =20
>      g_return_if_fail(priv->host !=3D NULL);
>      /* Flush any pending writes */
> -    usbredirhost_write_guest_data(priv->host);
> +    spice_usb_backend_channel_up(priv->host);
>  }
> =20
>  static int try_handle_compressed_msg(SpiceMsgCompressedData *compressed_=
data_msg,
> @@ -859,26 +743,20 @@ static void usbredir_handle_msg(SpiceChannel *c, Sp=
iceMsgIn *in)
> =20
>      g_return_if_fail(priv->host !=3D NULL);
> =20
> -    /* No recursion allowed! */
> -    g_return_if_fail(priv->read_buf =3D=3D NULL);
> -
>      if (spice_msg_in_type(in) =3D=3D SPICE_MSG_SPICEVMC_COMPRESSED_DATA)=
 {
>          SpiceMsgCompressedData *compressed_data_msg =3D spice_msg_in_par=
sed(in);
>          if (try_handle_compressed_msg(compressed_data_msg, &buf, &size))=
 {
> -            priv->read_buf_size =3D size;
> -            priv->read_buf =3D buf;
> +            /* uncompressed ok*/
>          } else {
> -            r =3D usbredirhost_read_parse_error;
> +            r =3D USB_REDIR_ERROR_READ_PARSE;
>          }
>      } else { /* Regular SPICE_MSG_SPICEVMC_DATA msg */
>          buf =3D spice_msg_in_raw(in, &size);
> -        priv->read_buf_size =3D size;
> -        priv->read_buf =3D buf;
>      }
> =20
>      spice_usbredir_channel_lock(channel);
>      if (r =3D=3D 0)
> -        r =3D usbredirhost_read_guest_data(priv->host);
> +        r =3D spice_usb_backend_provide_read_data(priv->host, buf, size);
>      if (r !=3D 0) {
>          SpiceUsbDevice *spice_device =3D priv->spice_device;
>          device_error_data err_data;
> @@ -892,16 +770,16 @@ static void usbredir_handle_msg(SpiceChannel *c, Sp=
iceMsgIn *in)
> =20
>          desc =3D spice_usb_device_get_description(spice_device, NULL);
>          switch (r) {
> -        case usbredirhost_read_parse_error:
> +        case USB_REDIR_ERROR_READ_PARSE:
>              err =3D g_error_new(SPICE_CLIENT_ERROR, SPICE_CLIENT_ERROR_F=
AILED,
>                                _("usbredir protocol parse error for %s"),=
 desc);
>              break;
> -        case usbredirhost_read_device_rejected:
> +        case USB_REDIR_ERROR_DEV_REJECTED:
>              err =3D g_error_new(SPICE_CLIENT_ERROR,
>                                SPICE_CLIENT_ERROR_USB_DEVICE_REJECTED,
>                                _("%s rejected by host"), desc);
>              break;
> -        case usbredirhost_read_device_lost:
> +        case USB_REDIR_ERROR_DEV_LOST:
>              err =3D g_error_new(SPICE_CLIENT_ERROR,
>                                SPICE_CLIENT_ERROR_USB_DEVICE_LOST,
>                                _("%s disconnected (fatal IO error)"), des=
c);
> diff --git a/src/meson.build b/src/meson.build
> index 5365f05..a51d0a9 100644
> --- a/src/meson.build
> +++ b/src/meson.build
> @@ -121,6 +121,8 @@ spice_client_glib_sources =3D [
>    'usb-device-manager-priv.h',
>    'usbutil.c',
>    'usbutil.h',
> +  'usb-backend.c',
> +  'usb-backend.h',
>    'vmcstream.c',
>    'vmcstream.h',
>  ]
> diff --git a/src/usb-backend.c b/src/usb-backend.c
> new file mode 100644
> index 0000000..675eb62
> --- /dev/null
> +++ b/src/usb-backend.c
> @@ -0,0 +1,622 @@
> +/* -*- Mode: C; c-basic-offset: 4; indent-tabs-mode: nil -*- */
> +/*
> +    Copyright (C) 2012-2018 Red Hat, Inc.
> +
> +    Red Hat Authors:
> +    Yuri Benditovich<ybendito@redhat.com>
> +    Hans de Goede <hdegoede@redhat.com>
> +
> +    This library is free software; you can redistribute it and/or
> +    modify it under the terms of the GNU Lesser General Public
> +    License as published by the Free Software Foundation; either
> +    version 2.1 of the License, or (at your option) any later version.
> +
> +    This library is distributed in the hope that it will be useful,
> +    but WITHOUT ANY WARRANTY; without even the implied warranty of
> +    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> +    Lesser General Public License for more details.
> +
> +    You should have received a copy of the GNU Lesser General Public
> +    License along with this library; if not, see <http://www.gnu.org/lic=
enses/>.
> +*/
> +
> +#include "config.h"
> +
> +#ifdef USE_USBREDIR
> +
> +#include <glib-object.h>
> +#include <inttypes.h>
> +#include <gio/gio.h>
> +#include <errno.h>
> +#include <libusb.h>
> +#include <string.h>
> +#include <fcntl.h>
> +#include "usbredirhost.h"
> +#include "usbredirparser.h"
> +#include "spice-util.h"
> +#include "usb-backend.h"
> +
> +//#define LOUD_DEBUG SPICE_DEBUG
> +#define LOUD_DEBUG(x, ...)
> +
> +struct _SpiceUsbBackendDevice
> +{
> +    libusb_device *libusb_device;
> +    gint ref_count;
> +    SpiceUsbBackendChannel *attached_to;
> +    UsbDeviceInformation device_info;
> +};
> +
> +struct _SpiceUsbBackend
> +{
> +    libusb_context *libusb_context;
> +    usb_hot_plug_callback hotplug_callback;
> +    void *hotplug_user_data;
> +    libusb_hotplug_callback_handle hotplug_handle;
> +};
> +
> +struct _SpiceUsbBackendChannel
> +{
> +    struct usbredirhost *usbredirhost;
> +    uint8_t *read_buf;
> +    int read_buf_size;
> +    struct usbredirfilter_rule *rules;
> +    int rules_count;
> +    SpiceUsbBackendDevice *attached;
> +    SpiceUsbBackendChannelInitData channel_data;
> +    GError **error;
> +};
> +
> +// lock functions for usbredirhost and usbredirparser
> +static void *usbredir_alloc_lock(void) {
> +    GMutex *mutex;
> +
> +    mutex =3D g_new0(GMutex, 1);
> +    g_mutex_init(mutex);
> +
> +    return mutex;
> +}
> +
> +static void usbredir_free_lock(void *user_data) {
> +    GMutex *mutex =3D user_data;
> +
> +    g_mutex_clear(mutex);
> +    g_free(mutex);
> +}
> +
> +static void usbredir_lock_lock(void *user_data) {
> +    GMutex *mutex =3D user_data;
> +
> +    g_mutex_lock(mutex);
> +}
> +
> +static void usbredir_unlock_lock(void *user_data) {
> +    GMutex *mutex =3D user_data;
> +
> +    g_mutex_unlock(mutex);
> +}
> +
> +gboolean spice_usb_backend_device_isoch(SpiceUsbBackendDevice *dev)
> +{
> +    libusb_device *libdev =3D dev->libusb_device;
> +    struct libusb_config_descriptor *conf_desc;
> +    gboolean isoc_found =3D FALSE;
> +    gint i, j, k;
> +
> +    g_return_val_if_fail(libdev !=3D NULL, 0);
> +
> +    if (libusb_get_active_config_descriptor(libdev, &conf_desc) !=3D 0) {
> +        g_return_val_if_reached(0);
> +    }
> +
> +    for (i =3D 0; !isoc_found && i < conf_desc->bNumInterfaces; i++) {
> +        for (j =3D 0; !isoc_found && j < conf_desc->interface[i].num_alt=
setting; j++) {
> +            for (k =3D 0; !isoc_found && k < conf_desc->interface[i].alt=
setting[j].bNumEndpoints;k++) {
> +                gint attributes =3D conf_desc->interface[i].altsetting[j=
].endpoint[k].bmAttributes;
> +                gint type =3D attributes & LIBUSB_TRANSFER_TYPE_MASK;
> +                if (type =3D=3D LIBUSB_TRANSFER_TYPE_ISOCHRONOUS)
> +                    isoc_found =3D TRUE;
> +            }
> +        }
> +    }
> +
> +    libusb_free_config_descriptor(conf_desc);
> +    return isoc_found;
> +}
> +
> +static gboolean fill_usb_info(SpiceUsbBackendDevice *bdev)
> +{
> +    UsbDeviceInformation *info =3D &bdev->device_info;
> +
> +    struct libusb_device_descriptor desc;
> +    libusb_device *libdev =3D bdev->libusb_device;
> +    libusb_get_device_descriptor(libdev, &desc);
> +    info->bus =3D libusb_get_bus_number(libdev);
> +    info->address =3D libusb_get_device_address(libdev);
> +    if (info->address =3D=3D 0xff || /* root hub (HCD) */
> +        info->address <=3D 1 || /* root hub or bad address */
> +        (desc.bDeviceClass =3D=3D LIBUSB_CLASS_HUB) /*hub*/) {
> +        return FALSE;
> +    }
> +
> +    info->vid =3D desc.idVendor;
> +    info->pid =3D desc.idProduct;
> +    info->class =3D desc.bDeviceClass;
> +    info->subclass =3D desc.bDeviceSubClass;
> +    info->protocol =3D desc.bDeviceProtocol;
> +
> +    return TRUE;
> +}
> +
> +static SpiceUsbBackendDevice *allocate_backend_device(libusb_device *lib=
dev)
> +{
> +    SpiceUsbBackendDevice *dev =3D g_new0(SpiceUsbBackendDevice, 1);
> +    dev->ref_count =3D 1;
> +    dev->libusb_device =3D libdev;
> +    if (!fill_usb_info(dev)) {
> +        g_free(dev);
> +        dev =3D NULL;
> +    }
> +    return dev;
> +}
> +
> +/* Note that this function must be re-entrant safe, as it can get called
> +from both the main thread as well as from the usb event handling thread =
*/
> +static void usbredir_write_flush_callback(void *user_data)
> +{
> +    SpiceUsbBackendChannel *ch =3D user_data;
> +    gboolean ok =3D ch->channel_data.is_channel_ready(ch->channel_data.u=
ser_data);
> +    if (ok && ch->usbredirhost) {
> +        SPICE_DEBUG("%s ch %p -> usbredirhost", __FUNCTION__, ch);
> +        usbredirhost_write_guest_data(ch->usbredirhost);
> +    } else {
> +        SPICE_DEBUG("%s ch %p (not ready)", __FUNCTION__, ch);
> +    }
> +}
> +
> +SpiceUsbBackend *spice_usb_backend_new(GError **error)
> +{
> +    int rc;
> +    SpiceUsbBackend *be;
> +    SPICE_DEBUG("%s >>", __FUNCTION__);
> +    be =3D (SpiceUsbBackend *)g_new0(SpiceUsbBackend, 1);
> +    rc =3D libusb_init(&be->libusb_context);
> +    if (rc < 0) {
> +        const char *desc =3D libusb_error_name(rc);
> +        g_warning("Error initializing LIBUSB support: %s [%i]", desc, rc=
);
> +        g_set_error(error, SPICE_CLIENT_ERROR, SPICE_CLIENT_ERROR_FAILED,
> +            "Error initializing LIBUSB support: %s [%i]", desc, rc);
> +        g_free(be);
> +        be =3D NULL;
> +    } else {
> +#ifdef G_OS_WIN32
> +#if LIBUSB_API_VERSION >=3D 0x01000106
> +    libusb_set_option(be->libusb_context, LIBUSB_OPTION_USE_USBDK);
> +#endif
> +#endif
> +    }
> +    SPICE_DEBUG("%s <<", __FUNCTION__);
> +    return be;
> +}
> +
> +gboolean spice_usb_backend_handle_events(SpiceUsbBackend *be)
> +{
> +    SPICE_DEBUG("%s >>", __FUNCTION__);
> +    gboolean ok =3D FALSE;
> +    if (be->libusb_context) {
> +        int res =3D libusb_handle_events(be->libusb_context);
> +        ok =3D res =3D=3D 0;
> +        if (res && res !=3D LIBUSB_ERROR_INTERRUPTED) {
> +            const char *desc =3D libusb_error_name(res);
> +            g_warning("Error handling USB events: %s [%i]", desc, res);
> +            ok =3D FALSE;
> +        }
> +    }
> +    SPICE_DEBUG("%s << %d", __FUNCTION__, ok);
> +    return ok;
> +}
> +
> +static int LIBUSB_CALL hotplug_callback(libusb_context *ctx,
> +                                        libusb_device *device,
> +                                        libusb_hotplug_event event,
> +                                        void *user_data)
> +{
> +    SpiceUsbBackend *be =3D (SpiceUsbBackend *)user_data;
> +    if (be->hotplug_callback) {
> +        SpiceUsbBackendDevice *dev;
> +        gboolean val =3D event =3D=3D LIBUSB_HOTPLUG_EVENT_DEVICE_ARRIVE=
D;
> +        dev =3D allocate_backend_device(device);
> +        if (dev) {
> +            SPICE_DEBUG("created dev %p, usblib dev %p", dev, device);
> +            libusb_ref_device(device);
> +            be->hotplug_callback(be->hotplug_user_data, dev, val);
> +            spice_usb_backend_device_unref(dev);
> +        }
> +    }
> +    return 0;
> +}
> +
> +void spice_usb_backend_deregister_hotplug(SpiceUsbBackend *be)
> +{
> +    g_return_if_fail(be !=3D NULL);
> +    if (be->hotplug_handle) {
> +        libusb_hotplug_deregister_callback(be->libusb_context, be->hotpl=
ug_handle);
> +        be->hotplug_handle =3D 0;
> +    }
> +    be->hotplug_callback =3D NULL;
> +}
> +
> +gboolean spice_usb_backend_register_hotplug(SpiceUsbBackend *be,
> +                                            void *user_data,
> +                                            usb_hot_plug_callback proc)
> +{
> +    int rc;
> +    g_return_val_if_fail(be !=3D NULL, FALSE);
> +
> +    be->hotplug_callback =3D proc;
> +    be->hotplug_user_data =3D user_data;
> +    rc =3D libusb_hotplug_register_callback(be->libusb_context,
> +        LIBUSB_HOTPLUG_EVENT_DEVICE_ARRIVED | LIBUSB_HOTPLUG_EVENT_DEVIC=
E_LEFT,
> +        LIBUSB_HOTPLUG_ENUMERATE, LIBUSB_HOTPLUG_MATCH_ANY,
> +        LIBUSB_HOTPLUG_MATCH_ANY, LIBUSB_HOTPLUG_MATCH_ANY,
> +        hotplug_callback, be, &be->hotplug_handle);
> +    if (rc !=3D LIBUSB_SUCCESS) {
> +        const char *desc =3D libusb_error_name(rc);
> +        g_warning("Error initializing USB hotplug support: %s [%i]", des=
c, rc);
> +        be->hotplug_callback =3D NULL;
> +        return FALSE;
> +    }
> +    return TRUE;
> +}
> +
> +void spice_usb_backend_delete(SpiceUsbBackend *be)
> +{
> +    g_return_if_fail(be !=3D NULL);
> +    SPICE_DEBUG("%s >>", __FUNCTION__);
> +    if (be->libusb_context) {
> +        libusb_exit(be->libusb_context);
> +    }
> +    g_free(be);
> +    SPICE_DEBUG("%s <<", __FUNCTION__);
> +}
> +
> +SpiceUsbBackendDevice **spice_usb_backend_get_device_list(SpiceUsbBacken=
d *be)
> +{
> +    LOUD_DEBUG("%s >>", __FUNCTION__);
> +    libusb_device **devlist =3D NULL, **dev;
> +    SpiceUsbBackendDevice *d, **list;
> +
> +    int n =3D 0, index;
> +
> +    if (be && be->libusb_context) {
> +        libusb_get_device_list(be->libusb_context, &devlist);
> +    }
> +
> +    // add all the libusb device that not present in our list
> +    for (dev =3D devlist; dev && *dev; dev++) {
> +        n++;
> +    }
> +
> +    list =3D g_new0(SpiceUsbBackendDevice*, n + 1);
> +
> +    index =3D 0;
> +
> +    for (dev =3D devlist; dev && *dev; dev++) {
> +        d =3D allocate_backend_device(*dev);
> +        if (!d) {
> +            libusb_unref_device(*dev);
> +        } else {
> +            SPICE_DEBUG("created dev %p, usblib dev %p", d, *dev);
> +            list[index++] =3D d;
> +        }
> +    }
> +
> +    if (devlist) {
> +        libusb_free_device_list(devlist, 0);
> +    }
> +
> +    LOUD_DEBUG("%s <<", __FUNCTION__);
> +    return list;
> +}
> +
> +gboolean spice_usb_backend_device_is_hub(SpiceUsbBackendDevice *dev)
> +{
> +    return dev->device_info.class =3D=3D LIBUSB_CLASS_HUB;
> +}
> +
> +const UsbDeviceInformation* spice_usb_backend_device_get_info(SpiceUsbBa=
ckendDevice *dev)
> +{
> +    return &dev->device_info;
> +}
> +
> +gconstpointer spice_usb_backend_device_get_libdev(SpiceUsbBackendDevice =
*dev)
> +{
> +    return dev->libusb_device;
> +}
> +
> +void spice_usb_backend_free_device_list(SpiceUsbBackendDevice **devlist)
> +{
> +    LOUD_DEBUG("%s >>", __FUNCTION__);
> +    SpiceUsbBackendDevice **dev;
> +    for (dev =3D devlist; *dev; dev++) {
> +        SpiceUsbBackendDevice *d =3D *dev;
> +        spice_usb_backend_device_unref(d);
> +    }
> +    g_free(devlist);
> +    LOUD_DEBUG("%s <<", __FUNCTION__);
> +}
> +
> +SpiceUsbBackendDevice *spice_usb_backend_device_ref(SpiceUsbBackendDevic=
e *dev)
> +{
> +    LOUD_DEBUG("%s >> %p", __FUNCTION__, dev);
> +    g_atomic_int_inc(&dev->ref_count);
> +    return dev;
> +}
> +
> +void spice_usb_backend_device_unref(SpiceUsbBackendDevice *dev)
> +{
> +    LOUD_DEBUG("%s >> %p(%d)", __FUNCTION__, dev, dev->ref_count);
> +    if (g_atomic_int_dec_and_test(&dev->ref_count)) {
> +        libusb_unref_device(dev->libusb_device);
> +        LOUD_DEBUG("%s freeing %p (libusb %p)", __FUNCTION__, dev, dev->=
libusb_device);
> +        g_free(dev);
> +    }
> +}
> +
> +int spice_usb_backend_device_check_filter(
> +    SpiceUsbBackendDevice *dev,
> +    const struct usbredirfilter_rule *rules,
> +    int count)
> +{
> +    return usbredirhost_check_device_filter(
> +        rules, count, dev->libusb_device, 0);
> +}
> +
> +static int usbredir_read_callback(void *user_data, uint8_t *data, int co=
unt)
> +{
> +    SpiceUsbBackendChannel *ch =3D user_data;
> +
> +    count =3D MIN(ch->read_buf_size, count);
> +
> +    if (count !=3D 0) {
> +        memcpy(data, ch->read_buf, count);
> +    }
> +
> +    ch->read_buf_size -=3D count;
> +    if (ch->read_buf_size) {
> +        ch->read_buf +=3D count;
> +    }
> +    else {
> +        ch->read_buf =3D NULL;
> +    }
> +    SPICE_DEBUG("%s ch %p, %d bytes", __FUNCTION__, ch, count);
> +
> +    return count;
> +}
> +
> +static const char *strip_usbredir_prefix(const char *msg)
> +{
> +    if (strncmp(msg, "usbredirhost: ", 14) =3D=3D 0) {
> +        msg +=3D 14;
> +    }
> +    return msg;
> +}
> +
> +static void channel_error(SpiceUsbBackendChannel *ch, const char *msg)
> +{
> +    if (!ch->error)
> +        return;
> +    g_set_error_literal(ch->error, SPICE_CLIENT_ERROR, SPICE_CLIENT_ERRO=
R_FAILED, msg);
> +    ch->error =3D NULL;
> +}
> +
> +static void usbredir_log(void *user_data, int level, const char *msg)
> +{
> +    SpiceUsbBackendChannel *ch =3D (SpiceUsbBackendChannel *)user_data;
> +    const char *stripped_msg =3D strip_usbredir_prefix(msg);
> +    switch (level) {
> +    case usbredirparser_error:
> +        g_critical("%s", msg);
> +        channel_error(ch, stripped_msg);
> +        break;
> +    case usbredirparser_warning:
> +        g_warning("%s", msg);
> +        channel_error(ch, stripped_msg);
> +        break;
> +    default:
> +        break;
> +    }
> +}
> +
> +static int usbredir_write_callback(void *user_data, uint8_t *data, int c=
ount)
> +{
> +    SpiceUsbBackendChannel *ch =3D user_data;
> +    int res;
> +    SPICE_DEBUG("%s ch %p, %d bytes", __FUNCTION__, ch, count);
> +    res =3D ch->channel_data.write_callback(ch->channel_data.user_data, =
data, count);
> +    return res;
> +}
> +
> +static uint64_t usbredir_buffered_output_size_callback(void *user_data)
> +{
> +    SpiceUsbBackendChannel *ch =3D user_data;
> +    return ch->channel_data.get_queue_size(ch->channel_data.user_data);
> +}
> +
> +int spice_usb_backend_provide_read_data(SpiceUsbBackendChannel *ch, uint=
8_t *data, int count)
> +{
> +    int res =3D 0;
> +
> +    g_return_val_if_fail(ch->read_buf =3D=3D NULL, USB_REDIR_ERROR_READ_=
PARSE);
> +
> +    ch->read_buf =3D data;
> +    ch->read_buf_size =3D count;
> +    if (ch->usbredirhost) {
> +        res =3D usbredirhost_read_guest_data(ch->usbredirhost);
> +    } else {
> +        res =3D USB_REDIR_ERROR_IO;
> +    }
> +    switch (res)
> +    {
> +    case usbredirhost_read_io_error:
> +        res =3D USB_REDIR_ERROR_IO;
> +        break;
> +    case usbredirhost_read_parse_error:
> +        res =3D USB_REDIR_ERROR_READ_PARSE;
> +        break;
> +    case usbredirhost_read_device_rejected:
> +        res =3D USB_REDIR_ERROR_DEV_REJECTED;
> +        break;
> +    case usbredirhost_read_device_lost:
> +        res =3D USB_REDIR_ERROR_DEV_LOST;
> +        break;
> +    }
> +    SPICE_DEBUG("%s ch %p, %d bytes, res %d", __FUNCTION__, ch, count, r=
es);
> +
> +    return res;
> +}
> +
> +void spice_usb_backend_return_write_data(SpiceUsbBackendChannel *ch, voi=
d *data)
> +{
> +    if (ch->usbredirhost) {
> +        SPICE_DEBUG("%s ch %p", __FUNCTION__, ch);
> +        usbredirhost_free_write_buffer(ch->usbredirhost, data);
> +    } else {
> +        SPICE_DEBUG("%s ch %p - NOBODY TO CALL", __FUNCTION__, ch);
> +    }
> +}
> +
> +gboolean spice_usb_backend_channel_attach(SpiceUsbBackendChannel *ch,
> +                                          SpiceUsbBackendDevice *dev,
> +                                          GError **error)
> +{
> +    SPICE_DEBUG("%s >> ch %p, dev %p (was attached %p)", __FUNCTION__, c=
h, dev, ch->attached);
> +    gboolean ok =3D FALSE;
> +    if (!dev) {
> +        return ok;
> +    }
> +
> +    libusb_device_handle *handle =3D NULL;
> +    int rc =3D libusb_open(dev->libusb_device, &handle);
> +    ok =3D rc =3D=3D 0;
> +    if (ok) {
> +        ch->error =3D error;
> +        rc =3D usbredirhost_set_device(ch->usbredirhost, handle);
> +        if (rc) {
> +            SPICE_DEBUG("%s ch %p, dev %p usbredirhost error %d", __FUNC=
TION__, ch, dev, rc);
> +            ok =3D FALSE;
> +        } else {
> +            ch->attached =3D dev;
> +            dev->attached_to =3D ch;
> +        }
> +        ch->error =3D NULL;
> +    } else {
> +        const char *desc =3D libusb_error_name(rc);
> +        g_set_error(error, SPICE_CLIENT_ERROR, SPICE_CLIENT_ERROR_FAILED,
> +           "Error libusb_open: %s [%i]", desc, rc);
> +    }
> +
> +    return ok;
> +}
> +
> +void spice_usb_backend_channel_detach(SpiceUsbBackendChannel *ch)
> +{
> +    SPICE_DEBUG("%s >> ch %p, was attached %p", __FUNCTION__, ch, ch->at=
tached);
> +    if (!ch->attached) {
> +        SPICE_DEBUG("%s: nothing to detach", __FUNCTION__);
> +        return;
> +    }
> +    if (ch->usbredirhost) {
> +        // it will call libusb_close internally
> +        usbredirhost_set_device(ch->usbredirhost, NULL);
> +    }
> +    SPICE_DEBUG("%s ch %p, detach done", __FUNCTION__, ch);
> +    ch->attached->attached_to =3D NULL;
> +    ch->attached =3D NULL;
> +}
> +
> +SpiceUsbBackendChannel *spice_usb_backend_channel_new(SpiceUsbBackend *b=
e,
> +                                                      const SpiceUsbBack=
endChannelInitData *init_data)
> +{
> +    SpiceUsbBackendChannel *ch =3D g_new0(SpiceUsbBackendChannel, 1);
> +    SPICE_DEBUG("%s >>", __FUNCTION__);
> +    ch->channel_data =3D *init_data;
> +    if (be->libusb_context) {
> +        ch->usbredirhost =3D usbredirhost_open_full(
> +            be->libusb_context,
> +            NULL,
> +            usbredir_log,
> +            usbredir_read_callback,
> +            usbredir_write_callback,
> +            usbredir_write_flush_callback,
> +            usbredir_alloc_lock,
> +            usbredir_lock_lock,
> +            usbredir_unlock_lock,
> +            usbredir_free_lock,
> +            ch, PACKAGE_STRING,
> +            spice_util_get_debug() ? usbredirparser_debug : usbredirpars=
er_warning,
> +            usbredirhost_fl_write_cb_owns_buffer);
> +        g_warn_if_fail(ch->usbredirhost !=3D NULL);
> +    }
> +    if (ch->usbredirhost) {
> +        usbredirhost_set_buffered_output_size_cb(ch->usbredirhost, usbre=
dir_buffered_output_size_callback);
> +    } else {
> +        g_free(ch);
> +        ch =3D NULL;
> +    }
> +
> +    SPICE_DEBUG("%s << %p", __FUNCTION__, ch);
> +    return ch;
> +}
> +
> +void spice_usb_backend_channel_up(SpiceUsbBackendChannel *ch)
> +{
> +    SPICE_DEBUG("%s %p, host %p", __FUNCTION__, ch, ch->usbredirhost);
> +    if (ch->usbredirhost) {
> +        usbredirhost_write_guest_data(ch->usbredirhost);
> +    }
> +}
> +
> +void spice_usb_backend_channel_delete(SpiceUsbBackendChannel *ch)
> +{
> +    SPICE_DEBUG("%s >> %p", __FUNCTION__, ch);
> +    if (ch->usbredirhost) {
> +        usbredirhost_close(ch->usbredirhost);
> +    }
> +
> +    if (ch->rules) {
> +        g_free(ch->rules);
> +    }
> +
> +    g_free(ch);
> +    SPICE_DEBUG("%s << %p", __FUNCTION__, ch);
> +}
> +
> +void spice_usb_backend_channel_get_guest_filter(
> +    SpiceUsbBackendChannel *ch,
> +    const struct usbredirfilter_rule **r,
> +    int *count)
> +{
> +    int i;
> +    *r =3D NULL;
> +    *count =3D 0;
> +    if (ch->usbredirhost) {
> +        usbredirhost_get_guest_filter(ch->usbredirhost, r, count);
> +    }
> +    if (*r =3D=3D NULL) {
> +        *r =3D ch->rules;
> +        *count =3D ch->rules_count;
> +    }
> +
> +    if (*count) {
> +        SPICE_DEBUG("%s ch %p: %d filters", __FUNCTION__, ch, *count);
> +    }
> +    for (i =3D 0; i < *count; i++) {
> +        const struct usbredirfilter_rule *ra =3D *r;
> +        SPICE_DEBUG("%s class %d, %X:%X",
> +            ra[i].allow ? "allowed" : "denied", ra[i].device_class,
> +            (uint32_t)ra[i].vendor_id, (uint32_t)ra[i].product_id);
> +    }
> +}
> +
> +#endif // USB_REDIR
> diff --git a/src/usb-backend.h b/src/usb-backend.h
> new file mode 100644
> index 0000000..9137916
> --- /dev/null
> +++ b/src/usb-backend.h
> @@ -0,0 +1,110 @@
> +/* -*- Mode: C; c-basic-offset: 4; indent-tabs-mode: nil -*- */
> +/*
> +    Copyright (C) 2018 Red Hat, Inc.
> +
> +    Red Hat Authors:
> +    Yuri Benditovich<ybendito@redhat.com>
> +
> +    This library is free software; you can redistribute it and/or
> +    modify it under the terms of the GNU Lesser General Public
> +    License as published by the Free Software Foundation; either
> +    version 2.1 of the License, or (at your option) any later version.
> +
> +    This library is distributed in the hope that it will be useful,
> +    but WITHOUT ANY WARRANTY; without even the implied warranty of
> +    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> +    Lesser General Public License for more details.
> +
> +    You should have received a copy of the GNU Lesser General Public
> +    License along with this library; if not, see <http://www.gnu.org/lic=
enses/>.
> +*/
> +
> +#ifndef __SPICE_USB_BACKEND_H__
> +#define __SPICE_USB_BACKEND_H__
> +
> +#include <usbredirfilter.h>
> +#include "usb-device-manager.h"
> +
> +G_BEGIN_DECLS
> +
> +typedef struct _SpiceUsbBackend SpiceUsbBackend;
> +typedef struct _SpiceUsbBackendDevice SpiceUsbBackendDevice;
> +typedef struct _SpiceUsbBackendChannel SpiceUsbBackendChannel;
> +
> +typedef struct UsbDeviceInformation
> +{
> +    uint16_t bus;
> +    uint16_t address;
> +    uint16_t vid;
> +    uint16_t pid;
> +    uint8_t class;
> +    uint8_t subclass;
> +    uint8_t protocol;
> +} UsbDeviceInformation;
> +
> +typedef struct SpiceUsbBackendChannelInitData
> +{
> +    void *user_data;
> +    int (*write_callback)(void *user_data, uint8_t *data, int count);
> +    gboolean (*is_channel_ready)(void *user_data);
> +    uint64_t (*get_queue_size)(void *user_data);
> +} SpiceUsbBackendChannelInitData;
> +
> +typedef void(*usb_hot_plug_callback)(void *user_data, SpiceUsbBackendDev=
ice *dev, gboolean added);
> +
> +enum {
> +    USB_REDIR_ERROR_IO =3D -1,
> +    USB_REDIR_ERROR_READ_PARSE =3D -2,
> +    USB_REDIR_ERROR_DEV_REJECTED =3D -3,
> +    USB_REDIR_ERROR_DEV_LOST =3D -4,
> +};
> +
> +/* Spice USB backend API */
> +/* sets error on failure */
> +SpiceUsbBackend *spice_usb_backend_new(GError **error);
> +void spice_usb_backend_delete(SpiceUsbBackend *context);
> +
> +/*
> +returns newly-allocated null-terminated list of
> +SpiceUsbBackendDevice pointers.
> +The caller must call spice_usb_backend_free_device_list
> +after it finishes list processing
> +*/
> +SpiceUsbBackendDevice **spice_usb_backend_get_device_list(SpiceUsbBacken=
d *backend);
> +void spice_usb_backend_free_device_list(SpiceUsbBackendDevice **devlist);
> +gboolean spice_usb_backend_handle_events(SpiceUsbBackend *be);
> +gboolean spice_usb_backend_register_hotplug(SpiceUsbBackend *be,
> +                                            void *user_data,
> +                                            usb_hot_plug_callback proc);
> +void spice_usb_backend_deregister_hotplug(SpiceUsbBackend *be);
> +
> +/* Spice USB backend device API */
> +gboolean spice_usb_backend_device_is_hub(SpiceUsbBackendDevice *dev);
> +SpiceUsbBackendDevice *spice_usb_backend_device_ref(SpiceUsbBackendDevic=
e *dev);
> +void spice_usb_backend_device_unref(SpiceUsbBackendDevice *dev);
> +gconstpointer spice_usb_backend_device_get_libdev(SpiceUsbBackendDevice =
*dev);
> +const UsbDeviceInformation* spice_usb_backend_device_get_info(SpiceUsbBa=
ckendDevice *dev);
> +gboolean spice_usb_backend_device_isoch(SpiceUsbBackendDevice *dev);
> +/* returns 0 if the device passes the filter */
> +int spice_usb_backend_device_check_filter(SpiceUsbBackendDevice *dev,
> +                                          const struct usbredirfilter_ru=
le *rules, int count);
> +
> +/* Spice USB backend channel API */
> +SpiceUsbBackendChannel *spice_usb_backend_channel_new(SpiceUsbBackend *c=
ontext,
> +                                                      const SpiceUsbBack=
endChannelInitData *init_data);
> +void spice_usb_backend_channel_delete(SpiceUsbBackendChannel *ch);
> +/* returns 0 for success or error code */
> +int spice_usb_backend_provide_read_data(SpiceUsbBackendChannel *ch, uint=
8_t *data, int count);
> +gboolean spice_usb_backend_channel_attach(SpiceUsbBackendChannel *ch,
> +                                          SpiceUsbBackendDevice *dev,
> +                                          GError **error);
> +void spice_usb_backend_channel_detach(SpiceUsbBackendChannel *ch);
> +void spice_usb_backend_channel_up(SpiceUsbBackendChannel *ch);
> +void spice_usb_backend_channel_get_guest_filter(SpiceUsbBackendChannel *=
ch,
> +                                                const struct usbredirfil=
ter_rule  **rules,
> +                                                int *count);
> +void spice_usb_backend_return_write_data(SpiceUsbBackendChannel *ch, voi=
d *data);
> +
> +G_END_DECLS
> +
> +#endif
> diff --git a/src/usb-device-manager-priv.h b/src/usb-device-manager-priv.h
> index 83884d7..39aaf2f 100644
> --- a/src/usb-device-manager-priv.h
> +++ b/src/usb-device-manager-priv.h
> @@ -32,7 +32,6 @@ void spice_usb_device_manager_stop_event_listening(
>      SpiceUsbDeviceManager *manager);
> =20
>  #ifdef USE_USBREDIR
> -#include <libusb.h>
>  void spice_usb_device_manager_device_error(
>      SpiceUsbDeviceManager *manager, SpiceUsbDevice *device, GError *err);
> =20
> diff --git a/src/usb-device-manager.c b/src/usb-device-manager.c
> index c1df977..2bee55d 100644
> --- a/src/usb-device-manager.c
> +++ b/src/usb-device-manager.c
> @@ -25,15 +25,14 @@
> =20
>  #ifdef USE_USBREDIR
>  #include <errno.h>
> -#include <libusb.h>
> =20
>  #ifdef G_OS_WIN32
> +#include <windows.h>
>  #include "usbdk_api.h"
>  #include "win-usb-dev.h"
>  #endif
> =20
>  #include "channel-usbredir-priv.h"
> -#include "usbredirhost.h"
>  #include "usbutil.h"
>  #endif
> =20
> @@ -94,7 +93,7 @@ struct _SpiceUsbDeviceManagerPrivate {
>      gchar *auto_connect_filter;
>      gchar *redirect_on_connect;
>  #ifdef USE_USBREDIR
> -    libusb_context *context;
> +    SpiceUsbBackend *context;
>      int event_listeners;
>      GThread *event_thread;
>      gint event_thread_run;
> @@ -106,7 +105,6 @@ struct _SpiceUsbDeviceManagerPrivate {
>      GUdevClient *udev;
>  #else
>      gboolean redirecting; /* Handled by GUdevClient in the gudev case */
> -    libusb_hotplug_callback_handle hp_handle;
>  #endif
>  #ifdef G_OS_WIN32
>      usbdk_api_wrapper     *usbdk_api;
> @@ -136,7 +134,7 @@ typedef struct _SpiceUsbDeviceInfo {
>      guint16 vid;
>      guint16 pid;
>      gboolean isochronous;
> -    libusb_device *libdev;
> +    SpiceUsbBackendDevice *bdev;
>      gint    ref;
>  } SpiceUsbDeviceInfo;
> =20
> @@ -149,19 +147,18 @@ static void channel_event(SpiceChannel *channel, Sp=
iceChannelEvent event,
>                            gpointer user_data);
>  #ifdef G_OS_WIN32
>  static void spice_usb_device_manager_uevent_cb(GUdevClient     *client,
> -                                               libusb_device   *udevice,
> +                                               SpiceUsbBackendDevice *ud=
evice,
>                                                 gboolean         add,
>                                                 gpointer         user_dat=
a);
>  #else
> -static int spice_usb_device_manager_hotplug_cb(libusb_context       *ctx,
> -                                               libusb_device        *dev=
ice,
> -                                               libusb_hotplug_event  eve=
nt,
> -                                               void                 *dat=
a);
> +static void spice_usb_device_manager_hotplug_cb(void *user_data,
> +                                                SpiceUsbBackendDevice *d=
ev,
> +                                                gboolean added);
>  #endif
>  static void spice_usb_device_manager_check_redir_on_connect(
>      SpiceUsbDeviceManager *self, SpiceChannel *channel);
> =20
> -static SpiceUsbDeviceInfo *spice_usb_device_new(libusb_device *libdev);
> +static SpiceUsbDeviceInfo *spice_usb_device_new(SpiceUsbBackendDevice *b=
dev);
>  static SpiceUsbDevice *spice_usb_device_ref(SpiceUsbDevice *device);
>  static void spice_usb_device_unref(SpiceUsbDevice *device);
> =20
> @@ -170,12 +167,12 @@ static void _usbdk_hider_update(SpiceUsbDeviceManag=
er *manager);
>  static void _usbdk_hider_clear(SpiceUsbDeviceManager *manager);
>  #endif
> =20
> -static gboolean spice_usb_manager_device_equal_libdev(SpiceUsbDeviceMana=
ger *manager,
> -                                                      SpiceUsbDevice *de=
vice,
> -                                                      libusb_device *lib=
dev);
> -static libusb_device *
> -spice_usb_device_manager_device_to_libdev(SpiceUsbDeviceManager *self,
> -                                          SpiceUsbDevice *device);
> +static gboolean spice_usb_manager_device_equal_bdev(SpiceUsbDeviceManage=
r *manager,
> +                                                    SpiceUsbDevice *devi=
ce,
> +                                                    SpiceUsbBackendDevic=
e *bdev);
> +static SpiceUsbBackendDevice *
> +spice_usb_device_manager_device_to_bdev(SpiceUsbDeviceManager *self,
> +                                        SpiceUsbDevice *device);
> =20
>  static void
>  _spice_usb_device_manager_connect_device_async(SpiceUsbDeviceManager *se=
lf,
> @@ -277,14 +274,9 @@ static gboolean spice_usb_device_manager_initable_in=
it(GInitable  *initable,
>      GList *it;
> =20
>  #ifndef G_OS_WIN32
> -    int rc;
>      /* Initialize libusb */
> -    rc =3D libusb_init(&priv->context);
> -    if (rc < 0) {
> -        const char *desc =3D libusb_error_name(rc);
> -        g_warning("Error initializing USB support: %s [%i]", desc, rc);
> -        g_set_error(err, SPICE_CLIENT_ERROR, SPICE_CLIENT_ERROR_FAILED,
> -                    "Error initializing USB support: %s [%i]", desc, rc);
> +    priv->context =3D spice_usb_backend_new(err);
> +    if (!priv->context) {
>          return FALSE;
>      }
>  #endif
> @@ -302,16 +294,8 @@ static gboolean spice_usb_device_manager_initable_in=
it(GInitable  *initable,
>      /* Do coldplug (detection of already connected devices) */
>      g_udev_client_report_devices(priv->udev);
>  #else
> -    rc =3D libusb_hotplug_register_callback(priv->context,
> -        LIBUSB_HOTPLUG_EVENT_DEVICE_ARRIVED | LIBUSB_HOTPLUG_EVENT_DEVIC=
E_LEFT,
> -        LIBUSB_HOTPLUG_ENUMERATE, LIBUSB_HOTPLUG_MATCH_ANY,
> -        LIBUSB_HOTPLUG_MATCH_ANY, LIBUSB_HOTPLUG_MATCH_ANY,
> -        spice_usb_device_manager_hotplug_cb, self, &priv->hp_handle);
> -    if (rc < 0) {
> -        const char *desc =3D libusb_error_name(rc);
> -        g_warning("Error initializing USB hotplug support: %s [%i]", des=
c, rc);
> -        g_set_error(err, SPICE_CLIENT_ERROR, SPICE_CLIENT_ERROR_FAILED,
> -                  "Error initializing USB hotplug support: %s [%i]", des=
c, rc);
> +    if (!spice_usb_backend_register_hotplug(priv->context, self,
> +                                            spice_usb_device_manager_hot=
plug_cb)) {
>          return FALSE;
>      }
>      spice_usb_device_manager_start_event_listening(self, NULL);
> @@ -342,21 +326,17 @@ static void spice_usb_device_manager_dispose(GObjec=
t *gobject)
>      SpiceUsbDeviceManagerPrivate *priv =3D self->priv;
> =20
>  #ifndef G_OS_WIN32
> -    if (priv->hp_handle) {
> -        spice_usb_device_manager_stop_event_listening(self);
> -        if (g_atomic_int_get(&priv->event_thread_run)) {
> -            /* Force termination of the event thread even if there were =
some
> -             * mismatched spice_usb_device_manager_{start,stop}_event_li=
stening
> -             * calls. Otherwise, the usb event thread will be leaked, an=
d will
> -             * try to use the libusb context we destroy in finalize(), w=
hich would
> -             * cause a crash */
> -             g_warn_if_reached();
> -             g_atomic_int_set(&priv->event_thread_run, FALSE);
> -        }
> -        /* This also wakes up the libusb_handle_events() in the event_th=
read */
> -        libusb_hotplug_deregister_callback(priv->context, priv->hp_handl=
e);
> -        priv->hp_handle =3D 0;
> +    spice_usb_device_manager_stop_event_listening(self);
> +    if (g_atomic_int_get(&priv->event_thread_run)) {
> +        /* Force termination of the event thread even if there were some
> +         * mismatched spice_usb_device_manager_{start,stop}_event_listen=
ing
> +         * calls. Otherwise, the usb event thread will be leaked, and wi=
ll
> +         * try to use the libusb context we destroy in finalize(), which=
 would
> +         * cause a crash */
> +        g_warn_if_reached();
> +        g_atomic_int_set(&priv->event_thread_run, FALSE);
>      }
> +    spice_usb_backend_deregister_hotplug(priv->context);
>  #endif
>      if (priv->event_thread) {
>          g_warn_if_fail(g_atomic_int_get(&priv->event_thread_run) =3D=3D =
FALSE);
> @@ -386,7 +366,7 @@ static void spice_usb_device_manager_finalize(GObject=
 *gobject)
>      g_return_if_fail(priv->event_thread =3D=3D NULL);
>  #ifndef G_OS_WIN32
>      if (priv->context)
> -        libusb_exit(priv->context);
> +        spice_usb_backend_delete(priv->context);
>  #endif
>      free(priv->auto_conn_filter_rules);
>      free(priv->redirect_on_connect_rules);
> @@ -709,37 +689,6 @@ static void spice_usb_device_manager_class_init(Spic=
eUsbDeviceManagerClass *klas
>                       G_TYPE_ERROR);
>  }
> =20
> -#ifdef USE_USBREDIR
> -
> -/* ------------------------------------------------------------------ */
> -/* gudev / libusb Helper functions                                    */
> -
> -static gboolean spice_usb_device_manager_get_device_descriptor(
> -    libusb_device *libdev,
> -    struct libusb_device_descriptor *desc)
> -{
> -    int errcode;
> -    const gchar *errstr;
> -
> -    g_return_val_if_fail(libdev !=3D NULL, FALSE);
> -    g_return_val_if_fail(desc   !=3D NULL, FALSE);
> -
> -    errcode =3D libusb_get_device_descriptor(libdev, desc);
> -    if (errcode < 0) {
> -        int bus, addr;
> -
> -        bus =3D libusb_get_bus_number(libdev);
> -        addr =3D libusb_get_device_address(libdev);
> -        errstr =3D libusb_error_name(errcode);
> -        g_warning("cannot get device descriptor for (%p) %d.%d -- %s(%d)=
",
> -                  libdev, bus, addr, errstr, errcode);
> -        return FALSE;
> -    }
> -    return TRUE;
> -}
> -
> -#endif // USE_USBREDIR
> -
>  /**
>   * spice_usb_device_get_libusb_device:
>   * @device: #SpiceUsbDevice to get the descriptor information of
> @@ -758,32 +707,12 @@ spice_usb_device_get_libusb_device(const SpiceUsbDe=
vice *device G_GNUC_UNUSED)
> =20
>      g_return_val_if_fail(info !=3D NULL, FALSE);
> =20
> -    return info->libdev;
> +    return spice_usb_backend_device_get_libdev(info->bdev);
>  #endif
>      return NULL;
>  }
> =20
>  #ifdef USE_USBREDIR
> -static gboolean spice_usb_device_manager_get_libdev_vid_pid(
> -    libusb_device *libdev, int *vid, int *pid)
> -{
> -    struct libusb_device_descriptor desc;
> -
> -    g_return_val_if_fail(libdev !=3D NULL, FALSE);
> -    g_return_val_if_fail(vid !=3D NULL, FALSE);
> -    g_return_val_if_fail(pid !=3D NULL, FALSE);
> -
> -    *vid =3D *pid =3D 0;
> -
> -    if (!spice_usb_device_manager_get_device_descriptor(libdev, &desc)) {
> -        return FALSE;
> -    }
> -    *vid =3D desc.idVendor;
> -    *pid =3D desc.idProduct;
> -
> -    return TRUE;
> -}
> -
>  /* ------------------------------------------------------------------ */
>  /* callbacks                                                          */
> =20
> @@ -899,31 +828,24 @@ spice_usb_device_manager_find_device(SpiceUsbDevice=
Manager *self,
>  }
> =20
>  static void spice_usb_device_manager_add_dev(SpiceUsbDeviceManager  *sel=
f,
> -                                             libusb_device          *lib=
dev)
> +                                             SpiceUsbBackendDevice  *bde=
v)
>  {
>      SpiceUsbDeviceManagerPrivate *priv =3D self->priv;
> -    struct libusb_device_descriptor desc;
> +    const UsbDeviceInformation *b_info =3D spice_usb_backend_device_get_=
info(bdev);
>      SpiceUsbDevice *device;
> =20
> -    if (!spice_usb_device_manager_get_device_descriptor(libdev, &desc))
> -        return;
> -
> -    /* Skip hubs */
> -    if (desc.bDeviceClass =3D=3D LIBUSB_CLASS_HUB)
> -        return;
> -
>      if (spice_usb_device_manager_find_device(self,
> -                                             libusb_get_bus_number(libde=
v),
> -                                             libusb_get_device_address(l=
ibdev))) {
> +                                             b_info->bus,
> +                                             b_info->address)) {
>          SPICE_DEBUG("device not added %d:%d %04x:%04x",
> -                    libusb_get_bus_number(libdev),
> -                    libusb_get_device_address(libdev),
> -                    desc.idVendor,
> -                    desc.idProduct);
> +                    b_info->bus,
> +                    b_info->address,
> +                    b_info->vid,
> +                    b_info->pid);
>          return;
>      }
> =20
> -    device =3D (SpiceUsbDevice*)spice_usb_device_new(libdev);
> +    device =3D (SpiceUsbDevice*)spice_usb_device_new(bdev);
>      if (!device)
>          return;
> =20
> @@ -935,10 +857,10 @@ static void spice_usb_device_manager_add_dev(SpiceU=
sbDeviceManager  *self,
>          can_redirect =3D spice_usb_device_manager_can_redirect_device(
>                                          self, device, NULL);
> =20
> -        auto_ok =3D usbredirhost_check_device_filter(
> +        auto_ok =3D spice_usb_backend_device_check_filter(
> +                            bdev,
>                              priv->auto_conn_filter_rules,
> -                            priv->auto_conn_filter_rules_count,
> -                            libdev, 0) =3D=3D 0;
> +                            priv->auto_conn_filter_rules_count) =3D=3D 0;
> =20
>          if (can_redirect && auto_ok)
>              spice_usb_device_manager_connect_device_async(self,
> @@ -955,15 +877,16 @@ static void spice_usb_device_manager_add_dev(SpiceU=
sbDeviceManager  *self,
>  }
> =20
>  static void spice_usb_device_manager_remove_dev(SpiceUsbDeviceManager *s=
elf,
> -                                                guint bus, guint address)
> +                                                SpiceUsbBackendDevice *b=
dev)
>  {
>      SpiceUsbDeviceManagerPrivate *priv =3D self->priv;
>      SpiceUsbDevice *device;
> +    const UsbDeviceInformation *b_info =3D spice_usb_backend_device_get_=
info(bdev);
> =20
> -    device =3D spice_usb_device_manager_find_device(self, bus, address);
> +    device =3D spice_usb_device_manager_find_device(self, b_info->bus, b=
_info->address);
>      if (!device) {
>          g_warning("Could not find USB device to remove " DEV_ID_FMT,
> -                  bus, address);
> +                  b_info->bus, b_info->address);
>          return;
>      }
> =20
> @@ -982,24 +905,22 @@ static void spice_usb_device_manager_remove_dev(Spi=
ceUsbDeviceManager *self,
> =20
>  #ifdef G_OS_WIN32
>  static void spice_usb_device_manager_uevent_cb(GUdevClient     *client,
> -                                               libusb_device   *dev,
> +                                               SpiceUsbBackendDevice *bd=
ev,
>                                                 gboolean         add,
>                                                 gpointer         user_dat=
a)
>  {
>      SpiceUsbDeviceManager *self =3D SPICE_USB_DEVICE_MANAGER(user_data);
> =20
>      if (add)
> -        spice_usb_device_manager_add_dev(self, dev);
> +        spice_usb_device_manager_add_dev(self, bdev);
>      else
> -        spice_usb_device_manager_remove_dev(self,
> -                                            libusb_get_bus_number(dev),
> -                                            libusb_get_device_address(de=
v));
> +        spice_usb_device_manager_remove_dev(self, bdev);
>  }
>  #else
>  struct hotplug_idle_cb_args {
>      SpiceUsbDeviceManager *self;
> -    libusb_device *device;
> -    libusb_hotplug_event event;
> +    SpiceUsbBackendDevice *device;
> +    gboolean               added;
>  };
> =20
>  static gboolean spice_usb_device_manager_hotplug_idle_cb(gpointer user_d=
ata)
> @@ -1007,36 +928,29 @@ static gboolean spice_usb_device_manager_hotplug_i=
dle_cb(gpointer user_data)
>      struct hotplug_idle_cb_args *args =3D user_data;
>      SpiceUsbDeviceManager *self =3D SPICE_USB_DEVICE_MANAGER(args->self);
> =20
> -    switch (args->event) {
> -    case LIBUSB_HOTPLUG_EVENT_DEVICE_ARRIVED:
> +    if (args->added)
>          spice_usb_device_manager_add_dev(self, args->device);
> -        break;
> -    case LIBUSB_HOTPLUG_EVENT_DEVICE_LEFT:
> -        spice_usb_device_manager_remove_dev(self,
> -                                    libusb_get_bus_number(args->device),
> -                                    libusb_get_device_address(args->devi=
ce));
> -        break;
> -    }
> -    libusb_unref_device(args->device);
> +    else
> +        spice_usb_device_manager_remove_dev(self, args->device);
> +
> +    spice_usb_backend_device_unref(args->device);
>      g_object_unref(self);
>      g_free(args);
>      return FALSE;
>  }
> =20
>  /* Can be called from both the main-thread as well as the event_thread */
> -static int spice_usb_device_manager_hotplug_cb(libusb_context       *ctx,
> -                                               libusb_device        *dev=
ice,
> -                                               libusb_hotplug_event  eve=
nt,
> -                                               void                 *use=
r_data)
> +static void spice_usb_device_manager_hotplug_cb(void *user_data,
> +                                                SpiceUsbBackendDevice *d=
ev,
> +                                                gboolean added)
>  {
>      SpiceUsbDeviceManager *self =3D SPICE_USB_DEVICE_MANAGER(user_data);
>      struct hotplug_idle_cb_args *args =3D g_malloc0(sizeof(*args));
> =20
>      args->self =3D g_object_ref(self);
> -    args->device =3D libusb_ref_device(device);
> -    args->event =3D event;
> +    args->device =3D spice_usb_backend_device_ref(dev);
> +    args->added =3D added;
>      g_idle_add(spice_usb_device_manager_hotplug_idle_cb, args);
> -    return 0;
>  }
>  #endif // USE_USBREDIR
> =20
> @@ -1063,13 +977,9 @@ static gpointer spice_usb_device_manager_usb_ev_thr=
ead(gpointer user_data)
>  {
>      SpiceUsbDeviceManager *self =3D SPICE_USB_DEVICE_MANAGER(user_data);
>      SpiceUsbDeviceManagerPrivate *priv =3D self->priv;
> -    int rc;
> =20
>      while (g_atomic_int_get(&priv->event_thread_run)) {
> -        rc =3D libusb_handle_events(priv->context);
> -        if (rc && rc !=3D LIBUSB_ERROR_INTERRUPTED) {
> -            const char *desc =3D libusb_error_name(rc);
> -            g_warning("Error handling USB events: %s [%i]", desc, rc);
> +        if (!spice_usb_backend_handle_events(priv->context)) {
>              break;
>          }
>      }
> @@ -1120,7 +1030,7 @@ static void spice_usb_device_manager_check_redir_on=
_connect(
>      SpiceUsbDeviceManagerPrivate *priv =3D self->priv;
>      GTask *task;
>      SpiceUsbDevice *device;
> -    libusb_device *libdev;
> +    SpiceUsbBackendDevice *bdev;
>      guint i;
> =20
>      if (priv->redirect_on_connect =3D=3D NULL)
> @@ -1132,11 +1042,11 @@ static void spice_usb_device_manager_check_redir_=
on_connect(
>          if (spice_usb_device_manager_is_device_connected(self, device))
>              continue;
> =20
> -        libdev =3D spice_usb_device_manager_device_to_libdev(self, devic=
e);
> -        if (usbredirhost_check_device_filter(
> +        bdev =3D spice_usb_device_manager_device_to_bdev(self, device);
> +        if (spice_usb_backend_device_check_filter(
> +                            bdev,
>                              priv->redirect_on_connect_rules,
> -                            priv->redirect_on_connect_rules_count,
> -                            libdev, 0) =3D=3D 0) {
> +                            priv->redirect_on_connect_rules_count) =3D=
=3D 0) {
>              /* Note: re-uses spice_usb_device_manager_connect_device_asy=
nc's
>                 completion handling code! */
>              task =3D g_task_new(self,
> @@ -1146,14 +1056,14 @@ static void spice_usb_device_manager_check_redir_=
on_connect(
> =20
>              spice_usbredir_channel_connect_device_async(
>                                 SPICE_USBREDIR_CHANNEL(channel),
> -                               libdev, device, NULL,
> +                               bdev, device, NULL,
>                                 spice_usb_device_manager_channel_connect_=
cb,
>                                 task);
> -            libusb_unref_device(libdev);
> +            spice_usb_backend_device_unref(bdev);
>              return; /* We've taken the channel! */
>          }
> =20
> -        libusb_unref_device(libdev);
> +        spice_usb_backend_device_unref(bdev);
>      }
>  }
> =20
> @@ -1177,8 +1087,8 @@ static SpiceUsbredirChannel *spice_usb_device_manag=
er_get_channel_for_dev(
>      for (i =3D 0; i < priv->channels->len; i++) {
>          SpiceUsbredirChannel *channel =3D g_ptr_array_index(priv->channe=
ls, i);
>          spice_usbredir_channel_lock(channel);
> -        libusb_device *libdev =3D spice_usbredir_channel_get_device(chan=
nel);
> -        if (spice_usb_manager_device_equal_libdev(manager, device, libde=
v)) {
> +        SpiceUsbBackendDevice *bdev =3D spice_usbredir_channel_get_devic=
e(channel);
> +        if (spice_usb_manager_device_equal_bdev(manager, device, bdev)) {
>              spice_usbredir_channel_unlock(channel);
>              return channel;
>          }
> @@ -1235,9 +1145,9 @@ GPtrArray* spice_usb_device_manager_get_devices_wit=
h_filter(
>          SpiceUsbDevice *device =3D g_ptr_array_index(priv->devices, i);
> =20
>          if (rules) {
> -            libusb_device *libdev =3D
> -                spice_usb_device_manager_device_to_libdev(self, device);
> -            if (usbredirhost_check_device_filter(rules, count, libdev, 0=
) !=3D 0)
> +            SpiceUsbBackendDevice *bdev =3D
> +                spice_usb_device_manager_device_to_bdev(self, device);
> +            if (spice_usb_backend_device_check_filter(bdev, rules, count=
) !=3D 0)
>                  continue;
>          }
>          g_ptr_array_add(devices_copy, spice_usb_device_ref(device));
> @@ -1311,7 +1221,7 @@ _spice_usb_device_manager_connect_device_async(Spic=
eUsbDeviceManager *self,
>      task =3D g_task_new(self, cancellable, callback, user_data);
> =20
>      SpiceUsbDeviceManagerPrivate *priv =3D self->priv;
> -    libusb_device *libdev;
> +    SpiceUsbBackendDevice *bdev;
>      guint i;
> =20
>      if (spice_usb_device_manager_is_device_connected(self, device)) {
> @@ -1327,14 +1237,14 @@ _spice_usb_device_manager_connect_device_async(Sp=
iceUsbDeviceManager *self,
>          if (spice_usbredir_channel_get_device(channel))
>              continue; /* Skip already used channels */
> =20
> -        libdev =3D spice_usb_device_manager_device_to_libdev(self, devic=
e);
> +        bdev =3D spice_usb_device_manager_device_to_bdev(self, device);
>          spice_usbredir_channel_connect_device_async(channel,
> -                                 libdev,
> +                                 bdev,
>                                   device,
>                                   cancellable,
>                                   spice_usb_device_manager_channel_connec=
t_cb,
>                                   task);
> -        libusb_unref_device(libdev);
> +        spice_usb_backend_device_unref(bdev);
>          return;
>      }
> =20
> @@ -1596,13 +1506,14 @@ spice_usb_device_manager_can_redirect_device(Spic=
eUsbDeviceManager  *self,
> =20
>      if (guest_filter_rules) {
>          gboolean filter_ok;
> -        libusb_device *libdev;
> -
> -        libdev =3D spice_usb_device_manager_device_to_libdev(self, devic=
e);
> -        filter_ok =3D (usbredirhost_check_device_filter(
> -                            guest_filter_rules, guest_filter_rules_count,
> -                            libdev, 0) =3D=3D 0);
> -        libusb_unref_device(libdev);
> +        SpiceUsbBackendDevice *bdev;
> +
> +        bdev =3D spice_usb_device_manager_device_to_bdev(self, device);
> +        filter_ok =3D (spice_usb_backend_device_check_filter(
> +                            bdev,
> +                            guest_filter_rules,
> +                            guest_filter_rules_count) =3D=3D 0);
> +        spice_usb_backend_device_unref(bdev);
>          if (!filter_ok) {
>              g_set_error_literal(err, SPICE_CLIENT_ERROR, SPICE_CLIENT_ER=
ROR_FAILED,
>                                  _("Some USB devices are blocked by host =
policy"));
> @@ -1696,60 +1607,27 @@ gchar *spice_usb_device_get_description(SpiceUsbD=
evice *device, const gchar *for
> =20
> =20
>  #ifdef USE_USBREDIR
> -static gboolean probe_isochronous_endpoint(libusb_device *libdev)
> -{
> -    struct libusb_config_descriptor *conf_desc;
> -    gboolean isoc_found =3D FALSE;
> -    gint i, j, k;
> -
> -    g_return_val_if_fail(libdev !=3D NULL, FALSE);
> -
> -    if (libusb_get_active_config_descriptor(libdev, &conf_desc) !=3D 0) {
> -        g_return_val_if_reached(FALSE);
> -    }
> -
> -    for (i =3D 0; !isoc_found && i < conf_desc->bNumInterfaces; i++) {
> -        for (j =3D 0; !isoc_found && j < conf_desc->interface[i].num_alt=
setting; j++) {
> -            for (k =3D 0; !isoc_found && k < conf_desc->interface[i].alt=
setting[j].bNumEndpoints;k++) {
> -                gint attributes =3D conf_desc->interface[i].altsetting[j=
].endpoint[k].bmAttributes;
> -                gint type =3D attributes & LIBUSB_TRANSFER_TYPE_MASK;
> -                if (type =3D=3D LIBUSB_TRANSFER_TYPE_ISOCHRONOUS)
> -                    isoc_found =3D TRUE;
> -            }
> -        }
> -    }
> -
> -    libusb_free_config_descriptor(conf_desc);
> -    return isoc_found;
> -}
> -
>  /*
>   * SpiceUsbDeviceInfo
>   */
> -static SpiceUsbDeviceInfo *spice_usb_device_new(libusb_device *libdev)
> +static SpiceUsbDeviceInfo *spice_usb_device_new(SpiceUsbBackendDevice *b=
dev)
>  {
>      SpiceUsbDeviceInfo *info;
> -    int vid, pid;
> -    guint8 bus, addr;
> -
> -    g_return_val_if_fail(libdev !=3D NULL, NULL);
> +    const UsbDeviceInformation *bdev_info;
> =20
> -    bus =3D libusb_get_bus_number(libdev);
> -    addr =3D libusb_get_device_address(libdev);
> +    g_return_val_if_fail(bdev !=3D NULL, NULL);
> =20
> -    if (!spice_usb_device_manager_get_libdev_vid_pid(libdev, &vid, &pid)=
) {
> -        return NULL;
> -    }
> +    bdev_info =3D spice_usb_backend_device_get_info(bdev);
> =20
>      info =3D g_new0(SpiceUsbDeviceInfo, 1);
> =20
> -    info->busnum  =3D bus;
> -    info->devaddr =3D addr;
> -    info->vid =3D vid;
> -    info->pid =3D pid;
> +    info->busnum  =3D bdev_info->bus;
> +    info->devaddr =3D bdev_info->address;
> +    info->vid =3D bdev_info->vid;
> +    info->pid =3D bdev_info->pid;
>      info->ref =3D 1;
> -    info->isochronous =3D probe_isochronous_endpoint(libdev);
> -    info->libdev =3D libusb_ref_device(libdev);
> +    info->bdev =3D spice_usb_backend_device_ref(bdev);
> +    info->isochronous =3D spice_usb_backend_device_isoch(bdev);
> =20
>      return info;
>  }
> @@ -1885,35 +1763,35 @@ static void spice_usb_device_unref(SpiceUsbDevice=
 *device)
> =20
>      ref_count_is_0 =3D g_atomic_int_dec_and_test(&info->ref);
>      if (ref_count_is_0) {
> -        libusb_unref_device(info->libdev);
> +        spice_usb_backend_device_unref(info->bdev);
>          g_free(info);
>      }
>  }
> =20
>  static gboolean
> -spice_usb_manager_device_equal_libdev(SpiceUsbDeviceManager *manager,
> -                                      SpiceUsbDevice *device,
> -                                      libusb_device  *libdev)
> +spice_usb_manager_device_equal_bdev(SpiceUsbDeviceManager *manager,
> +                                    SpiceUsbDevice *device,
> +                                    SpiceUsbBackendDevice *bdev)
>  {
>      SpiceUsbDeviceInfo *info =3D (SpiceUsbDeviceInfo *)device;
> =20
> -    if ((device =3D=3D NULL) || (libdev =3D=3D NULL))
> +    if ((device =3D=3D NULL) || (bdev =3D=3D NULL))
>          return FALSE;
> =20
> -    return info->libdev =3D=3D libdev;
> +    return info->bdev =3D=3D bdev;
>  }
> =20
>  /*
>   * Caller must libusb_unref_device the libusb_device returned by this fu=
nction.
>   * Returns a libusb_device, or NULL upon failure
>   */
> -static libusb_device *
> -spice_usb_device_manager_device_to_libdev(SpiceUsbDeviceManager *self,
> -                                          SpiceUsbDevice *device)
> +static SpiceUsbBackendDevice *
> +spice_usb_device_manager_device_to_bdev(SpiceUsbDeviceManager *self,
> +                                        SpiceUsbDevice *device)
>  {
>      /* Simply return a ref to the cached libdev */
>      SpiceUsbDeviceInfo *info =3D (SpiceUsbDeviceInfo *)device;
> =20
> -    return libusb_ref_device(info->libdev);
> +    return spice_usb_backend_device_ref(info->bdev);
>  }
>  #endif /* USE_USBREDIR */
> diff --git a/src/usbutil.h b/src/usbutil.h
> index 50e3949..d18d688 100644
> --- a/src/usbutil.h
> +++ b/src/usbutil.h
> @@ -24,7 +24,6 @@
>  #include <glib.h>
> =20
>  #ifdef USE_USBREDIR
> -#include <libusb.h>
> =20
>  G_BEGIN_DECLS
> =20
> diff --git a/src/win-usb-dev.c b/src/win-usb-dev.c
> index ce599b9..c2a5115 100644
> --- a/src/win-usb-dev.c
> +++ b/src/win-usb-dev.c
> @@ -23,11 +23,9 @@
>  #include "config.h"
> =20
>  #include <windows.h>
> -#include <libusb.h>
>  #include "win-usb-dev.h"
>  #include "spice-marshal.h"
>  #include "spice-util.h"
> -#include "usbutil.h"
> =20
>  enum {
>      PROP_0,
> @@ -35,7 +33,7 @@ enum {
>  };
> =20
>  struct _GUdevClientPrivate {
> -    libusb_context *ctx;
> +    SpiceUsbBackend *ctx;
>      GList *udev_list;
>      HWND hwnd;
>      gboolean redirecting;
> @@ -68,9 +66,7 @@ static void g_udev_device_print_list(GList *l, const gc=
har *msg);
>  #else
>  static void g_udev_device_print_list(GList *l, const gchar *msg) {}
>  #endif
> -static void g_udev_device_print(libusb_device *dev, const gchar *msg);
> -
> -static gboolean g_udev_skip_search(libusb_device *dev);
> +static void g_udev_device_print(SpiceUsbBackendDevice *dev, const gchar =
*msg);
> =20
>  GQuark g_udev_client_error_quark(void)
>  {
> @@ -86,7 +82,7 @@ GUdevClient *g_udev_client_new(void)
>      return singleton;
>  }
> =20
> -libusb_context *g_udev_client_get_context(GUdevClient *client)
> +SpiceUsbBackend *g_udev_client_get_context(GUdevClient *client)
>  {
>      return client->priv->ctx;
>  }
> @@ -99,8 +95,7 @@ static ssize_t
>  g_udev_client_list_devices(GUdevClient *self, GList **devs,
>                             GError **err, const gchar *name)
>  {
> -    gssize rc;
> -    libusb_device **lusb_list, **dev;
> +    SpiceUsbBackendDevice **lusb_list, **dev;
>      GUdevClientPrivate *priv;
>      ssize_t n;
> =20
> @@ -111,43 +106,33 @@ g_udev_client_list_devices(GUdevClient *self, GList=
 **devs,
> =20
>      g_return_val_if_fail(self->priv->ctx !=3D NULL, -3);
> =20
> -    rc =3D libusb_get_device_list(priv->ctx, &lusb_list);
> -    if (rc < 0) {
> -        const char *errstr =3D libusb_error_name(rc);
> -        g_warning("%s: libusb_get_device_list failed - %s", name, errstr=
);
> +    lusb_list =3D spice_usb_backend_get_device_list(priv->ctx);
> +    if (!lusb_list) {
>          g_set_error(err, G_UDEV_CLIENT_ERROR, G_UDEV_CLIENT_LIBUSB_FAILE=
D,
> -                    "%s: Error getting device list from libusb: %s [%"G_=
GSSIZE_FORMAT"]",
> -                    name, errstr, rc);
> +                    "%s: Error getting USB device list", name);
>          return -4;
>      }
> =20
>      n =3D 0;
>      for (dev =3D lusb_list; *dev; dev++) {
> -        if (g_udev_skip_search(*dev)) {
> -            continue;
> -        }
> -        *devs =3D g_list_prepend(*devs, libusb_ref_device(*dev));
> +        *devs =3D g_list_prepend(*devs, spice_usb_backend_device_ref(*de=
v));
>          n++;
>      }
> -    libusb_free_device_list(lusb_list, 1);
> +    spice_usb_backend_free_device_list(lusb_list);
> =20
>      return n;
>  }
> =20
> -static void unreference_libusb_device(gpointer data)
> +static void unreference_backend_device(gpointer data)
>  {
> -    libusb_unref_device((libusb_device *)data);
> +    spice_usb_backend_device_unref((SpiceUsbBackendDevice *)data);
>  }
> =20
>  static void g_udev_client_free_device_list(GList **devs)
>  {
>      g_return_if_fail(devs !=3D NULL);
>      if (*devs) {
> -        /* the unreference_libusb_device method is required as
> -         * libusb_unref_device calling convention differs from glib's
> -         * see 558c967ec
> -         */
> -        g_list_free_full(*devs, unreference_libusb_device);
> +        g_list_free_full(*devs, unreference_backend_device);
>          *devs =3D NULL;
>      }
>  }
> @@ -160,7 +145,6 @@ g_udev_client_initable_init(GInitable *initable, GCan=
cellable *cancellable,
>      GUdevClient *self;
>      GUdevClientPrivate *priv;
>      WNDCLASS wcls;
> -    int rc;
> =20
>      g_return_val_if_fail(G_UDEV_IS_CLIENT(initable), FALSE);
>      g_return_val_if_fail(cancellable =3D=3D NULL, FALSE);
> @@ -168,14 +152,11 @@ g_udev_client_initable_init(GInitable *initable, GC=
ancellable *cancellable,
>      self =3D G_UDEV_CLIENT(initable);
>      priv =3D self->priv;
> =20
> -    rc =3D libusb_init(&priv->ctx);
> -    if (rc < 0) {
> -        const char *errstr =3D libusb_error_name(rc);
> -        g_warning("Error initializing USB support: %s [%i]", errstr, rc);
> -        g_set_error(err, G_UDEV_CLIENT_ERROR, G_UDEV_CLIENT_LIBUSB_FAILE=
D,
> -                    "Error initializing USB support: %s [%i]", errstr, r=
c);
> +    priv->ctx =3D spice_usb_backend_new(err);
> +    if (!priv->ctx) {
>          return FALSE;
>      }
> +
>  #ifdef G_OS_WIN32
>  #if LIBUSB_API_VERSION >=3D 0x01000106
>      libusb_set_option(priv->ctx, LIBUSB_OPTION_USE_USBDK);
> @@ -248,9 +229,9 @@ static void g_udev_client_finalize(GObject *gobject)
>      UnregisterClass(G_UDEV_CLIENT_WINCLASS_NAME, NULL);
>      g_udev_client_free_device_list(&priv->udev_list);
> =20
> -    /* free libusb context initializing by libusb_init() */
> +    /* free backend context */
>      g_warn_if_fail(priv->ctx !=3D NULL);
> -    libusb_exit(priv->ctx);
> +    spice_usb_backend_delete(priv->ctx);
> =20
>      /* Chain up to the parent class */
>      if (G_OBJECT_CLASS(g_udev_client_parent_class)->finalize)
> @@ -340,20 +321,18 @@ static void g_udev_client_class_init(GUdevClientCla=
ss *klass)
>  }
> =20
>  /* comparing bus:addr and vid:pid */
> -static gint compare_libusb_devices(gconstpointer a, gconstpointer b)
> +static gint compare_usb_devices(gconstpointer a, gconstpointer b)
>  {
> -    libusb_device *a_dev =3D (libusb_device *)a;
> -    libusb_device *b_dev =3D (libusb_device *)b;
> -    struct libusb_device_descriptor a_desc, b_desc;
> +    const UsbDeviceInformation *a_info, *b_info;
>      gboolean same_bus, same_addr, same_vid, same_pid;
> +    a_info =3D spice_usb_backend_device_get_info((SpiceUsbBackendDevice =
*)a);
> +    b_info =3D spice_usb_backend_device_get_info((SpiceUsbBackendDevice =
*)b);
> =20
> -    libusb_get_device_descriptor(a_dev, &a_desc);
> -    libusb_get_device_descriptor(b_dev, &b_desc);
> =20
> -    same_bus =3D (libusb_get_bus_number(a_dev) =3D=3D libusb_get_bus_num=
ber(b_dev));
> -    same_addr =3D (libusb_get_device_address(a_dev) =3D=3D libusb_get_de=
vice_address(b_dev));
> -    same_vid =3D (a_desc.idVendor =3D=3D b_desc.idVendor);
> -    same_pid =3D (a_desc.idProduct =3D=3D b_desc.idProduct);
> +    same_bus =3D (a_info->bus =3D=3D b_info->bus);
> +    same_addr =3D (a_info->address =3D=3D b_info->address);
> +    same_vid =3D (a_info->vid =3D=3D b_info->vid);
> +    same_pid =3D (a_info->pid =3D=3D b_info->pid);
> =20
>      return (same_bus && same_addr && same_vid && same_pid) ? 0 : -1;
>  }
> @@ -363,12 +342,12 @@ static void update_device_list(GUdevClient *self, G=
List *new_device_list)
>      GList *dev;
> =20
>      for (dev =3D g_list_first(new_device_list); dev !=3D NULL; dev =3D g=
_list_next(dev)) {
> -        GList *found =3D g_list_find_custom(self->priv->udev_list, dev->=
data, compare_libusb_devices);
> +        GList *found =3D g_list_find_custom(self->priv->udev_list, dev->=
data, compare_usb_devices);
>          if (found !=3D NULL) {
>              /* keep old existing libusb_device in the new list, when
>                 usb-dev-manager will maintain its own list of libusb_devi=
ce,
>                 these lists will be completely consistent */
> -            libusb_device *temp =3D found->data;
> +            SpiceUsbBackendDevice *temp =3D found->data;
>              found->data =3D dev->data;
>              dev->data =3D temp;
>          }
> @@ -386,7 +365,7 @@ static void notify_dev_state_change(GUdevClient *self,
>      GList *dev;
> =20
>      for (dev =3D g_list_first(old_list); dev !=3D NULL; dev =3D g_list_n=
ext(dev)) {
> -        GList *found =3D g_list_find_custom(new_list, dev->data, compare=
_libusb_devices);
> +        GList *found =3D g_list_find_custom(new_list, dev->data, compare=
_usb_devices);
>          if (found =3D=3D NULL) {
>              g_udev_device_print(dev->data, add ? "add" : "remove");
>              g_signal_emit(self, signals[UEVENT_SIGNAL], 0, dev->data, ad=
d);
> @@ -447,29 +426,11 @@ static void g_udev_device_print_list(GList *l, cons=
t gchar *msg)
>  }
>  #endif
> =20
> -static void g_udev_device_print(libusb_device *dev, const gchar *msg)
> +static void g_udev_device_print(SpiceUsbBackendDevice *dev, const gchar =
*msg)
>  {
> -    struct libusb_device_descriptor desc;
> -
> -    libusb_get_device_descriptor(dev, &desc);
> +    const UsbDeviceInformation *info =3D spice_usb_backend_device_get_in=
fo(dev);
> =20
>      SPICE_DEBUG("%s: %d.%d 0x%04x:0x%04x class %d", msg,
> -                libusb_get_bus_number(dev),
> -                libusb_get_device_address(dev),
> -                desc.idVendor, desc.idProduct, desc.bDeviceClass);
> -}
> -
> -static gboolean g_udev_skip_search(libusb_device *dev)
> -{
> -    gboolean skip;
> -    uint8_t addr =3D libusb_get_device_address(dev);
> -    struct libusb_device_descriptor desc;
> -
> -    libusb_get_device_descriptor(dev, &desc);
> -
> -    skip =3D ((addr =3D=3D 0xff) ||  /* root hub (HCD) */
> -            (addr =3D=3D 1) || /* root hub addr */
> -            (desc.bDeviceClass =3D=3D LIBUSB_CLASS_HUB) || /* hub*/
> -            (addr =3D=3D 0)); /* bad address */
> -    return skip;
> +                info->bus, info->address,
> +                info->vid, info->pid, info->class);
>  }
> diff --git a/src/win-usb-dev.h b/src/win-usb-dev.h
> index b1c0e27..fdfe73a 100644
> --- a/src/win-usb-dev.h
> +++ b/src/win-usb-dev.h
> @@ -23,6 +23,7 @@
>  #define __WIN_USB_DEV_H__
> =20
>  #include <gio/gio.h>
> +#include "usb-backend.h"
> =20
>  G_BEGIN_DECLS
> =20
> @@ -51,12 +52,12 @@ struct _GUdevClientClass
>      GObjectClass parent_class;
> =20
>      /* signals */
> -    void (*uevent)(GUdevClient *client, libusb_device *device, gboolean =
add);
> +    void (*uevent)(GUdevClient *client, SpiceUsbBackendDevice *device, g=
boolean add);
>  };
> =20
>  GType g_udev_client_get_type(void) G_GNUC_CONST;
>  GUdevClient *g_udev_client_new(void);
> -libusb_context *g_udev_client_get_context(GUdevClient *client);
> +SpiceUsbBackend *g_udev_client_get_context(GUdevClient *client);
>  void g_udev_client_report_devices(GUdevClient *client);
> =20
>  GQuark g_udev_client_error_quark(void);
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--ci4egftsozxeu5yz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAlzj1tUACgkQl9kSPeN6
SE98HA//XzlKKKH6gT18hw9ruir8qOWGFyPhy0f+wfo7gEdAdooGfWMn2LM2ytBO
iHZM2gqEpsgirA4ogJfNOweeydl+eX+hei3nWc+GQlVMzEAT01+mueUUwfroijmJ
TbfJx5VzRHwZO1BCnsrEGNJuz7r2grJnpsOLXFZrwsjbh0LyJMCTfui/dX+eCnrA
RxS/GbR23KvMA+E/74D03ifSPy9uOZH0+gLLwzbYtEUnq8EvnJwvdw+/02VXu8rf
7N1i27Jsl4VsGBapStezdhWrIz8sKGB0uy3WAcAdSMyvbfkMnJ6KMCa4XxHBCU/m
MrcN3DgzheATPcaLOXSeZmIsRTEGdGGoohm/pu75BmueW9TMKwppRe/v7rCMSRbk
3MKWfI53lXOXwhcyt3UO+9APmf08ScyP/1VLt235BM1WRTyZoBocNMevInS4qbEt
JFQFQT0uHVEqAYBq3Fc1OThI6O8Xk4SJCdhuX3rRVWgP6Xe6nkHyvL6MW/wb5mz7
IDJ//UM6F/8PkVF92R2HH1tOMZGnaa5/6J6/SQ//+IR8aHDUv/oU3qZM8kJdhaG0
Dm5c6B6DtkD/qsotn9/Ry8jHfzeJLXuIGqAR1+7jfC8nTULiS1IVw2g7/++Yzf4N
p5rucHI1jXJiqe8656XchvIMDZwyPJykbNhqH2/hNp1VNi5zumk=
=tvRC
-----END PGP SIGNATURE-----

--ci4egftsozxeu5yz--

--===============0709133245==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0709133245==--
