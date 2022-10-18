Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 08ABE601E12
	for <lists+spice-devel@lfdr.de>; Tue, 18 Oct 2022 02:04:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8128E89A72;
	Tue, 18 Oct 2022 00:04:29 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com
 [IPv6:2a00:1450:4864:20::330])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 287E289A72
 for <spice-devel@lists.freedesktop.org>; Tue, 18 Oct 2022 00:04:25 +0000 (UTC)
Received: by mail-wm1-x330.google.com with SMTP id
 c3-20020a1c3503000000b003bd21e3dd7aso13903507wma.1
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Oct 2022 17:04:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=s1cepHDAfxp7ObykesH/6aR+hRLp+Ff3IYwJLKA+GW0=;
 b=F1Lnc7nTtXasdCALQk8dYg22ZJC/jxq5rzFcpkVpYCFk2rGAo/DmWh/rcYuYbvnH9A
 G5GiH8MxXvf82x2hOqmVCecRuNAtaD+M8hzthcBbD8zR1uOPyWeZAFslk/As8LwvHjsK
 Ggr9siEcRNGI4lttZrEBLdKhp958Ac3mAcE3FejzBM35vaHwJMWMWtLnOdI91QgJRnNF
 Lt6p4AW+tBuDgNmSAJ/+cL8tXQiGgajXiVFqZFvNJ3hRwuvuDk1JoM8sqc3XhsWKHgRM
 flffqhyajHvNVwUKCUsm92Z7uFnM84V+SaoEywu6jm0UapXxWv/f7PPWhcn/H4d3diSY
 pW5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=s1cepHDAfxp7ObykesH/6aR+hRLp+Ff3IYwJLKA+GW0=;
 b=t+/B1K4Rz/tn5bk1piARAbtt30RQbqNnUIsatvvtpQ+XWYSP+0cfUQRJfj2DQKNzXx
 m9GbIDJ39dV/Q/q84XNtxsLveXo6Oe2bhmAIfQECnUqXGNVci7gIAS3a4scTZyI2DPzr
 EVszJ7hUKyEUf8CSDzKkcJyBM/2Gn2Z4yyhsqNft3+hL1WaYUyizuEjRTbHDcK0xFsvq
 5lP1qmujRe0VEnyahD6ACXAFZXWSdzCISPmX1XjAq3wIuYfsskPJy/7hO+EYM2q96cFe
 mC53eIL6KOwMNq0NkwOh5act4sXMkBrEhyDKVvxysIvTnq+Vw+tEkvmeCcid34nFiMR1
 mdKw==
X-Gm-Message-State: ACrzQf2sBIvWb2ujr5smgUn+9139ON+heucfjG+3SUOPJjsVvl63gRvQ
 V4qHUeUm8qFPTuT60DWkuLjhRrLCeUw3m3GLsfqwhkfA
X-Google-Smtp-Source: AMsMyM4ClCAUeT3imk/1rTwXMFVQX2j6BDODaRN1VM61CMTGfAi40xjZJlQ9d/GsI3tFoXV2TEzSmb0jsb1wvP2NIxA=
X-Received: by 2002:a05:600c:258:b0:3c6:fe18:b45 with SMTP id
 24-20020a05600c025800b003c6fe180b45mr88550wmj.8.1666051463253; Mon, 17 Oct
 2022 17:04:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAGeBE=w-KZXVACD6xeeqfoo03K5BZxzA8O2U5x-8=NLsR=ZQKw@mail.gmail.com>
 <CAHt6W4dkGkFVDBQbMFN0+AD24OB18uxhhQC5n4u51PiJGnAi8g@mail.gmail.com>
 <CAGeBE=y4HKusjFMYez9uGEzEMm_9uhgDeW5uakB-bErUWcPoJQ@mail.gmail.com>
 <CAHt6W4eysYyfv-9_W6n5YRv5qSd0rU46=vGf25fAO5s342a3aw@mail.gmail.com>
In-Reply-To: <CAHt6W4eysYyfv-9_W6n5YRv5qSd0rU46=vGf25fAO5s342a3aw@mail.gmail.com>
From: =?UTF-8?Q?Carlos_Gonz=C3=A1lez?= <piteccelaya@gmail.com>
Date: Tue, 18 Oct 2022 00:04:09 +0000
Message-ID: <CAGeBE=xYOdDo40ec=T=auNhj-nq8nHXuOWZ6Tt+HT-gniu=YcQ@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="000000000000a5118505eb43d553"
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

