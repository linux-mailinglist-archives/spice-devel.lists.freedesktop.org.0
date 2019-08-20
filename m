Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A75D995F5B
	for <lists+spice-devel@lfdr.de>; Tue, 20 Aug 2019 15:01:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A31066E3D3;
	Tue, 20 Aug 2019 13:01:45 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from APC01-SG2-obe.outbound.protection.outlook.com
 (mail-oln040092253068.outbound.protection.outlook.com [40.92.253.68])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C24786E297
 for <spice-devel@lists.freedesktop.org>; Tue, 20 Aug 2019 11:52:33 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c/DcsjCgHxkmx1gbT6HVMyLhgSZr6cNuxAg8+SnT+rgQebTR18yftLyqAbaQiCDuaQPmXyuzytMergcZeRcwi5oODf9RjD1aCi5mITXtW1HGnJueHxu/U+N0IsPigRkzsJ6M226yIkCqv5ZgFy+aYwcSRCvHRI8+ZQnseDYl5VW9FCIiLFJbOuOkf6VXwm8jmRBMVQ5GFbBWQEkwlAQY6FqUiwr232sARRQ//AOlkCvzQp3l8nizQdAn0uce/efP+5b0tHyubIYSXubPHJv7/1pSR5GyZtn/+wS7St242isEyBOerHFikHxVMpB1bSSptNIKVGr5ayI2Hsh54w2+fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=naFAqKp3karSa/bJmzQr8EQDeRm+pPe7SKrwhHz3iKc=;
 b=Xu7TcUzsJEbfueva+dy6n0JNSCoDRbzqrK6ODeObEweN8uCKH49dFaE6aXSMd8lWQQSJwg2CH7p0QMqBJtxLzEillGW8lK+JtzSiPsOGgbDzAdKUI9Yr2Dc772PPiGi42ieIg9jDedXOBv8P2MiLntRmuJTeNoOU1BPEA9MwDSHJ73a+tOv3OAkCnPs6jil1+Xv7PmUqh2sucRIt3XQ5ur6h6+5SOOZgv9wSkv+NaXWOE1kf4/JArTqRhMGwRZkNcb523FILKk4HqKom6rbKMj6gRkkCippDOQqT7c5AwFQragVgBS7cJZ2CgvORWsV4xCGMumHEueOzgFR0uyhCSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from HK2APC01FT059.eop-APC01.prod.protection.outlook.com
 (10.152.248.59) by HK2APC01HT032.eop-APC01.prod.protection.outlook.com
 (10.152.249.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2178.16; Tue, 20 Aug
 2019 11:52:30 +0000
Received: from HK0PR06MB2420.apcprd06.prod.outlook.com (10.152.248.59) by
 HK2APC01FT059.mail.protection.outlook.com (10.152.249.214) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2178.16 via Frontend Transport; Tue, 20 Aug 2019 11:52:30 +0000
Received: from HK0PR06MB2420.apcprd06.prod.outlook.com
 ([fe80::b4df:c26e:14a1:6aec]) by HK0PR06MB2420.apcprd06.prod.outlook.com
 ([fe80::b4df:c26e:14a1:6aec%5]) with mapi id 15.20.2178.018; Tue, 20 Aug 2019
 11:52:30 +0000
From: zhou qi <atmgnd@outlook.com>
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>,
 "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Thread-Topic: windows spice-client-glib hotplug not working
Thread-Index: AQHVV0vjpmm4yTsGz0Cgz+UaNQZGmg==
Date: Tue, 20 Aug 2019 11:52:30 +0000
Message-ID: <HK0PR06MB24200E88F424D8EE857F856EC9AB0@HK0PR06MB2420.apcprd06.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:CA7540D4AE9882569C1DA730D330AC2FEC233A0D213ED17717B3611002335AA1;
 UpperCasedChecksum:316BA7619D8D6D0ED3D0C0C0FFD4F9C690A1A9D5FAA3D25B16B8A7FB13184344;
 SizeAsReceived:6801; Count:41
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [59GlRjFrAT8SJR8PJpGilpDkbVuyF584OLJN0EXDl6/53YFLvjoZoudZljW6ApID]
x-ms-publictraffictype: Email
x-incomingheadercount: 41
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031322404)(2017031323274)(2017031324274)(1601125500)(1603101475)(1701031045);
 SRVR:HK2APC01HT032; 
