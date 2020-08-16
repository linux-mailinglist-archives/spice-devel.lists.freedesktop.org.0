Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C434245C4F
	for <lists+spice-devel@lfdr.de>; Mon, 17 Aug 2020 08:15:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CE7D89D8E;
	Mon, 17 Aug 2020 06:15:14 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com
 [IPv6:2a00:1450:4864:20::130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 517A66E161
 for <spice-devel@lists.freedesktop.org>; Sun, 16 Aug 2020 14:48:05 +0000 (UTC)
Received: by mail-lf1-x130.google.com with SMTP id b11so7077239lfe.10
 for <spice-devel@lists.freedesktop.org>; Sun, 16 Aug 2020 07:48:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=WPLZABGn53UsEQuEN9qdoVlVdhM9iszDzg1znstVjv0=;
 b=enUrWFsRGCBJSW6ynWGFbg05uimjpdiW1yE8mofka1Vx430RGJEwIt6+zhAddoKZ7F
 yw7xjcIZ1Vqby6i1HqBvl/Cj/l1s6V1BAV9kITc9/t0aBSgbPiIa2bTGxg7VAGSFlNUV
 HYPZbxHXkoGgkrfLp8gdvbxEoFcb8ocsm+tIgt4h30UfWEGuABNojRJ46uox1zwWkEVs
 GQlAIZK1YJ5C9bgkkTTWjwYysRLWIJ3rgSQ7CcRcebS9tXnmOtrngZTkkeObQpH87jqt
 ZJA+1tNLiyGj6grxl2vKm6IqNato9xqiwpCv/qccqZrKg1+nwszsTxHwS7+mQGgkZcMQ
 RW8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=WPLZABGn53UsEQuEN9qdoVlVdhM9iszDzg1znstVjv0=;
 b=oM2A/fMCo5Egpzyhl+mXYdNxN/XpOs8frXdu4Udeg7w5dzFNQRKnOPU030ZyjtR7yJ
 s/luBolO0FLyaOPzg7yJx1H6Jk+Sah12zx/yW1FFx27J2blPSMkZw4f7tL84stVu+hSZ
 V/ZopQ7W7yjMmaR8tQ0/qK+OXpXIbi6mjlhd6jOejOhJbAd4zn/HQGVCB7KW9LEgfezY
 zud9cbRmYSM6WaIceY1M53wkjA6d6Q4ANyXYSVfU8ghU8njhwLiEusREr4x+9fH0MWST
 RUH9aei9dPjxN6yvUQSSLHQBsmlWWn88d1XqWjGIgmlGWq9LEeDnGrjaEvw7vHenJNrT
 xt1Q==
X-Gm-Message-State: AOAM531c7SIKeaWMw4vwhXRCK6UI6KxBaO8r6G/OmrQ1//fmub0R6u8I
 zMiMfgwcK9VgoAqzLFbMB8ZUfsK86bUk5/qG5fzYDxwA2zwtwQ==
X-Google-Smtp-Source: ABdhPJzSgB0TnujzE1gkIv/l73DAy4o4Ri18RT3UlApFQ/NdmIwddrMinY2Hi8EpDstJo5Invy5kGiYNYLG6tKyYrF8=
X-Received: by 2002:a19:9149:: with SMTP id y9mr5560001lfj.81.1597589283291;
 Sun, 16 Aug 2020 07:48:03 -0700 (PDT)
MIME-Version: 1.0
From: Mario Marietto <marietto2008@gmail.com>
Date: Sun, 16 Aug 2020 16:47:27 +0200
Message-ID: <CA+1FSiicEUDT8jhNCnzPmwo0JwzH27F2uSCinwE36CFtrSg2pg@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
X-Mailman-Approved-At: Mon, 17 Aug 2020 06:15:12 +0000
Subject: [Spice-devel] xen and the support for spice GL
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
Content-Type: multipart/mixed; boundary="===============0580197559=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0580197559==
Content-Type: multipart/alternative; boundary="000000000000ba462305acffbdef"

--000000000000ba462305acffbdef
Content-Type: text/plain; charset="UTF-8"

Hello.

To make a long story short,I tried to pass through my two kinect 2 devices
from ubuntu 20.04 to a two qemu / kvm virtual machines,where on the first
one I have also passed through my RTX 2080 ti and on the second one,I have
passed through also the IGPU (Intel UHD Graphics 630). This is the tutorial
that I have followed :

https://blog.tmm.cx/2020/05/15/passing-an-intel-gpu-to-a-linux-kvm-virtual-machine/

It worked great,except for a "little" problem. When I attach the second
kinect to the vm,as soon as I try to use it,its connection drops. For this
reason,I've got an idea. Maybe what I want to do works better using the
xen-hypervisor. So,I have created a new connection and a new vm with xen
and virt manager and I tried to assign the Intel UHD Graphics 630 GPU to
the vm following the tutorial above.

It's a shame that it didn't work because the error that u see below :
"hypervisor / libvirt does not support spice GL". So my question is if xen
supports the spice GL or not. thanks.
-- 
Mario.

--000000000000ba462305acffbdef
Content-Type: text/html; charset="UTF-8"

<div dir="ltr"><p>Hello.<br></p><p>To make a long story short,I tried to pass through my two kinect 2 
devices from ubuntu 20.04 to a two qemu / kvm virtual machines,where on 
the first one I have also passed through my RTX 2080 ti and on the 
second one,I have passed through also the IGPU (Intel UHD Graphics 630).
 This is the tutorial that I have followed :</p>
<p><a href="https://blog.tmm.cx/2020/05/15/passing-an-intel-gpu-to-a-linux-kvm-virtual-machine/" rel="nofollow noreferrer">https://blog.tmm.cx/2020/05/15/passing-an-intel-gpu-to-a-linux-kvm-virtual-machine/</a></p>
<p>It worked great,except for a &quot;little&quot; problem. When I attach the 
second kinect to the vm,as soon as I try to use it,its connection drops.
 For this reason,I&#39;ve got an idea. Maybe what I want to do works better 
using the xen-hypervisor. So,I have created a new connection and a new 
vm with xen and virt manager and I tried to assign the Intel UHD 
Graphics 630 GPU to the vm following the tutorial above.</p>
<p>It&#39;s a shame that it didn&#39;t work because the error that u see below :
 &quot;hypervisor / libvirt does not support spice GL&quot;. So my question is if 
xen supports the spice GL or not. thanks.</p>-- <br><div dir="ltr" class="gmail_signature" data-smartmail="gmail_signature">Mario.<br></div></div>

--000000000000ba462305acffbdef--

--===============0580197559==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0580197559==--
