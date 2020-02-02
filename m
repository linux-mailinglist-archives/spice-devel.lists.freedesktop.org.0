Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A07F14FC7C
	for <lists+spice-devel@lfdr.de>; Sun,  2 Feb 2020 10:48:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 374176EA59;
	Sun,  2 Feb 2020 09:48:40 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4266E6EA59
 for <spice-devel@lists.freedesktop.org>; Sun,  2 Feb 2020 09:48:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580636917;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=mjwihljfT+lQHgMlkyAsqBN/tWNw0G7wb22133NqLCs=;
 b=I9Xxx8QrGdwwb+YhXS+mr+CMzp0h0iMRCzHY8EIltbjxuyTpK4NZUKM93xkn3zU5mC5Nm2
 kMXe8IRe5qoYq//Q/lgXGr0P4Sud6BW7E6N3GRHRLxt/C72nZAKSN8KaixEb1OWgs31hbz
 eblULaSGIM1GvEduw0lzb4oEvH/OXvo=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-108-l91oRP7IPVSVaF6OUR3rJw-1; Sun, 02 Feb 2020 04:48:33 -0500
Received: by mail-wr1-f69.google.com with SMTP id j4so6353007wrs.13
 for <spice-devel@lists.freedesktop.org>; Sun, 02 Feb 2020 01:48:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=ymG+qP3vzTFMHOH3G1DsEFMkCI3tSloiD1rGOGL4j8E=;
 b=kF7r2s//FWhsQ7EOGv2OeMbcXkeSkl/xTYlXYxyAdncIOzyBMbivhI0F32bSf5h61o
 IU/NIcUPHEOgbaHyF7bB7GE9E5wRa5UF+GcoI6y7fptyhA9xHCI+AGrxk2ssvuClJyiE
 hKB8N2fcTzg92XR+0mKcVJ9YGDRlSJKli+yuofqZS+Tu000wqsgauxaG7KbgDcjq5zxX
 SsG31EZ9kV37obfRmZpiOLTh6N1G8KR2PPBsB9JgtT6exSHvMpAS115YePcpaSPhoV6O
 m1/PBWHjm2y7VCiEr7GX8rGw9H3f5gSagp7iip2yGsCiclweGKpaa4LXdQ7Vegu47EJg
 vokg==
X-Gm-Message-State: APjAAAVsqnwSI0nWoo0LZKmpAI2LZm3sgxmx4dhT9sjRRjnLmsgpoAJP
 jJfdHvk3FcqpH0sLGmzDSN6XM3gS//tfAzyqDPs/2EVQzrqyF+H4t3/U6Tx3eHSbijHa0umxmGI
 0w3htfOEcMwHxauRrD5pe1ojoONaU5xY=
X-Received: by 2002:a1c:151:: with SMTP id 78mr21957122wmb.182.1580636911697; 
 Sun, 02 Feb 2020 01:48:31 -0800 (PST)
X-Google-Smtp-Source: APXvYqxxIzvwf9Ow7wkG7vKJOhA1j/oWaanoD0U0SRBfZFtjeDBbhC+xZz3ugvNTchiepSG7RoECWw==
X-Received: by 2002:a1c:151:: with SMTP id 78mr21957089wmb.182.1580636911289; 
 Sun, 02 Feb 2020 01:48:31 -0800 (PST)
Received: from dhcp-4-211.tlv.redhat.com (bzq-82-81-161-50.red.bezeqint.net.
 [82.81.161.50])
 by smtp.gmail.com with ESMTPSA id k13sm19649190wrx.59.2020.02.02.01.48.30
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 02 Feb 2020 01:48:30 -0800 (PST)
To: spice-devel@lists.freedesktop.org
References: <1360771579957091@myt5-094cfe5c1616.qloud-c.yandex.net>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <83a3d13d-2b25-cf60-2404-762cd5f2313c@redhat.com>
Date: Sun, 2 Feb 2020 11:48:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <1360771579957091@myt5-094cfe5c1616.qloud-c.yandex.net>
Content-Language: en-US
X-MC-Unique: l91oRP7IPVSVaF6OUR3rJw-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] How to use spice-streaming-agent properly?
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


On 1/25/20 2:58 PM, ole-krutov@yandex.ru wrote:
> Hello dear devs,
>
> our host has libspice-server1 0.14.2, qemu-kvm 4.1, libvirt 5.0.0 with "r=
amfb" option for mediated devices enabled,  NVIDIA GRID GPU. We'd like to s=
tream GPU-accelerated video from Linux guests. spice-streaming-agent+gst-pl=
ugin is built and sends video encoded to H.264 by NVENC codec from guest. Q=
uality of video is very good, bitrate and presets can be set by cmdline par=
ameters.
> Guest's video config consists of hostdev mediated device which correspond=
s to NVIDIA vGPU and second "none", which is needed because of libvirt 5.0 =
does not allow guests with only mediated device set.
> There are two showstoppers:

Hi,

Nice to hear that you are using it with nvenc and having fairly good =

results. Unfortunately
Libvirt does not have the relevant bits to support spice-streaming-agent =

yet.

But I know you should be able to workaround it by setting also qxl (i =

did not try with ramfb):

<qemu:commandline>
 =A0=A0 <qemu:arg value=3D'-device'/>
 =A0=A0 <qemu:arg value=3D'qxl,max_outputs=3D1'/>
</qemu:commandline>

max_outputs=3D1 is required to avoid some bug which is fixed on upstream =

spice server.

> 1) when enabled, the video stream creates a new window in remote-viewer (=
versions 6.0-8.0) instead of replace old one. Old SPICE traffic is sent alo=
ng with H264 stream, consuming network and client CPU significantly. When t=
his "old main" trafficis is disabled in remote-viewer, video streaming stop=
s too. Remmina (all new builds including 2020.01.08) does not show this win=
dow at all.

I assume this is due to the ramfb. This was not tested yet with the =

spice-streaming-agent setup.

With the above suggested setup (& ramfb disabled) it will also be in =

another window but the first
window should not really be active, you can close it manually.

> 2) No mouse or keyboard control is available in window with video stream,=
 so it can be used just like some "TV set" but all actions should be done i=
n old window. Guest logs say about some mouse activity on unknown display w=
hen mouse buttons are pressed on tthis window.

Should also work with this setup.

Snir.

>
> Can that be fixed? Can spice-streaming-agent replace main display channel?
>
> Thanks in advance!
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel
>

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
