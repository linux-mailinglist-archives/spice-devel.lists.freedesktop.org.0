Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62594623CD5
	for <lists+spice-devel@lfdr.de>; Thu, 10 Nov 2022 08:42:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92C4D10E671;
	Thu, 10 Nov 2022 07:42:20 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com
 [IPv6:2607:f8b0:4864:20::235])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B201510E671
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Nov 2022 07:42:16 +0000 (UTC)
Received: by mail-oi1-x235.google.com with SMTP id n205so1074971oib.1
 for <spice-devel@lists.freedesktop.org>; Wed, 09 Nov 2022 23:42:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=xDNDheO9QhcJE2HSTvlkEZV/7W3SWrY/v0ogaS4DWg0=;
 b=R7g7UA40LvhxV6tFki3Cy0zzmcG41d6f01L9R9OgpmjfcEN7QdN617dvgSFeILZJfQ
 VSbixPfZ8umEB9XeVkdulGif7RWqYXh99GguUpqAHUEPz2xnIp6qGw42adUMUEo8q6k7
 uDrc12sdpgaLkQcyuKsU2l3+ytxw9/VJicdtKzknbOJMnCBrUXE+ZB8RL63NRDmZH2Ba
 avXXrKSk5xVpC2AN2sYgkGY9Rg87ucJAdDPSblHh0++d2KaTA8PUS8iWDOo/1vb/Qbfo
 QKAY/k4KgTk0JZzU5IkD26fkjrihoNTnIRo24YAlK/Asp5oBf0Ha1Aw+AmCrLqvEyOxf
 VFSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=xDNDheO9QhcJE2HSTvlkEZV/7W3SWrY/v0ogaS4DWg0=;
 b=QEep/5w4mmsoWAlFYgtyFwEsWljviZaXceLowIFXdshTEGkweoPwB5pTCa2cMsIGT1
 k91XTh3Y7On0lkj9ij2rCEg79DcWRtBS82u2bw1wuCv/p/W37VKeyQBWrVTL6/lxYQzg
 5dOlAEYStWN9mfaWjk2Df+uZv7sWVizE1kCwz9xNYlwT8xUo3bAUfeg+mWEQ8aKjHibj
 cr1Kyx0OJxLoSRRB2ECRl0Kee2CmIFyVqY42ZYQZd3uMnp9Rkk36/j4oNBcCZVLQIHJP
 ETBHvPyyQxh+I0FydDibz4XFzPltkxvuJr+9EYrOY+MdYxesP7JKqMnKH/Mc0p28tFvI
 9wYQ==
X-Gm-Message-State: ACrzQf1TWIIEs+4f2T+oat4YZWGip4sCrxlSzLBhTmA+eADexiWECp/I
 9/e3IN+YmL5LH1bSbOb+q33zVhy16z7ac7QtMKM=
X-Google-Smtp-Source: AMsMyM6HaCpqe3NuPrUz5B9lEkkK94ImRVQin53VxuWPAnDyj7KkvmGt/sWI1hT+pFuQ2UeYf7waVLqi/LAASyLGqQQ=
X-Received: by 2002:a05:6808:1992:b0:35a:6005:3dc6 with SMTP id
 bj18-20020a056808199200b0035a60053dc6mr16868665oib.1.1668066135707; Wed, 09
 Nov 2022 23:42:15 -0800 (PST)
MIME-Version: 1.0
References: <PYPGGnYoyG-Z7cu7sTB5CUQnfLogiolh-k4lRx8ajo4vNyZDFnkqPNzftiZIDVzziqXf6LxYpAQt3kw5rnHWNdOrao_ObxBN58ZAM_IHGCY=@proton.me>
 <CAHt6W4cwaOzAaRVxg6uOET5PNA3i80OVedPu0=r4WTh+8M+CGA@mail.gmail.com>
 <_IOcomilYrKnDYwcgFSumvVAHvOUoBBRx8KIhZfnagkZHAw38DUD9k2l85bFnAAwCTR01CRpKV_JF2qFF26IQxVkdzBRvP4iQp7kHG5qOY0=@proton.me>
 <ILS8VUxFQEXg03bcavjZEhC9OdcZX2RCw3LezcmA6vdYFYdmIu6aGEqSSs5G0VwffNxLpidD5hGc9qR7Xw_mrL_EtI-vhUELN-FFXVS0hNQ=@proton.me>
 <CAHt6W4fuWeUhOv8CF1ZNs+doJ-=0wbwUPQUHySODEG2yrus1VA@mail.gmail.com>
