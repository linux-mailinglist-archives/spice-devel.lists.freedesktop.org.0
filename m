Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B59A60D351
	for <lists+spice-devel@lfdr.de>; Tue, 25 Oct 2022 20:16:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EAF910E23C;
	Tue, 25 Oct 2022 18:16:27 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8B2810E23C
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Oct 2022 18:16:25 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id
 l16-20020a05600c4f1000b003c6c0d2a445so8846210wmq.4
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Oct 2022 11:16:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=fRrHsOezqb3WjS0OboT1j+W/608wb8vjsLDHF4E0zhE=;
 b=opPOVs5ph6rqnsyEkyNpdmkFEPCP2NghvY+p5PGdXOkmh8xqy9tCNHJLLqCkuHAQ7F
 aDCuYfa19GQuNprLPiSa0iSsDMNTjWNdnvAh/KQvdbRS0777kssV1CeblWFVkj95t+YJ
 o0LxfXDMmbLthw0W8kAI+8g+kFdnQQ4T20Hhbanv0oy4EC8bOMZevsZN2KTtS3DiZnLp
 KJhUgsJHoq8g7iV6XcsSHRwRSEVaFy9WTEUGaBFhPX9mVGsCDZsMaCH99zleJonSijzq
 Knev9JPN6psQFUxCPET+whg3H+uQftySlQkEoFiYHnKaljtAAWNWWlO+DTWJkl9yt/ei
 CZyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=fRrHsOezqb3WjS0OboT1j+W/608wb8vjsLDHF4E0zhE=;
 b=eUWAUQsvmw/EhrwtmUuQnIQeLlOdL3xugusb+vgdJfkORjI+Uy+bzh2SJMHPb4h+KJ
 kSR6WCCoW29unq25V9f1+3NgKKlkpMyKGDISAOX1QjWn0yFcUsKFHkVRZLzTNms0gpJI
 Bg6AjSSZe7r0+PtcrmUhrTjuXSiS6o0MRT1sqAibZtWamGcMlbnzwn50RYyUgM7yVLGF
 BrJOUIC4HJQq4cXKV84rAlGoY9HN9e75xA6yVwhQhg5gMe15Rkpi4Ctyhj+TY8RFzMFN
 kyLy7Ee3CRwpg+L5jLJ1ZplHyRpuTo2dxGMSMhODHmbdoBIzXwEk72UjVtFxuw7NWSDA
 uUpA==
X-Gm-Message-State: ACrzQf1/m0//hdbMBe02mHdroLdTidXn0l4BnAyVlhrSiXEYj4eLGGwZ
 2WQ++iHYy/e7kNcL5CZBQ5JL2q35zQBDIvgSwiE=
X-Google-Smtp-Source: AMsMyM7iTlPGhTT5HCyGeBG24vQgL4pQmWQ4tc9GsDqpukvhbU1T3Wsh2Sx49Lf1x99ac4I1/8L645vR0gu+CbRcuOE=
X-Received: by 2002:a1c:770f:0:b0:3c8:33ba:150f with SMTP id
 t15-20020a1c770f000000b003c833ba150fmr15173540wmi.194.1666721783788; Tue, 25
 Oct 2022 11:16:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAGeBE=w-KZXVACD6xeeqfoo03K5BZxzA8O2U5x-8=NLsR=ZQKw@mail.gmail.com>
 <CAHt6W4dkGkFVDBQbMFN0+AD24OB18uxhhQC5n4u51PiJGnAi8g@mail.gmail.com>
 <CAGeBE=y4HKusjFMYez9uGEzEMm_9uhgDeW5uakB-bErUWcPoJQ@mail.gmail.com>
 <CAHt6W4eysYyfv-9_W6n5YRv5qSd0rU46=vGf25fAO5s342a3aw@mail.gmail.com>
 <CAGeBE=xYOdDo40ec=T=auNhj-nq8nHXuOWZ6Tt+HT-gniu=YcQ@mail.gmail.com>
 <CAHt6W4cJW-Lj_rE+c9YqrDSft5f0t4RJ41z4bv4y2gVYyyfwNQ@mail.gmail.com>
 <CAAg9qJ3bMd=3_YD4UJ1rHDmm3s7L5NG047eioeuJ209s50MAKg@mail.gmail.com>
 <CAGeBE=w5OVLoKD_E72HdacqCivp=ZS2tuaDoHMJTB82-68W0-A@mail.gmail.com>
 <CAAg9qJ20nfDLfx_8Hboyw-GZpU5t4mrKH7+4L_Ne-wOrqbzEZg@mail.gmail.com>
