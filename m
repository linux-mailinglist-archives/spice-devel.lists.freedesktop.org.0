Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 476F05FDDC9
	for <lists+spice-devel@lfdr.de>; Thu, 13 Oct 2022 17:58:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EEF510E8CE;
	Thu, 13 Oct 2022 15:58:00 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7636C10E8CE
 for <spice-devel@lists.freedesktop.org>; Thu, 13 Oct 2022 15:57:55 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id
 c9-20020a05600c100900b003c6da0f9b62so1632083wmc.1
 for <spice-devel@lists.freedesktop.org>; Thu, 13 Oct 2022 08:57:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=NsOvTeffnotqas4avqUFSvX9Ft/lMadpWIBoaxoxtdY=;
 b=iU6DO6OzpKIGBUbJOwj2+NTlax4UTqn2du93ukukhuU48ocFd9mx6GhAXezlqAQi7n
 odK99AZECb3rqb3E5swtNzC1lR+rtwiMT5eizg0mpSrRBCv+UudaZgHA9glqopyMDFKK
 R1APMR3+VMG6XZTaHxx7MEf3P8VuEOhRLV5ELQ2zwBlE8eOe5Ia+4O3EzANVGKljhY/V
 SqMspQE+RTWT9qRXwN3gh7f8yj80/LWJv1dKqdD1SKyOnNbyU+tiHubIBZoIOzH5Ff4a
 8djDjXYRB+r1Ksbnd4U++HXtJK+LoWZ8V82uhw3kMM8TxtqRZSWuOrsnUcU3GYkkIDiI
 xPcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=NsOvTeffnotqas4avqUFSvX9Ft/lMadpWIBoaxoxtdY=;
 b=Q6BfzVplby+Iwbp4PaXf4jPzD49P1evjBJF6S2D5xho6SLndQBs1b6yxPACEjuXwwQ
 kf7XCAbHlgh9aU5WV5Hu6eLJ5XEq3QBKg8nNm9RAtLarJWcRfh1pcwl6K6q0FxvQGG1r
 3rnr5iqnnE5RAOW53OSYi11Ma4lbpR67vZJoPCzTcwiauoScB/gWgJfJR5X//0QFMcj1
 Qk81UlpvFe9tNbcL5SP5ceNzmwtdXi9vZb9a99R5MEG1cFkKbJzQSjSpxhopoW2Uj+dn
 p418eIxzRi4+FAfNvOdR9nq47/5WkmHQW7aspH9g/TROrsE5yzloFWjIh8uEfKgZW2JG
 dXkA==
X-Gm-Message-State: ACrzQf3WYWAYCFg7UAPLEsDk3LhOkk2SV6HI2vSwsr/MXQkaUwnYQt3z
 9cPb7fDg69JbibVHbFQ5Zxw65RQXPgnz7hcrCwiUJI1edmvVzQ==
X-Google-Smtp-Source: AMsMyM7fZiy5oWO/SI20y0yNqtN/yrhxx2NoWavQVpysoKevfLnv46dgkvMMjjyrkUCj/ZRJcLo+Vqtk2M+6VvrZ9/M=
X-Received: by 2002:a05:600c:474a:b0:3b4:cb3f:2f5f with SMTP id
 w10-20020a05600c474a00b003b4cb3f2f5fmr7204964wmo.8.1665676673519; Thu, 13 Oct
 2022 08:57:53 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Carlos_Gonz=C3=A1lez?= <piteccelaya@gmail.com>
Date: Thu, 13 Oct 2022 15:57:42 +0000
Message-ID: <CAGeBE=w-KZXVACD6xeeqfoo03K5BZxzA8O2U5x-8=NLsR=ZQKw@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="0000000000006f9d0905eaec9294"
Subject: [Spice-devel] Vdagent not working on a Debian guest
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--0000000000006f9d0905eaec9294
Content-Type: text/plain; charset="UTF-8"

Hello.

I'm trying a virtual machine with a live CD distribution called AntiX
Linux, which is directly based on Debian.

I'm using direct QEMU commands.
In the VM configuration I have this for SPICE configuration:
"-vga qxl -device virtio-serial-pci -spice
unix=on,addr=path/to/vm_spice.socket,disable-ticketing=on -chardev
spicevmc,id=spicechannel0,name=vdagent -device
virtserialport,chardev=spicechannel0,name=com.redhat.spice.0 \"
Then I boot the live ISO, double check that QXL driver is installed -which
normally always is-, and install spice-vdagent package (version 20 here).
I'm using remote-viewer (virt-viewer) to visualize the VM.

Up to this point, clipboard sharing with host still doesn't work, and
trying to drag a file from host to guest results in an error "The agent is
not connected".

So I manually run "spice-vdagent" command, and clipboard sharing now works,
but trying to drag file from host to guest gives "File transfer is
disabled". Also, automatic resolution change with window resizing doesn't
work either.

Certainly, this live distro doesn't come with any spice-related packages
installed by default, except for the QXL package.

Am I missing something here? Could someone help please?
Thanks beforehand.

--0000000000006f9d0905eaec9294
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello.</div><div><br></div><div>I&#39;m trying a virt=
ual machine with a live CD distribution called AntiX Linux, which is direct=
ly based on Debian.</div><div><br></div><div>I&#39;m using direct QEMU comm=
ands.</div><div>In the VM configuration I have this for SPICE configuration=
:</div><div>&quot;-vga qxl -device virtio-serial-pci -spice unix=3Don,addr=
=3Dpath/to/vm_spice.socket,disable-ticketing=3Don -chardev spicevmc,id=3Dsp=
icechannel0,name=3Dvdagent -device virtserialport,chardev=3Dspicechannel0,n=
ame=3Dcom.redhat.spice.0 \&quot;</div><div>Then I boot the live ISO, double=
 check that QXL driver is installed -which normally always is-, and install=
 spice-vdagent package (version 20 here). I&#39;m using remote-viewer (virt=
-viewer) to visualize the VM.<br></div><div><br></div><div>Up to this point=
, clipboard sharing with host still doesn&#39;t work, and trying to drag a =
file from host to guest results in an error &quot;The agent is not connecte=
d&quot;.</div><div><br></div><div>So I manually run &quot;spice-vdagent&quo=
t; command, and clipboard sharing now works, but trying to drag file from h=
ost to guest gives &quot;File transfer is disabled&quot;. Also, automatic r=
esolution change with window resizing doesn&#39;t work either.</div><div><b=
r></div><div>Certainly, this live distro doesn&#39;t come with any spice-re=
lated packages installed by default, except for the QXL package.</div><div>=
<br></div><div>Am I missing something here? Could someone help please?</div=
><div>Thanks beforehand.<br></div></div>

--0000000000006f9d0905eaec9294--
