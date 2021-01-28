Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5BB6306AC0
	for <lists+spice-devel@lfdr.de>; Thu, 28 Jan 2021 02:54:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 503C46E8BB;
	Thu, 28 Jan 2021 01:54:14 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com
 [IPv6:2607:f8b0:4864:20::d32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6EEA6E8BB
 for <spice-devel@lists.freedesktop.org>; Thu, 28 Jan 2021 01:54:12 +0000 (UTC)
Received: by mail-io1-xd32.google.com with SMTP id u8so3967115ior.13
 for <spice-devel@lists.freedesktop.org>; Wed, 27 Jan 2021 17:54:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+zZM7ftC8vUPQWzuL1KoEs6BzYVPUfxhIeuYHIVAcys=;
 b=t+eaICR6cJF6xEHai70tE4tCWcJqzVdvmCk75T4SqkZWRu8nBMkSelq8KLkTRi1xqV
 LYcDjlJaVFmKZ2qTpmFbSXpnADXOxb8IxVEW0gMBFQLs+RZVkj/wKwwf5EHz7IO30EIj
 e4nYFnoCJNBEYqP0c73D1b/7VuhhEHSum91uqexzl9Vc8fnwmtWQxBwSW4INSDECmUu3
 mgG+TF+yLbySmATC+H9RuyD4WeDgAYpEClghKHn12gnWBxlxvqNkaS19CliPZQzvdWuQ
 Cs9bFnU8lANLdrBnSO2KQVZ0SQhciUMVatXmzLXA5zVb2Vp4lLNjoG5ev94nQUD07EZE
 TfcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+zZM7ftC8vUPQWzuL1KoEs6BzYVPUfxhIeuYHIVAcys=;
 b=MH+1A9sjTmtGJ2FiW0yQAwykNL2/8BeZL7IiL9urN9lWqCigA5Qp8AXyKruhyyG89y
 lsfXk+kVh3SebvPu8Ib5eeKhHdeP09x9SOIA9Tq6zfxvRKpbInqSHHONHMiBE78Smpi+
 ntuMj55iq7/qAiARO/pJ2GakOFuaE3mE6peM7sZDGD430xoDclM92reL8OnqS71NMs9U
 vWPN+gpnsB+Sg5nIW2p5rZkIlBjK10CiOTiJKFdlBr891ShzWN94FZub7qjRHl8Rr/36
 Miprz7AnM3pi8wt3g9cBUEpWTuBp1rYBamcinWoO9nArqFrv+NImROaBb2KVO8rai/46
 bPXw==
X-Gm-Message-State: AOAM530KtHb1EXujmthSeOIXHoD9kJ/jTRErk81C7pEy3oq0LuZLGvQT
 BWUg8jB8NAeknumwmJAlzAZoKMBtPUpQtb/g+Go=
X-Google-Smtp-Source: ABdhPJzW7c1LZ//+go17/J37OLyB1jzIHhk//AC1ohoKQdTMX3LcTjdtKlmAmviHPYHwIhlNFXNbGvDfBKZ4dmIHec8=
X-Received: by 2002:a5d:8ac8:: with SMTP id e8mr9909320iot.163.1611798851896; 
 Wed, 27 Jan 2021 17:54:11 -0800 (PST)
MIME-Version: 1.0
References: <CA+5jrfmzOEm6Ue4-tROG6_peoAWvuG0hFD4wD=7me+n4Y1Uigw@mail.gmail.com>
 <20210120125809.woguc4hyuhprfank@wingsuit>
In-Reply-To: <20210120125809.woguc4hyuhprfank@wingsuit>
From: lx <lxlenovostar@gmail.com>
Date: Thu, 28 Jan 2021 09:54:01 +0800
Message-ID: <CA+5jrfk2OKy5hdDJrhWGxHirQe7qbEKrfSzhVjT1pVzpVHEPVw@mail.gmail.com>
To: Victor Toso <victortoso@redhat.com>
Subject: Re: [Spice-devel] [spice-devel]Clipboard can't work
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
Content-Type: multipart/mixed; boundary="===============0502696686=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0502696686==
Content-Type: multipart/alternative; boundary="0000000000000448d805b9ec2a17"

--0000000000000448d805b9ec2a17
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Victor Toso <victortoso@redhat.com> =E4=BA=8E2021=E5=B9=B41=E6=9C=8820=E6=
=97=A5=E5=91=A8=E4=B8=89 =E4=B8=8B=E5=8D=888:58=E5=86=99=E9=81=93=EF=BC=9A

> On Wed, Jan 20, 2021 at 10:24:29AM +0800, lx wrote:
> > Hi all:
> >     I  test SPICE. I use Remote viewer on Windows10. And I install
> > qemu-kvm/libvirt on Centos7, which run Windows10 in a virtual machine. =
I
> > find I can't
> > use Clipboard between my local Windows10 and Windows10 which in a virtu=
al
> > machine.   I'm a newbie in SPICE, How to debug this problem? Which log =
I
> > should
> > read?
> >      Thank you
> >
> >
> > Additionally info:
> > libvirt-5.2.0, qemu-3.1.0, spice-0.14.0, spice-protocol-0.12.15,
> > usbredir-0.8.0,spice-guest-tools-latest.exe
>
> Can you confirm that you have installed
> spice-guest-tools-latest.exe in your Windows10 Virtual Machine?
>

I check spice-guest-tools *in the control panel.*


>
> Configuration wise, it should work with defaults considering that
> you are have installed the spice guest agent.
>
> > virtual Machine Viewer 9.0-256
>
> could you trying running remote-viewer.exe from the cmd with
> --spice-debug? (you might need to set environment variable
> G_MESSAGES_DEBUG to all)
>
> Cheers,
> Victor
>

I run the virtViewer in this way:
#############################################################
C:\Program Files\VirtViewer v9.0-256\bin>set G_MESSAGES_DEBUG=3Dall

C:\Program Files\VirtViewer v9.0-256\bin>remote-viewer.exe --spice-debug
#############################################################

But I can't find some useful information.

#############################################################
(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:55.514:
../src/decode-glz.c:349 decode_header: 233x305, id 80, ref 23
(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:55.530:
../src/decode-glz.c:349 decode_header: 233x305, id 81, ref 24
(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:55.546:
../src/decode-glz.c:349 decode_header: 233x305, id 82, ref 24
(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:55.562:
../src/decode-glz.c:349 decode_header: 233x305, id 83, ref 24
(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:55.580:
../src/decode-glz.c:349 decode_header: 233x305, id 84, ref 24
(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:55.596:
../src/decode-glz.c:349 decode_header: 233x305, id 85, ref 24
(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:55.694:
../src/decode-glz.c:349 decode_header: 227x22, id 86, ref 24
(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:55.816:
../src/decode-glz.c:349 decode_header: 227x22, id 87, ref 24
(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:55.850:
../src/decode-glz.c:349 decode_header: 227x22, id 88, ref 24
(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:55.851:
../src/decode-glz.c:95 glz_decoder_window_resize: array resize 64 -> 128
(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:56.069:
../src/decode-glz.c:349 decode_header: 227x44, id 89, ref 24
(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:57.195:
../src/channel-cursor.c:386 cursor-4:0: set_cursor: flags 0, size 256
(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:57.196:
../src/channel-cursor.c:392 cursor-4:0: set_cursor: type mono(1), 0, 32x32
(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:57.227:
../src/decode-glz.c:349 decode_header: 238x310, id 90, ref 24
(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:57.305:
../src/decode-glz.c:349 decode_header: 227x22, id 91, ref 24
(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:57.306:
../src/decode-glz.c:349 decode_header: 17x107, id 92, ref 24
(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:57.322:
../src/decode-glz.c:349 decode_header: 227x22, id 93, ref 24
(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:57.323:
../src/decode-glz.c:349 decode_header: 17x22, id 94, ref 24
(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:57.324:
../src/decode-glz.c:349 decode_header: 17x565, id 95, ref 24
(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:57.336:
../src/decode-glz.c:349 decode_header: 1127x17, id 96, ref 24
(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:57.339:
../src/decode-glz.c:349 decode_header: 227x22, id 97, ref 24
(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:57.362:
../src/decode-glz.c:349 decode_header: 227x22, id 98, ref 24
(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:57.363:
../src/decode-glz.c:349 decode_header: 227x22, id 99, ref 24
(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:57.406:
../src/decode-glz.c:349 decode_header: 227x22, id 100, ref 24
(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:57.407:
../src/decode-glz.c:349 decode_header: 227x22, id 101, ref 24
(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:57.419:
../src/decode-glz.c:349 decode_header: 227x22, id 102, ref 24
(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:57.453:
../src/decode-glz.c:349 decode_header: 227x22, id 103, ref 24
(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:57.454:
../src/decode-glz.c:349 decode_header: 227x22, id 104, ref 24
(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:57.541:
../src/decode-glz.c:349 decode_header: 227x22, id 105, ref 24
(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:57.542:
../src/decode-glz.c:349 decode_header: 227x22, id 106, ref 24
(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:57.578:
../src/decode-glz.c:349 decode_header: 1x21, id 107, ref 24
(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:57.797:
../src/channel-cursor.c:386 cursor-4:0: set_cursor: flags 0, size 4096
(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:57.798:
../src/channel-cursor.c:392 cursor-4:0: set_cursor: type alpha(0), 0, 32x32
(remote-viewer.exe:44260): virt-viewer-DEBUG: 09:51:57.838: Allocated
1920x1080
(remote-viewer.exe:44260): virt-viewer-DEBUG: 09:51:57.839: Child allocate
1920x1080
(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:57.871:
../src/decode-glz.c:349 decode_header: 17x694, id 108, ref 24
(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:57.872:
../src/decode-glz.c:349 decode_header: 1127x17, id 109, ref 24
(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:58.075:
../src/decode-glz.c:349 decode_header: 1x21, id 110, ref 24
(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:58.286:
../src/usb-device-manager.c:1855 Auto-connect disabled, no hider setup
needed
(remote-viewer.exe:44260): virt-viewer-DEBUG: 09:51:58.288: Allocated
1920x1080
(remote-viewer.exe:44260): virt-viewer-DEBUG: 09:51:58.289: Child allocate
1920x1080
(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:58.654:
../src/decode-glz.c:349 decode_header: 1x21, id 111, ref 24
(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:59.147:
../src/decode-glz.c:349 decode_header: 1x21, id 112, ref 24
(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:59.648:
../src/decode-glz.c:349 decode_header: 1x21, id 113, ref 24
(remote-viewer.exe:44260): GSpice-DEBUG: 09:52:00.194:
../src/decode-glz.c:349 decode_header: 1x21, id 114, ref 24
(remote-viewer.exe:44260): GSpice-DEBUG: 09:52:00.341:
../src/decode-glz.c:349 decode_header: 73x40, id 115, ref 24
(remote-viewer.exe:44260): GSpice-DEBUG: 09:52:00.740:
../src/decode-glz.c:349 decode_header: 1x21, id 116, ref 24
(remote-viewer.exe:44260): GSpice-DEBUG: 09:52:01.274:
../src/decode-glz.c:349 decode_header: 1x21, id 117, ref 24
(remote-viewer.exe:44260): GSpice-DEBUG: 09:52:01.802:
../src/decode-glz.c:349 decode_header: 1x21, id 118, ref 24
#############################################################

How to fix this problem?

Thank you.

--0000000000000448d805b9ec2a17
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">Victor Toso &lt;<a href=3D"mailto:vic=
tortoso@redhat.com">victortoso@redhat.com</a>&gt; =E4=BA=8E2021=E5=B9=B41=
=E6=9C=8820=E6=97=A5=E5=91=A8=E4=B8=89 =E4=B8=8B=E5=8D=888:58=E5=86=99=E9=
=81=93=EF=BC=9A<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
On Wed, Jan 20, 2021 at 10:24:29AM +0800, lx wrote:<br>
&gt; Hi all:<br>
&gt;=C2=A0 =C2=A0 =C2=A0I=C2=A0 test SPICE. I use Remote viewer on Windows1=
0. And I install<br>
&gt; qemu-kvm/libvirt on Centos7, which run Windows10 in a virtual machine.=
 I<br>
&gt; find I can&#39;t<br>
&gt; use Clipboard between my local Windows10 and Windows10 which in a virt=
ual<br>
&gt; machine.=C2=A0 =C2=A0I&#39;m a newbie in SPICE, How to debug this prob=
lem? Which log I<br>
&gt; should<br>
&gt; read?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 Thank you<br>
&gt; <br>
&gt; <br>
&gt; Additionally info:<br>
&gt; libvirt-5.2.0, qemu-3.1.0, spice-0.14.0, spice-protocol-0.12.15,<br>
&gt; usbredir-0.8.0,spice-guest-tools-latest.exe<br>
<br>
Can you confirm that you have installed<br>
spice-guest-tools-latest.exe in your Windows10 Virtual Machine?<br></blockq=
uote><div><br></div><div>I check spice-guest-tools <b>in the control panel.=
</b>=C2=A0</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">
<br>
Configuration wise, it should work with defaults considering that<br>
you are have installed the spice guest agent.<br>
<br>
&gt; virtual Machine Viewer 9.0-256<br>
<br>
could you trying running remote-viewer.exe from the cmd with<br>
--spice-debug? (you might need to set environment variable<br>
G_MESSAGES_DEBUG to all)<br>
<br>
Cheers,<br>
Victor<br></blockquote><div><br></div><div>I run the virtViewer in this way=
:</div><div>#############################################################</=
div><div>C:\Program Files\VirtViewer v9.0-256\bin&gt;set G_MESSAGES_DEBUG=
=3Dall<br><br>C:\Program Files\VirtViewer v9.0-256\bin&gt;remote-viewer.exe=
 --spice-debug<br></div><div>##############################################=
###############</div><div><br></div><div>But I can&#39;t find some useful i=
nformation.</div><div><br></div><div>######################################=
#######################</div><div>(remote-viewer.exe:44260): GSpice-DEBUG: =
09:51:55.514: ../src/decode-glz.c:349 decode_header: 233x305, id 80, ref 23=
<br>(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:55.530: ../src/decode-gl=
z.c:349 decode_header: 233x305, id 81, ref 24<br>(remote-viewer.exe:44260):=
 GSpice-DEBUG: 09:51:55.546: ../src/decode-glz.c:349 decode_header: 233x305=
, id 82, ref 24<br>(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:55.562: .=
./src/decode-glz.c:349 decode_header: 233x305, id 83, ref 24<br>(remote-vie=
wer.exe:44260): GSpice-DEBUG: 09:51:55.580: ../src/decode-glz.c:349 decode_=
header: 233x305, id 84, ref 24<br>(remote-viewer.exe:44260): GSpice-DEBUG: =
09:51:55.596: ../src/decode-glz.c:349 decode_header: 233x305, id 85, ref 24=
<br>(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:55.694: ../src/decode-gl=
z.c:349 decode_header: 227x22, id 86, ref 24<br>(remote-viewer.exe:44260): =
GSpice-DEBUG: 09:51:55.816: ../src/decode-glz.c:349 decode_header: 227x22, =
id 87, ref 24<br>(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:55.850: ../=
src/decode-glz.c:349 decode_header: 227x22, id 88, ref 24<br>(remote-viewer=
.exe:44260): GSpice-DEBUG: 09:51:55.851: ../src/decode-glz.c:95 glz_decoder=
_window_resize: array resize 64 -&gt; 128<br>(remote-viewer.exe:44260): GSp=
ice-DEBUG: 09:51:56.069: ../src/decode-glz.c:349 decode_header: 227x44, id =
89, ref 24<br>(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:57.195: ../src=
/channel-cursor.c:386 cursor-4:0: set_cursor: flags 0, size 256<br>(remote-=
viewer.exe:44260): GSpice-DEBUG: 09:51:57.196: ../src/channel-cursor.c:392 =
cursor-4:0: set_cursor: type mono(1), 0, 32x32<br>(remote-viewer.exe:44260)=
: GSpice-DEBUG: 09:51:57.227: ../src/decode-glz.c:349 decode_header: 238x31=
0, id 90, ref 24<br>(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:57.305: =
../src/decode-glz.c:349 decode_header: 227x22, id 91, ref 24<br>(remote-vie=
wer.exe:44260): GSpice-DEBUG: 09:51:57.306: ../src/decode-glz.c:349 decode_=
header: 17x107, id 92, ref 24<br>(remote-viewer.exe:44260): GSpice-DEBUG: 0=
9:51:57.322: ../src/decode-glz.c:349 decode_header: 227x22, id 93, ref 24<b=
r>(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:57.323: ../src/decode-glz.=
c:349 decode_header: 17x22, id 94, ref 24<br>(remote-viewer.exe:44260): GSp=
ice-DEBUG: 09:51:57.324: ../src/decode-glz.c:349 decode_header: 17x565, id =
95, ref 24<br>(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:57.336: ../src=
/decode-glz.c:349 decode_header: 1127x17, id 96, ref 24<br>(remote-viewer.e=
xe:44260): GSpice-DEBUG: 09:51:57.339: ../src/decode-glz.c:349 decode_heade=
r: 227x22, id 97, ref 24<br>(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:=
57.362: ../src/decode-glz.c:349 decode_header: 227x22, id 98, ref 24<br>(re=
mote-viewer.exe:44260): GSpice-DEBUG: 09:51:57.363: ../src/decode-glz.c:349=
 decode_header: 227x22, id 99, ref 24<br>(remote-viewer.exe:44260): GSpice-=
DEBUG: 09:51:57.406: ../src/decode-glz.c:349 decode_header: 227x22, id 100,=
 ref 24<br>(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:57.407: ../src/de=
code-glz.c:349 decode_header: 227x22, id 101, ref 24<br>(remote-viewer.exe:=
44260): GSpice-DEBUG: 09:51:57.419: ../src/decode-glz.c:349 decode_header: =
227x22, id 102, ref 24<br>(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:57=
.453: ../src/decode-glz.c:349 decode_header: 227x22, id 103, ref 24<br>(rem=
ote-viewer.exe:44260): GSpice-DEBUG: 09:51:57.454: ../src/decode-glz.c:349 =
decode_header: 227x22, id 104, ref 24<br>(remote-viewer.exe:44260): GSpice-=
DEBUG: 09:51:57.541: ../src/decode-glz.c:349 decode_header: 227x22, id 105,=
 ref 24<br>(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:57.542: ../src/de=
code-glz.c:349 decode_header: 227x22, id 106, ref 24<br>(remote-viewer.exe:=
44260): GSpice-DEBUG: 09:51:57.578: ../src/decode-glz.c:349 decode_header: =
1x21, id 107, ref 24<br>(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:57.7=
97: ../src/channel-cursor.c:386 cursor-4:0: set_cursor: flags 0, size 4096<=
br>(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:57.798: ../src/channel-cu=
rsor.c:392 cursor-4:0: set_cursor: type alpha(0), 0, 32x32<br>(remote-viewe=
r.exe:44260): virt-viewer-DEBUG: 09:51:57.838: Allocated 1920x1080<br>(remo=
te-viewer.exe:44260): virt-viewer-DEBUG: 09:51:57.839: Child allocate 1920x=
1080<br>(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:57.871: ../src/decod=
e-glz.c:349 decode_header: 17x694, id 108, ref 24<br>(remote-viewer.exe:442=
60): GSpice-DEBUG: 09:51:57.872: ../src/decode-glz.c:349 decode_header: 112=
7x17, id 109, ref 24<br>(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:58.0=
75: ../src/decode-glz.c:349 decode_header: 1x21, id 110, ref 24<br>(remote-=
viewer.exe:44260): GSpice-DEBUG: 09:51:58.286: ../src/usb-device-manager.c:=
1855 Auto-connect disabled, no hider setup needed<br>(remote-viewer.exe:442=
60): virt-viewer-DEBUG: 09:51:58.288: Allocated 1920x1080<br>(remote-viewer=
.exe:44260): virt-viewer-DEBUG: 09:51:58.289: Child allocate 1920x1080<br>(=
remote-viewer.exe:44260): GSpice-DEBUG: 09:51:58.654: ../src/decode-glz.c:3=
49 decode_header: 1x21, id 111, ref 24<br>(remote-viewer.exe:44260): GSpice=
-DEBUG: 09:51:59.147: ../src/decode-glz.c:349 decode_header: 1x21, id 112, =
ref 24<br>(remote-viewer.exe:44260): GSpice-DEBUG: 09:51:59.648: ../src/dec=
ode-glz.c:349 decode_header: 1x21, id 113, ref 24<br>(remote-viewer.exe:442=
60): GSpice-DEBUG: 09:52:00.194: ../src/decode-glz.c:349 decode_header: 1x2=
1, id 114, ref 24<br>(remote-viewer.exe:44260): GSpice-DEBUG: 09:52:00.341:=
 ../src/decode-glz.c:349 decode_header: 73x40, id 115, ref 24<br>(remote-vi=
ewer.exe:44260): GSpice-DEBUG: 09:52:00.740: ../src/decode-glz.c:349 decode=
_header: 1x21, id 116, ref 24<br>(remote-viewer.exe:44260): GSpice-DEBUG: 0=
9:52:01.274: ../src/decode-glz.c:349 decode_header: 1x21, id 117, ref 24<br=
>(remote-viewer.exe:44260): GSpice-DEBUG: 09:52:01.802: ../src/decode-glz.c=
:349 decode_header: 1x21, id 118, ref 24<br></div><div>####################=
#########################################</div><div>=C2=A0</div><div>How to=
 fix this problem?=C2=A0</div><div><br></div><div>Thank you.<br></div></div=
></div>

--0000000000000448d805b9ec2a17--

--===============0502696686==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0502696686==--
