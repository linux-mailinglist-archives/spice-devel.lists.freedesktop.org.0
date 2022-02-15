Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF0714B6E12
	for <lists+spice-devel@lfdr.de>; Tue, 15 Feb 2022 14:51:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4890D10E50A;
	Tue, 15 Feb 2022 13:51:55 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 604 seconds by postgrey-1.36 at gabe;
 Tue, 15 Feb 2022 13:51:53 UTC
Received: from heian.cn.fujitsu.com (mail.cn.fujitsu.com [183.91.158.132])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8A87A10E509
 for <spice-devel@lists.freedesktop.org>; Tue, 15 Feb 2022 13:51:53 +0000 (UTC)
IronPort-Data: =?us-ascii?q?A9a23=3AeXRBIa1G9ax6Xp5h1PbD5fdzkn2cJEfYwER7XOP?=
 =?us-ascii?q?LsXnJ1T1z0TRSnWNLX2yGOv2CMWL2e4xzb4S0pE4OscPXydA2QQE+nZ1PZygU8?=
 =?us-ascii?q?JKaX7x1DatR0xu6d5SFFAQ+hyknQoGowPscEzmM9n9BDpC79SMmjfvQH+KlYAL?=
 =?us-ascii?q?5EnsZqTFMGX5JZS1Ly7ZRbr5A2bBVMivV0T/Ai5S31GyNh1aYBlkpB5er83uDi?=
 =?us-ascii?q?hhdVAQw5TTSbdgT1LPXeuJ84Jg3fcldJFOgKmVY83LTegrN8F251juxExYFAdX?=
 =?us-ascii?q?jnKv5c1ERX/jZOg3mZnh+AvDk20Yd4HdplPtT2Pk0MC+7jx2NnsJxyddMvJqYR?=
 =?us-ascii?q?xorP7HXhaIWVBww/yRWZPcfpeGbfSbk2SCU5wicG5f2+N11FEA9MMgU9/h6BUl?=
 =?us-ascii?q?K9OcEM3YDdB2Oi++tw668Uq9rnMtLESVBFOvzoVk5lXeAU6lgGsuFHs33CRZj9?=
 =?us-ascii?q?G9Yrqhz8Tz2PaL1sQZSUSk=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AbJLXGaMK7Ey9ssBcTv2jsMiBIKoaSvp037BL?=
 =?us-ascii?q?7TEUdfUxSKGlfq+V8sjzqiWftN98YhAdcLO7Scy9qBHnhP1ICOAqVN/MYOCMgh?=
 =?us-ascii?q?rLEGgN1+vf6gylMyj/28oY7q14bpV5YeeaMXFKyer8/ym0euxN/OW6?=
X-IronPort-AV: E=Sophos;i="5.88,333,1635177600"; d="scan'208";a="121564463"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
 by heian.cn.fujitsu.com with ESMTP; 15 Feb 2022 21:41:46 +0800
Received: from G08CNEXMBPEKD04.g08.fujitsu.local (unknown [10.167.33.201])
 by cn.fujitsu.com (Postfix) with ESMTP id 6051D4D15A57
 for <spice-devel@lists.freedesktop.org>; Tue, 15 Feb 2022 21:41:43 +0800 (CST)
Received: from G08CNEXJMPEKD02.g08.fujitsu.local (10.167.33.202) by
 G08CNEXMBPEKD04.g08.fujitsu.local (10.167.33.201) with Microsoft SMTP Server
 (TLS) id 15.0.1497.23; Tue, 15 Feb 2022 21:41:43 +0800
Received: from G08CNEXCHPEKD07.g08.fujitsu.local (10.167.33.80) by
 G08CNEXJMPEKD02.g08.fujitsu.local (10.167.33.202) with Microsoft SMTP Server
 (TLS) id 15.0.1497.23; Tue, 15 Feb 2022 21:41:43 +0800
Received: from [192.168.122.212] (10.167.226.45) by
 G08CNEXCHPEKD07.g08.fujitsu.local (10.167.33.209) with Microsoft SMTP Server
 id 15.0.1497.23 via Frontend Transport; Tue, 15 Feb 2022 21:41:43 +0800
To: <spice-devel@lists.freedesktop.org>
From: "Li, Zhijian" <lizhijian@cn.fujitsu.com>
Message-ID: <676eae2b-bb7c-2e89-6d0d-9a1cbc03ffa8@cn.fujitsu.com>
Date: Tue, 15 Feb 2022 21:41:42 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
Content-Type: text/plain; charset="gbk"; format=flowed
Content-Transfer-Encoding: 7bit
X-yoursite-MailScanner-ID: 6051D4D15A57.AA041
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: lizhijian@fujitsu.com
X-Spam-Status: No
Subject: [Spice-devel] usbredir doesn't hide/filter specific usb devices
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

Hi guys

I intended to not allow redirecting some of my usb devices(HID) to the guest, i thought https://www.spice-space.org/usbredir.html
could help on this.

My host has below usb devices

lizj@FNSTPC:~/workspace/vgt/virt-viewer/src$ lsusb
Bus 002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
Bus 001 Device 006: ID 04d8:0b2a Microchip Technology, Inc.
Bus 001 Device 021: ID 046d:c534 Logitech, Inc. Unifying Receiver
Bus 001 Device 004: ID 0424:2137 Standard Microsystems Corp.
Bus 001 Device 003: ID 0bda:8176 Realtek Semiconductor Corp. RTL8188CUS 
802.11n WLAN Adapter
Bus 001 Device 002: ID 0bda:8771 Realtek Semiconductor Corp.
Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub

$ remote-viewer 
--spice-usbredir-auto-redirect-filter="-1,0x0bda,-1,-1,0" --spice-debug 
spice://localhost:5900

For testing, i just want to hide produce id 0x0bda from remote-viewer 
with above command line. But acutally

i am still able to redirec both Realtek device to the guest through 
remote-viewer.

So is there something with my usage ? Feel free to let me know if there 
is something wrong.

Thanks

Zhijian



