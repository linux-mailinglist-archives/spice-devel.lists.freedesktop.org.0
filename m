Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4702DAC37
	for <lists+spice-devel@lfdr.de>; Tue, 15 Dec 2020 12:45:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E056F89BBE;
	Tue, 15 Dec 2020 11:45:50 +0000 (UTC)
X-Original-To: spice-devel@freedesktop.org
Delivered-To: spice-devel@freedesktop.org
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com
 [IPv6:2607:f8b0:4864:20::431])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2970F89BBE
 for <spice-devel@freedesktop.org>; Tue, 15 Dec 2020 11:45:48 +0000 (UTC)
Received: by mail-pf1-x431.google.com with SMTP id c79so14347995pfc.2
 for <spice-devel@freedesktop.org>; Tue, 15 Dec 2020 03:45:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=zoup-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=iS0wQY1MfeM1Y8x7vW+2HJ1Vl1UO6aff8UYVDMTDjmw=;
 b=S8teu97rx0ihl4e+wY0dW3fkn8MktXRddmXgw4uEg3AKFcE8UPLi2bq3Snw02B4Sdl
 nx3O+eXFJcIG4e8qptTMwqH/3tc5k1fqIZNCHBWwGsbcCrwvWV1C2W//aPOtlRGp8kO6
 /9R2hHsK1dh1bskxS1bezYFx2nBc6eKIbwzJn4oNwDOyQVPH62X7JYzg3tI1vn2VD5/8
 c++mvQAhlfrJoOPjGHwz3RAXSghc9fnOvCw7vCg7rNcgRxy7RDMOVhO9vEYjUexY8xzs
 Dp6BMd3cbra/x/vsqkhUyN+24QvG7rRjAhPwuCK2wjBg2OY7QEarssOoGIPgqDR0tF6z
 O8nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=iS0wQY1MfeM1Y8x7vW+2HJ1Vl1UO6aff8UYVDMTDjmw=;
 b=Inq48KXQxKtyUNU33ozkho9Ix2ewV4DRzFtGAhuIlkddgEn27yc/gk86y4oAImxjJM
 gu7DODKqe6QdR22nuEBh9rBq/moX9im5nEhT2mChhW/8/ar/WK24K0waHebiPE4C0WyI
 PdHcqZ0awlWvw/ljQhHVzfaYeUFm/sLCVQ+a4X1PaAH9T+8rMMXAEqhLGQAHra7mtihz
 9x5JVwFOMi0iCJUbukaONEZBw1/QBo6R6GddjWhSbdZ44s6/1Qdlka28CENAkdU5bzjN
 09kh+TI+R4LeFGztlzd/zAj635zGVKpqmcCVNonCPHfMFLkGkXWsB3ObXOIdt4xfas6t
 5FZw==
X-Gm-Message-State: AOAM530DEYwsrQ0kS9pH78MsMOkfORA3fFUcqXEDWsyhrgjTxoJWVNCR
 ju+1+m4w4ranTzjY4ISuRk70K+9y9CXUvCM2keJ0Y8o2rwKbgY+8OHs=
X-Google-Smtp-Source: ABdhPJy6mbJyco6mvn3rI0rGw0YTyijttK9vNy/QxXlczjTPXuaA68Zq5Y1oF1+AqtjOssHFGjg+PPEwtDi8+dD0MSI=
X-Received: by 2002:a05:6a00:1506:b029:18b:5a31:ed87 with SMTP id
 q6-20020a056a001506b029018b5a31ed87mr1605478pfu.55.1608032747984; Tue, 15 Dec
 2020 03:45:47 -0800 (PST)
MIME-Version: 1.0
From: Armin Ranjbar <zoup@zoup.org>
Date: Tue, 15 Dec 2020 15:15:36 +0330
Message-ID: <CAOvx4-3g+wSy6Qepf=37nUUhrhHd_hj9YJ5An3FuZLm16Sk-Dw@mail.gmail.com>
To: spice-devel <spice-devel@freedesktop.org>
Subject: [Spice-devel] TLS + Letsencrypt doesn't work on Windows
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
Content-Type: multipart/mixed; boundary="===============1004450721=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1004450721==
Content-Type: multipart/alternative; boundary="000000000000bb384f05b67f4ce3"

