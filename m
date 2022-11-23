Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19EEC6366BE
	for <lists+spice-devel@lfdr.de>; Wed, 23 Nov 2022 18:14:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1A5410E5C9;
	Wed, 23 Nov 2022 17:14:45 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com
 [IPv6:2a00:1450:4864:20::42c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7228510E5CE
 for <spice-devel@lists.freedesktop.org>; Wed, 23 Nov 2022 17:14:41 +0000 (UTC)
Received: by mail-wr1-x42c.google.com with SMTP id v1so30347343wrt.11
 for <spice-devel@lists.freedesktop.org>; Wed, 23 Nov 2022 09:14:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=JXIWaNkYPNN26nDyzRdl42ScFy7MqttB9Cahyvo/21Y=;
 b=RnJnmOoOeddUjWbeV2oA0SxW0KSQOa/7m/4cWn67uhMjDzICLtU+mqr8rns3fUrU43
 ftb5Oj4E4BlmKb1koSX/ciYsJ5aiGkwtfliqgzqNOsFGBhGtERGP16Wqukx7nai084es
 EaOKwwFsA6UdNWSvPaTtv3er8UwxBacX/TS5IPx1B4EKtMCGWT8cnP74TeaewqZKehrq
 vz78N/5Tvj+61LdfVCVsws6D2l8ZgVuM/M6w4tOtYiPg/PVyj04/YMAbJqPhpGKq8IFk
 2h+N1joGe9Hw5THbyBoVSOquUGbOAjS6QW1IrSZR6R8P+7vAVoCctfQjde+EmFVCnmYz
 Gg3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=JXIWaNkYPNN26nDyzRdl42ScFy7MqttB9Cahyvo/21Y=;
 b=c1qeXxMmzu3Z9Thc4fwYBDofTydxBzFHC8ENILZjmK5FqdvNC2rQW9BsbYEyWulzmM
 N/s4o2kqbPjucrnrLQWdn3A5Im8RLhK5VS/53IgiDTNv8OR8PW8mAotEf2w/4ECof1qX
 cIElooub55rBOQelwtqM05Uf1whccBOpb8bV+yYeDs9ICxyYOBLlSmZG4mRqD8gRzvpA
 X2ar8MmirziVJMOUJE6gUv1IsFRdnBlhUD4FOMOXhwTLL5fMnfMGTF3Ppl0zQfOOjwxB
 L+Q72QBY6XTi2po0coDLXZO1bea9HU5L5tnbPp7RNVk+N9Yyal3lt+t00c26aqAeGHWY
 0EMA==
X-Gm-Message-State: ANoB5pn2QQhDRW9sGEHdXycB55RuOvGPijWmEtz5msouLOY8HdeRqcIh
 9p125LUb8VOZbz1Hd+ooF56t6ocqaj10DULjfu0=
X-Google-Smtp-Source: AA0mqf6BEneCKf5leTtRq0dEySh14+ssimdlIe2zXT0rLqlJD/SuT93R2mQIGzHiRIj9MeB7bjdi5a4MUSj91APKhW8=
X-Received: by 2002:adf:e84f:0:b0:22e:37c1:b225 with SMTP id
 d15-20020adfe84f000000b0022e37c1b225mr16919123wrn.428.1669223679766; Wed, 23
 Nov 2022 09:14:39 -0800 (PST)
MIME-Version: 1.0
References: <CAGeBE=w-KZXVACD6xeeqfoo03K5BZxzA8O2U5x-8=NLsR=ZQKw@mail.gmail.com>
 <CAHt6W4dkGkFVDBQbMFN0+AD24OB18uxhhQC5n4u51PiJGnAi8g@mail.gmail.com>
 <CAGeBE=y4HKusjFMYez9uGEzEMm_9uhgDeW5uakB-bErUWcPoJQ@mail.gmail.com>
 <CAHt6W4eysYyfv-9_W6n5YRv5qSd0rU46=vGf25fAO5s342a3aw@mail.gmail.com>
 <CAGeBE=xYOdDo40ec=T=auNhj-nq8nHXuOWZ6Tt+HT-gniu=YcQ@mail.gmail.com>
 <CAHt6W4cJW-Lj_rE+c9YqrDSft5f0t4RJ41z4bv4y2gVYyyfwNQ@mail.gmail.com>
 <20221123153540.tm5e6ecwcnve2pvv@tapioca>
In-Reply-To: <20221123153540.tm5e6ecwcnve2pvv@tapioca>
From: =?UTF-8?Q?Carlos_Gonz=C3=A1lez?= <piteccelaya@gmail.com>
Date: Wed, 23 Nov 2022 17:14:28 +0000
Message-ID: <CAGeBE=xeR263LAGR19egcrpGz7uqogE7PGreV5v4=xhotgZH6g@mail.gmail.com>
To: Victor Toso <victortoso@redhat.com>, Frediano Ziglio <freddy77@gmail.com>, 
 Uri Lublin <uril@redhat.com>, spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="0000000000007bb42505ee266ce3"
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

--0000000000007bb42505ee266ce3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Turned out that latest AntiX Linux 22 ISO release seemed to fix all these
related issues, because now it worked out of the box.
Only thing I can think about is maybe it was an issue with past release...

Anyway, thanks very much everyone for your help.


El mi=C3=A9, 23 nov 2022 a las 15:35, Victor Toso (<victortoso@redhat.com>)
escribi=C3=B3:

> Hi,
>
> On Tue, Oct 18, 2022 at 06:40:22PM +0100, Frediano Ziglio wrote:
> > Il giorno mar 18 ott 2022 alle ore 01:04 Carlos Gonz=C3=A1lez
> > <piteccelaya@gmail.com> ha scritto:
> > >
> > > Were you able to find something by chance? Thanks.
> > >
> >
> > Hi Carlos,
> >    my main curiosity was about the need of the agent for resize.
> > I did some tests and with both Windows and Linux it appears that the
> > agent is needed.
>
> Just to clarify, setting arbitrary resolution works through
> client <-> guest agent messages. When the guest has the
> capability (since RHEL7), spice-server reacts to that message,
> pass it along to QEMU which interrupts the guest' kernel with the
> resolution change.
>
> IIRC, windows guest agent is the one to set the resolution
> indeed.
>
> Either way, for both Win and Linux guests, the agent is needed
> indeed.
>
> Cheers,
> Victor
>
> > At this point I would try looking at the agent logs.
> > Is your system using Xorg or Wayland ?
> >
> > Regards,
> >    Frediano
> >
> > > El s=C3=A1b, 15 oct 2022 a las 9:22, Frediano Ziglio (<freddy77@gmail=
.com>)
> escribi=C3=B3:
> > >>
> > >> Il giorno ven 14 ott 2022 alle ore 16:11 Carlos Gonz=C3=A1lez
> > >> <piteccelaya@gmail.com> ha scritto:
> > >> >
> > >> > As soon as spice-vdagent package is installed, so is the
> spice-vdagentd daemon and it also starts running. Yet I always need to
> manually run spice-vdagent command...
> > >> >
> > >>
> > >> Maybe you would need to logout and login again from the graphic
> > >> session. Or manually start it, not sure.
> > >>
> > >> > How do I specify an output directory for the agent to file transfe=
r?
> > >> >
> > >>
> > >> See "spice-vdagent --help", specifically -f and -o options.
> > >>
> > >> > I don't think it's remote-viewer's fault, because I also tested
> with a Windows guest. With all SPICE stuff properly installed, everything
> works out of the box: clipboard, resizing, file transfer from host to
> guest. With "properly installed" I mean: installed SPICE drivers manually
> from virtio-win ISO by loading them since the Windows installation
> beforehand, then once booted into Windows downloaded the vdagent ZIP from
> spice-space website and manually installed the service according to
> instructions.
> > >> >
> > >>
> > >> I'll check, maybe is not handled by driver but agent
> > >>
> > >> > As additional detail, in QEMU I use the option "-display
> spice-app", which automatically starts remote-viewer; though curiously it
> doesn't seem to create a virt-viewer directory inside ~/.config unlike wh=
en
> running remote-viewer manually...
> > >> >
> > >> > Thanks again.
> > >> >
> > >> > El vie, 14 oct 2022 a las 12:41, Frediano Ziglio (<
> freddy77@gmail.com>) escribi=C3=B3:
> > >> >>
> > >> >> Il giorno gio 13 ott 2022 alle ore 16:58 Carlos Gonz=C3=A1lez
> > >> >> <piteccelaya@gmail.com> ha scritto:
> > >> >> >
> > >> >> > Hello.
> > >> >> >
> > >> >> > I'm trying a virtual machine with a live CD distribution called
> AntiX Linux, which is directly based on Debian.
> > >> >> >
> > >> >> > I'm using direct QEMU commands.
> > >> >> > In the VM configuration I have this for SPICE configuration:
> > >> >> > "-vga qxl -device virtio-serial-pci -spice
> unix=3Don,addr=3Dpath/to/vm_spice.socket,disable-ticketing=3Don -chardev
> spicevmc,id=3Dspicechannel0,name=3Dvdagent -device
> virtserialport,chardev=3Dspicechannel0,name=3Dcom.redhat.spice.0 \"
> > >> >> > Then I boot the live ISO, double check that QXL driver is
> installed -which normally always is-, and install spice-vdagent package
> (version 20 here). I'm using remote-viewer (virt-viewer) to visualize the
> VM.
> > >> >> >
> > >> >> > Up to this point, clipboard sharing with host still doesn't
> work, and trying to drag a file from host to guest results in an error "T=
he
> agent is not connected".
> > >> >> >
> > >> >>
> > >> >> This error is normal if the agent is stopped.
> > >> >>
> > >> >> > So I manually run "spice-vdagent" command, and clipboard sharin=
g
> now works, but trying to drag file from host to guest gives "File transfe=
r
> is disabled". Also, automatic resolution change with window resizing
> doesn't work either.
> > >> >> >
> > >> >>
> > >> >> The fact that in this way the clipboard is running indicates that
> the
> > >> >> agent is now working. You need to specify an output directory to
> the
> > >> >> agent in order to get file transfer working.
> > >> >> About the resolution change that's weird, I think that feature on
> > >> >> Linux does not even require the agent running. Is it possible tha=
t
> the
> > >> >> client (remove-viewer) is not set up to send resize to the guest
> > >> >> automatically, there are some options on the menu.
> > >> >>
> > >> >> > Certainly, this live distro doesn't come with any spice-related
> packages installed by default, except for the QXL package.
> > >> >> >
> > >> >> > Am I missing something here? Could someone help please?
> > >> >> > Thanks beforehand.
> > >> >>
> > >> >> Frediano
> >
>

--0000000000007bb42505ee266ce3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Turned out that latest AntiX Linux 22 ISO release see=
med to fix all these related issues, because now it worked out of the box.<=
/div><div>Only thing I can think about is maybe it was an issue with past r=
elease...</div><div><br></div><div>Anyway, thanks very much everyone for yo=
ur help.<br></div><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">El mi=C3=A9, 23 nov 2022 a las 15:35=
, Victor Toso (&lt;<a href=3D"mailto:victortoso@redhat.com">victortoso@redh=
at.com</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">Hi,<br>
<br>
On Tue, Oct 18, 2022 at 06:40:22PM +0100, Frediano Ziglio wrote:<br>
&gt; Il giorno mar 18 ott 2022 alle ore 01:04 Carlos Gonz=C3=A1lez<br>
&gt; &lt;<a href=3D"mailto:piteccelaya@gmail.com" target=3D"_blank">pitecce=
laya@gmail.com</a>&gt; ha scritto:<br>
&gt; &gt;<br>
&gt; &gt; Were you able to find something by chance? Thanks.<br>
&gt; &gt;<br>
&gt;<br>
&gt; Hi Carlos,<br>
&gt;=C2=A0 =C2=A0 my main curiosity was about the need of the agent for res=
ize.<br>
&gt; I did some tests and with both Windows and Linux it appears that the<b=
r>
&gt; agent is needed.<br>
<br>
Just to clarify, setting arbitrary resolution works through<br>
client &lt;-&gt; guest agent messages. When the guest has the<br>
capability (since RHEL7), spice-server reacts to that message,<br>
pass it along to QEMU which interrupts the guest&#39; kernel with the<br>
resolution change.<br>
<br>
IIRC, windows guest agent is the one to set the resolution<br>
indeed.<br>
<br>
Either way, for both Win and Linux guests, the agent is needed<br>
indeed.<br>
<br>
Cheers,<br>
Victor<br>
<br>
&gt; At this point I would try looking at the agent logs.<br>
&gt; Is your system using Xorg or Wayland ?<br>
&gt; <br>
&gt; Regards,<br>
&gt;=C2=A0 =C2=A0 Frediano<br>
&gt; <br>
&gt; &gt; El s=C3=A1b, 15 oct 2022 a las 9:22, Frediano Ziglio (&lt;<a href=
=3D"mailto:freddy77@gmail.com" target=3D"_blank">freddy77@gmail.com</a>&gt;=
) escribi=C3=B3:<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; Il giorno ven 14 ott 2022 alle ore 16:11 Carlos Gonz=C3=A1lez=
<br>
&gt; &gt;&gt; &lt;<a href=3D"mailto:piteccelaya@gmail.com" target=3D"_blank=
">piteccelaya@gmail.com</a>&gt; ha scritto:<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt; As soon as spice-vdagent package is installed, so is the=
 spice-vdagentd daemon and it also starts running. Yet I always need to man=
ually run spice-vdagent command...<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; Maybe you would need to logout and login again from the graph=
ic<br>
&gt; &gt;&gt; session. Or manually start it, not sure.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; &gt; How do I specify an output directory for the agent to fi=
le transfer?<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; See &quot;spice-vdagent --help&quot;, specifically -f and -o =
options.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; &gt; I don&#39;t think it&#39;s remote-viewer&#39;s fault, be=
cause I also tested with a Windows guest. With all SPICE stuff properly ins=
talled, everything works out of the box: clipboard, resizing, file transfer=
 from host to guest. With &quot;properly installed&quot; I mean: installed =
SPICE drivers manually from virtio-win ISO by loading them since the Window=
s installation beforehand, then once booted into Windows downloaded the vda=
gent ZIP from spice-space website and manually installed the service accord=
ing to instructions.<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; I&#39;ll check, maybe is not handled by driver but agent<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; &gt; As additional detail, in QEMU I use the option &quot;-di=
splay spice-app&quot;, which automatically starts remote-viewer; though cur=
iously it doesn&#39;t seem to create a virt-viewer directory inside ~/.conf=
ig unlike when running remote-viewer manually...<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt; Thanks again.<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt; El vie, 14 oct 2022 a las 12:41, Frediano Ziglio (&lt;<a=
 href=3D"mailto:freddy77@gmail.com" target=3D"_blank">freddy77@gmail.com</a=
>&gt;) escribi=C3=B3:<br>
&gt; &gt;&gt; &gt;&gt;<br>
&gt; &gt;&gt; &gt;&gt; Il giorno gio 13 ott 2022 alle ore 16:58 Carlos Gonz=
=C3=A1lez<br>
&gt; &gt;&gt; &gt;&gt; &lt;<a href=3D"mailto:piteccelaya@gmail.com" target=
=3D"_blank">piteccelaya@gmail.com</a>&gt; ha scritto:<br>
&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt;&gt; &gt; Hello.<br>
&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt;&gt; &gt; I&#39;m trying a virtual machine with a live CD=
 distribution called AntiX Linux, which is directly based on Debian.<br>
&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt;&gt; &gt; I&#39;m using direct QEMU commands.<br>
&gt; &gt;&gt; &gt;&gt; &gt; In the VM configuration I have this for SPICE c=
onfiguration:<br>
&gt; &gt;&gt; &gt;&gt; &gt; &quot;-vga qxl -device virtio-serial-pci -spice=
 unix=3Don,addr=3Dpath/to/vm_spice.socket,disable-ticketing=3Don -chardev s=
picevmc,id=3Dspicechannel0,name=3Dvdagent -device virtserialport,chardev=3D=
spicechannel0,name=3Dcom.redhat.spice.0 \&quot;<br>
&gt; &gt;&gt; &gt;&gt; &gt; Then I boot the live ISO, double check that QXL=
 driver is installed -which normally always is-, and install spice-vdagent =
package (version 20 here). I&#39;m using remote-viewer (virt-viewer) to vis=
ualize the VM.<br>
&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt;&gt; &gt; Up to this point, clipboard sharing with host s=
till doesn&#39;t work, and trying to drag a file from host to guest results=
 in an error &quot;The agent is not connected&quot;.<br>
&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt;&gt;<br>
&gt; &gt;&gt; &gt;&gt; This error is normal if the agent is stopped.<br>
&gt; &gt;&gt; &gt;&gt;<br>
&gt; &gt;&gt; &gt;&gt; &gt; So I manually run &quot;spice-vdagent&quot; com=
mand, and clipboard sharing now works, but trying to drag file from host to=
 guest gives &quot;File transfer is disabled&quot;. Also, automatic resolut=
ion change with window resizing doesn&#39;t work either.<br>
&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt;&gt;<br>
&gt; &gt;&gt; &gt;&gt; The fact that in this way the clipboard is running i=
ndicates that the<br>
&gt; &gt;&gt; &gt;&gt; agent is now working. You need to specify an output =
directory to the<br>
&gt; &gt;&gt; &gt;&gt; agent in order to get file transfer working.<br>
&gt; &gt;&gt; &gt;&gt; About the resolution change that&#39;s weird, I thin=
k that feature on<br>
&gt; &gt;&gt; &gt;&gt; Linux does not even require the agent running. Is it=
 possible that the<br>
&gt; &gt;&gt; &gt;&gt; client (remove-viewer) is not set up to send resize =
to the guest<br>
&gt; &gt;&gt; &gt;&gt; automatically, there are some options on the menu.<b=
r>
&gt; &gt;&gt; &gt;&gt;<br>
&gt; &gt;&gt; &gt;&gt; &gt; Certainly, this live distro doesn&#39;t come wi=
th any spice-related packages installed by default, except for the QXL pack=
age.<br>
&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt;&gt; &gt; Am I missing something here? Could someone help=
 please?<br>
&gt; &gt;&gt; &gt;&gt; &gt; Thanks beforehand.<br>
&gt; &gt;&gt; &gt;&gt;<br>
&gt; &gt;&gt; &gt;&gt; Frediano<br>
&gt; <br>
</blockquote></div></div>

--0000000000007bb42505ee266ce3--
