Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 605EA51B748
	for <lists+spice-devel@lfdr.de>; Thu,  5 May 2022 06:53:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A96B610E34B;
	Thu,  5 May 2022 04:53:25 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-qt1-x830.google.com (mail-qt1-x830.google.com
 [IPv6:2607:f8b0:4864:20::830])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F01BD10EC5C
 for <spice-devel@lists.freedesktop.org>; Thu,  5 May 2022 04:53:23 +0000 (UTC)
Received: by mail-qt1-x830.google.com with SMTP id x9so2420027qts.6
 for <spice-devel@lists.freedesktop.org>; Wed, 04 May 2022 21:53:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=7jpDjkj9EUmWKQRr3m26fV9eAfqLQ9vRrI0Byhu9J4U=;
 b=ONhpc88k8ALDcvvQPcjmj2syfrVsEionoPKlZa8Nv8JcIOxZ0ZzM7j1p+pZDUi9qvQ
 0zXujBrT0sBjAV8Pr8ntWCco5282SjriMZ7AXX10aWstHt0LvboRcjuSO97RdYtgE3MY
 ZGOUkb0Nz0We446OsD9pYOmcWwd+nE7RkSudGf/hNgfSBwV9PeQtgpqBT4rt+N2uR3f1
 pwHvuBXbs5xpTrTs4CtXXdIoQ4TZVgOS2BRXESUP+/vOULbmSfyammlHE1LaOseGQO4T
 3m34iOinqBd+0B6pPQyDIJDP7roFacIZI3wzKumgDmMuCwNUF/jMM4gVPgxxkJGWbqWb
 TJ8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=7jpDjkj9EUmWKQRr3m26fV9eAfqLQ9vRrI0Byhu9J4U=;
 b=OO334rzZmWI3Ky/ImmSw7qFYDlqo7+LwsNgIVZPlnOO5jiM8u+EmVF3Y0NJOZijHqG
 oMcl4R+Ewn9xisyDqXxh9E27BBDa6ri3sWZ+Otxe0bltWdtQK1uHVL79yTnznyUpHeJw
 KOPiKsA7MTWIdN0blUWbwVR90yb7mlW3L/OqG5yP+2WDM1n/hd7YANETbr/DIpQtk+5g
 9O+0pKajZl6jH8GXKLzs8T24qNPAF2yG3e5P8d1q8pyCV+yKnetpzt8/5KyBgDD/cW6c
 mG3HNKtx3+REq7RdxQIQzZ98TkTUVLyrJDj6sQUqYD4XkCrE43uxs+BXUbXF7dRfd7Ea
 WRXA==
X-Gm-Message-State: AOAM531b6G3b+OC07L2PeeRTdUAejXx+uUjyvf0khMzyHEGEr0BtGPG9
 nR2Fivlvl/XS7BxNQI+UXEjMRxmRNTM3YX4GF7xovg4i
X-Google-Smtp-Source: ABdhPJx+h4Qaoj/7Ex8KYM1me51pOHafwzop20vX+MS7MtaM73YILgtnuNubRs3YfERBuG8jrmy0xNH2q1WONOVHO5s=
X-Received: by 2002:a05:622a:143:b0:2e0:b7c8:3057 with SMTP id
 v3-20020a05622a014300b002e0b7c83057mr22783209qtw.179.1651726402801; Wed, 04
 May 2022 21:53:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAHAhJwJ0Zag6P4Y8GfxDOi9ApQ5f-YbZ1uj-rQJ3Rh5FUvN26w@mail.gmail.com>
In-Reply-To: <CAHAhJwJ0Zag6P4Y8GfxDOi9ApQ5f-YbZ1uj-rQJ3Rh5FUvN26w@mail.gmail.com>
From: Ahmad Ismail <ismail783@gmail.com>
Date: Thu, 5 May 2022 10:53:13 +0600
Message-ID: <CAHAhJwJfF1MxECpm1qzsfKOw+WNYcjfZmW5W+=AhF3hKq0jpDQ@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="0000000000008154c005de3c8514"
Subject: [Spice-devel] Does not show Pre-Boot Login Menu (When using FDE)
 When Using Qemu
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--0000000000008154c005de3c8514
Content-Type: text/plain; charset="UTF-8"

