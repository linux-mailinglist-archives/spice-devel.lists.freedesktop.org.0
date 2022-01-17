Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17508492455
	for <lists+spice-devel@lfdr.de>; Tue, 18 Jan 2022 12:09:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0752A10E21B;
	Tue, 18 Jan 2022 11:09:42 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-qt1-x82e.google.com (mail-qt1-x82e.google.com
 [IPv6:2607:f8b0:4864:20::82e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5DD810F9CA
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Jan 2022 19:11:17 +0000 (UTC)
Received: by mail-qt1-x82e.google.com with SMTP id 14so12685066qty.2
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Jan 2022 11:11:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to;
 bh=n5WK52BSbbTZZeEc1Ey4TrCvQyFPFgrPFxeiOnAQWRI=;
 b=EJYUbojE5KL80Wmad+yC2EzRq4W2O5z2IsaI64QuLc5wNaIlgX+/GvtjxmKQUs1yBX
 uP9b/Vn9DHJpx6VzOWRSouumTNchraF7KxKFIMltQqnBTcm5OkDRx8EuMjObjEgh6VdE
 qnRbhxSTIP0yJENqFERwgp14IMkDW/NjKeXLL5rtOhk4LBlA9hv6h3koyO36ntuAKqvO
 ANWj+ye2C8GpFnjvoAZoWPEoVAH6qD+An2OapHhOMwsYuywMzcn+bb40teQxO3aZogT/
 mZpzAly0d07iMVNwGlZ1OhH6zzHv9+h+/mkN6u6Wuk8bTGfgQjk5LSklq8FGdyhhiNzE
 xeGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=n5WK52BSbbTZZeEc1Ey4TrCvQyFPFgrPFxeiOnAQWRI=;
 b=09yF8g9Bu9gvyDOAKfOvG1awWEXLVHgVT5NL4dl1mPGTl1VUgbZvYGZ67Sndl9IJdj
 DSG8nQyDHJEKv1b3b5zfKSzZKTJNk4BQhkVHEPOiiCdoIc4mf0Rgg/YwKl89mNzBTtiD
 Pq0P5tfBJ3x4nJ2lddVeXNIeIAPeDPOKcIHESb45+I541KSmPnNMMLucRVNTKFNewaST
 JdgZNiI5ukqwQ4e4z8zdNPUb+oc/y1b2xBY9H2TF8HYw+3lTkvuzPfQKdQAD2OjyTbu2
 syPyHIhgObQ7oryazzzmpYX1siBNhbDs0TCOw7rfgwdQEGrmKotKsr/glsgxpH1tczTx
 Hu4w==
X-Gm-Message-State: AOAM531/IZkCuRWBy7el+JS0/aXjNIx/Eyqq9S1eMm5O/YS0HWg2VHVu
 bZkSuTGKuCld9phsiUbWZW73QP8vv10X1JsnQEqwucgMF8E=
X-Google-Smtp-Source: ABdhPJzXPDLhTh5rpzugRnn1oMSjMmmFE4QkBbYF0ngKMa8yq771ZW2+PXuCUlUW0MWHtjwIpohJGYSONJVwRDiF/GY=
X-Received: by 2002:ac8:5f13:: with SMTP id x19mr5154246qta.575.1642446676661; 
 Mon, 17 Jan 2022 11:11:16 -0800 (PST)
MIME-Version: 1.0
From: Ahmad Ismail <ismail783@gmail.com>
Date: Tue, 18 Jan 2022 01:11:04 +0600
Message-ID: <CAHAhJwJGu2W=GJNnm-qTLYnWh1z5vb55XuKMv2O6i47eL9-ovQ@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="000000000000b9997305d5cbea94"
X-Mailman-Approved-At: Tue, 18 Jan 2022 11:09:41 +0000
Subject: [Spice-devel] How to mount webdav inside QEMU
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

--000000000000b9997305d5cbea94
Content-Type: text/plain; charset="UTF-8"

I run the VM using

qemu-system-x86_64 -accel kvm,thread=multi -cpu host -smp 2 -m 4096
-drive file=mint20.3.qcow2,if=virtio \
-machine vmport=off \
-vga qxl -usb -device usb-tablet \
-spice port=5900,addr=127.0.0.1,disable-ticketing \
-device virtio-serial-pci \
-chardev spicevmc,id=spicechannel0,debug=0,name=vdagent \
-device virtserialport,chardev=spicechannel0,name=com.redhat.spice.0 \
-device virtserialport,chardev=charchannel1,id=channel1,name=org.spice-space.webdav.0
\
-chardev spiceport,name=org.spice-space.webdav.0,id=charchannel1

The access the VM using remote-viewer spice://127.0.0.1:5900

Then in the remote viewer I click:

File > Preference > Share folder > Choose a folder from the Host

Then In the host I click: Nemo > Network > Spice client folder

Then the directory is mounted and I can share files between guest and host.

I want to get rid of the clicks.

I think to mount a drive I have to use something like

mount -t davfs https://cs10.cloud.com:2078 /mnt/webdav

But I am not understanding what URL shall i use after mount -t davfs

--000000000000b9997305d5cbea94
Content-Type: text/html; charset="UTF-8"

<div dir="ltr"><div class="gmail-s-prose gmail-js-post-body">
                
<p>I run the VM using</p>
<pre><code>qemu-system-x86_64 -accel kvm,thread=multi -cpu host -smp 2 -m 4096 -drive file=mint20.3.qcow2,if=virtio \
-machine vmport=off \
-vga qxl -usb -device usb-tablet \
-spice port=5900,addr=127.0.0.1,disable-ticketing \
-device virtio-serial-pci \
-chardev spicevmc,id=spicechannel0,debug=0,name=vdagent \
-device virtserialport,chardev=spicechannel0,name=com.redhat.spice.0 \
-device virtserialport,chardev=charchannel1,id=channel1,name=org.spice-space.webdav.0 \
-chardev spiceport,name=org.spice-space.webdav.0,id=charchannel1
</code></pre>
<p>The access the VM using <code>remote-viewer spice://<a href="http://127.0.0.1:5900">127.0.0.1:5900</a></code></p>
<p>Then in the remote viewer I click:</p>
<p>File &gt; Preference &gt; Share folder &gt; Choose a folder from the Host</p>
<p>Then In the host I click:
Nemo &gt;  Network &gt; Spice client folder</p>
<p>Then the directory is mounted and I can share files between guest and host.</p>
<p>I want to get rid of the clicks.</p>
<p>I think to mount a drive I have to use something like</p>
<p>mount -t davfs <a href="https://cs10.cloud.com:2078" rel="nofollow noreferrer">https://cs10.cloud.com:2078</a> /mnt/webdav</p>
<p>But I am not understanding what URL shall i use after <code>mount -t davfs</code></p></div></div>

--000000000000b9997305d5cbea94--