In-Reply-To: <CAAg9qJ20nfDLfx_8Hboyw-GZpU5t4mrKH7+4L_Ne-wOrqbzEZg@mail.gmail.com>
From: =?UTF-8?Q?Carlos_Gonz=C3=A1lez?= <piteccelaya@gmail.com>
Date: Tue, 25 Oct 2022 18:16:12 +0000
Message-ID: <CAGeBE=zLNuypqM296NKHbiVXf-u4hcK3MbTxXG34eOeDSgG_cg@mail.gmail.com>
To: Uri Lublin <uril@redhat.com>, freddy77@gmail.com,
 spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="000000000000dcb95a05ebdfe7b2"
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

--000000000000dcb95a05ebdfe7b2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Already did; it did work, thanks (and yes, it's always Virtual-1 for some
reason).
I couldn't understand it very well from the bug report, why isn't it
automatically working on some DEs/WMs?

Now, could we focus on the nasty bug with file transferring? As already
mentioned, the -f and -o options are serving of absolutely nothing...

Thanks.

El lun, 24 oct 2022 a las 9:16, Uri Lublin (<uril@redhat.com>) escribi=C3=
=B3:

> On Thu, Oct 20, 2022 at 11:52 PM Carlos Gonz=C3=A1lez <piteccelaya@gmail.=
com>
> wrote:
>
>> So I did more tests.
>>
>> First, AntiX Linux by default doesn't use "desktop environments" but
>> "window managers", being the default IceWM. Also, it doesn't use SystemD=
 at