When I run VM with the following command:

qemu-system-x86_64 -accel kvm,thread=multi -cpu host -smp 2 -m 4096 \
-drive file=/media/blueray/WDPurple8TB/QEMU_Backup/ubuntu.qcow2,if=virtio \
-vga virtio -display gtk,gl=on

I get the following screen:

https://i.stack.imgur.com/HofCx.png

But I do not see this screen when I use spice using:

#!/bin/bash

QEMU_AUDIO_DRV=spice

qemu-system-x86_64 -accel kvm,thread=multi -cpu host -smp 2 -m 8192 \
-drive file=/media/blueray/WDPurple8TB/QEMU_Backup/ubuntu.qcow2,if=virtio \
-machine vmport=off \
-vga qxl -usb -device qemu-xhci -device usb-tablet \
-soundhw hda \
-spice port=5911,addr=127.0.0.1,disable-ticketing \
-device virtio-serial-pci \
-chardev spicevmc,id=spicechannel0,debug=0,name=vdagent \
-device virtserialport,chardev=spicechannel0,name=com.redhat.spice.0 \
-device virtserialport,chardev=charchannel1,id=channel1,name=org.spice-space.webdav.0
\
-chardev spiceport,name=org.spice-space.webdav.0,id=charchannel1 \
-daemonize

remote-viewer --spice-shared-dir=/media/blueray/WDPurple8TB/QEMU_Backup/Ubuntu_Share
spice://127.0.0.1:5911 > /dev/null 2>&1 &

The problem is I need to use spice for other features.

What can I do?

--0000000000008154c005de3c8514
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr"><span style=3D"color:rgb(35,38,41);font-family:-apple-system,BlinkMa=
cSystemFont,&quot;Segoe UI Adjusted&quot;,&quot;Segoe UI&quot;,&quot;Libera=
tion Sans&quot;,sans-serif;font-size:15px">When I run VM with the following=
 command:</span><br></div><div dir=3D"ltr" class=3D"gmail_attr"><span style=
=3D"color:rgb(35,38,41);font-family:-apple-system,BlinkMacSystemFont,&quot;=
Segoe UI Adjusted&quot;,&quot;Segoe UI&quot;,&quot;Liberation Sans&quot;,sa=
ns-serif;font-size:15px"><br></span></div><div dir=3D"ltr"><pre style=3D"ma=
rgin-top:0px;border:0px;font-variant-numeric:inherit;font-variant-east-asia=
n:inherit;font-stretch:inherit;vertical-align:baseline;box-sizing:inherit;w=
idth:auto;max-height:600px;overflow:auto"><code style=3D"margin:0px;padding=
:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit=
;font-stretch:inherit;line-height:inherit;vertical-align:baseline;box-sizin=
g:inherit;background-color:transparent;white-space:inherit;border-radius:0p=
x">qemu-system-x86_64 -accel kvm,thread=3Dmulti -cpu host -smp 2 -m 4096 \
-drive file=3D/media/blueray/WDPurple8TB/QEMU_Backup/ubuntu.qcow2,if=3Dvirt=
io \
-vga virtio -display gtk,gl=3Don
</code></pre><p style=3D"margin-top:0px;margin-right:0px;margin-left:0px;pa=
dding:0px;border:0px;font-variant-numeric:inherit;font-variant-east-asian:i=
nherit;font-stretch:inherit;line-height:inherit;font-family:-apple-system,B=
linkMacSystemFont,&quot;Segoe UI Adjusted&quot;,&quot;Segoe UI&quot;,&quot;=
Liberation Sans&quot;,sans-serif;font-size:15px;vertical-align:baseline;box=
-sizing:inherit;clear:both;color:rgb(35,38,41)">I get the following screen:=
</p><p style=3D"margin-top:0px;margin-right:0px;margin-left:0px;padding:0px=
;border:0px;font-variant-numeric:inherit;font-variant-east-asian:inherit;fo=
nt-stretch:inherit;line-height:inherit;font-family:-apple-system,BlinkMacSy=
stemFont,&quot;Segoe UI Adjusted&quot;,&quot;Segoe UI&quot;,&quot;Liberatio=
n Sans&quot;,sans-serif;font-size:15px;vertical-align:baseline;box-sizing:i=
nherit;clear:both;color:rgb(35,38,41)"><a href=3D"https://i.stack.imgur.com=
/HofCx.png" target=3D"_blank">https://i.stack.imgur.com/HofCx.png</a><br></=
p><p style=3D"margin-top:0px;margin-right:0px;margin-left:0px;padding:0px;b=
order:0px;font-variant-numeric:inherit;font-variant-east-asian:inherit;font=
-stretch:inherit;line-height:inherit;font-family:-apple-system,BlinkMacSyst=
emFont,&quot;Segoe UI Adjusted&quot;,&quot;Segoe UI&quot;,&quot;Liberation =
Sans&quot;,sans-serif;font-size:15px;vertical-align:baseline;box-sizing:inh=
erit;clear:both;color:rgb(35,38,41)">But I do not see this screen when I us=
e spice using:</p><pre style=3D"margin-top:0px;border:0px;font-variant-nume=
ric:inherit;font-variant-east-asian:inherit;font-stretch:inherit;vertical-a=
lign:baseline;box-sizing:inherit;width:auto;max-height:600px;overflow:auto"=
><code style=3D"margin:0px;padding:0px;border:0px;font-style:inherit;font-v=
ariant:inherit;font-weight:inherit;font-stretch:inherit;line-height:inherit=
;vertical-align:baseline;box-sizing:inherit;background-color:transparent;wh=
ite-space:inherit;border-radius:0px">#!/bin/bash

