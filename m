Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7843F70197A
	for <lists+spice-devel@lfdr.de>; Sat, 13 May 2023 21:20:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 301B510E12E;
	Sat, 13 May 2023 19:20:14 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com
 [IPv6:2607:f8b0:4864:20::22a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E76010E12E
 for <spice-devel@lists.freedesktop.org>; Sat, 13 May 2023 19:20:11 +0000 (UTC)
Received: by mail-oi1-x22a.google.com with SMTP id
 5614622812f47-3945180bef1so1909080b6e.1
 for <spice-devel@lists.freedesktop.org>; Sat, 13 May 2023 12:20:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1684005610; x=1686597610;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=5VPF9EdKbYmBjk+se9AjbhbqlEf2IT9HWhHhqJAHBfI=;
 b=R0ptpIJOVIcu+SmtFV7+X8+/+9el4U19zjcScNzvhg1pFG3ofnaxdajtHQYkUe9DhA
 BTki8ns688V3OM7Tio+wsJ7h8XX8sZYMBHluLWr90OXYbjWvgv9YL+Iud7nSVniojnuE
 XIwdfpdkGwIt7HQShZolHd35ZLdX05Z2r1xoILRCcBveqwtRuJYE5SREWKkDXtz8lDcM
 lNpo6WAG7b5DTpYxJP3IfHpmDFAX6joFrqR+/I/wdrTwEjZVcaHhTKqqk+s+bxqBTq58
 5nffQsG2LZ4L5QSVIeRypPHAtWToSrJri6iYjsWjBb9ejssyGFtMUErHrCqGj+krRKFa
 K8cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684005610; x=1686597610;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=5VPF9EdKbYmBjk+se9AjbhbqlEf2IT9HWhHhqJAHBfI=;
 b=NVy4D+A8wiNS2BDSX6uwgZuyTzSAE/iBqZK4en/NVXmEM+bGrKUob6MRFMsdiwOLnb
 jbR9ZXIaVimMaFowZ4n0X89hX8BDQSH5uGLEY081TVg8fSaqzbv3xWCVp9f+25iFGmaG
 7K2j5AOL4Edntp5nLgenCWgiuIJALD5aZHJQYMPQkXRpV/t5WDXPeNRCmhaB8tX3YQzD
 YWXdHVw04ie6pbmTwYckFc2DZNNkbZylVfpBYYJj6qtqJEYU+beV6EuKlyUIp86f2LDX
 abXF03i4s5Q3zOpmj8AuVFXACPGp5TrXwvZZ/BcNGl7gVBaIhCiW1esB8UcNgfDoOIad
 zoRQ==
X-Gm-Message-State: AC+VfDy+Wrq9tMBCw3f7qvJ3+2ECbksNUV+kP2g+aoZaRU8XB7SSw9Mi
 0Lp4sUYmCU1NpRCo4NBI4lzzI6I6Y1PREAMKIKw=
X-Google-Smtp-Source: ACHHUZ79ttMGCz6NcUTARKt5+QHGAHdXqTdfT2KaBTNE8YQqlUXX01dHwo1XvXuDes6ZkN4yjxMWoSbszrTTtr3+6f0=
X-Received: by 2002:aca:b5d7:0:b0:395:eada:79cf with SMTP id
 e206-20020acab5d7000000b00395eada79cfmr957170oif.36.1684005610444; Sat, 13
 May 2023 12:20:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAHAhJw+WJ5gRMDRL1nXep1P+UE8FDd_vfeALtgYkG5FKh6mC-g@mail.gmail.com>
 <CAHAhJwJDFypx_WL-ANfb8HfgGkRbwBy6soN_1DZ6nNDgsnSfQQ@mail.gmail.com>
In-Reply-To: <CAHAhJwJDFypx_WL-ANfb8HfgGkRbwBy6soN_1DZ6nNDgsnSfQQ@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Sat, 13 May 2023 20:19:59 +0100
Message-ID: <CAHt6W4dAQX5sk5BTir6nb_SXqnevHm5ZBmrL5+Xoh6hVrbg2sw@mail.gmail.com>
To: Ahmad Ismail <ismail783@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Spice-devel] Can not drag-drop or copy-paste between guest and
 host
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

