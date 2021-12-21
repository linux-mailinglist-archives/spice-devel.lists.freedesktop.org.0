Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC0F47C06B
	for <lists+spice-devel@lfdr.de>; Tue, 21 Dec 2021 14:05:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10CF8112ED4;
	Tue, 21 Dec 2021 13:05:29 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F270112ED6
 for <spice-devel@lists.freedesktop.org>; Tue, 21 Dec 2021 13:05:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1640091925;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=6RPM+hwayUpzOXlljdEpJck0xn/s6yzwEfNOYzhx8vo=;
 b=YSRd7U9HhHNaPtukNXtjsndIzn4UVBYpHegb/s4I7isTZGuidnjOTscYqJBI1OCAyTy+dj
 /ChDeUwIIOfzXvvfYqtqOb9KowJsuPgluWiyMEpWQvRCCSHEQHqeNu6iRjg/eaRDVk+m1f
 ng+mLZgi/dP7zz/A3gDBxpY9RptHxII=
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com
 [209.85.167.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-310---9qWTAYN4qFY1Nytw1U5A-1; Tue, 21 Dec 2021 08:05:23 -0500
X-MC-Unique: --9qWTAYN4qFY1Nytw1U5A-1
Received: by mail-lf1-f69.google.com with SMTP id
 a28-20020ac2505c000000b0042524c397cfso6159117lfm.1
 for <spice-devel@lists.freedesktop.org>; Tue, 21 Dec 2021 05:05:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6RPM+hwayUpzOXlljdEpJck0xn/s6yzwEfNOYzhx8vo=;
 b=hZWzBrYZeQdTxN33AVH5SRNpd2vakT/BNqI75E8VNQ1KS3X4OC3sAjymOR8R0329X+
 La/3fSxOrMTT1wyExvYxEUZVPzmN+MYRuRajOoyDmtztXhdhV581zlWfIO6Ywl/jH+PO
 lDc5whpnDYig+8lQz49IvKMX78E7Y0KluBKDYs5AI/p2ReFwJrRsOte2UaR6WoR+L2ql
 ZERSAHKP13mSz+t38RmtOW4XXB23c+Iq1i2SFw876zNhX3gjx+S/SIspul2UZJNAL5wE
 hC9yMYzY+QGpEaux8/6LKhboXai9+SJL8HNn3ZuZ8x9hAD1/T1BI/sq7+4MpCyGzvrTs
 98Yw==
X-Gm-Message-State: AOAM532/TXfu5FmRN8TwT2gUZlMo32SxIdah6ZYhzPO+9uXEJwkfdxcU
 02V/uWRGo8ELsPtXj/NgCeZTQZJHVvHTQgf+dlPHpSmS/2ezgJ1UkjnMvhG5k4U45IgioQyNUWA
 TUQpzc791ayA3sKBcTZTB6l6iUolPR+2Nb2tqoDJBwnT0xUQ=
X-Received: by 2002:a05:6512:3402:: with SMTP id
 i2mr2943483lfr.447.1640091921576; 
 Tue, 21 Dec 2021 05:05:21 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwwies3ouNypZUoJ5O7JfjjaY4xYHa9H4yzh4Hv+zfg1yc0g1WYmH8NbDxBz8495fLkdXeNxSyDdECILLh2JMk=
X-Received: by 2002:a05:6512:3402:: with SMTP id
 i2mr2943451lfr.447.1640091921090; 
 Tue, 21 Dec 2021 05:05:21 -0800 (PST)
MIME-Version: 1.0
References: <CAMS0tn2RYzqoFQhYXaGRSnOXe9t_Lnz9t2kBah7VL+2H0R57hQ@mail.gmail.com>
 <CAAg9qJ0DKP8Ki7352yp9-iXuRvY13fHfVi4bUuyy-3pGi4xEUg@mail.gmail.com>
 <CAMS0tn2BosyXYQjR9zLvZF+DNCHB2TWR0Zuzw8hMQHc7o_X1Fw@mail.gmail.com>
In-Reply-To: <CAMS0tn2BosyXYQjR9zLvZF+DNCHB2TWR0Zuzw8hMQHc7o_X1Fw@mail.gmail.com>
From: Uri Lublin <uril@redhat.com>
Date: Tue, 21 Dec 2021 15:05:09 +0200
Message-ID: <CAAg9qJ3CnPLNedyh+uy4Lk1rLK=bosft70GD7NDx-eAVDODz8w@mail.gmail.com>
To: i iordanov <iiordanov@gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=ulublin@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
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

Hi,

On Tue, Dec 21, 2021 at 9:24 AM i iordanov <iiordanov@gmail.com> wrote:
>
> Hello,
>
> Thanks for responding! As mentioned, I am trying to find a working,
> programmatic way to pass a USB devices by either libusb_device or
> libusb_device_handle from aSPICE and Opaque.
>
> I've now compiled libusb, usbredir 0.12, and recompiled spice-gtk 0.39
> with usbredir support.
>
> The code I came up with looks like the following. The integer
> fileDescriptor holds a file descriptor for the USB device obtained in
> java after requesting permissions from the user.
>
> The first bit is from
> https://github.com/libusb/libusb/blob/master/android/README.
>
> NOTE: For the part after the call to allocate_backend_device(), I had
> to include the entire usb-backend.c file as you do in your tests in
> spice-gtk, since I couldn't find a public API that allows me to
> construct a SpiceUsbDevice. This may be a feature request that I'd
> need to open with your project provided we can get USB redirection to
> work in the first place.
>
> ======================================
> JNIEXPORT void JNICALL
> Java_com_undatech_opaque_SpiceCommunicator_SpiceSetNativeFileDescriptor(JNIEnv
> *env,
>
>  jobject obj,
>
>  jint fileDescriptor)
> {
>     // START: https://github.com/libusb/libusb/blob/master/android/README
>
>     libusb_context *ctx = NULL;
>     libusb_device_handle *devh = NULL;
>     int r = 0;
>     r = libusb_set_option(NULL, LIBUSB_OPTION_NO_DEVICE_DISCOVERY, NULL);
>     if (r != LIBUSB_SUCCESS) {
>         LOGE("%s: libusb_set_option failed", __FUNCTION__);
>         return;
>     }
>     r = libusb_init(&ctx);
>     if (r < 0) {
>         LOGE("%s: libusb_init failed", __FUNCTION__);
>         return;
>     }
>
>     LOGD("%s: calling libusb_wrap_sys_device", __FUNCTION__);
>     r = libusb_wrap_sys_device(ctx, (intptr_t)fileDescriptor, &devh);
>     if (r < 0) {
>         LOGE("%s: libusb_wrap_sys_device failed", __FUNCTION__);
>         return;
>     } else if (devh == NULL) {
>         LOGE("%s: libusb_wrap_sys_device returned invalid handle",
> __FUNCTION__);
>         return;
>     }
>
>     // END: https://github.com/libusb/libusb/blob/master/android/README


That means the code should not call libusb_init without setting
NO_DEVICE_DISCOVERY.
Likely it should not call libusb_open either.
The current code does call those functions and also gets the list of
USB devices.

>
>     // Calling functionality from usb-backend.c
>     SpiceUsbDevice *device = allocate_backend_device(libusb_get_device(devh));

I think you need to call libusb_set_option (as above) before any libusb_init().
Also, maybe you can pass here devh too (or only, and get the device
inside the function)
and skip calling libusb_open.

>
>     SpiceUsbDeviceManager *manager =
> spice_usb_device_manager_get(global_conn->session, NULL);
>     if (manager == NULL) {
>         LOGE("%s: spice_usb_device_manager_get returned null manager",
> __FUNCTION__);
>         return;
>     }
>
>     LOGD("%s: Attaching device via
> spice_usb_device_manager_connect_device_async", __FUNCTION__);
>     spice_usb_device_manager_connect_device_async(manager, device,
> NULL, NULL, NULL);
> }
> ======================================
>
> During initialization I do get a few errors, which I suppose are due
> to spice-gtk attempting to read USB devices directly, but I am not
> certain:

It seems libusb_init() fails.

>
> ======================================
> 2021-12-21 02:13:59.761 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/spice-session.c:286 New session (compiled from package
> spice-gtk 0.39.4-ce0b8)
> 2021-12-21 02:13:59.762 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/spice-session.c:290 Supported channels: main, display, inputs,
> cursor, playback, record, usbredir
> 2021-12-21 02:13:59.765 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/usb-device-manager.c:391 auto-connect filter set to
> 0x03,-1,-1,-1,0|-1,-1,-1,-1,1
> 2021-12-21 02:13:59.766 3011-3060/com.iiordanov.aSPICE
> W/GLib+android-spice: Error initializing LIBUSB support: Input/Output
> Error [-1]
> 2021-12-21 02:13:59.766 3011-3060/com.iiordanov.aSPICE
> E/GLib+android-spice: spice_usb_backend_deregister_hotplug: assertion
> 'be != NULL' failed
> 2021-12-21 02:13:59.762 3011-3011/com.iiordanov.aSPICE W/Thread-4:
> type=1400 audit(0.0:1572): avc: denied { read } for name="usb"
> dev="tmpfs" ino=1397419
> scontext=u:r:untrusted_app:s0:c181,c257,c512,c768
> tcontext=u:object_r:usb_device:s0 tclass=dir permissive=0
> app=com.iiordanov.aSPICE
> 2021-12-21 02:13:59.766 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/spice-session.c:1578 Could not initialize SpiceUsbDeviceManager
> - Error initializing LIBUSB support: Input/Output Error [-1]

For example here.

Regards,
    Uri.


> 2021-12-21 02:13:59.766 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/usb-device-manager.c:391 auto-connect filter set to
> 0x03,-1,-1,-1,0|-1,-1,-1,-1,1
> 2021-12-21 02:13:59.766 3011-3060/com.iiordanov.aSPICE
> W/GLib+android-spice: Error initializing LIBUSB support: Input/Output
> Error [-1]
> 2021-12-21 02:13:59.766 3011-3060/com.iiordanov.aSPICE
> E/GLib+android-spice: spice_usb_backend_deregister_hotplug: assertion
> 'be != NULL' failed
> 2021-12-21 02:13:59.766 3011-3060/com.iiordanov.aSPICE
> W/GLib+android-spice: Error initializing LIBUSB support: Input/Output
> Error [-1]
> 2021-12-21 02:13:59.766 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/spice-session.c:1578 Could not initialize SpiceUsbDeviceManager
> - Error initializing LIBUSB support: Input/Output Error [-1]
> 2021-12-21 02:13:59.766 3011-3060/com.iiordanov.aSPICE
> W/GLib+android-spice: Error initializing LIBUSB support: Input/Output
> Error [-1]
> ======================================
>
> The rest of the log looks very encouraging, save for the fact that no
> device is attached to the remote. The same device does attach when I
> use spicy from my laptop to the same VM. Here is the log that is
> output from the above code and subsequently by spice-gtk:
>
> ======================================
> 2021-12-21 02:13:59.957 3011-3060/com.iiordanov.aSPICE
> D/SpiceCommunicator: Passing fd: 85 to SPICE for device:
> UsbDevice[mName=/dev/bus/usb/001/002,mVendorId=7741,mProductId=8338,mClass=0,mSubclass=0,mProtocol=0,mManufacturerName=CBM
>     ,mProductName=Flash Disk
> ,mVersion=1.00,mSerialNumberReader=android.hardware.usb.IUsbSerialReader$Stub$Proxy@ecfcac3,
> mHasAudioPlayback=false, mHasAudioCapture=false, mHasMidi=false,
> mHasVideoCapture=false, mHasVideoPlayback=false, mConfigurations=[
>     UsbConfiguration[mId=1,mName=null,mAttributes=128,mMaxPower=50,mInterfaces=[
>     UsbInterface[mId=0,mAlternateSetting=0,mName=null,mClass=8,mSubclass=6,mProtocol=80,mEndpoints=[
>     UsbEndpoint[mAddress=1,mAttributes=2,mMaxPacketSize=512,mInterval=0]
>     UsbEndpoint[mAddress=129,mAttributes=2,mMaxPacketSize=512,mInterval=0]]]]
> 2021-12-21 02:13:59.957 3011-3060/com.iiordanov.aSPICE
> D/android-service:
> Java_com_undatech_opaque_SpiceCommunicator_SpiceSetNativeFileDescriptor:
> start
> 2021-12-21 02:13:59.957 3011-3060/com.iiordanov.aSPICE
> D/android-service:
> Java_com_undatech_opaque_SpiceCommunicator_SpiceSetNativeFileDescriptor:
> calling libusb_wrap_sys_device
> 2021-12-21 02:13:59.958 3011-3060/com.iiordanov.aSPICE
> D/android-service:
> Java_com_undatech_opaque_SpiceCommunicator_SpiceSetNativeFileDescriptor:
> calling allocate_backend_device
> 2021-12-21 02:13:59.958 3011-3060/com.iiordanov.aSPICE
> D/android-service:
> Java_com_undatech_opaque_SpiceCommunicator_SpiceSetNativeFileDescriptor:
> calling spice_usb_device_manager_get
> 2021-12-21 02:13:59.956 3011-3011/com.iiordanov.aSPICE W/Thread-4:
> type=1400 audit(0.0:1578): avc: denied { read } for name="usb"
> dev="tmpfs" ino=1397419
> scontext=u:r:untrusted_app:s0:c181,c257,c512,c768
> tcontext=u:object_r:usb_device:s0 tclass=dir permissive=0
> app=com.iiordanov.aSPICE
> 2021-12-21 02:13:59.958 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/usb-device-manager.c:391 auto-connect filter set to
> 0x03,-1,-1,-1,0|-1,-1,-1,-1,1
> 2021-12-21 02:13:59.960 3011-3060/com.iiordanov.aSPICE
> D/android-service:
> Java_com_undatech_opaque_SpiceCommunicator_SpiceSetNativeFileDescriptor:
> Attaching device via spice_usb_device_manager_connect_device_async
> 2021-12-21 02:13:59.960 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/usb-device-manager.c:1103 connecting device 0x70efaf1490
> 2021-12-21 02:13:59.960 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/channel-usbredir.c:344 usbredir-9:0: connecting device
> 1e3d:2092 (0x70efaf1490) to channel 0x725fae4540
> 2021-12-21 02:13:59.960 3011-3079/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/spice-channel.c:2921 test cap 1 in 0x1052: yes
> 2021-12-21 02:13:59.961 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/spice-channel.c:2703 usbredir-9:0: Open coroutine starting
> 0x725fae4540
> 2021-12-21 02:13:59.962 3011-3115/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/spice-channel.c:2540 usbredir-9:0: Started background coroutine
> 0x725fae43f8
> 2021-12-21 02:13:59.962 3011-3115/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/spice-session.c:2265 usbredir-9:0: Using plain text, port 6001
> 2021-12-21 02:13:59.962 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/spice-channel.c:2703 usbredir-9:1: Open coroutine starting
> 0x725fae4340
> 2021-12-21 02:13:59.963 3011-3116/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/spice-channel.c:2540 usbredir-9:1: Started background coroutine
> 0x725fae41f8
> 2021-12-21 02:13:59.963 3011-3116/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/spice-session.c:2265 usbredir-9:1: Using plain text, port 6001
> 2021-12-21 02:13:59.965 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/spice-session.c:2196 open host MYHOST:6001
> 2021-12-21 02:13:59.965 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/spice-session.c:2118 usbredir-9:0: connecting 0x709fb7aaf0...
> 2021-12-21 02:13:59.965 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/spice-session.c:2196 open host MYHOST:6001
> 2021-12-21 02:13:59.966 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/spice-session.c:2118 usbredir-9:1: connecting 0x709fa7caf0...
> 2021-12-21 02:13:59.992 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/spice-session.c:2102 usbredir-9:0: connect ready
> 2021-12-21 02:13:59.992 3011-3115/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/spice-channel.c:1372 usbredir-9:0: channel type 9 id 0 num
> common caps 1 num caps 1
> 2021-12-21 02:14:00.002 3011-3115/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/spice-channel.c:1396 usbredir-9:0: Peer version: 2:2
> 2021-12-21 02:14:00.002 3011-3115/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/spice-channel.c:1952 usbredir-9:0: spice_channel_recv_link_msg:
> 2 caps
> 2021-12-21 02:14:00.002 3011-3115/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/spice-channel.c:1966 usbredir-9:0: got remote common caps:
> 2021-12-21 02:14:00.002 3011-3115/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/spice-channel.c:1902     0:0xB
> 2021-12-21 02:14:00.002 3011-3115/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/spice-channel.c:1973 usbredir-9:0: got remote channel caps:
> 2021-12-21 02:14:00.002 3011-3115/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/spice-channel.c:1902     0:0x1
> 2021-12-21 02:14:00.002 3011-3115/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/spice-channel.c:2921 test cap 0 in 0xB: yes
> 2021-12-21 02:14:00.002 3011-3115/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/spice-channel.c:2921 test cap 1 in 0xB: yes
> 2021-12-21 02:14:00.003 3011-3115/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/spice-channel.c:2921 test cap 3 in 0xB: yes
> 2021-12-21 02:14:00.003 3011-3115/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/spice-channel.c:2005 usbredir-9:0: use mini header: 1
> 2021-12-21 02:14:00.003 3011-3060/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/spice-session.c:2102 usbredir-9:1: connect ready
> 2021-12-21 02:14:00.003 3011-3116/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/spice-channel.c:1372 usbredir-9:1: channel type 9 id 1 num
> common caps 1 num caps 1
> 2021-12-21 02:14:00.005 3011-3115/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/spice-channel.c:1303 usbredir-9:0: channel up, state 3
> 2021-12-21 02:14:00.013 3011-3116/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/spice-channel.c:1396 usbredir-9:1: Peer version: 2:2
> 2021-12-21 02:14:00.014 3011-3116/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/spice-channel.c:1952 usbredir-9:1: spice_channel_recv_link_msg:
> 2 caps
> 2021-12-21 02:14:00.014 3011-3116/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/spice-channel.c:1966 usbredir-9:1: got remote common caps:
> 2021-12-21 02:14:00.014 3011-3116/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/spice-channel.c:1902     0:0xB
> 2021-12-21 02:14:00.014 3011-3116/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/spice-channel.c:1973 usbredir-9:1: got remote channel caps:
> 2021-12-21 02:14:00.014 3011-3116/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/spice-channel.c:1902     0:0x1
> 2021-12-21 02:14:00.014 3011-3116/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/spice-channel.c:2921 test cap 0 in 0xB: yes
> 2021-12-21 02:14:00.014 3011-3116/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/spice-channel.c:2921 test cap 1 in 0xB: yes
> 2021-12-21 02:14:00.014 3011-3116/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/spice-channel.c:2921 test cap 3 in 0xB: yes
> 2021-12-21 02:14:00.014 3011-3116/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/spice-channel.c:2005 usbredir-9:1: use mini header: 1
> 2021-12-21 02:14:00.018 3011-3116/com.iiordanov.aSPICE D/GLib+GSpice:
> ../src/spice-channel.c:1303 usbredir-9:1: channel up, state 3
> ======================================
>
> Your help and suggestions are highly appreciated!
>
> Sincerely,
> iordan
>
> On Mon, Dec 20, 2021 at 5:57 AM Uri Lublin <uril@redhat.com> wrote:
> >
> > Hi iordan,
> >
> > On Mon, Dec 20, 2021 at 9:46 AM i iordanov <iiordanov@gmail.com> wrote:
> > >
> > > Hi guys,
> > >
> > > I saw that the developers at libusb have done a bunch of work to
> > > support accessing USB devices on unrooted Android devices, and in
> > > response to a user request, I decided to look into the current state
> > > of the implementation.
> >
> > Congrats to libusb developers.
> >
> > >
> > > I am able to obtain permissions and get both:
> > >
> > > libusb_device *dev
> > >
> > > and
> > >
> > > libusb_device_handle *handle
> > >
> > > for an attached USB stick, but now do not have a good idea how to
> > > request libspice to attach the device to the remote.
> > >
> > > Is there an API exposed that would permit me to attach devices by
> > > either libusb_device or libusb_device_handle? In either case, any
> > > pointers on how to accomplish this are welcome!
> >
> > On the client side, you need to build usbredir and rebuild spice-gtk
> > with usbredir enabled.
> >
> > On the server side you need to build usbredir and rebuild Qemu with
> > usbredir enabled.
> > You also need to add to your VM configuration some USB devices and
> > attach them to SPICE.
> > See SPICE User Manual [1] "USB redirection" for details.
> >
> > [1] https://www.spice-space.org/spice-user-manual.html
> >
> > Regards,
> >     Uri.
> >
> > >
> > > Sincerely,
> > > iordan
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

