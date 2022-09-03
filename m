Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 85C045ABD79
	for <lists+spice-devel@lfdr.de>; Sat,  3 Sep 2022 08:38:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6239A10E999;
	Sat,  3 Sep 2022 06:38:31 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oa1-x2c.google.com (mail-oa1-x2c.google.com
 [IPv6:2001:4860:4864:20::2c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 227E810E999
 for <spice-devel@lists.freedesktop.org>; Sat,  3 Sep 2022 06:38:29 +0000 (UTC)
Received: by mail-oa1-x2c.google.com with SMTP id
 586e51a60fabf-11e9a7135easo9961020fac.6
 for <spice-devel@lists.freedesktop.org>; Fri, 02 Sep 2022 23:38:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date;
 bh=HM7Iq2bBj/8gkoosJvI29XMP0QW/mX+txvIAJ3K4+0w=;
 b=irZI5nJwGc7t8nzP2M3cklYHmFGotn0bcXrXi+PX2eMhc5F0QlpLCRMSjUXWLczrLf
 Flh30A60ANCb14pU6YXoL7Yhl7WHqdUTYTyleVzOWOpQYSIYu7S4oNwaAxNYXm1ZCawO
 NFnb284u9xb4AgUkPm9CVF6boH6QpyuU8swW4clbur8r8ukCakEqppIVa1AxjNvCKA1o
 QQoUpsA6tzO3T2NelH03p0DOWlWpM5Mmw3vCkJdFhu3U6GJTrousq1wVKD/Fz6fFUBU9
 8ZLVuLPxvnXjJu3T2/1P2B1mcRsBw+XP8noIfMp4KXe5hK3vJymFYD3v5F/Gsda5/YB8
 RDZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date;
 bh=HM7Iq2bBj/8gkoosJvI29XMP0QW/mX+txvIAJ3K4+0w=;
 b=b/6nicjjEGjJmHmZ/lRC/s5QBF9LNuHivD92e+pb0qXq2NdUVn9tLoSPLXelcd+OYk
 DPwINKlom4cwpxNHaSW+OANta9eC9t0UQzqOPZR9Te70EvX+1YkqNForbZGiNvclpHSi
 fAv/XS6qWNw7sV21NAzGHTuAEKTxOfMDo5DQCqI1ORZPiDaOVxSDLnWnxsrXN/r5QoJg
 skKHV38LQMJ9rC+KSvvclH5tMyeAUj7GEzkUi+BhCw+qWFHy5AnQtvNutJuCG3PCjCuz
 ODMcAtoU+Q2fgXCipEn31I1wM5kH0e8PJ3Pv4ftDI2GHTR6aCgRW1AxOCKYz9joEPjaV
 4q8w==
X-Gm-Message-State: ACgBeo0XzCEGJSsD7BF9qkdvzj2+BW36IVNKMj5TeDX+ezErVTF/XnNU
 G/sKvw5Zk5eh2lxxLgdKwTWFpu/CLdS6Wj1bbEE=
X-Google-Smtp-Source: AA6agR5kIcGcbq3EHzNX8BZmXCTzYb+IhkoZgLtogm1oRlOvHpU2SVJbK4/DnYlYXYCwxynswq4CBNlkMdCYh4gKpNg=
X-Received: by 2002:a05:6870:c598:b0:108:b7e2:ac8 with SMTP id
 ba24-20020a056870c59800b00108b7e20ac8mr4149560oab.1.1662187108215; Fri, 02
 Sep 2022 23:38:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAGeBE=yhPCXNeR72Oiy83yS+gC+P82_tSX59XQ4dSvUMDHJGRA@mail.gmail.com>
 <20220902065324.kqoezlbkidndyx4m@tapioca>
 <CAGeBE=z8ee5V4_fT7rxOnaE_6g5idXke3UMLeQw3G-DGSADwfw@mail.gmail.com>
In-Reply-To: <CAGeBE=z8ee5V4_fT7rxOnaE_6g5idXke3UMLeQw3G-DGSADwfw@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Sat, 3 Sep 2022 07:38:16 +0100
Message-ID: <CAHt6W4cbdzRuo1Fkvi7fY+xrVSMf3HxP=F3-Z7Ej=R=mgZGFgg@mail.gmail.com>
To: =?UTF-8?Q?Carlos_Gonz=C3=A1lez?= <piteccelaya@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Spice-devel] qxldod driver for Windows 11
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

Il giorno ven 2 set 2022 alle ore 22:23 Carlos Gonz=C3=A1lez
<piteccelaya@gmail.com> ha scritto:
>
> So the "rumors" are true: you (in general) really did discontinue/kill th=
e qxl drivers, if not the entire SPICE project soon. Was it because IBM? Si=
nce being sold to them the first one to die was Centos, now this...
>

Hi Carlos,
   In Italy we use the expression "=C3=88 come sparare sulla Croce Rossa"
(more or less "it's like shooting at the Red Cross").
It's like accusing a doctor trying to save a life that it's trying to
kill somebody.
As Victor is actively contributing to SPICE as a developer (you can
find multiple recent emails and commits in this ML and related
projects without much effort) is not kind to point fingers.

> FYI:
> https://gist.github.com/pojntfx/b860e123e649504bcd298aa6e92c4043#file-mai=
n-sh-L32
> https://lists.freedesktop.org/archives/virglrenderer-devel/2021-January/0=
01897.html
> virtio-gpu implies virgl, and currently only works on Linux guests; RedHa=
t people explicitly deemed the Windows work "not worthy".
>

Let's get back to the technical side of this thread.
That's not entirely true. Virgl it's an "option" to virtio-gpu. By
default Virgl is not enabled. Virgl adds 3D support to Qemu virtual
cards, as far as I know it's the only virtual GPU (bypass are not
virtual) in Qemu supporting 3D. Although QXL was born alongside SPICE
while Virgl is more related to Qemu directly, efforts were made to
support all features QXL provides using virtio-gpu. So the technical
suggestion Victor gave is not against SPICE. You have also to consider
the way QXL works and how the graphics software stacks evolved in
time. QXL design it's 2D only, supporting a lot of specific commands
and options for Windows 95/98/XP. Yes, you read well, Windows XP...
which was declared unsupported 12 years ago! At that time OSes relay
to the GPU plenty of complex 2D commands. Nowadays most OSes (if not
all but surely Linux, Windows and Mac) use 3D commands for everything,
and many brushes, raster operations and similars are long since gone.
Taken all that into account, with a modern OS the commands QXL and
virtio-gpu use are basically the same.

