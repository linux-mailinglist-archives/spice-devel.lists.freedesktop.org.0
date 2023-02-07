Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A4568D274
	for <lists+spice-devel@lfdr.de>; Tue,  7 Feb 2023 10:17:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 608C010E302;
	Tue,  7 Feb 2023 09:17:49 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 408 seconds by postgrey-1.36 at gabe;
 Tue, 07 Feb 2023 09:17:47 UTC
Received: from zuler.io (unknown [113.31.158.66])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7CF9110E491
 for <spice-devel@lists.freedesktop.org>; Tue,  7 Feb 2023 09:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zuler.io;
 s=dkim; h=Received:Date:From:To:Subject:Mime-Version:Message-ID:
 Content-Type; bh=V7azkiiZ2YGq5hk81JOBkOvAHV1hscLymnHK8qE9RW8=;
 b=VyorX4Ml1iTIeKM9s05uBWmi71LYh4o+XcUDVaaOoVkSvCbPJFd4i9XIybM8rN
 dYZliKa2aHwf/BXZoDCi5ebvrYdUg5bydJy3AMmL4G9DdLdhp9vuYUltVSW5NRFd
 bkf6RWjG17N29Mq3wD4RKRT+Gr9Cv2dchLm7R0WoVjoAM=
Received: from DESKTOP-390DOL3 (unknown [113.66.216.178])
 by Coremail01 (Coremail) with SMTP id AgAKCgDHBfKcFeJjnX+fAA--.30702S2;
 Tue, 07 Feb 2023 17:10:52 +0800 (CST)
Date: Tue, 7 Feb 2023 17:10:53 +0800
From: =?GB2312?B?zfXV/brG?= <wangzhenghao@zuler.io>
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
X-Priority: 3
X-GUID: E15402EF-6FED-4B2E-91ED-B57830BD99DC
X-Has-Attach: no
X-Mailer: Foxmail 7.2.23.116[cn]
Mime-Version: 1.0
Message-ID: <2023020717105307784714@zuler.io>
Content-Type: multipart/alternative;
 boundary="----=_001_NextPart680014077088_=----"
X-CM-TRANSID: AgAKCgDHBfKcFeJjnX+fAA--.30702S2
X-Coremail-Antispam: 1UD129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
 VFW2AGmfu7bjvjm3AaLaJ3UjIYCTnIWjp_UUUYK7k0a2IF6w1UM7kC6x804xWl1xkIjI8I
 6I8E6xAIw20EY4v20xvaj40_Wr0E3s1l1IIY67AEw4v_Jr0_Jr4l8cAvFVAK0II2c7xJM2
 8CjxkF64kEwVA0rcxSw2x7M28EF7xvwVC0I7IYx2IY67AKxVWUJVWUCwA2z4x0Y4vE2Ix0
 cI8IcVCY1x0267AKxVWUJVW8JwA2z4x0Y4vEx4A2jsIE14v26F4j6r4UJwA2z4x0Y4vEx4
 A2jsIEc7CjxVAFwI0_Gr1j6F4UJwAS0I0E0xvYzxvE52x082IY62kv0487McIj6xIIjxv2
 0xvE14v26r106r15McIj6I8E87Iv67AKxVW8JVWxJwAm72CE4IkC6x0Yz7v_Jr0_Gr1lF7
 xvr2IYc2Ij64vIr41lFcxC0VAYjxAxZF0Ew4CEw7xC0wACY4xI67k04243AVC20s07MxkI
 ecxEwVAFwVW8uwCF04k20xvY0x0EwIxGrwCF04k20xvE74AGY7Cv6cx26r48MxC20s026x
 CaFVCjc4AY6r1j6r4UMI8I3I0E5I8CrVAFwI0_JrI_JrWlx2IqxVCjr7xvwVAFwI0_JrI_
 JrWlx4CEj282c2IF4VAI2VCY07xJMI8E67AF67kF1VAFwI0_Jr0_JrylIxkGc2Ij64vIr4
 1lIxAIcVC0I7IYx2IY67AKxVWUJVWUCwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Jr0_Gr1l
 IxAIcVCF04k26cxKx2IYs7xG6r1j6r1xMIIF0xvEx4A2jsIE14v26r1j6r4UMIIF0xvEx4
 A2jsIEc7CjxVAFwI0_Jr0_Gr1l6VACY4xI67k04243AbIYCTnIWIevJa73UjIFyTuYvjxU
 xDUUUUUUU
