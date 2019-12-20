Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54BFF1275DA
	for <lists+spice-devel@lfdr.de>; Fri, 20 Dec 2019 07:47:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D60646EBD6;
	Fri, 20 Dec 2019 06:47:26 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-oln040092005053.outbound.protection.outlook.com [40.92.5.53])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 553006EBD6
 for <spice-devel@lists.freedesktop.org>; Fri, 20 Dec 2019 06:47:25 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FqSe3VTMkJXHtku0Q93KHg6KRNlQ7dg3jX3LAlS2IkIxD4i/U2WTktZCTbVPp21fyoqJJTC6V3ofTmC8D6mjmyYveTPh5bEO9dkBsR+1lvJ/LcDK5lswlyQLaZP6ZgxnBpN4Hzs4WBSfHr2lJfDOyCrzA+ZkGS8Sefw+lfM/1fij/lWSDDX0+Ve85rZ/SAnfRSrAsIeYTt8AcOvywZg4zPLxMrXzLXXjFyFWS14r2kitQADPYK0Rzp3zWKfVf/aG8xmNx4ZLJQ7cDX0FiiOUfF2jd+miP6oSjCB0XISz7I7lJ4nAc6PCmLs/IJGc518wNhswUof4qBqaBw5qox8T+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4pdkbOEwdjoX6iujrnP5mj/zyrx17gxO19O/pnnjrXs=;
 b=GByJhjNSV3CdavuIU4LAb+fozwuLYNsfvxOwqVz06co4kHda7LQNFW9xHMUfOPyZ5uB8Wxhpg6DPx60WzfMrGEPeVUGLhtqAheD4nvmwn9RSIX5aZ4qCs1fTiTuwg+on9ukrajzi+t8bGplBCn2iyJjRafmwF2xuaDVsNzpXQvOp3VA3zech04HIGqcP8gwCJ3seIkYIPL4ulE1OjGNY0w89x8T54rqea0Efgj8B1H5yWiel27lYJ+L7GOV6KYo+heLc5V3xQDBk9EjsIiNg16Z2Uh0q0Sl/zi7/Y4zkjaIU5RfFl+G3x0+Fv4XaLxrMk/cVv6Gy7gwWtb05fsbFhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4pdkbOEwdjoX6iujrnP5mj/zyrx17gxO19O/pnnjrXs=;
 b=QpuFU1SAlP8RjFg4d4UXPClo4Mh73O2tuHwRCO3UTl3DiYwWsfQM2zioPAj4ZFZW36qKvMDMSOoYfGDJuhJGmsy3JOYYr+opbXYivHzEdl7v4H9io755FEhhS9CMGUl3p7BhPkZwaiWcsc3FDA5bk2/R8EX9fwuwL+ycq84eIbE9SKyfiMAH9KKsiSH2D0+BP96PBKWHT8G0vVXj4Cxli9diPzDupua1HUe8S0PANi8gkIG4EWvg9//IrMkXCdRcTi5/nCUO6W6kUj86XRoOt8U88vza7JjWLL46oDR3V9Ev9zfDAzpD+DYdKKBLbdojMoWiJlb5DL42gwPK7mdZ2g==
Received: from SN1NAM02FT009.eop-nam02.prod.protection.outlook.com
 (10.152.72.53) by SN1NAM02HT177.eop-nam02.prod.protection.outlook.com
 (10.152.73.233) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2559.14; Fri, 20 Dec
 2019 06:47:23 +0000
Received: from MN2PR06MB5966.namprd06.prod.outlook.com (10.152.72.54) by
 SN1NAM02FT009.mail.protection.outlook.com (10.152.73.32) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.14 via Frontend Transport; Fri, 20 Dec 2019 06:47:23 +0000
Received: from MN2PR06MB5966.namprd06.prod.outlook.com
 ([fe80::8061:7adf:1611:69f]) by MN2PR06MB5966.namprd06.prod.outlook.com
 ([fe80::8061:7adf:1611:69f%7]) with mapi id 15.20.2559.012; Fri, 20 Dec 2019
 06:47:23 +0000
