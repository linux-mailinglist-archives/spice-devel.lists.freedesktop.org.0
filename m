Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1A84B6F65
	for <lists+spice-devel@lfdr.de>; Tue, 15 Feb 2022 15:50:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9386E10E468;
	Tue, 15 Feb 2022 14:50:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7C3110E37F
 for <spice-devel@lists.freedesktop.org>; Tue, 15 Feb 2022 14:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1644936603;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=lRIVizDbmAvxT+h3fOW/5QyEKqBrAxwQ2uQLA/olQp8=;
 b=RwY5Hzpu+5COIQejKi69+eVKakwALysoBh6uli2lux5MGWX0nLrGuoI8cUSgoEYqnAuENF
 e+5umI7kfaFFQ+a64rX0ebgE08rv/oJJg7ac9O9s91UGl2CmLTLPUSKk3ExMivbtLe8PS3
 ZSgyAsY171BA0ppoGTCfJDsDlPwL+XU=
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com
 [209.85.167.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-631-Ea6ZabhRP0evDdfWKka-Gw-1; Tue, 15 Feb 2022 09:49:58 -0500
X-MC-Unique: Ea6ZabhRP0evDdfWKka-Gw-1
Received: by mail-lf1-f72.google.com with SMTP id
 h16-20020a056512221000b00442f7ad732bso3645813lfu.15
 for <spice-devel@lists.freedesktop.org>; Tue, 15 Feb 2022 06:49:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lRIVizDbmAvxT+h3fOW/5QyEKqBrAxwQ2uQLA/olQp8=;
 b=iTvKVtOo3P8fZSIBFnWPzHg2cgPk8wyPeTbFf3Rkukqtcqqn5/OyJ/HGYbkW1oGr7M
 l2Feqku0CTuzUUAdSCPxSq1lMd+U7kmzYBqadYoFYUR1CL6X2RXq4ZEimLhi2bkCdIGi
 bhNswLwtcbG2KTu2OEz4qr7J4GsRjf+8EZGc3D/w9Q57L1RYArYPxGg4rcv3ZJ6sHAyn
 LAHi65kRWBLM1V9PPD1sBxFdAnM+XAeHanwkjvIPMHVOi1o5YY46cJf7yuscC+L3xF4+
 ijVHN+zV7tbaVHhER4aG+76mubPTZpXzqUdtBI5VoMeWmjoL+6nphFadTHRUXO0QyX2K
 vtGg==
X-Gm-Message-State: AOAM531YnL9XkQ7HOMu/TgiJbFSpg18eAZQIIAr4wJ/T0H5DM5tSDq6A
 NrWq13csoQutCxBdAXONkdxJedvZRsiE1bG37CJ5G5ni4lMi8clswC8AXNd53FRA9yP615tkytj
 JJu6aNvfsVu3xIVpSHgYp0YgjSHZ8Lf+HEG+EZjMwLEiQ460=
X-Received: by 2002:a2e:a49a:: with SMTP id h26mr2724145lji.183.1644936596680; 
 Tue, 15 Feb 2022 06:49:56 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxWEUpuc9HrPg4KmByuawtZxk+n24pj361r29lSXLjUi7arfcZAzu8mOMjJP0IC4zZdvLDkaE8xT/JiKzZt8JM=
X-Received: by 2002:a2e:a49a:: with SMTP id h26mr2724131lji.183.1644936596353; 
 Tue, 15 Feb 2022 06:49:56 -0800 (PST)
MIME-Version: 1.0
References: <676eae2b-bb7c-2e89-6d0d-9a1cbc03ffa8@cn.fujitsu.com>
In-Reply-To: <676eae2b-bb7c-2e89-6d0d-9a1cbc03ffa8@cn.fujitsu.com>
From: Uri Lublin <uril@redhat.com>
Date: Tue, 15 Feb 2022 16:49:45 +0200
Message-ID: <CAAg9qJ0cBHDqHoGGPvwtb7GeGXuM5foGhoo3g9wp-5wpP58j_g@mail.gmail.com>
To: "Li, Zhijian" <lizhijian@cn.fujitsu.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=ulublin@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000810a2e05d80fa5a2"
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

--000000000000810a2e05d80fa5a2
Content-Type: text/plain; charset="UTF-8"

Hi Zhijian,

On Tue, Feb 15, 2022 at 3:52 PM Li, Zhijian <lizhijian@cn.fujitsu.com>
wrote:

> Hi guys
>
> I intended to not allow redirecting some of my usb devices(HID) to the
> guest, i thought https://www.spice-space.org/usbredir.html
> could help on this.
>
> My host has below usb devices
>
> lizj@FNSTPC:~/workspace/vgt/virt-viewer/src$ lsusb
> Bus 002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
> Bus 001 Device 006: ID 04d8:0b2a Microchip Technology, Inc.
> Bus 001 Device 021: ID 046d:c534 Logitech, Inc. Unifying Receiver
> Bus 001 Device 004: ID 0424:2137 Standard Microsystems Corp.
> Bus 001 Device 003: ID 0bda:8176 Realtek Semiconductor Corp. RTL8188CUS
> 802.11n WLAN Adapter
> Bus 001 Device 002: ID 0bda:8771 Realtek Semiconductor Corp.
> Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
>
> $ remote-viewer
> --spice-usbredir-auto-redirect-filter="-1,0x0bda,-1,-1,0" --spice-debug
> spice://localhost:5900
>

> For testing, i just want to hide produce id 0x0bda from remote-viewer
> with above command line. But acutally
>
> i am still able to redirec both Realtek device to the guest through
> remote-viewer.
>
> So is there something with my usage ? Feel free to let me know if there
> is something wrong.
>

The auto-redirect-filter only works for auto-redirected USB devices.
When a user is choosing a device from the menu, the filter does not apply.

Regards,
    Uri.


>
> Thanks
>
> Zhijian
>
>
>
>

--000000000000810a2e05d80fa5a2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Zhijian,</div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 15, 2022 at 3:52 PM Li, Zhijia=
n &lt;<a href=3D"mailto:lizhijian@cn.fujitsu.com">lizhijian@cn.fujitsu.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">H=
i guys<br>
<br>
I intended to not allow redirecting some of my usb devices(HID) to the gues=
t, i thought <a href=3D"https://www.spice-space.org/usbredir.html" rel=3D"n=
oreferrer" target=3D"_blank">https://www.spice-space.org/usbredir.html</a><=
br>
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
spice://localhost:5900<br></blockquote><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">
<br>
For testing, i just want to hide produce id 0x0bda from remote-viewer <br>
with above command line. But acutally<br>
<br>
i am still able to redirec both Realtek device to the guest through <br>
remote-viewer.<br>
<br>
So is there something with my usage ? Feel free to let me know if there <br=
>
is something wrong.<br></blockquote><div><br></div><div>The auto-redirect-f=
ilter only works for auto-redirected USB devices.</div><div>When a user is =
choosing a device from the menu, the filter does not apply.</div><div><br><=
/div><div>Regards,</div><div>=C2=A0=C2=A0=C2=A0 Uri.<br></div><div>=C2=A0</=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Thanks<br>
<br>
Zhijian<br>
<br>
<br>
<br>
</blockquote></div></div>

--000000000000810a2e05d80fa5a2--

