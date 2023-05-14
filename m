Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4120A701C0C
	for <lists+spice-devel@lfdr.de>; Sun, 14 May 2023 09:07:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B351B10E068;
	Sun, 14 May 2023 07:07:00 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8BF610E068
 for <spice-devel@lists.freedesktop.org>; Sun, 14 May 2023 07:06:58 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id
 4fb4d7f45d1cf-50bc4bc2880so17637980a12.2
 for <spice-devel@lists.freedesktop.org>; Sun, 14 May 2023 00:06:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1684048013; x=1686640013;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=F4Md5v9BHPRzOigiq8QXp6m3A2ci9q1NtuxtnuXi9us=;
 b=RQV3aXz7C6phITHVEtggiZEAYsy+UTqP28b0QHDqphXs1C9vsrGvg1BaeF7qPo3gGB
 j42vgJh0pKiuYR/jGiOcQAtEBljI/zlm6XcDWG21muVTspX1f0FFPKy4/qaN3Mo6Rach
 PJEcTTE8LX3j+g6ZKtsPrCtSxPURpiBU72eV4t1HJFve5BOcdtx5fwgmf5jnTXH0iFao
 Dnn9y3fCD3peCfWdUvkFiqFkNtdzFLbO4WqDlQs6mk8FBhWzRfWdCkKvGpry3nj2ZkKG
 NMy8C9+FTXsmflBp1Cl9LWdq19bGtGsWFOQBTlVj3rZMpLcPEeBFvWHQ6Sh7Zf13arW0
 cQiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684048013; x=1686640013;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=F4Md5v9BHPRzOigiq8QXp6m3A2ci9q1NtuxtnuXi9us=;
 b=SqzEMF4d1pQOhD/oXgNvR2bM5mCSzTMloyUlUhsJIR5+s7Q/R/SZTh2vSX+i23g6YZ
 hg542sTWI6ULEdhOz9qrtLcEpT6fewkZ+ee0EVO9B68AVuq3mWw2Pb3t03FrzLulchSD
 x9jMEtvf3tk7fnud6iKZNlwa12DluJSNUn6nP0QW6TyYqKd9Gp6b6pZt5jfyXaXm6cOU
 of8EfZ4x0zFKDcLfTt4XZz/jsCj+C0PLXbvrcnWo+o6Ct0PSVuAxAbao43pHOB7hnbys
 bXuNnBvjRj62MOKLAXxfA91up/tBt5vMm9ZdIn8UyJ8M7W3xlT2Al3ArjULspZcTVAmk
 JQmg==
X-Gm-Message-State: AC+VfDwwxXTNa3ZvzXG6oH+NJNytI2GgUOn4Twhh9uPF7NT39it2Fpr7
 JcJHYB3A/ovO4kNPag/mLtMdkMndAPhuJqZ4dB9DERzhDUwyJw==
X-Google-Smtp-Source: ACHHUZ51oohHV+mPv4/cflK9nXISVAmz8tX8Ujq70EK0+fY/Nd+j5eKo++mTajchKuh1m98uHYOf1J1XrbA6Wjhbocs=
X-Received: by 2002:a17:907:d89:b0:966:168d:8c9 with SMTP id
 go9-20020a1709070d8900b00966168d08c9mr25399296ejc.32.1684048013331; Sun, 14
 May 2023 00:06:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAHAhJw+WJ5gRMDRL1nXep1P+UE8FDd_vfeALtgYkG5FKh6mC-g@mail.gmail.com>
 <CAHAhJwJDFypx_WL-ANfb8HfgGkRbwBy6soN_1DZ6nNDgsnSfQQ@mail.gmail.com>
 <CAHt6W4dAQX5sk5BTir6nb_SXqnevHm5ZBmrL5+Xoh6hVrbg2sw@mail.gmail.com>