From: franklin zhou <codeit@live.com>
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Thread-Topic: spice-vdagent does not work on ubuntu18.04
Thread-Index: AQHVtwCgW+vRHrd6ska7S1tfDsBpew==
Date: Fri, 20 Dec 2019 06:47:22 +0000
Message-ID: <MN2PR06MB5966D55A1D656DE364345514B32D0@MN2PR06MB5966.namprd06.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:B7B1537CC0C3630D34D65871AF24B510D84B2BD7252667EC2D8F7E441BB5031B;
 UpperCasedChecksum:171EBEDF0F6F023293885F9B8BB374FA6EFC6384F54C519A3B6FE03CA5E6D109;
 SizeAsReceived:6706; Count:42
x-tmn: [9yKsb2rQNM+Ow7wrMDF9nUUiP1RCXMeA]
x-ms-publictraffictype: Email
x-incomingheadercount: 42
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 01a65502-d93b-48df-d8f3-08d7851877ef
x-ms-traffictypediagnostic: SN1NAM02HT177:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: w2EakGqlRhA+HezttbgDpbWEFrqZWL+JJjGzQ33GAPmNNWFKkcTnhljGB4gaFbW74/eMe9TpUnwuFU8Cvk0Xb2aZ1MbibWr3CB5rWdvNOXn+SnTUIdgDjC71/Abyh3WPydhUezN03RkAOF4iDoM45gI+UwlSUv5FQwVtBiUlRslUKMY70RGQ/Tum5fguxAtbIwOBjyN5OeiY+mghJh+cCBYl/kucOkJUVnXwsfbYU2A=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 01a65502-d93b-48df-d8f3-08d7851877ef
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2019 06:47:22.6945 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1NAM02HT177
Subject: [Spice-devel] spice-vdagent does not work on ubuntu18.04
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
Content-Type: multipart/mixed; boundary="===============1579059678=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1579059678==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR06MB5966D55A1D656DE364345514B32D0MN2PR06MB5966namp_"

--_000_MN2PR06MB5966D55A1D656DE364345514B32D0MN2PR06MB5966namp_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

aGksIGFsbCwNCg0KSSBpbnN0YWxsIHVidW50dSAxOC4wNCBhbWQ2NCAgd2l0aCB2aXJ0LW1hbmFn
ZXIsDQoNCnRoZSB2ZGFnZW50IGRlZmF1bHQgaW5zdGFsbGVkIGlzIG9rLiB0aGUgY29weSAmcGFz
dGUgYW5kIHdpbmRvd3MgcmVzaXplIGlzIG9roaMNCg0KYnV0IHdoZW4gSSBidWlsZCB0aGUgdmRh
Z2VudCB3aXRoIHRoZSBzb3VyY2UgY29kZSwgaXQgZG9lcyBub3Qgd29yay4NCmFuZCAgbG9nIGhh
cyB0aGlzIGVycm9yOiAiR2V0U2VhdHMgZmFpbGVkOiBUaGUgbmFtZSBvcmcuZnJlZWRlc2t0b3Au
Q29uc29sZUtpdCB3YXMgbm90IHByb3ZpZGVkIGJ5IGFueSAuc2VydmljZSBmaWxlcyINCg0Kd2Fz
IEkgbWlzc2luZyBzb21ldGhpbmcgPw0KDQoNCmFsbCBteSBidWlsZCBjb21tYW5kIGhlcmU6DQov
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioNCnN1ZG8gYXB0LWdl
dCBpbnN0YWxsIGF1dG9jb25mIGxpYnRvb2wgbGlicGl4bWFuLTEtZGV2IGxpYmpwZWctZGV2IGxp
Ym9wdXMtZGV2IHB5dGhvbi1weXBhcnNpbmcgcHl0aG9uLXNpeA0Kc3VkbyBhcHQtZ2V0IGluc3Rh
bGwgYnVpbGQtZXNzZW50aWFsDQpzdWRvIGFwdC1nZXQgaW5zdGFsbCBwa2ctY29uZmlnDQoNCnN1
ZG8gYXB0LWdldCBpbnN0YWxsIGxpYnBlcmwtZGV2DQpzdWRvIGFwdC1nZXQgaW5zdGFsbCBsaWJn
dGsyLjAtZGV2DQpzdWRvIGFwdCBpbnN0YWxsIGxpYmFzb3VuZDItZGV2DQpzdWRvIGFwdC1nZXQg
aW5zdGFsbCBsaWJkYnVzLTEtZGV2DQpzdWRvIGFwdC1nZXQgaW5zdGFsbCBsaWJkcm0tZGV2DQpz
dWRvIGFwdC1nZXQgaW5zdGFsbCBsaWJwY2lhY2Nlc3MtZGV2DQoNCg0KZ2l0IGNsb25lIGh0dHBz
Oi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9zcGljZS9zcGljZS1wcm90b2NvbC5naXQNCmdpdCBj
aGVja291dCB2MC4xNC4wDQouL2F1dG9nZW4uc2ggLS1wcmVmaXg9L3Vzcg0Kc3VkbyBtYWtlIGlu
c3RhbGwNCg0KZ2l0IGNsb25lIGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9zcGljZS9s
aW51eC92ZF9hZ2VudC5naXQNCmdpdCBjaGVja291dCBzcGljZS12ZGFnZW50LTAuMTcuMA0KDQou
L2F1dG9nZW4uc2ggLS1wcmVmaXg9L3Vzcg0Kc3VkbyBtYWtlIGluc3RhbGwNCioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKi8NCg0K

