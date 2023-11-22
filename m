Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8657F5213
	for <lists+spice-devel@lfdr.de>; Wed, 22 Nov 2023 22:09:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FB9710E317;
	Wed, 22 Nov 2023 21:09:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 521 seconds by postgrey-1.36 at gabe;
 Wed, 22 Nov 2023 21:09:46 UTC
Received: from mail.pixelplanet.fun (mail.pixelplanet.fun [170.249.205.174])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2493410E317
 for <spice-devel@lists.freedesktop.org>; Wed, 22 Nov 2023 21:09:46 +0000 (UTC)
Received: from fedora.haldos (unknown
 [IPv6:2001:4BB8:173:8401:8A9C:11F1:3E3F:91A5]) by mail.pixelplanet.fun
 (Postfix) with ESMTPSA id AA7EE282499
 for <spice-devel@lists.freedesktop.org>; Wed, 22 Nov 2023 21:01:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=pixelplanet.fun;
 s=default; t=1700686864;
 bh=JERdlVJ+JUFK+t7spNhdZp7S3ioX8DC/W4CcwODo39g=;
 h=From:To:Subject:Date:From;
 b=r4SmUtnyo448ImwV2T9i4/ZvvH2AxQmNGZz11bFMCH3/fU4ytjpQW9dw/+VamNeFx
 xm5jcyJxQWo3W89fkLTsGURYxLJMBMmaz4vp1pEJVAm4TkWw/13MLT3+GzWsKwBnBD
 0zBH4i8QttQORJWQf6awRm7hG3UOnYd8zQwUznrhJvg41rArACT3QZaB9SIKssWuuh
 9/2tSFK7qSze7YivZUkvqUAsyS6SrYnA1daigsoaJe0Ed5aHdxAgAR5D/QDEvGtzql
 unzupMrUDYRpFzQD255iWrj8BBmoIsckTTEdw7ZP+B0Z2Hj29kl6B9/a0qY5fIGnhU
 814uISido35QA==
From: HF <hf@pixelplanet.fun>
To: spice-devel@lists.freedesktop.org
Date: Wed, 22 Nov 2023 22:00:58 +0100
Message-ID: <6013116.lOV4Wx5bFT@fedora.gatas>
Organization: ppfun
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: [Spice-devel] Bug with invisible cursor when using GVTg
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

Hi,
i am running a Windows 11 guest under Fedora with Intel GVT-g provided virtual 
GPU, which worked fine for over a year, but now, approximately since i upgraded 
from Fedora 38 to 39, i can not see the cursor within the guest anymore.
If the cursor changes (like on the border of a window to stretch it), i can 
see it, but under ordinary operation, its invisible.

My output is via SPICE with MESA EGL by setting 

    <graphics type='spice'>
      <listen type='none'/>
      <gl enable='yes'/>
    </graphics>
    <video>
      <model type='none'/>
    </video>

and for the GVTg vGPU:

    <hostdev mode='subsystem' type='mdev' managed='no' model='vfio-pci' 
display='on'>
      <source>
        <address uuid='af5972fb-5530-41a7-0000-fd836204445c'/>
      </source>
      <address type='pci' domain='0x0000' bus='0x00' slot='0x02' 
function='0x0'/>
    </hostdev>
  <qemu:override>
    <qemu:device alias='hostdev0'>
      <qemu:frontend>
        <qemu:property name='driver' type='string' value='vfio-pci-nohotplug'/>
        <qemu:property name='romfile' type='string' value='/var/lib/libvirt/
vbios/vbios_gvt_uefi.rom'/>
        <qemu:property name='ramfb' type='bool' value='true'/>
        <qemu:property name='xres' type='unsigned' value='1920'/>
        <qemu:property name='yres' type='unsigned' value='1080'/>
        <qemu:property name='x-igd-opregion' type='bool' value='true'/>
      </qemu:frontend>
    </qemu:device>
  </qemu:override>


