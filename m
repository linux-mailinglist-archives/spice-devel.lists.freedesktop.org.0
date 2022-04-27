Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 394E55113F4
	for <lists+spice-devel@lfdr.de>; Wed, 27 Apr 2022 10:59:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 203DD10E3F9;
	Wed, 27 Apr 2022 08:59:20 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-qt1-x82b.google.com (mail-qt1-x82b.google.com
 [IPv6:2607:f8b0:4864:20::82b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44BA610E403
 for <spice-devel@lists.freedesktop.org>; Wed, 27 Apr 2022 08:59:19 +0000 (UTC)
Received: by mail-qt1-x82b.google.com with SMTP id ay11so677319qtb.4
 for <spice-devel@lists.freedesktop.org>; Wed, 27 Apr 2022 01:59:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to;
 bh=8jziubB9BLq0NySG65ddUdc8EFWuO+uYBqHxaULNtyI=;
 b=grviNatZT+VQ35W49v2Pq9Rmh8HogDWDiTUCioYecYJ376OnA3JTorsqRMW6GoA5ne
 mWFyIVdZw3F213TSJqtNnv8JM9namBalsoyzTLorYpL6fqGLq3uDBSlBCEuc7lOUTwzr
 hKALXac11NyAfSdkTKDCkRpgc9uBhWKqUsC06YDXYtmmGzbyBuzcY38OZHPS4OJP1yaS
 av+f/x0JMUqZ+frmDnbKKeKP33SvXH5Lz4Y3LAfU1oAk5ea4O6IJA0zyRbuDTyHIek/K
 4BLhlNmdt0GAFb/9+HnWuHKQNbtm36O0kLAOza1D/jNcyL0xGGqNBJ/06fRX4+158qtR
 xpCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=8jziubB9BLq0NySG65ddUdc8EFWuO+uYBqHxaULNtyI=;
 b=rqND+XTVWD/mHiFVzs8uh2Leyr6h8xe+mSGpgTgxc1R4S0G231J9y74SHxbDRG0xSU
 Jl7PH9fOYB6ZFM3A/EMEjN7EJvRHt0Tol80z60fyO4F0z3+wCd+i6vZqtnoHqRvcHXMX
 JjIEV6W5rp1rjNK4/RTaJ06bWztpG0WeBgEN6H1uQf7piMR0g5arTV3wvWbyMWdRq0nO
 SpePpg+Cwln+lowg3jNS9SLRkB0l8FQluQNvng2uvsmgqFjj1JB8RzvvRED5I6HTt3O0
 V22MTgk5hJPABeQ0oeAGN0/u899QYvJ20G43UFp3vnb96ADY85zhjynWUJlDNy3uKhti
 tRfw==
X-Gm-Message-State: AOAM533cib2OjQh5pFd2CwiNRpiTdxUIZo4+k5e1kOyYTCqWFqvu2sZT
 vVlo8Rjj6rB/iiVghe4ZYXhlemRLPj+IoPN8MnG+3ZuBt5w=
X-Google-Smtp-Source: ABdhPJzuw/JfuHHryPbVlyNZR+qb23ormYJE90xZtBG4M5rzbFuXMTZShSCgh84XDY7gSWVN0wXGYR689VoH+bip38w=
X-Received: by 2002:a05:622a:143:b0:2e0:b7c8:3057 with SMTP id
 v3-20020a05622a014300b002e0b7c83057mr18447213qtw.179.1651049958207; Wed, 27
 Apr 2022 01:59:18 -0700 (PDT)
MIME-Version: 1.0
From: Ahmad Ismail <ismail783@gmail.com>
Date: Wed, 27 Apr 2022 14:59:10 +0600
Message-ID: <CAHAhJwJ0Zag6P4Y8GfxDOi9ApQ5f-YbZ1uj-rQJ3Rh5FUvN26w@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="00000000000043f50005dd9f064c"
Subject: [Spice-devel] spice-devel@lists.freedesktop.org
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

--00000000000043f50005dd9f064c
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

--00000000000043f50005dd9f064c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p style=3D"margin-top:0px;margin-right:0px;margin-left:0p=
x;padding:0px;border:0px;font-variant-numeric:inherit;font-variant-east-asi=
an:inherit;font-stretch:inherit;line-height:inherit;font-family:-apple-syst=
em,BlinkMacSystemFont,&quot;Segoe UI Adjusted&quot;,&quot;Segoe UI&quot;,&q=
uot;Liberation Sans&quot;,sans-serif;font-size:15px;vertical-align:baseline=
;box-sizing:inherit;clear:both;color:rgb(35,38,41)">When I run VM with the =
following command:</p><pre style=3D"margin-top:0px;border:0px;font-variant-=
numeric:inherit;font-variant-east-asian:inherit;font-stretch:inherit;vertic=
al-align:baseline;box-sizing:inherit;width:auto;max-height:600px;overflow:a=
uto"><code style=3D"margin:0px;padding:0px;border:0px;font-style:inherit;fo=
nt-variant:inherit;font-weight:inherit;font-stretch:inherit;line-height:inh=
erit;vertical-align:baseline;box-sizing:inherit;background-color:transparen=
t;white-space:inherit;border-radius:0px">qemu-system-x86_64 -accel kvm,thre=
ad=3Dmulti -cpu host -smp 2 -m 4096 \
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
/HofCx.png">https://i.stack.imgur.com/HofCx.png</a><br></p><p style=3D"marg=
in-top:0px;margin-right:0px;margin-left:0px;padding:0px;border:0px;font-var=
iant-numeric:inherit;font-variant-east-asian:inherit;font-stretch:inherit;l=
ine-height:inherit;font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe=
 UI Adjusted&quot;,&quot;Segoe UI&quot;,&quot;Liberation Sans&quot;,sans-se=
rif;font-size:15px;vertical-align:baseline;box-sizing:inherit;clear:both;co=
lor:rgb(35,38,41)">But I do not see this screen when I use spice using:</p>=
<pre style=3D"margin-top:0px;border:0px;font-variant-numeric:inherit;font-v=
ariant-east-asian:inherit;font-stretch:inherit;vertical-align:baseline;box-=
sizing:inherit;width:auto;max-height:600px;overflow:auto"><code style=3D"ma=
rgin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;fon=
t-weight:inherit;font-stretch:inherit;line-height:inherit;vertical-align:ba=
seline;box-sizing:inherit;background-color:transparent;white-space:inherit;=
border-radius:0px">#!/bin/bash

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
buntu_Share spice://<a href=3D"http://127.0.0.1:5911">127.0.0.1:5911</a> &g=
t; /dev/null 2&gt;&amp;1 &amp;
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

--00000000000043f50005dd9f064c--
