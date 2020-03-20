Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD1118C994
	for <lists+spice-devel@lfdr.de>; Fri, 20 Mar 2020 10:08:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 290F06E053;
	Fri, 20 Mar 2020 09:08:57 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 378 seconds by postgrey-1.36 at gabe;
 Fri, 20 Mar 2020 09:07:03 UTC
Received: from zg8tmtyylji0my4xnjqunzqa.icoremail.net
 (zg8tmtyylji0my4xnjqunzqa.icoremail.net [162.243.164.74])
 by gabe.freedesktop.org (Postfix) with SMTP id 9C47D6E053
 for <spice-devel@lists.freedesktop.org>; Fri, 20 Mar 2020 09:07:03 +0000 (UTC)
Received: from DESKTOP-40HKDGN (unknown [112.96.192.25])
 by sr0414.icoremail.net (Coremail) with SMTP id
 AQAAfwB3f3MDhXReju_5AA--.22444S2; 
 Fri, 20 Mar 2020 16:55:32 +0800 (CST)
Date: Fri, 20 Mar 2020 17:00:39 +0800
From: "yanzeng.wang@std.uestc.edu.cn" <yanzeng.wang@std.uestc.edu.cn>
To: spice-devel <spice-devel@lists.freedesktop.org>
X-Priority: 3
X-GUID: 1C8F02AA-EFD6-403C-8FA1-9D47F8CBA6C1
X-Has-Attach: no
X-Mailer: Foxmail 7.2.9.156[cn]
Mime-Version: 1.0
Message-ID: <202003201700374079587@std.uestc.edu.cn>
X-CM-TRANSID: AQAAfwB3f3MDhXReju_5AA--.22444S2
X-Coremail-Antispam: 1UD129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
 VFW2AGmfu7bjvjm3AaLaJ3UjIYCTnIWjp_UUUO-7k0a2IF6F4UM7kC6x804xWl14x267AK
 xVWUJVW8JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0rVWrJVCq3wAFIxvE14AKwVWUJVWUGw
 A2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK021l84ACjcxK6xIIjxv20xvE14v26r1I
 6r4UM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r1j6r4UM28EF7xvwVC2z280aVAFwI0_Gr
 1j6F4UJwA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_Gr1j6F4UJwAS0I0E0xvYzxvE52x082IY
 62kv0487Mc02F40En4AKxVAvwIkv4cxYr24l5I8CrVC2j2CEjI02ccxYII8I67AEr4CY67
 k08wAv7VC0I7IYx2IY67AKxVWUJVWUGwAv7VC2z280aVAFwI0_Jr0_Gr1lOx8S6xCaFVCj
 c4AY6r1j6r4UM4x0Y48IcxkI7VAKI48JM4xvF2IEb7IF0Fy264kE64k0F24lFcxC0VAYjx
 AxZF0Ex2IqxwCjr7xvwVCIw2I0I7xG6c02F41l42xK82IYc2Ij64vIr41l4I8I3I0E4IkC
 6x0Yz7v_Jr0_Gr1lx2IqxVAqx4xG67AKxVWUGVWUWwC20s026x8GjcxK67AKxVWUGVWUWw
 C2zVAF1VAY17CE14v26r1j6r15MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8IcVAFwI0_Jr0_
 JF4lIxAIcVC0I7IYx2IY6xkF7I0E14v26r1j6r4UMIIF0xvE42xK8VAvwI8IcIk0rVWrZr
 1j6s0DMIIF0xvEx4A2jsIE14v26r1j6r4UMIIF0xvEx4A2jsIEc7CjxVAFwI0_Jr0_Gr1l
 6VACY4xI67k04243AbIYCTnIWIevJa73UjIFyTuYvjxUcD7aUUUUU
X-CM-SenderInfo: qsqrmkqsqyiliqy6233goxv2lwfovvfxof0/
X-Mailman-Approved-At: Fri, 20 Mar 2020 09:08:55 +0000
Subject: [Spice-devel] [is there Android's SPICE vdagent?]
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
Content-Type: multipart/mixed; boundary="===============0747787396=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.

--===============0747787396==
Content-Type: multipart/alternative;
	boundary="----=_001_NextPart447070128263_=----"

This is a multi-part message in MIME format.

------=_001_NextPart447070128263_=----
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: base64

DQpEZWFyIHNpcnMsDQogICAgSSB3b3VsZCBsaWtlIHRvIGtub3cgaWYgdGhlcmUgaXMgQW5kcm9p
ZCdzIFNQSUNFIHZkYWdlbnQ/DQpCZWNhdXNlIHdlIGFyZSBkZXZlbG9wcGluZyAgYW5kcm9pZCBW
TXMgYW5kIHRoZSBzcGljZSB2YWRnZW50IG1heSBiZSBuZWVkZWQuDQpJZiBub3QsY2FuIHlvdSBv
ZmZlciBob3cgdG8gYnVpbGQgb25lPw0KICAgIENoZWVycyENCiAgICB5YW56ZW5nLndhbmcNCg0K
DQp5YW56ZW5nLndhbmdAc3RkLnVlc3RjLmVkdS5jbg0K

------=_001_NextPart447070128263_=----
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charse=
t=3Dus-ascii"><style>body { line-height: 1.5; }body { font-size: 10.5pt; f=
ont-family: 'Microsoft YaHei UI'; color: rgb(0, 0, 0); line-height: 1.5; }=
</style></head><body>=0A<div><span></span><br></div>=0A<div>Dear sirs,</di=
v><div><span style=3D"color: rgb(0, 0, 0); background-color: rgba(0, 0, 0,=
 0);">&nbsp; &nbsp; I would like to know if there is&nbsp;</span><span sty=
le=3D"background-color: transparent;">Android's SPICE vdagent?</span></div=
><div>Because we are developping &nbsp;android VMs and the spice vadgent m=
ay be needed.</div><div>If not,can you offer how to build one?</div><div><=
span style=3D"color: rgb(0, 0, 0); font-size: 10.5pt; line-height: 1.5; ba=
ckground-color: rgba(0, 0, 0, 0);">&nbsp; &nbsp;&nbsp;</span>Cheers!</div>=
<div>&nbsp; &nbsp; yanzeng.wang</div><hr style=3D"width: 210px; height: 1p=
x;" color=3D"#b5c4df" size=3D"1" align=3D"left">=0A<div><span><div style=
=3D"MARGIN: 10px; FONT-FAMILY: verdana; FONT-SIZE: 10pt"><div>yanzeng.wang=
@std.uestc.edu.cn</div></div></span></div>=0A</body></html>
------=_001_NextPart447070128263_=------


--===============0747787396==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0747787396==--

