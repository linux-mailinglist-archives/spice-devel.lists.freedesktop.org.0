Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D12FF70165A
	for <lists+spice-devel@lfdr.de>; Sat, 13 May 2023 13:17:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 378A110E090;
	Sat, 13 May 2023 11:17:09 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7398910E08F
 for <spice-devel@lists.freedesktop.org>; Sat, 13 May 2023 11:17:07 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id
 4fb4d7f45d1cf-50db7f0a1b4so8724168a12.3
 for <spice-devel@lists.freedesktop.org>; Sat, 13 May 2023 04:17:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1683976625; x=1686568625;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=JlcEcuFWBRPgkVw1y9MLvmf8VwwWSg5UvH1wpRKdVGA=;
 b=fI3GF+rRTKKFzNRDwGRl1NHwfiATYLhMhpfcM7fmI073sRSg9a/wP5UGJ2iTHu8XMi
 S7eisuXKTqyhdBoKA7PhsIHtj9/PUxjTgWGUOjwHynm9RVSYDIgiaE5gwUR2Q1waNsGv
 rc9gwNiqEfsqd0H286xVaAFFxMPqvEEl0xIXIY8FQTlfnOaBqv6rXajN8NsCKXG+P4PL
 W194QcB61YHX8z+CQeJIBWYm4I+dbkB8IC7LdO90V6wSq/xr0J4rwMB2CTjsJ05ZRNrm
 TcaHLShvy6Jg22w0hxF2Hv/eMUxs4WVM0sxb5AHYBgn3ao3XcFUodjJoMI48FFNkAKtk
 eM5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683976625; x=1686568625;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=JlcEcuFWBRPgkVw1y9MLvmf8VwwWSg5UvH1wpRKdVGA=;
 b=U9JLwGn5/pC7GlKuLfUVPJH0fECQh/Gb886jVZY7GgABuUljO6LVMMQcrXEYOhqqQi
 aPhQ4+S+IlY2zRBQLGOl6ZhcMZEy+Jhlv6vGyYKfg6ZN59XWtrf4kXKqv9gKmi+GpkjP
 QUIlkPH7U4VaOSv0NGwikkuMPxWZ3jW10qnZAd9NZu7Wn1AQI2vp7tct27JtKBqszpfn
 vIcXv+nA8E16UPxR1LWWqreMkkKhLvdr6gGU12KmIBXOjQnxJRl6CF8Xa7xwRNbfvd2X
 ALkQ810pq9684Z7E0EPg14+4C0PDWhuQuY1Rz4T94o4EYTIh61jdXe8nzqmqYCR4n9Jc
 UXEw==
X-Gm-Message-State: AC+VfDygL4JKHFlR8+f+cf9jf3vPbqAQm0qcim/JlEFjs1z40UJQUzdH
 3jxQ9GXLJC3/KAiHNFOPhkdaMTWQZl3Ofy+twH00Bt9WlBYPmQ==
X-Google-Smtp-Source: ACHHUZ6UNHZHuS3CnwFCPOv/hO/XSvDNBrdXo86W6mK0MIU6CoApkZ3OrVqCzaDYxsc8wVVrCi/MrL7B9URHDiIlYLs=
X-Received: by 2002:a17:907:16a5:b0:94e:70bb:5f8a with SMTP id
 hc37-20020a17090716a500b0094e70bb5f8amr28479606ejc.66.1683976625186; Sat, 13
 May 2023 04:17:05 -0700 (PDT)
MIME-Version: 1.0
References: <CAHAhJw+WJ5gRMDRL1nXep1P+UE8FDd_vfeALtgYkG5FKh6mC-g@mail.gmail.com>
In-Reply-To: <CAHAhJw+WJ5gRMDRL1nXep1P+UE8FDd_vfeALtgYkG5FKh6mC-g@mail.gmail.com>
From: Ahmad Ismail <ismail783@gmail.com>
Date: Sat, 13 May 2023 17:16:54 +0600
Message-ID: <CAHAhJwJDFypx_WL-ANfb8HfgGkRbwBy6soN_1DZ6nNDgsnSfQQ@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="0000000000008ded5705fb915c68"
Subject: Re: [Spice-devel] Can not drag-drop or copy-paste between guest and
 host
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

--0000000000008ded5705fb915c68
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Just to be clear, copy-paste text between guest and host works. drag and
drop text between guest and host does not work. In the case of files,
neither copy-paste nor drag and drop work.

*Thanks and Best Regards,Ahmad Ismail*


