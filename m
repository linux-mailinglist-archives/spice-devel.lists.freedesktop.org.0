Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D63A1566F59
	for <lists+spice-devel@lfdr.de>; Tue,  5 Jul 2022 15:37:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D3E5113660;
	Tue,  5 Jul 2022 13:37:27 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 911 seconds by postgrey-1.36 at gabe;
 Tue, 05 Jul 2022 09:22:28 UTC
Received: from m12-11.163.com (m12-11.163.com [220.181.12.11])
 by gabe.freedesktop.org (Postfix) with ESMTP id 92F8D10E021
 for <spice-devel@lists.freedesktop.org>; Tue,  5 Jul 2022 09:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
 s=s110527; h=Date:From:Subject:Mime-Version:Message-ID; bh=iMq8+
 /xEdmto7B5B4emX8tSghc4H2H/QUigffxc9KgY=; b=GeGu3VqFYIcsJYCZlB37p
 yJt/5dsKrbpHcTtnI7hHOxe5oLywa1F0A9ZH13kLQ6FFYtsNpLQ+pi9uE9g12Xvk
 0JN8ccew+D3llrFWWbtY5ph8/6rFYvajyQR6xwZjm4rFH8k5mp3EOnC2I4AhzyBf
 DKb/YnpESnJ2cXQu3CzF/s=
Received: from DESKTOP-06J5ATN (unknown [112.102.198.249])
 by smtp7 (Coremail) with SMTP id C8CowAAH_C82_8Ni87kcLw--.61508S2;
 Tue, 05 Jul 2022 17:07:03 +0800 (CST)
Date: Tue, 5 Jul 2022 17:07:03 +0800
From: "yuyang247@163.com" <yuyang247@163.com>
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
X-Priority: 3
X-GUID: 9600B933-483F-4C49-8DAF-3C368C2EBC82
X-Has-Attach: no
X-Mailer: Foxmail 7.2.23.114[cn]
Mime-Version: 1.0
Message-ID: <2022070517070230029125@163.com>
Content-Type: multipart/alternative;
 boundary="----=_001_NextPart846871834780_=----"
X-CM-TRANSID: C8CowAAH_C82_8Ni87kcLw--.61508S2
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
 VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUbZXrUUUUU
X-Originating-IP: [112.102.198.249]
X-CM-SenderInfo: p1x1t0jjsulqqrwthudrp/1tbiORc1zVXl1jwLegAAs9
X-Mailman-Approved-At: Tue, 05 Jul 2022 13:37:26 +0000
Subject: [Spice-devel] Issue: About how to config the resolution of monitor
 in spice-server
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

------=_001_NextPart846871834780_=----
Content-Type: text/plain;
	charset="GB2312"
Content-Transfer-Encoding: base64

DQpISSwNCg0KSSBhbSBhIHVzZXIgb2Ygc3BpY2UsICBJIGhhdmUgYSBpc3N1ZSAgdG8gcmVxdWVz
dCB5b3VyIGhlbHAuDQp0aGF0LCAgd2hlbiBkZWJ1Z2luZyBzcGljZS1zZXJ2ZXIsIEkgd2FudCB0
byBkeW5hbWljIGNvbmZpZyB0aGUgcmVzb2x1dGlvbiBvZiBtb25pdG9yoaMNCkkgZGVidWcgaXQg
aW4gIGZ1Y3Rpb24gIHJlZHNfb25fbWFpbl9hZ2VudF9tb25pdG9yc19jb25maWcgIG9mIHJlZC5j
LCAgIGFuZCAgIG9wZXJhdGVkICBzb21lICBzZW50ZW5jZSBhcyAgbW9uaXRvcnNfY29uZmlnLT5t
b25pdG9yc1swXS5oZWlnaHQgPSA2MDA7DQpidXQgdGhpcyBjb25maWd1cmF0aW9uICB3YXMgIGNo
YW5nZWQgIGF0IHRoZSBuZXh0IHRpbWUuIA0KIA0Kc28gLHdoaWNoIGZ1bmN0aW9uICBpbiAgc3Bp
Y2Utc2VydmVyICBjb3VsZCBoZWxwIHRvICBzb2x2ZSB0aGlzIHByb2JsZW0gLCBvciBob3cgIG9w
ZXJhdGluZyB0aGUgZnVjdGlvbiBpbiBzcGljZS1zZXJ2ZXIgLCBJIGNsb3VkICBhZGp1c3QgdGhl
ICByZXNvbHV0aW9uIG9mIG1vbml0b3IgYXQgd2lsbC4NCg0KdGhhbmsgeW91LCB2ZXJ5IG11Y2gh
IA0KDQoNCg0KDQp5dXlhbmcyNDdAMTYzLmNvbQ0K

