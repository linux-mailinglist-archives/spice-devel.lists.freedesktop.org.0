Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA2992DF612
	for <lists+spice-devel@lfdr.de>; Sun, 20 Dec 2020 17:20:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 118196E201;
	Sun, 20 Dec 2020 16:20:56 +0000 (UTC)
X-Original-To: spice-devel@freedesktop.org
Delivered-To: spice-devel@freedesktop.org
X-Greylist: delayed 519 seconds by postgrey-1.36 at gabe;
 Sun, 20 Dec 2020 16:20:54 UTC
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68C986E201
 for <spice-devel@freedesktop.org>; Sun, 20 Dec 2020 16:20:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 236B659;
 Sun, 20 Dec 2020 16:12:14 +0000 (UTC)
Received: from [10.35.206.203] (unknown [10.35.206.203])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8BD731A838;
 Sun, 20 Dec 2020 16:12:12 +0000 (UTC)
To: Armin Ranjbar <zoup@zoup.org>, spice-devel <spice-devel@freedesktop.org>
References: <CAOvx4-3g+wSy6Qepf=37nUUhrhHd_hj9YJ5An3FuZLm16Sk-Dw@mail.gmail.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <b8dfe1c5-0e92-9876-848f-a0e86ae1c448@redhat.com>
Date: Sun, 20 Dec 2020 18:12:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <CAOvx4-3g+wSy6Qepf=37nUUhrhHd_hj9YJ5An3FuZLm16Sk-Dw@mail.gmail.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Subject: Re: [Spice-devel] TLS + Letsencrypt doesn't work on Windows
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
Reply-To: uril@redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On 12/15/20 1:45 PM, Armin Ranjbar wrote:
> Dear Everyone,
> 
> As always, let me thank you first for the effort you put in Spice.
> 
> I have a strange case here, libvirt is configured with letsencrypt 
> certificates, remote-viewer works happily on Linux, but it doesn't seem 
> to be able to get local issuer certificate on windows.

Hi,

Can you please provide
1. qemu-kvm commandline -spice option
2. remote-viewer commandline (for both windows and linux)?
3. Does the Linux remote-viewer run on the same
    machine as libvirt/qemu-kvm or does it run on a
    different machine?
4. Did you copy the CA-certificate onto the windows machine ?
    (Just verifying, I see the name is correctly ca-cert.pem)

Uri.