--000000000000a5118505eb43d553
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Were you able to find something by chance? Thanks.

El s=C3=A1b, 15 oct 2022 a las 9:22, Frediano Ziglio (<freddy77@gmail.com>)
escribi=C3=B3:

> Il giorno ven 14 ott 2022 alle ore 16:11 Carlos Gonz=C3=A1lez
> <piteccelaya@gmail.com> ha scritto:
> >
> > As soon as spice-vdagent package is installed, so is the spice-vdagentd
> daemon and it also starts running. Yet I always need to manually run
> spice-vdagent command...
> >
>
> Maybe you would need to logout and login again from the graphic
> session. Or manually start it, not sure.
>
> > How do I specify an output directory for the agent to file transfer?
> >
>
> See "spice-vdagent --help", specifically -f and -o options.
>
> > I don't think it's remote-viewer's fault, because I also tested with a
> Windows guest. With all SPICE stuff properly installed, everything works
> out of the box: clipboard, resizing, file transfer from host to guest. Wi=
th
> "properly installed" I mean: installed SPICE drivers manually from
> virtio-win ISO by loading them since the Windows installation beforehand,
> then once booted into Windows downloaded the vdagent ZIP from spice-space
> website and manually installed the service according to instructions.
> >
>
> I'll check, maybe is not handled by driver but agent
>
> > As additional detail, in QEMU I use the option "-display spice-app",
> which automatically starts remote-viewer; though curiously it doesn't see=
m
> to create a virt-viewer directory inside ~/.config unlike when running
> remote-viewer manually...
> >
> > Thanks again.
> >
> > El vie, 14 oct 2022 a las 12:41, Frediano Ziglio (<freddy77@gmail.com>)
> escribi=C3=B3:
> >>
> >> Il giorno gio 13 ott 2022 alle ore 16:58 Carlos Gonz=C3=A1lez
> >> <piteccelaya@gmail.com> ha scritto:
> >> >
> >> > Hello.
> >> >
> >> > I'm trying a virtual machine with a live CD distribution called Anti=
X
> Linux, which is directly based on Debian.
> >> >
> >> > I'm using direct QEMU commands.
> >> > In the VM configuration I have this for SPICE configuration:
> >> > "-vga qxl -device virtio-serial-pci -spice
> unix=3Don,addr=3Dpath/to/vm_spice.socket,disable-ticketing=3Don -chardev
> spicevmc,id=3Dspicechannel0,name=3Dvdagent -device
> virtserialport,chardev=3Dspicechannel0,name=3Dcom.redhat.spice.0 \"
> >> > Then I boot the live ISO, double check that QXL driver is installed
> -which normally always is-, and install spice-vdagent package (version 20
> here). I'm using remote-viewer (virt-viewer) to visualize the VM.
> >> >
> >> > Up to this point, clipboard sharing with host still doesn't work, an=
d
> trying to drag a file from host to guest results in an error "The agent i=
s
> not connected".
> >> >
> >>
> >> This error is normal if the agent is stopped.
> >>
> >> > So I manually run "spice-vdagent" command, and clipboard sharing now
> works, but trying to drag file from host to guest gives "File transfer is
> disabled". Also, automatic resolution change with window resizing doesn't
> work either.
> >> >
> >>
> >> The fact that in this way the clipboard is running indicates that the
> >> agent is now working. You need to specify an output directory to the
> >> agent in order to get file transfer working.
> >> About the resolution change that's weird, I think that feature on
> >> Linux does not even require the agent running. Is it possible that the
> >> client (remove-viewer) is not set up to send resize to the guest
> >> automatically, there are some options on the menu.
> >>
> >> > Certainly, this live distro doesn't come with any spice-related
> packages installed by default, except for the QXL package.
> >> >
> >> > Am I missing something here? Could someone help please?
> >> > Thanks beforehand.
> >>
> >> Frediano
>