X-CM-SenderInfo: pzdqw6pkhqwxtdr663xohuhxbr/1tbiAQEPCWPh9CsAVAAAsP
Subject: [Spice-devel] How to compile spice-vd_agent?
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

This is a multi-part message in MIME format.

------=_001_NextPart680014077088_=----
Content-Type: text/plain;
	charset="GB2312"
Content-Transfer-Encoding: base64

SGkgVGVhbSwNCiAgICBJJ2QgbGlrZSB0byBidWlsZCBteSBvd24gc3BpY2UtdmRfYWdlbnQoZm9y
IHdpbmRvd3MgMTApLiBJcyB0aGVyZSBhbnkgZ3VpZGUgdG8gYnVpbGQgaXQ/ICBJIGZhaWxlZCB0
byBidWlsZCBpdCB3aXRoIG1pbmd3NjQgb24gdWJ1bnR1IDIwLjA0IGFuZCB2czIwMTkgb24gd2lu
MTAuIA0KICAgIE9uIHdpbmRvd3MgaXQgYmxvY2tlZCBieSAiIExOSzExODE6IGNhbm5vdCBvcGVu
IGlucHV0IGZpbGUgemxpYndhcGkubGliIiwgYW5kICBvbiB1YnVudHUgaXQgc2hvd3MgImNvbmZp
Z3VyZTogZXJyb3I6IFBhY2thZ2UgcmVxdWlyZW1lbnRzIChsaWJwbmcpIHdlcmUgbm90IG1ldDoi
DQogICAgSWYgSSBzaG91bGRuJ3QgYXNrIHRoaXMgcXVlc3Rpb24gaGVyZSwgUGx6IHRlbGwgbWUg
dGhlIGNvcnJlY3QgbWFpbCBsaXN0Lg0KICAgIFRoeCBhIGxvdC4gDQoNCg0KDQp3YW5nemhlbmdo
YW9AenVsZXIuaW8NCg==

------=_001_NextPart680014077088_=----
Content-Type: text/html;
	charset="GB2312"
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charse=
t=3DGB2312"><style>body { line-height: 1.5; }body { font-size: 14px; font-=
family: "Microsoft YaHei UI"; color: rgb(0, 0, 0); line-height: 1.5; }</st=
yle></head><body>=0A<div><span></span>Hi Team,</div><div>&nbsp; &nbsp; I'd=
 like to build my own spice-vd_agent(for windows 10). Is there any guide t=
o build it?&nbsp; I failed to build it with&nbsp;mingw64 on ubuntu 20.04 a=
nd vs2019 on win10.&nbsp;</div><div>&nbsp; &nbsp; On windows it blocked by=
&nbsp;" LNK1181: cannot open input file zlibwapi.lib", and&nbsp; on ubuntu=
 it shows "configure: error: Package requirements (libpng) were not met:"<=
/div><div>&nbsp; &nbsp; If I shouldn't ask this question here, Plz tell me=
 the&nbsp;<span style=3D"color: rgb(77, 81, 86); font-family: arial, sans-=
serif;">correct&nbsp;</span>mail list.</div><div>&nbsp; &nbsp; Thx a lot.&=
nbsp;</div>=0A<div><br></div><hr style=3D"width: 210px; height: 1px;" colo=
r=3D"#b5c4df" size=3D"1" align=3D"left">=0A<div><span><div style=3D"MARGIN=
: 10px; FONT-FAMILY: verdana; FONT-SIZE: 10pt"><div>wangzhenghao@zuler.io<=
/div></div></span></div>=0A</body></html>
------=_001_NextPart680014077088_=------

