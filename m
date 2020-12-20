Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E262DF5E3
	for <lists+spice-devel@lfdr.de>; Sun, 20 Dec 2020 16:37:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B04CB89C1B;
	Sun, 20 Dec 2020 15:37:49 +0000 (UTC)
X-Original-To: spice-devel@freedesktop.org
Delivered-To: spice-devel@freedesktop.org
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com
 [IPv6:2607:f8b0:4864:20::631])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A52C89C1B
 for <spice-devel@freedesktop.org>; Sun, 20 Dec 2020 15:37:48 +0000 (UTC)
Received: by mail-pl1-x631.google.com with SMTP id t6so4319155plq.1
 for <spice-devel@freedesktop.org>; Sun, 20 Dec 2020 07:37:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=zoup-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RLyXQkswlkZj+2qnDwrMgU7TpijUABUEcffbgkKHYxA=;
 b=Tl6sEoyQhalga/Y8T+Sa9SZszO3m80AJ3vX+Kj5R0VlgCz7QUyMcil6NUKcyUsNLDC
 Waz9Kry4wnEr7v0+ZzxFmaRyd9yF7WycCeF4BBwSJxISXZJrrfbZp+T1X4ylP5k7D/TJ
 zr2H35jYWlZAD+EJTsLBO/UfzjGTujGWDhIZbkv7xz4W3Z8vUnNP89zpY9iEDcgD0qTx
 NbEvbZDiqChDsU0ch6bK4H6W5xhucdhbVTeFkl+h6h8sdkQTOciuKVO0Fq+Tmcut91xS
 /1FrLepfXl5Q7+PM/guwf7uaL7pg5xzdB7hN8B483PX7pNozakbhI9cWn5jXJkt/TYI+
 WWiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RLyXQkswlkZj+2qnDwrMgU7TpijUABUEcffbgkKHYxA=;
 b=GS/m9HcN0v3AEf2NeoBZPGXT9p269NlI9cIvCY8+ESINYmuLFyCiYfuQ+EJQjLIxCi
 JM64EsXZdZaxUXr5xikWMLRfGrjpP2VmTcxWpFMxJ0UuUPK08hlViJlkDTEG0KsobSPZ
 P86UO73zRc9O7M9iwCe/sU3XfHlNFlyby8YfYhkEd8zMRqeKT8QHXImrPA+Sei2MSHMn
 xayXPlkf4TTdY/PJwO815Gk2wn6T43wXHmJtsm0RXteWYbwfvBadXWyojWSriQgrTlwa
 IDYSxa2ep//yHLi0J1aRcWG/4ulqMp1Da+9LfSXsWi/N0yGkVyoBA70H5WMqW+Q0gPeG
 c6pA==
X-Gm-Message-State: AOAM530fUV/AYoUi/MxTH/rzqmw82ny2U5vOfvT+4HqozaXGEnzXYT96
 U8b1YRaKvNWDHdKNQaTZs/qHn6Q+UgNWJWFX19+1hg==
X-Google-Smtp-Source: ABdhPJz4RyFUcowUDiXYSRDb27i7LWQcwEPlJjZSpTGCdylYY831/m6pCxMvq3znnF3KMUpDTLaeNaOEGwgFiPPHzkM=
X-Received: by 2002:a17:90a:4142:: with SMTP id
 m2mr13850100pjg.156.1608478667480; 
 Sun, 20 Dec 2020 07:37:47 -0800 (PST)
MIME-Version: 1.0
References: <CAOvx4-3g+wSy6Qepf=37nUUhrhHd_hj9YJ5An3FuZLm16Sk-Dw@mail.gmail.com>
 <8707938a-e55e-22c0-7646-388ae36cc454@redhat.com>
In-Reply-To: <8707938a-e55e-22c0-7646-388ae36cc454@redhat.com>
From: Armin Ranjbar <zoup@zoup.org>
Date: Sun, 20 Dec 2020 19:07:36 +0330
Message-ID: <CAOvx4-0SrEvXb_w-vr1YL0PJTvmFM9CmWt3rGrEEOOzmVnasDg@mail.gmail.com>
To: uril@redhat.com
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
Cc: spice-devel <spice-devel@freedesktop.org>
Content-Type: multipart/mixed; boundary="===============0206475657=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0206475657==
Content-Type: multipart/alternative; boundary="0000000000009ab75005b6e71f3a"

--0000000000009ab75005b6e71f3a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi, With pleasure!

Qemu command line:
/usr/bin/qemu-system-x86_64 -name
guest=3Dtest1-DOMAIN_XLMEP2ZCTPH2NRMV,debug-threads=3Don -S -object
secret,id=3DmasterKey0,format=3Draw,file=3D/var/lib/libvirt/qemu/domain-1-t=
est1-pishro.compute/master-key.aes
-machine pc-i440fx-4.2,accel=3Dkvm,usb=3Doff,vmport=3Doff,dump-guest-core=
=3Doff
-cpu
SandyBridge-IBRS,vme=3Don,vmx=3Don,pcid=3Don,hypervisor=3Don,arat=3Don,tsc-=
adjust=3Don,umip=3Don,md-clear=3Don,stibp=3Don,arch-capabilities=3Don,ssbd=
=3Don,xsaveopt=3Don,pdpe1gb=3Don,ibpb=3Don,amd-stibp=3Don,amd-ssbd=3Don,ski=
p-l1dfl-vmentry=3Don,pschange-mc-no=3Don,hv-time,hv-relaxed,hv-vapic,hv-spi=
nlocks=3D0x1000,hv-vpindex,hv-runtime,hv-synic,hv-stimer,hv-stimer-direct,h=
v-reset,hv-vendor-id=3DDaaS,hv-crash
-m 3248 -overcommit mem-lock=3Doff -smp 2,sockets=3D1,cores=3D2,threads=3D1=
 -uuid
