Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E9F815A65
	for <lists+spice-devel@lfdr.de>; Sat, 16 Dec 2023 17:34:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4884710E108;
	Sat, 16 Dec 2023 16:34:32 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com
 [IPv6:2a00:1450:4864:20::12d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 265B310E108
 for <spice-devel@lists.freedesktop.org>; Sat, 16 Dec 2023 16:34:30 +0000 (UTC)
Received: by mail-lf1-x12d.google.com with SMTP id
 2adb3069b0e04-50e30b28c1aso180282e87.0
 for <spice-devel@lists.freedesktop.org>; Sat, 16 Dec 2023 08:34:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20230601.gappssmtp.com; s=20230601; t=1702744468; x=1703349268;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=nocKTIyEjx0DQxbKxN1uPB5SYiCm9GAIofnTRMaX1tE=;
 b=ETlIxeCZEJH4gG46rr2qEwyOdVallYw0Wtf4Gtc7ZQlEQ0KKtuUbIdkxNNqUBezd4S
 TW79ZeSW+sgoQ4nW3hJRiGJ+iLn0YA9U/Tr4sjq30lcIWpKQ8ELBFyPsTFcie0wqQx6x
 tMjPIp52bmN9zoewRHFZ5EIdCwwmPGR3HBVPyHsipQdXlbF87P29+K+sD7sLFTVVG346
 NvNIMlF6nAn0BS57YjWhuazsDavH1G9Fl3AC7vg8cDVwy1q0zmh2+G8OAgGAO0VZ3+5I
 xqqZs1sm0Nw4uzWKp2yejdR2UsPNvefBCW0yP9BeBdopWuvjV+neH+JQ6TKNK+36TbTm
 cMgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1702744468; x=1703349268;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=nocKTIyEjx0DQxbKxN1uPB5SYiCm9GAIofnTRMaX1tE=;
 b=cPaOQbIu/a7OgJnckpkGraGd7gU57rksbyzBVs8ZfxYd7qAK3/WGa26YEO0Uva15s6
 7gnDR6uQG7Er8fWY/j1w6eo3YeoRFlJYR7dhMPtgUvbEoidr17BbBgvSF1lzPmAx1+hJ
 1Xaucd35eJcZaDwYOz4T5sRS/RsMEm5GdC8DTkigH5FuSdFbdVfbVbneVQ9xWqUQTza9
 otjZjRFuB5SEIt3+Oa8zCckZSZdZIYg9rkGWc5SWHmGwo+4egCrvYHjhFwycpdE7hq2L
 DvOBBMwYGk5c0WVJOb6RxcAEgRRZxwLiNEJOpHLkuTTroYEhko+r2Iky3pVo/a7VR9F/
 TtKw==
X-Gm-Message-State: AOJu0YwVM+q6I7v3ciVMpq5darMi4x1TJv42sgtBEz4/f6Ygch2EVdJg
 Jm6JIaGpswBK1qH0HA/vT8iEyGbRRjCS7HznWGD4uHLVIWcMpe1BgWc=
X-Google-Smtp-Source: AGHT+IFaH5tBdxeXB/FOZLq3ABGsYeQvXI4bJ1dOrKBT1m/SoKawixq1oGtosMy/o38GeK/iWTLYJCmBhYV4bTk6Pqo=
X-Received: by 2002:ac2:4d17:0:b0:50e:2821:7224 with SMTP id
 r23-20020ac24d17000000b0050e28217224mr547974lfi.59.1702744467831; Sat, 16 Dec
 2023 08:34:27 -0800 (PST)
MIME-Version: 1.0
References: <CAGeBE=yuy8Ho7pQJEXMW03Y8wv+gP3cjC4XgKP6akphKEYeD_Q@mail.gmail.com>
In-Reply-To: <CAGeBE=yuy8Ho7pQJEXMW03Y8wv+gP3cjC4XgKP6akphKEYeD_Q@mail.gmail.com>
From: Yuri Benditovich <yuri.benditovich@daynix.com>
Date: Sat, 16 Dec 2023 18:34:15 +0200
Message-ID: <CAOEp5OdatQpo7Vk8wZP6UHMVZ6xRMoj844tVrfqjEY2V=MYutA@mail.gmail.com>
Subject: Re: Is there some problem with latest VirtIO drivers and recent
 Windows 11 23H2?
To: =?UTF-8?Q?Carlos_Gonz=C3=A1lez?= <piteccelaya@gmail.com>
Content-Type: multipart/alternative; boundary="00000000000026238f060ca31737"
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

--00000000000026238f060ca31737
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I suggest to use
https://github.com/virtio-win/kvm-guest-drivers-windows/issues instead of
spice-devel mail list unless you think the problem is somehow related to
spice-devel

Thanks
Yuri

On Sat, Dec 16, 2023 at 11:16=E2=80=AFAM Carlos Gonz=C3=A1lez <piteccelaya@=
gmail.com>
wrote:

> I'm coming directly from this mess:
>
> https://forums.opensuse.org/t/qemu-uefi-firemware-not-recognizing-qcow2-v=
irtual-disk-at-all/171009/14
>
> Summarizing:
> QEMU Windows 11 virtual machine; it successfully had updated from 22h2 to
> 23h2 through Windows update, but after this ANY subsequent cumulative
> update breaks the vm into BSOD after rebooting, and in the very best of
> cases all changes are just reverted.
> Attempting to update via directly running the latest Windows 11 ISO yield=
s
> the very same results, except that at the end it shows the BSOD code, whi=
ch
> hints at "faulty drivers and/or outdated BIOS firmware".
> Finally, trying to install latest Windows 11 from scratch in a newly
> created QEMU vm also results in failure: ISO boots, VirtIO storage driver
> is loaded, installer copies files to virtual disk, reboots... NOTHING to
> boot. Windows' EFI partition never shows, as if never created; thus I onl=
y
> get the UEFI shell, and the cycle repeats.
>
> I used latest VirtIO ISO version 240 for all cases.
>
> By chance, any idea of what's happening?
> Thanks.
>

--00000000000026238f060ca31737
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I suggest to use=C2=A0<a href=3D"https://github.com/virtio=
-win/kvm-guest-drivers-windows/issues">https://github.com/virtio-win/kvm-gu=
est-drivers-windows/issues</a> instead of spice-devel mail list unless you =
think the problem is somehow related to spice-devel<div><br></div><div>Than=
ks</div><div>Yuri</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Sat, Dec 16, 2023 at 11:16=E2=80=AFAM Carlos Gonz=
=C3=A1lez &lt;<a href=3D"mailto:piteccelaya@gmail.com">piteccelaya@gmail.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr"><div>I&#39;m coming directly from this mess:</div><div><a=
 href=3D"https://forums.opensuse.org/t/qemu-uefi-firemware-not-recognizing-=
qcow2-virtual-disk-at-all/171009/14" target=3D"_blank">https://forums.opens=
use.org/t/qemu-uefi-firemware-not-recognizing-qcow2-virtual-disk-at-all/171=
009/14</a></div><div><br></div><div>Summarizing:<br></div><div>QEMU Windows=
 11 virtual machine; it successfully had updated from 22h2 to 23h2 through =
Windows update, but after this ANY subsequent cumulative update breaks the =
vm into BSOD after rebooting, and in the very best of cases all changes are=
 just reverted.</div><div>Attempting to update via directly running the lat=
est Windows 11 ISO yields the very same results, except that at the end it =
shows the BSOD code, which hints at &quot;faulty drivers and/or outdated BI=
OS firmware&quot;.</div><div>Finally, trying to install latest Windows 11 f=
rom scratch in a newly created QEMU vm also results in failure: ISO boots, =
VirtIO storage driver is loaded, installer copies files to virtual disk, re=
boots... NOTHING to boot. Windows&#39; EFI partition never shows, as if nev=
er created; thus I only get the UEFI shell, and the cycle repeats.</div><di=
v><br></div><div>I used latest VirtIO ISO version 240 for all cases.</div><=
div><br></div><div>By chance, any idea of what&#39;s happening?</div><div>T=
hanks.<br></div></div>
</blockquote></div>

--00000000000026238f060ca31737--
