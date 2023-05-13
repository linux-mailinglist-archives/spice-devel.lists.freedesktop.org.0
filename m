Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CBABB701656
	for <lists+spice-devel@lfdr.de>; Sat, 13 May 2023 13:10:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 874B310E08E;
	Sat, 13 May 2023 11:10:30 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9626E10E08E
 for <spice-devel@lists.freedesktop.org>; Sat, 13 May 2023 11:10:28 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id
 a640c23a62f3a-965a68abfd4so2066742666b.2
 for <spice-devel@lists.freedesktop.org>; Sat, 13 May 2023 04:10:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1683976225; x=1686568225;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=w7iVA9MOcRZxt/4/0UdGDMFHl5s2mXbX6Q2ZlARCsj8=;
 b=SYmxAR2JTCGvGnGVpts0QJKx+7A/MBdtCnrGV+/b/3vNvNawfcA6Ym9zdMd9NWvj5b
 bdC+xrRgsrIXKibKNvo2EC+XOUxdxzZ5sU0EKkx+BiVrbmRIAxV3zNQp0ztU9hCfegsJ
 JdBurfxtV4bh/yMLuP7Mox+AHlE3xjz2t46SahWDiRP04hpCvpzBIS5rajvm2pTUbV38
 Js3KMM83lGIp1+qXUEsYG+MWMWfcNK2938R3oWqc/S6ENQKcb9PiBjRzemS4jzXorNqy
 qtNvH2agqa4e/U0095nUwxCUR2nHDyZGaP4a8yVuOEvnAecGbt+6u67Bqe0FIXmxeN1w
 Ailw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683976225; x=1686568225;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=w7iVA9MOcRZxt/4/0UdGDMFHl5s2mXbX6Q2ZlARCsj8=;
 b=PnoDzbg+CVocsTbQjd65ml1oMgq/eKV21gNpWKFo8Dee+A0FVdAo5ojM3U6HT7Gyfw
 xtpjv45gxR3iY4afbRABWsJ+k5KkaqKlT0vNo09D0xTAWi5n2f9hLysc8pFSFR3FwN75
 oQIiD2PQXfrwKmEsWiigrohnFxGSlmRoWA9r9UtAwuzRNWf0UMZAeXL2bqpNJeTZpf9Q
 Yi75H2uLCIs6fXwzxUGUAN6JbudFgKvTRpqw0jUNlK0ibwBidC54MBhNpHLN1fFQkiN2
 op21QofUDQlriPpjuYXrHTGzu0fN5yhOtgqwsx7P9l+oyayg9rxOljogNvlPR8uDR7L6
 47KQ==
X-Gm-Message-State: AC+VfDzBTc8B/HZwbguAIKmeuLfJ8yD6+AFat/+WyLNv6cKg5mbp0ja2
 BOcSuSPG5OaBI60CFZf5BbMf1NNStbbYgHQ/VKnCE3b0Gl5p9w==
X-Google-Smtp-Source: ACHHUZ4N2zRLP75DIvmTqoDe4pv1IMf/68ED8DP2PFu3azXiEb+C0gg7w/Bv6CMU5fXrV1wCqNCUdtyk7FO+qcF0n7o=
X-Received: by 2002:a17:907:360a:b0:960:7643:c973 with SMTP id
 bk10-20020a170907360a00b009607643c973mr23409472ejc.66.1683976224725; Sat, 13
 May 2023 04:10:24 -0700 (PDT)
MIME-Version: 1.0
From: Ahmad Ismail <ismail783@gmail.com>
Date: Sat, 13 May 2023 17:10:13 +0600
Message-ID: <CAHAhJw+WJ5gRMDRL1nXep1P+UE8FDd_vfeALtgYkG5FKh6mC-g@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="000000000000af60c605fb91448d"
Subject: [Spice-devel] Can not drag-drop or copy-paste between guest and host
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

--000000000000af60c605fb91448d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The documentation says:

    Installing the Spice vdagent in your guest will let you copy and paste
between your guest and client OSes, to drag and drop files between the 2
OSes, =E2=80=A6 In order for the agent to work, your virtual machine must h=
ave a
virtio serial device (and the corresponding guest drivers) as well as a
Spice spicevmc channel.

It also says:

    Agent support allows better integration with the guest. For example, it
allows copy and paste between the guest and the host OSes, dynamic
resolution changes when the client window is resized/full-screened, file
transfers through drag and drop, =E2=80=A6

    The agent is a daemon/service running in the guest OS so it must be
installed if it was not installed by default during the guest OS
installation. It also relies on a virtio-serial PCI device and a dedicated
spicevmc char device to achieve communication between the guest and the
host. These devices must be added to the virtual machine for the agent to
work in the guest.

I have installed all the necessities in the guest. And then enabled the
services.

sudo apt install qemu-guest-agent spice-vdagent spice-webdavd

sudo systemctl start spice-vdagent
sudo systemctl enable spice-vdagent

sudo systemctl start qemu-guest-agent
sudo systemctl enable qemu-guest-agent

sudo systemctl start spice-webdavd
sudo systemctl enable spice-webdavd

Started the vm with the following script.

#!/bin/bash

QEMU_AUDIO_DRV=3Dspice

