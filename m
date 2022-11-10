Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 359AA623C85
	for <lists+spice-devel@lfdr.de>; Thu, 10 Nov 2022 08:18:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF73E10E669;
	Thu, 10 Nov 2022 07:18:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com
 [IPv6:2607:f8b0:4864:20::22b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4747B10E669
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Nov 2022 07:18:50 +0000 (UTC)
Received: by mail-oi1-x22b.google.com with SMTP id q83so990248oib.10
 for <spice-devel@lists.freedesktop.org>; Wed, 09 Nov 2022 23:18:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=nfybJErtBPB7v5Ms1DImoQLJem2+CoiPtudKd/fcwSA=;
 b=bCtiS8jr+18HamTPHwAvkS737aSP+CoSbeAAvmJ42GQuR/zj329mW1KayoMyKUN2uH
 aUWU9qs178ajfQSlXfLja/H36rAat76MDkQ+wSPp24umyMNGjzw1S1WPzlVwS4HTXqwy
 hNxWUqijGIsyaaN5fwsjaTN9mDWDc7bXDo5vlRp6s86QZN7c8QVFkB3OcXHQ3OaRQn+c
 bq4H7r2WnGYQ4zpzEVdniXzEvHqtlJZ2bqLBt5q/gQRvV0btLhTs41rq3QnLirMZhw40
 VE6UdaRmrL7XlUQY0aKwm9CfwYY7OUAdqYdc7rSGwelBCHpGw3ep38QNUp4ZGX42bQQ0
 wbQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=nfybJErtBPB7v5Ms1DImoQLJem2+CoiPtudKd/fcwSA=;
 b=kmEVMJthL9BSxfE3iBltxIg4qkO0cNOuLIhHDYp4h++3Tu0Sds3pzzRFGEvub07HeO
 Nl77En8RcO+jWCFp4cxn6w4+A/PZXs80oaXdYUw88CwChHWK8vqLgdCbkqOQQMSHME9k
 tOci1ATaA0u7g2iyADxpgAYaPqC6b7NPmKYTOAbl2uK1h+TT6acXIYmoOfVO6cH7qk9X
 z5xDYkFASjz2M/2/MhHkrtUBTbiXE4G7NAgTMGtJHMLqCXj3cv3GuplWXnuZSk+lB+R5
 247cHoEm7GJbEKNxAV+XaqPsiMCNisdVtOUWIG56IbP7dl4grB1DQ54vu0NmcFx+pV6D
 0SQw==
X-Gm-Message-State: ACrzQf3ZeZpt8VTz89Vup570Fx0fL3dKUqnEe9tib7nco7w19tq2RZoa
 vMuRcY7RFQoRM7nLOcvNONZ86w15dA84i0N6Ob0=
X-Google-Smtp-Source: AMsMyM5mRMYcgimHI6TC5pATP9xdIrWWwwzPKLzjNsEYbV3Vi0uGZHZDqoJIc+oTdlWk4Xffi7bB75nQPQzMaQL8zZo=
X-Received: by 2002:a05:6808:7d1:b0:35a:3bb8:da5e with SMTP id
 f17-20020a05680807d100b0035a3bb8da5emr1085438oij.1.1668064729302; Wed, 09 Nov
 2022 23:18:49 -0800 (PST)
MIME-Version: 1.0
References: <PYPGGnYoyG-Z7cu7sTB5CUQnfLogiolh-k4lRx8ajo4vNyZDFnkqPNzftiZIDVzziqXf6LxYpAQt3kw5rnHWNdOrao_ObxBN58ZAM_IHGCY=@proton.me>
 <CAHt6W4cwaOzAaRVxg6uOET5PNA3i80OVedPu0=r4WTh+8M+CGA@mail.gmail.com>
 <_IOcomilYrKnDYwcgFSumvVAHvOUoBBRx8KIhZfnagkZHAw38DUD9k2l85bFnAAwCTR01CRpKV_JF2qFF26IQxVkdzBRvP4iQp7kHG5qOY0=@proton.me>
 <ILS8VUxFQEXg03bcavjZEhC9OdcZX2RCw3LezcmA6vdYFYdmIu6aGEqSSs5G0VwffNxLpidD5hGc9qR7Xw_mrL_EtI-vhUELN-FFXVS0hNQ=@proton.me>
In-Reply-To: <ILS8VUxFQEXg03bcavjZEhC9OdcZX2RCw3LezcmA6vdYFYdmIu6aGEqSSs5G0VwffNxLpidD5hGc9qR7Xw_mrL_EtI-vhUELN-FFXVS0hNQ=@proton.me>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Thu, 10 Nov 2022 07:18:38 +0000
Message-ID: <CAHt6W4fuWeUhOv8CF1ZNs+doJ-=0wbwUPQUHySODEG2yrus1VA@mail.gmail.com>
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

Il giorno gio 10 nov 2022 alle ore 03:14 let-me-use-copy-and-paste
<let-me-use-copy-and-paste@proton.me> ha scritto:
>
> > > > I installed Alpine Linux 3.16 virtual machine edition on QEMU/KVM u=
sing Virt-Manager. I installed XFCE on it. I wanted to enable copy-and-past=
e, so I tried to install spice-vdagent on it, but it kept crashing. I check=
ed the output using the "-x" parameter, and basically, it crashed due to th=
e lack of /dev/uinput. The screenshot is at https://i.imgur.com/9WKaVG8.png
> > > >
> > > > I do not know Linux much, so I am not sure if /dev/uinput is not pr=
esent due to the settings of the virtual machine or because I have not inst=
alled something on Alpine Linux. I tried the standard edition of Alpine, an=
d right after the installation, /dev/uinput was not present.
> > > >
> > > > In case that Alpine Linux indeed does not support /dev/uinput, can'=
t the spice service run anyway? All I want is text copy-and-paste between t=
he host and the guest, and does that feature need /dev/uinput?
> > >
> > > Hi,
> > > try to add "-f -u /dev/null" to the parameters (that is
> > > "--fake-uinput --uinput-device /dev/null").
> > >
> > > Frediano
> >
> >
> > In Alpine Linux, if I install the "spice-vdagent" package, there seem t=
o be two executables: spice-vdagentd and spice-vdagent. I ran spice-vdagent=
d with "-x -d -d -f -u /dev/null" and this time, it did not crash. But as s=
oon as I ran "spice-vdagent -x -d", the virtual machine's mouse stopped wor=
king. With the debug messages from spice-vdagentd, I knew that the daemon w=
as receiving the mouse pointer movements and button clicks, but somehow the=
 XFCE desktop did not get it, so I could not do things like clicking a wind=
ow. Keyboard was working, though. Also, probably copy-and-paste also would =
work, because in the debug message from spice-vdagent, it seemed to have re=
ceived the event, when I copied some text on the host OS. How can I fix thi=
s mouse not moving problem?
> >

I suspected the mouse could have some issues. To implement client
mouse the agent is getting the mouse movements and using /dev/uinput
to send that back to the guest. The issue is that the spice-server in
this case is not forwarding the mouse events to Qemu (but to the
agent). I'll need to have a look at the code, maybe there's a
combination you can use server mouse (that does not need the agent)
having the agent running to support other features.

> > Also, there is another problem. It seems that after running "spice-vdag=
entd -x -f -u /dev/null", any subsequent execution of it fails with "Fatal =
could not create the server socket /run/spice-vdagentd/spice-agent-sock: Er=
ror binding to address (GUnixSocketAddress): No such file or directory. Reb=
ooting the guest OS did not solve the problem. Here is the screenshot: http=
s://i.imgur.com/pKtD8BH.png
> >

Probably simple, either there the file
/run/spice-vdagentd/spice-agent-sock is present or the directory was
deleted for some reason.

> > Luckily, I had created a snapshot right after installing Alpine Linux a=
nd XFCE, so I can revert it and keep testing. If there is anything more I c=
an do, please let me know.
>
> If there currently is no way to solve this problem, can't the agent be up=
dated so that it would not crash when /dev/uinput is not present, and conti=
nue to do what it can do without /dev/uinput? I mean, all I want is copy-an=
d-paste, and I am not sure why that cannot function without /dev/uinput.

The agent is not crashing, it exists refusing to work. As said above
I'll have a look.

Frediano
