Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 623434B8B9E
	for <lists+spice-devel@lfdr.de>; Wed, 16 Feb 2022 15:40:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB4C610E413;
	Wed, 16 Feb 2022 14:40:19 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B3C910E413
 for <spice-devel@lists.freedesktop.org>; Wed, 16 Feb 2022 14:40:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1645022417;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=MjuUdNRAhnhkUEJ7+P84INV4Z0g/MBE44XSJx5xf2uM=;
 b=H07eyFGvin6PE4SXuNQUFu97gVdSWddnsPhbvmlsr6koBdR89+CGsD9XL6zN/gC5Uu3DFZ
 SEC9hcUXVa0XpFug6KLhj0wbvB/E57S90LOMR2CBwDYnnNG7zkgsLfowYruXXDYgON4lRa
 0P9pPZVwwhNUwYWfKQL2LfJqKFRR3Cg=
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com
 [209.85.167.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-231-8U3wQ67gOh2qp7wqEYTO5w-1; Wed, 16 Feb 2022 09:39:53 -0500
X-MC-Unique: 8U3wQ67gOh2qp7wqEYTO5w-1
Received: by mail-lf1-f71.google.com with SMTP id
 o25-20020a05651205d900b0043e6c10892bso751167lfo.14
 for <spice-devel@lists.freedesktop.org>; Wed, 16 Feb 2022 06:39:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MjuUdNRAhnhkUEJ7+P84INV4Z0g/MBE44XSJx5xf2uM=;
 b=3wecG+d1XiwVfNmDp7av4exBR9MjJUxFdI+zv2EEpILTMN7wklu89SEY49O8bQ0H1l
 FTTxTD03EgXc9/kWdPRHwllnlEfmTeHWOsg7y29NQ8fA7I4tvQIYOL4wMAS7DMmQCPEs
 gjFLI8iHs+inz5syFWkodf3lPQB0R4OhbMdjk44bxl3txha/Ujs8dmegef7l4t7LtDSa
 dSxgt0Wg9Bfwr4MxxW9AEos241KOdRJtxIQ6UPol5+xy2W+Lmu0qOxXtxNWQtlRZg6zG
 AkyNGA9NvwTRuI2Kl/qca3RcTbGq5o0BUJTvdvwMGxYMAmiTmrrOk+O7yWikMQiJwHWY
 y0fA==
X-Gm-Message-State: AOAM53071e/SBHZ9xtWM0CfyUGYfIlew1NU8ZTVHdmRA8t95MpSZkTTA
 n9cmI//UnffrOed4bJfCkiKyup5Bi4W6zgok1Da6SdrdBbxtm0dh8+IbbqoMDCAqffb4oKYMTYy
 K/zHXRy6Go71BIpM7qi+ihoeG1rsbEdgTpqhjoEeJTK1zlAs=
X-Received: by 2002:a2e:80c6:0:b0:244:e40a:75bc with SMTP id
 r6-20020a2e80c6000000b00244e40a75bcmr2298163ljg.519.1645022391528; 
 Wed, 16 Feb 2022 06:39:51 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwzqZvbYJo6TWlmxdL72D6mq5Q54IME9Gcy7ti5l8nAQ3NgPaCDLgLf84XDuAoARsmttgTBSOlaGN9HVYELn4s=
X-Received: by 2002:a2e:80c6:0:b0:244:e40a:75bc with SMTP id
 r6-20020a2e80c6000000b00244e40a75bcmr2298137ljg.519.1645022391116; Wed, 16
 Feb 2022 06:39:51 -0800 (PST)
MIME-Version: 1.0
References: <676eae2b-bb7c-2e89-6d0d-9a1cbc03ffa8@cn.fujitsu.com>
 <CAAg9qJ0cBHDqHoGGPvwtb7GeGXuM5foGhoo3g9wp-5wpP58j_g@mail.gmail.com>
 <TYCPR01MB9305A867046320ADF30122EBA5349@TYCPR01MB9305.jpnprd01.prod.outlook.com>
In-Reply-To: <TYCPR01MB9305A867046320ADF30122EBA5349@TYCPR01MB9305.jpnprd01.prod.outlook.com>
From: Uri Lublin <uril@redhat.com>
Date: Wed, 16 Feb 2022 16:39:40 +0200
Message-ID: <CAAg9qJ3nQp=RfWE2YKUsd2cvfWfS7C4HCmntsTYdnEoYmBRwxQ@mail.gmail.com>
To: "lizhijian@fujitsu.com" <lizhijian@fujitsu.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=ulublin@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000454cac05d8239fd3"
Subject: Re: [Spice-devel] usbredir doesn't hide/filter specific usb devices
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--000000000000454cac05d8239fd3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 15, 2022 at 5:41 PM lizhijian@fujitsu.com <lizhijian@fujitsu.co=
m>
wrote:

> > The auto-redirect-filter only works for auto-redirected USB devices.
>
> may i know what "auto-redirected usb devices" mean here.
> what's auto-redirect-filter user case.
>
>
USB devices that are being plugged in while the remote-viewer window is in
focus.
Such USB devices are auto-redirect'ed to the guest, but go through the
filter first.

Uri


>
> > When a user is choosing a device from the menu, the filter does not
> apply.
>
> any idea to hide specific host usb devices from guest by current scheme
>
>
> Get Outlook for Android <https://aka.ms/AAb9ysg>
>
> ------------------------------
> *=E5=8F=91=E4=BB=B6=E4=BA=BA:* Uri Lublin <uril@redhat.com>
> *=E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4:* 2022=E5=B9=B42=E6=9C=8815=E6=97=
=A5=E6=98=9F=E6=9C=9F=E4=BA=8C 22:50
> *=E6=94=B6=E4=BB=B6=E4=BA=BA:* Li, Zhijian/=E6=9D=8E =E6=99=BA=E5=9D=9A
> *=E6=8A=84=E9=80=81:* spice-devel
> *=E4=B8=BB=E9=A2=98:* Re: [Spice-devel] usbredir doesn't hide/filter spec=
ific usb devices
>
> Hi Zhijian,
>
> On Tue, Feb 15, 2022 at 3:52 PM Li, Zhijian <lizhijian@cn.fujitsu.com>
> wrote:
>
>> Hi guys
>>
>> I intended to not allow redirecting some of my usb devices(HID) to the
>> guest, i thought https://www.spice-space.org/usbredir.html
>> could help on this.
>>
>> My host has below usb devices
>>
>> lizj@FNSTPC:~/workspace/vgt/virt-viewer/src$ lsusb
>> Bus 002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
>> Bus 001 Device 006: ID 04d8:0b2a Microchip Technology, Inc.
>> Bus 001 Device 021: ID 046d:c534 Logitech, Inc. Unifying Receiver
>> Bus 001 Device 004: ID 0424:2137 Standard Microsystems Corp.
>> Bus 001 Device 003: ID 0bda:8176 Realtek Semiconductor Corp. RTL8188CUS
>> 802.11n WLAN Adapter
>> Bus 001 Device 002: ID 0bda:8771 Realtek Semiconductor Corp.
>> Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
>>
>> $ remote-viewer
>> --spice-usbredir-auto-redirect-filter=3D"-1,0x0bda,-1,-1,0" --spice-debu=
g
>> spice://localhost:5900
>>
>
>> For testing, i just want to hide produce id 0x0bda from remote-viewer
>> with above command line. But acutally
>>
>> i am still able to redirec both Realtek device to the guest through
>> remote-viewer.
>>
>> So is there something with my usage ? Feel free to let me know if there
>> is something wrong.
>>
>
> The auto-redirect-filter only works for auto-redirected USB devices.
> When a user is choosing a device from the menu, the filter does not apply=
.
>
> Regards,
>     Uri.T
>
>
>>
>> Thanks
>>
>> Zhijian
>>
>>
>>
>>
>

--000000000000454cac05d8239fd3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Tue, Feb 15, 2022 at 5:41 PM <a href=3D"mailto:lizhijian@fujitsu.=
com" target=3D"_blank">lizhijian@fujitsu.com</a> &lt;<a href=3D"mailto:lizh=
ijian@fujitsu.com" target=3D"_blank">lizhijian@fujitsu.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">



<div>
<div style=3D"color:rgb(33,33,33);background-color:rgb(255,255,255)" dir=3D=
"auto">
&gt; The auto-redirect-filter only works for auto-redirected USB devices.</=
div>
<div style=3D"color:rgb(33,33,33);background-color:rgb(255,255,255)" dir=3D=
"auto">
<br>
</div>
<div style=3D"color:rgb(33,33,33);background-color:rgb(255,255,255)" dir=3D=
"auto">
may i know what &quot;auto-redirected usb devices&quot; mean here. what&#39=
;s=C2=A0auto-redirect-filter user case.</div>
<div style=3D"color:rgb(33,33,33);background-color:rgb(255,255,255)" dir=3D=
"auto">
<br></div></div></blockquote><div><br></div><div>USB devices that are being=
 plugged in while the remote-viewer window is in focus.<br></div><div>Such =
USB devices are auto-redirect&#39;ed to the guest, but go through the filte=
r first.</div><div><br></div><div>Uri</div><div><br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div><div style=3D"color:rgb(33,33,33);bac=
kground-color:rgb(255,255,255)" dir=3D"auto">
</div>
<div style=3D"color:rgb(33,33,33);background-color:rgb(255,255,255)" dir=3D=
"auto">
<br>
</div>
<div style=3D"color:rgb(33,33,33);background-color:rgb(255,255,255)" dir=3D=
"auto">
<br>
</div>
<div style=3D"color:rgb(33,33,33);background-color:rgb(255,255,255)" dir=3D=
"auto">
<span>&gt; When a user is choosing a device from the menu, the filter does =
not apply.</span></div>
<div id=3D"m_3220267789811850740gmail-m_8151785131361810437ms-outlook-mobil=
e-signature" dir=3D"auto">
<div><br>
</div>
<div dir=3D"auto">any idea to hide specific host usb devices from guest by =
current scheme</div>
<div dir=3D"auto"><br>
</div>
<div><br>
</div>
Get <a href=3D"https://aka.ms/AAb9ysg" target=3D"_blank">Outlook for Androi=
d</a></div>
<div id=3D"m_3220267789811850740gmail-m_8151785131361810437id-f6a8d475-5dcb=
-48a4-9fd6-b9df2cd42998">
<div style=3D"font-family:sans-serif;font-size:12.48pt;color:rgb(0,0,0)"><b=
r>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_3220267789811850740gmail-m_8151785131361810437divRplyFwdMsg"><=
b>=E5=8F=91=E4=BB=B6=E4=BA=BA:</b> Uri Lublin &lt;<a href=3D"mailto:uril@re=
dhat.com" target=3D"_blank">uril@redhat.com</a>&gt;<br>
<b>=E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4:</b> 2022=E5=B9=B42=E6=9C=8815=E6=
=97=A5=E6=98=9F=E6=9C=9F=E4=BA=8C 22:50<br>
<b>=E6=94=B6=E4=BB=B6=E4=BA=BA:</b> Li, Zhijian/=E6=9D=8E =E6=99=BA=E5=9D=
=9A<br>
<b>=E6=8A=84=E9=80=81:</b> spice-devel<br>
<b>=E4=B8=BB=E9=A2=98:</b> Re: [Spice-devel] usbredir doesn&#39;t hide/filt=
er specific usb devices<br>
</div>
<br>
<div dir=3D"ltr">
<div>Hi Zhijian,</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 15, 2022 at 3:52 PM Li, Z=
hijian &lt;<a href=3D"mailto:lizhijian@cn.fujitsu.com" target=3D"_blank">li=
zhijian@cn.fujitsu.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
Hi guys<br>
<br>
I intended to not allow redirecting some of my usb devices(HID) to the gues=
t, i thought
<a href=3D"https://www.spice-space.org/usbredir.html" rel=3D"noreferrer" ta=
rget=3D"_blank">
https://www.spice-space.org/usbredir.html</a><br>
could help on this.<br>
<br>
My host has below usb devices<br>
<br>
lizj@FNSTPC:~/workspace/vgt/virt-viewer/src$ lsusb<br>
Bus 002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub<br>
Bus 001 Device 006: ID 04d8:0b2a Microchip Technology, Inc.<br>
Bus 001 Device 021: ID 046d:c534 Logitech, Inc. Unifying Receiver<br>
Bus 001 Device 004: ID 0424:2137 Standard Microsystems Corp.<br>
Bus 001 Device 003: ID 0bda:8176 Realtek Semiconductor Corp. RTL8188CUS <br=
>
802.11n WLAN Adapter<br>
Bus 001 Device 002: ID 0bda:8771 Realtek Semiconductor Corp.<br>
Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub<br>
<br>
$ remote-viewer <br>
--spice-usbredir-auto-redirect-filter=3D&quot;-1,0x0bda,-1,-1,0&quot; --spi=
ce-debug <br>
spice://localhost:5900<br>
</blockquote>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
For testing, i just want to hide produce id 0x0bda from remote-viewer <br>
with above command line. But acutally<br>
<br>
i am still able to redirec both Realtek device to the guest through <br>
remote-viewer.<br>
<br>
So is there something with my usage ? Feel free to let me know if there <br=
>
is something wrong.<br>
</blockquote>
<div><br>
</div>
<div>The auto-redirect-filter only works for auto-redirected USB devices.</=
div>
<div>When a user is choosing a device from the menu, the filter does not ap=
ply.</div>
<div><br>
</div>
<div>Regards,</div>
<div dir=3D"auto">=C2=A0=C2=A0=C2=A0 Uri.T<br>
</div>
<div>=C2=A0</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Thanks<br>
<br>
Zhijian<br>
<br>
<br>
<br>
</blockquote>
</div>
</div>
<br>
</div>
</div>

</blockquote></div></div>

--000000000000454cac05d8239fd3--

