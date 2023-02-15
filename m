Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5774669786F
	for <lists+spice-devel@lfdr.de>; Wed, 15 Feb 2023 09:44:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66F1C10EA6F;
	Wed, 15 Feb 2023 08:44:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3AAB10EA6E
 for <spice-devel@lists.freedesktop.org>; Wed, 15 Feb 2023 08:44:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1676450683;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=l8X6BAitNFCqC/LVipQkQMIjpLgam5o0QjtOo2+LuvE=;
 b=P+1HI9esUXNTO1m92ZixBnWG8pS4C192AkXeyPRpMpPQRuLnMza0EXJHu5wvOA8oCg8+wx
 Y9LHFyvfueQ7S+RBevHH834SoEf1SA8Uct1fXtM2MDNOv40OhAeQY3JIYZDILeC7xinhJL
 yQwILH0jSMndm/olbdTLnFp3oNeXSvY=
Received: from mail-ua1-f70.google.com (mail-ua1-f70.google.com
 [209.85.222.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-183-MAiTxgX_ORGRUeLKQuwv_Q-1; Wed, 15 Feb 2023 03:44:42 -0500
X-MC-Unique: MAiTxgX_ORGRUeLKQuwv_Q-1
Received: by mail-ua1-f70.google.com with SMTP id
 l3-20020ab03d83000000b0068aa2eabf0bso2412080uac.18
 for <spice-devel@lists.freedesktop.org>; Wed, 15 Feb 2023 00:44:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=l8X6BAitNFCqC/LVipQkQMIjpLgam5o0QjtOo2+LuvE=;
 b=RE+5niXxEfFd9vLZ6K1Ju0z8nOeoXuDuElRI3UNu/iUtvahtgLR+HqRYykcc4Db2QM
 2LmIZTYtTuhB/fAFmjsHJ0xWnnkalXaWQOW8fpw7NJFbS7ML+92eMAizCulKDdBVWW9+
 mItpJWAqhKg9NIXjf9CulzZ/i+KD8usQ2z+beoKZsDDFkaFwbeu53jJbnVL6IwZa07QJ
 UmQEIYCqzj925OpPkNsvNSJiIvwKBbuRkP7INTboMgljMQ7jR75MPyh+JIrVwCmjKP12
 G/8+XfJSSsGVJrEEw9zhTCFqMOUo9XCUjCi/868Zx9zcVC47BI+gK/QCoa7M67ZCVh3Z
 3boQ==
X-Gm-Message-State: AO0yUKV6bWWew7aRC5D3qssoJ0oE8BuKH73Fz9rIYN5RmCuPZslaCtQv
 3WFyJC4NVxJuFSpOXNNn0jTi7XjWRPZtKj1tG565sZnL74GSAKo7LIq2qXAI8VNLhbCGa0cc5u/
 IszEKQcizHdwGKxOvdWlgQN6QoCm9vFHGwDJ9L/egbog8R3U=
X-Received: by 2002:ab0:2407:0:b0:68a:c083:bbd5 with SMTP id
 f7-20020ab02407000000b0068ac083bbd5mr156378uan.13.1676450681578; 
 Wed, 15 Feb 2023 00:44:41 -0800 (PST)
X-Google-Smtp-Source: AK7set/QIxWscj7RFEb1uIkvoE1RhfI7Shfo0jfe/FRb3AO6FJO3aS9ZJM2l8zmOIokk4B7DMYXq8N+Y+e5kRpFzCeY=
X-Received: by 2002:ab0:2407:0:b0:68a:c083:bbd5 with SMTP id
 f7-20020ab02407000000b0068ac083bbd5mr156377uan.13.1676450681311; Wed, 15 Feb
 2023 00:44:41 -0800 (PST)
MIME-Version: 1.0
References: <SYZP282MB3252532513FAB75D92C10DC8C9A29@SYZP282MB3252.AUSP282.PROD.OUTLOOK.COM>
 <CAHt6W4fwa1r7f4gm5=_p2Q4cYHPdE5Dsk2484=O-9sNC1Wq2sA@mail.gmail.com>
 <SYZP282MB325243B7EB9CEF5B87E9AF9FC9A29@SYZP282MB3252.AUSP282.PROD.OUTLOOK.COM>
 <CAHt6W4d+HUBhJzCZGK7GWOampMZ7iVnPzhONyCd8=FjjbvTMYQ@mail.gmail.com>
 <20230214113216.ll3xhuzpthqdu4lh@tapioca>
 <CAKiOO4s9xAWq_54OjgNMxeS_6V5s-b65vtY89GukO2GjjaHbkQ@mail.gmail.com>
In-Reply-To: <CAKiOO4s9xAWq_54OjgNMxeS_6V5s-b65vtY89GukO2GjjaHbkQ@mail.gmail.com>
From: Yan Vugenfirer <yvugenfi@redhat.com>
Date: Wed, 15 Feb 2023 10:44:30 +0200
Message-ID: <CAGoVJZz_e2t-mXHB4+EC5Auz8Z_xtNhCzg49C=bNJ9+_t1Dy6A@mail.gmail.com>
To: Vadim Rozenfeld <vrozenfe@redhat.com>, "Benditovich,
 Yuri" <ybendito@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="00000000000057e67605f4b917bb"
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
 qi zhou <atmgnd@outlook.com>, admin <admin@atmgnd.cn>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--00000000000057e67605f4b917bb
Content-Type: text/plain; charset="UTF-8"

Adding @Benditovich, Yuri <ybendito@redhat.com>

As far as I remember, we built qxldod for Win10 only anyway.

Best regards,
Yan.

On Wed, Feb 15, 2023 at 1:54 AM Vadim Rozenfeld <vrozenfe@redhat.com> wrote:

>
>
> On Tue, Feb 14, 2023 at 10:32 PM Victor Toso <victortoso@redhat.com>
> wrote:
>
>> Hi Freddy,
>>
>> On Tue, Feb 14, 2023 at 11:08:21AM +0000, Frediano Ziglio wrote:
>> > Il giorno mar 14 feb 2023 alle ore 10:50 qi zhou <atmgnd@outlook.com>
>> > ha scritto:
>> > >
>> > > > Hi,
>> > > >   It looks good to me. Why it was QXL_IO_MEMSLOT_ADD I don't know.
>> On
>> > > > Linux is QXL_IO_RESET too.
>> > >
>> > > May be a typo ?, here you can use sysinternal's notmyfault to test
>> this bug.
>> > > 1. launch qemu use legacy bios mode. make sure qxl driver is active,
>> then open notmyfault64.exe click on crash button. It will trigger a bsod
>> > > 2. without reset/patch, we cannot see bluescreen shown
>> > >
>> > > before qxl revision 5, even DodResetDevice does nothing, the qemu
>> will do reset after detect qxl mode mismatch. see
>> https://github.com/qemu/qemu/blob/ed71c09ffd6fbd01c2a487d47291ae57b08671ea/hw/display/qxl.c#L1315
>> > >
>> > > But qxl revison 5+ requires explicit reset
>> > >
>> > > reference:
>> > > not myfault:
>> https://learn.microsoft.com/en-us/sysinternals/downloads/notmyfault
>> > > DXGKDDI_RESET_DEVICE :
>> https://learn.microsoft.com/en-us/windows-hardware/drivers/ddi/dispmprt/nc-dispmprt-dxgkddi_reset_device#remarks
>> >
>> > Merged.
>> >
>> > Now the question is about release and build.
>> >
>> > Uri, Victor, should we pack a new release?
>>
>> I'm not sure how to release it. We used to bundle it in
>> spice-guest-tools but there was a signing process too.
>>
>> I see that virtio-win also bundles spice-guest-tools so, they
>> ship our ancient release... I see something in preinst for
>> amd64/w8 on qxldod [0]. Vadim, does virtio-win build/sign qxldod for
>> some Windows releases with fixes?
>>
>>
> Unfortunately qxldod is not a part of the virtio-win drivers build.
> Technically, it should not be a problem to build a new version of qxldod
> driver and submit it to WHQL dashboard for attestation signing. But
> attestation signing works for Win10 drivers only.
>
> Best,
> Vadim.
>
>
>> [0]
>> https://fedorapeople.org/groups/virt/unattended/drivers/preinst/virtio-win/0.1.225/amd64/w8/
>>
>> Cheers,
>> Victor
>>
>

--00000000000057e67605f4b917bb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Adding=C2=A0<a class=3D"gmail_plusreply" id=3D"plusReplyCh=
ip-0" href=3D"mailto:ybendito@redhat.com" tabindex=3D"-1">@Benditovich, Yur=
i</a>=C2=A0<div><br></div><div>As far as I remember, we built qxldod for Wi=
n10 only anyway.</div><div><br></div><div>Best regards,</div><div>Yan.</div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Wed, Feb 15, 2023 at 1:54 AM Vadim Rozenfeld &lt;<a href=3D"mailto:vroz=
enfe@redhat.com">vrozenfe@redhat.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px=
;border-left-style:solid;border-left-color:rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 14, 2023 at 10:32 PM V=
ictor Toso &lt;<a href=3D"mailto:victortoso@redhat.com" target=3D"_blank">v=
ictortoso@redhat.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-sty=
le:solid;border-left-color:rgb(204,204,204);padding-left:1ex">Hi Freddy,<br=
>
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
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;bo=
rder-left-style:solid;border-left-color:rgb(204,204,204);padding-left:1ex">
[0] <a href=3D"https://fedorapeople.org/groups/virt/unattended/drivers/prei=
nst/virtio-win/0.1.225/amd64/w8/" rel=3D"noreferrer" target=3D"_blank">http=
s://fedorapeople.org/groups/virt/unattended/drivers/preinst/virtio-win/0.1.=
225/amd64/w8/</a><br>
<br>
Cheers,<br>
Victor<br>
</blockquote></div></div>
</blockquote></div>

--00000000000057e67605f4b917bb--

