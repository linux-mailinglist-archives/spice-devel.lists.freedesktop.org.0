Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA3D353B408
	for <lists+spice-devel@lfdr.de>; Thu,  2 Jun 2022 09:08:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A8F410E107;
	Thu,  2 Jun 2022 07:08:18 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com
 [IPv6:2a00:1450:4864:20::12d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 330E710FFDA
 for <spice-devel@lists.freedesktop.org>; Thu,  2 Jun 2022 07:02:18 +0000 (UTC)
Received: by mail-lf1-x12d.google.com with SMTP id l30so6380233lfj.3
 for <spice-devel@lists.freedesktop.org>; Thu, 02 Jun 2022 00:02:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=sOCGzhfmcosqkzf3a27WBaLeOhzsBHkGePW4CWmlihA=;
 b=OLGEashV04XnYMSCk5nzFoFOXcUuyf46/RrS0haoPWKT5G6RZSNt7Zl4xlsBVIYbuK
 XLdCKozjGVMPw2HPvUD+ZPQJQ2JMDoP/6Bl2h0ImUUBMhbGLa1GfAvglxM4GCx6ew7AY
 sb+/L06qzfsMj5BYqWGL9gzatS/SHF+chKw+NAYZMoyyH5Mk7Zf5fzOmvlWkeIh9unM3
 ms/n9Hd8/wfZB+GfDth9AhdYHo7+M+D+/ssw3sfvbaayDwAbscO9HGM54qkGHQNNHbmF
 VMwzWk5r0Xipo+grP4XwhB+cuAEmUu1JJGNJx0P2Rl/eBRyAhm9wK/fI8uCQ9RW031qu
 U/tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=sOCGzhfmcosqkzf3a27WBaLeOhzsBHkGePW4CWmlihA=;
 b=f7eFmjNy6BlStc5HwmfltOFHoS1BX1WLQPkTLwub5hdl8gaLMpUa0CWppc7NSsez3i
 vsDOn3XUp/nxmRAhbyn2jut0Ub0w5b+o6mnIVAwAIU+yfa1Y1unjiZ7fswMBlCI5gY51
 Q/ZEd+dD98sPQ47/Lv+guexPPhqHdNZj/Ab4elIe9WzDTFPC1LcmZRbtFwCME/fLZwOp
 PQgvxtagCQpDk1JxIpilzrJTK11q//JCLtteucFXnYP1Lw9leB2dwYaLXteNgUk97iIu
 aPMGIx34vfQwuj7z1MpGPHKoRdd7upG0dlhRAI7gUGMS+ci675Ggp+nEwGIH9lEEqnPx
 QxbQ==
X-Gm-Message-State: AOAM530ptexwa51LX6S+BbyzsrBNCC5pkIyIrH5gC2bo9+vl+7MKhjwr
 8FSdiN+6NbIY0CuyI6Ro82C3RRfy9D0UwzmhTVn1n0ib2fwLJT8aMks=
X-Google-Smtp-Source: ABdhPJy8doleVdHG6VVbE6HVHEyZrE291E0ffhPiWoCoPxL8whFd5EoLa893XgrRg8pO+VOEvIyVfDl7K9+w+3VsDlk=
X-Received: by 2002:a05:6512:169f:b0:479:f44:6a2c with SMTP id
 bu31-20020a056512169f00b004790f446a2cmr1269941lfb.80.1654153335778; Thu, 02
 Jun 2022 00:02:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAOgZG1xrwEv8T0Lq=z1id4FOKKrNdmP0_fXbEcr92i41546HbQ@mail.gmail.com>
In-Reply-To: <CAOgZG1xrwEv8T0Lq=z1id4FOKKrNdmP0_fXbEcr92i41546HbQ@mail.gmail.com>
From: Walter Mitty <waltermitty121906@gmail.com>
Date: Thu, 2 Jun 2022 15:02:03 +0800
Message-ID: <CAOgZG1w-sjDgZzaZ1-W3S-wkP83vcbLymM8BjTpWLe=MFtfRHQ@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="000000000000fbaf8205e07195f9"
X-Mailman-Approved-At: Thu, 02 Jun 2022 07:08:16 +0000
Subject: Re: [Spice-devel] [USB redirection] position offset for touch-screen
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

--000000000000fbaf8205e07195f9
Content-Type: text/plain; charset="UTF-8"

Hi guys,
I wanna make a summary about the USB touchscreen redirection offset
problem. Hope to be helpful.

*What is the problem?*
Using KVM/QEMU windows10 VM, with spice & QXL enabled, USB touchscreen
device redirection does not work as expected. There is some offset.
More specifically, the behaviour is quite different for
different resolutions.

Case 1: both client OS and guest OS resolution are 1024x768. It works as
expected, no offsets.
Case 2: client OS 1920x1080, guest OS 1024x768, there are offsets, but the
proportion seems right. Video record is here:
https://www.youtube.com/watch?v=ic97AClODx0&ab_channel=WalterMitty
Case 3: Both client OS and guest OS are 1920x1080, there are significant
offsets. Video record is here:
https://www.youtube.com/watch?v=2AmDnByUWno&ab_channel=WalterMitty

*What have I done to analyze this problem?*
I have tried to capture the USB data packets to prove that the data Guest
OS accepted is OK. Record here:
https://www.youtube.com/watch?v=XjmBUiqhnWU&ab_channel=WalterMitty

*What have I tried to overcome?*
I changed the QEMU *vga* device type from *qxl* to *virtio *or *std*. The
offset is gone.

However if you access your VM on SPICE remotely, from my experience, the
performance of qxl is better than virtio.
That means if you want to use qxl to support USB touchscreen redirection,
the workaround above is not for you.

With the help of  Uri Lublin(ulublin@redhat.com),  I prefer to believe
there is something buggy between qxl and SPICE-vdagent.  For the
performance consideration, I need QXL, not virtio.

Because there is no GPU on my server and I need to access my virtual
desktop from the remote. I will try to find a better solution. If you have
any suggestions, please let me know.


Regards,
Walter.

On Wed, May 18, 2022 at 9:59 AM Walter Mitty <waltermitty121906@gmail.com>
wrote:

> GuestOS: Win10
> Host OS: Ubuntu 20.04
> Client OS: Ubuntu 20.04
>
> I enabled usb redirection on a touch screen. The position VM actually
> rendered has offset from the touching point on screen. I wanna fix it. But
> I don't know where to start. Could anyone give me some advice please?
>

--000000000000fbaf8205e07195f9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi guys,</div>I wanna make a summary about the USB to=
uchscreen redirection offset problem. Hope=C2=A0to be helpful.<div><br><div=
><b>What is the problem?</b></div><div>Using KVM/QEMU windows10 VM, with sp=
ice &amp; QXL enabled, USB touchscreen device redirection does not work as =
expected. There is some offset.=C2=A0</div><div>More specifically, the beha=
viour is quite different for different=C2=A0resolutions.=C2=A0</div><div><b=
r></div><div>Case 1: both client OS and guest OS resolution are 1024x768. I=
t works as expected, no offsets.</div><div>Case 2: client OS 1920x1080, gue=
st OS 1024x768, there are offsets, but the proportion seems right. Video re=
cord is here:<a href=3D"https://www.youtube.com/watch?v=3Dic97AClODx0&amp;a=
b_channel=3DWalterMitty">https://www.youtube.com/watch?v=3Dic97AClODx0&amp;=
ab_channel=3DWalterMitty</a></div><div>Case 3: Both client OS and guest OS =
are 1920x1080, there are significant offsets. Video record is here:=C2=A0<a=
 href=3D"https://www.youtube.com/watch?v=3D2AmDnByUWno&amp;ab_channel=3DWal=
terMitty">https://www.youtube.com/watch?v=3D2AmDnByUWno&amp;ab_channel=3DWa=
lterMitty</a></div><div><br></div><div><b>What have I done to analyze this =
problem?</b></div><div>I have tried to capture the USB data packets to prov=
e that the data Guest OS accepted is OK. Record here:<a href=3D"https://www=
.youtube.com/watch?v=3DXjmBUiqhnWU&amp;ab_channel=3DWalterMitty">https://ww=
w.youtube.com/watch?v=3DXjmBUiqhnWU&amp;ab_channel=3DWalterMitty</a></div><=
div><br></div><div><b>What have I tried to overcome?</b></div><div>I change=
d the QEMU <b>vga</b> device type from <b>qxl</b> to <b>virtio </b>or <b>st=
d</b>. The offset is gone.=C2=A0</div><div><br></div><div>However if you ac=
cess your VM on SPICE remotely, from my experience, the performance of qxl =
is better than virtio.</div><div>That means if you want to use qxl to suppo=
rt USB touchscreen redirection, the workaround above is not for you.</div><=
div><br></div><div>With the help of=C2=A0 Uri Lublin(<span style=3D"color:r=
gb(85,85,85);font-family:Roboto,RobotoDraft,Helvetica,Arial,sans-serif;font=
-size:0.75rem;font-weight:inherit;letter-spacing:0.3px;white-space:nowrap">=
<a href=3D"mailto:ulublin@redhat.com">ulublin@redhat.com</a>),</span><span =
class=3D"gmail-Apple-converted-space" style=3D"font-family:&quot;Helvetica =
Neue&quot;;font-size:13px">=C2=A0</span><span style=3D"font-family:&quot;He=
lvetica Neue&quot;;font-size:13px">=C2=A0I prefer to believe there is somet=
hing buggy between qxl and SPICE-vdagent.=C2=A0 For the performance conside=
ration, I need QXL, not virtio.=C2=A0</span></div>






<p class=3D"gmail-p1" style=3D"margin:0px;font-variant-numeric:normal;font-=
variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height:no=
rmal;font-family:&quot;Helvetica Neue&quot;">Because there is no=C2=A0GPU o=
n my server and I need to access my virtual desktop from the remote. I will=
 try to find a better solution. If you have any suggestions, please let me =
know.</p>
<p class=3D"gmail-p2" style=3D"margin:0px;font-variant-numeric:normal;font-=
variant-east-asian:normal;font-stretch:normal;font-size:13px;line-height:no=
rmal;font-family:&quot;Helvetica Neue&quot;;min-height:15px"><br></p></div>=
<div>Regards,</div><div>Walter.</div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 18, 2022 at 9:59 AM Walter=
 Mitty &lt;<a href=3D"mailto:waltermitty121906@gmail.com">waltermitty121906=
@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div>GuestOS: Win10</div><div>Host OS: Ubuntu 2=
0.04</div><div>Client OS: Ubuntu 20.04</div><div><br></div>I enabled usb re=
direction on a touch screen. The position VM actually rendered has offset f=
rom the touching point on screen. I wanna fix it. But I don&#39;t know wher=
e to start. Could anyone give me some advice please?</div>
</blockquote></div>

--000000000000fbaf8205e07195f9--
