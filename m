Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC5122E03AE
	for <lists+spice-devel@lfdr.de>; Tue, 22 Dec 2020 02:13:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EC5E6E051;
	Tue, 22 Dec 2020 01:13:22 +0000 (UTC)
X-Original-To: spice-devel@freedesktop.org
Delivered-To: spice-devel@freedesktop.org
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com
 [IPv6:2607:f8b0:4864:20::432])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AB7C6E051
 for <spice-devel@freedesktop.org>; Tue, 22 Dec 2020 01:13:21 +0000 (UTC)
Received: by mail-pf1-x432.google.com with SMTP id h186so7511977pfe.0
 for <spice-devel@freedesktop.org>; Mon, 21 Dec 2020 17:13:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=zoup-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ARm4qmP3m/b27YI0jvvu633c0VVACszZOEC0qaVM6vU=;
 b=bTjCCy7EuRZ1btp7MO7i3Bpnq/4pCkxSsFXZrrTlsZHuLK/XQ61AUIcDeIFS0pcwnj
 oM2+7ZZAouDcDIUJV8Gr0uC6NJbkjPFdSpwVcH5oYOFjCZQ8fYNUFe4LOfD4AdXDmbMv
 zcH92PqjNPzTO4tMNaWlR+1gLbYH/ZhT4EncCiCszyQjssM8Bei+xw3SpxNwWNeHyHk+
 tTDt//GDp1DkIujGh6b7eFaLm9mvRFvuGQnQNpc5Ts4a2q1E5iSTxS6R1IvM0/6u7JS4
 I6BIH3p28aR4ijACyEpXZNc5pr0l/KY1ZNQxNPqNQF7khTBPz1qrRSSK+ZCBjWY7MTc+
 /17Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ARm4qmP3m/b27YI0jvvu633c0VVACszZOEC0qaVM6vU=;
 b=riMOXOo7Zoqb71lWZ30SHaJ+lGd60jsYYe3NIh8US1kJgpv6lSpT61th7qoHXLmXeU
 BY52xJ4aD9XwSUSIy3/9rBv6xJQ9Q4OBgj/tYCHvKY0X9fjBxlROFYI5UHpoGvtKouQd
 MzphpYmBbljdYPWetsxouElIEzkX+JfaOJHykwxfJsW0Y43pmkjIacpccAz9ZmF8Dx4v
 eg3ZtjiY9WR7XNRY69tnH8hhTww2N25WFAOpVKa8KAqYTqS6rgRYyuFmEhzPa7uyqpjG
 3PRv5CN6mAC7VIdC4K3dEz3NRKeq49XzlKnisEJm26Sm2vaVDz4buRhLJhaibBj4Sl0C
 nICg==
X-Gm-Message-State: AOAM533eKsA/+SkvixjZHG6AKUppk1lDARuAbf2MaMph4pa8sbz8hbph
 OLJ3t4aordNgVhtMkxoMBazJ9yKdp6Qt9PB4PXPm+Q==
X-Google-Smtp-Source: ABdhPJw44OVp/iCKNaDa6NYhn5OM33jWzkfl8GR1tqOc8b33fEqnsip3UZWCH8TIItC4s7AEaEc73bKAn0yGjI2Ed+Q=
X-Received: by 2002:a65:434c:: with SMTP id k12mr16109198pgq.373.1608599600616; 
 Mon, 21 Dec 2020 17:13:20 -0800 (PST)
MIME-Version: 1.0
References: <CAOvx4-3g+wSy6Qepf=37nUUhrhHd_hj9YJ5An3FuZLm16Sk-Dw@mail.gmail.com>
 <8707938a-e55e-22c0-7646-388ae36cc454@redhat.com>
 <CAOvx4-0SrEvXb_w-vr1YL0PJTvmFM9CmWt3rGrEEOOzmVnasDg@mail.gmail.com>
 <535c3878-859b-1548-b31a-0d40ba137359@redhat.com>
In-Reply-To: <535c3878-859b-1548-b31a-0d40ba137359@redhat.com>
From: Armin Ranjbar <zoup@zoup.org>
Date: Tue, 22 Dec 2020 04:43:08 +0330
Message-ID: <CAOvx4-2QyhOQq0-YzwmU5O-4qYNs7n6BFBCV1O6Fd+2bSK+opg@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============2015761058=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============2015761058==
Content-Type: multipart/alternative; boundary="000000000000c7ee7705b7034706"

--000000000000c7ee7705b7034706
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Uri,

Thanks for the reply!
No, remote-viewer is not running on the same server (neither windows nor
Linux tests),

haven't tried spice-host-subject, but will certainly give it a try, but
question is, as what I'm seeking to do is to create a general package (that
is usable across multiple installations with different certs, domains), is
it really necessary to have ca-cert or host-subject available on windows? I
assume it should be possible to get them from the running OS itself...

---
Armin ranjbar



On Tue, Dec 22, 2020 at 3:54 AM Uri Lublin <uril@redhat.com> wrote:

