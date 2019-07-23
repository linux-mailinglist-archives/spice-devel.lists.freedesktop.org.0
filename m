Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A17971990
	for <lists+spice-devel@lfdr.de>; Tue, 23 Jul 2019 15:41:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4B9E6E29D;
	Tue, 23 Jul 2019 13:41:36 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 424146E29D
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 13:41:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id CB2E33DD47;
 Tue, 23 Jul 2019 13:41:34 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 213BB5D9C5;
 Tue, 23 Jul 2019 13:41:33 +0000 (UTC)
Date: Tue, 23 Jul 2019 15:41:33 +0200
From: Victor Toso <victortoso@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <20190723134133.7n2birmeqa4xgfyn@wingsuit>
References: <20190723072708.2575-1-yuri.benditovich@daynix.com>
 <20190723072708.2575-7-yuri.benditovich@daynix.com>
MIME-Version: 1.0
In-Reply-To: <20190723072708.2575-7-yuri.benditovich@daynix.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Tue, 23 Jul 2019 13:41:34 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk v2 6/9] usb-redir: unify device
 hotplug/unplug for Windows and Linux
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
Content-Type: multipart/mixed; boundary="===============2144107927=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============2144107927==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="is3rg3x2qndk3ru5"
Content-Disposition: inline


--is3rg3x2qndk3ru5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Jul 23, 2019 at 10:27:05AM +0300, Yuri Benditovich wrote:
> Remove Windows-specific part of hotplug detection from
> usb-device-manager and win-usb-dev and place it into
> USB backend module. Connect the hotplug/unplug detection
> in Windows to the same callbacks already used in Linux.
> This removes significant part of Windows-specific code
> and simpifies things.
> Note regarding 'redirecting' property of usb-device-manager:
> - Previously usb-device-manager under Windows maintained
>   'redirection' property in win-usb-dev
> - Now it maintains its own property in both Windows and
>   Linux (for GUI and single redirect at a time)
> - The USB backend maintains its own 'redirecting' field
>   in Windows to prevent update of device list when
>   libusb opens the device (device redirection causes
>   temporary removal of target device)
>=20
> Signed-off-by: Yuri Benditovich <yuri.benditovich@daynix.com>
> ---
>  meson.build              |   2 +-
>  src/meson.build          |   4 +-
>  src/usb-backend.c        | 246 ++++++++++++++++------
>  src/usb-backend.h        |   8 -
>  src/usb-device-manager.c |  61 +-----
>  src/win-usb-dev.c        | 436 ---------------------------------------
>  src/win-usb-dev.h        |  84 --------
>  7 files changed, 196 insertions(+), 645 deletions(-)
>  delete mode 100644 src/win-usb-dev.c
>  delete mode 100644 src/win-usb-dev.h
>=20
> diff --git a/meson.build b/meson.build
> index 54160f9..1f6ea6d 100644
> --- a/meson.build
> +++ b/meson.build
> @@ -117,7 +117,7 @@ endforeach
> =20
>  deps =3D []
>  if host_machine.system() =3D=3D 'windows'
> -  deps +=3D ['libws2_32', 'libgdi32']
> +  deps +=3D ['libws2_32', 'libgdi32', 'libcomctl32']
>  endif
> =20
>  foreach dep : deps
> diff --git a/src/meson.build b/src/meson.build
> index a51d0a9..adcfaec 100644
> --- a/src/meson.build
> +++ b/src/meson.build
> @@ -158,9 +158,7 @@ endif
> =20
>  if spice_gtk_has_usbredir and host_machine.system() =3D=3D 'windows'
>    spice_client_glib_sources +=3D ['usbdk_api.c',
> -                                'usbdk_api.h',
> -                                'win-usb-dev.c',
> -                                'win-usb-dev.h']
> +                                'usbdk_api.h']
>  endif
> =20
>  #
> diff --git a/src/usb-backend.c b/src/usb-backend.c
> index e837579..1581f90 100644
> --- a/src/usb-backend.c
> +++ b/src/usb-backend.c
> @@ -32,6 +32,9 @@
>  #include <libusb.h>
>  #include <string.h>
>  #include <fcntl.h>
> +#ifdef G_OS_WIN32
> +#include <commctrl.h>
> +#endif
>  #include "usbredirhost.h"
>  #include "usbredirparser.h"
>  #include "spice-util.h"
> @@ -55,6 +58,11 @@ struct _SpiceUsbBackend
>      usb_hot_plug_callback hotplug_callback;
>      void *hotplug_user_data;
>      libusb_hotplug_callback_handle hotplug_handle;
> +#ifdef G_OS_WIN32
> +    HANDLE hWnd;
> +    libusb_device **libusb_device_list;
> +    gint redirecting;
> +#endif
>  };
> =20
>  struct _SpiceUsbBackendChannel
> @@ -66,6 +74,7 @@ struct _SpiceUsbBackendChannel
>      int rules_count;
>      SpiceUsbBackendDevice *attached;
>      SpiceUsbredirChannel  *user_data;
> +    SpiceUsbBackend *backend;
>      GError **error;
>  };
> =20
> @@ -128,6 +137,166 @@ static int LIBUSB_CALL hotplug_callback(libusb_cont=
ext *ctx,
>      return 0;
>  }
> =20
> +#ifdef G_OS_WIN32
> +/* Windows-specific: get notification on device change */
> +
> +static gboolean is_same_libusb_dev(libusb_device *libdev1,
> +                                   libusb_device *libdev2)
> +{
> +    UsbDeviceInformation info1, info2;
> +    g_return_val_if_fail(libdev1 !=3D NULL && libdev2 !=3D NULL, FALSE);
> +
> +    get_usb_device_info_from_libusb_device(&info1, libdev1);
> +    get_usb_device_info_from_libusb_device(&info2, libdev2);
> +
> +    return info1.bus =3D=3D info2.bus &&
> +           info1.address =3D=3D info2.address &&
> +           info1.vid =3D=3D info2.vid &&
> +           info1.pid =3D=3D info2.pid;
> +}
> +
> +static int compare_dev_list_fire_callback(SpiceUsbBackend *be,
> +                                          libusb_device * const *list1,
> +                                          libusb_device * const *list2,
> +                                          gboolean add)
> +{
> +    int res =3D 0;
> +    libusb_hotplug_event event =3D add ?
> +        LIBUSB_HOTPLUG_EVENT_DEVICE_ARRIVED : LIBUSB_HOTPLUG_EVENT_DEVIC=
E_LEFT;
> +    while (*list1) {
> +        gboolean found =3D 0;
> +        uint32_t n =3D 0;
> +        while (!found && list2[n]) {
> +            found =3D is_same_libusb_dev(*list1, list2[n]);
> +            n++;
> +        }
> +        if (!found) {
> +            UsbDeviceInformation info;
> +            get_usb_device_info_from_libusb_device(&info, *list1);
> +            SPICE_DEBUG("%s %04X:%04X at %d:%d", add ? "adding" : "remov=
ing",
> +                        info.vid, info.pid, info.bus, info.address);
> +            hotplug_callback(NULL, *list1, event, be);
> +            res++;
> +        }
> +        list1++;
> +    }
> +    return res;

Does res stand for something like count as well? Honest
question.

So, this function is used to compare two lists and count the
number of elements that in list1 are not in list2 and for each of
those elements you fire a callback. Fine. On
enable_hotplug_support() you will call this function with empty
list2 only to fire a callback for each element of list1. Fine.

The only thing to be picky here is, then, some info about it as
quick summary of the function and perhaps this res variable (here
and in subclass_proc() to something like num_devs or something).
As doc, something like "return the number of elements in list1
not present in list2 and fire the callback for each given
element"

This is a cosmetic change but one I'd welcome.

> +}
> +
> +static LRESULT subclass_proc(HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM=
 lParam,
> +                            UINT_PTR uIdSubclass, DWORD_PTR dwRefData)
> +{
> +    SpiceUsbBackend *be =3D (SpiceUsbBackend *)dwRefData;
> +    if (uMsg =3D=3D WM_DEVICECHANGE && !be->redirecting) {
> +        libusb_device **new_list =3D NULL;
> +        libusb_get_device_list(be->libusb_context, &new_list);
> +        if (new_list) {
> +            int res =3D compare_dev_list_fire_callback(be, be->libusb_de=
vice_list, new_list, FALSE);
> +            res +=3D compare_dev_list_fire_callback(be, new_list, be->li=
busb_device_list, TRUE);

So, comparing old_list with new_list means number of missing
devices and then comparing new_list with old_list would mean
added devices. Fine. I'd only change res above to something like
num_changes and below a explicit if (num_changes > 0) and should
be clear enough (imho) to even remove the code comment inside if.

Apart from this minor thing, patch is fine.

Victor

> +            if (res) {
> +                /* there were changes in device tree */
> +                libusb_free_device_list(be->libusb_device_list, TRUE);
> +                be->libusb_device_list =3D new_list;
> +            } else {
> +                libusb_free_device_list(new_list, TRUE);
> +            }
> +        } else {
> +            g_warn_if_reached();
> +        }
> +    }
> +    return DefSubclassProc(hWnd, uMsg, wParam, lParam);
> +}
> +
> +static void disable_hotplug_support(SpiceUsbBackend *be)
> +{
> +    if (be->hWnd) {
> +        DestroyWindow(be->hWnd);
> +        be->hWnd =3D NULL;
> +    }
> +    if (be->libusb_device_list) {
> +        libusb_free_device_list(be->libusb_device_list, TRUE);
> +        be->libusb_device_list =3D NULL;
> +    }
> +}
> +
> +static int enable_hotplug_support(SpiceUsbBackend *be, const char **erro=
r_on_enable)
> +{
> +    long win_err;
> +    libusb_device **libdev_list =3D NULL;
> +    libusb_device *empty_list =3D NULL;
> +
> +    libusb_get_device_list(be->libusb_context, &libdev_list);
> +    if (!libdev_list) {
> +        *error_on_enable =3D "Getting device list";
> +        goto error;
> +    }
> +    /* using standard class for window to receive messages */
> +    be->hWnd =3D CreateWindow("Static", NULL, 0, 0, 0, 0, 0, NULL, NULL,=
 NULL, NULL);
> +    if (!be->hWnd) {
> +        *error_on_enable =3D "CreateWindow";
> +        goto error;
> +    }
> +    if (!SetWindowSubclass(be->hWnd, subclass_proc, 0, (DWORD_PTR)be)) {
> +        *error_on_enable =3D "SetWindowSubclass";
> +        goto error;
> +    }
> +    be->hotplug_handle =3D 1;
> +    be->libusb_device_list =3D libdev_list;
> +
> +    compare_dev_list_fire_callback(be, be->libusb_device_list, &empty_li=
st, TRUE);
> +
> +    return LIBUSB_SUCCESS;
> +error:
> +    win_err =3D GetLastError();
> +    if (!win_err) {
> +        win_err =3D -1;
> +    }
> +    g_warning("%s failed: %ld", *error_on_enable, win_err);
> +    if (libdev_list) {
> +        libusb_free_device_list(libdev_list, TRUE);
> +    }
> +    return win_err;
> +}
> +
> +static void set_redirecting(SpiceUsbBackend *be, gboolean on)
> +{
> +    if (on) {
> +        g_atomic_int_inc(&be->redirecting);
> +    } else {
> +        gboolean no_redir;
> +        no_redir =3D g_atomic_int_dec_and_test(&be->redirecting);
> +        if (no_redir && be->hWnd) {
> +            PostMessage(be->hWnd, WM_DEVICECHANGE, 0, 0);
> +        }
> +    }
> +}
> +
> +#else
> +/* Linux-specific: use hot callback from libusb */
> +
> +static void disable_hotplug_support(SpiceUsbBackend *be)
> +{
> +    libusb_hotplug_deregister_callback(be->libusb_context, be->hotplug_h=
andle);
> +}
> +
> +static int enable_hotplug_support(SpiceUsbBackend *be, const char **erro=
r_on_enable)
> +{
> +    int rc =3D 0;
> +    rc =3D libusb_hotplug_register_callback(be->libusb_context,
> +        LIBUSB_HOTPLUG_EVENT_DEVICE_ARRIVED | LIBUSB_HOTPLUG_EVENT_DEVIC=
E_LEFT,
> +        LIBUSB_HOTPLUG_ENUMERATE, LIBUSB_HOTPLUG_MATCH_ANY,
> +        LIBUSB_HOTPLUG_MATCH_ANY, LIBUSB_HOTPLUG_MATCH_ANY,
> +        hotplug_callback, be, &be->hotplug_handle);
> +    *error_on_enable =3D libusb_strerror(rc);
> +    return rc;
> +}
> +
> +static inline void set_redirecting(SpiceUsbBackend *be, gboolean on) {
> +    /* nothing on Linux */
> +}
> +
> +#endif
> +
>  /* lock functions for usbredirhost and usbredirparser */
>  static void *usbredir_alloc_lock(void) {
>      GMutex *mutex;
> @@ -265,7 +434,7 @@ void spice_usb_backend_deregister_hotplug(SpiceUsbBac=
kend *be)
>  {
>      g_return_if_fail(be !=3D NULL);
>      if (be->hotplug_handle) {
> -        libusb_hotplug_deregister_callback(be->libusb_context, be->hotpl=
ug_handle);
> +        disable_hotplug_support(be);
>          be->hotplug_handle =3D 0;
>      }
>      be->hotplug_callback =3D NULL;
> @@ -276,17 +445,15 @@ gboolean spice_usb_backend_register_hotplug(SpiceUs=
bBackend *be,
>                                              usb_hot_plug_callback proc)
>  {
>      int rc;
> +    const char *desc;
>      g_return_val_if_fail(be !=3D NULL, FALSE);
> =20
>      be->hotplug_callback =3D proc;
>      be->hotplug_user_data =3D user_data;
> -    rc =3D libusb_hotplug_register_callback(be->libusb_context,
> -        LIBUSB_HOTPLUG_EVENT_DEVICE_ARRIVED | LIBUSB_HOTPLUG_EVENT_DEVIC=
E_LEFT,
> -        LIBUSB_HOTPLUG_ENUMERATE, LIBUSB_HOTPLUG_MATCH_ANY,
> -        LIBUSB_HOTPLUG_MATCH_ANY, LIBUSB_HOTPLUG_MATCH_ANY,
> -        hotplug_callback, be, &be->hotplug_handle);
> +
> +    rc =3D enable_hotplug_support(be, &desc);
> +
>      if (rc !=3D LIBUSB_SUCCESS) {
> -        const char *desc =3D libusb_strerror(rc);
>          g_warning("Error initializing USB hotplug support: %s [%i]", des=
c, rc);
>          be->hotplug_callback =3D NULL;
>          return FALSE;
> @@ -305,45 +472,6 @@ void spice_usb_backend_delete(SpiceUsbBackend *be)
>      SPICE_DEBUG("%s <<", __FUNCTION__);
>  }
> =20
> -SpiceUsbBackendDevice **spice_usb_backend_get_device_list(SpiceUsbBacken=
d *be)
> -{
> -    LOUD_DEBUG("%s >>", __FUNCTION__);
> -    libusb_device **devlist =3D NULL, **dev;
> -    SpiceUsbBackendDevice *d, **list;
> -
> -    int n =3D 0, index;
> -
> -    if (be && be->libusb_context) {
> -        libusb_get_device_list(be->libusb_context, &devlist);
> -    }
> -
> -    /* add all the libusb device that not present in our list */
> -    for (dev =3D devlist; dev && *dev; dev++) {
> -        n++;
> -    }
> -
> -    list =3D g_new0(SpiceUsbBackendDevice*, n + 1);
> -
> -    index =3D 0;
> -
> -    for (dev =3D devlist; dev && *dev; dev++) {
> -        d =3D allocate_backend_device(*dev);
> -        if (!d) {
> -            libusb_unref_device(*dev);
> -        } else {
> -            SPICE_DEBUG("created dev %p, usblib dev %p", d, *dev);
> -            list[index++] =3D d;
> -        }
> -    }
> -
> -    if (devlist) {
> -        libusb_free_device_list(devlist, 0);
> -    }
> -
> -    LOUD_DEBUG("%s <<", __FUNCTION__);
> -    return list;
> -}
> -
>  const UsbDeviceInformation* spice_usb_backend_device_get_info(SpiceUsbBa=
ckendDevice *dev)
>  {
>      return &dev->device_info;
> @@ -354,18 +482,6 @@ gconstpointer spice_usb_backend_device_get_libdev(Sp=
iceUsbBackendDevice *dev)
>      return dev->libusb_device;
>  }
> =20
> -void spice_usb_backend_free_device_list(SpiceUsbBackendDevice **devlist)
> -{
> -    LOUD_DEBUG("%s >>", __FUNCTION__);
> -    SpiceUsbBackendDevice **dev;
> -    for (dev =3D devlist; *dev; dev++) {
> -        SpiceUsbBackendDevice *d =3D *dev;
> -        spice_usb_backend_device_unref(d);
> -    }
> -    g_free(devlist);
> -    LOUD_DEBUG("%s <<", __FUNCTION__);
> -}
> -
>  SpiceUsbBackendDevice *spice_usb_backend_device_ref(SpiceUsbBackendDevic=
e *dev)
>  {
>      LOUD_DEBUG("%s >> %p", __FUNCTION__, dev);
> @@ -533,12 +649,23 @@ gboolean spice_usb_backend_channel_attach(SpiceUsbB=
ackendChannel *ch,
>                                            SpiceUsbBackendDevice *dev,
>                                            GError **error)
>  {
> +    int rc;
>      SPICE_DEBUG("%s >> ch %p, dev %p (was attached %p)", __FUNCTION__, c=
h, dev, ch->attached);
> =20
>      g_return_val_if_fail(dev !=3D NULL, FALSE);
> =20
>      libusb_device_handle *handle =3D NULL;
> -    int rc =3D libusb_open(dev->libusb_device, &handle);
> +
> +    /*
> +       Under Windows we need to avoid updating
> +       list of devices when we are acquiring the device
> +    */
> +    set_redirecting(ch->backend, TRUE);
> +
> +    rc =3D libusb_open(dev->libusb_device, &handle);
> +
> +    set_redirecting(ch->backend, FALSE);
> +
>      if (rc) {
>          const char *desc =3D libusb_strerror(rc);
>          g_set_error(error, SPICE_CLIENT_ERROR, SPICE_CLIENT_ERROR_FAILED,
> @@ -586,6 +713,7 @@ SpiceUsbBackendChannel *spice_usb_backend_channel_new=
(SpiceUsbBackend *be,
>      SPICE_DEBUG("%s >>", __FUNCTION__);
>      ch->user_data =3D SPICE_USBREDIR_CHANNEL(user_data);
>      if (be->libusb_context) {
> +        ch->backend =3D be;
>          ch->usbredirhost =3D usbredirhost_open_full(
>              be->libusb_context,
>              NULL,
> diff --git a/src/usb-backend.h b/src/usb-backend.h
> index cbb73c2..6da3981 100644
> --- a/src/usb-backend.h
> +++ b/src/usb-backend.h
> @@ -56,14 +56,6 @@ enum {
>  SpiceUsbBackend *spice_usb_backend_new(GError **error);
>  void spice_usb_backend_delete(SpiceUsbBackend *context);
> =20
> -/*
> -returns newly-allocated null-terminated list of
> -SpiceUsbBackendDevice pointers.
> -The caller must call spice_usb_backend_free_device_list
> -after it finishes list processing
> -*/
> -SpiceUsbBackendDevice **spice_usb_backend_get_device_list(SpiceUsbBacken=
d *backend);
> -void spice_usb_backend_free_device_list(SpiceUsbBackendDevice **devlist);
>  gboolean spice_usb_backend_handle_events(SpiceUsbBackend *be);
>  void spice_usb_backend_interrupt_event_handler(SpiceUsbBackend *be);
>  gboolean spice_usb_backend_register_hotplug(SpiceUsbBackend *be,
> diff --git a/src/usb-device-manager.c b/src/usb-device-manager.c
> index 9aba275..9300ad2 100644
> --- a/src/usb-device-manager.c
> +++ b/src/usb-device-manager.c
> @@ -29,7 +29,6 @@
>  #ifdef G_OS_WIN32
>  #include <windows.h>
>  #include "usbdk_api.h"
> -#include "win-usb-dev.h"
>  #endif
> =20
>  #include "channel-usbredir-priv.h"
> @@ -101,12 +100,10 @@ struct _SpiceUsbDeviceManagerPrivate {
>      struct usbredirfilter_rule *redirect_on_connect_rules;
>      int auto_conn_filter_rules_count;
>      int redirect_on_connect_rules_count;
> +    gboolean redirecting;
>  #ifdef G_OS_WIN32
> -    GUdevClient *udev;
>      usbdk_api_wrapper *usbdk_api;
>      HANDLE usbdk_hider_handle;
> -#else
> -    gboolean redirecting; /* Handled by GUdevClient in the gudev case */
>  #endif
>      GPtrArray *devices;
>      GPtrArray *channels;
> @@ -139,16 +136,9 @@ static void channel_destroy(SpiceSession *session, S=
piceChannel *channel,
>                              gpointer user_data);
>  static void channel_event(SpiceChannel *channel, SpiceChannelEvent event,
>                            gpointer user_data);
> -#ifdef G_OS_WIN32
> -static void spice_usb_device_manager_uevent_cb(GUdevClient     *client,
> -                                               SpiceUsbBackendDevice *ud=
evice,
> -                                               gboolean         add,
> -                                               gpointer         user_dat=
a);
> -#else
>  static void spice_usb_device_manager_hotplug_cb(void *user_data,
>                                                  SpiceUsbBackendDevice *d=
ev,
>                                                  gboolean added);
> -#endif
>  static void spice_usb_device_manager_check_redir_on_connect(
>      SpiceUsbDeviceManager *self, SpiceChannel *channel);
> =20
> @@ -190,11 +180,7 @@ G_DEFINE_BOXED_TYPE(SpiceUsbDevice, spice_usb_device,
>  static void
>  _set_redirecting(SpiceUsbDeviceManager *self, gboolean is_redirecting)
>  {
> -#ifdef G_OS_WIN32
> -    g_object_set(self->priv->udev, "redirecting", is_redirecting, NULL);
> -#else
>      self->priv->redirecting =3D is_redirecting;
> -#endif
>  }
> =20
>  #else
> @@ -215,10 +201,6 @@ gboolean spice_usb_device_manager_is_redirecting(Spi=
ceUsbDeviceManager *self)
>  {
>  #ifndef USE_USBREDIR
>      return FALSE;
> -#elif defined(G_OS_WIN32)
> -    gboolean redirecting;
> -    g_object_get(self->priv->udev, "redirecting", &redirecting, NULL);
> -    return redirecting;
>  #else
>      return self->priv->redirecting;
>  #endif
> @@ -267,29 +249,18 @@ static gboolean spice_usb_device_manager_initable_i=
nit(GInitable  *initable,
>      GList *list;
>      GList *it;
> =20
> -    /* Start listening for usb devices plug / unplug */
> -#ifdef G_OS_WIN32
> -    priv->udev =3D g_udev_client_new();
> -    if (priv->udev =3D=3D NULL) {
> -        g_warning("Error initializing GUdevClient");
> -        return FALSE;
> -    }
> -    priv->context =3D g_udev_client_get_context(priv->udev);
> -    g_signal_connect(G_OBJECT(priv->udev), "uevent",
> -                     G_CALLBACK(spice_usb_device_manager_uevent_cb), sel=
f);
> -    /* Do coldplug (detection of already connected devices) */
> -    g_udev_client_report_devices(priv->udev);
> -#else
>      /* Initialize libusb */
>      priv->context =3D spice_usb_backend_new(err);
>      if (!priv->context) {
>          return FALSE;
>      }
> =20
> +    /* Start listening for usb devices plug / unplug */
>      if (!spice_usb_backend_register_hotplug(priv->context, self,
>                                              spice_usb_device_manager_hot=
plug_cb)) {
>          return FALSE;
>      }
> +#ifndef G_OS_WIN32
>      spice_usb_device_manager_start_event_listening(self, NULL);
>  #endif
> =20
> @@ -324,8 +295,9 @@ static void spice_usb_device_manager_dispose(GObject =
*gobject)
>          g_warn_if_reached();
>          g_atomic_int_set(&priv->event_thread_run, FALSE);
>      }
> -    spice_usb_backend_deregister_hotplug(priv->context);
>  #endif
> +    spice_usb_backend_deregister_hotplug(priv->context);
> +
>      if (priv->event_thread) {
>          g_warn_if_fail(g_atomic_int_get(&priv->event_thread_run) =3D=3D =
FALSE);
>          g_atomic_int_set(&priv->event_thread_run, FALSE);
> @@ -350,14 +322,10 @@ static void spice_usb_device_manager_finalize(GObje=
ct *gobject)
>      if (priv->devices) {
>          g_ptr_array_unref(priv->devices);
>      }
> -#ifdef G_OS_WIN32
> -    g_clear_object(&priv->udev);
> -#endif
>      g_return_if_fail(priv->event_thread =3D=3D NULL);
> -#ifndef G_OS_WIN32
> -    if (priv->context)
> +    if (priv->context) {
>          spice_usb_backend_delete(priv->context);
> -#endif
> +    }
>      free(priv->auto_conn_filter_rules);
>      free(priv->redirect_on_connect_rules);
>  #ifdef G_OS_WIN32
> @@ -891,20 +859,6 @@ static void spice_usb_device_manager_remove_dev(Spic=
eUsbDeviceManager *self,
>      spice_usb_device_unref(device);
>  }
> =20
> -#ifdef G_OS_WIN32
> -static void spice_usb_device_manager_uevent_cb(GUdevClient     *client,
> -                                               SpiceUsbBackendDevice *bd=
ev,
> -                                               gboolean         add,
> -                                               gpointer         user_dat=
a)
> -{
> -    SpiceUsbDeviceManager *self =3D SPICE_USB_DEVICE_MANAGER(user_data);
> -
> -    if (add)
> -        spice_usb_device_manager_add_dev(self, bdev);
> -    else
> -        spice_usb_device_manager_remove_dev(self, bdev);
> -}
> -#else
>  struct hotplug_idle_cb_args {
>      SpiceUsbDeviceManager *self;
>      SpiceUsbBackendDevice *device;
> @@ -940,7 +894,6 @@ static void spice_usb_device_manager_hotplug_cb(void =
*user_data,
>      args->added =3D added;
>      g_idle_add(spice_usb_device_manager_hotplug_idle_cb, args);
>  }
> -#endif // USE_USBREDIR
> =20
>  static void spice_usb_device_manager_channel_connect_cb(
>      GObject *gobject, GAsyncResult *channel_res, gpointer user_data)
> diff --git a/src/win-usb-dev.c b/src/win-usb-dev.c
> deleted file mode 100644
> index c2a5115..0000000
> --- a/src/win-usb-dev.c
> +++ /dev/null
> @@ -1,436 +0,0 @@
> -/* -*- Mode: C; c-basic-offset: 4; indent-tabs-mode: nil -*- */
> -/*
> -   Copyright (C) 2012 Red Hat, Inc.
> -
> -   Red Hat Authors:
> -   Arnon Gilboa <agilboa@redhat.com>
> -   Uri Lublin   <uril@redhat.com>
> -
> -   This library is free software; you can redistribute it and/or
> -   modify it under the terms of the GNU Lesser General Public
> -   License as published by the Free Software Foundation; either
> -   version 2.1 of the License, or (at your option) any later version.
> -
> -   This library is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> -   Lesser General Public License for more details.
> -
> -   You should have received a copy of the GNU Lesser General Public
> -   License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
> -*/
> -
> -#include "config.h"
> -
> -#include <windows.h>
> -#include "win-usb-dev.h"
> -#include "spice-marshal.h"
> -#include "spice-util.h"
> -
> -enum {
> -    PROP_0,
> -    PROP_REDIRECTING
> -};
> -
> -struct _GUdevClientPrivate {
> -    SpiceUsbBackend *ctx;
> -    GList *udev_list;
> -    HWND hwnd;
> -    gboolean redirecting;
> -};
> -
> -#define G_UDEV_CLIENT_WINCLASS_NAME  TEXT("G_UDEV_CLIENT")
> -
> -static void g_udev_client_initable_iface_init(GInitableIface  *iface);
> -
> -G_DEFINE_TYPE_WITH_CODE(GUdevClient, g_udev_client, G_TYPE_OBJECT,
> -                        G_ADD_PRIVATE(GUdevClient)
> -                        G_IMPLEMENT_INTERFACE(G_TYPE_INITABLE, g_udev_cl=
ient_initable_iface_init))
> -
> -enum
> -{
> -    UEVENT_SIGNAL,
> -    LAST_SIGNAL,
> -};
> -
> -static guint signals[LAST_SIGNAL] =3D { 0, };
> -static GUdevClient *singleton =3D NULL;
> -
> -static LRESULT CALLBACK wnd_proc(HWND hwnd, UINT message, WPARAM wparam,=
 LPARAM lparam);
> -
> -//uncomment to debug gudev device lists.
> -//#define DEBUG_GUDEV_DEVICE_LISTS
> -
> -#ifdef DEBUG_GUDEV_DEVICE_LISTS
> -static void g_udev_device_print_list(GList *l, const gchar *msg);
> -#else
> -static void g_udev_device_print_list(GList *l, const gchar *msg) {}
> -#endif
> -static void g_udev_device_print(SpiceUsbBackendDevice *dev, const gchar =
*msg);
> -
> -GQuark g_udev_client_error_quark(void)
> -{
> -    return g_quark_from_static_string("win-gudev-client-error-quark");
> -}
> -
> -GUdevClient *g_udev_client_new(void)
> -{
> -    if (singleton !=3D NULL)
> -        return g_object_ref(singleton);
> -
> -    singleton =3D g_initable_new(G_UDEV_TYPE_CLIENT, NULL, NULL, NULL);
> -    return singleton;
> -}
> -
> -SpiceUsbBackend *g_udev_client_get_context(GUdevClient *client)
> -{
> -    return client->priv->ctx;
> -}
> -
> -/*
> - * devs [in,out] an empty devs list in, full devs list out
> - * Returns: number-of-devices, or a negative value on error.
> - */
> -static ssize_t
> -g_udev_client_list_devices(GUdevClient *self, GList **devs,
> -                           GError **err, const gchar *name)
> -{
> -    SpiceUsbBackendDevice **lusb_list, **dev;
> -    GUdevClientPrivate *priv;
> -    ssize_t n;
> -
> -    g_return_val_if_fail(G_UDEV_IS_CLIENT(self), -1);
> -    g_return_val_if_fail(devs !=3D NULL, -2);
> -
> -    priv =3D self->priv;
> -
> -    g_return_val_if_fail(self->priv->ctx !=3D NULL, -3);
> -
> -    lusb_list =3D spice_usb_backend_get_device_list(priv->ctx);
> -    if (!lusb_list) {
> -        g_set_error(err, G_UDEV_CLIENT_ERROR, G_UDEV_CLIENT_LIBUSB_FAILE=
D,
> -                    "%s: Error getting USB device list", name);
> -        return -4;
> -    }
> -
> -    n =3D 0;
> -    for (dev =3D lusb_list; *dev; dev++) {
> -        *devs =3D g_list_prepend(*devs, spice_usb_backend_device_ref(*de=
v));
> -        n++;
> -    }
> -    spice_usb_backend_free_device_list(lusb_list);
> -
> -    return n;
> -}
> -
> -static void unreference_backend_device(gpointer data)
> -{
> -    spice_usb_backend_device_unref((SpiceUsbBackendDevice *)data);
> -}
> -
> -static void g_udev_client_free_device_list(GList **devs)
> -{
> -    g_return_if_fail(devs !=3D NULL);
> -    if (*devs) {
> -        g_list_free_full(*devs, unreference_backend_device);
> -        *devs =3D NULL;
> -    }
> -}
> -
> -
> -static gboolean
> -g_udev_client_initable_init(GInitable *initable, GCancellable *cancellab=
le,
> -                            GError **err)
> -{
> -    GUdevClient *self;
> -    GUdevClientPrivate *priv;
> -    WNDCLASS wcls;
> -
> -    g_return_val_if_fail(G_UDEV_IS_CLIENT(initable), FALSE);
> -    g_return_val_if_fail(cancellable =3D=3D NULL, FALSE);
> -
> -    self =3D G_UDEV_CLIENT(initable);
> -    priv =3D self->priv;
> -
> -    priv->ctx =3D spice_usb_backend_new(err);
> -    if (!priv->ctx) {
> -        return FALSE;
> -    }
> -
> -#ifdef G_OS_WIN32
> -#if LIBUSB_API_VERSION >=3D 0x01000106
> -    libusb_set_option(priv->ctx, LIBUSB_OPTION_USE_USBDK);
> -#endif
> -#endif
> -
> -    /* get initial device list */
> -    if (g_udev_client_list_devices(self, &priv->udev_list, err, __FUNCTI=
ON__) < 0) {
> -        goto g_udev_client_init_failed;
> -    }
> -
> -    g_udev_device_print_list(priv->udev_list, "init: first list is: ");
> -
> -    /* create a hidden window */
> -    memset(&wcls, 0, sizeof(wcls));
> -    wcls.lpfnWndProc =3D wnd_proc;
> -    wcls.lpszClassName =3D G_UDEV_CLIENT_WINCLASS_NAME;
> -    if (!RegisterClass(&wcls)) {
> -        DWORD e =3D GetLastError();
> -        g_warning("RegisterClass failed , %ld", (long)e);
> -        g_set_error(err, G_UDEV_CLIENT_ERROR, G_UDEV_CLIENT_WINAPI_FAILE=
D,
> -                    "RegisterClass failed: %ld", (long)e);
> -        goto g_udev_client_init_failed;
> -    }
> -    priv->hwnd =3D CreateWindow(G_UDEV_CLIENT_WINCLASS_NAME,
> -                              NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NUL=
L);
> -    if (!priv->hwnd) {
> -        DWORD e =3D GetLastError();
> -        g_warning("CreateWindow failed: %ld", (long)e);
> -        g_set_error(err, G_UDEV_CLIENT_ERROR, G_UDEV_CLIENT_LIBUSB_FAILE=
D,
> -                    "CreateWindow failed: %ld", (long)e);
> -        goto g_udev_client_init_failed_unreg;
> -    }
> -
> -    return TRUE;
> -
> - g_udev_client_init_failed_unreg:
> -    UnregisterClass(G_UDEV_CLIENT_WINCLASS_NAME, NULL);
> - g_udev_client_init_failed:
> -    return FALSE;
> -}
> -
> -static void g_udev_client_initable_iface_init(GInitableIface *iface)
> -{
> -    iface->init =3D g_udev_client_initable_init;
> -}
> -
> -static void report_one_device(gpointer data, gpointer self)
> -{
> -    g_signal_emit(self, signals[UEVENT_SIGNAL], 0, data, TRUE);
> -}
> -
> -void g_udev_client_report_devices(GUdevClient *self)
> -{
> -    g_list_foreach(self->priv->udev_list, report_one_device, self);
> -}
> -
> -static void g_udev_client_init(GUdevClient *self)
> -{
> -    self->priv =3D g_udev_client_get_instance_private(self);
> -}
> -
> -static void g_udev_client_finalize(GObject *gobject)
> -{
> -    GUdevClient *self =3D G_UDEV_CLIENT(gobject);
> -    GUdevClientPrivate *priv =3D self->priv;
> -
> -    singleton =3D NULL;
> -    DestroyWindow(priv->hwnd);
> -    UnregisterClass(G_UDEV_CLIENT_WINCLASS_NAME, NULL);
> -    g_udev_client_free_device_list(&priv->udev_list);
> -
> -    /* free backend context */
> -    g_warn_if_fail(priv->ctx !=3D NULL);
> -    spice_usb_backend_delete(priv->ctx);
> -
> -    /* Chain up to the parent class */
> -    if (G_OBJECT_CLASS(g_udev_client_parent_class)->finalize)
> -        G_OBJECT_CLASS(g_udev_client_parent_class)->finalize(gobject);
> -}
> -
> -static void g_udev_client_get_property(GObject     *gobject,
> -                                       guint        prop_id,
> -                                       GValue      *value,
> -                                       GParamSpec  *pspec)
> -{
> -    GUdevClient *self =3D G_UDEV_CLIENT(gobject);
> -    GUdevClientPrivate *priv =3D self->priv;
> -
> -    switch (prop_id) {
> -    case PROP_REDIRECTING:
> -        g_value_set_boolean(value, priv->redirecting);
> -        break;
> -    default:
> -        G_OBJECT_WARN_INVALID_PROPERTY_ID(gobject, prop_id, pspec);
> -        break;
> -    }
> -}
> -
> -static void handle_dev_change(GUdevClient *self);
> -
> -static void g_udev_client_set_property(GObject       *gobject,
> -                                       guint          prop_id,
> -                                       const GValue  *value,
> -                                       GParamSpec    *pspec)
> -{
> -    GUdevClient *self =3D G_UDEV_CLIENT(gobject);
> -    GUdevClientPrivate *priv =3D self->priv;
> -    gboolean old_val;
> -
> -    switch (prop_id) {
> -    case PROP_REDIRECTING:
> -        old_val =3D priv->redirecting;
> -        priv->redirecting =3D g_value_get_boolean(value);
> -        if (old_val && !priv->redirecting) {
> -            /* This is a redirection completion case.
> -               Inject hotplug event in case we missed device changes
> -               during redirection processing. */
> -            handle_dev_change(self);
> -        }
> -        break;
> -    default:
> -        G_OBJECT_WARN_INVALID_PROPERTY_ID(gobject, prop_id, pspec);
> -        break;
> -    }
> -}
> -
> -static void g_udev_client_class_init(GUdevClientClass *klass)
> -{
> -    GObjectClass *gobject_class =3D G_OBJECT_CLASS(klass);
> -    GParamSpec *pspec;
> -
> -    gobject_class->finalize =3D g_udev_client_finalize;
> -    gobject_class->get_property =3D g_udev_client_get_property;
> -    gobject_class->set_property =3D g_udev_client_set_property;
> -
> -    signals[UEVENT_SIGNAL] =3D
> -        g_signal_new("uevent",
> -                     G_OBJECT_CLASS_TYPE(klass),
> -                     G_SIGNAL_RUN_FIRST,
> -                     G_STRUCT_OFFSET(GUdevClientClass, uevent),
> -                     NULL, NULL,
> -                     g_cclosure_user_marshal_VOID__POINTER_BOOLEAN,
> -                     G_TYPE_NONE,
> -                     2,
> -                     G_TYPE_POINTER,
> -                     G_TYPE_BOOLEAN);
> -
> -    /**
> -    * GUdevClient::redirecting:
> -    *
> -    * This property indicates when a redirection operation
> -    * is in progress on a device. It's set back to FALSE
> -    * once the device is fully redirected to the guest.
> -    */
> -    pspec =3D g_param_spec_boolean("redirecting", "Redirecting",
> -                                 "USB redirection operation is in progre=
ss",
> -                                 FALSE,
> -                                 G_PARAM_READWRITE | G_PARAM_STATIC_STRI=
NGS);
> -
> -    g_object_class_install_property(gobject_class, PROP_REDIRECTING, psp=
ec);
> -}
> -
> -/* comparing bus:addr and vid:pid */
> -static gint compare_usb_devices(gconstpointer a, gconstpointer b)
> -{
> -    const UsbDeviceInformation *a_info, *b_info;
> -    gboolean same_bus, same_addr, same_vid, same_pid;
> -    a_info =3D spice_usb_backend_device_get_info((SpiceUsbBackendDevice =
*)a);
> -    b_info =3D spice_usb_backend_device_get_info((SpiceUsbBackendDevice =
*)b);
> -
> -
> -    same_bus =3D (a_info->bus =3D=3D b_info->bus);
> -    same_addr =3D (a_info->address =3D=3D b_info->address);
> -    same_vid =3D (a_info->vid =3D=3D b_info->vid);
> -    same_pid =3D (a_info->pid =3D=3D b_info->pid);
> -
> -    return (same_bus && same_addr && same_vid && same_pid) ? 0 : -1;
> -}
> -
> -static void update_device_list(GUdevClient *self, GList *new_device_list)
> -{
> -    GList *dev;
> -
> -    for (dev =3D g_list_first(new_device_list); dev !=3D NULL; dev =3D g=
_list_next(dev)) {
> -        GList *found =3D g_list_find_custom(self->priv->udev_list, dev->=
data, compare_usb_devices);
> -        if (found !=3D NULL) {
> -            /* keep old existing libusb_device in the new list, when
> -               usb-dev-manager will maintain its own list of libusb_devi=
ce,
> -               these lists will be completely consistent */
> -            SpiceUsbBackendDevice *temp =3D found->data;
> -            found->data =3D dev->data;
> -            dev->data =3D temp;
> -        }
> -    }
> -
> -    g_udev_client_free_device_list(&self->priv->udev_list);
> -    self->priv->udev_list =3D new_device_list;
> -}
> -
> -static void notify_dev_state_change(GUdevClient *self,
> -                                    GList *old_list,
> -                                    GList *new_list,
> -                                    gboolean add)
> -{
> -    GList *dev;
> -
> -    for (dev =3D g_list_first(old_list); dev !=3D NULL; dev =3D g_list_n=
ext(dev)) {
> -        GList *found =3D g_list_find_custom(new_list, dev->data, compare=
_usb_devices);
> -        if (found =3D=3D NULL) {
> -            g_udev_device_print(dev->data, add ? "add" : "remove");
> -            g_signal_emit(self, signals[UEVENT_SIGNAL], 0, dev->data, ad=
d);
> -        }
> -    }
> -}
> -
> -static void handle_dev_change(GUdevClient *self)
> -{
> -    GUdevClientPrivate *priv =3D self->priv;
> -    GError *err =3D NULL;
> -    GList *now_devs =3D NULL;
> -
> -    if (priv->redirecting =3D=3D TRUE) {
> -        /* On Windows, querying USB device list may return inconsistent =
results
> -           if performed in parallel to redirection flow.
> -           A simulated hotplug event will be injected after redirection
> -           completion in order to process real device list changes that =
may
> -           had taken place during redirection process. */
> -        return;
> -    }
> -
> -    if(g_udev_client_list_devices(self, &now_devs, &err, __FUNCTION__) <=
 0) {
> -        g_warning("could not retrieve device list");
> -        return;
> -    }
> -
> -    g_udev_device_print_list(now_devs, "handle_dev_change: current list:=
");
> -    g_udev_device_print_list(priv->udev_list, "handle_dev_change: previo=
us list:");
> -
> -    /* Unregister devices that are not present anymore */
> -    notify_dev_state_change(self, priv->udev_list, now_devs, FALSE);
> -
> -    /* Register newly inserted devices */
> -    notify_dev_state_change(self, now_devs, priv->udev_list, TRUE);
> -
> -    /* keep most recent info: free previous list, and keep current list =
*/
> -    update_device_list(self, now_devs);
> -}
> -
> -static LRESULT CALLBACK wnd_proc(HWND hwnd, UINT message, WPARAM wparam,=
 LPARAM lparam)
> -{
> -    /* Only DBT_DEVNODES_CHANGED recieved */
> -    if (message =3D=3D WM_DEVICECHANGE) {
> -        handle_dev_change(singleton);
> -    }
> -    return DefWindowProc(hwnd, message, wparam, lparam);
> -}
> -
> -#ifdef DEBUG_GUDEV_DEVICE_LISTS
> -static void g_udev_device_print_list(GList *l, const gchar *msg)
> -{
> -    GList *it;
> -
> -    for (it =3D g_list_first(l); it !=3D NULL; it=3Dg_list_next(it)) {
> -        g_udev_device_print(it->data, msg);
> -    }
> -}
> -#endif
> -
> -static void g_udev_device_print(SpiceUsbBackendDevice *dev, const gchar =
*msg)
> -{
> -    const UsbDeviceInformation *info =3D spice_usb_backend_device_get_in=
fo(dev);
> -
> -    SPICE_DEBUG("%s: %d.%d 0x%04x:0x%04x class %d", msg,
> -                info->bus, info->address,
> -                info->vid, info->pid, info->class);
> -}
> diff --git a/src/win-usb-dev.h b/src/win-usb-dev.h
> deleted file mode 100644
> index fdfe73a..0000000
> --- a/src/win-usb-dev.h
> +++ /dev/null
> @@ -1,84 +0,0 @@
> -/* -*- Mode: C; c-basic-offset: 4; indent-tabs-mode: nil -*- */
> -/*
> -   Copyright (C) 2012 Red Hat, Inc.
> -
> -   Red Hat Authors:
> -   Arnon Gilboa <agilboa@redhat.com>
> -   Uri Lublin   <uril@redhat.com>
> -
> -   This library is free software; you can redistribute it and/or
> -   modify it under the terms of the GNU Lesser General Public
> -   License as published by the Free Software Foundation; either
> -   version 2.1 of the License, or (at your option) any later version.
> -
> -   This library is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> -   Lesser General Public License for more details.
> -
> -   You should have received a copy of the GNU Lesser General Public
> -   License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
> -*/
> -#ifndef __WIN_USB_DEV_H__
> -#define __WIN_USB_DEV_H__
> -
> -#include <gio/gio.h>
> -#include "usb-backend.h"
> -
> -G_BEGIN_DECLS
> -
> -/* GUdevClient */
> -
> -#define G_UDEV_TYPE_CLIENT         (g_udev_client_get_type())
> -#define G_UDEV_CLIENT(o)           (G_TYPE_CHECK_INSTANCE_CAST((o), G_UD=
EV_TYPE_CLIENT, GUdevClient))
> -#define G_UDEV_CLIENT_CLASS(k)     (G_TYPE_CHECK_CLASS_CAST((k), G_UDEV_=
TYPE_CLIENT, GUdevClientClass))
> -#define G_UDEV_IS_CLIENT(o)        (G_TYPE_CHECK_INSTANCE_TYPE((o), G_UD=
EV_TYPE_CLIENT))
> -#define G_UDEV_IS_CLIENT_CLASS(k)  (G_TYPE_CHECK_CLASS_TYPE((k), G_UDEV_=
TYPE_CLIENT))
> -#define G_UDEV_CLIENT_GET_CLASS(o) (G_TYPE_INSTANCE_GET_CLASS((o), G_UDE=
V_TYPE_CLIENT, GUdevClientClass))
> -
> -typedef struct _GUdevClient GUdevClient;
> -typedef struct _GUdevClientClass GUdevClientClass;
> -typedef struct _GUdevClientPrivate GUdevClientPrivate;
> -
> -struct _GUdevClient
> -{
> -    GObject parent;
> -
> -    GUdevClientPrivate *priv;
> -};
> -
> -struct _GUdevClientClass
> -{
> -    GObjectClass parent_class;
> -
> -    /* signals */
> -    void (*uevent)(GUdevClient *client, SpiceUsbBackendDevice *device, g=
boolean add);
> -};
> -
> -GType g_udev_client_get_type(void) G_GNUC_CONST;
> -GUdevClient *g_udev_client_new(void);
> -SpiceUsbBackend *g_udev_client_get_context(GUdevClient *client);
> -void g_udev_client_report_devices(GUdevClient *client);
> -
> -GQuark g_udev_client_error_quark(void);
> -#define G_UDEV_CLIENT_ERROR g_udev_client_error_quark()
> -
> -/**
> - * GUdevClientError:
> - * @G_UDEV_CLIENT_ERROR_FAILED: generic error code
> - * @G_UDEV_CLIENT_LIBUSB_FAILED: a libusb call failed
> - * @G_UDEV_CLIENT_WINAPI_FAILED: a winapi call failed
> - *
> - * Error codes returned by spice-client API.
> - */
> -typedef enum
> -{
> -    G_UDEV_CLIENT_ERROR_FAILED =3D 1,
> -    G_UDEV_CLIENT_LIBUSB_FAILED,
> -    G_UDEV_CLIENT_WINAPI_FAILED
> -} GUdevClientError;
> -
> -
> -G_END_DECLS
> -
> -#endif /* __WIN_USB_DEV_H__ */
> --=20
> 2.17.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--is3rg3x2qndk3ru5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl03Do0ACgkQl9kSPeN6
SE8ocw//eVYRsj4lhPigGpyidQKl8Jd53eZiYSaus/UnqKsNcU7cO0UXsv5MSaev
HO9NtuiYfMEpJyGyzCWrN6NILJ8H4cUxjPEGq9pUT0F11wG4f3prtA/SAR1AZt1x
KP5k5y2bTTugDlTRHpY9X80YGRvuIkBShsQyhaS7YeXvie2I2BX2aawrEXCX/E8G
rZDUGzIh5HyMFmvuHPmpzXNLGO7ysSQhlAOGvOA1ZSG/k3g8cgLsK2vBNXxJhY9w
3ekt7H680bogrRDvrUmrkfPXPAO5OIr4QunwQwCx0hveqci1GTlQyh2fAJ18JRx3
p3laEfqLEoTrWHqHV8hsBH02Gm1e36S4NBhY9/gKrnfxwapXt8ndI4Mru6vhvyVi
qs58ZFgckUl4TIfe63BRmWp16mUK11CKysLbsbDDt9exhZIZ3AjKam8oR0OsheI1
uNG6nIZTkY9tAbECt4kiVR4ty+ElE58DblyfkkdJaoy0xz51EjZutHcBtX8uxKPh
T05RawzkWtMxQ2K+7amoMg5ukrWlZKOGPUiaUTaqclPQFbj7ExgYySzX6/qLUJ9T
ZUigpaqC1GWQR6Mv3NZe+R4RcgFW3VAICuQZ+uEEUhfBmZJFqwV7uFwLvDVruBkD
Mi6FIITmdX+YTFC9qNAEzeN9X3/jmYUXnxI1pgHFHkm9RbTzErE=
=2IQp
-----END PGP SIGNATURE-----

--is3rg3x2qndk3ru5--

--===============2144107927==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============2144107927==--