------=_001_NextPart846871834780_=----
Content-Type: text/html;
	charset="GB2312"
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charse=
t=3DGB2312"><style>body { line-height: 1.5; }body { font-size: 14px; font-=
family: "Microsoft YaHei UI"; color: rgb(0, 0, 0); line-height: 1.5; }</st=
yle></head><body>=0A<div><span></span><br></div>=0A<div>HI,</div><div><br>=
</div><div>I am a user of spice,&nbsp;&nbsp;<span style=3D"background-colo=
r: transparent;">I have a issue&nbsp; to request your help.</span></div><d=
iv><span style=3D"background-color: transparent;">that,&nbsp; when debugin=
g spice-server, I want to dynamic config the resolution of monitor=A1=A3</=
span></div><div>I debug it in&nbsp; fuction<span style=3D"font-size: 15px;=
">&nbsp;</span><span style=3D"background-color: rgb(255, 255, 255);"><span=
 style=3D"font-size: 15px;"><b>&nbsp;</b><span style=3D"font-family: Conso=
las, &quot;Courier New&quot;, monospace; white-space: pre;"><b>reds_on_mai=
n_agent_monitors_config</b></span></span>&nbsp; of red.c,&nbsp; &nbsp;and&=
nbsp; &nbsp;operated&nbsp; some&nbsp; sentence as&nbsp;<span style=3D"font=
-size: 15px;">&nbsp;</span><b><span style=3D"font-size: 15px;"><span style=
=3D"font-family: Consolas, &quot;Courier New&quot;, monospace; white-space=
: pre;">monitors_config-&gt;monitors[</span><span style=3D"font-family: Co=
nsolas, &quot;Courier New&quot;, monospace; white-space: pre;">0</span></s=
pan><span style=3D"font-family: Consolas, &quot;Courier New&quot;, monospa=
ce; white-space: pre;"><span style=3D"font-size: 15px;">].height =3D 600</=
span>;</span></b></span></div><div><span style=3D"background-color: rgb(25=
5, 255, 255);"><span style=3D"font-family: Consolas, &quot;Courier New&quo=
t;, monospace; white-space: pre;">but this </span></span><span style=3D"ba=
ckground-color: transparent;"><font face=3D"Consolas, Courier New, monospa=
ce"><span style=3D"white-space: pre;">configuration</span></font>&nbsp; wa=
s&nbsp; changed&nbsp; at the next time.&nbsp;</span></div><div><span style=
=3D"background-color: transparent;">&nbsp;</span></div><div><span style=3D=
"background-color: transparent;">so ,which function&nbsp; in&nbsp; spice-s=
erver&nbsp; could help to&nbsp;&nbsp;</span><span style=3D"background-colo=
r: transparent;">solve this problem , or how&nbsp; operating the fuction i=
n spice-server , I cloud&nbsp; adjust the&nbsp;&nbsp;</span><span style=3D=
"background-color: transparent;">resolution of monitor at will.</span></di=
v><div><span style=3D"background-color: transparent;"><br></span></div><di=
v><span style=3D"background-color: transparent;">thank you, very much!&nbs=
p;</span></div><div><br></div><div><br></div><hr style=3D"WIDTH: 210px; HE=
IGHT: 1px" color=3D"#b5c4df" size=3D"1" align=3D"left">=0A<div><span><div =
style=3D"MARGIN: 10px; FONT-FAMILY: verdana; FONT-SIZE: 10pt"><div>yuyang2=
47@163.com</div></div></span></div>=0A</body></html>
------=_001_NextPart846871834780_=------

