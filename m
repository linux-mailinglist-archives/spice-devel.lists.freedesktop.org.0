Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 535057B073C
	for <lists+spice-devel@lfdr.de>; Wed, 27 Sep 2023 16:45:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18A4D10E546;
	Wed, 27 Sep 2023 14:45:48 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com
 [IPv6:2607:f8b0:4864:20::231])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DE4310E546
 for <spice-devel@lists.freedesktop.org>; Wed, 27 Sep 2023 14:45:46 +0000 (UTC)
Received: by mail-oi1-x231.google.com with SMTP id
 5614622812f47-3ae5ce5c5b0so1368619b6e.0
 for <spice-devel@lists.freedesktop.org>; Wed, 27 Sep 2023 07:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1695825946; x=1696430746; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=g42OkORK8obyDKoU/rsC7ND86zk9rGPynEAV8nEN/gc=;
 b=NuV3T+B3Kw5CZtCZmjtbtSq30gVHfD2GRV6PpQ56dMcieG+DbfAv/e4ho6MefLHzYJ
 I7hF4lQx991635Xdzi00ZchEIHDG2X+rEPwEldAw9DamqpervmIV5cdi+hbBP9M6ceTg
 cIUIxjWgkanUYqZ4WXNovw8v0JI0whSVE2V0HcBIfwpDLKYO2AroPp9/+QU4aHKMmP9p
 lACGHyMr8JPwk28euKdsmhjSFFOH+yHaxaoUQ1cbwNUtrNFiqn++Cgk19fCUeE7rACGa
 WKpKHQo55RG7IPLOM3dgdrFJ0lU+hWYRjPuZfEZeQZiBnCwj5xaolNKvRW2cz+0zXyjk
 3aWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695825946; x=1696430746;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=g42OkORK8obyDKoU/rsC7ND86zk9rGPynEAV8nEN/gc=;
 b=JJDUaOH0tTXWmVzgORQslOrF0RdEJnF+uVPW6zDDq86YHnHxu2lGaxiLnYOCJNLbGI
 Yy9OPgnXOdTAkceG84j6Vq2O+FxlG6P3Tc4cU/yAmC2boN4D6Y5Uy69OIAc2Gweze8e9
 EPOU09J28mKVjj/RfMawe1TtqpofQ62uavm8jdsBLCLRoY9fhuHbDBOFJgy2xe3ww6GP
 j64OLs2XlXvgRTVvIWjYaqHTH/r9nC2llokZk2K4lwvdNK2NNtEsbu/k6AC7ys78RvI4
 x9BIl304sOwNwln2Zs7Jv8eEk4ZfU8pmkGFdGKLIJUhf/IGo3WwL+IB7paw5MzXLwGo0
 JMlQ==
X-Gm-Message-State: AOJu0YyEF6YqicVYYHcY09Pjly9+4bPeuzATJVGtSzJkHgE36nJZK1UW
 qA8W/pfPPSMatNBPMRf/hu+AGnCm3mWyK9WbljFzkz9F
X-Google-Smtp-Source: AGHT+IFr7Vc5096v7Zwz8lJmy0KAtf9tsyr2Q61r8D1Ly55OU/uRQydzYAzOgc2+vjPujx11lp1hZxae/arvWds7gpc=
X-Received: by 2002:a05:6808:2026:b0:3aa:1369:e11 with SMTP id
 q38-20020a056808202600b003aa13690e11mr4306956oiw.5.1695825945635; Wed, 27 Sep
 2023 07:45:45 -0700 (PDT)
MIME-Version: 1.0
References: <TYYP286MB291548CC42CF7089D55BA36AC6C2A@TYYP286MB2915.JPNP286.PROD.OUTLOOK.COM>
In-Reply-To: <TYYP286MB291548CC42CF7089D55BA36AC6C2A@TYYP286MB2915.JPNP286.PROD.OUTLOOK.COM>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Wed, 27 Sep 2023 15:45:33 +0100
Message-ID: <CAHt6W4fdHBbewJnOApuVoGUGYUKbOHuPT8EB6aWatUM_-r8yug@mail.gmail.com>
To: haibin wang <haibinwang@outlook.com>
Content-Type: multipart/alternative; boundary="0000000000001730c70606583fe9"
Subject: Re: [Spice-devel] Drag and Drop from Guest to Host
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

--0000000000001730c70606583fe9
Content-Type: text/plain; charset="UTF-8"

Il giorno mer 27 set 2023 alle ore 14:36 haibin wang <haibinwang@outlook.com>
ha scritto:

> Hi,
>
> I am using spice on my Linux Mint machine, and would like to ask a
> question about how drag and drop is supposed to work.
>
> Basically, I use qemu with spice agent installed on the guest.  Dynamic
> resolution changing works.  Copy and paste between the guest and the host
> works, both ways.  File transfer through drag and drop works from host to
> guest, though not from guest to host.
>
> Ubuntu (
> https://manpages.ubuntu.com/manpages/xenial/man1/spice-vdagent.1.html),
> Debian (
> https://manpages.debian.org/testing/spice-vdagent/spice-vdagent.1.en.html),
> and Arch Linux (
> https://man.archlinux.org/man/spice-vdagent.1.en#:~:text=The%20spice%20guest%20agent%20for%20Linux%20consists%20of,desktop%20environments%20which%20honor%20%2Fetc%2Fxdg%2Fautostart%2C%20and%20under%20gdm.)
> all say that spice agent supports 'transferring files from the client to
> the agent', not mentioning the other way around.
>
> What I wanted to know was, if this one directional drag and drop works by
> design, or there is something I missed or misconfigured as it should work
> both ways, i.e., from host to guest as well as from guest to host.  Thank
> you.
>
> Best Regards,
> Haibin
>
> P.S.
> host: Linux Mint 21.2 Cinnamon 5.8.4
> Virtual Machine Manager 4.0.0
> qemu 6.2
> virt-viewer 7.0-2build2
> guest: Devuan Daedalus Linux 5
> vdagent: 0.22.1-3+b2
>

Hi Haibin,
   yes, currently drag&drop works one way only, from host to guest.

Regards,
   Frediano

--0000000000001730c70606583fe9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">Il giorno mer 27 set 2023 alle ore 14:36 haibin wang &lt;<a href=3D"=
mailto:haibinwang@outlook.com">haibinwang@outlook.com</a>&gt; ha scritto:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg=
4040581209260504809">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Hi,<br>
<br>
I am using spice on my Linux Mint machine, and would like to ask a question=
 about how drag and drop is supposed to work.<br>
<br>
Basically, I use qemu with spice agent installed on the guest.=C2=A0 Dynami=
c resolution changing works.=C2=A0 Copy and paste between the guest and the=
 host works, both ways.=C2=A0 File transfer through drag and drop works fro=
m host to guest, though not from guest to host.<br>
<br>
Ubuntu (<a href=3D"https://manpages.ubuntu.com/manpages/xenial/man1/spice-v=
dagent.1.html" target=3D"_blank">https://manpages.ubuntu.com/manpages/xenia=
l/man1/spice-vdagent.1.html</a>), Debian (<a href=3D"https://manpages.debia=
n.org/testing/spice-vdagent/spice-vdagent.1.en.html" target=3D"_blank">http=
s://manpages.debian.org/testing/spice-vdagent/spice-vdagent.1.en.html</a>),=
 and Arch Linux (<a href=3D"https://man.archlinux.org/man/spice-vdagent.1.e=
n#:~:text=3DThe%20spice%20guest%20agent%20for%20Linux%20consists%20of,deskt=
op%20environments%20which%20honor%20%2Fetc%2Fxdg%2Fautostart%2C%20and%20und=
er%20gdm" target=3D"_blank">https://man.archlinux.org/man/spice-vdagent.1.e=
n#:~:text=3DThe%20spice%20guest%20agent%20for%20Linux%20consists%20of,deskt=
op%20environments%20which%20honor%20%2Fetc%2Fxdg%2Fautostart%2C%20and%20und=
er%20gdm</a>.)
 all say that spice agent supports &#39;transferring files from the client =
to the agent&#39;, not mentioning the other way around.<br>
<br>
What I wanted to know was, if this one directional drag and drop works by d=
esign, or there is something I missed or misconfigured as it should work bo=
th ways, i.e., from host to guest as well as from guest to host.=C2=A0 Than=
k you.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Best Regards,</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Haibin</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
P.S.<br>
host: Linux Mint 21.2 Cinnamon 5.8.4<br>
Virtual Machine Manager 4.0.0<br>
qemu 6.2<br>
virt-viewer 7.0-2build2<br>
guest: Devuan Daedalus Linux 5<br>
vdagent: 0.22.1-3+b2<br></div></div></div></blockquote><div><br></div><div>=
Hi Haibin, </div><div>=C2=A0=C2=A0 yes, currently drag&amp;drop works one w=
ay only, from host to guest.</div><div><br></div><div>Regards,<br></div><di=
v>=C2=A0=C2=A0 Frediano<br></div></div></div>

--0000000000001730c70606583fe9--
