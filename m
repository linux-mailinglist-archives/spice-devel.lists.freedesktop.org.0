Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AE8947DE2D
	for <lists+spice-devel@lfdr.de>; Thu, 23 Dec 2021 04:59:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10BD410E26A;
	Thu, 23 Dec 2021 03:59:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com
 [IPv6:2607:f8b0:4864:20::32f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BA0710E26A
 for <spice-devel@lists.freedesktop.org>; Thu, 23 Dec 2021 03:59:35 +0000 (UTC)
Received: by mail-ot1-x32f.google.com with SMTP id
 i5-20020a05683033e500b0057a369ac614so5358424otu.10
 for <spice-devel@lists.freedesktop.org>; Wed, 22 Dec 2021 19:59:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=E4m3Bw8WMLvesc209MO8VSqH4Qvn1JUljqpKNQvcd+g=;
 b=hgAtOx+B7LZWLHaETOpnV5wmMs9jmQ5M7WeX32GBk3LmipDakNyLmb+PflGFLXT0WP
 YeveC67oE6lvdJQ60l9ycjvGLwX5E57h3Hdq4HPltcaN8pP9CWVh6cMf3jnnPyfOgngK
 Dic3y0UqEf08ZRYg3QHDhSEluskSWD5GtIv2mKpS9s6o9O3Vf37+A6BfoU/i6MLuWKsd
 GLrxnaLsBEQdsYuosW39V7qrLwBqO3vs2wDn0mxyu6IeKmHcSFoRCBtkYH+67cbITNqX
 j1r/h+WNv6rRzIY23uDxhItOOevAs6/GvxCzb7gYg86cDf5O8+bGHBEO0vRaJrXVXNaF
 rchQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=E4m3Bw8WMLvesc209MO8VSqH4Qvn1JUljqpKNQvcd+g=;
 b=Yp369+EXCtTwdVoRxiKdjI3l8wUkGTXxFxPC7yfcbHpZMkdyAyymSEOeYQz2jLBr28
 k2vsTYHohypGXb0SLAZuQ94G4dh8O9qPNVp9rJEAR2qCxbUAiJZ5vQczCEN2sCgwSCEj
 C3A2v27J7f6br97b5ujgyKueNX6Fy2hZyYekvDL37Ue4+Vur5YM+XpWUO/FSej+3imQv
 W9bunVKzIfGDMDyidH3P6eR1EC2Q0da3XBc17KrG5D9jCMbOCPM4o1ifWjO0S5jVi9Px
 PijJ1HZF18wZR3h+9HMj4OqQlNW8bgQKKU0QDP6NHo02riWwMBR7QB6/JfJ4WSVi9XC9
 IATQ==
X-Gm-Message-State: AOAM531oG2ScZoeN02WfyomK6gbB8jmyrCVva6uhG0sdWCmrrc6LDc6X
 wvyZiWfR/Be6SdgNpcXIN/ZVg3iDB4bI79sEIzI=
X-Google-Smtp-Source: ABdhPJwLIz03WfxTO+myjlMxzGUaYUmrBYaP3xeFUzIoEEnmROw11ZCtFDbJWFSNaIf03LCOx46iDn2pX1lrcV7Pdm0=
X-Received: by 2002:a05:6830:1d49:: with SMTP id
 p9mr357620oth.108.1640231974616; 
 Wed, 22 Dec 2021 19:59:34 -0800 (PST)
MIME-Version: 1.0
References: <CAMS0tn2RYzqoFQhYXaGRSnOXe9t_Lnz9t2kBah7VL+2H0R57hQ@mail.gmail.com>
 <CAAg9qJ0DKP8Ki7352yp9-iXuRvY13fHfVi4bUuyy-3pGi4xEUg@mail.gmail.com>
 <CAMS0tn2BosyXYQjR9zLvZF+DNCHB2TWR0Zuzw8hMQHc7o_X1Fw@mail.gmail.com>
 <CAAg9qJ3CnPLNedyh+uy4Lk1rLK=bosft70GD7NDx-eAVDODz8w@mail.gmail.com>
In-Reply-To: <CAAg9qJ3CnPLNedyh+uy4Lk1rLK=bosft70GD7NDx-eAVDODz8w@mail.gmail.com>
From: i iordanov <iiordanov@gmail.com>
Date: Wed, 22 Dec 2021 22:58:58 -0500
Message-ID: <CAMS0tn1cSZPaDCjzpXh6xnU2yk=PDshOVM8z-Tasc33crg=boQ@mail.gmail.com>
To: Uri Lublin <uril@redhat.com>
Content-Type: multipart/mixed; boundary="000000000000324fef05d3c84455"
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

--000000000000324fef05d3c84455
Content-Type: text/plain; charset="UTF-8"

Hi Uri,

Thanks for your assistance. I got it working. I'm attaching a patch
that does the job, and would really like it if we can make it
acceptable for inclusion into spice-gtk.

In general, the changes accomplish the following:

- Add the ability to allocate a SpiceUsbDevice using a file descriptor
- Added a field that can keep a reference to the device handle that is
created by libusb from a file descriptor. This handle is used on
Android in place of a call to libusb_open() that would fail.
- On Android, set option LIBUSB_OPTION_NO_DEVICE_DISCOVERY prior to
libusb_init()
- Implement a method of retrieving the SpiceUsbBackend context from
the SpiceUsbDeviceManager (which holds the properly initialized libusb
context). This backend can be passed to the new
allocate_device_for_file_descriptor() method.

Please let me know what changes you think are needed.

Many thanks!
iordan

On Tue, Dec 21, 2021 at 8:05 AM Uri Lublin <uril@redhat.com> wrote:
>
> Hi,
>
> On Tue, Dec 21, 2021 at 9:24 AM i iordanov <iiordanov@gmail.com> wrote:
> >
> > Hello,
> >
> > Thanks for responding! As mentioned, I am trying to find a working,
> > programmatic way to pass a USB devices by either libusb_device or
> > libusb_device_handle from aSPICE and Opaque.
> >
> > I've now compiled libusb, usbredir 0.12, and recompiled spice-gtk 0.39
> > with usbredir support.
> >
> > The code I came up with looks like the following. The integer
> > fileDescriptor holds a file descriptor for the USB device obtained in
> > java after requesting permissions from the user.
> >
> > The first bit is from
> > https://github.com/libusb/libusb/blob/master/android/README.
> >
> > NOTE: For the part after the call to allocate_backend_device(), I had
> > to include the entire usb-backend.c file as you do in your tests in
> > spice-gtk, since I couldn't find a public API that allows me to
> > construct a SpiceUsbDevice. This may be a feature request that I'd
> > need to open with your project provided we can get USB redirection to
> > work in the first place.
> >
> > ======================================
> > JNIEXPORT void JNICALL
> > Java_com_undatech_opaque_SpiceCommunicator_SpiceSetNativeFileDescriptor(JNIEnv
> > *env,
> >
> >  jobject obj,
> >
> >  jint fileDescriptor)
> > {
> >     // START: https://github.com/libusb/libusb/blob/master/android/README
> >
> >     libusb_context *ctx = NULL;
> >     libusb_device_handle *devh = NULL;
> >     int r = 0;
> >     r = libusb_set_option(NULL, LIBUSB_OPTION_NO_DEVICE_DISCOVERY, NULL);
> >     if (r != LIBUSB_SUCCESS) {
> >         LOGE("%s: libusb_set_option failed", __FUNCTION__);
> >         return;
> >     }
> >     r = libusb_init(&ctx);
> >     if (r < 0) {
> >         LOGE("%s: libusb_init failed", __FUNCTION__);
> >         return;
> >     }
> >
> >     LOGD("%s: calling libusb_wrap_sys_device", __FUNCTION__);
> >     r = libusb_wrap_sys_device(ctx, (intptr_t)fileDescriptor, &devh);
> >     if (r < 0) {
> >         LOGE("%s: libusb_wrap_sys_device failed", __FUNCTION__);
> >         return;
> >     } else if (devh == NULL) {
> >         LOGE("%s: libusb_wrap_sys_device returned invalid handle",
> > __FUNCTION__);
> >         return;
> >     }
> >
> >     // END: https://github.com/libusb/libusb/blob/master/android/README
>
>
> That means the code should not call libusb_init without setting
> NO_DEVICE_DISCOVERY.
> Likely it should not call libusb_open either.
> The current code does call those functions and also gets the list of
> USB devices.
>
> >
> >     // Calling functionality from usb-backend.c
> >     SpiceUsbDevice *device = allocate_backend_device(libusb_get_device(devh));
>
> I think you need to call libusb_set_option (as above) before any libusb_init().
> Also, maybe you can pass here devh too (or only, and get the device
> inside the function)
> and skip calling libusb_open.
>
> >
> >     SpiceUsbDeviceManager *manager =
> > spice_usb_device_manager_get(global_conn->session, NULL);
> >     if (manager == NULL) {
> >         LOGE("%s: spice_usb_device_manager_get returned null manager",
> > __FUNCTION__);
> >         return;
> >     }
> >
> >     LOGD("%s: Attaching device via
> > spice_usb_device_manager_connect_device_async", __FUNCTION__);
> >     spice_usb_device_manager_connect_device_async(manager, device,
> > NULL, NULL, NULL);
> > }
> > ======================================
> >
> > During initialization I do get a few errors, which I suppose are due
> > to spice-gtk attempting to read USB devices directly, but I am not
> > certain:
>
> It seems libusb_init() fails.
>
> >
> > ======================================
> > 2021-12-21 02:13:59.761 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/spice-session.c:286 New session (compiled from package
> > spice-gtk 0.39.4-ce0b8)
> > 2021-12-21 02:13:59.762 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/spice-session.c:290 Supported channels: main, display, inputs,
> > cursor, playback, record, usbredir
> > 2021-12-21 02:13:59.765 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/usb-device-manager.c:391 auto-connect filter set to
> > 0x03,-1,-1,-1,0|-1,-1,-1,-1,1
> > 2021-12-21 02:13:59.766 3011-3060/com.iiordanov.aSPICE
> > W/GLib+android-spice: Error initializing LIBUSB support: Input/Output
> > Error [-1]
> > 2021-12-21 02:13:59.766 3011-3060/com.iiordanov.aSPICE
> > E/GLib+android-spice: spice_usb_backend_deregister_hotplug: assertion
> > 'be != NULL' failed
> > 2021-12-21 02:13:59.762 3011-3011/com.iiordanov.aSPICE W/Thread-4:
> > type=1400 audit(0.0:1572): avc: denied { read } for name="usb"
> > dev="tmpfs" ino=1397419
> > scontext=u:r:untrusted_app:s0:c181,c257,c512,c768
> > tcontext=u:object_r:usb_device:s0 tclass=dir permissive=0
> > app=com.iiordanov.aSPICE
> > 2021-12-21 02:13:59.766 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/spice-session.c:1578 Could not initialize SpiceUsbDeviceManager
> > - Error initializing LIBUSB support: Input/Output Error [-1]
>
> For example here.
>
> Regards,
>     Uri.
>
>
> > 2021-12-21 02:13:59.766 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/usb-device-manager.c:391 auto-connect filter set to
> > 0x03,-1,-1,-1,0|-1,-1,-1,-1,1
> > 2021-12-21 02:13:59.766 3011-3060/com.iiordanov.aSPICE
> > W/GLib+android-spice: Error initializing LIBUSB support: Input/Output
> > Error [-1]
> > 2021-12-21 02:13:59.766 3011-3060/com.iiordanov.aSPICE
> > E/GLib+android-spice: spice_usb_backend_deregister_hotplug: assertion
> > 'be != NULL' failed
> > 2021-12-21 02:13:59.766 3011-3060/com.iiordanov.aSPICE
> > W/GLib+android-spice: Error initializing LIBUSB support: Input/Output
> > Error [-1]
> > 2021-12-21 02:13:59.766 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/spice-session.c:1578 Could not initialize SpiceUsbDeviceManager
> > - Error initializing LIBUSB support: Input/Output Error [-1]
> > 2021-12-21 02:13:59.766 3011-3060/com.iiordanov.aSPICE
> > W/GLib+android-spice: Error initializing LIBUSB support: Input/Output
> > Error [-1]
> > ======================================
> >
> > The rest of the log looks very encouraging, save for the fact that no
> > device is attached to the remote. The same device does attach when I
> > use spicy from my laptop to the same VM. Here is the log that is
> > output from the above code and subsequently by spice-gtk:
> >
> > ======================================
> > 2021-12-21 02:13:59.957 3011-3060/com.iiordanov.aSPICE
> > D/SpiceCommunicator: Passing fd: 85 to SPICE for device:
> > UsbDevice[mName=/dev/bus/usb/001/002,mVendorId=7741,mProductId=8338,mClass=0,mSubclass=0,mProtocol=0,mManufacturerName=CBM
> >     ,mProductName=Flash Disk
> > ,mVersion=1.00,mSerialNumberReader=android.hardware.usb.IUsbSerialReader$Stub$Proxy@ecfcac3,
> > mHasAudioPlayback=false, mHasAudioCapture=false, mHasMidi=false,
> > mHasVideoCapture=false, mHasVideoPlayback=false, mConfigurations=[
> >     UsbConfiguration[mId=1,mName=null,mAttributes=128,mMaxPower=50,mInterfaces=[
> >     UsbInterface[mId=0,mAlternateSetting=0,mName=null,mClass=8,mSubclass=6,mProtocol=80,mEndpoints=[
> >     UsbEndpoint[mAddress=1,mAttributes=2,mMaxPacketSize=512,mInterval=0]
> >     UsbEndpoint[mAddress=129,mAttributes=2,mMaxPacketSize=512,mInterval=0]]]]
> > 2021-12-21 02:13:59.957 3011-3060/com.iiordanov.aSPICE
> > D/android-service:
> > Java_com_undatech_opaque_SpiceCommunicator_SpiceSetNativeFileDescriptor:
> > start
> > 2021-12-21 02:13:59.957 3011-3060/com.iiordanov.aSPICE
> > D/android-service:
> > Java_com_undatech_opaque_SpiceCommunicator_SpiceSetNativeFileDescriptor:
> > calling libusb_wrap_sys_device
> > 2021-12-21 02:13:59.958 3011-3060/com.iiordanov.aSPICE
> > D/android-service:
> > Java_com_undatech_opaque_SpiceCommunicator_SpiceSetNativeFileDescriptor:
> > calling allocate_backend_device
> > 2021-12-21 02:13:59.958 3011-3060/com.iiordanov.aSPICE
> > D/android-service:
> > Java_com_undatech_opaque_SpiceCommunicator_SpiceSetNativeFileDescriptor:
> > calling spice_usb_device_manager_get
> > 2021-12-21 02:13:59.956 3011-3011/com.iiordanov.aSPICE W/Thread-4:
> > type=1400 audit(0.0:1578): avc: denied { read } for name="usb"
> > dev="tmpfs" ino=1397419
> > scontext=u:r:untrusted_app:s0:c181,c257,c512,c768
> > tcontext=u:object_r:usb_device:s0 tclass=dir permissive=0
> > app=com.iiordanov.aSPICE
> > 2021-12-21 02:13:59.958 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/usb-device-manager.c:391 auto-connect filter set to
> > 0x03,-1,-1,-1,0|-1,-1,-1,-1,1
> > 2021-12-21 02:13:59.960 3011-3060/com.iiordanov.aSPICE
> > D/android-service:
> > Java_com_undatech_opaque_SpiceCommunicator_SpiceSetNativeFileDescriptor:
> > Attaching device via spice_usb_device_manager_connect_device_async
> > 2021-12-21 02:13:59.960 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/usb-device-manager.c:1103 connecting device 0x70efaf1490
> > 2021-12-21 02:13:59.960 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/channel-usbredir.c:344 usbredir-9:0: connecting device
> > 1e3d:2092 (0x70efaf1490) to channel 0x725fae4540
> > 2021-12-21 02:13:59.960 3011-3079/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/spice-channel.c:2921 test cap 1 in 0x1052: yes
> > 2021-12-21 02:13:59.961 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/spice-channel.c:2703 usbredir-9:0: Open coroutine starting
> > 0x725fae4540
> > 2021-12-21 02:13:59.962 3011-3115/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/spice-channel.c:2540 usbredir-9:0: Started background coroutine
> > 0x725fae43f8
> > 2021-12-21 02:13:59.962 3011-3115/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/spice-session.c:2265 usbredir-9:0: Using plain text, port 6001
> > 2021-12-21 02:13:59.962 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/spice-channel.c:2703 usbredir-9:1: Open coroutine starting
> > 0x725fae4340
> > 2021-12-21 02:13:59.963 3011-3116/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/spice-channel.c:2540 usbredir-9:1: Started background coroutine
> > 0x725fae41f8
> > 2021-12-21 02:13:59.963 3011-3116/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/spice-session.c:2265 usbredir-9:1: Using plain text, port 6001
> > 2021-12-21 02:13:59.965 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/spice-session.c:2196 open host MYHOST:6001
> > 2021-12-21 02:13:59.965 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/spice-session.c:2118 usbredir-9:0: connecting 0x709fb7aaf0...
> > 2021-12-21 02:13:59.965 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/spice-session.c:2196 open host MYHOST:6001
> > 2021-12-21 02:13:59.966 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/spice-session.c:2118 usbredir-9:1: connecting 0x709fa7caf0...
> > 2021-12-21 02:13:59.992 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/spice-session.c:2102 usbredir-9:0: connect ready
> > 2021-12-21 02:13:59.992 3011-3115/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/spice-channel.c:1372 usbredir-9:0: channel type 9 id 0 num
> > common caps 1 num caps 1
> > 2021-12-21 02:14:00.002 3011-3115/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/spice-channel.c:1396 usbredir-9:0: Peer version: 2:2
> > 2021-12-21 02:14:00.002 3011-3115/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/spice-channel.c:1952 usbredir-9:0: spice_channel_recv_link_msg:
> > 2 caps
> > 2021-12-21 02:14:00.002 3011-3115/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/spice-channel.c:1966 usbredir-9:0: got remote common caps:
> > 2021-12-21 02:14:00.002 3011-3115/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/spice-channel.c:1902     0:0xB
> > 2021-12-21 02:14:00.002 3011-3115/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/spice-channel.c:1973 usbredir-9:0: got remote channel caps:
> > 2021-12-21 02:14:00.002 3011-3115/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/spice-channel.c:1902     0:0x1
> > 2021-12-21 02:14:00.002 3011-3115/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/spice-channel.c:2921 test cap 0 in 0xB: yes
> > 2021-12-21 02:14:00.002 3011-3115/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/spice-channel.c:2921 test cap 1 in 0xB: yes
> > 2021-12-21 02:14:00.003 3011-3115/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/spice-channel.c:2921 test cap 3 in 0xB: yes
> > 2021-12-21 02:14:00.003 3011-3115/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/spice-channel.c:2005 usbredir-9:0: use mini header: 1
> > 2021-12-21 02:14:00.003 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/spice-session.c:2102 usbredir-9:1: connect ready
> > 2021-12-21 02:14:00.003 3011-3116/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/spice-channel.c:1372 usbredir-9:1: channel type 9 id 1 num
> > common caps 1 num caps 1
> > 2021-12-21 02:14:00.005 3011-3115/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/spice-channel.c:1303 usbredir-9:0: channel up, state 3
> > 2021-12-21 02:14:00.013 3011-3116/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/spice-channel.c:1396 usbredir-9:1: Peer version: 2:2
> > 2021-12-21 02:14:00.014 3011-3116/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/spice-channel.c:1952 usbredir-9:1: spice_channel_recv_link_msg:
> > 2 caps
> > 2021-12-21 02:14:00.014 3011-3116/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/spice-channel.c:1966 usbredir-9:1: got remote common caps:
> > 2021-12-21 02:14:00.014 3011-3116/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/spice-channel.c:1902     0:0xB
> > 2021-12-21 02:14:00.014 3011-3116/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/spice-channel.c:1973 usbredir-9:1: got remote channel caps:
> > 2021-12-21 02:14:00.014 3011-3116/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/spice-channel.c:1902     0:0x1
> > 2021-12-21 02:14:00.014 3011-3116/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/spice-channel.c:2921 test cap 0 in 0xB: yes
> > 2021-12-21 02:14:00.014 3011-3116/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/spice-channel.c:2921 test cap 1 in 0xB: yes
> > 2021-12-21 02:14:00.014 3011-3116/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/spice-channel.c:2921 test cap 3 in 0xB: yes
> > 2021-12-21 02:14:00.014 3011-3116/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/spice-channel.c:2005 usbredir-9:1: use mini header: 1
> > 2021-12-21 02:14:00.018 3011-3116/com.iiordanov.aSPICE D/GLib+GSpice:
> > ../src/spice-channel.c:1303 usbredir-9:1: channel up, state 3
> > ======================================
> >
> > Your help and suggestions are highly appreciated!
> >
> > Sincerely,
> > iordan
> >
> > On Mon, Dec 20, 2021 at 5:57 AM Uri Lublin <uril@redhat.com> wrote:
> > >
> > > Hi iordan,
> > >
> > > On Mon, Dec 20, 2021 at 9:46 AM i iordanov <iiordanov@gmail.com> wrote:
> > > >
> > > > Hi guys,
> > > >
> > > > I saw that the developers at libusb have done a bunch of work to
> > > > support accessing USB devices on unrooted Android devices, and in
> > > > response to a user request, I decided to look into the current state
> > > > of the implementation.
> > >
> > > Congrats to libusb developers.
> > >
> > > >
> > > > I am able to obtain permissions and get both:
> > > >
> > > > libusb_device *dev
> > > >
> > > > and
> > > >
> > > > libusb_device_handle *handle
> > > >
> > > > for an attached USB stick, but now do not have a good idea how to
> > > > request libspice to attach the device to the remote.
> > > >
> > > > Is there an API exposed that would permit me to attach devices by
> > > > either libusb_device or libusb_device_handle? In either case, any
> > > > pointers on how to accomplish this are welcome!
> > >
> > > On the client side, you need to build usbredir and rebuild spice-gtk
> > > with usbredir enabled.
> > >
> > > On the server side you need to build usbredir and rebuild Qemu with
> > > usbredir enabled.
> > > You also need to add to your VM configuration some USB devices and
> > > attach them to SPICE.
> > > See SPICE User Manual [1] "USB redirection" for details.
> > >
> > > [1] https://www.spice-space.org/spice-user-manual.html
> > >
> > > Regards,
> > >     Uri.
> > >
> > > >
> > > > Sincerely,
> > > > iordan
> > > >
> > > > --
> > > > The conscious mind has only one thread of execution.
> > > >
> > >
> >
> >
> > --
> > The conscious mind has only one thread of execution.
> >
>


-- 
The conscious mind has only one thread of execution.

--000000000000324fef05d3c84455
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0005-Implemented-the-ability-to-attach-USB-devices-by-ope.patch"
Content-Disposition: attachment; 
	filename="0005-Implemented-the-ability-to-attach-USB-devices-by-ope.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_kxifcqym0>
X-Attachment-Id: f_kxifcqym0

RnJvbSAzYWQwNWNlNjc3Yzc0YjNiNjgwYWM4MmIxYzJiMzEwMTY3ZjdkZTY3IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBJb3JkYW4gSW9yZGFub3YgPGlpb3JkYW5vdkBnbWFpbC5jb20+
CkRhdGU6IFR1ZSwgMjEgRGVjIDIwMjEgMTE6MDk6NDAgLTA1MDAKU3ViamVjdDogW1BBVENIIDUv
NV0gSW1wbGVtZW50ZWQgdGhlIGFiaWxpdHkgdG8gYXR0YWNoIFVTQiBkZXZpY2VzIGJ5IG9wZW4K
IGZpbGUgZGVzY3JpcHRvciB0byBzdXBwb3J0IG1vZGVybiBBbmRyb2lkIFVTQiBkZXZpY2UgcGVy
bWlzc2lvbmluZyBzY2hlbWUuCgpPbiBBbmRyb2lkLCBzZXQgb3B0aW9uIExJQlVTQl9PUFRJT05f
Tk9fREVWSUNFX0RJU0NPVkVSWSBwcmlvciB0byBsaWJ1c2JfaW5pdCgpCmNhbGwgYXMgcGVyIGxp
YnVzYiBkb2N1bWVudGF0aW9uLCBhbmQgc2tpcCB0aGUgY2FsbCB0byBsaWJ1c2Jfb3BlbigpIHNp
bmNlCml0IHdvdWxkIG5vdCBiZSBwZXJtaXR0ZWQgb24gQW5kcm9pZC4KCkltcGxlbWVudGVkIGFi
aWxpdHkgdG8gb2J0YWluIFNwaWNlVXNiQmFja2VuZCBmcm9tIFNwaWNlVXNiRGV2aWNlTWFuYWdl
ci4KLS0tCiBzcmMvdXNiLWJhY2tlbmQuYyAgICAgICAgfCAzMiArKysrKysrKysrKysrKysrKysr
KysrKysrKysrKystLQogc3JjL3VzYi1iYWNrZW5kLmggICAgICAgIHwgIDIgKysKIHNyYy91c2It
ZGV2aWNlLW1hbmFnZXIuYyB8IDEwICsrKysrKysrKysKIHNyYy91c2ItZGV2aWNlLW1hbmFnZXIu
aCB8ICAyICstCiA0IGZpbGVzIGNoYW5nZWQsIDQzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvc3JjL3VzYi1iYWNrZW5kLmMgYi9zcmMvdXNiLWJhY2tlbmQuYwpp
bmRleCBjNzZkNTc2Li5kYTZlNDdiIDEwMDY0NAotLS0gYS9zcmMvdXNiLWJhY2tlbmQuYworKysg
Yi9zcmMvdXNiLWJhY2tlbmQuYwpAQCAtNDksNiArNDksNyBAQCBzdHJ1Y3QgX1NwaWNlVXNiRGV2
aWNlCiAgICAgLyogUG9pbnRlciB0byBkZXZpY2UuIEVpdGhlciByZWFsIGRldmljZSAobGlidXNi
X2RldmljZSkKICAgICAgKiBvciBlbXVsYXRlZCBvbmUgKGVkZXYpICovCiAgICAgbGlidXNiX2Rl
dmljZSAqbGlidXNiX2RldmljZTsKKyAgICBsaWJ1c2JfZGV2aWNlX2hhbmRsZSAqaGFuZGxlOwog
ICAgIFNwaWNlVXNiRW11bGF0ZWREZXZpY2UgKmVkZXY7CiAgICAgZ2ludCByZWZfY291bnQ7CiAg
ICAgU3BpY2VVc2JCYWNrZW5kQ2hhbm5lbCAqYXR0YWNoZWRfdG87CkBAIC00MzYsNiArNDM3LDkg
QEAgU3BpY2VVc2JCYWNrZW5kICpzcGljZV91c2JfYmFja2VuZF9uZXcoR0Vycm9yICoqZXJyb3Ip
CiAgICAgU3BpY2VVc2JCYWNrZW5kICpiZTsKICAgICBTUElDRV9ERUJVRygiJXMgPj4iLCBfX0ZV
TkNUSU9OX18pOwogICAgIGJlID0gZ19uZXcwKFNwaWNlVXNiQmFja2VuZCwgMSk7CisgICAgI2lm
ZGVmIF9fQU5EUk9JRF9fCisgICAgbGlidXNiX3NldF9vcHRpb24oTlVMTCwgTElCVVNCX09QVElP
Tl9OT19ERVZJQ0VfRElTQ09WRVJZKTsKKyAgICAjZW5kaWYKICAgICByYyA9IGxpYnVzYl9pbml0
KCZiZS0+bGlidXNiX2NvbnRleHQpOwogICAgIGlmIChyYyA8IDApIHsKICAgICAgICAgY29uc3Qg
Y2hhciAqZGVzYyA9IGxpYnVzYl9zdHJlcnJvcihyYyk7CkBAIC0xMjA4LDcgKzEyMTIsNyBAQCBn
Ym9vbGVhbiBzcGljZV91c2JfYmFja2VuZF9jaGFubmVsX2F0dGFjaChTcGljZVVzYkJhY2tlbmRD
aGFubmVsICpjaCwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFNw
aWNlVXNiRGV2aWNlICpkZXYsCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBHRXJyb3IgKiplcnJvcikKIHsKLSAgICBpbnQgcmM7CisgICAgaW50IHJjID0gMDsKICAg
ICBTUElDRV9ERUJVRygiJXMgPj4gY2ggJXAsIGRldiAlcCAod2FzIGF0dGFjaGVkICVwKSIsIF9f
RlVOQ1RJT05fXywgY2gsIGRldiwgY2gtPmF0dGFjaGVkKTsKIAogICAgIGdfcmV0dXJuX3ZhbF9p
Zl9mYWlsKGRldiAhPSBOVUxMLCBGQUxTRSk7CkBAIC0xMjIyLDcgKzEyMjYsNyBAQCBnYm9vbGVh
biBzcGljZV91c2JfYmFja2VuZF9jaGFubmVsX2F0dGFjaChTcGljZVVzYkJhY2tlbmRDaGFubmVs
ICpjaCwKICAgICAgICAgcmV0dXJuIEZBTFNFOwogICAgIH0KIAotICAgIGxpYnVzYl9kZXZpY2Vf
aGFuZGxlICpoYW5kbGUgPSBOVUxMOworICAgIGxpYnVzYl9kZXZpY2VfaGFuZGxlICpoYW5kbGUg
PSBkZXYtPmhhbmRsZTsKICAgICBpZiAoY2gtPnN0YXRlICE9IFVTQl9DSEFOTkVMX1NUQVRFX0lO
SVRJQUxJWklORykgewogICAgICAgICBjaC0+c3RhdGUgPSBVU0JfQ0hBTk5FTF9TVEFURV9IT1NU
OwogICAgIH0KQEAgLTEyMzEsMTEgKzEyMzUsMjAgQEAgZ2Jvb2xlYW4gc3BpY2VfdXNiX2JhY2tl
bmRfY2hhbm5lbF9hdHRhY2goU3BpY2VVc2JCYWNrZW5kQ2hhbm5lbCAqY2gsCiAgICAgICAgVW5k
ZXIgV2luZG93cyB3ZSBuZWVkIHRvIGF2b2lkIHVwZGF0aW5nCiAgICAgICAgbGlzdCBvZiBkZXZp
Y2VzIHdoZW4gd2UgYXJlIGFjcXVpcmluZyB0aGUgZGV2aWNlCiAgICAgKi8KKyAgICAjaWZuZGVm
IF9fQU5EUk9JRF9fCiAgICAgc2V0X3JlZGlyZWN0aW5nKGNoLT5iYWNrZW5kLCBUUlVFKTsKIAog
ICAgIHJjID0gbGlidXNiX29wZW4oZGV2LT5saWJ1c2JfZGV2aWNlLCAmaGFuZGxlKTsKIAogICAg
IHNldF9yZWRpcmVjdGluZyhjaC0+YmFja2VuZCwgRkFMU0UpOworICAgICNlbHNlCisgICAgLyoK
KyAgICAgICBVbmRlciBBbmRyb2lkLCB3ZSBleHBlY3QgaGFuZGxlIHRvIGhhdmUgYmVlbgorICAg
ICAgIGluaXRpYWxpemVkIGZyb20gYSBmaWxlX2Rlc2NyaXB0b3IgYW5kIHN0b3JlZAorICAgICAg
IGluIHRoZSBTcGljZVVzYkRldmljZSBpbnN0YW5jZSBhbHJlYWR5LgorICAgICovCisgICAgaGFu
ZGxlID0gZGV2LT5oYW5kbGU7CisgICAgI2VuZGlmCiAKICAgICBpZiAocmMpIHsKICAgICAgICAg
Y29uc3QgY2hhciAqZGVzYyA9IGxpYnVzYl9zdHJlcnJvcihyYyk7CkBAIC0xNTIyLDMgKzE1MzUs
MTggQEAgc3BpY2VfdXNiX2JhY2tlbmRfY3JlYXRlX2VtdWxhdGVkX2RldmljZShTcGljZVVzYkJh
Y2tlbmQgKmJlLAogCiAgICAgcmV0dXJuIFRSVUU7CiB9CisKK1NwaWNlVXNiRGV2aWNlICphbGxv
Y2F0ZV9kZXZpY2VfZm9yX2ZpbGVfZGVzY3JpcHRvcihTcGljZVVzYkJhY2tlbmQgKmJlLAorICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGludCBmaWxl
X2Rlc2NyaXB0b3IpCit7CisgICAgbGlidXNiX2RldmljZV9oYW5kbGUgKmhhbmRsZSA9IE5VTEw7
CisgICAgbGlidXNiX2NvbnRleHQgKmN0eCA9IGJlLT5saWJ1c2JfY29udGV4dDsKKworICAgIGlm
IChsaWJ1c2Jfd3JhcF9zeXNfZGV2aWNlKGN0eCwgKGludHB0cl90KWZpbGVfZGVzY3JpcHRvciwg
JmhhbmRsZSkgPCAwKSB7CisgICAgICAgIHJldHVybiBOVUxMOworICAgIH0KKworICAgIFNwaWNl
VXNiRGV2aWNlICpkZXZpY2UgPSBhbGxvY2F0ZV9iYWNrZW5kX2RldmljZShsaWJ1c2JfZ2V0X2Rl
dmljZShoYW5kbGUpKTsKKyAgICBkZXZpY2UtPmhhbmRsZSA9IGhhbmRsZTsKKyAgICByZXR1cm4g
ZGV2aWNlOworfQpcIE5vIG5ld2xpbmUgYXQgZW5kIG9mIGZpbGUKZGlmZiAtLWdpdCBhL3NyYy91
c2ItYmFja2VuZC5oIGIvc3JjL3VzYi1iYWNrZW5kLmgKaW5kZXggNGRmZjAzZi4uYmIyYWZhMiAx
MDA2NDQKLS0tIGEvc3JjL3VzYi1iYWNrZW5kLmgKKysrIGIvc3JjL3VzYi1iYWNrZW5kLmgKQEAg
LTIyLDYgKzIyLDcgQEAKIAogI2luY2x1ZGUgPHVzYnJlZGlyZmlsdGVyLmg+CiAjaW5jbHVkZSAi
dXNiLWRldmljZS1tYW5hZ2VyLmgiCisjaW5jbHVkZSA8bGlidXNiLmg+CiAKIEdfQkVHSU5fREVD
TFMKIApAQCAtNzAsNiArNzEsNyBAQCBjb25zdCBVc2JEZXZpY2VJbmZvcm1hdGlvbiogc3BpY2Vf
dXNiX2JhY2tlbmRfZGV2aWNlX2dldF9pbmZvKGNvbnN0IFNwaWNlVXNiRGV2aQogZ2Jvb2xlYW4g
c3BpY2VfdXNiX2JhY2tlbmRfZGV2aWNlX2lzb2NoKFNwaWNlVXNiRGV2aWNlICpkZXYpOwogdm9p
ZCBzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfZWplY3QoU3BpY2VVc2JCYWNrZW5kICpiZSwgU3Bp
Y2VVc2JEZXZpY2UgKmRldmljZSk7CiB2b2lkIHNwaWNlX3VzYl9iYWNrZW5kX2RldmljZV9yZXBv
cnRfY2hhbmdlKFNwaWNlVXNiQmFja2VuZCAqYmUsIFNwaWNlVXNiRGV2aWNlICpkZXZpY2UpOwor
U3BpY2VVc2JEZXZpY2UgKmFsbG9jYXRlX2RldmljZV9mb3JfZmlsZV9kZXNjcmlwdG9yKFNwaWNl
VXNiQmFja2VuZCAqYmUsIGludCBmaWxlX2Rlc2NyaXB0b3IpOwogCiAvKiByZXR1cm5zIDAgaWYg
dGhlIGRldmljZSBwYXNzZXMgdGhlIGZpbHRlciBvdGhlcndpc2UgcmV0dXJucyB0aGUgZXJyb3Ig
dmFsdWUgZnJvbQogICogdXNicmVkaXJob3N0X2NoZWNrX2RldmljZV9maWx0ZXIoKSBzdWNoIGFz
IC1FSU8gb3IgLUVOT01FTSAqLwpkaWZmIC0tZ2l0IGEvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5j
IGIvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jCmluZGV4IDczOGViYTUuLjBiZDY5ODIgMTAwNjQ0
Ci0tLSBhL3NyYy91c2ItZGV2aWNlLW1hbmFnZXIuYworKysgYi9zcmMvdXNiLWRldmljZS1tYW5h
Z2VyLmMKQEAgLTE1MjEsNiArMTUyMSwxNiBAQCBzcGljZV91c2JfZGV2aWNlX21hbmFnZXJfaXNf
ZGV2aWNlX3NoYXJlZF9jZChTcGljZVVzYkRldmljZU1hbmFnZXIgKm1hbmFnZXIsCiAjZW5kaWYK
IH0KIAorZ2NvbnN0cG9pbnRlciBzcGljZV9nZXRfdXNiX2JhY2tlbmQoU3BpY2VVc2JEZXZpY2VN
YW5hZ2VyICptYW5hZ2VyKQoreworI2lmZGVmIFVTRV9VU0JSRURJUgorICAgIFNwaWNlVXNiRGV2
aWNlTWFuYWdlclByaXZhdGUgKnByaXYgPSBtYW5hZ2VyLT5wcml2OworICAgIHJldHVybiBwcml2
LT5jb250ZXh0OworI2Vsc2UKKyAgICByZXR1cm4gTlVMTDsKKyNlbmRpZgorfQorCiAjaWZkZWYg
VVNFX1VTQlJFRElSCiAvKgogICogU3BpY2VVc2JEZXZpY2UKZGlmZiAtLWdpdCBhL3NyYy91c2It
ZGV2aWNlLW1hbmFnZXIuaCBiL3NyYy91c2ItZGV2aWNlLW1hbmFnZXIuaAppbmRleCA0NzQ3ZGQ0
Li5kOGUzYTE2IDEwMDY0NAotLS0gYS9zcmMvdXNiLWRldmljZS1tYW5hZ2VyLmgKKysrIGIvc3Jj
L3VzYi1kZXZpY2UtbWFuYWdlci5oCkBAIC0xMDAsNyArMTAwLDcgQEAgR1R5cGUgc3BpY2VfdXNi
X2RldmljZV9nZXRfdHlwZSh2b2lkKTsKIEdUeXBlIHNwaWNlX3VzYl9kZXZpY2VfbWFuYWdlcl9n
ZXRfdHlwZSh2b2lkKTsKIAogZ2NoYXIgKnNwaWNlX3VzYl9kZXZpY2VfZ2V0X2Rlc2NyaXB0aW9u
KFNwaWNlVXNiRGV2aWNlICpkZXZpY2UsIGNvbnN0IGdjaGFyICpmb3JtYXQpOwotZ2NvbnN0cG9p
bnRlciBzcGljZV91c2JfZGV2aWNlX2dldF9saWJ1c2JfZGV2aWNlKGNvbnN0IFNwaWNlVXNiRGV2
aWNlICpkZXZpY2UpOworZ2NvbnN0cG9pbnRlciBzcGljZV9nZXRfdXNiX2JhY2tlbmQoU3BpY2VV
c2JEZXZpY2VNYW5hZ2VyICptYW5hZ2VyKTsKIAogU3BpY2VVc2JEZXZpY2VNYW5hZ2VyICpzcGlj
ZV91c2JfZGV2aWNlX21hbmFnZXJfZ2V0KFNwaWNlU2Vzc2lvbiAqc2Vzc2lvbiwKICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBHRXJyb3IgKiplcnIp
OwotLSAKMi4yNS4xCgo=
--000000000000324fef05d3c84455--