In-Reply-To: <CAHt6W4fuWeUhOv8CF1ZNs+doJ-=0wbwUPQUHySODEG2yrus1VA@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Thu, 10 Nov 2022 07:42:04 +0000
Message-ID: <CAHt6W4cQh=XUDVjyQT_KwCRJMSxxZ=F=sotbDmQp6n5OapExew@mail.gmail.com>
To: let-me-use-copy-and-paste <let-me-use-copy-and-paste@proton.me>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Spice-devel] Agent crashes on Alpine Linux guest due to lack
 of /dev/uinput
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

Il giorno gio 10 nov 2022 alle ore 07:18 Frediano Ziglio
<freddy77@gmail.com> ha scritto:
>
> Il giorno gio 10 nov 2022 alle ore 03:14 let-me-use-copy-and-paste
> <let-me-use-copy-and-paste@proton.me> ha scritto:
> >
> > > > > I installed Alpine Linux 3.16 virtual machine edition on QEMU/KVM=
 using Virt-Manager. I installed XFCE on it. I wanted to enable copy-and-pa=
ste, so I tried to install spice-vdagent on it, but it kept crashing. I che=
cked the output using the "-x" parameter, and basically, it crashed due to =
the lack of /dev/uinput. The screenshot is at https://i.imgur.com/9WKaVG8.p=
ng
> > > > >
> > > > > I do not know Linux much, so I am not sure if /dev/uinput is not =
present due to the settings of the virtual machine or because I have not in=
stalled something on Alpine Linux. I tried the standard edition of Alpine, =
and right after the installation, /dev/uinput was not present.
> > > > >
> > > > > In case that Alpine Linux indeed does not support /dev/uinput, ca=
n't the spice service run anyway? All I want is text copy-and-paste between=
 the host and the guest, and does that feature need /dev/uinput?
> > > >
> > > > Hi,
> > > > try to add "-f -u /dev/null" to the parameters (that is
> > > > "--fake-uinput --uinput-device /dev/null").
> > > >
> > > > Frediano
> > >
> > >
> > > In Alpine Linux, if I install the "spice-vdagent" package, there seem=
 to be two executables: spice-vdagentd and spice-vdagent. I ran spice-vdage=
ntd with "-x -d -d -f -u /dev/null" and this time, it did not crash. But as=
 soon as I ran "spice-vdagent -x -d", the virtual machine's mouse stopped w=
orking. With the debug messages from spice-vdagentd, I knew that the daemon=
 was receiving the mouse pointer movements and button clicks, but somehow t=
he XFCE desktop did not get it, so I could not do things like clicking a wi=
ndow. Keyboard was working, though. Also, probably copy-and-paste also woul=
d work, because in the debug message from spice-vdagent, it seemed to have =
received the event, when I copied some text on the host OS. How can I fix t=
his mouse not moving problem?
> > >
>
> I suspected the mouse could have some issues. To implement client
> mouse the agent is getting the mouse movements and using /dev/uinput
> to send that back to the guest. The issue is that the spice-server in
> this case is not forwarding the mouse events to Qemu (but to the
> agent). I'll need to have a look at the code, maybe there's a
> combination you can use server mouse (that does not need the agent)
> having the agent running to support other features.
>

You need to pass "agent-mouse=3Doff" to Qemu, see
https://people.freedesktop.org/~teuf/spice-doc/html/ch03.html or
"qemu-system-x86_64  --help".

> > > Also, there is another problem. It seems that after running "spice-vd=
agentd -x -f -u /dev/null", any subsequent execution of it fails with "Fata=
l could not create the server socket /run/spice-vdagentd/spice-agent-sock: =
Error binding to address (GUnixSocketAddress): No such file or directory. R=
ebooting the guest OS did not solve the problem. Here is the screenshot: ht=
tps://i.imgur.com/pKtD8BH.png
> > >
>
> Probably simple, either there the file
> /run/spice-vdagentd/spice-agent-sock is present or the directory was
> deleted for some reason.
>

Try mkdir -p /run/spice-vdagentd before launching the daemon. Not sure
who deletes the directory (if that's the problem).

> > > Luckily, I had created a snapshot right after installing Alpine Linux=
 and XFCE, so I can revert it and keep testing. If there is anything more I=
 can do, please let me know.
> >
> > If there currently is no way to solve this problem, can't the agent be =
updated so that it would not crash when /dev/uinput is not present, and con=
tinue to do what it can do without /dev/uinput? I mean, all I want is copy-=
and-paste, and I am not sure why that cannot function without /dev/uinput.
>
> The agent is not crashing, it exists refusing to work. As said above
> I'll have a look.
>

Frediano
