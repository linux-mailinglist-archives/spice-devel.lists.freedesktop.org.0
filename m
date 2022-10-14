Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A2A5FF0D8
	for <lists+spice-devel@lfdr.de>; Fri, 14 Oct 2022 17:11:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9A1B10E2B0;
	Fri, 14 Oct 2022 15:11:40 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com
 [IPv6:2a00:1450:4864:20::42c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60D2310E2B0
 for <spice-devel@lists.freedesktop.org>; Fri, 14 Oct 2022 15:11:37 +0000 (UTC)
Received: by mail-wr1-x42c.google.com with SMTP id w18so8029824wro.7
 for <spice-devel@lists.freedesktop.org>; Fri, 14 Oct 2022 08:11:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=LAbiV7oro/RRmlGfKt42DyAH3BMivV1nO10VgRkOhg0=;
 b=TqG6u0lvXKEln02hnsG0x4nsh53s5Lek6n2oOt2l/B5LfmZ1fHD1zg99y5J21ao9Vz
 8aluwnisep7Pj16xgAC69AFYcy+Pz8/8ghxYxrMOQN5s6iBHC6doq8PEVEBKiQFbP4/C
 nbNNS+Sn64w5ViPTvNLB1wMUZOcCXMU/iCDd9wYRDFIEkpnk7uxL1gKLQBouAaf5qg33
 sBrEdM3NPYU8gzw7p7K6TTg3sScTEuVQwpBGxFpIpzqmtFviy/P1AyLDfaFVlVMdrgdW
 ZaCA/fc6qO3hJ9yg/HowzxK1+UOdqp3qknHblc6f9M7qjswtbmjLM7LRtfRFPiwKkaUA
 xomw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=LAbiV7oro/RRmlGfKt42DyAH3BMivV1nO10VgRkOhg0=;
 b=yA8ARORUuuB1blbrm/UadAZLoO13qMe7ANjNKD1ByyJIBx/RldV+eW3qRL7sN8lc+H
 q521pXTz00P/AG0ybdpksMfL+40y4xZ4EDel8YZ3/wz+FOf8Qe4nKsQoq/CJ6RTd+lLN
 9n+9yfvq547u+8Z5UzI0yY/R2Qd0YnJkD7osFnTPR2uPTeemSWdqdBRc7UOx3eiU79cv
 LpfLj0kWGQresAdc4oz3eyr22HzwD+Wec4WNeGPih/eDZShXhI5+jbY/n35aoP+rCp1p
 HFE2oz8dmTKF+dsGwbRpdrWIxSRJso1PoQGuF7Z1WlhlM4qhbfy/iHZPypXdBPsUK1Zf
 vrDg==
X-Gm-Message-State: ACrzQf2D04lvUJS84EZxEsKnc0FcQ7hSDbnYpsmLpC0uroXIZGVWGgaB
 LFktyMF5azAKbdKVxJfWOXEu2kZruztHahvI8XZzwV6MNwY=
X-Google-Smtp-Source: AMsMyM6nw6jRb4CKdcav4XYpZeQdTbh+ANUJjoeXyxKEThzpQlIx5AGwpXBVAhxLT1DzKRep1rZx3F2B8EQMLfH4wgA=
X-Received: by 2002:adf:e0cb:0:b0:22e:2e7e:e57d with SMTP id
 m11-20020adfe0cb000000b0022e2e7ee57dmr3868563wri.170.1665760295345; Fri, 14
 Oct 2022 08:11:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAGeBE=w-KZXVACD6xeeqfoo03K5BZxzA8O2U5x-8=NLsR=ZQKw@mail.gmail.com>
 <CAHt6W4dkGkFVDBQbMFN0+AD24OB18uxhhQC5n4u51PiJGnAi8g@mail.gmail.com>
In-Reply-To: <CAHt6W4dkGkFVDBQbMFN0+AD24OB18uxhhQC5n4u51PiJGnAi8g@mail.gmail.com>
From: =?UTF-8?Q?Carlos_Gonz=C3=A1lez?= <piteccelaya@gmail.com>
Date: Fri, 14 Oct 2022 15:11:24 +0000
Message-ID: <CAGeBE=y4HKusjFMYez9uGEzEMm_9uhgDeW5uakB-bErUWcPoJQ@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="000000000000af617505eb000a7b"
Subject: Re: [Spice-devel] Vdagent not working on a Debian guest
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

--000000000000af617505eb000a7b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

As soon as spice-vdagent package is installed, so is the spice-vdagentd
daemon and it also starts running. Yet I always need to manually run
spice-vdagent command...

How do I specify an output directory for the agent to file transfer?

I don't think it's remote-viewer's fault, because I also tested with a
Windows guest. With all SPICE stuff properly installed, everything works
out of the box: clipboard, resizing, file transfer from host to guest. With
"properly installed" I mean: installed SPICE drivers manually from
virtio-win ISO by loading them since the Windows installation beforehand,
then once booted into Windows downloaded the vdagent ZIP from spice-space
website and manually installed the service according to instructions.

As additional detail, in QEMU I use the option "-display spice-app", which
automatically starts remote-viewer; though curiously it doesn't seem to
create a virt-viewer directory inside ~/.config unlike when running
remote-viewer manually...

Thanks again.

El vie, 14 oct 2022 a las 12:41, Frediano Ziglio (<freddy77@gmail.com>)
escribi=C3=B3:

> Il giorno gio 13 ott 2022 alle ore 16:58 Carlos Gonz=C3=A1lez
> <piteccelaya@gmail.com> ha scritto:
> >
> > Hello.
> >
> > I'm trying a virtual machine with a live CD distribution called AntiX
> Linux, which is directly based on Debian.
> >
> > I'm using direct QEMU commands.
> > In the VM configuration I have this for SPICE configuration:
> > "-vga qxl -device virtio-serial-pci -spice
> unix=3Don,addr=3Dpath/to/vm_spice.socket,disable-ticketing=3Don -chardev
> spicevmc,id=3Dspicechannel0,name=3Dvdagent -device
> virtserialport,chardev=3Dspicechannel0,name=3Dcom.redhat.spice.0 \"
> > Then I boot the live ISO, double check that QXL driver is installed
> -which normally always is-, and install spice-vdagent package (version 20
> here). I'm using remote-viewer (virt-viewer) to visualize the VM.
> >
> > Up to this point, clipboard sharing with host still doesn't work, and
> trying to drag a file from host to guest results in an error "The agent i=
s
> not connected".
> >
>
> This error is normal if the agent is stopped.
>
> > So I manually run "spice-vdagent" command, and clipboard sharing now
> works, but trying to drag file from host to guest gives "File transfer is
> disabled". Also, automatic resolution change with window resizing doesn't
> work either.
> >
>
> The fact that in this way the clipboard is running indicates that the
> agent is now working. You need to specify an output directory to the
> agent in order to get file transfer working.
> About the resolution change that's weird, I think that feature on
> Linux does not even require the agent running. Is it possible that the
> client (remove-viewer) is not set up to send resize to the guest
> automatically, there are some options on the menu.
>
> > Certainly, this live distro doesn't come with any spice-related package=
s
> installed by default, except for the QXL package.
> >
> > Am I missing something here? Could someone help please?
> > Thanks beforehand.
>
> Frediano
>

--000000000000af617505eb000a7b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>As soon as spice-vdagent package is installed, so is =
the spice-vdagentd daemon and it also starts running. Yet I always need to =
manually run spice-vdagent command...</div><div><br></div><div>How do I spe=
cify an output directory for the agent to file transfer?</div><div><br></di=
v><div>I don&#39;t think it&#39;s remote-viewer&#39;s fault, because I also=
 tested with a Windows guest. With all SPICE stuff properly installed, ever=
ything works out of the box: clipboard, resizing, file transfer from host t=
o guest. With &quot;properly installed&quot; I mean: installed SPICE driver=
s manually from virtio-win ISO by loading them since the Windows installati=
on beforehand, then once booted into Windows downloaded the vdagent ZIP fro=
m spice-space website and manually installed the service according to instr=
uctions.</div><div><br></div><div>As additional detail, in QEMU I use the o=
ption &quot;-display spice-app&quot;, which automatically starts remote-vie=
wer; though curiously it doesn&#39;t seem to create a virt-viewer directory=
 inside ~/.config unlike when running remote-viewer manually...</div><div><=
br></div><div>Thanks again.<br></div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">El vie, 14 oct 2022 a las 12:41, Fredi=
ano Ziglio (&lt;<a href=3D"mailto:freddy77@gmail.com">freddy77@gmail.com</a=
>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">Il giorno gio 13 ott 2022 alle ore 16:58 Carlos Gonz=C3=A1lez<br>
&lt;<a href=3D"mailto:piteccelaya@gmail.com" target=3D"_blank">piteccelaya@=
gmail.com</a>&gt; ha scritto:<br>
&gt;<br>
&gt; Hello.<br>
&gt;<br>
&gt; I&#39;m trying a virtual machine with a live CD distribution called An=
tiX Linux, which is directly based on Debian.<br>
&gt;<br>
&gt; I&#39;m using direct QEMU commands.<br>
&gt; In the VM configuration I have this for SPICE configuration:<br>
&gt; &quot;-vga qxl -device virtio-serial-pci -spice unix=3Don,addr=3Dpath/=
to/vm_spice.socket,disable-ticketing=3Don -chardev spicevmc,id=3Dspicechann=
el0,name=3Dvdagent -device virtserialport,chardev=3Dspicechannel0,name=3Dco=
m.redhat.spice.0 \&quot;<br>
&gt; Then I boot the live ISO, double check that QXL driver is installed -w=
hich normally always is-, and install spice-vdagent package (version 20 her=
e). I&#39;m using remote-viewer (virt-viewer) to visualize the VM.<br>
&gt;<br>
&gt; Up to this point, clipboard sharing with host still doesn&#39;t work, =
and trying to drag a file from host to guest results in an error &quot;The =
agent is not connected&quot;.<br>
&gt;<br>
<br>
This error is normal if the agent is stopped.<br>
<br>
&gt; So I manually run &quot;spice-vdagent&quot; command, and clipboard sha=
ring now works, but trying to drag file from host to guest gives &quot;File=
 transfer is disabled&quot;. Also, automatic resolution change with window =
resizing doesn&#39;t work either.<br>
&gt;<br>
<br>
The fact that in this way the clipboard is running indicates that the<br>
agent is now working. You need to specify an output directory to the<br>
agent in order to get file transfer working.<br>
About the resolution change that&#39;s weird, I think that feature on<br>
Linux does not even require the agent running. Is it possible that the<br>
client (remove-viewer) is not set up to send resize to the guest<br>
automatically, there are some options on the menu.<br>
<br>
&gt; Certainly, this live distro doesn&#39;t come with any spice-related pa=
ckages installed by default, except for the QXL package.<br>
&gt;<br>
&gt; Am I missing something here? Could someone help please?<br>
&gt; Thanks beforehand.<br>
<br>
Frediano<br>
</blockquote></div>

--000000000000af617505eb000a7b--