> On 12/20/20 5:37 PM, Armin Ranjbar wrote:
> > Hi, With pleasure!
> >
> > Qemu command line:
> > /usr/bin/qemu-system-x86_64 -name
> > guest=3Dtest1-DOMAIN_XLMEP2ZCTPH2NRMV,debug-threads=3Don -S -object
> >
> secret,id=3DmasterKey0,format=3Draw,file=3D/var/lib/libvirt/qemu/domain-1=
-test1-pishro.compute/master-key.aes
>
> > -machine pc-i440fx-4.2,accel=3Dkvm,usb=3Doff,vmport=3Doff,dump-guest-co=
re=3Doff
> > -cpu
> >
> SandyBridge-IBRS,vme=3Don,vmx=3Don,pcid=3Don,hypervisor=3Don,arat=3Don,ts=
c-adjust=3Don,umip=3Don,md-clear=3Don,stibp=3Don,arch-capabilities=3Don,ssb=
d=3Don,xsaveopt=3Don,pdpe1gb=3Don,ibpb=3Don,amd-stibp=3Don,amd-ssbd=3Don,sk=
ip-l1dfl-vmentry=3Don,pschange-mc-no=3Don,hv-time,hv-relaxed,hv-vapic,hv-sp=
inlocks=3D0x1000,hv-vpindex,hv-runtime,hv-synic,hv-stimer,hv-stimer-direct,=
hv-reset,hv-vendor-id=3DDaaS,hv-crash
>
> > -m 3248 -overcommit mem-lock=3Doff -smp 2,sockets=3D1,cores=3D2,threads=
=3D1
> > -uuid 3c01cc16-3a72-11eb-ae67-c3a189c89e46 -no-user-config -nodefaults
> > -chardev socket,id=3Dcharmonitor,fd=3D31,server,nowait -mon
> > chardev=3Dcharmonitor,id=3Dmonitor,mode=3Dcontrol -rtc base=3Dutc,drift=
fix=3Dslew
> > -global kvm-pit.lost_tick_policy=3Ddelay -no-hpet -no-shutdown -global
> > PIIX4_PM.disable_s3=3D1 -global PIIX4_PM.disable_s4=3D1 -boot strict=3D=
on
> > -device pci-bridge,chassis_nr=3D1,id=3Dpci.1,bus=3Dpci.0,addr=3D0x3 -de=
vice
> > qemu-xhci,p2=3D15,p3=3D15,id=3Dusb,bus=3Dpci.0,addr=3D0x5 -device
> > ahci,id=3Dsata0,bus=3Dpci.0,addr=3D0x8 -device
> > virtio-serial-pci,id=3Dvirtio-serial0,bus=3Dpci.0,addr=3D0x6 -object
> >
> secret,id=3Dlibvirt-2-storage-secret0,data=3DyLtgtQTQJM5xCBZ2TPh1JkrbTTqX=
koBo4JEqBOKQBF0=3D,keyid=3DmasterKey0,iv=3DH9oULsQg3K4UnoPu65gA/A=3D=3D,for=
mat=3Dbase64
>
> > -blockdev
> >
> {"driver":"rbd","pool":"base_disks","image":"test1-DOMAIN_XLMEP2ZCTPH2NRM=
V","server":[{"host":"192.168.0.126","port":"3300"}],"user":"admin","auth-c=
lient-required":["cephx","none"],"key-secret":"libvirt-2-storage-secret0","=
node-name":"libvirt-2-storage","auto-read-only":true,"discard":"unmap"}
>
> > -blockdev
> >
> {"node-name":"libvirt-2-format","read-only":false,"driver":"raw","file":"=
libvirt-2-storage"}
>
> > -device
> > ide-hd,bus=3Dsata0.0,drive=3Dlibvirt-2-format,id=3Dsata0-0-0,bootindex=
=3D1
> > -blockdev
> >
> {"driver":"file","filename":"/var/lib/libvirt/images/windows.iso","node-n=
ame":"libvirt-1-storage","auto-read-only":true,"discard":"unmap"}
>
> > -blockdev
> >
> {"node-name":"libvirt-1-format","read-only":true,"driver":"raw","file":"l=
ibvirt-1-storage"}
>
> > -device
> >
> ide-cd,bus=3Dsata0.1,share-rw=3Don,drive=3Dlibvirt-1-format,id=3Dsata0-0-=
1,bootindex=3D2
>
> > -netdev tap,fd=3D33,id=3Dhostnet0 -device
> > e1000,netdev=3Dhostnet0,id=3Dnet0,mac=3D4a:df:1f:e9:c8:1e,bus=3Dpci.1,a=
ddr=3D0x3
> > -chardev pty,id=3Dcharserial0 -device
> > isa-serial,chardev=3Dcharserial0,id=3Dserial0 -chardev
> > spicevmc,id=3Dcharchannel0,name=3Dvdagent -device
> >
> virtserialport,bus=3Dvirtio-serial0.0,nr=3D1,chardev=3Dcharchannel0,id=3D=
channel0,name=3Dcom.redhat.spice.0
>
> > -chardev socket,id=3Dcharchannel1,fd=3D34,server,nowait -device
> >
> virtserialport,bus=3Dvirtio-serial0.0,nr=3D2,chardev=3Dcharchannel1,id=3D=
channel1,name=3Dorg.qemu.guest_agent.0
>
> > -chardev spiceport,id=3Dcharchannel2,name=3Dorg.spice-space.webdav.0 -d=
evice
> >
> virtserialport,bus=3Dvirtio-serial0.0,nr=3D3,chardev=3Dcharchannel2,id=3D=
channel2,name=3Dorg.spice-space.webdav.0
>
> > -device usb-tablet,id=3Dinput0,bus=3Dusb.0,port=3D1 -spice
> >
> port=3D5900,tls-port=3D5901,addr=3D0.0.0.0,agent-mouse=3Don,x509-dir=3D/e=
tc/pki/libvirt-spice,image-compression=3Dauto_lz,jpeg-wan-compression=3Daut=
o,zlib-glz-wan-compression=3Dauto,playback-compression=3Don,streaming-video=
=3Dfilter,seamless-migration=3Don
>
> > -device
> >
> qxl-vga,id=3Dvideo0,ram_size=3D67108864,vram_size=3D67108864,vram64_size_=
mb=3D0,vgamem_mb=3D16,max_outputs=3D1,bus=3Dpci.0,addr=3D0x2
>
> > -device ich9-intel-hda,id=3Dsound0,bus=3Dpci.0,addr=3D0x4 -device
> > hda-duplex,id=3Dsound0-codec0,bus=3Dsound0.0,cad=3D0 -device
> > i6300esb,id=3Dwatchdog0,bus=3Dpci.0,addr=3D0x9 -watchdog-action reset -=
chardev
> > spicevmc,id=3Dcharredir0,name=3Dusbredir -device
> > usb-redir,chardev=3Dcharredir0,id=3Dredir0,bus=3Dusb.0,port=3D2 -charde=
v
> > spicevmc,id=3Dcharredir1,name=3Dusbredir -device
> > usb-redir,chardev=3Dcharredir1,id=3Dredir1,bus=3Dusb.0,port=3D3 -charde=
v
> > spicevmc,id=3Dcharredir2,name=3Dusbredir -device
> > usb-redir,chardev=3Dcharredir2,id=3Dredir2,bus=3Dusb.0,port=3D4 -charde=
v
> > spicevmc,id=3Dcharredir3,name=3Dusbredir -device
> > usb-redir,chardev=3Dcharredir3,id=3Dredir3,bus=3Dusb.0,port=3D5 -device
> > virtio-balloon-pci,id=3Dballoon0,bus=3Dpci.0,addr=3D0x10 -sandbox
> > on,obsolete=3Ddeny,elevateprivileges=3Ddeny,spawn=3Ddeny,resourcecontro=
l=3Ddeny
> > -msg timestamp=3Don
> >
> >
> > remote-viewer on linux:
> > remote-viewer spice+tls://DOMAIN:5901 (works)
>
> Does remote-viewer run on the same machine as qemu-kvm ?
>
> Many times I also provide
>    --spice-host-subject=3D$HOST_CERT_SUBJECT
>
> HOST_CERT_SUBJECT=3Dopenssl x509 -noout -text -in \
>   $path_to_server-cert.pem | grep 'Subject:'
>   # and remove spaces
>
> > remote-viewer --spice-ca-file=3D$path_to_ca-cert.crt
> > spice+tls://DOMAIN:5901 (works >
> > remote-viewer on Windows:
> > remote-viewer spice+tls://DOMAIN:5901 (doesn't work)
> > remote-viewer --spice-ca-file=3D$path_to_ca-cert.crt
> > spice+tls://DOMAIN:5901 (doesn't work)
>
> Does it help if you provide it a --spice-host-subject ?
>
> I'll try to give it a try soon.
>
> Uri.
>
> >
> > debug output of both provided in the first email, also tried building
> > remote-viewer and spice-client libraries from MASTER for windows.
> >
> > Thank you for the help!
> > ---
> > Armin ranjbar
> >
> >
> >
> > On Sun, Dec 20, 2020 at 6:50 PM Uri Lublin <uril@redhat.com
> > <mailto:uril@redhat.com>> wrote:
> >
> >     On 12/15/20 1:45 PM, Armin Ranjbar wrote:
> >      > Dear Everyone,
> >      >
> >      > As always, let me thank you first for the effort you put in Spic=
e.
> >      >
> >      > I have a strange case here, libvirt is configured with letsencry=
pt
> >      > certificates, remote-viewer works happily on Linux, but it
> >     doesn't seem
> >      > to be able to get local issuer certificate on windows.
> >      > same error even when I try to give the address of CA file via
> >      > --spice-ca-file, attaching logs with spice-debug here:
> >
> >     Hi,
> >
> >     Can you please provide
> >     1. qemu-kvm commandline -spice option
> >     2. remote-viewer commandline (for both windows and linux)?
> >     3. Does the Linux remote-viewer run on the same
> >          machine as libvirt/qemu-kvm or does it run on a
> >          different machine?
> >     4. Did you copy the CA-certificate onto the windows machine ?
> >          (Just verifying, I see the name is correctly ca-cert.pem)
> >
> >     Uri.
> >
> >      >
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.293:
> >      > ../src/spice-session.c:292 Supported channels: main, display,
> >     inputs,
> >      > cursor, playback, record, usbredir
> >      > (remote-viewer.exe:3584): Spice-DEBUG: 15:13:17.293:
> >      > ../src/usb-device-manager.c:259:spice_usb_device_manager_init:
> UsbDk
> >      > driver is not installed
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.293:
> >      > ../src/usb-device-manager.c:485 auto-connect filter set to
> >      > 0x03,-1,-1,-1,0|-1,-1,-1,-1,1
> >      >
> >      > (remote-viewer.exe:3584): GSpice-CRITICAL **: 15:13:17.293:
> >      > _usbdk_hider_update: assertion 'priv->usbdk_api !=3D NULL' faile=
d
> >      >
> >      > (remote-viewer.exe:3584): GSpice-WARNING **: 15:13:17.962:
> >     password may
> >      > be visible in process listings
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.965:
> >      > ../src/spice-session.c:1814 no migration in progress
> >      > Spice-INFO: 15:13:17.965:
> >      > ../src/channel-main.c:337:spice_main_set_property:
> >      > SpiceMainChannel::color-depth has been deprecated. Property is
> >     ignored
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.965:
> >      > ../src/spice-channel.c:141 main-1:0: spice_channel_constructed
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.965:
> >      > ../src/spice-session.c:2309 main-1:0: new main channel, switchin=
g
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.680:
> >      > ../src/spice-channel.c:2707 main-1:0: Open coroutine starting
> >      > 000000000462E480
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.680:
> >      > ../src/spice-channel.c:2544 main-1:0: Started background corouti=
ne
> >      > 000000000462E338
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.680:
> >      > ../src/spice-session.c:2231 Missing port value, not attempting
> >      > unencrypted connection.
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.680:
> >      > ../src/spice-channel.c:2570 main-1:0: trying with TLS port
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.694:
> >      > ../src/spice-session.c:2244 main-1:0: Using TLS, port 5901
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.694:
> >      > ../src/spice-session.c:2177 open host DOMAIN_REPLACED:5901
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.694:
> >      > ../src/spice-session.c:2099 main-1:0: connecting
> 00000000071DFDD0...
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.757:
> >      > ../src/spice-session.c:2083 main-1:0: connect ready
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.757:
> >      > ../src/spice-channel.c:2466 main-1:0: Load CA, file:
> C:\ca-cert.pem,
> >      > data: 0000000000000000
> >      >
> >      > (remote-viewer.exe:3584): Spice-WARNING **: 15:13:18.819:
> >      >
> ../subprojects/spice-common/common/ssl_verify.c:444:openssl_verify:
> >      > Error in certificate chain verification: unable to get issuer
> >      > certificate (num=3D2:depth1:/C=3DUS/O=3DLet's Encrypt/CN=3DR3)
> >      >
> >      > (remote-viewer.exe:3584): GSpice-WARNING **: 15:13:18.819:
> main-1:0:
> >      > SSL_connect: error:00000001:lib(0):func(0):reason(1)
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819:
> >      > ../src/spice-channel.c:2680 main-1:0: Coroutine exit main-1:0
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819:
> >      > ../src/spice-channel.c:2871 main-1:0: reset
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819:
> >      > ../src/channel-main.c:1567 agent connected: no
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819:
> >      > ../src/spice-channel.c:2819 main-1:0: channel reset
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819:
> >      > ../src/spice-channel.c:2425 main-1:0: Delayed unref channel
> >     000000000462E480
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819:
> >      > ../src/spice-session.c:2006 session: disconnecting 0
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819:
> >      > ../src/spice-session.c:2349 main-1:0: the session lost the main
> >     channel
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.835:
> >      > ../src/spice-channel.c:2888 main-1:0: channel disconnect 0
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.835:
> >      > ../src/spice-channel.c:159 main-1:0: spice_channel_dispose
> >     000000000462E480
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.835:
> >      > ../src/spice-channel.c:2888 main-1:0: channel disconnect 12
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:19.756:
> >      > ../src/spice-session.c:2006 session: disconnecting 1151
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:19.757:
> >      > ../src/spice-session.c:288 New session (compiled from package
> >     spice-gtk
> >      > 0.37)
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:19.758:
> >      > ../src/spice-session.c:292 Supported channels: main, display,
> >     inputs,
> >      > cursor, playback, record, usbredir
> >      > (remote-viewer.exe:3584): Spice-DEBUG: 15:13:19.759:
> >      > ../src/usb-device-manager.c:259:spice_usb_device_manager_init:
> UsbDk
> >      > driver is not installed
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:19.760:
> >      > ../src/usb-device-manager.c:485 auto-connect filter set to
> >      > 0x03,-1,-1,-1,0|-1,-1,-1,-1,1
> >      >
> >      >
> >      >
> >      > also output when giving the --spica-ca-file, one thing i found
> >     strange
> >      > is the fact that Load CA file, shows zeroes as data, even when
> >     provided
> >      > file doesn't exist :
> >      >
> >      > (remote-viewer.exe:3584): GSpice-WARNING **: 15:13:17.962:
> >     password may
> >      > be visible in process listings
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.965:
> >      > ../src/spice-session.c:1814 no migration in progress
> >      > Spice-INFO: 15:13:17.965:
> >      > ../src/channel-main.c:337:spice_main_set_property:
> >      > SpiceMainChannel::color-depth has been deprecated. Property is
> >     ignored
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.965:
> >      > ../src/spice-channel.c:141 main-1:0: spice_channel_constructed
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:17.965:
> >      > ../src/spice-session.c:2309 main-1:0: new main channel, switchin=
g
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.680:
> >      > ../src/spice-channel.c:2707 main-1:0: Open coroutine starting
> >      > 000000000462E480
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.680:
> >      > ../src/spice-channel.c:2544 main-1:0: Started background corouti=
ne
> >      > 000000000462E338
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.680:
> >      > ../src/spice-session.c:2231 Missing port value, not attempting
> >      > unencrypted connection.
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.680:
> >      > ../src/spice-channel.c:2570 main-1:0: trying with TLS port
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.694:
> >      > ../src/spice-session.c:2244 main-1:0: Using TLS, port 5901
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.694:
> >      > ../src/spice-session.c:2177 open host vdi.pishro.computer:5901
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.694:
> >      > ../src/spice-session.c:2099 main-1:0: connecting
> 00000000071DFDD0...
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.757:
> >      > ../src/spice-session.c:2083 main-1:0: connect ready
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.757:
> >      > ../src/spice-channel.c:2466 main-1:0: Load CA, file:
> C:\ca-cert.pem,
> >      > data: 0000000000000000
> >      >
> >      > (remote-viewer.exe:3584): Spice-WARNING **: 15:13:18.819:
> >      >
> ../subprojects/spice-common/common/ssl_verify.c:444:openssl_verify:
> >      > Error in certificate chain verification: unable to get issuer
> >      > certificate (num=3D2:depth1:/C=3DUS/O=3DLet's Encrypt/CN=3DR3)
> >      >
> >      > (remote-viewer.exe:3584): GSpice-WARNING **: 15:13:18.819:
> main-1:0:
> >      > SSL_connect: error:00000001:lib(0):func(0):reason(1)
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819:
> >      > ../src/spice-channel.c:2680 main-1:0: Coroutine exit main-1:0
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819:
> >      > ../src/spice-channel.c:2871 main-1:0: reset
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819:
> >      > ../src/channel-main.c:1567 agent connected: no
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819:
> >      > ../src/spice-channel.c:2819 main-1:0: channel reset
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819:
> >      > ../src/spice-channel.c:2425 main-1:0: Delayed unref channel
> >     000000000462E480
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819:
> >      > ../src/spice-session.c:2006 session: disconnecting 0
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.819:
> >      > ../src/spice-session.c:2349 main-1:0: the session lost the main
> >     channel
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.835:
> >      > ../src/spice-channel.c:2888 main-1:0: channel disconnect 0
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.835:
> >      > ../src/spice-channel.c:159 main-1:0: spice_channel_dispose
> >     000000000462E480
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:18.835:
> >      > ../src/spice-channel.c:2888 main-1:0: channel disconnect 12
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:19.756:
> >      > ../src/spice-session.c:2006 session: disconnecting 1151
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:19.757:
> >      > ../src/spice-session.c:288 New session (compiled from package
> >     spice-gtk
> >      > 0.37)
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:19.758:
> >      > ../src/spice-session.c:292 Supported channels: main, display,
> >     inputs,
> >      > cursor, playback, record, usbredir
> >      > (remote-viewer.exe:3584): Spice-DEBUG: 15:13:19.759:
> >      > ../src/usb-device-manager.c:259:spice_usb_device_manager_init:
> UsbDk
> >      > driver is not installed
> >      > (remote-viewer.exe:3584): GSpice-DEBUG: 15:13:19.760:
> >      > ../src/usb-device-manager.c:485 auto-connect filter set to
> >      > 0x03,-1,-1,-1,0|-1,-1,-1,-1,1
> >      >
> >
>
>

--000000000000c7ee7705b7034706
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Uri,<div><br></div><div>Thanks for the reply!</div><div=
>No, remote-viewer is not running on the same server (neither windows nor L=
inux tests),</div><div><br></div><div>haven&#39;t tried spice-host-subject,=
 but will certainly give it a try, but question is, as what I&#39;m seeking=
 to do is to create a general package=C2=A0(that is usable across multiple =
installations with different certs, domains), is it really necessary to hav=
e ca-cert or host-subject available on windows? I assume it should be possi=
ble to get them from the running OS itself...</div><div><br></div><div><div=
><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signatu=
re"><div dir=3D"ltr">---<br>Armin ranjbar<br><div><br></div></div></div></d=
iv><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Tue, Dec 22, 2020 at 3:54 AM Uri Lublin &lt;<a href=3D"mail=
to:uril@redhat.com">uril@redhat.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">On 12/20/20 5:37 PM, Armin Ranjbar wrote=
:<br>
&gt; Hi, With pleasure!<br>
&gt; <br>
&gt; Qemu command line:<br>
&gt; /usr/bin/qemu-system-x86_64 -name <br>
&gt; guest=3Dtest1-DOMAIN_XLMEP2ZCTPH2NRMV,debug-threads=3Don -S -object <b=
r>
&gt; secret,id=3DmasterKey0,format=3Draw,file=3D/var/lib/libvirt/qemu/domai=
n-1-test1-pishro.compute/master-key.aes <br>
&gt; -machine pc-i440fx-4.2,accel=3Dkvm,usb=3Doff,vmport=3Doff,dump-guest-c=
ore=3Doff <br>
&gt; -cpu <br>
&gt; SandyBridge-IBRS,vme=3Don,vmx=3Don,pcid=3Don,hypervisor=3Don,arat=3Don=
,tsc-adjust=3Don,umip=3Don,md-clear=3Don,stibp=3Don,arch-capabilities=3Don,=
ssbd=3Don,xsaveopt=3Don,pdpe1gb=3Don,ibpb=3Don,amd-stibp=3Don,amd-ssbd=3Don=
,skip-l1dfl-vmentry=3Don,pschange-mc-no=3Don,hv-time,hv-relaxed,hv-vapic,hv=
-spinlocks=3D0x1000,hv-vpindex,hv-runtime,hv-synic,hv-stimer,hv-stimer-dire=
ct,hv-reset,hv-vendor-id=3DDaaS,hv-crash <br>
&gt; -m 3248 -overcommit mem-lock=3Doff -smp 2,sockets=3D1,cores=3D2,thread=
s=3D1 <br>
&gt; -uuid 3c01cc16-3a72-11eb-ae67-c3a189c89e46 -no-user-config -nodefaults=
 <br>
&gt; -chardev socket,id=3Dcharmonitor,fd=3D31,server,nowait -mon <br>
&gt; chardev=3Dcharmonitor,id=3Dmonitor,mode=3Dcontrol -rtc base=3Dutc,drif=
tfix=3Dslew <br>
&gt; -global kvm-pit.lost_tick_policy=3Ddelay -no-hpet -no-shutdown -global=
 <br>
&gt; PIIX4_PM.disable_s3=3D1 -global PIIX4_PM.disable_s4=3D1 -boot strict=
=3Don <br>
&gt; -device pci-bridge,chassis_nr=3D1,id=3Dpci.1,bus=3Dpci.0,addr=3D0x3 -d=
evice <br>
&gt; qemu-xhci,p2=3D15,p3=3D15,id=3Dusb,bus=3Dpci.0,addr=3D0x5 -device <br>
&gt; ahci,id=3Dsata0,bus=3Dpci.0,addr=3D0x8 -device <br>
&gt; virtio-serial-pci,id=3Dvirtio-serial0,bus=3Dpci.0,addr=3D0x6 -object <=
br>
&gt; secret,id=3Dlibvirt-2-storage-secret0,data=3DyLtgtQTQJM5xCBZ2TPh1JkrbT=
TqXkoBo4JEqBOKQBF0=3D,keyid=3DmasterKey0,iv=3DH9oULsQg3K4UnoPu65gA/A=3D=3D,=
format=3Dbase64 <br>
&gt; -blockdev <br>
&gt; {&quot;driver&quot;:&quot;rbd&quot;,&quot;pool&quot;:&quot;base_disks&=
quot;,&quot;image&quot;:&quot;test1-DOMAIN_XLMEP2ZCTPH2NRMV&quot;,&quot;ser=
ver&quot;:[{&quot;host&quot;:&quot;192.168.0.126&quot;,&quot;port&quot;:&qu=
ot;3300&quot;}],&quot;user&quot;:&quot;admin&quot;,&quot;auth-client-requir=
ed&quot;:[&quot;cephx&quot;,&quot;none&quot;],&quot;key-secret&quot;:&quot;=
libvirt-2-storage-secret0&quot;,&quot;node-name&quot;:&quot;libvirt-2-stora=
ge&quot;,&quot;auto-read-only&quot;:true,&quot;discard&quot;:&quot;unmap&qu=
ot;} <br>
&gt; -blockdev <br>
&gt; {&quot;node-name&quot;:&quot;libvirt-2-format&quot;,&quot;read-only&qu=
ot;:false,&quot;driver&quot;:&quot;raw&quot;,&quot;file&quot;:&quot;libvirt=
-2-storage&quot;} <br>
&gt; -device <br>
&gt; ide-hd,bus=3Dsata0.0,drive=3Dlibvirt-2-format,id=3Dsata0-0-0,bootindex=
=3D1 <br>
&gt; -blockdev <br>
&gt; {&quot;driver&quot;:&quot;file&quot;,&quot;filename&quot;:&quot;/var/l=
ib/libvirt/images/windows.iso&quot;,&quot;node-name&quot;:&quot;libvirt-1-s=
torage&quot;,&quot;auto-read-only&quot;:true,&quot;discard&quot;:&quot;unma=
p&quot;} <br>
&gt; -blockdev <br>
&gt; {&quot;node-name&quot;:&quot;libvirt-1-format&quot;,&quot;read-only&qu=
ot;:true,&quot;driver&quot;:&quot;raw&quot;,&quot;file&quot;:&quot;libvirt-=
1-storage&quot;} <br>
&gt; -device <br>
&gt; ide-cd,bus=3Dsata0.1,share-rw=3Don,drive=3Dlibvirt-1-format,id=3Dsata0=
-0-1,bootindex=3D2 <br>
&gt; -netdev tap,fd=3D33,id=3Dhostnet0 -device <br>
&gt; e1000,netdev=3Dhostnet0,id=3Dnet0,mac=3D4a:df:1f:e9:c8:1e,bus=3Dpci.1,=
addr=3D0x3 <br>
&gt; -chardev pty,id=3Dcharserial0 -device <br>
&gt; isa-serial,chardev=3Dcharserial0,id=3Dserial0 -chardev <br>
&gt; spicevmc,id=3Dcharchannel0,name=3Dvdagent -device <br>
&gt; virtserialport,bus=3Dvirtio-serial0.0,nr=3D1,chardev=3Dcharchannel0,id=
=3Dchannel0,name=3Dcom.redhat.spice.0 <br>
&gt; -chardev socket,id=3Dcharchannel1,fd=3D34,server,nowait -device <br>
&gt; virtserialport,bus=3Dvirtio-serial0.0,nr=3D2,chardev=3Dcharchannel1,id=
=3Dchannel1,name=3Dorg.qemu.guest_agent.0 <br>
&gt; -chardev spiceport,id=3Dcharchannel2,name=3Dorg.spice-space.webdav.0 -=
device <br>
&gt; virtserialport,bus=3Dvirtio-serial0.0,nr=3D3,chardev=3Dcharchannel2,id=
=3Dchannel2,name=3Dorg.spice-space.webdav.0 <br>
&gt; -device usb-tablet,id=3Dinput0,bus=3Dusb.0,port=3D1 -spice <br>
&gt; port=3D5900,tls-port=3D5901,addr=3D0.0.0.0,agent-mouse=3Don,x509-dir=
=3D/etc/pki/libvirt-spice,image-compression=3Dauto_lz,jpeg-wan-compression=
=3Dauto,zlib-glz-wan-compression=3Dauto,playback-compression=3Don,streaming=
-video=3Dfilter,seamless-migration=3Don <br>
&gt; -device <br>
&gt; qxl-vga,id=3Dvideo0,ram_size=3D67108864,vram_size=3D67108864,vram64_si=
ze_mb=3D0,vgamem_mb=3D16,max_outputs=3D1,bus=3Dpci.0,addr=3D0x2 <br>
&gt; -device ich9-intel-hda,id=3Dsound0,bus=3Dpci.0,addr=3D0x4 -device <br>
&gt; hda-duplex,id=3Dsound0-codec0,bus=3Dsound0.0,cad=3D0 -device <br>
&gt; i6300esb,id=3Dwatchdog0,bus=3Dpci.0,addr=3D0x9 -watchdog-action reset =
-chardev <br>
&gt; spicevmc,id=3Dcharredir0,name=3Dusbredir -device <br>
&gt; usb-redir,chardev=3Dcharredir0,id=3Dredir0,bus=3Dusb.0,port=3D2 -chard=
ev <br>
&gt; spicevmc,id=3Dcharredir1,name=3Dusbredir -device <br>
&gt; usb-redir,chardev=3Dcharredir1,id=3Dredir1,bus=3Dusb.0,port=3D3 -chard=
ev <br>
&gt; spicevmc,id=3Dcharredir2,name=3Dusbredir -device <br>
&gt; usb-redir,chardev=3Dcharredir2,id=3Dredir2,bus=3Dusb.0,port=3D4 -chard=
ev <br>
&gt; spicevmc,id=3Dcharredir3,name=3Dusbredir -device <br>
&gt; usb-redir,chardev=3Dcharredir3,id=3Dredir3,bus=3Dusb.0,port=3D5 -devic=
e <br>
&gt; virtio-balloon-pci,id=3Dballoon0,bus=3Dpci.0,addr=3D0x10 -sandbox <br>
&gt; on,obsolete=3Ddeny,elevateprivileges=3Ddeny,spawn=3Ddeny,resourcecontr=
ol=3Ddeny <br>
&gt; -msg timestamp=3Don<br>
&gt; <br>
&gt; <br>
&gt; remote-viewer on linux:<br>
&gt; remote-viewer spice+tls://DOMAIN:5901 (works)<br>
<br>
Does remote-viewer run on the same machine as qemu-kvm ?<br>
<br>
Many times I also provide<br>
=C2=A0 =C2=A0--spice-host-subject=3D$HOST_CERT_SUBJECT<br>
<br>
HOST_CERT_SUBJECT=3Dopenssl x509 -noout -text -in \<br>
=C2=A0 $path_to_server-cert.pem | grep &#39;Subject:&#39;<br>
=C2=A0 # and remove spaces<br>
<br>
&gt; remote-viewer --spice-ca-file=3D$path_to_ca-cert.crt <br>
&gt; spice+tls://DOMAIN:5901 (works &gt;<br>
&gt; remote-viewer on Windows:<br>
&gt; remote-viewer spice+tls://DOMAIN:5901 (doesn&#39;t work)<br>
&gt; remote-viewer --spice-ca-file=3D$path_to_ca-cert.crt <br>
&gt; spice+tls://DOMAIN:5901 (doesn&#39;t work)<br>
<br>
Does it help if you provide it a --spice-host-subject ?<br>
<br>
I&#39;ll try to give it a try soon.<br>
<br>
Uri.<br>
<br>
&gt; <br>
&gt; debug output of both provided in the first email, also tried building =
<br>
&gt; remote-viewer and spice-client libraries from MASTER for windows.<br>
&gt; <br>
&gt; Thank you for the help!<br>
&gt; ---<br>
&gt; Armin ranjbar<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; On Sun, Dec 20, 2020 at 6:50 PM Uri Lublin &lt;<a href=3D"mailto:uril@=
redhat.com" target=3D"_blank">uril@redhat.com</a> <br>
&gt; &lt;mailto:<a href=3D"mailto:uril@redhat.com" target=3D"_blank">uril@r=
edhat.com</a>&gt;&gt; wrote:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0On 12/15/20 1:45 PM, Armin Ranjbar wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Dear Everyone,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; As always, let me thank you first for the eff=
ort you put in Spice.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; I have a strange case here, libvirt is config=
ured with letsencrypt<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; certificates, remote-viewer works happily on =
Linux, but it<br>
&gt;=C2=A0 =C2=A0 =C2=A0doesn&#39;t seem<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; to be able to get local issuer certificate on=
 windows.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; same error even when I try to give the addres=
s of CA file via<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; --spice-ca-file, attaching logs with spice-de=
bug here:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Hi,<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Can you please provide<br>
&gt;=C2=A0 =C2=A0 =C2=A01. qemu-kvm commandline -spice option<br>
&gt;=C2=A0 =C2=A0 =C2=A02. remote-viewer commandline (for both windows and =
linux)?<br>
&gt;=C2=A0 =C2=A0 =C2=A03. Does the Linux remote-viewer run on the same<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 machine as libvirt/qemu-kvm or does =
it run on a<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 different machine?<br>
&gt;=C2=A0 =C2=A0 =C2=A04. Did you copy the CA-certificate onto the windows=
 machine ?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (Just verifying, I see the name is c=
orrectly ca-cert.pem)<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Uri.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:17.293:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-session.c:292 Supported channels=
: main, display,<br>
&gt;=C2=A0 =C2=A0 =C2=A0inputs,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; cursor, playback, record, usbredir<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): Spice-DEBUG: 15:13:=
17.293:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/usb-device-manager.c:259:spice_usb_dev=
ice_manager_init: UsbDk<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; driver is not installed<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:17.293:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/usb-device-manager.c:485 auto-connect =
filter set to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; 0x03,-1,-1,-1,0|-1,-1,-1,-1,1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-CRITICAL **:=
 15:13:17.293:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; _usbdk_hider_update: assertion &#39;priv-&gt;=
usbdk_api !=3D NULL&#39; failed<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-WARNING **: =
15:13:17.962:<br>
&gt;=C2=A0 =C2=A0 =C2=A0password may<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; be visible in process listings<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:17.965:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-session.c:1814 no migration in p=
rogress<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Spice-INFO: 15:13:17.965:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/channel-main.c:337:spice_main_set_prop=
erty:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; SpiceMainChannel::color-depth has been deprec=
ated. Property is<br>
&gt;=C2=A0 =C2=A0 =C2=A0ignored<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:17.965:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-channel.c:141 main-1:0: spice_ch=
annel_constructed<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:17.965:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-session.c:2309 main-1:0: new mai=
n channel, switching<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:18.680:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-channel.c:2707 main-1:0: Open co=
routine starting<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; 000000000462E480<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:18.680:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-channel.c:2544 main-1:0: Started=
 background coroutine<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; 000000000462E338<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:18.680:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-session.c:2231 Missing port valu=
e, not attempting<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; unencrypted connection.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:18.680:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-channel.c:2570 main-1:0: trying =
with TLS port<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:18.694:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-session.c:2244 main-1:0: Using T=
LS, port 5901<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:18.694:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-session.c:2177 open host DOMAIN_=
REPLACED:5901<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:18.694:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-session.c:2099 main-1:0: connect=
ing 00000000071DFDD0...<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:18.757:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-session.c:2083 main-1:0: connect=
 ready<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:18.757:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-channel.c:2466 main-1:0: Load CA=
, file: C:\ca-cert.pem,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; data: 0000000000000000<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): Spice-WARNING **: 1=
5:13:18.819:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../subprojects/spice-common/common/ssl_verify=
.c:444:openssl_verify:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Error in certificate chain verification: unab=
le to get issuer<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; certificate (num=3D2:depth1:/C=3DUS/O=3DLet&#=
39;s Encrypt/CN=3DR3)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-WARNING **: =
15:13:18.819: main-1:0:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; SSL_connect: error:00000001:lib(0):func(0):re=
ason(1)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:18.819:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-channel.c:2680 main-1:0: Corouti=
ne exit main-1:0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:18.819:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-channel.c:2871 main-1:0: reset<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:18.819:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/channel-main.c:1567 agent connected: n=
o<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:18.819:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-channel.c:2819 main-1:0: channel=
 reset<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:18.819:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-channel.c:2425 main-1:0: Delayed=
 unref channel<br>
&gt;=C2=A0 =C2=A0 =C2=A0000000000462E480<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:18.819:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-session.c:2006 session: disconne=
cting 0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:18.819:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-session.c:2349 main-1:0: the ses=
sion lost the main<br>
&gt;=C2=A0 =C2=A0 =C2=A0channel<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:18.835:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-channel.c:2888 main-1:0: channel=
 disconnect 0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:18.835:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-channel.c:159 main-1:0: spice_ch=
annel_dispose<br>
&gt;=C2=A0 =C2=A0 =C2=A0000000000462E480<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:18.835:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-channel.c:2888 main-1:0: channel=
 disconnect 12<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:19.756:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-session.c:2006 session: disconne=
cting 1151<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:19.757:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-session.c:288 New session (compi=
led from package<br>
&gt;=C2=A0 =C2=A0 =C2=A0spice-gtk<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; 0.37)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:19.758:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-session.c:292 Supported channels=
: main, display,<br>
&gt;=C2=A0 =C2=A0 =C2=A0inputs,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; cursor, playback, record, usbredir<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): Spice-DEBUG: 15:13:=
19.759:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/usb-device-manager.c:259:spice_usb_dev=
ice_manager_init: UsbDk<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; driver is not installed<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:19.760:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/usb-device-manager.c:485 auto-connect =
filter set to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; 0x03,-1,-1,-1,0|-1,-1,-1,-1,1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; also output when giving the --spica-ca-file, =
one thing i found<br>
&gt;=C2=A0 =C2=A0 =C2=A0strange<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; is the fact that Load CA file, shows zeroes a=
s data, even when<br>
&gt;=C2=A0 =C2=A0 =C2=A0provided<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; file doesn&#39;t exist :<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-WARNING **: =
15:13:17.962:<br>
&gt;=C2=A0 =C2=A0 =C2=A0password may<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; be visible in process listings<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:17.965:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-session.c:1814 no migration in p=
rogress<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Spice-INFO: 15:13:17.965:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/channel-main.c:337:spice_main_set_prop=
erty:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; SpiceMainChannel::color-depth has been deprec=
ated. Property is<br>
&gt;=C2=A0 =C2=A0 =C2=A0ignored<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:17.965:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-channel.c:141 main-1:0: spice_ch=
annel_constructed<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:17.965:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-session.c:2309 main-1:0: new mai=
n channel, switching<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:18.680:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-channel.c:2707 main-1:0: Open co=
routine starting<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; 000000000462E480<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:18.680:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-channel.c:2544 main-1:0: Started=
 background coroutine<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; 000000000462E338<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:18.680:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-session.c:2231 Missing port valu=
e, not attempting<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; unencrypted connection.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:18.680:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-channel.c:2570 main-1:0: trying =
with TLS port<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:18.694:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-session.c:2244 main-1:0: Using T=
LS, port 5901<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:18.694:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-session.c:2177 open host vdi.pis=
hro.computer:5901<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:18.694:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-session.c:2099 main-1:0: connect=
ing 00000000071DFDD0...<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:18.757:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-session.c:2083 main-1:0: connect=
 ready<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:18.757:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-channel.c:2466 main-1:0: Load CA=
, file: C:\ca-cert.pem,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; data: 0000000000000000<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): Spice-WARNING **: 1=
5:13:18.819:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../subprojects/spice-common/common/ssl_verify=
.c:444:openssl_verify:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Error in certificate chain verification: unab=
le to get issuer<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; certificate (num=3D2:depth1:/C=3DUS/O=3DLet&#=
39;s Encrypt/CN=3DR3)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-WARNING **: =
15:13:18.819: main-1:0:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; SSL_connect: error:00000001:lib(0):func(0):re=
ason(1)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:18.819:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-channel.c:2680 main-1:0: Corouti=
ne exit main-1:0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:18.819:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-channel.c:2871 main-1:0: reset<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:18.819:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/channel-main.c:1567 agent connected: n=
o<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:18.819:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-channel.c:2819 main-1:0: channel=
 reset<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:18.819:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-channel.c:2425 main-1:0: Delayed=
 unref channel<br>
&gt;=C2=A0 =C2=A0 =C2=A0000000000462E480<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:18.819:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-session.c:2006 session: disconne=
cting 0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:18.819:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-session.c:2349 main-1:0: the ses=
sion lost the main<br>
&gt;=C2=A0 =C2=A0 =C2=A0channel<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:18.835:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-channel.c:2888 main-1:0: channel=
 disconnect 0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:18.835:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-channel.c:159 main-1:0: spice_ch=
annel_dispose<br>
&gt;=C2=A0 =C2=A0 =C2=A0000000000462E480<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:18.835:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-channel.c:2888 main-1:0: channel=
 disconnect 12<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:19.756:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-session.c:2006 session: disconne=
cting 1151<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:19.757:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-session.c:288 New session (compi=
led from package<br>
&gt;=C2=A0 =C2=A0 =C2=A0spice-gtk<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; 0.37)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:19.758:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/spice-session.c:292 Supported channels=
: main, display,<br>
&gt;=C2=A0 =C2=A0 =C2=A0inputs,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; cursor, playback, record, usbredir<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): Spice-DEBUG: 15:13:=
19.759:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/usb-device-manager.c:259:spice_usb_dev=
ice_manager_init: UsbDk<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; driver is not installed<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (remote-viewer.exe:3584): GSpice-DEBUG: 15:13=
:19.760:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ../src/usb-device-manager.c:485 auto-connect =
filter set to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; 0x03,-1,-1,-1,0|-1,-1,-1,-1,1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt; <br>
<br>
</blockquote></div>

--000000000000c7ee7705b7034706--

--===============2015761058==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============2015761058==--