In-Reply-To: <CAHt6W4dAQX5sk5BTir6nb_SXqnevHm5ZBmrL5+Xoh6hVrbg2sw@mail.gmail.com>
From: Ahmad Ismail <ismail783@gmail.com>
Date: Sun, 14 May 2023 13:06:41 +0600
Message-ID: <CAHAhJwK8WmjrJaxQa+KKeWgyG5g40Du0NH2SfAwvm07Ppmf3vQ@mail.gmail.com>
To: Frediano Ziglio <freddy77@gmail.com>
Content-Type: multipart/alternative; boundary="0000000000009e935f05fba1fbeb"
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
Cc: spice-devel@lists.freedesktop.org
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--0000000000009e935f05fba1fbeb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I found the options

spice-vdagent -f "/home/ismail/Downloads"  -o 1

Thank you very much.


*Best Regards,Ahmad Ismail*


On Sun, May 14, 2023 at 1:20=E2=80=AFAM Frediano Ziglio <freddy77@gmail.com=
> wrote:

> Il giorno sab 13 mag 2023 alle ore 12:17 Ahmad Ismail
> <ismail783@gmail.com> ha scritto:
> >
> > Just to be clear, copy-paste text between guest and host works. drag an=
d
> drop text between guest and host does not work. In the case of files,
> neither copy-paste nor drag and drop work.
> >
> > Thanks and Best Regards,
> >
> > Ahmad Ismail
> >
> >
>
> Hi,
>    drag&drop from host to guest should work, not the opposite. Note
> that there's an option to pass to spice-vdagent to enable drag&drop
> (from host to guest).
>
> Frediano
>
> >
> > On Sat, May 13, 2023 at 5:10=E2=80=AFPM Ahmad Ismail <ismail783@gmail.c=
om>
> wrote:
> >>
> >>
> >>
> >> The documentation says:
> >>
> >>     Installing the Spice vdagent in your guest will let you copy and
> paste between your guest and client OSes, to drag and drop files between
> the 2 OSes, =E2=80=A6 In order for the agent to work, your virtual machin=
e must
> have a virtio serial device (and the corresponding guest drivers) as well
> as a Spice spicevmc channel.
> >>
> >> It also says:
> >>
> >>     Agent support allows better integration with the guest. For
> example, it allows copy and paste between the guest and the host OSes,
> dynamic resolution changes when the client window is resized/full-screene=
d,
> file transfers through drag and drop, =E2=80=A6
> >>
> >>     The agent is a daemon/service running in the guest OS so it must b=
e
> installed if it was not installed by default during the guest OS
> installation. It also relies on a virtio-serial PCI device and a dedicate=
d
> spicevmc char device to achieve communication between the guest and the
> host. These devices must be added to the virtual machine for the agent to
> work in the guest.
> >>
> >> I have installed all the necessities in the guest. And then enabled th=
e
> services.
> >>
> >> sudo apt install qemu-guest-agent spice-vdagent spice-webdavd
> >>
> >> sudo systemctl start spice-vdagent
> >> sudo systemctl enable spice-vdagent
> >>
> >> sudo systemctl start qemu-guest-agent
> >> sudo systemctl enable qemu-guest-agent
> >>
> >> sudo systemctl start spice-webdavd
> >> sudo systemctl enable spice-webdavd
> >>
> >> Started the vm with the following script.
> >>
> >> #!/bin/bash
> >>
> >> QEMU_AUDIO_DRV=3Dspice
> >>
> >> qemu-system-x86_64 -accel kvm,thread=3Dmulti -cpu host -smp 2 -m 8192 =
\
> >> -drive
> file=3D/media/ismail/SSDWorking/_QEMU/vm_mint.qcow2,format=3Dqcow2,if=3Dv=
irtio \
> >> -machine vmport=3Doff \
> >> -vga virtio -usb -device qemu-xhci -device usb-tablet \
> >> -soundhw hda \
> >> -spice port=3D5911,addr=3D127.0.0.1,disable-ticketing \
> >> -device virtio-serial-pci \
> >> -chardev spicevmc,id=3Dspicechannel0,debug=3D0,name=3Dvdagent \
> >> -device virtserialport,chardev=3Dspicechannel0,name=3Dcom.redhat.spice=
.0 \
> >> -device
> virtserialport,chardev=3Dcharchannel1,id=3Dchannel1,name=3Dorg.spice-spac=
e.webdav.0
> \
> >> -chardev spiceport,name=3Dorg.spice-space.webdav.0,id=3Dcharchannel1 \
> >> -chardev socket,path=3D/tmp/qga.sock,server=3Don,wait=3Doff,id=3Dqga0 =
\
> >> -device virtio-serial \
> >> -device virtserialport,chardev=3Dqga0,name=3Dorg.qemu.guest_agent.0 \
> >> -daemonize
> >>
> >> remote-viewer
> --spice-shared-dir=3D/media/ismail/SSDWorking/_QEMU/VM_Share spice://
> 127.0.0.1:5911 > /dev/null 2>&1 &
> >>
> >> Now dynamic resolution changes work. However, drag and drop and
> copy-paste between guest and host does not work.
> >>
> >> What might be the reason?
> >>
> >>
> >> Thanks and Best Regards,
> >>
> >> Ahmad Ismail
>