QEMU_AUDIO_DRV=3Dspice

qemu-system-x86_64 -accel kvm,thread=3Dmulti -cpu host -smp 2 -m 8192 \
-drive file=3D/media/blueray/WDPurple8TB/QEMU_Backup/ubuntu.qcow2,if=3Dvirt=
io \
-machine vmport=3Doff \
-vga qxl -usb -device qemu-xhci -device usb-tablet \
-soundhw hda \
-spice port=3D5911,addr=3D127.0.0.1,disable-ticketing \
-device virtio-serial-pci \
-chardev spicevmc,id=3Dspicechannel0,debug=3D0,name=3Dvdagent \
-device virtserialport,chardev=3Dspicechannel0,name=3Dcom.redhat.spice.0 \
-device virtserialport,chardev=3Dcharchannel1,id=3Dchannel1,name=3Dorg.spic=
e-space.webdav.0 \
-chardev spiceport,name=3Dorg.spice-space.webdav.0,id=3Dcharchannel1 \
-daemonize

remote-viewer --spice-shared-dir=3D/media/blueray/WDPurple8TB/QEMU_Backup/U=
buntu_Share spice://<a href=3D"http://127.0.0.1:5911" target=3D"_blank">127=
.0.0.1:5911</a> &gt; /dev/null 2&gt;&amp;1 &amp;
</code></pre><p style=3D"margin-top:0px;margin-right:0px;margin-left:0px;pa=
dding:0px;border:0px;font-variant-numeric:inherit;font-variant-east-asian:i=
nherit;font-stretch:inherit;line-height:inherit;font-family:-apple-system,B=
linkMacSystemFont,&quot;Segoe UI Adjusted&quot;,&quot;Segoe UI&quot;,&quot;=
Liberation Sans&quot;,sans-serif;font-size:15px;vertical-align:baseline;box=
-sizing:inherit;clear:both;color:rgb(35,38,41)">The problem is I need to us=
e spice for other features.</p><p style=3D"margin:0px;padding:0px;border:0p=
x;font-variant-numeric:inherit;font-variant-east-asian:inherit;font-stretch=
:inherit;line-height:inherit;font-family:-apple-system,BlinkMacSystemFont,&=
quot;Segoe UI Adjusted&quot;,&quot;Segoe UI&quot;,&quot;Liberation Sans&quo=
t;,sans-serif;font-size:15px;vertical-align:baseline;box-sizing:inherit;cle=
ar:both;color:rgb(35,38,41)">What can I do?</p></div>
</div></div>

--0000000000008154c005de3c8514--