>> all; SysV instead. Regarding Xorg or Wayland, it's Xorg.
>>
>> > I did some tests and with both Windows and Linux it appears that the
>> > agent is needed.
>>
>> Well, of course it's needed! That's per basic instructions...
>>
>> Since there's no SystemD here, neither journalctl command. So tried
>> running both spice-vdagentd and spice-vdagent with debugging:
>> sudo /usr/sbin/spice-vdagentd -x -d -d
>> spice-vdagent -f /path/to/folder -x -d -d
>>
>> When resizing the remote-viewer window, no logs whatsoever, and of cours=
e
>> neither resolution update. Also, using the -f option served of nothing;
>> exact same error mentioned before...
>> Neither anything at all related in /var/log/Xorg.0.log
>> *Only* clipboard sharing seems to work
>>
>
> Try the workaround mentioned on the bug, run on the guest (after resizing
> remote-viewer's window):
>     xrandr | grep Virtual                  # look for the connected one
>     xrandr --output Virtual-0 --auto # may be Virtual-1 instead of
> Virtual-0
>
> Uri.
>
>
>> By chance, do you think you could give the live ISO a try? It's a live
>> system, and the "Base" version is a CD size, not even a DVD...
>>
>> Thanks again for your attention.
>>
>> El mi=C3=A9, 19 oct 2022 a las 15:00, Uri Lublin (<uril@redhat.com>) esc=
ribi=C3=B3:
>>
>>> Hi,
>>>
>>> On Tue, Oct 18, 2022 at 8:40 PM Frediano Ziglio <freddy77@gmail.com>
>>> wrote:
>>>
>>>> Il giorno mar 18 ott 2022 alle ore 01:04 Carlos Gonz=C3=A1lez
>>>> <piteccelaya@gmail.com> ha scritto:
>>>> >
>>>> > Were you able to find something by chance? Thanks.
>>>> >
>>>>
>>>> Hi Carlos,
>>>>    my main curiosity was about the need of the agent for resize.
>>>> I did some tests and with both Windows and Linux it appears that the
>>>> agent is needed.
>>>> At this point I would try looking at the agent logs.
>>>> Is your system using Xorg or Wayland ?
>>>>
>>>> Regards,
>>>>    Frediano
>>>>
>>>>
>>> I agree with Frediano that (with a recent QXL device) the arbitrary
>>> resolution update is done via QXL.
>>> Note that it does not work for all Desktop Environments, and I
>>> apparently it doesn't work for AntiX Linux (default DE).
>>> If you can, try to run with GNOME/X11 and see if that works.
>>>
>>> Related bug: https://bugzilla.redhat.com/show_bug.cgi?id=3D1290586
>>>
>>> Regards,
>>>     Uri.
>>>
>>>
>>> > El s=C3=A1b, 15 oct 2022 a las 9:22, Frediano Ziglio (<freddy77@gmail=
.com>)
>>>> escribi=C3=B3:
>>>> >>
>>>> >> Il giorno ven 14 ott 2022 alle ore 16:11 Carlos Gonz=C3=A1lez
>>>> >> <piteccelaya@gmail.com> ha scritto:
>>>> >> >
>>>> >> > As soon as spice-vdagent package is installed, so is the
>>>> spice-vdagentd daemon and it also starts running. Yet I always need to
>>>> manually run spice-vdagent command...
>>>> >> >
>>>> >>
>>>> >> Maybe you would need to logout and login again from the graphic
>>>> >> session. Or manually start it, not sure.
>>>> >>
>>>> >> > How do I specify an output directory for the agent to file
>>>> transfer?
>>>> >> >
>>>> >>
>>>> >> See "spice-vdagent --help", specifically -f and -o options.
>>>> >>
>>>> >> > I don't think it's remote-viewer's fault, because I also tested
>>>> with a Windows guest. With all SPICE stuff properly installed, everyth=
ing
>>>> works out of the box: clipboard, resizing, file transfer from host to
>>>> guest. With "properly installed" I mean: installed SPICE drivers manua=
lly
>>>> from virtio-win ISO by loading them since the Windows installation
>>>> beforehand, then once booted into Windows downloaded the vdagent ZIP f=
rom
>>>> spice-space website and manually installed the service according to
>>>> instructions.
>>>> >> >
>>>> >>
>>>> >> I'll check, maybe is not handled by driver but agent
>>>> >>
>>>> >> > As additional detail, in QEMU I use the option "-display
>>>> spice-app", which automatically starts remote-viewer; though curiously=
 it
>>>> doesn't seem to create a virt-viewer directory inside ~/.config unlike=
 when
>>>> running remote-viewer manually...
>>>> >> >
>>>> >> > Thanks again.
>>>> >> >
>>>> >> > El vie, 14 oct 2022 a las 12:41, Frediano Ziglio (<
>>>> freddy77@gmail.com>) escribi=C3=B3:
>>>> >> >>
>>>> >> >> Il giorno gio 13 ott 2022 alle ore 16:58 Carlos Gonz=C3=A1lez
>>>> >> >> <piteccelaya@gmail.com> ha scritto:
>>>> >> >> >
>>>> >> >> > Hello.
>>>> >> >> >
>>>> >> >> > I'm trying a virtual machine with a live CD distribution calle=
d
>>>> AntiX Linux, which is directly based on Debian.
>>>> >> >> >
>>>> >> >> > I'm using direct QEMU commands.
>>>> >> >> > In the VM configuration I have this for SPICE configuration:
>>>> >> >> > "-vga qxl -device virtio-serial-pci -spice
>>>> unix=3Don,addr=3Dpath/to/vm_spice.socket,disable-ticketing=3Don -chard=
ev
>>>> spicevmc,id=3Dspicechannel0,name=3Dvdagent -device
>>>> virtserialport,chardev=3Dspicechannel0,name=3Dcom.redhat.spice.0 \"
>>>> >> >> > Then I boot the live ISO, double check that QXL driver is
>>>> installed -which normally always is-, and install spice-vdagent packag=
e
>>>> (version 20 here). I'm using remote-viewer (virt-viewer) to visualize =
the
>>>> VM.
>>>> >> >> >
>>>> >> >> > Up to this point, clipboard sharing with host still doesn't
>>>> work, and trying to drag a file from host to guest results in an error=
 "The
>>>> agent is not connected".
>>>> >> >> >
>>>> >> >>
>>>> >> >> This error is normal if the agent is stopped.
>>>> >> >>
>>>> >> >> > So I manually run "spice-vdagent" command, and clipboard
>>>> sharing now works, but trying to drag file from host to guest gives "F=
ile
>>>> transfer is disabled". Also, automatic resolution change with window
>>>> resizing doesn't work either.
>>>> >> >> >
>>>> >> >>
>>>> >> >> The fact that in this way the clipboard is running indicates tha=
t
>>>> the
>>>> >> >> agent is now working. You need to specify an output directory to
>>>> the
>>>> >> >> agent in order to get file transfer working.
>>>> >> >> About the resolution change that's weird, I think that feature o=
n
>>>> >> >> Linux does not even require the agent running. Is it possible
>>>> that the
>>>> >> >> client (remove-viewer) is not set up to send resize to the guest
>>>> >> >> automatically, there are some options on the menu.
>>>> >> >>
>>>> >> >> > Certainly, this live distro doesn't come with any spice-relate=
d
>>>> packages installed by default, except for the QXL package.
>>>> >> >> >
>>>> >> >> > Am I missing something here? Could someone help please?
>>>> >> >> > Thanks beforehand.
>>>> >> >>
>>>> >> >> Frediano
>>>>
>>>>

--000000000000dcb95a05ebdfe7b2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Already did; it did work, thanks (and yes, it&#39;s a=
lways Virtual-1 for some reason).</div><div>I couldn&#39;t understand it ve=
ry well from the bug report, why isn&#39;t it automatically working on some=
 DEs/WMs?<br></div><div><br></div><div>Now, could we focus on the nasty bug=
 with file transferring? As already mentioned, the -f and -o options are se=
rving of absolutely nothing...</div><div><br></div><div>Thanks.<br></div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El=
 lun, 24 oct 2022 a las 9:16, Uri Lublin (&lt;<a href=3D"mailto:uril@redhat=
.com">uril@redhat.com</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 20, 2022 at 11:52 PM Carlo=
s Gonz=C3=A1lez &lt;<a href=3D"mailto:piteccelaya@gmail.com" target=3D"_bla=
nk">piteccelaya@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"ltr"><div>So I did more tests.</div><d=
iv><br></div><div>First, AntiX Linux by default doesn&#39;t use &quot;deskt=
op environments&quot; but &quot;window managers&quot;, being the default Ic=
eWM. Also, it doesn&#39;t use SystemD at all; SysV instead. Regarding Xorg =
or Wayland, it&#39;s Xorg.</div><div><br></div><div><span>&gt; I did some t=
ests and with both Windows and Linux it appears that the<br>
&gt; agent is needed.</span></div><div><br></div><div>Well, of course it&#3=
9;s needed! That&#39;s per basic instructions...<br></div><div><br></div><d=
iv>Since there&#39;s no SystemD here, neither journalctl command. So tried =
running both spice-vdagentd and spice-vdagent with debugging:</div><div>sud=
o /usr/sbin/spice-vdagentd -x -d -d</div><div>spice-vdagent -f /path/to/fol=
der -x -d -d</div><div><br></div><div>When resizing the remote-viewer windo=
w, no logs whatsoever, and of course neither resolution update. Also, using=
 the -f option served of nothing; exact same error mentioned before...<br><=
/div><div>Neither anything at all related in /var/log/Xorg.0.log</div><div>=
*Only* clipboard sharing seems to work<br></div></div></blockquote><div><br=
></div><div>Try the workaround mentioned on the bug, run on the guest (afte=
r resizing remote-viewer&#39;s window):</div><div>=C2=A0=C2=A0=C2=A0 xrandr=
 | grep Virtual=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # look for the connected one<br>=
</div><div>=C2=A0=C2=A0=C2=A0 xrandr --output Virtual-0 --auto # may be Vir=
tual-1 instead of Virtual-0<br></div><div><br></div><div>Uri.</div><div><br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><=
div></div><div><br></div><div>By chance, do you think you could give the li=
ve ISO a try? It&#39;s a live system, and the &quot;Base&quot; version is a=
 CD size, not even a DVD...</div><div><br></div><div>Thanks again for your =
attention.<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">El mi=C3=A9, 19 oct 2022 a las 15:00, Uri Lublin (&lt;<=
a href=3D"mailto:uril@redhat.com" target=3D"_blank">uril@redhat.com</a>&gt;=
) escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr"><div>Hi,<br></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, Oct 18, 2022 at 8:40 PM Frediano Zigl=
io &lt;<a href=3D"mailto:freddy77@gmail.com" target=3D"_blank">freddy77@gma=
il.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">Il giorno mar 18 ott 2022 alle ore 01:04 Carlos Gonz=C3=A1lez<br>
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
bug: <a href=3D"https://bugzilla.redhat.com/show_bug.cgi?id=3D1290586" targ=
et=3D"_blank">https://bugzilla.redhat.com/show_bug.cgi?id=3D1290586</a></di=
v><div><br></div><div>Regards,</div><div>=C2=A0=C2=A0=C2=A0 Uri.</div><div>=
<br></div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
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
</blockquote></div>
</blockquote></div></div>
</blockquote></div>

--000000000000dcb95a05ebdfe7b2--