--0000000000009e935f05fba1fbeb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I found the options=C2=A0<div><br><div>spice-vdagent -f &q=
uot;/home/ismail/Downloads&quot; =C2=A0-o 1</div><div><br></div><div>Thank =
you very much.</div><div><br clear=3D"all"><div><div dir=3D"ltr" class=3D"g=
mail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><b styl=
e=3D"font-weight:normal"><p dir=3D"ltr" style=3D"line-height:1.38;margin-to=
p:0pt;margin-bottom:0pt"><span style=3D"background-color:transparent;color:=
rgb(0,0,0);font-family:Arial;font-size:10pt;white-space:pre-wrap">Best Rega=
rds,</span><br></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;=
margin-bottom:0pt"><span style=3D"font-size:10pt;font-family:Arial;color:rg=
b(0,0,0);background-color:transparent;font-weight:400;font-style:normal;fon=
t-variant:normal;text-decoration:none;vertical-align:baseline;white-space:p=
re-wrap">Ahmad Ismail</span></p></b></div></div></div><br></div></div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Su=
n, May 14, 2023 at 1:20=E2=80=AFAM Frediano Ziglio &lt;<a href=3D"mailto:fr=
eddy77@gmail.com">freddy77@gmail.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex">Il giorno sab 13 mag 2023 alle ore 12:1=
7 Ahmad Ismail<br>
&lt;<a href=3D"mailto:ismail783@gmail.com" target=3D"_blank">ismail783@gmai=
l.com</a>&gt; ha scritto:<br>
&gt;<br>
&gt; Just to be clear, copy-paste text between guest and host works. drag a=
nd drop text between guest and host does not work. In the case of files, ne=
ither copy-paste nor drag and drop work.<br>
&gt;<br>
&gt; Thanks and Best Regards,<br>
&gt;<br>
&gt; Ahmad Ismail<br>
&gt;<br>
&gt;<br>
<br>
Hi,<br>
=C2=A0 =C2=A0drag&amp;drop from host to guest should work, not the opposite=
. Note<br>
that there&#39;s an option to pass to spice-vdagent to enable drag&amp;drop=
<br>
(from host to guest).<br>
<br>
Frediano<br>
<br>
&gt;<br>
&gt; On Sat, May 13, 2023 at 5:10=E2=80=AFPM Ahmad Ismail &lt;<a href=3D"ma=
ilto:ismail783@gmail.com" target=3D"_blank">ismail783@gmail.com</a>&gt; wro=
te:<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; The documentation says:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0Installing the Spice vdagent in your guest will=
 let you copy and paste between your guest and client OSes, to drag and dro=
