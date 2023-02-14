Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB843697222
	for <lists+spice-devel@lfdr.de>; Wed, 15 Feb 2023 00:53:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0976B10E123;
	Tue, 14 Feb 2023 23:53:48 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C253710E123
 for <spice-devel@lists.freedesktop.org>; Tue, 14 Feb 2023 23:53:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1676418825;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=RRAqMdOrRuhhAPUewYttCu/Ik9SzYmgasaIXFnVmGGk=;
 b=J1GLX1Q0sGYsT2j+y4smdv2hbOrIdW1fsFGY+0gAyPjdGUn745nftPYTLzXLbfPBGv/XTU
 BN97BTfRHSZW7dnGMefGhc0JzYIV/4Tf84hWNmfLRVE19w86pWHacbvqpWQ52ZpEuEzBzZ
 QtRoraFnfAKPkuilEcGU7H9rQpNLzNs=
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com
 [209.85.161.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-584-D9axcaEpNLCebDbQckWjPA-1; Tue, 14 Feb 2023 18:53:44 -0500
X-MC-Unique: D9axcaEpNLCebDbQckWjPA-1
Received: by mail-oo1-f71.google.com with SMTP id
 68-20020a4a1547000000b005170f10fc55so5939856oon.10
 for <spice-devel@lists.freedesktop.org>; Tue, 14 Feb 2023 15:53:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=RRAqMdOrRuhhAPUewYttCu/Ik9SzYmgasaIXFnVmGGk=;
 b=vvNYQg1CLeRhAQUnbkGM+NYrtEfFVO8PERUO+mIZfEFxRaFw2BkhdcEs78l0+lwY+A
 01JtSNf6JL9cT0BmWHrOttQG6j3yibDLH5ouKahcGAhHtPXjAAO0ORu2qLNanbe5pcG5
 w6gjleiKNaMHQDaw7FO1cpIsGr/9MOoxFFqtufEFADKpvhvW/RPmsKWPANKhY16IfqGd
 KWNiUm1G4X7CiigklPwc0qh52Q6j75KUZxXk73Y78uRcuYkAH9CSCpO92agTzn6T0Sno
 4m7Mc9ljF9EMQuiSgcaV7lVvdXR/L7S1Xd0lQhzwnu1cA/EEDyjls2JfUj8+VHw8T1Jm
 iGkA==
X-Gm-Message-State: AO0yUKWt7kQ//BneU7B3N6/yav0y2AJGbw4RS8o5WwlY8AW8/JJjPQtR
 Dv3fNezRxhpJlBVdAn8o0MCAdpGh7E8q1wDlqR01LbmQTmQ9Wv0Xx99J+J51QGQODa7YSNyKIaP
 mHVZdETOqRfn/2/fUlYDzFAE6MptkRYjJVinTZ2vU3wi8jio=
X-Received: by 2002:a9d:67ce:0:b0:68d:5a2a:2f40 with SMTP id
 c14-20020a9d67ce000000b0068d5a2a2f40mr4338otn.142.1676418823419; 
 Tue, 14 Feb 2023 15:53:43 -0800 (PST)
X-Google-Smtp-Source: AK7set+dK+Ns3fYCSsIhZvpFkOZdV8AaakdgRj1tfCdu+nQ6TAQ0tFaB3V+6hkxZKLvmH07L8uDdIkXcIBOavnR96lM=
X-Received: by 2002:a9d:67ce:0:b0:68d:5a2a:2f40 with SMTP id
 c14-20020a9d67ce000000b0068d5a2a2f40mr4335otn.142.1676418823136; Tue, 14 Feb
 2023 15:53:43 -0800 (PST)
MIME-Version: 1.0
References: <SYZP282MB3252532513FAB75D92C10DC8C9A29@SYZP282MB3252.AUSP282.PROD.OUTLOOK.COM>
 <CAHt6W4fwa1r7f4gm5=_p2Q4cYHPdE5Dsk2484=O-9sNC1Wq2sA@mail.gmail.com>
 <SYZP282MB325243B7EB9CEF5B87E9AF9FC9A29@SYZP282MB3252.AUSP282.PROD.OUTLOOK.COM>
 <CAHt6W4d+HUBhJzCZGK7GWOampMZ7iVnPzhONyCd8=FjjbvTMYQ@mail.gmail.com>
 <20230214113216.ll3xhuzpthqdu4lh@tapioca>
In-Reply-To: <20230214113216.ll3xhuzpthqdu4lh@tapioca>
From: Vadim Rozenfeld <vrozenfe@redhat.com>
Date: Wed, 15 Feb 2023 10:53:31 +1100
Message-ID: <CAKiOO4s9xAWq_54OjgNMxeS_6V5s-b65vtY89GukO2GjjaHbkQ@mail.gmail.com>
To: Victor Toso <victortoso@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="00000000000072bce005f4b1ace9"
Subject: Re: [Spice-devel] [PATCH] reset qxl to vga mode
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>,
 admin <admin@atmgnd.cn>, qi zhou <atmgnd@outlook.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--00000000000072bce005f4b1ace9
Content-Type: text/plain; charset="UTF-8"

On Tue, Feb 14, 2023 at 10:32 PM Victor Toso <victortoso@redhat.com> wrote:

> Hi Freddy,
>
> On Tue, Feb 14, 2023 at 11:08:21AM +0000, Frediano Ziglio wrote:
> > Il giorno mar 14 feb 2023 alle ore 10:50 qi zhou <atmgnd@outlook.com>
> > ha scritto:
> > >
> > > > Hi,
> > > >   It looks good to me. Why it was QXL_IO_MEMSLOT_ADD I don't know. On
> > > > Linux is QXL_IO_RESET too.
> > >
> > > May be a typo ?, here you can use sysinternal's notmyfault to test
> this bug.
> > > 1. launch qemu use legacy bios mode. make sure qxl driver is active,
> then open notmyfault64.exe click on crash button. It will trigger a bsod
> > > 2. without reset/patch, we cannot see bluescreen shown
> > >
> > > before qxl revision 5, even DodResetDevice does nothing, the qemu will
> do reset after detect qxl mode mismatch. see
> https://github.com/qemu/qemu/blob/ed71c09ffd6fbd01c2a487d47291ae57b08671ea/hw/display/qxl.c#L1315
> > >
> > > But qxl revison 5+ requires explicit reset
> > >
> > > reference:
> > > not myfault:
> https://learn.microsoft.com/en-us/sysinternals/downloads/notmyfault
> > > DXGKDDI_RESET_DEVICE :
> https://learn.microsoft.com/en-us/windows-hardware/drivers/ddi/dispmprt/nc-dispmprt-dxgkddi_reset_device#remarks
> >
> > Merged.
> >
> > Now the question is about release and build.
> >
> > Uri, Victor, should we pack a new release?
>
> I'm not sure how to release it. We used to bundle it in
> spice-guest-tools but there was a signing process too.
>
> I see that virtio-win also bundles spice-guest-tools so, they
> ship our ancient release... I see something in preinst for
> amd64/w8 on qxldod [0]. Vadim, does virtio-win build/sign qxldod for
> some Windows releases with fixes?
>
>
Unfortunately qxldod is not a part of the virtio-win drivers build.
Technically, it should not be a problem to build a new version of qxldod
driver and submit it to WHQL dashboard for attestation signing. But
attestation signing works for Win10 drivers only.

Best,
Vadim.


> [0]
> https://fedorapeople.org/groups/virt/unattended/drivers/preinst/virtio-win/0.1.225/amd64/w8/
>
> Cheers,
> Victor
>

--00000000000072bce005f4b1ace9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 14, 2023 at 10:32 PM Vict=
or Toso &lt;<a href=3D"mailto:victortoso@redhat.com">victortoso@redhat.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">H=
i Freddy,<br>
<br>
On Tue, Feb 14, 2023 at 11:08:21AM +0000, Frediano Ziglio wrote:<br>
&gt; Il giorno mar 14 feb 2023 alle ore 10:50 qi zhou &lt;<a href=3D"mailto=
:atmgnd@outlook.com" target=3D"_blank">atmgnd@outlook.com</a>&gt;<br>
&gt; ha scritto:<br>
&gt; &gt;<br>
&gt; &gt; &gt; Hi,<br>
&gt; &gt; &gt;=C2=A0 =C2=A0It looks good to me. Why it was QXL_IO_MEMSLOT_A=
DD I don&#39;t know. On<br>
&gt; &gt; &gt; Linux is QXL_IO_RESET too.<br>
&gt; &gt;<br>
&gt; &gt; May be a typo ?, here you can use sysinternal&#39;s notmyfault to=
 test this bug.<br>
&gt; &gt; 1. launch qemu use legacy bios mode. make sure qxl driver is acti=
ve, then open notmyfault64.exe click on crash button. It will trigger a bso=
d<br>
&gt; &gt; 2. without reset/patch, we cannot see bluescreen shown<br>
&gt; &gt;<br>
&gt; &gt; before qxl revision 5, even DodResetDevice does nothing, the qemu=
 will do reset after detect qxl mode mismatch. see <a href=3D"https://githu=
b.com/qemu/qemu/blob/ed71c09ffd6fbd01c2a487d47291ae57b08671ea/hw/display/qx=
l.c#L1315" rel=3D"noreferrer" target=3D"_blank">https://github.com/qemu/qem=
u/blob/ed71c09ffd6fbd01c2a487d47291ae57b08671ea/hw/display/qxl.c#L1315</a><=
br>
&gt; &gt;<br>
&gt; &gt; But qxl revison 5+ requires explicit reset<br>
&gt; &gt;<br>
&gt; &gt; reference:<br>
&gt; &gt; not myfault: <a href=3D"https://learn.microsoft.com/en-us/sysinte=
rnals/downloads/notmyfault" rel=3D"noreferrer" target=3D"_blank">https://le=
arn.microsoft.com/en-us/sysinternals/downloads/notmyfault</a><br>
&gt; &gt; DXGKDDI_RESET_DEVICE : <a href=3D"https://learn.microsoft.com/en-=
us/windows-hardware/drivers/ddi/dispmprt/nc-dispmprt-dxgkddi_reset_device#r=
emarks" rel=3D"noreferrer" target=3D"_blank">https://learn.microsoft.com/en=
-us/windows-hardware/drivers/ddi/dispmprt/nc-dispmprt-dxgkddi_reset_device#=
remarks</a><br>
&gt; <br>
&gt; Merged.<br>
&gt; <br>
&gt; Now the question is about release and build.<br>
&gt; <br>
&gt; Uri, Victor, should we pack a new release?<br>
<br>
I&#39;m not sure how to release it. We used to bundle it in<br>
spice-guest-tools but there was a signing process too.<br>
<br>
I see that virtio-win also bundles spice-guest-tools so, they<br>
ship our ancient release... I see something in preinst for<br>
amd64/w8 on qxldod [0]. Vadim, does virtio-win build/sign qxldod for<br>
some Windows releases with fixes?<br>
<br></blockquote><div><br></div><div>Unfortunately qxldod is not a part of =
the virtio-win drivers build.=C2=A0</div><div>Technically, it should=C2=A0n=
ot be a problem to build a new version of qxldod=C2=A0</div><div>driver and=
 submit it to WHQL dashboard for attestation signing. But=C2=A0</div><div>a=
ttestation signing works for Win10 drivers only.</div><div><br></div><div>B=
est,</div><div>Vadim.=C2=A0=C2=A0</div><div>=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
[0] <a href=3D"https://fedorapeople.org/groups/virt/unattended/drivers/prei=
nst/virtio-win/0.1.225/amd64/w8/" rel=3D"noreferrer" target=3D"_blank">http=
s://fedorapeople.org/groups/virt/unattended/drivers/preinst/virtio-win/0.1.=
225/amd64/w8/</a><br>
<br>
Cheers,<br>
Victor<br>
</blockquote></div></div>

--00000000000072bce005f4b1ace9--