3c01cc16-3a72-11eb-ae67-c3a189c89e46 -no-user-config -nodefaults -chardev
socket,id=3Dcharmonitor,fd=3D31,server,nowait -mon
chardev=3Dcharmonitor,id=3Dmonitor,mode=3Dcontrol -rtc base=3Dutc,driftfix=
=3Dslew
-global kvm-pit.lost_tick_policy=3Ddelay -no-hpet -no-shutdown -global
PIIX4_PM.disable_s3=3D1 -global PIIX4_PM.disable_s4=3D1 -boot strict=3Don -=
device
pci-bridge,chassis_nr=3D1,id=3Dpci.1,bus=3Dpci.0,addr=3D0x3 -device
qemu-xhci,p2=3D15,p3=3D15,id=3Dusb,bus=3Dpci.0,addr=3D0x5 -device
ahci,id=3Dsata0,bus=3Dpci.0,addr=3D0x8 -device
virtio-serial-pci,id=3Dvirtio-serial0,bus=3Dpci.0,addr=3D0x6 -object
secret,id=3Dlibvirt-2-storage-secret0,data=3DyLtgtQTQJM5xCBZ2TPh1JkrbTTqXko=
Bo4JEqBOKQBF0=3D,keyid=3DmasterKey0,iv=3DH9oULsQg3K4UnoPu65gA/A=3D=3D,forma=
t=3Dbase64
-blockdev
{"driver":"rbd","pool":"base_disks","image":"test1-DOMAIN_XLMEP2ZCTPH2NRMV"=
,"server":[{"host":"192.168.0.126","port":"3300"}],"user":"admin","auth-cli=
ent-required":["cephx","none"],"key-secret":"libvirt-2-storage-secret0","no=
de-name":"libvirt-2-storage","auto-read-only":true,"discard":"unmap"}
-blockdev
{"node-name":"libvirt-2-format","read-only":false,"driver":"raw","file":"li=
bvirt-2-storage"}
-device ide-hd,bus=3Dsata0.0,drive=3Dlibvirt-2-format,id=3Dsata0-0-0,bootin=
dex=3D1
-blockdev
{"driver":"file","filename":"/var/lib/libvirt/images/windows.iso","node-nam=
e":"libvirt-1-storage","auto-read-only":true,"discard":"unmap"}
-blockdev
{"node-name":"libvirt-1-format","read-only":true,"driver":"raw","file":"lib=
virt-1-storage"}
-device
ide-cd,bus=3Dsata0.1,share-rw=3Don,drive=3Dlibvirt-1-format,id=3Dsata0-0-1,=
bootindex=3D2
-netdev tap,fd=3D33,id=3Dhostnet0 -device
e1000,netdev=3Dhostnet0,id=3Dnet0,mac=3D4a:df:1f:e9:c8:1e,bus=3Dpci.1,addr=
=3D0x3
-chardev pty,id=3Dcharserial0 -device
isa-serial,chardev=3Dcharserial0,id=3Dserial0 -chardev
spicevmc,id=3Dcharchannel0,name=3Dvdagent -device
virtserialport,bus=3Dvirtio-serial0.0,nr=3D1,chardev=3Dcharchannel0,id=3Dch=
annel0,name=3Dcom.redhat.spice.0
-chardev socket,id=3Dcharchannel1,fd=3D34,server,nowait -device
virtserialport,bus=3Dvirtio-serial0.0,nr=3D2,chardev=3Dcharchannel1,id=3Dch=
annel1,name=3Dorg.qemu.guest_agent.0
-chardev spiceport,id=3Dcharchannel2,name=3Dorg.spice-space.webdav.0 -devic=
e
virtserialport,bus=3Dvirtio-serial0.0,nr=3D3,chardev=3Dcharchannel2,id=3Dch=
annel2,name=3Dorg.spice-space.webdav.0
-device usb-tablet,id=3Dinput0,bus=3Dusb.0,port=3D1 -spice
port=3D5900,tls-port=3D5901,addr=3D0.0.0.0,agent-mouse=3Don,x509-dir=3D/etc=
/pki/libvirt-spice,image-compression=3Dauto_lz,jpeg-wan-compression=3Dauto,=
zlib-glz-wan-compression=3Dauto,playback-compression=3Don,streaming-video=
=3Dfilter,seamless-migration=3Don
-device
qxl-vga,id=3Dvideo0,ram_size=3D67108864,vram_size=3D67108864,vram64_size_mb=
=3D0,vgamem_mb=3D16,max_outputs=3D1,bus=3Dpci.0,addr=3D0x2
-device ich9-intel-hda,id=3Dsound0,bus=3Dpci.0,addr=3D0x4 -device
hda-duplex,id=3Dsound0-codec0,bus=3Dsound0.0,cad=3D0 -device
i6300esb,id=3Dwatchdog0,bus=3Dpci.0,addr=3D0x9 -watchdog-action reset -char=
dev
spicevmc,id=3Dcharredir0,name=3Dusbredir -device
usb-redir,chardev=3Dcharredir0,id=3Dredir0,bus=3Dusb.0,port=3D2 -chardev
spicevmc,id=3Dcharredir1,name=3Dusbredir -device
usb-redir,chardev=3Dcharredir1,id=3Dredir1,bus=3Dusb.0,port=3D3 -chardev
spicevmc,id=3Dcharredir2,name=3Dusbredir -device
usb-redir,chardev=3Dcharredir2,id=3Dredir2,bus=3Dusb.0,port=3D4 -chardev
spicevmc,id=3Dcharredir3,name=3Dusbredir -device
usb-redir,chardev=3Dcharredir3,id=3Dredir3,bus=3Dusb.0,port=3D5 -device
virtio-balloon-pci,id=3Dballoon0,bus=3Dpci.0,addr=3D0x10 -sandbox
on,obsolete=3Ddeny,elevateprivileges=3Ddeny,spawn=3Ddeny,resourcecontrol=3D=
deny
-msg timestamp=3Don


remote-viewer on linux:
remote-viewer spice+tls://DOMAIN:5901 (works)
remote-viewer --spice-ca-file=3D$path_to_ca-cert.crt spice+tls://DOMAIN:590=
1
(works)

remote-viewer on Windows:
remote-viewer spice+tls://DOMAIN:5901 (doesn't work)
remote-viewer --spice-ca-file=3D$path_to_ca-cert.crt spice+tls://DOMAIN:590=
1
(doesn't work)

debug output of both provided in the first email, also tried building
remote-viewer and spice-client libraries from MASTER for windows.

Thank you for the help!
---
Armin ranjbar



On Sun, Dec 20, 2020 at 6:50 PM Uri Lublin <uril@redhat.com> wrote:

> On 12/15/20 1:45 PM, Armin Ranjbar wrote:
> > Dear Everyone,
> >
> > As always, let me thank you first for the effort you put in Spice.
> >
> > I have a strange case here, libvirt is configured with letsencrypt
> > certificates, remote-viewer works happily on Linux, but it doesn't seem
> > to be able to get local issuer certificate on windows.
> > same error even when I try to give the address of CA file via
> > --spice-ca-file, attaching logs with spice-debug here:
>
> Hi,
>
> Can you please provide
> 1. qemu-kvm commandline -spice option
> 2. remote-viewer commandline (for both windows and linux)?
> 3. Does the Linux remote-viewer run on the same
>     machine as libvirt/qemu-kvm or does it run on a
>     different machine?
> 4. Did you copy the CA-certificate onto the windows machine ?
>     (Just verifying, I see the name is correctly ca-cert.pem)
>
> Uri.
>
> >
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.293:
> > ../src/spice-session.c:292 Supported channels: main, display, inputs,
> > cursor, playback, record, usbredir
> > (remote-viewer.exe:3584): Spice-DEBUG: 15:13:17.293:
> > ../src/usb-device-manager.c:259:spice_usb_device_manager_init: UsbDk
> > driver is not installed
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.293:
> > ../src/usb-device-manager.c:485 auto-connect filter set to
> > 0x03,-1,-1,-1,0|-1,-1,-1,-1,1
> >
> > (remote-viewer.exe:3584): GSpice-CRITICAL **: 15:13:17.293:
> > _usbdk_hider_update: assertion 'priv->usbdk_api !=3D NULL' failed
> >
> > (remote-viewer.exe:3584): GSpice-WARNING **: 15:13:17.962: password may
> > be visible in process listings
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.965:
> > ../src/spice-session.c:1814 no migration in progress
> > Spice-INFO: 15:13:17.965:
> > ../src/channel-main.c:337:spice_main_set_property:
> > SpiceMainChannel::color-depth has been deprecated. Property is ignored
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.965:
> > ../src/spice-channel.c:141 main-1:0: spice_channel_constructed
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.965:
> > ../src/spice-session.c:2309 main-1:0: new main channel, switching
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.680:
> > ../src/spice-channel.c:2707 main-1:0: Open coroutine starting
> > 000000000462E480
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.680:
> > ../src/spice-channel.c:2544 main-1:0: Started background coroutine
> > 000000000462E338
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.680:
> > ../src/spice-session.c:2231 Missing port value, not attempting
> > unencrypted connection.
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.680:
> > ../src/spice-channel.c:2570 main-1:0: trying with TLS port
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.694:
> > ../src/spice-session.c:2244 main-1:0: Using TLS, port 5901
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.694:
> > ../src/spice-session.c:2177 open host DOMAIN_REPLACED:5901
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.694:
> > ../src/spice-session.c:2099 main-1:0: connecting 00000000071DFDD0...
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.757:
> > ../src/spice-session.c:2083 main-1:0: connect ready
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.757:
> > ../src/spice-channel.c:2466 main-1:0: Load CA, file: C:\ca-cert.pem,
> > data: 0000000000000000
> >
> > (remote-viewer.exe:3584): Spice-WARNING **: 15:13:18.819:
> > ../subprojects/spice-common/common/ssl_verify.c:444:openssl_verify:
> > Error in certificate chain verification: unable to get issuer
> > certificate (num=3D2:depth1:/C=3DUS/O=3DLet's Encrypt/CN=3DR3)
> >
> > (remote-viewer.exe:3584): GSpice-WARNING **: 15:13:18.819: main-1:0:
> > SSL_connect: error:00000001:lib(0):func(0):reason(1)
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819:
> > ../src/spice-channel.c:2680 main-1:0: Coroutine exit main-1:0
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819:
> > ../src/spice-channel.c:2871 main-1:0: reset
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819:
> > ../src/channel-main.c:1567 agent connected: no
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819:
> > ../src/spice-channel.c:2819 main-1:0: channel reset
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819:
> > ../src/spice-channel.c:2425 main-1:0: Delayed unref channel
> 000000000462E480
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819:
> > ../src/spice-session.c:2006 session: disconnecting 0
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819:
> > ../src/spice-session.c:2349 main-1:0: the session lost the main channel
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.835:
> > ../src/spice-channel.c:2888 main-1:0: channel disconnect 0
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.835:
> > ../src/spice-channel.c:159 main-1:0: spice_channel_dispose
> 000000000462E480
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.835:
> > ../src/spice-channel.c:2888 main-1:0: channel disconnect 12
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:19.756:
> > ../src/spice-session.c:2006 session: disconnecting 1151
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:19.757:
> > ../src/spice-session.c:288 New session (compiled from package spice-gtk
> > 0.37)
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:19.758:
> > ../src/spice-session.c:292 Supported channels: main, display, inputs,
> > cursor, playback, record, usbredir
> > (remote-viewer.exe:3584): Spice-DEBUG: 15:13:19.759:
> > ../src/usb-device-manager.c:259:spice_usb_device_manager_init: UsbDk
> > driver is not installed
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:19.760:
> > ../src/usb-device-manager.c:485 auto-connect filter set to
> > 0x03,-1,-1,-1,0|-1,-1,-1,-1,1
> >
> >
> >
> > also output when giving the --spica-ca-file, one thing i found strange
> > is the fact that Load CA file, shows zeroes as data, even when provided
> > file doesn't exist :
> >
> > (remote-viewer.exe:3584): GSpice-WARNING **: 15:13:17.962: password may
> > be visible in process listings
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.965:
> > ../src/spice-session.c:1814 no migration in progress
> > Spice-INFO: 15:13:17.965:
> > ../src/channel-main.c:337:spice_main_set_property:
> > SpiceMainChannel::color-depth has been deprecated. Property is ignored
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.965:
> > ../src/spice-channel.c:141 main-1:0: spice_channel_constructed
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.965:
> > ../src/spice-session.c:2309 main-1:0: new main channel, switching
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.680:
> > ../src/spice-channel.c:2707 main-1:0: Open coroutine starting
> > 000000000462E480
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.680:
> > ../src/spice-channel.c:2544 main-1:0: Started background coroutine
> > 000000000462E338
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.680:
> > ../src/spice-session.c:2231 Missing port value, not attempting
> > unencrypted connection.
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.680:
> > ../src/spice-channel.c:2570 main-1:0: trying with TLS port
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.694:
> > ../src/spice-session.c:2244 main-1:0: Using TLS, port 5901
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.694:
> > ../src/spice-session.c:2177 open host vdi.pishro.computer:5901
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.694:
> > ../src/spice-session.c:2099 main-1:0: connecting 00000000071DFDD0...
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.757:
> > ../src/spice-session.c:2083 main-1:0: connect ready
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.757:
> > ../src/spice-channel.c:2466 main-1:0: Load CA, file: C:\ca-cert.pem,
> > data: 0000000000000000
> >
> > (remote-viewer.exe:3584): Spice-WARNING **: 15:13:18.819:
> > ../subprojects/spice-common/common/ssl_verify.c:444:openssl_verify:
> > Error in certificate chain verification: unable to get issuer
> > certificate (num=3D2:depth1:/C=3DUS/O=3DLet's Encrypt/CN=3DR3)
> >
> > (remote-viewer.exe:3584): GSpice-WARNING **: 15:13:18.819: main-1:0:
> > SSL_connect: error:00000001:lib(0):func(0):reason(1)
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819:
> > ../src/spice-channel.c:2680 main-1:0: Coroutine exit main-1:0
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819:
> > ../src/spice-channel.c:2871 main-1:0: reset
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819:
> > ../src/channel-main.c:1567 agent connected: no
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819:
> > ../src/spice-channel.c:2819 main-1:0: channel reset
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819:
> > ../src/spice-channel.c:2425 main-1:0: Delayed unref channel
> 000000000462E480
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819:
> > ../src/spice-session.c:2006 session: disconnecting 0
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819:
> > ../src/spice-session.c:2349 main-1:0: the session lost the main channel
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.835:
> > ../src/spice-channel.c:2888 main-1:0: channel disconnect 0
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.835:
> > ../src/spice-channel.c:159 main-1:0: spice_channel_dispose
> 000000000462E480
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.835:
> > ../src/spice-channel.c:2888 main-1:0: channel disconnect 12
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:19.756:
> > ../src/spice-session.c:2006 session: disconnecting 1151
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:19.757:
> > ../src/spice-session.c:288 New session (compiled from package spice-gtk
> > 0.37)
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:19.758:
> > ../src/spice-session.c:292 Supported channels: main, display, inputs,
> > cursor, playback, record, usbredir
> > (remote-viewer.exe:3584): Spice-DEBUG: 15:13:19.759:
> > ../src/usb-device-manager.c:259:spice_usb_device_manager_init: UsbDk
> > driver is not installed
> > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:19.760:
> > ../src/usb-device-manager.c:485 auto-connect filter set to
> > 0x03,-1,-1,-1,0|-1,-1,-1,-1,1
> >
>
>

--0000000000009ab75005b6e71f3a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi, With pleasure!<div><br></div><div>Qemu command line:</=
div><div>/usr/bin/qemu-system-x86_64 -name guest=3Dtest1-DOMAIN_XLMEP2ZCTPH=
2NRMV,debug-threads=3Don -S -object secret,id=3DmasterKey0,format=3Draw,fil=
e=3D/var/lib/libvirt/qemu/domain-1-test1-pishro.compute/master-key.aes -mac=
hine pc-i440fx-4.2,accel=3Dkvm,usb=3Doff,vmport=3Doff,dump-guest-core=3Doff=
 -cpu SandyBridge-IBRS,vme=3Don,vmx=3Don,pcid=3Don,hypervisor=3Don,arat=3Do=
n,tsc-adjust=3Don,umip=3Don,md-clear=3Don,stibp=3Don,arch-capabilities=3Don=
,ssbd=3Don,xsaveopt=3Don,pdpe1gb=3Don,ibpb=3Don,amd-stibp=3Don,amd-ssbd=3Do=
n,skip-l1dfl-vmentry=3Don,pschange-mc-no=3Don,hv-time,hv-relaxed,hv-vapic,h=
v-spinlocks=3D0x1000,hv-vpindex,hv-runtime,hv-synic,hv-stimer,hv-stimer-dir=
ect,hv-reset,hv-vendor-id=3DDaaS,hv-crash -m 3248 -overcommit mem-lock=3Dof=
f -smp 2,sockets=3D1,cores=3D2,threads=3D1 -uuid 3c01cc16-3a72-11eb-ae67-c3=
a189c89e46 -no-user-config -nodefaults -chardev socket,id=3Dcharmonitor,fd=
=3D31,server,nowait -mon chardev=3Dcharmonitor,id=3Dmonitor,mode=3Dcontrol =
-rtc base=3Dutc,driftfix=3Dslew -global kvm-pit.lost_tick_policy=3Ddelay -n=
o-hpet -no-shutdown -global PIIX4_PM.disable_s3=3D1 -global PIIX4_PM.disabl=
e_s4=3D1 -boot strict=3Don -device pci-bridge,chassis_nr=3D1,id=3Dpci.1,bus=
=3Dpci.0,addr=3D0x3 -device qemu-xhci,p2=3D15,p3=3D15,id=3Dusb,bus=3Dpci.0,=
addr=3D0x5 -device ahci,id=3Dsata0,bus=3Dpci.0,addr=3D0x8 -device virtio-se=
rial-pci,id=3Dvirtio-serial0,bus=3Dpci.0,addr=3D0x6 -object secret,id=3Dlib=
virt-2-storage-secret0,data=3DyLtgtQTQJM5xCBZ2TPh1JkrbTTqXkoBo4JEqBOKQBF0=
=3D,keyid=3DmasterKey0,iv=3DH9oULsQg3K4UnoPu65gA/A=3D=3D,format=3Dbase64 -b=
lockdev {&quot;driver&quot;:&quot;rbd&quot;,&quot;pool&quot;:&quot;base_dis=
ks&quot;,&quot;image&quot;:&quot;test1-DOMAIN_XLMEP2ZCTPH2NRMV&quot;,&quot;=
server&quot;:[{&quot;host&quot;:&quot;192.168.0.126&quot;,&quot;port&quot;:=
&quot;3300&quot;}],&quot;user&quot;:&quot;admin&quot;,&quot;auth-client-req=
uired&quot;:[&quot;cephx&quot;,&quot;none&quot;],&quot;key-secret&quot;:&qu=
ot;libvirt-2-storage-secret0&quot;,&quot;node-name&quot;:&quot;libvirt-2-st=
orage&quot;,&quot;auto-read-only&quot;:true,&quot;discard&quot;:&quot;unmap=
&quot;} -blockdev {&quot;node-name&quot;:&quot;libvirt-2-format&quot;,&quot=
;read-only&quot;:false,&quot;driver&quot;:&quot;raw&quot;,&quot;file&quot;:=
&quot;libvirt-2-storage&quot;} -device ide-hd,bus=3Dsata0.0,drive=3Dlibvirt=
-2-format,id=3Dsata0-0-0,bootindex=3D1 -blockdev {&quot;driver&quot;:&quot;=
file&quot;,&quot;filename&quot;:&quot;/var/lib/libvirt/images/windows.iso&q=
uot;,&quot;node-name&quot;:&quot;libvirt-1-storage&quot;,&quot;auto-read-on=
ly&quot;:true,&quot;discard&quot;:&quot;unmap&quot;} -blockdev {&quot;node-=
name&quot;:&quot;libvirt-1-format&quot;,&quot;read-only&quot;:true,&quot;dr=
iver&quot;:&quot;raw&quot;,&quot;file&quot;:&quot;libvirt-1-storage&quot;} =
-device ide-cd,bus=3Dsata0.1,share-rw=3Don,drive=3Dlibvirt-1-format,id=3Dsa=
ta0-0-1,bootindex=3D2 -netdev tap,fd=3D33,id=3Dhostnet0 -device e1000,netde=
v=3Dhostnet0,id=3Dnet0,mac=3D4a:df:1f:e9:c8:1e,bus=3Dpci.1,addr=3D0x3 -char=
dev pty,id=3Dcharserial0 -device isa-serial,chardev=3Dcharserial0,id=3Dseri=
al0 -chardev spicevmc,id=3Dcharchannel0,name=3Dvdagent -device virtserialpo=
rt,bus=3Dvirtio-serial0.0,nr=3D1,chardev=3Dcharchannel0,id=3Dchannel0,name=
=3Dcom.redhat.spice.0 -chardev socket,id=3Dcharchannel1,fd=3D34,server,nowa=
it -device virtserialport,bus=3Dvirtio-serial0.0,nr=3D2,chardev=3Dcharchann=
el1,id=3Dchannel1,name=3Dorg.qemu.guest_agent.0 -chardev spiceport,id=3Dcha=
rchannel2,name=3Dorg.spice-space.webdav.0 -device virtserialport,bus=3Dvirt=
io-serial0.0,nr=3D3,chardev=3Dcharchannel2,id=3Dchannel2,name=3Dorg.spice-s=
pace.webdav.0 -device usb-tablet,id=3Dinput0,bus=3Dusb.0,port=3D1 -spice po=
rt=3D5900,tls-port=3D5901,addr=3D0.0.0.0,agent-mouse=3Don,x509-dir=3D/etc/p=
ki/libvirt-spice,image-compression=3Dauto_lz,jpeg-wan-compression=3Dauto,zl=
ib-glz-wan-compression=3Dauto,playback-compression=3Don,streaming-video=3Df=
ilter,seamless-migration=3Don -device qxl-vga,id=3Dvideo0,ram_size=3D671088=
64,vram_size=3D67108864,vram64_size_mb=3D0,vgamem_mb=3D16,max_outputs=3D1,b=
us=3Dpci.0,addr=3D0x2 -device ich9-intel-hda,id=3Dsound0,bus=3Dpci.0,addr=
=3D0x4 -device hda-duplex,id=3Dsound0-codec0,bus=3Dsound0.0,cad=3D0 -device=
 i6300esb,id=3Dwatchdog0,bus=3Dpci.0,addr=3D0x9 -watchdog-action reset -cha=
rdev spicevmc,id=3Dcharredir0,name=3Dusbredir -device usb-redir,chardev=3Dc=
harredir0,id=3Dredir0,bus=3Dusb.0,port=3D2 -chardev spicevmc,id=3Dcharredir=
1,name=3Dusbredir -device usb-redir,chardev=3Dcharredir1,id=3Dredir1,bus=3D=
usb.0,port=3D3 -chardev spicevmc,id=3Dcharredir2,name=3Dusbredir -device us=
b-redir,chardev=3Dcharredir2,id=3Dredir2,bus=3Dusb.0,port=3D4 -chardev spic=
evmc,id=3Dcharredir3,name=3Dusbredir -device usb-redir,chardev=3Dcharredir3=
,id=3Dredir3,bus=3Dusb.0,port=3D5 -device virtio-balloon-pci,id=3Dballoon0,=
bus=3Dpci.0,addr=3D0x10 -sandbox on,obsolete=3Ddeny,elevateprivileges=3Dden=
y,spawn=3Ddeny,resourcecontrol=3Ddeny -msg timestamp=3Don</div><div><br></d=
iv><div><br></div><div>remote-viewer on linux:</div><div>remote-viewer spic=
e+tls://DOMAIN:5901 (works)</div><div>remote-viewer --spice-ca-file=3D$path=
_to_ca-cert.crt spice+tls://DOMAIN:5901 (works)<br></div><div><br></div><di=
v>remote-viewer on Windows:</div><div>remote-viewer spice+tls://DOMAIN:5901=
 (doesn&#39;t work)</div><div>remote-viewer --spice-ca-file=3D$path_to_ca-c=
ert.crt spice+tls://DOMAIN:5901 (doesn&#39;t work)<br></div><div><br></div>=
<div>debug output of both provided in the first email, also tried building =
remote-viewer and spice-client libraries from MASTER for windows.</div><div=
><br><div>Thank you for the help!<br clear=3D"all"><div><div dir=3D"ltr" cl=
ass=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"=
>---<br>Armin ranjbar<br><div><br></div></div></div></div><br></div></div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Sun, Dec 20, 2020 at 6:50 PM Uri Lublin &lt;<a href=3D"mailto:uril@redhat=
.com">uril@redhat.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex">On 12/15/20 1:45 PM, Armin Ranjbar wrote:<br>
&gt; Dear Everyone,<br>
&gt; <br>
&gt; As always, let me thank you first for the effort you put in Spice.<br>
&gt; <br>
&gt; I have a strange case here, libvirt is configured with letsencrypt <br=
>
&gt; certificates, remote-viewer works happily on Linux, but it doesn&#39;t=
 seem <br>
&gt; to be able to get local issuer certificate on windows.<br>
&gt; same error even when I try to give the address of CA file via <br>
&gt; --spice-ca-file, attaching logs with spice-debug here:<br>
<br>
Hi,<br>
<br>
Can you please provide<br>
1. qemu-kvm commandline -spice option<br>
2. remote-viewer commandline (for both windows and linux)?<br>
3. Does the Linux remote-viewer run on the same<br>
=C2=A0 =C2=A0 machine as libvirt/qemu-kvm or does it run on a<br>
=C2=A0 =C2=A0 different machine?<br>
4. Did you copy the CA-certificate onto the windows machine ?<br>
=C2=A0 =C2=A0 (Just verifying, I see the name is correctly ca-cert.pem)<br>
<br>
Uri.<br>
<br>
&gt; <br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.293: <br>
&gt; ../src/spice-session.c:292 Supported channels: main, display, inputs, =
<br>
&gt; cursor, playback, record, usbredir<br>
&gt; (remote-viewer.exe:3584): Spice-DEBUG: 15:13:17.293: <br>
&gt; ../src/usb-device-manager.c:259:spice_usb_device_manager_init: UsbDk <=
br>
&gt; driver is not installed<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.293: <br>
&gt; ../src/usb-device-manager.c:485 auto-connect filter set to <br>
&gt; 0x03,-1,-1,-1,0|-1,-1,-1,-1,1<br>
&gt; <br>
&gt; (remote-viewer.exe:3584): GSpice-CRITICAL **: 15:13:17.293: <br>
&gt; _usbdk_hider_update: assertion &#39;priv-&gt;usbdk_api !=3D NULL&#39; =
failed<br>
&gt; <br>
&gt; (remote-viewer.exe:3584): GSpice-WARNING **: 15:13:17.962: password ma=
y <br>
&gt; be visible in process listings<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.965: <br>
&gt; ../src/spice-session.c:1814 no migration in progress<br>
&gt; Spice-INFO: 15:13:17.965: <br>
&gt; ../src/channel-main.c:337:spice_main_set_property: <br>
&gt; SpiceMainChannel::color-depth has been deprecated. Property is ignored=
<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.965: <br>
&gt; ../src/spice-channel.c:141 main-1:0: spice_channel_constructed<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.965: <br>
&gt; ../src/spice-session.c:2309 main-1:0: new main channel, switching<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.680: <br>
&gt; ../src/spice-channel.c:2707 main-1:0: Open coroutine starting <br>
&gt; 000000000462E480<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.680: <br>
&gt; ../src/spice-channel.c:2544 main-1:0: Started background coroutine <br=
>
&gt; 000000000462E338<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.680: <br>
&gt; ../src/spice-session.c:2231 Missing port value, not attempting <br>
&gt; unencrypted connection.<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.680: <br>
&gt; ../src/spice-channel.c:2570 main-1:0: trying with TLS port<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.694: <br>
&gt; ../src/spice-session.c:2244 main-1:0: Using TLS, port 5901<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.694: <br>
&gt; ../src/spice-session.c:2177 open host DOMAIN_REPLACED:5901<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.694: <br>
&gt; ../src/spice-session.c:2099 main-1:0: connecting 00000000071DFDD0...<b=
r>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.757: <br>
&gt; ../src/spice-session.c:2083 main-1:0: connect ready<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.757: <br>
&gt; ../src/spice-channel.c:2466 main-1:0: Load CA, file: C:\ca-cert.pem, <=
br>
&gt; data: 0000000000000000<br>
&gt; <br>
&gt; (remote-viewer.exe:3584): Spice-WARNING **: 15:13:18.819: <br>
&gt; ../subprojects/spice-common/common/ssl_verify.c:444:openssl_verify: <b=
r>
&gt; Error in certificate chain verification: unable to get issuer <br>
&gt; certificate (num=3D2:depth1:/C=3DUS/O=3DLet&#39;s Encrypt/CN=3DR3)<br>
&gt; <br>
&gt; (remote-viewer.exe:3584): GSpice-WARNING **: 15:13:18.819: main-1:0: <=
br>
&gt; SSL_connect: error:00000001:lib(0):func(0):reason(1)<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819: <br>
&gt; ../src/spice-channel.c:2680 main-1:0: Coroutine exit main-1:0<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819: <br>
&gt; ../src/spice-channel.c:2871 main-1:0: reset<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819: <br>
&gt; ../src/channel-main.c:1567 agent connected: no<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819: <br>
&gt; ../src/spice-channel.c:2819 main-1:0: channel reset<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819: <br>
&gt; ../src/spice-channel.c:2425 main-1:0: Delayed unref channel 0000000004=
62E480<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819: <br>
&gt; ../src/spice-session.c:2006 session: disconnecting 0<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819: <br>
&gt; ../src/spice-session.c:2349 main-1:0: the session lost the main channe=
l<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.835: <br>
&gt; ../src/spice-channel.c:2888 main-1:0: channel disconnect 0<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.835: <br>
&gt; ../src/spice-channel.c:159 main-1:0: spice_channel_dispose 00000000046=
2E480<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.835: <br>
&gt; ../src/spice-channel.c:2888 main-1:0: channel disconnect 12<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:19.756: <br>
&gt; ../src/spice-session.c:2006 session: disconnecting 1151<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:19.757: <br>
&gt; ../src/spice-session.c:288 New session (compiled from package spice-gt=
k <br>
&gt; 0.37)<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:19.758: <br>
&gt; ../src/spice-session.c:292 Supported channels: main, display, inputs, =
<br>
&gt; cursor, playback, record, usbredir<br>
&gt; (remote-viewer.exe:3584): Spice-DEBUG: 15:13:19.759: <br>
&gt; ../src/usb-device-manager.c:259:spice_usb_device_manager_init: UsbDk <=
br>
&gt; driver is not installed<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:19.760: <br>
&gt; ../src/usb-device-manager.c:485 auto-connect filter set to <br>
&gt; 0x03,-1,-1,-1,0|-1,-1,-1,-1,1<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; also output when giving the --spica-ca-file, one thing i found strange=
 <br>
&gt; is the fact that Load CA file, shows zeroes as data, even when provide=
d <br>
&gt; file doesn&#39;t exist :<br>
&gt; <br>
&gt; (remote-viewer.exe:3584): GSpice-WARNING **: 15:13:17.962: password ma=
y <br>
&gt; be visible in process listings<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.965: <br>
&gt; ../src/spice-session.c:1814 no migration in progress<br>
&gt; Spice-INFO: 15:13:17.965: <br>
&gt; ../src/channel-main.c:337:spice_main_set_property: <br>
&gt; SpiceMainChannel::color-depth has been deprecated. Property is ignored=
<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.965: <br>
&gt; ../src/spice-channel.c:141 main-1:0: spice_channel_constructed<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.965: <br>
&gt; ../src/spice-session.c:2309 main-1:0: new main channel, switching<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.680: <br>
&gt; ../src/spice-channel.c:2707 main-1:0: Open coroutine starting <br>
&gt; 000000000462E480<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.680: <br>
&gt; ../src/spice-channel.c:2544 main-1:0: Started background coroutine <br=
>
&gt; 000000000462E338<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.680: <br>
&gt; ../src/spice-session.c:2231 Missing port value, not attempting <br>
&gt; unencrypted connection.<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.680: <br>
&gt; ../src/spice-channel.c:2570 main-1:0: trying with TLS port<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.694: <br>
&gt; ../src/spice-session.c:2244 main-1:0: Using TLS, port 5901<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.694: <br>
&gt; ../src/spice-session.c:2177 open host vdi.pishro.computer:5901<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.694: <br>
&gt; ../src/spice-session.c:2099 main-1:0: connecting 00000000071DFDD0...<b=
r>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.757: <br>
&gt; ../src/spice-session.c:2083 main-1:0: connect ready<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.757: <br>
&gt; ../src/spice-channel.c:2466 main-1:0: Load CA, file: C:\ca-cert.pem, <=
br>
&gt; data: 0000000000000000<br>
&gt; <br>
&gt; (remote-viewer.exe:3584): Spice-WARNING **: 15:13:18.819: <br>
&gt; ../subprojects/spice-common/common/ssl_verify.c:444:openssl_verify: <b=
r>
&gt; Error in certificate chain verification: unable to get issuer <br>
&gt; certificate (num=3D2:depth1:/C=3DUS/O=3DLet&#39;s Encrypt/CN=3DR3)<br>
&gt; <br>
&gt; (remote-viewer.exe:3584): GSpice-WARNING **: 15:13:18.819: main-1:0: <=
br>
&gt; SSL_connect: error:00000001:lib(0):func(0):reason(1)<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819: <br>
&gt; ../src/spice-channel.c:2680 main-1:0: Coroutine exit main-1:0<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819: <br>
&gt; ../src/spice-channel.c:2871 main-1:0: reset<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819: <br>
&gt; ../src/channel-main.c:1567 agent connected: no<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819: <br>
&gt; ../src/spice-channel.c:2819 main-1:0: channel reset<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819: <br>
&gt; ../src/spice-channel.c:2425 main-1:0: Delayed unref channel 0000000004=
62E480<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819: <br>
&gt; ../src/spice-session.c:2006 session: disconnecting 0<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819: <br>
&gt; ../src/spice-session.c:2349 main-1:0: the session lost the main channe=
l<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.835: <br>
&gt; ../src/spice-channel.c:2888 main-1:0: channel disconnect 0<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.835: <br>
&gt; ../src/spice-channel.c:159 main-1:0: spice_channel_dispose 00000000046=
2E480<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.835: <br>
&gt; ../src/spice-channel.c:2888 main-1:0: channel disconnect 12<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:19.756: <br>
&gt; ../src/spice-session.c:2006 session: disconnecting 1151<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:19.757: <br>
&gt; ../src/spice-session.c:288 New session (compiled from package spice-gt=
k <br>
&gt; 0.37)<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:19.758: <br>
&gt; ../src/spice-session.c:292 Supported channels: main, display, inputs, =
<br>
&gt; cursor, playback, record, usbredir<br>
&gt; (remote-viewer.exe:3584): Spice-DEBUG: 15:13:19.759: <br>
&gt; ../src/usb-device-manager.c:259:spice_usb_device_manager_init: UsbDk <=
br>
&gt; driver is not installed<br>
&gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:19.760: <br>
&gt; ../src/usb-device-manager.c:485 auto-connect filter set to <br>
&gt; 0x03,-1,-1,-1,0|-1,-1,-1,-1,1<br>
&gt; <br>
<br>
</blockquote></div>

--0000000000009ab75005b6e71f3a--

--===============0206475657==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0206475657==--