On Sat, May 13, 2023 at 5:10=E2=80=AFPM Ahmad Ismail <ismail783@gmail.com> =
wrote:

>
>
> The documentation says:
>
>     Installing the Spice vdagent in your guest will let you copy and past=
e
> between your guest and client OSes, to drag and drop files between the 2
> OSes, =E2=80=A6 In order for the agent to work, your virtual machine must=
 have a
> virtio serial device (and the corresponding guest drivers) as well as a
> Spice spicevmc channel.
>
> It also says:
>
>     Agent support allows better integration with the guest. For example,
> it allows copy and paste between the guest and the host OSes, dynamic
> resolution changes when the client window is resized/full-screened, file
> transfers through drag and drop, =E2=80=A6
>
>     The agent is a daemon/service running in the guest OS so it must be
> installed if it was not installed by default during the guest OS
> installation. It also relies on a virtio-serial PCI device and a dedicate=
d
> spicevmc char device to achieve communication between the guest and the
> host. These devices must be added to the virtual machine for the agent to
> work in the guest.
>
> I have installed all the necessities in the guest. And then enabled the
> services.
>
> sudo apt install qemu-guest-agent spice-vdagent spice-webdavd
>
> sudo systemctl start spice-vdagent
> sudo systemctl enable spice-vdagent
>
> sudo systemctl start qemu-guest-agent
> sudo systemctl enable qemu-guest-agent
>
> sudo systemctl start spice-webdavd
> sudo systemctl enable spice-webdavd
>
> Started the vm with the following script.
>
> #!/bin/bash
>
> QEMU_AUDIO_DRV=3Dspice
>
> qemu-system-x86_64 -accel kvm,thread=3Dmulti -cpu host -smp 2 -m 8192 \
> -drive
> file=3D/media/ismail/SSDWorking/_QEMU/vm_mint.qcow2,format=3Dqcow2,if=3Dv=
irtio \
> -machine vmport=3Doff \
> -vga virtio -usb -device qemu-xhci -device usb-tablet \
> -soundhw hda \
> -spice port=3D5911,addr=3D127.0.0.1,disable-ticketing \
> -device virtio-serial-pci \
> -chardev spicevmc,id=3Dspicechannel0,debug=3D0,name=3Dvdagent \
> -device virtserialport,chardev=3Dspicechannel0,name=3Dcom.redhat.spice.0 =
\
> -device
> virtserialport,chardev=3Dcharchannel1,id=3Dchannel1,name=3Dorg.spice-spac=
e.webdav.0
> \
> -chardev spiceport,name=3Dorg.spice-space.webdav.0,id=3Dcharchannel1 \
> -chardev socket,path=3D/tmp/qga.sock,server=3Don,wait=3Doff,id=3Dqga0 \
> -device virtio-serial \
> -device virtserialport,chardev=3Dqga0,name=3Dorg.qemu.guest_agent.0 \
> -daemonize
>
> remote-viewer --spice-shared-dir=3D/media/ismail/SSDWorking/_QEMU/VM_Shar=
e
> spice://127.0.0.1:5911 > /dev/null 2>&1 &
>
> Now dynamic resolution changes work. However, drag and drop and copy-past=
e
> between guest and host does not work.
>
> What might be the reason?
>
>
> *Thanks and Best Regards,Ahmad Ismail*
>

--0000000000008ded5705fb915c68
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Just to be clear, copy-paste text between guest and host w=
orks.=C2=A0drag and drop text between guest and host does not work. In the =
case of files, neither=C2=A0copy-paste nor drag and drop work.<div><br clea=
r=3D"all"><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D=
"gmail_signature"><div dir=3D"ltr"><b style=3D"font-weight:normal"><p dir=
=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span =
style=3D"font-size:10pt;font-family:Arial;color:rgb(0,0,0);background-color=
:transparent;font-weight:400;font-style:normal;font-variant:normal;text-dec=
oration:none;vertical-align:baseline;white-space:pre-wrap">Thanks and Best =
Regards,</span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;=
margin-bottom:0pt"><span style=3D"font-size:10pt;font-family:Arial;color:rg=
b(0,0,0);background-color:transparent;font-weight:400;font-style:normal;fon=
t-variant:normal;text-decoration:none;vertical-align:baseline;white-space:p=
re-wrap">Ahmad Ismail</span></p></b></div></div></div><br></div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, May=
 13, 2023 at 5:10=E2=80=AFPM Ahmad Ismail &lt;<a href=3D"mailto:ismail783@g=