> Thanks for killing the project.
>

Now let's get back to the less technical.
Beside reiterating that pointing fingers to Victor is not fair nor kind...
Yes, SPICE was, company wise, well founded and supported by Red Hat
(which _had_ a specific team for it). After RedHat was acquired by IBM
some investments were moved from desktop side to the cloud. More or
less RedHat/IBM thinks that spending money on Linux desktop is not
worth much. That includes SPICE, Virgl and Windows drivers but others.

Regards,
  Frediano

> El vie, 2 sept 2022 a las 6:53, Victor Toso (<victortoso@redhat.com>) esc=
ribi=C3=B3:
>>
>> Hi Carlos,
>>
>> On Fri, Sep 02, 2022 at 12:08:04AM +0000, Carlos Gonz=C3=A1lez wrote:
>> > I downloaded latest virtio-win ISO, and by browsing it I
>> > noticed that, unlike the other drivers, for the qxldod one
>> > there's only up to win10, and no explicit win11 versions.
>> >
>> > Does this mean that there are no drivers for Windows 11, and no
>> > possibility of setting up a VM with full SPICE support?
>> >
>> > Thanks beforehand.
>>
>> You are correct, the last cycle of development was focused for
>> windows 10.
>>
>> I expect windows 11 to maintain some compatibility with windows
>> 10 so the drivers should work to some extent but I did not test
>> it.
>>
>> I'd not hope for further development on qxl unless there is
>> someone interested in investing time on it (and it would take
>> some time).
>>
>> I'd instead switch to virtio-vga / virtio-gpu as this seems to
>> have an active community.
>>
>>     https://github.com/virtio-win/kvm-guest-drivers-windows
>>
>> Cheers,
>> Victor