--000000000000bb384f05b67f4ce3
Content-Type: text/plain; charset="UTF-8"

Dear Everyone,

As always, let me thank you first for the effort you put in Spice.

I have a strange case here, libvirt is configured with letsencrypt
certificates, remote-viewer works happily on Linux, but it doesn't seem to
be able to get local issuer certificate on windows.
same error even when I try to give the address of CA file via
--spice-ca-file, attaching logs with spice-debug here:

(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.293:
../src/spice-session.c:292 Supported channels: main, display, inputs,
cursor, playback, record, usbredir
(remote-viewer.exe:3584): Spice-DEBUG: 15:13:17.293:
../src/usb-device-manager.c:259:spice_usb_device_manager_init: UsbDk driver
is not installed
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.293:
../src/usb-device-manager.c:485 auto-connect filter set to
0x03,-1,-1,-1,0|-1,-1,-1,-1,1

(remote-viewer.exe:3584): GSpice-CRITICAL **: 15:13:17.293:
_usbdk_hider_update: assertion 'priv->usbdk_api != NULL' failed

(remote-viewer.exe:3584): GSpice-WARNING **: 15:13:17.962: password may be
visible in process listings
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.965:
../src/spice-session.c:1814 no migration in progress
Spice-INFO: 15:13:17.965:
../src/channel-main.c:337:spice_main_set_property:
SpiceMainChannel::color-depth has been deprecated. Property is ignored
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.965:
../src/spice-channel.c:141 main-1:0: spice_channel_constructed
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.965:
../src/spice-session.c:2309 main-1:0: new main channel, switching
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.680:
../src/spice-channel.c:2707 main-1:0: Open coroutine starting
000000000462E480
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.680:
../src/spice-channel.c:2544 main-1:0: Started background coroutine
000000000462E338
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.680:
../src/spice-session.c:2231 Missing port value, not attempting unencrypted
connection.
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.680:
../src/spice-channel.c:2570 main-1:0: trying with TLS port
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.694:
../src/spice-session.c:2244 main-1:0: Using TLS, port 5901
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.694:
../src/spice-session.c:2177 open host DOMAIN_REPLACED:5901
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.694:
../src/spice-session.c:2099 main-1:0: connecting 00000000071DFDD0...
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.757:
../src/spice-session.c:2083 main-1:0: connect ready
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.757:
../src/spice-channel.c:2466 main-1:0: Load CA, file: C:\ca-cert.pem, data:
0000000000000000

(remote-viewer.exe:3584): Spice-WARNING **: 15:13:18.819:
../subprojects/spice-common/common/ssl_verify.c:444:openssl_verify: Error
in certificate chain verification: unable to get issuer certificate
(num=2:depth1:/C=US/O=Let's Encrypt/CN=R3)

(remote-viewer.exe:3584): GSpice-WARNING **: 15:13:18.819: main-1:0:
SSL_connect: error:00000001:lib(0):func(0):reason(1)
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819:
../src/spice-channel.c:2680 main-1:0: Coroutine exit main-1:0
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819:
../src/spice-channel.c:2871 main-1:0: reset
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819:
../src/channel-main.c:1567 agent connected: no
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819:
../src/spice-channel.c:2819 main-1:0: channel reset
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819:
../src/spice-channel.c:2425 main-1:0: Delayed unref channel 000000000462E480
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819:
../src/spice-session.c:2006 session: disconnecting 0
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819:
../src/spice-session.c:2349 main-1:0: the session lost the main channel
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.835:
../src/spice-channel.c:2888 main-1:0: channel disconnect 0
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.835:
../src/spice-channel.c:159 main-1:0: spice_channel_dispose 000000000462E480
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.835:
../src/spice-channel.c:2888 main-1:0: channel disconnect 12
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:19.756:
../src/spice-session.c:2006 session: disconnecting 1151
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:19.757:
../src/spice-session.c:288 New session (compiled from package spice-gtk
0.37)
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:19.758:
../src/spice-session.c:292 Supported channels: main, display, inputs,
cursor, playback, record, usbredir
(remote-viewer.exe:3584): Spice-DEBUG: 15:13:19.759:
../src/usb-device-manager.c:259:spice_usb_device_manager_init: UsbDk driver
is not installed
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:19.760:
../src/usb-device-manager.c:485 auto-connect filter set to
0x03,-1,-1,-1,0|-1,-1,-1,-1,1



also output when giving the --spica-ca-file, one thing i found strange is
the fact that Load CA file, shows zeroes as data, even when provided file
doesn't exist :

(remote-viewer.exe:3584): GSpice-WARNING **: 15:13:17.962: password may be
visible in process listings
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.965:
../src/spice-session.c:1814 no migration in progress
Spice-INFO: 15:13:17.965:
../src/channel-main.c:337:spice_main_set_property:
SpiceMainChannel::color-depth has been deprecated. Property is ignored
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.965:
../src/spice-channel.c:141 main-1:0: spice_channel_constructed
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.965:
../src/spice-session.c:2309 main-1:0: new main channel, switching
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.680:
../src/spice-channel.c:2707 main-1:0: Open coroutine starting
000000000462E480
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.680:
../src/spice-channel.c:2544 main-1:0: Started background coroutine
000000000462E338
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.680:
../src/spice-session.c:2231 Missing port value, not attempting unencrypted
connection.
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.680:
../src/spice-channel.c:2570 main-1:0: trying with TLS port
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.694:
../src/spice-session.c:2244 main-1:0: Using TLS, port 5901
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.694:
../src/spice-session.c:2177 open host vdi.pishro.computer:5901
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.694:
../src/spice-session.c:2099 main-1:0: connecting 00000000071DFDD0...
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.757:
../src/spice-session.c:2083 main-1:0: connect ready
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.757:
../src/spice-channel.c:2466 main-1:0: Load CA, file: C:\ca-cert.pem, data:
0000000000000000

(remote-viewer.exe:3584): Spice-WARNING **: 15:13:18.819:
../subprojects/spice-common/common/ssl_verify.c:444:openssl_verify: Error
in certificate chain verification: unable to get issuer certificate
(num=2:depth1:/C=US/O=Let's Encrypt/CN=R3)

(remote-viewer.exe:3584): GSpice-WARNING **: 15:13:18.819: main-1:0:
SSL_connect: error:00000001:lib(0):func(0):reason(1)
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819:
../src/spice-channel.c:2680 main-1:0: Coroutine exit main-1:0
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819:
../src/spice-channel.c:2871 main-1:0: reset
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819:
../src/channel-main.c:1567 agent connected: no
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819:
../src/spice-channel.c:2819 main-1:0: channel reset
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819:
../src/spice-channel.c:2425 main-1:0: Delayed unref channel 000000000462E480
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819:
../src/spice-session.c:2006 session: disconnecting 0
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819:
../src/spice-session.c:2349 main-1:0: the session lost the main channel
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.835:
../src/spice-channel.c:2888 main-1:0: channel disconnect 0
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.835:
../src/spice-channel.c:159 main-1:0: spice_channel_dispose 000000000462E480
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.835:
../src/spice-channel.c:2888 main-1:0: channel disconnect 12
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:19.756:
../src/spice-session.c:2006 session: disconnecting 1151
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:19.757:
../src/spice-session.c:288 New session (compiled from package spice-gtk
0.37)
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:19.758:
../src/spice-session.c:292 Supported channels: main, display, inputs,
cursor, playback, record, usbredir
(remote-viewer.exe:3584): Spice-DEBUG: 15:13:19.759:
../src/usb-device-manager.c:259:spice_usb_device_manager_init: UsbDk driver
is not installed
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:19.760:
../src/usb-device-manager.c:485 auto-connect filter set to
0x03,-1,-1,-1,0|-1,-1,-1,-1,1

---
Armin ranjbar

--000000000000bb384f05b67f4ce3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear Everyone,<div><br></div><div>As always, let me thank =
you first for the effort you put in Spice.</div><div><br></div><div>I have =
a strange case here, libvirt is configured with letsencrypt certificates, r=
emote-viewer works happily on Linux, but it doesn&#39;t seem to be able to =
get local issuer certificate on windows.</div><div>same error even when I t=
ry to give the address of CA file via --spice-ca-file, attaching logs with =
spice-debug here:</div><div><br></div><div>(remote-viewer.exe:3584): GSpice=
-DEBUG: 15:13:17.293: ../src/spice-session.c:292 Supported channels: main, =
display, inputs, cursor, playback, record, usbredir<br>(remote-viewer.exe:3=
584): Spice-DEBUG: 15:13:17.293: ../src/usb-device-manager.c:259:spice_usb_=
device_manager_init: UsbDk driver is not installed<br>(remote-viewer.exe:35=
84): GSpice-DEBUG: 15:13:17.293: ../src/usb-device-manager.c:485 auto-conne=
ct filter set to 0x03,-1,-1,-1,0|-1,-1,-1,-1,1<br><br>(remote-viewer.exe:35=
84): GSpice-CRITICAL **: 15:13:17.293: _usbdk_hider_update: assertion &#39;=
priv-&gt;usbdk_api !=3D NULL&#39; failed<br><br>(remote-viewer.exe:3584): G=
Spice-WARNING **: 15:13:17.962: password may be visible in process listings=
<br>(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.965: ../src/spice-sess=
ion.c:1814 no migration in progress<br>Spice-INFO: 15:13:17.965: ../src/cha=
nnel-main.c:337:spice_main_set_property: SpiceMainChannel::color-depth has =
been deprecated. Property is ignored<br>(remote-viewer.exe:3584): GSpice-DE=
BUG: 15:13:17.965: ../src/spice-channel.c:141 main-1:0: spice_channel_const=
ructed<br>(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.965: ../src/spic=
e-session.c:2309 main-1:0: new main channel, switching<br>(remote-viewer.ex=
e:3584): GSpice-DEBUG: 15:13:18.680: ../src/spice-channel.c:2707 main-1:0: =
Open coroutine starting 000000000462E480<br>(remote-viewer.exe:3584): GSpic=
e-DEBUG: 15:13:18.680: ../src/spice-channel.c:2544 main-1:0: Started backgr=
ound coroutine 000000000462E338<br>(remote-viewer.exe:3584): GSpice-DEBUG: =
15:13:18.680: ../src/spice-session.c:2231 Missing port value, not attemptin=
g unencrypted connection.<br>(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:=
18.680: ../src/spice-channel.c:2570 main-1:0: trying with TLS port<br>(remo=
te-viewer.exe:3584): GSpice-DEBUG: 15:13:18.694: ../src/spice-session.c:224=
4 main-1:0: Using TLS, port 5901<br>(remote-viewer.exe:3584): GSpice-DEBUG:=
 15:13:18.694: ../src/spice-session.c:2177 open host DOMAIN_REPLACED:5901<b=
r>(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.694: ../src/spice-sessio=
n.c:2099 main-1:0: connecting 00000000071DFDD0...<br>(remote-viewer.exe:358=
4): GSpice-DEBUG: 15:13:18.757: ../src/spice-session.c:2083 main-1:0: conne=
ct ready<br>(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.757: ../src/sp=
ice-channel.c:2466 main-1:0: Load CA, file: C:\ca-cert.pem, data: 000000000=
0000000<br><br>(remote-viewer.exe:3584): Spice-WARNING **: 15:13:18.819: ..=
/subprojects/spice-common/common/ssl_verify.c:444:openssl_verify: Error in =
certificate chain verification: unable to get issuer certificate (num=3D2:d=
epth1:/C=3DUS/O=3DLet&#39;s Encrypt/CN=3DR3)<br><br>(remote-viewer.exe:3584=
): GSpice-WARNING **: 15:13:18.819: main-1:0: SSL_connect: error:00000001:l=
ib(0):func(0):reason(1)<br>(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18=
.819: ../src/spice-channel.c:2680 main-1:0: Coroutine exit main-1:0<br>(rem=
ote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819: ../src/spice-channel.c:28=
71 main-1:0: reset<br>(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819:=
 ../src/channel-main.c:1567 agent connected: no<br>(remote-viewer.exe:3584)=
: GSpice-DEBUG: 15:13:18.819: ../src/spice-channel.c:2819 main-1:0: channel=
 reset<br>(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819: ../src/spic=
e-channel.c:2425 main-1:0: Delayed unref channel 000000000462E480<br>(remot=
e-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819: ../src/spice-session.c:2006=
 session: disconnecting 0<br>(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:=
18.819: ../src/spice-session.c:2349 main-1:0: the session lost the main cha=
nnel<br>(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.835: ../src/spice-=
channel.c:2888 main-1:0: channel disconnect 0<br>(remote-viewer.exe:3584): =
GSpice-DEBUG: 15:13:18.835: ../src/spice-channel.c:159 main-1:0: spice_chan=
nel_dispose 000000000462E480<br>(remote-viewer.exe:3584): GSpice-DEBUG: 15:=
13:18.835: ../src/spice-channel.c:2888 main-1:0: channel disconnect 12<br>(=
remote-viewer.exe:3584): GSpice-DEBUG: 15:13:19.756: ../src/spice-session.c=
:2006 session: disconnecting 1151<br>(remote-viewer.exe:3584): GSpice-DEBUG=
: 15:13:19.757: ../src/spice-session.c:288 New session (compiled from packa=
ge spice-gtk 0.37)<br>(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:19.758:=
 ../src/spice-session.c:292 Supported channels: main, display, inputs, curs=
or, playback, record, usbredir<br>(remote-viewer.exe:3584): Spice-DEBUG: 15=
:13:19.759: ../src/usb-device-manager.c:259:spice_usb_device_manager_init: =
UsbDk driver is not installed<br>(remote-viewer.exe:3584): GSpice-DEBUG: 15=
:13:19.760: ../src/usb-device-manager.c:485 auto-connect filter set to 0x03=
,-1,-1,-1,0|-1,-1,-1,-1,1<br><br></div><div><br></div><div><br></div><div>a=
lso output when giving the --spica-ca-file, one thing i found strange is th=
e fact that Load CA file, shows zeroes as data, even when provided file doe=
sn&#39;t exist :</div><div><br></div><div>(remote-viewer.exe:3584): GSpice-=
WARNING **: 15:13:17.962: password may be visible in process listings<br>(r=
emote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.965: ../src/spice-session.c:=
1814 no migration in progress<br>Spice-INFO: 15:13:17.965: ../src/channel-m=
ain.c:337:spice_main_set_property: SpiceMainChannel::color-depth has been d=
eprecated. Property is ignored<br>(remote-viewer.exe:3584): GSpice-DEBUG: 1=
5:13:17.965: ../src/spice-channel.c:141 main-1:0: spice_channel_constructed=
<br>(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.965: ../src/spice-sess=
ion.c:2309 main-1:0: new main channel, switching<br>(remote-viewer.exe:3584=
): GSpice-DEBUG: 15:13:18.680: ../src/spice-channel.c:2707 main-1:0: Open c=
oroutine starting 000000000462E480<br>(remote-viewer.exe:3584): GSpice-DEBU=
G: 15:13:18.680: ../src/spice-channel.c:2544 main-1:0: Started background c=
oroutine 000000000462E338<br>(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:=
18.680: ../src/spice-session.c:2231 Missing port value, not attempting unen=
crypted connection.<br>(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.680=
: ../src/spice-channel.c:2570 main-1:0: trying with TLS port<br>(remote-vie=
wer.exe:3584): GSpice-DEBUG: 15:13:18.694: ../src/spice-session.c:2244 main=
-1:0: Using TLS, port 5901<br>(remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:18.694: ../src/spice-session.c:2177 open host vdi.pishro.computer:5901<br>=
(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.694: ../src/spice-session.=
c:2099 main-1:0: connecting 00000000071DFDD0...<br>(remote-viewer.exe:3584)=
: GSpice-DEBUG: 15:13:18.757: ../src/spice-session.c:2083 main-1:0: connect=
 ready<br>(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.757: ../src/spic=
e-channel.c:2466 main-1:0: Load CA, file: C:\ca-cert.pem, data: 00000000000=
00000<br><br>(remote-viewer.exe:3584): Spice-WARNING **: 15:13:18.819: ../s=
ubprojects/spice-common/common/ssl_verify.c:444:openssl_verify: Error in ce=
rtificate chain verification: unable to get issuer certificate (num=3D2:dep=
th1:/C=3DUS/O=3DLet&#39;s Encrypt/CN=3DR3)<br><br>(remote-viewer.exe:3584):=
 GSpice-WARNING **: 15:13:18.819: main-1:0: SSL_connect: error:00000001:lib=
(0):func(0):reason(1)<br>(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.8=
19: ../src/spice-channel.c:2680 main-1:0: Coroutine exit main-1:0<br>(remot=
e-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819: ../src/spice-channel.c:2871=
 main-1:0: reset<br>(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819: .=
./src/channel-main.c:1567 agent connected: no<br>(remote-viewer.exe:3584): =
GSpice-DEBUG: 15:13:18.819: ../src/spice-channel.c:2819 main-1:0: channel r=
eset<br>(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819: ../src/spice-=
channel.c:2425 main-1:0: Delayed unref channel 000000000462E480<br>(remote-=
viewer.exe:3584): GSpice-DEBUG: 15:13:18.819: ../src/spice-session.c:2006 s=
ession: disconnecting 0<br>(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18=
.819: ../src/spice-session.c:2349 main-1:0: the session lost the main chann=
el<br>(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.835: ../src/spice-ch=
annel.c:2888 main-1:0: channel disconnect 0<br>(remote-viewer.exe:3584): GS=
pice-DEBUG: 15:13:18.835: ../src/spice-channel.c:159 main-1:0: spice_channe=
l_dispose 000000000462E480<br>(remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:18.835: ../src/spice-channel.c:2888 main-1:0: channel disconnect 12<br>(re=
mote-viewer.exe:3584): GSpice-DEBUG: 15:13:19.756: ../src/spice-session.c:2=
006 session: disconnecting 1151<br>(remote-viewer.exe:3584): GSpice-DEBUG: =
15:13:19.757: ../src/spice-session.c:288 New session (compiled from package=
 spice-gtk 0.37)<br>(remote-viewer.exe:3584): GSpice-DEBUG: 15:13:19.758: .=
./src/spice-session.c:292 Supported channels: main, display, inputs, cursor=
, playback, record, usbredir<br>(remote-viewer.exe:3584): Spice-DEBUG: 15:1=
3:19.759: ../src/usb-device-manager.c:259:spice_usb_device_manager_init: Us=
bDk driver is not installed<br>(remote-viewer.exe:3584): GSpice-DEBUG: 15:1=
3:19.760: ../src/usb-device-manager.c:485 auto-connect filter set to 0x03,-=
1,-1,-1,0|-1,-1,-1,-1,1<br></div><div><br></div><div><div><div dir=3D"ltr" =
class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"lt=
r">---<br>Armin ranjbar<br><div><br></div></div></div></div></div></div>

--000000000000bb384f05b67f4ce3--

--===============1004450721==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1004450721==--