Il giorno sab 13 mag 2023 alle ore 12:17 Ahmad Ismail
<ismail783@gmail.com> ha scritto:
>
> Just to be clear, copy-paste text between guest and host works. drag and =
drop text between guest and host does not work. In the case of files, neith=
er copy-paste nor drag and drop work.
>
> Thanks and Best Regards,
>
> Ahmad Ismail
>
>

Hi,
   drag&drop from host to guest should work, not the opposite. Note
that there's an option to pass to spice-vdagent to enable drag&drop
(from host to guest).

Frediano

>
> On Sat, May 13, 2023 at 5:10=E2=80=AFPM Ahmad Ismail <ismail783@gmail.com=
> wrote:
>>
>>
>>
>> The documentation says:
>>
>>     Installing the Spice vdagent in your guest will let you copy and pas=
te between your guest and client OSes, to drag and drop files between the 2=
 OSes, =E2=80=A6 In order for the agent to work, your virtual machine must =
have a virtio serial device (and the corresponding guest drivers) as well a=
s a Spice spicevmc channel.
>>
>> It also says:
>>
>>     Agent support allows better integration with the guest. For example,=
 it allows copy and paste between the guest and the host OSes, dynamic reso=
lution changes when the client window is resized/full-screened, file transf=
ers through drag and drop, =E2=80=A6
>>
>>     The agent is a daemon/service running in the guest OS so it must be =
installed if it was not installed by default during the guest OS installati=
on. It also relies on a virtio-serial PCI device and a dedicated spicevmc c=
har device to achieve communication between the guest and the host. These d=
evices must be added to the virtual machine for the agent to work in the gu=
est.
>>
>> I have installed all the necessities in the guest. And then enabled the =
services.
>>
>> sudo apt install qemu-guest-agent spice-vdagent spice-webdavd
>>
>> sudo systemctl start spice-vdagent
>> sudo systemctl enable spice-vdagent
>>
>> sudo systemctl start qemu-guest-agent
>> sudo systemctl enable qemu-guest-agent
>>
>> sudo systemctl start spice-webdavd
>> sudo systemctl enable spice-webdavd
>>
>> Started the vm with the following script.
>>
>> #!/bin/bash
>>
>> QEMU_AUDIO_DRV=3Dspice
>>
>> qemu-system-x86_64 -accel kvm,thread=3Dmulti -cpu host -smp 2 -m 8192 \
>> -drive file=3D/media/ismail/SSDWorking/_QEMU/vm_mint.qcow2,format=3Dqcow=
2,if=3Dvirtio \
>> -machine vmport=3Doff \
>> -vga virtio -usb -device qemu-xhci -device usb-tablet \
>> -soundhw hda \
>> -spice port=3D5911,addr=3D127.0.0.1,disable-ticketing \
>> -device virtio-serial-pci \
>> -chardev spicevmc,id=3Dspicechannel0,debug=3D0,name=3Dvdagent \
>> -device virtserialport,chardev=3Dspicechannel0,name=3Dcom.redhat.spice.0=
 \
>> -device virtserialport,chardev=3Dcharchannel1,id=3Dchannel1,name=3Dorg.s=
pice-space.webdav.0 \
>> -chardev spiceport,name=3Dorg.spice-space.webdav.0,id=3Dcharchannel1 \
>> -chardev socket,path=3D/tmp/qga.sock,server=3Don,wait=3Doff,id=3Dqga0 \
>> -device virtio-serial \
>> -device virtserialport,chardev=3Dqga0,name=3Dorg.qemu.guest_agent.0 \
>> -daemonize
>>
>> remote-viewer --spice-shared-dir=3D/media/ismail/SSDWorking/_QEMU/VM_Sha=
re spice://127.0.0.1:5911 > /dev/null 2>&1 &
>>
>> Now dynamic resolution changes work. However, drag and drop and copy-pas=
te between guest and host does not work.
>>
>> What might be the reason?
>>
>>
>> Thanks and Best Regards,
>>
>> Ahmad Ismail