--_000_MN2PR06MB5966D55A1D656DE364345514B32D0MN2PR06MB5966namp_
Content-Type: text/html; charset="gb2312"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dgb2312">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
hi, all,</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I install ubuntu 18.04 amd64&nbsp; with virt-manager,</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
the vdagent default installed is ok. the copy &amp;paste and windows resize=
 is ok=A1=A3</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
but when I build the vdagent with the source code, it does not work.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
and&nbsp; log&nbsp;<span style=3D"color: rgb(0, 0, 0); font-family: Calibri=
, Helvetica, sans-serif; font-size: 12pt;">has this error: &quot;GetSeats f=
ailed: The name org.freedesktop.ConsoleKit was not provided by any .service=
 files&quot;</span></div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
was I missing something ?</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
all my build command here:<br>
/********************************************<br>
<span>sudo apt-get install autoconf libtool libpixman-1-dev libjpeg-dev lib=
opus-dev python-pyparsing python-six
<br>
</span>
<div>sudo apt-get install build-essential<br>
</div>
<div>sudo apt-get install pkg-config<br>
</div>
<div><br>
</div>
<div>sudo apt-get install libperl-dev<br>
</div>
<div>sudo apt-get install libgtk2.0-dev<br>
</div>
<div>sudo apt install libasound2-dev<br>
</div>
<div>sudo apt-get install libdbus-1-dev<br>
</div>
<div>sudo apt-get install libdrm-dev<br>
</div>
<div>sudo apt-get install libpciaccess-dev<br>
</div>
<div><br>
</div>
<div><br>
</div>
<div>git clone https://gitlab.freedesktop.org/spice/spice-protocol.git<br>
</div>
<div>git checkout v0.14.0 <br>
</div>
<div>./autogen.sh --prefix=3D/usr<br>
</div>
<div>sudo make install<br>
</div>
<div><br>
</div>
<div>git clone https://gitlab.freedesktop.org/spice/linux/vd_agent.git<br>
</div>
<div>git checkout spice-vdagent-0.17.0 <br>
</div>
<div><br>
</div>
<div>./autogen.sh --prefix=3D/usr<br>
</div>
<span>sudo make install<br>
</span>******************************************/</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
</body>
</html>

--_000_MN2PR06MB5966D55A1D656DE364345514B32D0MN2PR06MB5966namp_--

--===============1579059678==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1579059678==--