--000000000000a5118505eb43d553
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Were you able to find something by chance? Thanks.<br></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El s=
=C3=A1b, 15 oct 2022 a las 9:22, Frediano Ziglio (&lt;<a href=3D"mailto:fre=
ddy77@gmail.com">freddy77@gmail.com</a>&gt;) escribi=C3=B3:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex">Il giorno ven 14 ott 2022 alle =
ore 16:11 Carlos Gonz=C3=A1lez<br>
&lt;<a href=3D"mailto:piteccelaya@gmail.com" target=3D"_blank">piteccelaya@=
gmail.com</a>&gt; ha scritto:<br>
&gt;<br>
&gt; As soon as spice-vdagent package is installed, so is the spice-vdagent=
d daemon and it also starts running. Yet I always need to manually run spic=
e-vdagent command...<br>
&gt;<br>
<br>
Maybe you would need to logout and login again from the graphic<br>
session. Or manually start it, not sure.<br>
<br>
&gt; How do I specify an output directory for the agent to file transfer?<b=
r>
&gt;<br>
<br>
See &quot;spice-vdagent --help&quot;, specifically -f and -o options.<br>
<br>
&gt; I don&#39;t think it&#39;s remote-viewer&#39;s fault, because I also t=
ested with a Windows guest. With all SPICE stuff properly installed, everyt=
hing works out of the box: clipboard, resizing, file transfer from host to =
guest. With &quot;properly installed&quot; I mean: installed SPICE drivers =
manually from virtio-win ISO by loading them since the Windows installation=
 beforehand, then once booted into Windows downloaded the vdagent ZIP from =
spice-space website and manually installed the service according to instruc=
tions.<br>
&gt;<br>
<br>
I&#39;ll check, maybe is not handled by driver but agent<br>
<br>
&gt; As additional detail, in QEMU I use the option &quot;-display spice-ap=
p&quot;, which automatically starts remote-viewer; though curiously it does=
n&#39;t seem to create a virt-viewer directory inside ~/.config unlike when=
 running remote-viewer manually...<br>
&gt;<br>
&gt; Thanks again.<br>
&gt;<br>
&gt; El vie, 14 oct 2022 a las 12:41, Frediano Ziglio (&lt;<a href=3D"mailt=
o:freddy77@gmail.com" target=3D"_blank">freddy77@gmail.com</a>&gt;) escribi=
=C3=B3:<br>
&gt;&gt;<br>
&gt;&gt; Il giorno gio 13 ott 2022 alle ore 16:58 Carlos Gonz=C3=A1lez<br>
&gt;&gt; &lt;<a href=3D"mailto:piteccelaya@gmail.com" target=3D"_blank">pit=
eccelaya@gmail.com</a>&gt; ha scritto:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Hello.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I&#39;m trying a virtual machine with a live CD distribution =
called AntiX Linux, which is directly based on Debian.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I&#39;m using direct QEMU commands.<br>
&gt;&gt; &gt; In the VM configuration I have this for SPICE configuration:<=
br>
&gt;&gt; &gt; &quot;-vga qxl -device virtio-serial-pci -spice unix=3Don,add=
r=3Dpath/to/vm_spice.socket,disable-ticketing=3Don -chardev spicevmc,id=3Ds=
picechannel0,name=3Dvdagent -device virtserialport,chardev=3Dspicechannel0,=
name=3Dcom.redhat.spice.0 \&quot;<br>
&gt;&gt; &gt; Then I boot the live ISO, double check that QXL driver is ins=
talled -which normally always is-, and install spice-vdagent package (versi=
on 20 here). I&#39;m using remote-viewer (virt-viewer) to visualize the VM.=
<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Up to this point, clipboard sharing with host still doesn&#39=
;t work, and trying to drag a file from host to guest results in an error &=
quot;The agent is not connected&quot;.<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; This error is normal if the agent is stopped.<br>
&gt;&gt;<br>
&gt;&gt; &gt; So I manually run &quot;spice-vdagent&quot; command, and clip=
board sharing now works, but trying to drag file from host to guest gives &=
quot;File transfer is disabled&quot;. Also, automatic resolution change wit=
h window resizing doesn&#39;t work either.<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; The fact that in this way the clipboard is running indicates that =
the<br>
&gt;&gt; agent is now working. You need to specify an output directory to t=
he<br>
&gt;&gt; agent in order to get file transfer working.<br>
&gt;&gt; About the resolution change that&#39;s weird, I think that feature=
 on<br>
&gt;&gt; Linux does not even require the agent running. Is it possible that=
 the<br>
&gt;&gt; client (remove-viewer) is not set up to send resize to the guest<b=
r>
&gt;&gt; automatically, there are some options on the menu.<br>
&gt;&gt;<br>
&gt;&gt; &gt; Certainly, this live distro doesn&#39;t come with any spice-r=
elated packages installed by default, except for the QXL package.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Am I missing something here? Could someone help please?<br>
&gt;&gt; &gt; Thanks beforehand.<br>
&gt;&gt;<br>
&gt;&gt; Frediano<br>
</blockquote></div>

--000000000000a5118505eb43d553--