qemu-system-x86_64 -accel kvm,thread=3Dmulti -cpu host -smp 2 -m 8192 \
-drive
file=3D/media/ismail/SSDWorking/_QEMU/vm_mint.qcow2,format=3Dqcow2,if=3Dvir=
tio \
-machine vmport=3Doff \
-vga virtio -usb -device qemu-xhci -device usb-tablet \
-soundhw hda \
-spice port=3D5911,addr=3D127.0.0.1,disable-ticketing \
-device virtio-serial-pci \
-chardev spicevmc,id=3Dspicechannel0,debug=3D0,name=3Dvdagent \
-device virtserialport,chardev=3Dspicechannel0,name=3Dcom.redhat.spice.0 \
-device
virtserialport,chardev=3Dcharchannel1,id=3Dchannel1,name=3Dorg.spice-space.=
webdav.0
\
-chardev spiceport,name=3Dorg.spice-space.webdav.0,id=3Dcharchannel1 \
-chardev socket,path=3D/tmp/qga.sock,server=3Don,wait=3Doff,id=3Dqga0 \
-device virtio-serial \
-device virtserialport,chardev=3Dqga0,name=3Dorg.qemu.guest_agent.0 \
-daemonize

remote-viewer --spice-shared-dir=3D/media/ismail/SSDWorking/_QEMU/VM_Share
spice://127.0.0.1:5911 > /dev/null 2>&1 &

Now dynamic resolution changes work. However, drag and drop and copy-paste
between guest and host does not work.

What might be the reason?


*Thanks and Best Regards,Ahmad Ismail*

--000000000000af60c605fb91448d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>The documentation says:<br><br>=C2=A0 =C2=A0 Insta=
lling the Spice vdagent in your guest will let you copy and paste between y=
our guest and client OSes, to drag and drop files between the 2 OSes, =E2=
=80=A6 In order for the agent to work, your virtual machine must have a vir=
tio serial device (and the corresponding guest drivers) as well as a Spice =
spicevmc channel.<br><br>It also says:<br><br>=C2=A0 =C2=A0 Agent support a=
llows better integration with the guest. For example, it allows copy and pa=
ste between the guest and the host OSes, dynamic resolution changes when th=
e client window is resized/full-screened, file transfers through drag and d=
rop, =E2=80=A6<br><br>=C2=A0 =C2=A0 The agent is a daemon/service running i=
n the guest OS so it must be installed if it was not installed by default d=
uring the guest OS installation. It also relies on a virtio-serial PCI devi=
ce and a dedicated spicevmc char device to achieve communication between th=
e guest and the host. These devices must be added to the virtual machine fo=
r the agent to work in the guest.<br><br>I have installed all the necessiti=
es in the guest. And then enabled the services.<br><br>sudo apt install qem=
u-guest-agent spice-vdagent spice-webdavd<br><br>sudo systemctl start spice=
-vdagent<br>sudo systemctl enable spice-vdagent<br><br>sudo systemctl start=
 qemu-guest-agent<br>sudo systemctl enable qemu-guest-agent<br><br>sudo sys=
temctl start spice-webdavd<br>sudo systemctl enable spice-webdavd<br><br>St=
arted the vm with the following script.<br><br>#!/bin/bash<br><br>QEMU_AUDI=
O_DRV=3Dspice<br><br>qemu-system-x86_64 -accel kvm,thread=3Dmulti -cpu host=
 -smp 2 -m 8192 \<br>-drive file=3D/media/ismail/SSDWorking/_QEMU/vm_mint.q=
cow2,format=3Dqcow2,if=3Dvirtio \<br>-machine vmport=3Doff \<br>-vga virtio=
 -usb -device qemu-xhci -device usb-tablet \<br>-soundhw hda \<br>-spice po=
rt=3D5911,addr=3D127.0.0.1,disable-ticketing \<br>-device virtio-serial-pci=
 \<br>-chardev spicevmc,id=3Dspicechannel0,debug=3D0,name=3Dvdagent \<br>-d=
evice virtserialport,chardev=3Dspicechannel0,name=3Dcom.redhat.spice.0 \<br=
>-device virtserialport,chardev=3Dcharchannel1,id=3Dchannel1,name=3Dorg.spi=
ce-space.webdav.0 \<br>-chardev spiceport,name=3Dorg.spice-space.webdav.0,i=
d=3Dcharchannel1 \<br>-chardev socket,path=3D/tmp/qga.sock,server=3Don,wait=
=3Doff,id=3Dqga0 \<br>-device virtio-serial \<br>-device virtserialport,cha=
rdev=3Dqga0,name=3Dorg.qemu.guest_agent.0 \<br>-daemonize<br><br>remote-vie=
wer --spice-shared-dir=3D/media/ismail/SSDWorking/_QEMU/VM_Share spice://<a=
 href=3D"http://127.0.0.1:5911">127.0.0.1:5911</a> &gt; /dev/null 2&gt;&amp=
;1 &amp;<br><br>Now dynamic resolution changes work. However, drag and drop=
 and copy-paste between guest and host does not work.<br><br>What might be =
the reason?<br><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartma=
il=3D"gmail_signature"><div dir=3D"ltr"><b style=3D"font-weight:normal"><p =
dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><sp=
an style=3D"font-size:10pt;font-family:Arial;color:rgb(0,0,0);background-co=
lor:transparent;font-weight:400;font-style:normal;font-variant:normal;text-=
decoration:none;vertical-align:baseline;white-space:pre-wrap"><br></span></=
p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt=
"><span style=3D"font-size:10pt;font-family:Arial;color:rgb(0,0,0);backgrou=
nd-color:transparent;font-weight:400;font-style:normal;font-variant:normal;=
text-decoration:none;vertical-align:baseline;white-space:pre-wrap">Thanks a=
nd Best Regards,</span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-=
top:0pt;margin-bottom:0pt"><span style=3D"font-size:10pt;font-family:Arial;=
color:rgb(0,0,0);background-color:transparent;font-weight:400;font-style:no=
rmal;font-variant:normal;text-decoration:none;vertical-align:baseline;white=
-space:pre-wrap">Ahmad Ismail</span></p></b></div></div></div></div>

--000000000000af60c605fb91448d--