p files between the 2 OSes, =E2=80=A6 In order for the agent to work, your =
virtual machine must have a virtio serial device (and the corresponding gue=
st drivers) as well as a Spice spicevmc channel.<br>
&gt;&gt;<br>
&gt;&gt; It also says:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0Agent support allows better integration with th=
e guest. For example, it allows copy and paste between the guest and the ho=
st OSes, dynamic resolution changes when the client window is resized/full-=
screened, file transfers through drag and drop, =E2=80=A6<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0The agent is a daemon/service running in the gu=
est OS so it must be installed if it was not installed by default during th=
e guest OS installation. It also relies on a virtio-serial PCI device and a=
 dedicated spicevmc char device to achieve communication between the guest =
and the host. These devices must be added to the virtual machine for the ag=
ent to work in the guest.<br>
&gt;&gt;<br>
&gt;&gt; I have installed all the necessities in the guest. And then enable=
d the services.<br>
&gt;&gt;<br>
&gt;&gt; sudo apt install qemu-guest-agent spice-vdagent spice-webdavd<br>
&gt;&gt;<br>
&gt;&gt; sudo systemctl start spice-vdagent<br>
&gt;&gt; sudo systemctl enable spice-vdagent<br>
&gt;&gt;<br>
&gt;&gt; sudo systemctl start qemu-guest-agent<br>
&gt;&gt; sudo systemctl enable qemu-guest-agent<br>
&gt;&gt;<br>
&gt;&gt; sudo systemctl start spice-webdavd<br>
&gt;&gt; sudo systemctl enable spice-webdavd<br>
&gt;&gt;<br>
&gt;&gt; Started the vm with the following script.<br>
&gt;&gt;<br>
&gt;&gt; #!/bin/bash<br>
&gt;&gt;<br>
&gt;&gt; QEMU_AUDIO_DRV=3Dspice<br>
&gt;&gt;<br>
&gt;&gt; qemu-system-x86_64 -accel kvm,thread=3Dmulti -cpu host -smp 2 -m 8=
192 \<br>
&gt;&gt; -drive file=3D/media/ismail/SSDWorking/_QEMU/vm_mint.qcow2,format=
=3Dqcow2,if=3Dvirtio \<br>
&gt;&gt; -machine vmport=3Doff \<br>
&gt;&gt; -vga virtio -usb -device qemu-xhci -device usb-tablet \<br>
&gt;&gt; -soundhw hda \<br>
&gt;&gt; -spice port=3D5911,addr=3D127.0.0.1,disable-ticketing \<br>
&gt;&gt; -device virtio-serial-pci \<br>
&gt;&gt; -chardev spicevmc,id=3Dspicechannel0,debug=3D0,name=3Dvdagent \<br=
>
&gt;&gt; -device virtserialport,chardev=3Dspicechannel0,name=3Dcom.redhat.s=
pice.0 \<br>
&gt;&gt; -device virtserialport,chardev=3Dcharchannel1,id=3Dchannel1,name=
=3Dorg.spice-space.webdav.0 \<br>
&gt;&gt; -chardev spiceport,name=3Dorg.spice-space.webdav.0,id=3Dcharchanne=
l1 \<br>
&gt;&gt; -chardev socket,path=3D/tmp/qga.sock,server=3Don,wait=3Doff,id=3Dq=
ga0 \<br>
&gt;&gt; -device virtio-serial \<br>
&gt;&gt; -device virtserialport,chardev=3Dqga0,name=3Dorg.qemu.guest_agent.=
0 \<br>
&gt;&gt; -daemonize<br>
&gt;&gt;<br>
&gt;&gt; remote-viewer --spice-shared-dir=3D/media/ismail/SSDWorking/_QEMU/=
VM_Share spice://<a href=3D"http://127.0.0.1:5911" rel=3D"noreferrer" targe=
t=3D"_blank">127.0.0.1:5911</a> &gt; /dev/null 2&gt;&amp;1 &amp;<br>
&gt;&gt;<br>
&gt;&gt; Now dynamic resolution changes work. However, drag and drop and co=
py-paste between guest and host does not work.<br>
&gt;&gt;<br>
&gt;&gt; What might be the reason?<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Thanks and Best Regards,<br>
&gt;&gt;<br>
&gt;&gt; Ahmad Ismail<br>
</blockquote></div>

--0000000000009e935f05fba1fbeb--