x-ms-traffictypediagnostic: HK2APC01HT032:
x-microsoft-antispam-message-info: +i0DxoX1Wf/bP0BCYpG7qzAO4sQsr/TWebRGYmVuUaJCuSecy7hdvODEl8y75VzM+Yoa0/yWxc1WbmoWhmvVunhkTP4upuxNTg0VBAW2pJUSMZdr7J2x7MDKWMAZ9ywKpp5xaKOmBvapcYu/hdZwqAmTX7JvAXss5cgWpPumQEJ5qzQWsQhaSIU4+8gJ4on6
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: f4499f06-30a8-43fc-a1a6-08d72564e199
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2019 11:52:30.6784 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2APC01HT032
X-Mailman-Approved-At: Tue, 20 Aug 2019 13:01:44 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=outlook.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=naFAqKp3karSa/bJmzQr8EQDeRm+pPe7SKrwhHz3iKc=;
 b=DEhX5LuLCIoeZ+n1MhxfHwy9F2P72+IBcANQVXAcafmiedvDw9+Bszt2oDKB6jzDNvu9UcTyfvCfUicW7S9nttl7xixY1ZU2Odo5+cwTsRJVPzxiuYz/U/n8DXulnZfUiF/Xj3W2w3O2qspmeYIArBadMMU4vzRZzH7v8ltb010Rhy695xsNAPGVO4Y1/I+al0CIl3xUP1ExlgmF1CXAN0x/5gBmgS5aTzjF3mAVgwczyqUCaX6lCv/vjJttUURXVg0LGxnORWU3/HgBYzFkaxqBrl0WoMB+P0wBwryAKaBWtZP7EHeB18fzLoedrltm14fHVw5ZVlrxoKq6nOs51Q==
Subject: [Spice-devel] windows spice-client-glib hotplug not working
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1831285222=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1831285222==
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_HK0PR06MB24200E88F424D8EE857F856EC9AB0HK0PR06MB2420apcp_"

--_000_HK0PR06MB24200E88F424D8EE857F856EC9AB0HK0PR06MB2420apcp_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hello, I write a demo under windows unsing spice-client-glib only, I can ge=
t usb devices from UsbManager. but hotplug is not working. no device change=
 event recieved.
I found the function g_udev_client_initable_init in win-usb-dev.c create a =
hidden window to monitor WM_DEVICECHANGE message. but I could not found the=
 corresponding message loop=1B$B!J=1B(BGetMessage/DispatchMessage...). Wher=
e is the message loop(gtk)? Does it depends on some higher library(gtk)=1B$=
B!)=1B(BHow can I get usb hotplug working?

best regards


--_000_HK0PR06MB24200E88F424D8EE857F856EC9AB0HK0PR06MB2420apcp_
Content-Type: text/html; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-2022-=
jp">
<style id=3D"ms-outlook-ios-style" type=3D"text/css">html {
background-color: transparent;
}

body {
color: #333;
line-height: 150%;
font-family: "-apple-system", "HelveticaNeue";
margin: 0;
}

.ms-outlook-ios-reference-expand {
display: block;
color: #999;
padding: 20px 0px;
text-decoration: none;
}

.ms-outlook-ios-availability-container {
max-width: 500px;
margin: auto;
padding: 12px 15px 15px 15px;
border: 1px solid #C7E0F4;
border-radius: 4px;
}

.ms-outlook-ios-availability-container > .ms-outlook-ios-availability-delet=
e-button {
width: 25px;
height: 25px;
right: -12px;
top: -12px;
background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEsAAA=
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
BzRAPSFNM7HEAAAAASUVORK5CYII=3D");
background-size: 25px 25px;
background-position: center;
}

#ms-outlook-ios-main-container {
margin: 0 0 0 0;
margin-top: 120;
padding: 8;
}

#ms-outlook-ios-content-container {
padding: 0;
padding-top: 12;
padding-bottom: 20;
}

.ms-outlook-ios-mention {
color: #333;
background-color: #f1f1f1;
border-radius: 4px;
padding: 0 2px 0 2px;
pointer-events: none;
text-decoration: none;
}

.ms-outlook-ios-mention-external {
color: #ba8f0d;
background-color: #fdf7e7;
}

.ms-outlook-ios-mention-external-clear-design {
color: #ba8f0d;
background-color: #f1f1f1;
}</style>
<meta name=3D"viewport" content=3D"width=3Ddevice-width, user-scalable=3Dno=
, initial-scale=3D1.0, minimum-scale=3D1.0, maximum-scale=3D1.0">
</head>
<body style=3D"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
<div style=3D"direction: ltr;">
<div style=3D"direction: ltr;">Hello, I write a demo under windows unsing <=
b>spice-client-glib only</b>, I can get usb devices from UsbManager. but ho=
tplug is not working. no device change event recieved.</div>
<div style=3D"direction: ltr;">I found the function g_udev_client_initable_=
init in win-usb-dev.c create a hidden window to monitor WM_DEVICECHANGE mes=
sage. but I could not found the corresponding message loop=1B$B!J=1B(BGetMe=
ssage/DispatchMessage...). Where is the message
 loop(gtk)? Does it depends on some higher library(gtk)=1B$B!)=1B(BHow can =
I get usb hotplug working?</div>
<div><br>
</div>
<div style=3D"direction: ltr;">best regards</div>
<div class=3D"ms-outlook-ios-signature"><br>
</div>
</div>
</body>
</html>

--_000_HK0PR06MB24200E88F424D8EE857F856EC9AB0HK0PR06MB2420apcp_--

--===============1831285222==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1831285222==--
