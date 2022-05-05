Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C4DC351B82E
	for <lists+spice-devel@lfdr.de>; Thu,  5 May 2022 08:46:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C50D710F3EC;
	Thu,  5 May 2022 06:46:26 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com
 [IPv6:2a00:1450:4864:20::12c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5B9B10F3EC
 for <spice-devel@lists.freedesktop.org>; Thu,  5 May 2022 06:46:25 +0000 (UTC)
Received: by mail-lf1-x12c.google.com with SMTP id u23so231101lfc.1
 for <spice-devel@lists.freedesktop.org>; Wed, 04 May 2022 23:46:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7dKOwTfDhRMVnFivhheSapWrZ8+6Kuf6E7ygrFphgFU=;
 b=gnOn4QQiQcsSupWTcLSgujbVmu/bNDHNbfvbeGqKnqV6gj7myXbQREDlPtaP7oyncj
 zVwmoeN7eV/BExZe6n+hiCEQR7L8QhZDVxR5Ls6uQ2Vv/ixCeAUravAnDXH7zjZoMz4c
 uTjJA4AgnXlTOpenxIdmOend3R295dOLaE1JZkyouZ+5w4zGrMQpyDRVVjEzI5ghmKG5
 7CN1eOADti8/np7qqVetLAyvkryOMx1iOd8uKI+30yYetgCoOQBgJZk2sZ0/PpvyVFPp
 U7CukIqGtLiCL/OZON9R8bMsryER5eNaHfL91uNa9Y8zdvotcSZ7srGYVzEKBWIJ6GEK
 0HkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7dKOwTfDhRMVnFivhheSapWrZ8+6Kuf6E7ygrFphgFU=;
 b=7Kx7Wvg7NxS58wHW6RZb/25g3cdXHClAc8YAH9dgtDDBMFugsuDl/DOgkJ0JexHno6
 rc7kwovdXABoMcLd+Zwszbu8XCvzft91jMrilAvnLNRbQLxGUUxUjwi9cOg7m7547uYx
 k8nc7w9lYiBXORborKTOfxCgFRudprCZObvCQ+wnAVuOXqzcQayFEpCpukDg/ck8UH49
 9s/JZM6q8yGQcEvEUjSNftUcGYfPDt1MYg7D/28W39KO5zK+gUYai9iHiV/d4rMx4N9p
 JkJ/ZyrfKjj5aOwFlXJ0hHYkT7NNgTW36lZa+juGxb6jxdM9npVRBXHau/w229bTrzLp
 BJ0Q==
X-Gm-Message-State: AOAM532VgCEkiy3IJKlXjyHZ5Bn1cD9w3maoFpH6pkYjHZKPMpYYjiUE
 fjC6CJIy5VzTc12T4DKzJ4Gzs4gyAQj8c2q2JB7NrkIzCCE=
X-Google-Smtp-Source: ABdhPJys3hMARwvO54WEVV4aoIqK24s1taSlodP1zNvrnQKdfcRhKYLRgHuSgZIwKJJWkGUoRVjumvSlHuZPQJhk6D0=
X-Received: by 2002:a19:ac42:0:b0:448:1f15:4b18 with SMTP id
 r2-20020a19ac42000000b004481f154b18mr16745619lfc.32.1651733184088; Wed, 04
 May 2022 23:46:24 -0700 (PDT)
MIME-Version: 1.0
References: <CAHAhJwJ0Zag6P4Y8GfxDOi9ApQ5f-YbZ1uj-rQJ3Rh5FUvN26w@mail.gmail.com>
 <CAHAhJwJfF1MxECpm1qzsfKOw+WNYcjfZmW5W+=AhF3hKq0jpDQ@mail.gmail.com>
In-Reply-To: <CAHAhJwJfF1MxECpm1qzsfKOw+WNYcjfZmW5W+=AhF3hKq0jpDQ@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Thu, 5 May 2022 07:46:12 +0100
Message-ID: <CAHt6W4ciun1m-reVHH+ebauOWE0kpURQOBM+k5zMfSvjPMASXg@mail.gmail.com>
To: Ahmad Ismail <ismail783@gmail.com>
Content-Type: multipart/alternative; boundary="000000000000b3901505de3e1914"
Subject: Re: [Spice-devel] Does not show Pre-Boot Login Menu (When using
 FDE) When Using Qemu
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--000000000000b3901505de3e1914
Content-Type: text/plain; charset="UTF-8"

Il giorno gio 5 mag 2022 alle ore 05:53 Ahmad Ismail <ismail783@gmail.com>
ha scritto:

> When I run VM with the following command:
>
> qemu-system-x86_64 -accel kvm,thread=multi -cpu host -smp 2 -m 4096 \
> -drive file=/media/blueray/WDPurple8TB/QEMU_Backup/ubuntu.qcow2,if=virtio \
> -vga virtio -display gtk,gl=on
>
> I get the following screen:
>
> https://i.stack.imgur.com/HofCx.png
>
> But I do not see this screen when I use spice using:
>
> #!/bin/bash
>
> QEMU_AUDIO_DRV=spice
>
> qemu-system-x86_64 -accel kvm,thread=multi -cpu host -smp 2 -m 8192 \
> -drive file=/media/blueray/WDPurple8TB/QEMU_Backup/ubuntu.qcow2,if=virtio \
> -machine vmport=off \
> -vga qxl -usb -device qemu-xhci -device usb-tablet \
> -soundhw hda \
> -spice port=5911,addr=127.0.0.1,disable-ticketing \
> -device virtio-serial-pci \
> -chardev spicevmc,id=spicechannel0,debug=0,name=vdagent \
> -device virtserialport,chardev=spicechannel0,name=com.redhat.spice.0 \
> -device virtserialport,chardev=charchannel1,id=channel1,name=org.spice-space.webdav.0 \
> -chardev spiceport,name=org.spice-space.webdav.0,id=charchannel1 \
> -daemonize
>
> remote-viewer --spice-shared-dir=/media/blueray/WDPurple8TB/QEMU_Backup/Ubuntu_Share spice://127.0.0.1:5911 > /dev/null 2>&1 &
>
> The problem is I need to use spice for other features.
>
> What can I do?
>

Hi,
  what's the behaviour with the updated command?
Did you try using virtio instead of qxl or do you need some specific
feature of qxl ?

Frediano

--000000000000b3901505de3e1914
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">Il giorno gio 5 mag 2022 alle ore 05:53 Ahmad Ismail &lt;<a href=3D"=
mailto:ismail783@gmail.com">ismail783@gmail.com</a>&gt; ha scritto:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"><span style=3D"c=
olor:rgb(35,38,41);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe=
 UI Adjusted&quot;,&quot;Segoe UI&quot;,&quot;Liberation Sans&quot;,sans-se=
rif;font-size:15px">When I run VM with the following command:</span><br></d=
iv><div dir=3D"ltr" class=3D"gmail_attr"><span style=3D"color:rgb(35,38,41)=
;font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI Adjusted&quot;=
,&quot;Segoe UI&quot;,&quot;Liberation Sans&quot;,sans-serif;font-size:15px=
"><br></span></div><div dir=3D"ltr"><pre style=3D"margin-top:0px;border:0px=
 none;font-variant-numeric:inherit;font-variant-east-asian:inherit;font-str=
etch:inherit;vertical-align:baseline;box-sizing:inherit;width:auto;max-heig=
ht:600px;overflow:auto"><code style=3D"margin:0px;padding:0px;border:0px no=
ne;font-style:inherit;font-variant:inherit;font-weight:inherit;font-stretch=
:inherit;line-height:inherit;vertical-align:baseline;box-sizing:inherit;bac=
kground-color:transparent;white-space:inherit;border-radius:0px">qemu-syste=
m-x86_64 -accel kvm,thread=3Dmulti -cpu host -smp 2 -m 4096 \
-drive file=3D/media/blueray/WDPurple8TB/QEMU_Backup/ubuntu.qcow2,if=3Dvirt=
io \
-vga virtio -display gtk,gl=3Don
</code></pre><p style=3D"margin-top:0px;margin-right:0px;margin-left:0px;pa=
dding:0px;border:0px none;font-variant-numeric:inherit;font-variant-east-as=
ian:inherit;font-stretch:inherit;line-height:inherit;font-family:-apple-sys=
tem,BlinkMacSystemFont,&quot;Segoe UI Adjusted&quot;,&quot;Segoe UI&quot;,&=
quot;Liberation Sans&quot;,sans-serif;font-size:15px;vertical-align:baselin=
e;box-sizing:inherit;clear:both;color:rgb(35,38,41)">I get the following sc=
reen:</p><p style=3D"margin-top:0px;margin-right:0px;margin-left:0px;paddin=
g:0px;border:0px none;font-variant-numeric:inherit;font-variant-east-asian:=
inherit;font-stretch:inherit;line-height:inherit;font-family:-apple-system,=
BlinkMacSystemFont,&quot;Segoe UI Adjusted&quot;,&quot;Segoe UI&quot;,&quot=
;Liberation Sans&quot;,sans-serif;font-size:15px;vertical-align:baseline;bo=
x-sizing:inherit;clear:both;color:rgb(35,38,41)"><a href=3D"https://i.stack=
.imgur.com/HofCx.png" target=3D"_blank">https://i.stack.imgur.com/HofCx.png=
</a><br></p><p style=3D"margin-top:0px;margin-right:0px;margin-left:0px;pad=
ding:0px;border:0px none;font-variant-numeric:inherit;font-variant-east-asi=
an:inherit;font-stretch:inherit;line-height:inherit;font-family:-apple-syst=
em,BlinkMacSystemFont,&quot;Segoe UI Adjusted&quot;,&quot;Segoe UI&quot;,&q=
uot;Liberation Sans&quot;,sans-serif;font-size:15px;vertical-align:baseline=
;box-sizing:inherit;clear:both;color:rgb(35,38,41)">But I do not see this s=
creen when I use spice using:</p><pre style=3D"margin-top:0px;border:0px no=
ne;font-variant-numeric:inherit;font-variant-east-asian:inherit;font-stretc=
h:inherit;vertical-align:baseline;box-sizing:inherit;width:auto;max-height:=
600px;overflow:auto"><code style=3D"margin:0px;padding:0px;border:0px none;=
font-style:inherit;font-variant:inherit;font-weight:inherit;font-stretch:in=
herit;line-height:inherit;vertical-align:baseline;box-sizing:inherit;backgr=
ound-color:transparent;white-space:inherit;border-radius:0px">#!/bin/bash

QEMU_AUDIO_DRV=3Dspice

qemu-system-x86_64 -accel kvm,thread=3Dmulti -cpu host -smp 2 -m 8192 \
-drive file=3D/media/blueray/WDPurple8TB/QEMU_Backup/ubuntu.qcow2,if=3Dvirt=
io \
-machine vmport=3Doff \
-vga qxl -usb -device qemu-xhci -device usb-tablet \
-soundhw hda \
-spice port=3D5911,addr=3D127.0.0.1,disable-ticketing \
-device virtio-serial-pci \
-chardev spicevmc,id=3Dspicechannel0,debug=3D0,name=3Dvdagent \
-device virtserialport,chardev=3Dspicechannel0,name=3Dcom.redhat.spice.0 \
-device virtserialport,chardev=3Dcharchannel1,id=3Dchannel1,name=3Dorg.spic=
e-space.webdav.0 \
-chardev spiceport,name=3Dorg.spice-space.webdav.0,id=3Dcharchannel1 \
-daemonize

remote-viewer --spice-shared-dir=3D/media/blueray/WDPurple8TB/QEMU_Backup/U=
buntu_Share spice://<a href=3D"http://127.0.0.1:5911" target=3D"_blank">127=
.0.0.1:5911</a> &gt; /dev/null 2&gt;&amp;1 &amp;
</code></pre><p style=3D"margin-top:0px;margin-right:0px;margin-left:0px;pa=
dding:0px;border:0px none;font-variant-numeric:inherit;font-variant-east-as=
ian:inherit;font-stretch:inherit;line-height:inherit;font-family:-apple-sys=
tem,BlinkMacSystemFont,&quot;Segoe UI Adjusted&quot;,&quot;Segoe UI&quot;,&=
quot;Liberation Sans&quot;,sans-serif;font-size:15px;vertical-align:baselin=
e;box-sizing:inherit;clear:both;color:rgb(35,38,41)">The problem is I need =
to use spice for other features.</p><p style=3D"margin:0px;padding:0px;bord=
er:0px none;font-variant-numeric:inherit;font-variant-east-asian:inherit;fo=
nt-stretch:inherit;line-height:inherit;font-family:-apple-system,BlinkMacSy=
stemFont,&quot;Segoe UI Adjusted&quot;,&quot;Segoe UI&quot;,&quot;Liberatio=
n Sans&quot;,sans-serif;font-size:15px;vertical-align:baseline;box-sizing:i=
nherit;clear:both;color:rgb(35,38,41)">What can I do?</p></div></div></div>=
</blockquote><div><br></div><div>Hi,</div><div>=C2=A0 what&#39;s the behavi=
our with the updated command?</div><div>Did you try using virtio instead of=
 qxl or do you need some specific feature of qxl ?<br></div><div><br></div>=
<div>Frediano</div><div>=C2=A0<br></div></div></div>

--000000000000b3901505de3e1914--
