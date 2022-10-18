Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF5A66031B2
	for <lists+spice-devel@lfdr.de>; Tue, 18 Oct 2022 19:40:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AA0710E18F;
	Tue, 18 Oct 2022 17:40:38 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oa1-x2d.google.com (mail-oa1-x2d.google.com
 [IPv6:2001:4860:4864:20::2d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5859C10E18F
 for <spice-devel@lists.freedesktop.org>; Tue, 18 Oct 2022 17:40:34 +0000 (UTC)
Received: by mail-oa1-x2d.google.com with SMTP id
 586e51a60fabf-132af5e5543so17667644fac.8
 for <spice-devel@lists.freedesktop.org>; Tue, 18 Oct 2022 10:40:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=zaCuVFGgmfsgTpdZU7g0IaBGhWtrzzECimz0Q14Gum4=;
 b=jyOUaivtkpLFhdJq4nLB+Qz+8tZvsS05QX6CnCYB/lmLdQNrWRYWvr95m5ERGmqN4R
 uM2B3ZyH80GZF50YmdBwykWr6GwfEPChI/3DwZea7udWEHguhuxAzt9kwghLdyNJTpSg
 hwhw5pt9yLCwuNk+EHxqVc46bR94SS5XmbTxoGiv73T4ZRrTMdTerz3QIn/ItmY6G111
 +0j+xpm2UGZ2Hp1IhURw/AN1tZ3fkdsWOn91ITFS9k3gyS1ZmYENYhPKKklROUULW+dk
 i7LMibxSrt7mN3hnU8v/VIOPKyuUg7K9UH7EmK7QJQBtv2dgYHuwvOPNU0e4mLso/4C/
 QBGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=zaCuVFGgmfsgTpdZU7g0IaBGhWtrzzECimz0Q14Gum4=;
 b=siLL/fF8I666BItsUAVzyOEykfehcumeaneJTt82KLMKrpCc1Xh4TBmLQb1C+J4T3e
 PDCu1V2WnJQyDiy1nIuaPWg93FCU32Od8ogQi/KxbClj0Spt87MpEzulCE0MjDr1WWXf
 PU0qgjNGqqjVy2VsMUNgFcJztM1tJBvrtTAvhp9PtoPr0sKY1RzACRo4ycoevba4ksis
 yUXDwikXNKY8ZtN+CosBVOE7Ol9iD8eTJxZJu+eR6haqXaojSxe27SFgbpnDT3RTGzcO
 jYeIdvs7sRHYR6iXQkzfevQZqYTSTSK36Wwwj9FKbn7eHKTH33whFjkWTCRW6380JmL4
 Jd2g==
X-Gm-Message-State: ACrzQf0EFkdkLhKhE1S9/z4yukXCQOGJqVcqs8ltZ91hP3Lo8UJWykSq
 /s+b4N+QPu6JCiW5Kk5nkqxlqkkybT0HC7W3aNXFxv4O
X-Google-Smtp-Source: AMsMyM4Y0tzyC7YMtjZJICEOrzykhsWd+Gg40jvzuD8q9wijHjXRVqfQ+qpjJnNjqhBPqFl0BVM9SS2bXAW6/0nKiPk=
X-Received: by 2002:a05:6870:e982:b0:136:78c2:e19a with SMTP id
 r2-20020a056870e98200b0013678c2e19amr18976187oao.1.1666114833531; Tue, 18 Oct
 2022 10:40:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAGeBE=w-KZXVACD6xeeqfoo03K5BZxzA8O2U5x-8=NLsR=ZQKw@mail.gmail.com>
 <CAHt6W4dkGkFVDBQbMFN0+AD24OB18uxhhQC5n4u51PiJGnAi8g@mail.gmail.com>
 <CAGeBE=y4HKusjFMYez9uGEzEMm_9uhgDeW5uakB-bErUWcPoJQ@mail.gmail.com>
 <CAHt6W4eysYyfv-9_W6n5YRv5qSd0rU46=vGf25fAO5s342a3aw@mail.gmail.com>
 <CAGeBE=xYOdDo40ec=T=auNhj-nq8nHXuOWZ6Tt+HT-gniu=YcQ@mail.gmail.com>
In-Reply-To: <CAGeBE=xYOdDo40ec=T=auNhj-nq8nHXuOWZ6Tt+HT-gniu=YcQ@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Tue, 18 Oct 2022 18:40:22 +0100
Message-ID: <CAHt6W4cJW-Lj_rE+c9YqrDSft5f0t4RJ41z4bv4y2gVYyyfwNQ@mail.gmail.com>
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

Il giorno mar 18 ott 2022 alle ore 01:04 Carlos Gonz=C3=A1lez
<piteccelaya@gmail.com> ha scritto:
>
> Were you able to find something by chance? Thanks.
>

Hi Carlos,
   my main curiosity was about the need of the agent for resize.
I did some tests and with both Windows and Linux it appears that the
agent is needed.
At this point I would try looking at the agent logs.
Is your system using Xorg or Wayland ?

Regards,
   Frediano

> El s=C3=A1b, 15 oct 2022 a las 9:22, Frediano Ziglio (<freddy77@gmail.com=
>) escribi=C3=B3:
>>
>> Il giorno ven 14 ott 2022 alle ore 16:11 Carlos Gonz=C3=A1lez
>> <piteccelaya@gmail.com> ha scritto:
>> >
>> > As soon as spice-vdagent package is installed, so is the spice-vdagent=
d daemon and it also starts running. Yet I always need to manually run spic=
e-vdagent command...
>> >
>>
>> Maybe you would need to logout and login again from the graphic
>> session. Or manually start it, not sure.
>>
>> > How do I specify an output directory for the agent to file transfer?
>> >
>>
>> See "spice-vdagent --help", specifically -f and -o options.
>>
>> > I don't think it's remote-viewer's fault, because I also tested with a=
 Windows guest. With all SPICE stuff properly installed, everything works o=
ut of the box: clipboard, resizing, file transfer from host to guest. With =
"properly installed" I mean: installed SPICE drivers manually from virtio-w=
in ISO by loading them since the Windows installation beforehand, then once=
 booted into Windows downloaded the vdagent ZIP from spice-space website an=
d manually installed the service according to instructions.
>> >
>>
>> I'll check, maybe is not handled by driver but agent
>>
>> > As additional detail, in QEMU I use the option "-display spice-app", w=
hich automatically starts remote-viewer; though curiously it doesn't seem t=
o create a virt-viewer directory inside ~/.config unlike when running remot=
e-viewer manually...
>> >
>> > Thanks again.
>> >
>> > El vie, 14 oct 2022 a las 12:41, Frediano Ziglio (<freddy77@gmail.com>=
) escribi=C3=B3:
>> >>
>> >> Il giorno gio 13 ott 2022 alle ore 16:58 Carlos Gonz=C3=A1lez
>> >> <piteccelaya@gmail.com> ha scritto:
>> >> >
>> >> > Hello.
>> >> >
>> >> > I'm trying a virtual machine with a live CD distribution called Ant=
iX Linux, which is directly based on Debian.
>> >> >
>> >> > I'm using direct QEMU commands.
>> >> > In the VM configuration I have this for SPICE configuration:
>> >> > "-vga qxl -device virtio-serial-pci -spice unix=3Don,addr=3Dpath/to=
/vm_spice.socket,disable-ticketing=3Don -chardev spicevmc,id=3Dspicechannel=
0,name=3Dvdagent -device virtserialport,chardev=3Dspicechannel0,name=3Dcom.=
redhat.spice.0 \"
>> >> > Then I boot the live ISO, double check that QXL driver is installed=
 -which normally always is-, and install spice-vdagent package (version 20 =
here). I'm using remote-viewer (virt-viewer) to visualize the VM.
>> >> >
>> >> > Up to this point, clipboard sharing with host still doesn't work, a=
nd trying to drag a file from host to guest results in an error "The agent =
is not connected".
>> >> >
>> >>
>> >> This error is normal if the agent is stopped.
>> >>
>> >> > So I manually run "spice-vdagent" command, and clipboard sharing no=
w works, but trying to drag file from host to guest gives "File transfer is=
 disabled". Also, automatic resolution change with window resizing doesn't =
work either.
>> >> >
>> >>
>> >> The fact that in this way the clipboard is running indicates that the
>> >> agent is now working. You need to specify an output directory to the
>> >> agent in order to get file transfer working.
>> >> About the resolution change that's weird, I think that feature on
>> >> Linux does not even require the agent running. Is it possible that th=
e
>> >> client (remove-viewer) is not set up to send resize to the guest
>> >> automatically, there are some options on the menu.
>> >>
>> >> > Certainly, this live distro doesn't come with any spice-related pac=
kages installed by default, except for the QXL package.
>> >> >
>> >> > Am I missing something here? Could someone help please?
>> >> > Thanks beforehand.
>> >>
>> >> Frediano