mail.com">ismail783@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div dir=3D"ltr"><br><br>The documentation say=
s:<br><br>=C2=A0 =C2=A0 Installing the Spice vdagent in your guest will let=
 you copy and paste between your guest and client OSes, to drag and drop fi=
les between the 2 OSes, =E2=80=A6 In order for the agent to work, your virt=
ual machine must have a virtio serial device (and the corresponding guest d=
rivers) as well as a Spice spicevmc channel.<br><br>It also says:<br><br>=
=C2=A0 =C2=A0 Agent support allows better integration with the guest. For e=
xample, it allows copy and paste between the guest and the host OSes, dynam=
ic resolution changes when the client window is resized/full-screened, file=
 transfers through drag and drop, =E2=80=A6<br><br>=C2=A0 =C2=A0 The agent =
is a daemon/service running in the guest OS so it must be installed if it w=
as not installed by default during the guest OS installation. It also relie=
s on a virtio-serial PCI device and a dedicated spicevmc char device to ach=
ieve communication between the guest and the host. These devices must be ad=
ded to the virtual machine for the agent to work in the guest.<br><br>I hav=
e installed all the necessities in the guest. And then enabled the services=
.<br><br>sudo apt install qemu-guest-agent spice-vdagent spice-webdavd<br><=
br>sudo systemctl start spice-vdagent<br>sudo systemctl enable spice-vdagen=
t<br><br>sudo systemctl start qemu-guest-agent<br>sudo systemctl enable qem=
u-guest-agent<br><br>sudo systemctl start spice-webdavd<br>sudo systemctl e=
nable spice-webdavd<br><br>Started the vm with the following script.<br><br=
>#!/bin/bash<br><br>QEMU_AUDIO_DRV=3Dspice<br><br>qemu-system-x86_64 -accel=
 kvm,thread=3Dmulti -cpu host -smp 2 -m 8192 \<br>-drive file=3D/media/isma=
il/SSDWorking/_QEMU/vm_mint.qcow2,format=3Dqcow2,if=3Dvirtio \<br>-machine =
vmport=3Doff \<br>-vga virtio -usb -device qemu-xhci -device usb-tablet \<b=
r>-soundhw hda \<br>-spice port=3D5911,addr=3D127.0.0.1,disable-ticketing \=
<br>-device virtio-serial-pci \<br>-chardev spicevmc,id=3Dspicechannel0,deb=
ug=3D0,name=3Dvdagent \<br>-device virtserialport,chardev=3Dspicechannel0,n=
ame=3Dcom.redhat.spice.0 \<br>-device virtserialport,chardev=3Dcharchannel1=
,id=3Dchannel1,name=3Dorg.spice-space.webdav.0 \<br>-chardev spiceport,name=
=3Dorg.spice-space.webdav.0,id=3Dcharchannel1 \<br>-chardev socket,path=3D/=
tmp/qga.sock,server=3Don,wait=3Doff,id=3Dqga0 \<br>-device virtio-serial \<=
br>-device virtserialport,chardev=3Dqga0,name=3Dorg.qemu.guest_agent.0 \<br=
>-daemonize<br><br>remote-viewer --spice-shared-dir=3D/media/ismail/SSDWork=
ing/_QEMU/VM_Share spice://<a href=3D"http://127.0.0.1:5911" target=3D"_bla=
nk">127.0.0.1:5911</a> &gt; /dev/null 2&gt;&amp;1 &amp;<br><br>Now dynamic =
resolution changes work. However, drag and drop and copy-paste between gues=
t and host does not work.<br><br>What might be the reason?<br><div><div dir=
=3D"ltr"><div dir=3D"ltr"><b style=3D"font-weight:normal"><p dir=3D"ltr" st=
yle=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"fo=
nt-size:10pt;font-family:Arial;color:rgb(0,0,0);background-color:transparen=
t;font-weight:400;font-style:normal;font-variant:normal;text-decoration:non=
e;vertical-align:baseline;white-space:pre-wrap"><br></span></p><p dir=3D"lt=
r" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=
=3D"font-size:10pt;font-family:Arial;color:rgb(0,0,0);background-color:tran=
sparent;font-weight:400;font-style:normal;font-variant:normal;text-decorati=
on:none;vertical-align:baseline;white-space:pre-wrap">Thanks and Best Regar=
ds,</span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margi=
n-bottom:0pt"><span style=3D"font-size:10pt;font-family:Arial;color:rgb(0,0=
,0);background-color:transparent;font-weight:400;font-style:normal;font-var=
iant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wr=
ap">Ahmad Ismail</span></p></b></div></div></div></div>
</blockquote></div>

--0000000000008ded5705fb915c68--
