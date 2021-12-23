Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30E3047E0CC
	for <lists+spice-devel@lfdr.de>; Thu, 23 Dec 2021 10:21:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E684010E2AB;
	Thu, 23 Dec 2021 09:21:25 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com
 [IPv6:2607:f8b0:4864:20::102a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7799E10E2AB
 for <spice-devel@lists.freedesktop.org>; Thu, 23 Dec 2021 09:21:24 +0000 (UTC)
Received: by mail-pj1-x102a.google.com with SMTP id
 x1-20020a17090a2b0100b001b103e48cfaso5909292pjc.0
 for <spice-devel@lists.freedesktop.org>; Thu, 23 Dec 2021 01:21:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mqZXSNT+rVH+ooPWYjgw4u4ZMFmQ2NuGEf5QHrZFcwY=;
 b=YrvjP4Q8J5eQuoMrJo6mIGQAiTXOCcCbyIMNYEAHgS+awH0PXUBUyw7+GeCPL/5MmU
 V6ZZuDfuDhrJjqtSUe0l+O7/zNT5zlQ0Y1ufA60MF4QCZyTjuHby83DYZlYKC+VcNKvP
 LTo4tGpsrwjPK7spJc3zmI9mflsbtAbHcDQ0Me0eaehi7ls7NX7f2a61uzqMPG8T1gkv
 yvtETHescyUw1gptAmt6ryObOH2LIn6l/K/5NMq+n37jhhNJP6CSVPkJ92DSAH2YpKu6
 UyZSRvxfxett5v+nXHAudcTlHYHNF6RcDm06bI8rC/KOj623iAhHes6tup7OO400KOKE
 svQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mqZXSNT+rVH+ooPWYjgw4u4ZMFmQ2NuGEf5QHrZFcwY=;
 b=hXJM7uCQtABfMY1fAhjZFLz5oOz63F1bwIHg8SOrUbMduMAsGm6lZ9oU2x+bkl/yjd
 zatwcLENfpc3Dk246/mjrEOQ5s6XavswNoLpwLUYl5Un+d4CpGA3xwtzXTGs5r2xs2Xf
 4N2AVF6e91DVf9YOMMW8WJYF+pPoFNinA2Adm2F51Cltf5ItyQlYY/5F57fut4d+sgDV
 4D1ZSBfHq1bo/6K6usdkA/8nG1knU3wqqnpWZzDZoyNgXnKENWHc6Q2hvUFh5ZLjq55n
 Ds3tod8jscscfaasTtVBxy6aYlqFRU8VGyXiuN9PYd/E6+T2YDWdOEBkp8NWUhjI9Wxw
 XBdw==
X-Gm-Message-State: AOAM5310ORG1A1vYhCvubtH0mtT/FvRicr4drqO8iOr8P/MHIM/ylKvt
 zqm7yFEEpMBxJ+28jOuBvxL0a2jpNedt757pugs=
X-Google-Smtp-Source: ABdhPJyUTyV/We5SF5lY9eFCqf0/ec8Wtcs1kPzn9zp7+5bUIqp8r3yGM8WEqV0ggFKHiAn8gDk7mmL56teFJsh6JKQ=
X-Received: by 2002:a17:902:9a43:b0:148:9d8b:bead with SMTP id
 x3-20020a1709029a4300b001489d8bbeadmr1560962plv.76.1640251283907; Thu, 23 Dec
 2021 01:21:23 -0800 (PST)
MIME-Version: 1.0
References: <CAMS0tn2RYzqoFQhYXaGRSnOXe9t_Lnz9t2kBah7VL+2H0R57hQ@mail.gmail.com>
 <CAAg9qJ0DKP8Ki7352yp9-iXuRvY13fHfVi4bUuyy-3pGi4xEUg@mail.gmail.com>
 <CAMS0tn2BosyXYQjR9zLvZF+DNCHB2TWR0Zuzw8hMQHc7o_X1Fw@mail.gmail.com>
 <CAAg9qJ3CnPLNedyh+uy4Lk1rLK=bosft70GD7NDx-eAVDODz8w@mail.gmail.com>
 <CAMS0tn1cSZPaDCjzpXh6xnU2yk=PDshOVM8z-Tasc33crg=boQ@mail.gmail.com>
In-Reply-To: <CAMS0tn1cSZPaDCjzpXh6xnU2yk=PDshOVM8z-Tasc33crg=boQ@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Thu, 23 Dec 2021 09:21:12 +0000
Message-ID: <CAHt6W4cKt-LkBwueG1yWL3_F8jUw_rfirOFDRXSR23FQJQm6Zw@mail.gmail.com>
To: i iordanov <iiordanov@gmail.com>
Content-Type: multipart/alternative; boundary="0000000000001ea83405d3ccc350"
Subject: Re: [Spice-devel] attaching a USB device by libusb_device or
 libusb_device_handle on Android
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Cc: spice-devel <spice-devel@lists.freedesktop.org>, support@morpheusly.com
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--0000000000001ea83405d3ccc350
Content-Type: text/plain; charset="UTF-8"

Hi Iordan,
  could you open a MR?

Il giorno gio 23 dic 2021 alle ore 03:59 i iordanov <iiordanov@gmail.com>
ha scritto:

> Hi Uri,
>
> Thanks for your assistance. I got it working. I'm attaching a patch
> that does the job, and would really like it if we can make it
> acceptable for inclusion into spice-gtk.
>
> In general, the changes accomplish the following:
>
> - Add the ability to allocate a SpiceUsbDevice using a file descriptor
>

I suppose you are speaking about allocate_device_for_file_descriptor. It's
not called anywhere in the code so I suppose it is a public API. In this
case it should start with something like spice_. Also it should have a bit
more documentation and be listed in src/spice-glib-sym-file. But
src/usb-backend.h is not a public header and we don't want it to be so it
does not seem a good idea to declare there.

- Added a field that can keep a reference to the device handle that is
> created by libusb from a file descriptor. This handle is used on
> Android in place of a call to libusb_open() that would fail.
> - On Android, set option LIBUSB_OPTION_NO_DEVICE_DISCOVERY prior to
> libusb_init()
> - Implement a method of retrieving the SpiceUsbBackend context from
> the SpiceUsbDeviceManager (which holds the properly initialized libusb
> context). This backend can be passed to the new
> allocate_device_for_file_descriptor() method.
>

This seems like a bad idea. It exposes something internal. Why not having
just one additional function in device manager like

gboolean
spice_usb_device_manager_add_device_from_fd(SpiceUsbDeviceManager *manager,
GError **err);

The device could be communicated using device_added signal (if results if
not FALSE), error can be returned, no additional interface to expose.
Or returning directory a SpiceUsbDevice* instead of a gboolean (but in this
case interface will have to be blocking).


> Please let me know what changes you think are needed.
>
> Many thanks!
> iordan
>
>
Frediano

On Tue, Dec 21, 2021 at 8:05 AM Uri Lublin <uril@redhat.com> wrote:
> >
> > Hi,
> >
> > On Tue, Dec 21, 2021 at 9:24 AM i iordanov <iiordanov@gmail.com> wrote:
> > >
> > > Hello,
> > >
> > > Thanks for responding! As mentioned, I am trying to find a working,
> > > programmatic way to pass a USB devices by either libusb_device or
> > > libusb_device_handle from aSPICE and Opaque.
> > >
> > > I've now compiled libusb, usbredir 0.12, and recompiled spice-gtk 0.39
> > > with usbredir support.
> > >
> > > The code I came up with looks like the following. The integer
> > > fileDescriptor holds a file descriptor for the USB device obtained in
> > > java after requesting permissions from the user.
> > >
> > > The first bit is from
> > > https://github.com/libusb/libusb/blob/master/android/README.
> > >
> > > NOTE: For the part after the call to allocate_backend_device(), I had
> > > to include the entire usb-backend.c file as you do in your tests in
> > > spice-gtk, since I couldn't find a public API that allows me to
> > > construct a SpiceUsbDevice. This may be a feature request that I'd
> > > need to open with your project provided we can get USB redirection to
> > > work in the first place.
> > >
> > > ======================================
> > > JNIEXPORT void JNICALL
> > >
> Java_com_undatech_opaque_SpiceCommunicator_SpiceSetNativeFileDescriptor(JNIEnv
> > > *env,
> > >
> > >  jobject obj,
> > >
> > >  jint fileDescriptor)
> > > {
> > >     // START:
> https://github.com/libusb/libusb/blob/master/android/README
> > >
> > >     libusb_context *ctx = NULL;
> > >     libusb_device_handle *devh = NULL;
> > >     int r = 0;
> > >     r = libusb_set_option(NULL, LIBUSB_OPTION_NO_DEVICE_DISCOVERY,
> NULL);
> > >     if (r != LIBUSB_SUCCESS) {
> > >         LOGE("%s: libusb_set_option failed", __FUNCTION__);
> > >         return;
> > >     }
> > >     r = libusb_init(&ctx);
> > >     if (r < 0) {
> > >         LOGE("%s: libusb_init failed", __FUNCTION__);
> > >         return;
> > >     }
> > >
> > >     LOGD("%s: calling libusb_wrap_sys_device", __FUNCTION__);
> > >     r = libusb_wrap_sys_device(ctx, (intptr_t)fileDescriptor, &devh);
> > >     if (r < 0) {
> > >         LOGE("%s: libusb_wrap_sys_device failed", __FUNCTION__);
> > >         return;
> > >     } else if (devh == NULL) {
> > >         LOGE("%s: libusb_wrap_sys_device returned invalid handle",
> > > __FUNCTION__);
> > >         return;
> > >     }
> > >
> > >     // END:
> https://github.com/libusb/libusb/blob/master/android/README
> >
> >
> > That means the code should not call libusb_init without setting
> > NO_DEVICE_DISCOVERY.
> > Likely it should not call libusb_open either.
> > The current code does call those functions and also gets the list of
> > USB devices.
> >
> > >
> > >     // Calling functionality from usb-backend.c
> > >     SpiceUsbDevice *device =
> allocate_backend_device(libusb_get_device(devh));
> >
> > I think you need to call libusb_set_option (as above) before any
> libusb_init().
> > Also, maybe you can pass here devh too (or only, and get the device
> > inside the function)
> > and skip calling libusb_open.
> >
> > >
> > >     SpiceUsbDeviceManager *manager =
> > > spice_usb_device_manager_get(global_conn->session, NULL);
> > >     if (manager == NULL) {
> > >         LOGE("%s: spice_usb_device_manager_get returned null manager",
> > > __FUNCTION__);
> > >         return;
> > >     }
> > >
> > >     LOGD("%s: Attaching device via
> > > spice_usb_device_manager_connect_device_async", __FUNCTION__);
> > >     spice_usb_device_manager_connect_device_async(manager, device,
> > > NULL, NULL, NULL);
> > > }
> > > ======================================
> > >
> > > During initialization I do get a few errors, which I suppose are due
> > > to spice-gtk attempting to read USB devices directly, but I am not
> > > certain:
> >
> > It seems libusb_init() fails.
> >
> > >
> > > ======================================
> > > 2021-12-21 02:13:59.761 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/spice-session.c:286 New session (compiled from package
> > > spice-gtk 0.39.4-ce0b8)
> > > 2021-12-21 02:13:59.762 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/spice-session.c:290 Supported channels: main, display, inputs,
> > > cursor, playback, record, usbredir
> > > 2021-12-21 02:13:59.765 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/usb-device-manager.c:391 auto-connect filter set to
> > > 0x03,-1,-1,-1,0|-1,-1,-1,-1,1
> > > 2021-12-21 02:13:59.766 3011-3060/com.iiordanov.aSPICE
> > > W/GLib+android-spice: Error initializing LIBUSB support: Input/Output
> > > Error [-1]
> > > 2021-12-21 02:13:59.766 3011-3060/com.iiordanov.aSPICE
> > > E/GLib+android-spice: spice_usb_backend_deregister_hotplug: assertion
> > > 'be != NULL' failed
> > > 2021-12-21 02:13:59.762 3011-3011/com.iiordanov.aSPICE W/Thread-4:
> > > type=1400 audit(0.0:1572): avc: denied { read } for name="usb"
> > > dev="tmpfs" ino=1397419
> > > scontext=u:r:untrusted_app:s0:c181,c257,c512,c768
> > > tcontext=u:object_r:usb_device:s0 tclass=dir permissive=0
> > > app=com.iiordanov.aSPICE
> > > 2021-12-21 02:13:59.766 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/spice-session.c:1578 Could not initialize SpiceUsbDeviceManager
> > > - Error initializing LIBUSB support: Input/Output Error [-1]
> >
> > For example here.
> >
> > Regards,
> >     Uri.
> >
> >
> > > 2021-12-21 02:13:59.766 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/usb-device-manager.c:391 auto-connect filter set to
> > > 0x03,-1,-1,-1,0|-1,-1,-1,-1,1
> > > 2021-12-21 02:13:59.766 3011-3060/com.iiordanov.aSPICE
> > > W/GLib+android-spice: Error initializing LIBUSB support: Input/Output
> > > Error [-1]
> > > 2021-12-21 02:13:59.766 3011-3060/com.iiordanov.aSPICE
> > > E/GLib+android-spice: spice_usb_backend_deregister_hotplug: assertion
> > > 'be != NULL' failed
> > > 2021-12-21 02:13:59.766 3011-3060/com.iiordanov.aSPICE
> > > W/GLib+android-spice: Error initializing LIBUSB support: Input/Output
> > > Error [-1]
> > > 2021-12-21 02:13:59.766 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/spice-session.c:1578 Could not initialize SpiceUsbDeviceManager
> > > - Error initializing LIBUSB support: Input/Output Error [-1]
> > > 2021-12-21 02:13:59.766 3011-3060/com.iiordanov.aSPICE
> > > W/GLib+android-spice: Error initializing LIBUSB support: Input/Output
> > > Error [-1]
> > > ======================================
> > >
> > > The rest of the log looks very encouraging, save for the fact that no
> > > device is attached to the remote. The same device does attach when I
> > > use spicy from my laptop to the same VM. Here is the log that is
> > > output from the above code and subsequently by spice-gtk:
> > >
> > > ======================================
> > > 2021-12-21 02:13:59.957 3011-3060/com.iiordanov.aSPICE
> > > D/SpiceCommunicator: Passing fd: 85 to SPICE for device:
> > >
> UsbDevice[mName=/dev/bus/usb/001/002,mVendorId=7741,mProductId=8338,mClass=0,mSubclass=0,mProtocol=0,mManufacturerName=CBM
> > >     ,mProductName=Flash Disk
> > >
> ,mVersion=1.00,mSerialNumberReader=android.hardware.usb.IUsbSerialReader$Stub$Proxy@ecfcac3
> ,
> > > mHasAudioPlayback=false, mHasAudioCapture=false, mHasMidi=false,
> > > mHasVideoCapture=false, mHasVideoPlayback=false, mConfigurations=[
> > >
>  UsbConfiguration[mId=1,mName=null,mAttributes=128,mMaxPower=50,mInterfaces=[
> > >
>  UsbInterface[mId=0,mAlternateSetting=0,mName=null,mClass=8,mSubclass=6,mProtocol=80,mEndpoints=[
> > >
>  UsbEndpoint[mAddress=1,mAttributes=2,mMaxPacketSize=512,mInterval=0]
> > >
>  UsbEndpoint[mAddress=129,mAttributes=2,mMaxPacketSize=512,mInterval=0]]]]
> > > 2021-12-21 02:13:59.957 3011-3060/com.iiordanov.aSPICE
> > > D/android-service:
> > >
> Java_com_undatech_opaque_SpiceCommunicator_SpiceSetNativeFileDescriptor:
> > > start
> > > 2021-12-21 02:13:59.957 3011-3060/com.iiordanov.aSPICE
> > > D/android-service:
> > >
> Java_com_undatech_opaque_SpiceCommunicator_SpiceSetNativeFileDescriptor:
> > > calling libusb_wrap_sys_device
> > > 2021-12-21 02:13:59.958 3011-3060/com.iiordanov.aSPICE
> > > D/android-service:
> > >
> Java_com_undatech_opaque_SpiceCommunicator_SpiceSetNativeFileDescriptor:
> > > calling allocate_backend_device
> > > 2021-12-21 02:13:59.958 3011-3060/com.iiordanov.aSPICE
> > > D/android-service:
> > >
> Java_com_undatech_opaque_SpiceCommunicator_SpiceSetNativeFileDescriptor:
> > > calling spice_usb_device_manager_get
> > > 2021-12-21 02:13:59.956 3011-3011/com.iiordanov.aSPICE W/Thread-4:
> > > type=1400 audit(0.0:1578): avc: denied { read } for name="usb"
> > > dev="tmpfs" ino=1397419
> > > scontext=u:r:untrusted_app:s0:c181,c257,c512,c768
> > > tcontext=u:object_r:usb_device:s0 tclass=dir permissive=0
> > > app=com.iiordanov.aSPICE
> > > 2021-12-21 02:13:59.958 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/usb-device-manager.c:391 auto-connect filter set to
> > > 0x03,-1,-1,-1,0|-1,-1,-1,-1,1
> > > 2021-12-21 02:13:59.960 3011-3060/com.iiordanov.aSPICE
> > > D/android-service:
> > >
> Java_com_undatech_opaque_SpiceCommunicator_SpiceSetNativeFileDescriptor:
> > > Attaching device via spice_usb_device_manager_connect_device_async
> > > 2021-12-21 02:13:59.960 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/usb-device-manager.c:1103 connecting device 0x70efaf1490
> > > 2021-12-21 02:13:59.960 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/channel-usbredir.c:344 usbredir-9:0: connecting device
> > > 1e3d:2092 (0x70efaf1490) to channel 0x725fae4540
> > > 2021-12-21 02:13:59.960 3011-3079/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/spice-channel.c:2921 test cap 1 in 0x1052: yes
> > > 2021-12-21 02:13:59.961 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/spice-channel.c:2703 usbredir-9:0: Open coroutine starting
> > > 0x725fae4540
> > > 2021-12-21 02:13:59.962 3011-3115/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/spice-channel.c:2540 usbredir-9:0: Started background coroutine
> > > 0x725fae43f8
> > > 2021-12-21 02:13:59.962 3011-3115/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/spice-session.c:2265 usbredir-9:0: Using plain text, port 6001
> > > 2021-12-21 02:13:59.962 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/spice-channel.c:2703 usbredir-9:1: Open coroutine starting
> > > 0x725fae4340
> > > 2021-12-21 02:13:59.963 3011-3116/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/spice-channel.c:2540 usbredir-9:1: Started background coroutine
> > > 0x725fae41f8
> > > 2021-12-21 02:13:59.963 3011-3116/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/spice-session.c:2265 usbredir-9:1: Using plain text, port 6001
> > > 2021-12-21 02:13:59.965 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/spice-session.c:2196 open host MYHOST:6001
> > > 2021-12-21 02:13:59.965 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/spice-session.c:2118 usbredir-9:0: connecting 0x709fb7aaf0...
> > > 2021-12-21 02:13:59.965 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/spice-session.c:2196 open host MYHOST:6001
> > > 2021-12-21 02:13:59.966 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/spice-session.c:2118 usbredir-9:1: connecting 0x709fa7caf0...
> > > 2021-12-21 02:13:59.992 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/spice-session.c:2102 usbredir-9:0: connect ready
> > > 2021-12-21 02:13:59.992 3011-3115/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/spice-channel.c:1372 usbredir-9:0: channel type 9 id 0 num
> > > common caps 1 num caps 1
> > > 2021-12-21 02:14:00.002 3011-3115/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/spice-channel.c:1396 usbredir-9:0: Peer version: 2:2
> > > 2021-12-21 02:14:00.002 3011-3115/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/spice-channel.c:1952 usbredir-9:0: spice_channel_recv_link_msg:
> > > 2 caps
> > > 2021-12-21 02:14:00.002 3011-3115/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/spice-channel.c:1966 usbredir-9:0: got remote common caps:
> > > 2021-12-21 02:14:00.002 3011-3115/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/spice-channel.c:1902     0:0xB
> > > 2021-12-21 02:14:00.002 3011-3115/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/spice-channel.c:1973 usbredir-9:0: got remote channel caps:
> > > 2021-12-21 02:14:00.002 3011-3115/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/spice-channel.c:1902     0:0x1
> > > 2021-12-21 02:14:00.002 3011-3115/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/spice-channel.c:2921 test cap 0 in 0xB: yes
> > > 2021-12-21 02:14:00.002 3011-3115/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/spice-channel.c:2921 test cap 1 in 0xB: yes
> > > 2021-12-21 02:14:00.003 3011-3115/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/spice-channel.c:2921 test cap 3 in 0xB: yes
> > > 2021-12-21 02:14:00.003 3011-3115/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/spice-channel.c:2005 usbredir-9:0: use mini header: 1
> > > 2021-12-21 02:14:00.003 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/spice-session.c:2102 usbredir-9:1: connect ready
> > > 2021-12-21 02:14:00.003 3011-3116/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/spice-channel.c:1372 usbredir-9:1: channel type 9 id 1 num
> > > common caps 1 num caps 1
> > > 2021-12-21 02:14:00.005 3011-3115/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/spice-channel.c:1303 usbredir-9:0: channel up, state 3
> > > 2021-12-21 02:14:00.013 3011-3116/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/spice-channel.c:1396 usbredir-9:1: Peer version: 2:2
> > > 2021-12-21 02:14:00.014 3011-3116/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/spice-channel.c:1952 usbredir-9:1: spice_channel_recv_link_msg:
> > > 2 caps
> > > 2021-12-21 02:14:00.014 3011-3116/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/spice-channel.c:1966 usbredir-9:1: got remote common caps:
> > > 2021-12-21 02:14:00.014 3011-3116/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/spice-channel.c:1902     0:0xB
> > > 2021-12-21 02:14:00.014 3011-3116/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/spice-channel.c:1973 usbredir-9:1: got remote channel caps:
> > > 2021-12-21 02:14:00.014 3011-3116/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/spice-channel.c:1902     0:0x1
> > > 2021-12-21 02:14:00.014 3011-3116/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/spice-channel.c:2921 test cap 0 in 0xB: yes
> > > 2021-12-21 02:14:00.014 3011-3116/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/spice-channel.c:2921 test cap 1 in 0xB: yes
> > > 2021-12-21 02:14:00.014 3011-3116/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/spice-channel.c:2921 test cap 3 in 0xB: yes
> > > 2021-12-21 02:14:00.014 3011-3116/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/spice-channel.c:2005 usbredir-9:1: use mini header: 1
> > > 2021-12-21 02:14:00.018 3011-3116/com.iiordanov.aSPICE D/GLib+GSpice:
> > > ../src/spice-channel.c:1303 usbredir-9:1: channel up, state 3
> > > ======================================
> > >
> > > Your help and suggestions are highly appreciated!
> > >
> > > Sincerely,
> > > iordan
> > >
> > > On Mon, Dec 20, 2021 at 5:57 AM Uri Lublin <uril@redhat.com> wrote:
> > > >
> > > > Hi iordan,
> > > >
> > > > On Mon, Dec 20, 2021 at 9:46 AM i iordanov <iiordanov@gmail.com>
> wrote:
> > > > >
> > > > > Hi guys,
> > > > >
> > > > > I saw that the developers at libusb have done a bunch of work to
> > > > > support accessing USB devices on unrooted Android devices, and in
> > > > > response to a user request, I decided to look into the current
> state
> > > > > of the implementation.
> > > >
> > > > Congrats to libusb developers.
> > > >
> > > > >
> > > > > I am able to obtain permissions and get both:
> > > > >
> > > > > libusb_device *dev
> > > > >
> > > > > and
> > > > >
> > > > > libusb_device_handle *handle
> > > > >
> > > > > for an attached USB stick, but now do not have a good idea how to
> > > > > request libspice to attach the device to the remote.
> > > > >
> > > > > Is there an API exposed that would permit me to attach devices by
> > > > > either libusb_device or libusb_device_handle? In either case, any
> > > > > pointers on how to accomplish this are welcome!
> > > >
> > > > On the client side, you need to build usbredir and rebuild spice-gtk
> > > > with usbredir enabled.
> > > >
> > > > On the server side you need to build usbredir and rebuild Qemu with
> > > > usbredir enabled.
> > > > You also need to add to your VM configuration some USB devices and
> > > > attach them to SPICE.
> > > > See SPICE User Manual [1] "USB redirection" for details.
> > > >
> > > > [1] https://www.spice-space.org/spice-user-manual.html
> > > >
> > > > Regards,
> > > >     Uri.
> > > >
> > > > >
> > > > > Sincerely,
> > > > > iordan
> > > > >
> > > > > --
> > > > > The conscious mind has only one thread of execution.
> > > > >
> > > >
> > >
> > >
> > > --
> > > The conscious mind has only one thread of execution.
> > >
> >
>
>
> --
> The conscious mind has only one thread of execution.
>

--0000000000001ea83405d3ccc350
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi Iordan,</div><div>=C2=A0 could yo=
u open a MR?</div><div><br></div></div><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">Il giorno gio 23 dic 2021 alle ore 03:59 i io=
rdanov &lt;<a href=3D"mailto:iiordanov@gmail.com">iiordanov@gmail.com</a>&g=
t; ha scritto:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">H=
i Uri,<br>
<br>
Thanks for your assistance. I got it working. I&#39;m attaching a patch<br>
that does the job, and would really like it if we can make it<br>
acceptable for inclusion into spice-gtk.<br>
<br>
In general, the changes accomplish the following:<br>
<br>
- Add the ability to allocate a SpiceUsbDevice using a file descriptor<br><=
/blockquote><div><br></div><div>I suppose you are speaking about allocate_d=
evice_for_file_descriptor. It&#39;s not called anywhere in the code so I su=
ppose it is a public API. In this case it should start with something like =
spice_. Also it should have a bit more documentation and be listed in src/s=
pice-glib-sym-file. But src/usb-backend.h is not a public header and we don=
&#39;t want it to be so it does not seem a good idea to declare there.</div=
><div><br> </div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
- Added a field that can keep a reference to the device handle that is<br>
created by libusb from a file descriptor. This handle is used on<br>
Android in place of a call to libusb_open() that would fail.<br>
- On Android, set option LIBUSB_OPTION_NO_DEVICE_DISCOVERY prior to<br>
libusb_init()<br>
- Implement a method of retrieving the SpiceUsbBackend context from<br>
the SpiceUsbDeviceManager (which holds the properly initialized libusb<br>
context). This backend can be passed to the new<br>
allocate_device_for_file_descriptor() method.<br></blockquote><div><br></di=
v><div>This seems like a bad idea. It exposes something internal. Why not h=
aving just one additional function in device manager like</div><div><br></d=
iv><div>gboolean<br>spice_usb_device_manager_add_device_from_fd(SpiceUsbDev=
iceManager *manager, GError **err);</div><div><br></div><div>The device cou=
ld be communicated using device_added signal (if results if not FALSE), err=
or can be returned, no additional interface to expose.</div><div>Or returni=
ng directory a SpiceUsbDevice* instead of a gboolean (but in this case inte=
rface will have to be blocking).<br></div><div><br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
<br>
Please let me know what changes you think are needed.<br>
<br>
Many thanks!<br>
iordan<br>
<br></blockquote><div><br></div><div>Frediano</div><div> <br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">
On Tue, Dec 21, 2021 at 8:05 AM Uri Lublin &lt;<a href=3D"mailto:uril@redha=
t.com" target=3D"_blank">uril@redhat.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; On Tue, Dec 21, 2021 at 9:24 AM i iordanov &lt;<a href=3D"mailto:iiord=
anov@gmail.com" target=3D"_blank">iiordanov@gmail.com</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; Hello,<br>
&gt; &gt;<br>
&gt; &gt; Thanks for responding! As mentioned, I am trying to find a workin=
g,<br>
&gt; &gt; programmatic way to pass a USB devices by either libusb_device or=
<br>
&gt; &gt; libusb_device_handle from aSPICE and Opaque.<br>
&gt; &gt;<br>
&gt; &gt; I&#39;ve now compiled libusb, usbredir 0.12, and recompiled spice=
-gtk 0.39<br>
&gt; &gt; with usbredir support.<br>
&gt; &gt;<br>
&gt; &gt; The code I came up with looks like the following. The integer<br>
&gt; &gt; fileDescriptor holds a file descriptor for the USB device obtaine=
d in<br>
&gt; &gt; java after requesting permissions from the user.<br>
&gt; &gt;<br>
&gt; &gt; The first bit is from<br>
&gt; &gt; <a href=3D"https://github.com/libusb/libusb/blob/master/android/R=
EADME" rel=3D"noreferrer" target=3D"_blank">https://github.com/libusb/libus=
b/blob/master/android/README</a>.<br>
&gt; &gt;<br>
&gt; &gt; NOTE: For the part after the call to allocate_backend_device(), I=
 had<br>
&gt; &gt; to include the entire usb-backend.c file as you do in your tests =
in<br>
&gt; &gt; spice-gtk, since I couldn&#39;t find a public API that allows me =
to<br>
&gt; &gt; construct a SpiceUsbDevice. This may be a feature request that I&=
#39;d<br>
&gt; &gt; need to open with your project provided we can get USB redirectio=
n to<br>
&gt; &gt; work in the first place.<br>
&gt; &gt;<br>
&gt; &gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt; &gt; JNIEXPORT void JNICALL<br>
&gt; &gt; Java_com_undatech_opaque_SpiceCommunicator_SpiceSetNativeFileDesc=
riptor(JNIEnv<br>
&gt; &gt; *env,<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 jobject obj,<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 jint fileDescriptor)<br>
&gt; &gt; {<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0// START: <a href=3D"https://github.com/libusb=
/libusb/blob/master/android/README" rel=3D"noreferrer" target=3D"_blank">ht=
tps://github.com/libusb/libusb/blob/master/android/README</a><br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0libusb_context *ctx =3D NULL;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0libusb_device_handle *devh =3D NULL;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0int r =3D 0;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0r =3D libusb_set_option(NULL, LIBUSB_OPTION_NO=
_DEVICE_DISCOVERY, NULL);<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0if (r !=3D LIBUSB_SUCCESS) {<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0LOGE(&quot;%s: libusb_set_option=
 failed&quot;, __FUNCTION__);<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0r =3D libusb_init(&amp;ctx);<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0if (r &lt; 0) {<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0LOGE(&quot;%s: libusb_init faile=
d&quot;, __FUNCTION__);<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0LOGD(&quot;%s: calling libusb_wrap_sys_device&=
quot;, __FUNCTION__);<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0r =3D libusb_wrap_sys_device(ctx, (intptr_t)fi=
leDescriptor, &amp;devh);<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0if (r &lt; 0) {<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0LOGE(&quot;%s: libusb_wrap_sys_d=
evice failed&quot;, __FUNCTION__);<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0} else if (devh =3D=3D NULL) {<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0LOGE(&quot;%s: libusb_wrap_sys_d=
evice returned invalid handle&quot;,<br>
&gt; &gt; __FUNCTION__);<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0// END: <a href=3D"https://github.com/libusb/l=
ibusb/blob/master/android/README" rel=3D"noreferrer" target=3D"_blank">http=
s://github.com/libusb/libusb/blob/master/android/README</a><br>
&gt;<br>
&gt;<br>
&gt; That means the code should not call libusb_init without setting<br>
&gt; NO_DEVICE_DISCOVERY.<br>
&gt; Likely it should not call libusb_open either.<br>
&gt; The current code does call those functions and also gets the list of<b=
r>
&gt; USB devices.<br>
&gt;<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0// Calling functionality from usb-backend.c<br=
>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0SpiceUsbDevice *device =3D allocate_backend_de=
vice(libusb_get_device(devh));<br>
&gt;<br>
&gt; I think you need to call libusb_set_option (as above) before any libus=
b_init().<br>
&gt; Also, maybe you can pass here devh too (or only, and get the device<br=
>
&gt; inside the function)<br>
&gt; and skip calling libusb_open.<br>
&gt;<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0SpiceUsbDeviceManager *manager =3D<br>
&gt; &gt; spice_usb_device_manager_get(global_conn-&gt;session, NULL);<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0if (manager =3D=3D NULL) {<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0LOGE(&quot;%s: spice_usb_device_=
manager_get returned null manager&quot;,<br>
&gt; &gt; __FUNCTION__);<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0LOGD(&quot;%s: Attaching device via<br>
&gt; &gt; spice_usb_device_manager_connect_device_async&quot;, __FUNCTION__=
);<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0spice_usb_device_manager_connect_device_async(=
manager, device,<br>
&gt; &gt; NULL, NULL, NULL);<br>
&gt; &gt; }<br>
&gt; &gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt; &gt;<br>
&gt; &gt; During initialization I do get a few errors, which I suppose are =
due<br>
&gt; &gt; to spice-gtk attempting to read USB devices directly, but I am no=
t<br>
&gt; &gt; certain:<br>
&gt;<br>
&gt; It seems libusb_init() fails.<br>
&gt;<br>
&gt; &gt;<br>
&gt; &gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt; &gt; 2021-12-21 02:13:59.761 3011-3060/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/spice-session.c:286 New session (compiled from package<br>
&gt; &gt; spice-gtk 0.39.4-ce0b8)<br>
&gt; &gt; 2021-12-21 02:13:59.762 3011-3060/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/spice-session.c:290 Supported channels: main, display, inp=
uts,<br>
&gt; &gt; cursor, playback, record, usbredir<br>
&gt; &gt; 2021-12-21 02:13:59.765 3011-3060/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/usb-device-manager.c:391 auto-connect filter set to<br>
&gt; &gt; 0x03,-1,-1,-1,0|-1,-1,-1,-1,1<br>
&gt; &gt; 2021-12-21 02:13:59.766 3011-3060/com.iiordanov.aSPICE<br>
&gt; &gt; W/GLib+android-spice: Error initializing LIBUSB support: Input/Ou=
tput<br>
&gt; &gt; Error [-1]<br>
&gt; &gt; 2021-12-21 02:13:59.766 3011-3060/com.iiordanov.aSPICE<br>
&gt; &gt; E/GLib+android-spice: spice_usb_backend_deregister_hotplug: asser=
tion<br>
&gt; &gt; &#39;be !=3D NULL&#39; failed<br>
&gt; &gt; 2021-12-21 02:13:59.762 3011-3011/com.iiordanov.aSPICE W/Thread-4=
:<br>
&gt; &gt; type=3D1400 audit(0.0:1572): avc: denied { read } for name=3D&quo=
t;usb&quot;<br>
&gt; &gt; dev=3D&quot;tmpfs&quot; ino=3D1397419<br>
&gt; &gt; scontext=3Du:r:untrusted_app:s0:c181,c257,c512,c768<br>
&gt; &gt; tcontext=3Du:object_r:usb_device:s0 tclass=3Ddir permissive=3D0<b=
r>
&gt; &gt; app=3Dcom.iiordanov.aSPICE<br>
&gt; &gt; 2021-12-21 02:13:59.766 3011-3060/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/spice-session.c:1578 Could not initialize SpiceUsbDeviceMa=
nager<br>
&gt; &gt; - Error initializing LIBUSB support: Input/Output Error [-1]<br>
&gt;<br>
&gt; For example here.<br>
&gt;<br>
&gt; Regards,<br>
&gt;=C2=A0 =C2=A0 =C2=A0Uri.<br>
&gt;<br>
&gt;<br>
&gt; &gt; 2021-12-21 02:13:59.766 3011-3060/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/usb-device-manager.c:391 auto-connect filter set to<br>
&gt; &gt; 0x03,-1,-1,-1,0|-1,-1,-1,-1,1<br>
&gt; &gt; 2021-12-21 02:13:59.766 3011-3060/com.iiordanov.aSPICE<br>
&gt; &gt; W/GLib+android-spice: Error initializing LIBUSB support: Input/Ou=
tput<br>
&gt; &gt; Error [-1]<br>
&gt; &gt; 2021-12-21 02:13:59.766 3011-3060/com.iiordanov.aSPICE<br>
&gt; &gt; E/GLib+android-spice: spice_usb_backend_deregister_hotplug: asser=
tion<br>
&gt; &gt; &#39;be !=3D NULL&#39; failed<br>
&gt; &gt; 2021-12-21 02:13:59.766 3011-3060/com.iiordanov.aSPICE<br>
&gt; &gt; W/GLib+android-spice: Error initializing LIBUSB support: Input/Ou=
tput<br>
&gt; &gt; Error [-1]<br>
&gt; &gt; 2021-12-21 02:13:59.766 3011-3060/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/spice-session.c:1578 Could not initialize SpiceUsbDeviceMa=
nager<br>
&gt; &gt; - Error initializing LIBUSB support: Input/Output Error [-1]<br>
&gt; &gt; 2021-12-21 02:13:59.766 3011-3060/com.iiordanov.aSPICE<br>
&gt; &gt; W/GLib+android-spice: Error initializing LIBUSB support: Input/Ou=
tput<br>
&gt; &gt; Error [-1]<br>
&gt; &gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt; &gt;<br>
&gt; &gt; The rest of the log looks very encouraging, save for the fact tha=
t no<br>
&gt; &gt; device is attached to the remote. The same device does attach whe=
n I<br>
&gt; &gt; use spicy from my laptop to the same VM. Here is the log that is<=
br>
&gt; &gt; output from the above code and subsequently by spice-gtk:<br>
&gt; &gt;<br>
&gt; &gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt; &gt; 2021-12-21 02:13:59.957 3011-3060/com.iiordanov.aSPICE<br>
&gt; &gt; D/SpiceCommunicator: Passing fd: 85 to SPICE for device:<br>
&gt; &gt; UsbDevice[mName=3D/dev/bus/usb/001/002,mVendorId=3D7741,mProductI=
d=3D8338,mClass=3D0,mSubclass=3D0,mProtocol=3D0,mManufacturerName=3DCBM<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0,mProductName=3DFlash Disk<br>
&gt; &gt; ,mVersion=3D1.00,mSerialNumberReader=3Dandroid.hardware.usb.IUsbS=
erialReader$Stub$Proxy@ecfcac3,<br>
&gt; &gt; mHasAudioPlayback=3Dfalse, mHasAudioCapture=3Dfalse, mHasMidi=3Df=
alse,<br>
&gt; &gt; mHasVideoCapture=3Dfalse, mHasVideoPlayback=3Dfalse, mConfigurati=
ons=3D[<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0UsbConfiguration[mId=3D1,mName=3Dnull,mAttribu=
tes=3D128,mMaxPower=3D50,mInterfaces=3D[<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0UsbInterface[mId=3D0,mAlternateSetting=3D0,mNa=
me=3Dnull,mClass=3D8,mSubclass=3D6,mProtocol=3D80,mEndpoints=3D[<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0UsbEndpoint[mAddress=3D1,mAttributes=3D2,mMaxP=
acketSize=3D512,mInterval=3D0]<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0UsbEndpoint[mAddress=3D129,mAttributes=3D2,mMa=
xPacketSize=3D512,mInterval=3D0]]]]<br>
&gt; &gt; 2021-12-21 02:13:59.957 3011-3060/com.iiordanov.aSPICE<br>
&gt; &gt; D/android-service:<br>
&gt; &gt; Java_com_undatech_opaque_SpiceCommunicator_SpiceSetNativeFileDesc=
riptor:<br>
&gt; &gt; start<br>
&gt; &gt; 2021-12-21 02:13:59.957 3011-3060/com.iiordanov.aSPICE<br>
&gt; &gt; D/android-service:<br>
&gt; &gt; Java_com_undatech_opaque_SpiceCommunicator_SpiceSetNativeFileDesc=
riptor:<br>
&gt; &gt; calling libusb_wrap_sys_device<br>
&gt; &gt; 2021-12-21 02:13:59.958 3011-3060/com.iiordanov.aSPICE<br>
&gt; &gt; D/android-service:<br>
&gt; &gt; Java_com_undatech_opaque_SpiceCommunicator_SpiceSetNativeFileDesc=
riptor:<br>
&gt; &gt; calling allocate_backend_device<br>
&gt; &gt; 2021-12-21 02:13:59.958 3011-3060/com.iiordanov.aSPICE<br>
&gt; &gt; D/android-service:<br>
&gt; &gt; Java_com_undatech_opaque_SpiceCommunicator_SpiceSetNativeFileDesc=
riptor:<br>
&gt; &gt; calling spice_usb_device_manager_get<br>
&gt; &gt; 2021-12-21 02:13:59.956 3011-3011/com.iiordanov.aSPICE W/Thread-4=
:<br>
&gt; &gt; type=3D1400 audit(0.0:1578): avc: denied { read } for name=3D&quo=
t;usb&quot;<br>
&gt; &gt; dev=3D&quot;tmpfs&quot; ino=3D1397419<br>
&gt; &gt; scontext=3Du:r:untrusted_app:s0:c181,c257,c512,c768<br>
&gt; &gt; tcontext=3Du:object_r:usb_device:s0 tclass=3Ddir permissive=3D0<b=
r>
&gt; &gt; app=3Dcom.iiordanov.aSPICE<br>
&gt; &gt; 2021-12-21 02:13:59.958 3011-3060/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/usb-device-manager.c:391 auto-connect filter set to<br>
&gt; &gt; 0x03,-1,-1,-1,0|-1,-1,-1,-1,1<br>
&gt; &gt; 2021-12-21 02:13:59.960 3011-3060/com.iiordanov.aSPICE<br>
&gt; &gt; D/android-service:<br>
&gt; &gt; Java_com_undatech_opaque_SpiceCommunicator_SpiceSetNativeFileDesc=
riptor:<br>
&gt; &gt; Attaching device via spice_usb_device_manager_connect_device_asyn=
c<br>
&gt; &gt; 2021-12-21 02:13:59.960 3011-3060/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/usb-device-manager.c:1103 connecting device 0x70efaf1490<b=
r>
&gt; &gt; 2021-12-21 02:13:59.960 3011-3060/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/channel-usbredir.c:344 usbredir-9:0: connecting device<br>
&gt; &gt; 1e3d:2092 (0x70efaf1490) to channel 0x725fae4540<br>
&gt; &gt; 2021-12-21 02:13:59.960 3011-3079/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/spice-channel.c:2921 test cap 1 in 0x1052: yes<br>
&gt; &gt; 2021-12-21 02:13:59.961 3011-3060/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/spice-channel.c:2703 usbredir-9:0: Open coroutine starting=
<br>
&gt; &gt; 0x725fae4540<br>
&gt; &gt; 2021-12-21 02:13:59.962 3011-3115/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/spice-channel.c:2540 usbredir-9:0: Started background coro=
utine<br>
&gt; &gt; 0x725fae43f8<br>
&gt; &gt; 2021-12-21 02:13:59.962 3011-3115/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/spice-session.c:2265 usbredir-9:0: Using plain text, port =
6001<br>
&gt; &gt; 2021-12-21 02:13:59.962 3011-3060/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/spice-channel.c:2703 usbredir-9:1: Open coroutine starting=
<br>
&gt; &gt; 0x725fae4340<br>
&gt; &gt; 2021-12-21 02:13:59.963 3011-3116/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/spice-channel.c:2540 usbredir-9:1: Started background coro=
utine<br>
&gt; &gt; 0x725fae41f8<br>
&gt; &gt; 2021-12-21 02:13:59.963 3011-3116/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/spice-session.c:2265 usbredir-9:1: Using plain text, port =
6001<br>
&gt; &gt; 2021-12-21 02:13:59.965 3011-3060/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/spice-session.c:2196 open host MYHOST:6001<br>
&gt; &gt; 2021-12-21 02:13:59.965 3011-3060/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/spice-session.c:2118 usbredir-9:0: connecting 0x709fb7aaf0=
...<br>
&gt; &gt; 2021-12-21 02:13:59.965 3011-3060/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/spice-session.c:2196 open host MYHOST:6001<br>
&gt; &gt; 2021-12-21 02:13:59.966 3011-3060/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/spice-session.c:2118 usbredir-9:1: connecting 0x709fa7caf0=
...<br>
&gt; &gt; 2021-12-21 02:13:59.992 3011-3060/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/spice-session.c:2102 usbredir-9:0: connect ready<br>
&gt; &gt; 2021-12-21 02:13:59.992 3011-3115/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/spice-channel.c:1372 usbredir-9:0: channel type 9 id 0 num=
<br>
&gt; &gt; common caps 1 num caps 1<br>
&gt; &gt; 2021-12-21 02:14:00.002 3011-3115/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/spice-channel.c:1396 usbredir-9:0: Peer version: 2:2<br>
&gt; &gt; 2021-12-21 02:14:00.002 3011-3115/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/spice-channel.c:1952 usbredir-9:0: spice_channel_recv_link=
_msg:<br>
&gt; &gt; 2 caps<br>
&gt; &gt; 2021-12-21 02:14:00.002 3011-3115/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/spice-channel.c:1966 usbredir-9:0: got remote common caps:=
<br>
&gt; &gt; 2021-12-21 02:14:00.002 3011-3115/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/spice-channel.c:1902=C2=A0 =C2=A0 =C2=A00:0xB<br>
&gt; &gt; 2021-12-21 02:14:00.002 3011-3115/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/spice-channel.c:1973 usbredir-9:0: got remote channel caps=
:<br>
&gt; &gt; 2021-12-21 02:14:00.002 3011-3115/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/spice-channel.c:1902=C2=A0 =C2=A0 =C2=A00:0x1<br>
&gt; &gt; 2021-12-21 02:14:00.002 3011-3115/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/spice-channel.c:2921 test cap 0 in 0xB: yes<br>
&gt; &gt; 2021-12-21 02:14:00.002 3011-3115/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/spice-channel.c:2921 test cap 1 in 0xB: yes<br>
&gt; &gt; 2021-12-21 02:14:00.003 3011-3115/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/spice-channel.c:2921 test cap 3 in 0xB: yes<br>
&gt; &gt; 2021-12-21 02:14:00.003 3011-3115/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/spice-channel.c:2005 usbredir-9:0: use mini header: 1<br>
&gt; &gt; 2021-12-21 02:14:00.003 3011-3060/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/spice-session.c:2102 usbredir-9:1: connect ready<br>
&gt; &gt; 2021-12-21 02:14:00.003 3011-3116/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/spice-channel.c:1372 usbredir-9:1: channel type 9 id 1 num=
<br>
&gt; &gt; common caps 1 num caps 1<br>
&gt; &gt; 2021-12-21 02:14:00.005 3011-3115/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/spice-channel.c:1303 usbredir-9:0: channel up, state 3<br>
&gt; &gt; 2021-12-21 02:14:00.013 3011-3116/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/spice-channel.c:1396 usbredir-9:1: Peer version: 2:2<br>
&gt; &gt; 2021-12-21 02:14:00.014 3011-3116/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/spice-channel.c:1952 usbredir-9:1: spice_channel_recv_link=
_msg:<br>
&gt; &gt; 2 caps<br>
&gt; &gt; 2021-12-21 02:14:00.014 3011-3116/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/spice-channel.c:1966 usbredir-9:1: got remote common caps:=
<br>
&gt; &gt; 2021-12-21 02:14:00.014 3011-3116/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/spice-channel.c:1902=C2=A0 =C2=A0 =C2=A00:0xB<br>
&gt; &gt; 2021-12-21 02:14:00.014 3011-3116/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/spice-channel.c:1973 usbredir-9:1: got remote channel caps=
:<br>
&gt; &gt; 2021-12-21 02:14:00.014 3011-3116/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/spice-channel.c:1902=C2=A0 =C2=A0 =C2=A00:0x1<br>
&gt; &gt; 2021-12-21 02:14:00.014 3011-3116/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/spice-channel.c:2921 test cap 0 in 0xB: yes<br>
&gt; &gt; 2021-12-21 02:14:00.014 3011-3116/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/spice-channel.c:2921 test cap 1 in 0xB: yes<br>
&gt; &gt; 2021-12-21 02:14:00.014 3011-3116/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/spice-channel.c:2921 test cap 3 in 0xB: yes<br>
&gt; &gt; 2021-12-21 02:14:00.014 3011-3116/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/spice-channel.c:2005 usbredir-9:1: use mini header: 1<br>
&gt; &gt; 2021-12-21 02:14:00.018 3011-3116/com.iiordanov.aSPICE D/GLib+GSp=
ice:<br>
&gt; &gt; ../src/spice-channel.c:1303 usbredir-9:1: channel up, state 3<br>
&gt; &gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt; &gt;<br>
&gt; &gt; Your help and suggestions are highly appreciated!<br>
&gt; &gt;<br>
&gt; &gt; Sincerely,<br>
&gt; &gt; iordan<br>
&gt; &gt;<br>
&gt; &gt; On Mon, Dec 20, 2021 at 5:57 AM Uri Lublin &lt;<a href=3D"mailto:=
uril@redhat.com" target=3D"_blank">uril@redhat.com</a>&gt; wrote:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Hi iordan,<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; On Mon, Dec 20, 2021 at 9:46 AM i iordanov &lt;<a href=3D"ma=
ilto:iiordanov@gmail.com" target=3D"_blank">iiordanov@gmail.com</a>&gt; wro=
te:<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Hi guys,<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; I saw that the developers at libusb have done a bunch o=
f work to<br>
&gt; &gt; &gt; &gt; support accessing USB devices on unrooted Android devic=
es, and in<br>
&gt; &gt; &gt; &gt; response to a user request, I decided to look into the =
current state<br>
&gt; &gt; &gt; &gt; of the implementation.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Congrats to libusb developers.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; I am able to obtain permissions and get both:<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; libusb_device *dev<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; and<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; libusb_device_handle *handle<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; for an attached USB stick, but now do not have a good i=
dea how to<br>
&gt; &gt; &gt; &gt; request libspice to attach the device to the remote.<br=
>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Is there an API exposed that would permit me to attach =
devices by<br>
&gt; &gt; &gt; &gt; either libusb_device or libusb_device_handle? In either=
 case, any<br>
&gt; &gt; &gt; &gt; pointers on how to accomplish this are welcome!<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; On the client side, you need to build usbredir and rebuild s=
pice-gtk<br>
&gt; &gt; &gt; with usbredir enabled.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; On the server side you need to build usbredir and rebuild Qe=
mu with<br>
&gt; &gt; &gt; usbredir enabled.<br>
&gt; &gt; &gt; You also need to add to your VM configuration some USB devic=
es and<br>
&gt; &gt; &gt; attach them to SPICE.<br>
&gt; &gt; &gt; See SPICE User Manual [1] &quot;USB redirection&quot; for de=
tails.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; [1] <a href=3D"https://www.spice-space.org/spice-user-manual=
.html" rel=3D"noreferrer" target=3D"_blank">https://www.spice-space.org/spi=
ce-user-manual.html</a><br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Regards,<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0Uri.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Sincerely,<br>
&gt; &gt; &gt; &gt; iordan<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; --<br>
&gt; &gt; &gt; &gt; The conscious mind has only one thread of execution.<br=
>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt; The conscious mind has only one thread of execution.<br>
&gt; &gt;<br>
&gt;<br>
<br>
<br>
-- <br>
The conscious mind has only one thread of execution.<br>
</blockquote></div></div>

--0000000000001ea83405d3ccc350--
