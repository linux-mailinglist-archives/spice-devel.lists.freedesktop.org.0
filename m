Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A10896992F2
	for <lists+spice-devel@lfdr.de>; Thu, 16 Feb 2023 12:18:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2861410E15D;
	Thu, 16 Feb 2023 11:18:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6826810E0B9
 for <spice-devel@lists.freedesktop.org>; Wed, 15 Feb 2023 12:27:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1676464043;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=hzwd3ELDzJ+zIanJIW9toZM0BIfpsP0G4sio2PLqpV4=;
 b=AuFeOv3w1YqOFVnEHtu1au53iTzu+7IeyqWUBKJ4WGqafTQ9SOqytRnYo5SenJ56aS7mXR
 xR+vMTcFlsx4w/+MDBewIXIlKcGWy2IpDs5gn7aHSYewzzajhTI4NUxh5go9BdV4WJSAf9
 nKHhYkbmZkVnQoXRMxTvXWQaOZwNilk=
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com
 [209.85.208.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-433-LsG-r5kZPxyPxM6c_iWZXw-1; Wed, 15 Feb 2023 07:27:21 -0500
X-MC-Unique: LsG-r5kZPxyPxM6c_iWZXw-1
Received: by mail-lj1-f197.google.com with SMTP id
 v2-20020a2e9602000000b002904dcec88eso4660039ljh.8
 for <spice-devel@lists.freedesktop.org>; Wed, 15 Feb 2023 04:27:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=hzwd3ELDzJ+zIanJIW9toZM0BIfpsP0G4sio2PLqpV4=;
 b=I/Y2H4guDEQ4vJzsl4tA+2sRrJQLK+HSa7G0k9Wa9cPnObds2xvK7FvhRfEhgDVsAe
 3gPBZYRcIxGIr5RwrIIR76EnOlGSEGPPd62yJzVAwiB3C5wYlFhtUZuQ7wBJT5njjhgM
 R/oom6f3KT2cn+r/zSM1FXeUr2r2vtKs5hAGRP4fXi/y5N4FnzAHQykVsJV6rtI/B3+p
 XCuCKUuKPVYtZed8N/io65iI3fgTw+CGyNi8c/i7Re9W3bbwlKcfu817BBwINOXoqHx+
 EjvFTXMNXadnwu9W/Aft/SE3pjIf5auT4pY8NOjIZ5PRH1zXtnSGTsCQkXNkBdwEM2XG
 C53Q==
X-Gm-Message-State: AO0yUKX7+FaTmNJaHWHVhWtVLyfVHbZY8SibKcsV0Wsr/1Olql3G03CK
 76EdvXNqeuAV7BFQfXbLOO72o8bdDfDAWHg95H+Q6eWS5D9VnSHXCeJhkKJ6ydBeCj/hk6aopyp
 qafe3zFaDO/qzYriuveR38HYivsT9iEA1U6XruLdI+vuwQys=
X-Received: by 2002:ac2:43b9:0:b0:4db:182b:2d74 with SMTP id
 t25-20020ac243b9000000b004db182b2d74mr488627lfl.9.1676464040468; 
 Wed, 15 Feb 2023 04:27:20 -0800 (PST)
X-Google-Smtp-Source: AK7set/wlD5sZn5qF7W9Rk5Wc47K4dZVzVWp4kKKbz0QmbAiGugnQ5G65HrZ4Kc7E+irL2lE9aRmNTuioBXd2N8mrWU=
X-Received: by 2002:ac2:43b9:0:b0:4db:182b:2d74 with SMTP id
 t25-20020ac243b9000000b004db182b2d74mr488623lfl.9.1676464040256; Wed, 15 Feb
 2023 04:27:20 -0800 (PST)
MIME-Version: 1.0
References: <SYZP282MB3252532513FAB75D92C10DC8C9A29@SYZP282MB3252.AUSP282.PROD.OUTLOOK.COM>
 <CAHt6W4fwa1r7f4gm5=_p2Q4cYHPdE5Dsk2484=O-9sNC1Wq2sA@mail.gmail.com>
 <SYZP282MB325243B7EB9CEF5B87E9AF9FC9A29@SYZP282MB3252.AUSP282.PROD.OUTLOOK.COM>
 <CAHt6W4d+HUBhJzCZGK7GWOampMZ7iVnPzhONyCd8=FjjbvTMYQ@mail.gmail.com>
 <20230214113216.ll3xhuzpthqdu4lh@tapioca>
 <CAKiOO4s9xAWq_54OjgNMxeS_6V5s-b65vtY89GukO2GjjaHbkQ@mail.gmail.com>
 <CAGoVJZz_e2t-mXHB4+EC5Auz8Z_xtNhCzg49C=bNJ9+_t1Dy6A@mail.gmail.com>
In-Reply-To: <CAGoVJZz_e2t-mXHB4+EC5Auz8Z_xtNhCzg49C=bNJ9+_t1Dy6A@mail.gmail.com>
From: Yuri Benditovich <ybendito@redhat.com>
Date: Wed, 15 Feb 2023 14:27:08 +0200
Message-ID: <CAK9d7mwLKY3LKNKX1XxUNsteYjWZ0-UXzk3T+NbchTLBRCQvCQ@mail.gmail.com>
To: Yan Vugenfirer <yvugenfi@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="00000000000099327105f4bc3347"
X-Mailman-Approved-At: Thu, 16 Feb 2023 11:18:48 +0000
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

--00000000000099327105f4bc3347
Content-Type: text/plain; charset="UTF-8"

The procedure was:
We sign the driver for Win10 only and then produce 2 driver packages: one
for Win 10 (with signed one) and another one for 8.1 (we call it
'compatible') as is. It is signed by RH certificate and has all the
respective limitations.


On Wed, Feb 15, 2023 at 10:44 AM Yan Vugenfirer <yvugenfi@redhat.com> wrote:

> Adding @Benditovich, Yuri <ybendito@redhat.com>
>
> As far as I remember, we built qxldod for Win10 only anyway.
>
> Best regards,
> Yan.
>
> On Wed, Feb 15, 2023 at 1:54 AM Vadim Rozenfeld <vrozenfe@redhat.com>
> wrote:
>
>>
>>
>> On Tue, Feb 14, 2023 at 10:32 PM Victor Toso <victortoso@redhat.com>
>> wrote:
>>
>>> Hi Freddy,
>>>
>>> On Tue, Feb 14, 2023 at 11:08:21AM +0000, Frediano Ziglio wrote:
>>> > Il giorno mar 14 feb 2023 alle ore 10:50 qi zhou <atmgnd@outlook.com>
>>> > ha scritto:
>>> > >
>>> > > > Hi,
>>> > > >   It looks good to me. Why it was QXL_IO_MEMSLOT_ADD I don't know.
>>> On
>>> > > > Linux is QXL_IO_RESET too.
>>> > >
>>> > > May be a typo ?, here you can use sysinternal's notmyfault to test
>>> this bug.
>>> > > 1. launch qemu use legacy bios mode. make sure qxl driver is active,
>>> then open notmyfault64.exe click on crash button. It will trigger a bsod
>>> > > 2. without reset/patch, we cannot see bluescreen shown
>>> > >
>>> > > before qxl revision 5, even DodResetDevice does nothing, the qemu
>>> will do reset after detect qxl mode mismatch. see
>>> https://github.com/qemu/qemu/blob/ed71c09ffd6fbd01c2a487d47291ae57b08671ea/hw/display/qxl.c#L1315
>>> > >
>>> > > But qxl revison 5+ requires explicit reset
>>> > >
>>> > > reference:
>>> > > not myfault:
>>> https://learn.microsoft.com/en-us/sysinternals/downloads/notmyfault
>>> > > DXGKDDI_RESET_DEVICE :
>>> https://learn.microsoft.com/en-us/windows-hardware/drivers/ddi/dispmprt/nc-dispmprt-dxgkddi_reset_device#remarks
>>> >
>>> > Merged.
>>> >
>>> > Now the question is about release and build.
>>> >
>>> > Uri, Victor, should we pack a new release?
>>>
>>> I'm not sure how to release it. We used to bundle it in
>>> spice-guest-tools but there was a signing process too.
>>>
>>> I see that virtio-win also bundles spice-guest-tools so, they
>>> ship our ancient release... I see something in preinst for
>>> amd64/w8 on qxldod [0]. Vadim, does virtio-win build/sign qxldod for
>>> some Windows releases with fixes?
>>>
>>>
>> Unfortunately qxldod is not a part of the virtio-win drivers build.
>> Technically, it should not be a problem to build a new version of qxldod
>> driver and submit it to WHQL dashboard for attestation signing. But
>> attestation signing works for Win10 drivers only.
>>
>> Best,
>> Vadim.
>>
>>
>>> [0]
>>> https://fedorapeople.org/groups/virt/unattended/drivers/preinst/virtio-win/0.1.225/amd64/w8/
>>>
>>> Cheers,
>>> Victor
>>>
>>

--00000000000099327105f4bc3347
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The procedure was:</div>We sign the driver for Win10 =
only and then produce 2 driver packages: one for Win 10 (with signed one) a=
nd another one for 8.1 (we call it &#39;compatible&#39;) as is. It is signe=
d by RH certificate and has all the respective limitations.<div><br></div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Wed, Feb 15, 2023 at 10:44 AM Yan Vugenfirer &lt;<a href=3D"mailto:yvugen=
fi@redhat.com">yvugenfi@redhat.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Adding=C2=A0<a class=3D"=
gmail_plusreply" id=3D"m_8591457214490892260plusReplyChip-0" href=3D"mailto=
:ybendito@redhat.com" target=3D"_blank">@Benditovich, Yuri</a>=C2=A0<div><b=
r></div><div>As far as I remember, we built qxldod for Win10 only anyway.</=
div><div><br></div><div>Best regards,</div><div>Yan.</div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 15, 2=
023 at 1:54 AM Vadim Rozenfeld &lt;<a href=3D"mailto:vrozenfe@redhat.com" t=
arget=3D"_blank">vrozenfe@redhat.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><br><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Tue, Feb 14, 2023 at 10:32 PM Victor Toso &lt;<a href=3D"mailto:victortos=
o@redhat.com" target=3D"_blank">victortoso@redhat.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Freddy,<br>
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
</blockquote></div>
</blockquote></div>

--00000000000099327105f4bc3347--

