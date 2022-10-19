Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D32F5604A38
	for <lists+spice-devel@lfdr.de>; Wed, 19 Oct 2022 17:00:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C207110F250;
	Wed, 19 Oct 2022 15:00:14 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2525610F253
 for <spice-devel@lists.freedesktop.org>; Wed, 19 Oct 2022 15:00:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1666191602;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=wCgWKNRHW7iA0zD509X12YDlVEYEmdmWKlQx1JaPri4=;
 b=QX4bm7bwS18RDZ1fgtRfQ7OHkM7RWs1pa8ze5StDSi5/zCDVtNpK3wSXO/cP0UAkbWQaDZ
 PBvYpK4mQ0v5Bvv/Ng7NoHVygVQ6tQ+9K69q9T0dGx/RCMd69AIF0OoAcmcBsv3Vo8CUbe
 Z5HBoH7vl7Vmu5E612JSub+JTJswmK0=
Received: from mail-oa1-f72.google.com (mail-oa1-f72.google.com
 [209.85.160.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-627-aLJX3briO5uhQrEfMqYFCQ-1; Wed, 19 Oct 2022 10:59:59 -0400
X-MC-Unique: aLJX3briO5uhQrEfMqYFCQ-1
Received: by mail-oa1-f72.google.com with SMTP id
 586e51a60fabf-13234741239so7921967fac.7
 for <spice-devel@lists.freedesktop.org>; Wed, 19 Oct 2022 07:59:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=wCgWKNRHW7iA0zD509X12YDlVEYEmdmWKlQx1JaPri4=;
 b=LMGPQpickvP7wAPUY45iGKAaoYRk9MePnwEnNTDMXOVxnKeTtmKffCEOYLcHs/xc3q
 MOgv79OKKyOez1xAFQcHVmnX7J4S3oB5nsJvX8MNiXxq4Et/kgTZEPURA8StQyzo6k8/
 HePH7WNhBtxlbnrWRiGeHUt01MtGZENxpy+WCb7/9UOcetxCe12Yz36KN/z9txuEATrs
 VDm+h9f1ITrlLXRAg+w47FFTlG4Hu/KM0APxk2fUu5286MYTmwSYcQCDUnJGxP908vPo
 lJWcbZnKHHCBGAYB6zJ6M9DKYIlZPMXVuUJ9Z7X2eU7Xk1XTJN4UUvyfEnaEavnWLLtx
 OVzQ==
X-Gm-Message-State: ACrzQf03KlSw670B5ci9905issz4filtmWo/CRbPBq9c9HzTz2XTKuns
 /Rxl7Xi+y6Mu1xxhwwLX8I/Bo7JDKthJwUys7Bdrqv5UAVr0Lt3iQW3mtIb6+s1+PJ1EV2U0fW/
 7XzL4MJiGb24DfY37zm4FJPMTSzvs/I99u6HlQx07FtBIEyE=
X-Received: by 2002:a9d:6e15:0:b0:661:89dd:7a0a with SMTP id
 e21-20020a9d6e15000000b0066189dd7a0amr4160993otr.239.1666191597762; 
 Wed, 19 Oct 2022 07:59:57 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM69uECRSRAMqDFNgd06LTG15xp/bSoKrPktLy1nweTjYE2+fMBLOpcyej3mS4yaRLIhncsPHuVOHXKZfUC74GI=
X-Received: by 2002:a9d:6e15:0:b0:661:89dd:7a0a with SMTP id
 e21-20020a9d6e15000000b0066189dd7a0amr4160978otr.239.1666191597446; Wed, 19
 Oct 2022 07:59:57 -0700 (PDT)
MIME-Version: 1.0
References: <CAGeBE=w-KZXVACD6xeeqfoo03K5BZxzA8O2U5x-8=NLsR=ZQKw@mail.gmail.com>
 <CAHt6W4dkGkFVDBQbMFN0+AD24OB18uxhhQC5n4u51PiJGnAi8g@mail.gmail.com>
 <CAGeBE=y4HKusjFMYez9uGEzEMm_9uhgDeW5uakB-bErUWcPoJQ@mail.gmail.com>
 <CAHt6W4eysYyfv-9_W6n5YRv5qSd0rU46=vGf25fAO5s342a3aw@mail.gmail.com>
 <CAGeBE=xYOdDo40ec=T=auNhj-nq8nHXuOWZ6Tt+HT-gniu=YcQ@mail.gmail.com>
 <CAHt6W4cJW-Lj_rE+c9YqrDSft5f0t4RJ41z4bv4y2gVYyyfwNQ@mail.gmail.com>
In-Reply-To: <CAHt6W4cJW-Lj_rE+c9YqrDSft5f0t4RJ41z4bv4y2gVYyyfwNQ@mail.gmail.com>
From: Uri Lublin <uril@redhat.com>
Date: Wed, 19 Oct 2022 17:59:46 +0300
Message-ID: <CAAg9qJ3bMd=3_YD4UJ1rHDmm3s7L5NG047eioeuJ209s50MAKg@mail.gmail.com>
To: Frediano Ziglio <freddy77@gmail.com>,
 =?UTF-8?Q?Carlos_Gonz=C3=A1lez?= <piteccelaya@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="0000000000004b3f2605eb6476f9"
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
Cc: spice-devel@lists.freedesktop.org
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--0000000000004b3f2605eb6476f9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Oct 18, 2022 at 8:40 PM Frediano Ziglio <freddy77@gmail.com> wrote:

> Il giorno mar 18 ott 2022 alle ore 01:04 Carlos Gonz=C3=A1lez
> <piteccelaya@gmail.com> ha scritto:
> >
> > Were you able to find something by chance? Thanks.
> >
>
> Hi Carlos,
>    my main curiosity was about the need of the agent for resize.
> I did some tests and with both Windows and Linux it appears that the
> agent is needed.
> At this point I would try looking at the agent logs.
> Is your system using Xorg or Wayland ?
>
> Regards,
>    Frediano
>
>
I agree with Frediano that (with a recent QXL device) the arbitrary
resolution update is done via QXL.
Note that it does not work for all Desktop Environments, and I apparently
it doesn't work for AntiX Linux (default DE).
If you can, try to run with GNOME/X11 and see if that works.

Related bug: https://bugzilla.redhat.com/show_bug.cgi?id=3D1290586

Regards,
    Uri.


> El s=C3=A1b, 15 oct 2022 a las 9:22, Frediano Ziglio (<freddy77@gmail.com=
>)
> escribi=C3=B3:
> >>
> >> Il giorno ven 14 ott 2022 alle ore 16:11 Carlos Gonz=C3=A1lez
> >> <piteccelaya@gmail.com> ha scritto:
> >> >
> >> > As soon as spice-vdagent package is installed, so is the
> spice-vdagentd daemon and it also starts running. Yet I always need to
> manually run spice-vdagent command...
> >> >
> >>
> >> Maybe you would need to logout and login again from the graphic
> >> session. Or manually start it, not sure.
> >>
> >> > How do I specify an output directory for the agent to file transfer?
> >> >
> >>
> >> See "spice-vdagent --help", specifically -f and -o options.
> >>
> >> > I don't think it's remote-viewer's fault, because I also tested with
> a Windows guest. With all SPICE stuff properly installed, everything work=
s
> out of the box: clipboard, resizing, file transfer from host to guest. Wi=
th
> "properly installed" I mean: installed SPICE drivers manually from
> virtio-win ISO by loading them since the Windows installation beforehand,
> then once booted into Windows downloaded the vdagent ZIP from spice-space
> website and manually installed the service according to instructions.
> >> >
> >>
> >> I'll check, maybe is not handled by driver but agent
> >>
> >> > As additional detail, in QEMU I use the option "-display spice-app",
> which automatically starts remote-viewer; though curiously it doesn't see=
m
> to create a virt-viewer directory inside ~/.config unlike when running
> remote-viewer manually...
> >> >
> >> > Thanks again.
> >> >
> >> > El vie, 14 oct 2022 a las 12:41, Frediano Ziglio (<freddy77@gmail.co=
m>)
> escribi=C3=B3:
> >> >>
> >> >> Il giorno gio 13 ott 2022 alle ore 16:58 Carlos Gonz=C3=A1lez
> >> >> <piteccelaya@gmail.com> ha scritto:
> >> >> >
> >> >> > Hello.
> >> >> >
> >> >> > I'm trying a virtual machine with a live CD distribution called
> AntiX Linux, which is directly based on Debian.
> >> >> >
> >> >> > I'm using direct QEMU commands.
> >> >> > In the VM configuration I have this for SPICE configuration:
> >> >> > "-vga qxl -device virtio-serial-pci -spice
> unix=3Don,addr=3Dpath/to/vm_spice.socket,disable-ticketing=3Don -chardev
> spicevmc,id=3Dspicechannel0,name=3Dvdagent -device
> virtserialport,chardev=3Dspicechannel0,name=3Dcom.redhat.spice.0 \"
> >> >> > Then I boot the live ISO, double check that QXL driver is
> installed -which normally always is-, and install spice-vdagent package
> (version 20 here). I'm using remote-viewer (virt-viewer) to visualize the
> VM.
> >> >> >
> >> >> > Up to this point, clipboard sharing with host still doesn't work,
> and trying to drag a file from host to guest results in an error "The age=
nt
> is not connected".
> >> >> >
> >> >>
> >> >> This error is normal if the agent is stopped.
> >> >>
> >> >> > So I manually run "spice-vdagent" command, and clipboard sharing
> now works, but trying to drag file from host to guest gives "File transfe=
r
> is disabled". Also, automatic resolution change with window resizing
> doesn't work either.
> >> >> >
> >> >>
> >> >> The fact that in this way the clipboard is running indicates that t=
he
> >> >> agent is now working. You need to specify an output directory to th=
e
> >> >> agent in order to get file transfer working.
> >> >> About the resolution change that's weird, I think that feature on
> >> >> Linux does not even require the agent running. Is it possible that
> the
> >> >> client (remove-viewer) is not set up to send resize to the guest
> >> >> automatically, there are some options on the menu.
> >> >>
> >> >> > Certainly, this live distro doesn't come with any spice-related
> packages installed by default, except for the QXL package.
> >> >> >
> >> >> > Am I missing something here? Could someone help please?
> >> >> > Thanks beforehand.
> >> >>
> >> >> Frediano
>
>

--0000000000004b3f2605eb6476f9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,<br></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, Oct 18, 2022 at 8:40 PM Frediano Zigl=
io &lt;<a href=3D"mailto:freddy77@gmail.com">freddy77@gmail.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Il giorno ma=
r 18 ott 2022 alle ore 01:04 Carlos Gonz=C3=A1lez<br>
&lt;<a href=3D"mailto:piteccelaya@gmail.com" target=3D"_blank">piteccelaya@=
gmail.com</a>&gt; ha scritto:<br>
&gt;<br>
&gt; Were you able to find something by chance? Thanks.<br>
&gt;<br>
<br>
Hi Carlos,<br>
=C2=A0 =C2=A0my main curiosity was about the need of the agent for resize.<=
br>
I did some tests and with both Windows and Linux it appears that the<br>
agent is needed.<br>
At this point I would try looking at the agent logs.<br>
Is your system using Xorg or Wayland ?<br>
<br>
Regards,<br>
=C2=A0 =C2=A0Frediano<br>
<br></blockquote><br><div>I agree with Frediano that (with a recent QXL dev=
ice) the arbitrary resolution update is done via QXL.<br></div><div>Note th=
at it does not work for all Desktop Environments, and I apparently it doesn=
&#39;t work for AntiX Linux (default DE).</div><div>If you can, try to run =
with GNOME/X11 and see if that works.<br></div><div><br></div><div>Related =
bug: <a href=3D"https://bugzilla.redhat.com/show_bug.cgi?id=3D1290586">http=
s://bugzilla.redhat.com/show_bug.cgi?id=3D1290586</a></div><div><br></div><=
div>Regards,</div><div>=C2=A0=C2=A0=C2=A0 Uri.</div><div><br></div><div><br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">
&gt; El s=C3=A1b, 15 oct 2022 a las 9:22, Frediano Ziglio (&lt;<a href=3D"m=
ailto:freddy77@gmail.com" target=3D"_blank">freddy77@gmail.com</a>&gt;) esc=
ribi=C3=B3:<br>
&gt;&gt;<br>
&gt;&gt; Il giorno ven 14 ott 2022 alle ore 16:11 Carlos Gonz=C3=A1lez<br>
&gt;&gt; &lt;<a href=3D"mailto:piteccelaya@gmail.com" target=3D"_blank">pit=
eccelaya@gmail.com</a>&gt; ha scritto:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; As soon as spice-vdagent package is installed, so is the spic=
e-vdagentd daemon and it also starts running. Yet I always need to manually=
 run spice-vdagent command...<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; Maybe you would need to logout and login again from the graphic<br=
>
&gt;&gt; session. Or manually start it, not sure.<br>
&gt;&gt;<br>
&gt;&gt; &gt; How do I specify an output directory for the agent to file tr=
ansfer?<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; See &quot;spice-vdagent --help&quot;, specifically -f and -o optio=
ns.<br>
&gt;&gt;<br>
&gt;&gt; &gt; I don&#39;t think it&#39;s remote-viewer&#39;s fault, because=
 I also tested with a Windows guest. With all SPICE stuff properly installe=
d, everything works out of the box: clipboard, resizing, file transfer from=
 host to guest. With &quot;properly installed&quot; I mean: installed SPICE=
 drivers manually from virtio-win ISO by loading them since the Windows ins=
tallation beforehand, then once booted into Windows downloaded the vdagent =
ZIP from spice-space website and manually installed the service according t=
o instructions.<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; I&#39;ll check, maybe is not handled by driver but agent<br>
&gt;&gt;<br>
&gt;&gt; &gt; As additional detail, in QEMU I use the option &quot;-display=
 spice-app&quot;, which automatically starts remote-viewer; though curiousl=
y it doesn&#39;t seem to create a virt-viewer directory inside ~/.config un=
like when running remote-viewer manually...<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Thanks again.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; El vie, 14 oct 2022 a las 12:41, Frediano Ziglio (&lt;<a href=
=3D"mailto:freddy77@gmail.com" target=3D"_blank">freddy77@gmail.com</a>&gt;=
) escribi=C3=B3:<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Il giorno gio 13 ott 2022 alle ore 16:58 Carlos Gonz=C3=
=A1lez<br>
&gt;&gt; &gt;&gt; &lt;<a href=3D"mailto:piteccelaya@gmail.com" target=3D"_b=
lank">piteccelaya@gmail.com</a>&gt; ha scritto:<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Hello.<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; I&#39;m trying a virtual machine with a live CD dist=
ribution called AntiX Linux, which is directly based on Debian.<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; I&#39;m using direct QEMU commands.<br>
&gt;&gt; &gt;&gt; &gt; In the VM configuration I have this for SPICE config=
uration:<br>
&gt;&gt; &gt;&gt; &gt; &quot;-vga qxl -device virtio-serial-pci -spice unix=
=3Don,addr=3Dpath/to/vm_spice.socket,disable-ticketing=3Don -chardev spicev=
mc,id=3Dspicechannel0,name=3Dvdagent -device virtserialport,chardev=3Dspice=
channel0,name=3Dcom.redhat.spice.0 \&quot;<br>
&gt;&gt; &gt;&gt; &gt; Then I boot the live ISO, double check that QXL driv=
er is installed -which normally always is-, and install spice-vdagent packa=
ge (version 20 here). I&#39;m using remote-viewer (virt-viewer) to visualiz=
e the VM.<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Up to this point, clipboard sharing with host still =
doesn&#39;t work, and trying to drag a file from host to guest results in a=
n error &quot;The agent is not connected&quot;.<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; This error is normal if the agent is stopped.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt; So I manually run &quot;spice-vdagent&quot; command,=
 and clipboard sharing now works, but trying to drag file from host to gues=
t gives &quot;File transfer is disabled&quot;. Also, automatic resolution c=
hange with window resizing doesn&#39;t work either.<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; The fact that in this way the clipboard is running indica=
tes that the<br>
&gt;&gt; &gt;&gt; agent is now working. You need to specify an output direc=
tory to the<br>
&gt;&gt; &gt;&gt; agent in order to get file transfer working.<br>
&gt;&gt; &gt;&gt; About the resolution change that&#39;s weird, I think tha=
t feature on<br>
&gt;&gt; &gt;&gt; Linux does not even require the agent running. Is it poss=
ible that the<br>
&gt;&gt; &gt;&gt; client (remove-viewer) is not set up to send resize to th=
e guest<br>
&gt;&gt; &gt;&gt; automatically, there are some options on the menu.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt; Certainly, this live distro doesn&#39;t come with an=
y spice-related packages installed by default, except for the QXL package.<=
br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Am I missing something here? Could someone help plea=
se?<br>
&gt;&gt; &gt;&gt; &gt; Thanks beforehand.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Frediano<br>
<br>
</blockquote></div></div>

--0000000000004b3f2605eb6476f9--

