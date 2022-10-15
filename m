Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E7E65FF96B
	for <lists+spice-devel@lfdr.de>; Sat, 15 Oct 2022 11:22:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B10B710E3EF;
	Sat, 15 Oct 2022 09:22:18 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com
 [IPv6:2607:f8b0:4864:20::22c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B28410E38B
 for <spice-devel@lists.freedesktop.org>; Sat, 15 Oct 2022 09:22:09 +0000 (UTC)
Received: by mail-oi1-x22c.google.com with SMTP id m81so7430098oia.1
 for <spice-devel@lists.freedesktop.org>; Sat, 15 Oct 2022 02:22:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=3Hg+dbyJPDdM+bWYQrsvuRKggZ9k2B5Pu1QX3How7O0=;
 b=RbWFU8ODOnQDONeQbqMdEyZs7e3c5kTzCBSRz+LM59TNIqFHIKHCe11NPCUIRJyxPj
 OLSVq91ALKXOMPGKecKCVTNGuWyn6P5Jv/AImwSfomm7fMrG6kPKqZxVpfQFCaViA5et
 Y+pe6qk6Lae9foQNnKTOvTztRmDTCKE1B+4cd89g9kdeBPnrzrh9zhj90G9G/Bz20rjw
 NLEJTrneEoeHH6ovDzcWg+qCBQJ0Exb4XwR8Y4OUQ35DafANQj1qhqyigHavPYWzwif+
 nvFWMmIRyYuZ53g9h3MAFyGGaYlmxQ+qR6B+t1QhIYCyWtxqsKv5Q3It5P9Nydx2G4lX
 UdOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=3Hg+dbyJPDdM+bWYQrsvuRKggZ9k2B5Pu1QX3How7O0=;
 b=rCqQQ2qysv71OSiwhjx082+9vlyw9hNSOsyrLY50RGSnthJ9t/tRkYOCSNnRqHUSgu
 3w8nAyXamaoWYXF/cl+XYr6HWPU2ujntvMgIlYhCEjEvystvBlY2ahdUC6+ddrU7dNzx
 01OHPsP0EMuGYRJIZDQjqwuIlo8q6uHj4VBsLymw0WSgtReK4bGGRivLgQXT2sR9Szko
 PG5NBjSoRa0jnaXZ/RtmFhtzDVAD84BLmfZKrzZdrGKeBrsdqLfkbwpDnHIa1dvPKHiK
 6J/0CSI4YJi9hIC7odBS18KBahArHE+kmt2O3Ka5DrfRPUdRBMOC0W5dgb80ukvu27zM
 oczg==
X-Gm-Message-State: ACrzQf3nvPN+3JB9SkENpaPkACbAuq7xoU0OhTcdsKYBzpgCHUBsQs/8
 A7vyYL4c8oYC1PeYht4zcm4PxDIcHWqG7i9bhaE=
X-Google-Smtp-Source: AMsMyM6/E8xyhNX68o4mZMVlt2VkSUhQcqcYcpKKXFfVzXnidHc1dVQDLcgKKWLOjX1ofMO1uXcTO5RF2Txlxni5hE4=
X-Received: by 2002:a05:6808:b31:b0:354:9436:2e52 with SMTP id
 t17-20020a0568080b3100b0035494362e52mr9044569oij.1.1665825728546; Sat, 15 Oct
 2022 02:22:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAGeBE=w-KZXVACD6xeeqfoo03K5BZxzA8O2U5x-8=NLsR=ZQKw@mail.gmail.com>
 <CAHt6W4dkGkFVDBQbMFN0+AD24OB18uxhhQC5n4u51PiJGnAi8g@mail.gmail.com>
 <CAGeBE=y4HKusjFMYez9uGEzEMm_9uhgDeW5uakB-bErUWcPoJQ@mail.gmail.com>
In-Reply-To: <CAGeBE=y4HKusjFMYez9uGEzEMm_9uhgDeW5uakB-bErUWcPoJQ@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Sat, 15 Oct 2022 10:21:57 +0100
Message-ID: <CAHt6W4eysYyfv-9_W6n5YRv5qSd0rU46=vGf25fAO5s342a3aw@mail.gmail.com>
To: =?UTF-8?Q?Carlos_Gonz=C3=A1lez?= <piteccelaya@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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
Cc: spice-devel@lists.freedesktop.org
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno ven 14 ott 2022 alle ore 16:11 Carlos Gonz=C3=A1lez
<piteccelaya@gmail.com> ha scritto:
>
> As soon as spice-vdagent package is installed, so is the spice-vdagentd d=
aemon and it also starts running. Yet I always need to manually run spice-v=
dagent command...
>

Maybe you would need to logout and login again from the graphic
session. Or manually start it, not sure.

> How do I specify an output directory for the agent to file transfer?
>

See "spice-vdagent --help", specifically -f and -o options.

> I don't think it's remote-viewer's fault, because I also tested with a Wi=
ndows guest. With all SPICE stuff properly installed, everything works out =
of the box: clipboard, resizing, file transfer from host to guest. With "pr=
operly installed" I mean: installed SPICE drivers manually from virtio-win =
ISO by loading them since the Windows installation beforehand, then once bo=
oted into Windows downloaded the vdagent ZIP from spice-space website and m=
anually installed the service according to instructions.
>

I'll check, maybe is not handled by driver but agent

> As additional detail, in QEMU I use the option "-display spice-app", whic=
h automatically starts remote-viewer; though curiously it doesn't seem to c=
reate a virt-viewer directory inside ~/.config unlike when running remote-v=
iewer manually...
>
> Thanks again.
>
> El vie, 14 oct 2022 a las 12:41, Frediano Ziglio (<freddy77@gmail.com>) e=
scribi=C3=B3:
>>
>> Il giorno gio 13 ott 2022 alle ore 16:58 Carlos Gonz=C3=A1lez
>> <piteccelaya@gmail.com> ha scritto:
>> >
>> > Hello.
>> >
>> > I'm trying a virtual machine with a live CD distribution called AntiX =
Linux, which is directly based on Debian.
>> >
>> > I'm using direct QEMU commands.
>> > In the VM configuration I have this for SPICE configuration:
>> > "-vga qxl -device virtio-serial-pci -spice unix=3Don,addr=3Dpath/to/vm=
_spice.socket,disable-ticketing=3Don -chardev spicevmc,id=3Dspicechannel0,n=
ame=3Dvdagent -device virtserialport,chardev=3Dspicechannel0,name=3Dcom.red=
hat.spice.0 \"
>> > Then I boot the live ISO, double check that QXL driver is installed -w=
hich normally always is-, and install spice-vdagent package (version 20 her=
e). I'm using remote-viewer (virt-viewer) to visualize the VM.
>> >
>> > Up to this point, clipboard sharing with host still doesn't work, and =
trying to drag a file from host to guest results in an error "The agent is =
not connected".
>> >
>>
>> This error is normal if the agent is stopped.
>>
>> > So I manually run "spice-vdagent" command, and clipboard sharing now w=
orks, but trying to drag file from host to guest gives "File transfer is di=
sabled". Also, automatic resolution change with window resizing doesn't wor=
k either.
>> >
>>
>> The fact that in this way the clipboard is running indicates that the
>> agent is now working. You need to specify an output directory to the
>> agent in order to get file transfer working.
>> About the resolution change that's weird, I think that feature on
>> Linux does not even require the agent running. Is it possible that the
>> client (remove-viewer) is not set up to send resize to the guest
>> automatically, there are some options on the menu.
>>
>> > Certainly, this live distro doesn't come with any spice-related packag=
es installed by default, except for the QXL package.
>> >
>> > Am I missing something here? Could someone help please?
>> > Thanks beforehand.
>>
>> Frediano