> same error even when I try to give the address of CA file via 
> --spice-ca-file, attaching logs with spice-debug here:
> 
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.293: 
> ../src/spice-session.c:292 Supported channels: main, display, inputs, 
> cursor, playback, record, usbredir
> (remote-viewer.exe:3584): Spice-DEBUG: 15:13:17.293: 
> ../src/usb-device-manager.c:259:spice_usb_device_manager_init: UsbDk 
> driver is not installed
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.293: 
> ../src/usb-device-manager.c:485 auto-connect filter set to 
> 0x03,-1,-1,-1,0|-1,-1,-1,-1,1
> 
> (remote-viewer.exe:3584): GSpice-CRITICAL **: 15:13:17.293: 
> _usbdk_hider_update: assertion 'priv->usbdk_api != NULL' failed
> 
> (remote-viewer.exe:3584): GSpice-WARNING **: 15:13:17.962: password may 
> be visible in process listings
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.965: 
> ../src/spice-session.c:1814 no migration in progress
> Spice-INFO: 15:13:17.965: 
> ../src/channel-main.c:337:spice_main_set_property: 
> SpiceMainChannel::color-depth has been deprecated. Property is ignored
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.965: 
> ../src/spice-channel.c:141 main-1:0: spice_channel_constructed
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.965: 
> ../src/spice-session.c:2309 main-1:0: new main channel, switching
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.680: 
> ../src/spice-channel.c:2707 main-1:0: Open coroutine starting 
> 000000000462E480
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.680: 
> ../src/spice-channel.c:2544 main-1:0: Started background coroutine 
> 000000000462E338
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.680: 
> ../src/spice-session.c:2231 Missing port value, not attempting 
> unencrypted connection.
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.680: 
> ../src/spice-channel.c:2570 main-1:0: trying with TLS port
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.694: 
> ../src/spice-session.c:2244 main-1:0: Using TLS, port 5901
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.694: 
> ../src/spice-session.c:2177 open host DOMAIN_REPLACED:5901
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.694: 
> ../src/spice-session.c:2099 main-1:0: connecting 00000000071DFDD0...
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.757: 
> ../src/spice-session.c:2083 main-1:0: connect ready
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.757: 
> ../src/spice-channel.c:2466 main-1:0: Load CA, file: C:\ca-cert.pem, 
> data: 0000000000000000
> 
> (remote-viewer.exe:3584): Spice-WARNING **: 15:13:18.819: 
> ../subprojects/spice-common/common/ssl_verify.c:444:openssl_verify: 
> Error in certificate chain verification: unable to get issuer 
> certificate (num=2:depth1:/C=US/O=Let's Encrypt/CN=R3)
> 
> (remote-viewer.exe:3584): GSpice-WARNING **: 15:13:18.819: main-1:0: 
> SSL_connect: error:00000001:lib(0):func(0):reason(1)
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819: 
> ../src/spice-channel.c:2680 main-1:0: Coroutine exit main-1:0
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819: 
> ../src/spice-channel.c:2871 main-1:0: reset
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819: 
> ../src/channel-main.c:1567 agent connected: no
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819: 
> ../src/spice-channel.c:2819 main-1:0: channel reset
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819: 
> ../src/spice-channel.c:2425 main-1:0: Delayed unref channel 000000000462E480
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819: 
> ../src/spice-session.c:2006 session: disconnecting 0
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819: 
> ../src/spice-session.c:2349 main-1:0: the session lost the main channel
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.835: 
> ../src/spice-channel.c:2888 main-1:0: channel disconnect 0
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.835: 
> ../src/spice-channel.c:159 main-1:0: spice_channel_dispose 000000000462E480
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.835: 
> ../src/spice-channel.c:2888 main-1:0: channel disconnect 12
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:19.756: 
> ../src/spice-session.c:2006 session: disconnecting 1151
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:19.757: 
> ../src/spice-session.c:288 New session (compiled from package spice-gtk 
> 0.37)
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:19.758: 
> ../src/spice-session.c:292 Supported channels: main, display, inputs, 
> cursor, playback, record, usbredir
> (remote-viewer.exe:3584): Spice-DEBUG: 15:13:19.759: 
> ../src/usb-device-manager.c:259:spice_usb_device_manager_init: UsbDk 
> driver is not installed
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:19.760: 
> ../src/usb-device-manager.c:485 auto-connect filter set to 
> 0x03,-1,-1,-1,0|-1,-1,-1,-1,1
> 
> 
> 
> also output when giving the --spica-ca-file, one thing i found strange 
> is the fact that Load CA file, shows zeroes as data, even when provided 
> file doesn't exist :
> 
> (remote-viewer.exe:3584): GSpice-WARNING **: 15:13:17.962: password may 
> be visible in process listings
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.965: 
> ../src/spice-session.c:1814 no migration in progress
> Spice-INFO: 15:13:17.965: 
> ../src/channel-main.c:337:spice_main_set_property: 
> SpiceMainChannel::color-depth has been deprecated. Property is ignored
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.965: 
> ../src/spice-channel.c:141 main-1:0: spice_channel_constructed
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.965: 
> ../src/spice-session.c:2309 main-1:0: new main channel, switching
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.680: 
> ../src/spice-channel.c:2707 main-1:0: Open coroutine starting 
> 000000000462E480
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.680: 
> ../src/spice-channel.c:2544 main-1:0: Started background coroutine 
> 000000000462E338
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.680: 
> ../src/spice-session.c:2231 Missing port value, not attempting 
> unencrypted connection.
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.680: 
> ../src/spice-channel.c:2570 main-1:0: trying with TLS port
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.694: 
> ../src/spice-session.c:2244 main-1:0: Using TLS, port 5901
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.694: 
> ../src/spice-session.c:2177 open host vdi.pishro.computer:5901
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.694: 
> ../src/spice-session.c:2099 main-1:0: connecting 00000000071DFDD0...
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.757: 
> ../src/spice-session.c:2083 main-1:0: connect ready
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.757: 
> ../src/spice-channel.c:2466 main-1:0: Load CA, file: C:\ca-cert.pem, 
> data: 0000000000000000
> 
> (remote-viewer.exe:3584): Spice-WARNING **: 15:13:18.819: 
> ../subprojects/spice-common/common/ssl_verify.c:444:openssl_verify: 
> Error in certificate chain verification: unable to get issuer 
> certificate (num=2:depth1:/C=US/O=Let's Encrypt/CN=R3)
> 
> (remote-viewer.exe:3584): GSpice-WARNING **: 15:13:18.819: main-1:0: 
> SSL_connect: error:00000001:lib(0):func(0):reason(1)
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819: 
> ../src/spice-channel.c:2680 main-1:0: Coroutine exit main-1:0
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819: 
> ../src/spice-channel.c:2871 main-1:0: reset
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819: 
> ../src/channel-main.c:1567 agent connected: no
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819: 
> ../src/spice-channel.c:2819 main-1:0: channel reset
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819: 
> ../src/spice-channel.c:2425 main-1:0: Delayed unref channel 000000000462E480
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819: 
> ../src/spice-session.c:2006 session: disconnecting 0
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819: 
> ../src/spice-session.c:2349 main-1:0: the session lost the main channel
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.835: 
> ../src/spice-channel.c:2888 main-1:0: channel disconnect 0
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.835: 
> ../src/spice-channel.c:159 main-1:0: spice_channel_dispose 000000000462E480
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.835: 
> ../src/spice-channel.c:2888 main-1:0: channel disconnect 12
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:19.756: 
> ../src/spice-session.c:2006 session: disconnecting 1151
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:19.757: 
> ../src/spice-session.c:288 New session (compiled from package spice-gtk 
> 0.37)
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:19.758: 
> ../src/spice-session.c:292 Supported channels: main, display, inputs, 
> cursor, playback, record, usbredir
> (remote-viewer.exe:3584): Spice-DEBUG: 15:13:19.759: 
> ../src/usb-device-manager.c:259:spice_usb_device_manager_init: UsbDk 
> driver is not installed
> (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:19.760: 
> ../src/usb-device-manager.c:485 auto-connect filter set to 
> 0x03,-1,-1,-1,0|-1,-1,-1,-1,1
> 
> ---
> Armin ranjbar
> 
> 
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel
> 

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
