Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 982399BB14
	for <lists+spice-devel@lfdr.de>; Sat, 24 Aug 2019 05:05:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31B886E073;
	Sat, 24 Aug 2019 03:05:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from APC01-SG2-obe.outbound.protection.outlook.com
 (mail-oln040092253028.outbound.protection.outlook.com [40.92.253.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECB056E073
 for <spice-devel@lists.freedesktop.org>; Sat, 24 Aug 2019 03:05:06 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CkZeayzMXqUKaIT9pUx/6G2ndpw5rLrbr+gLkCPLepHnLNNvR8+i6eD3w+9vG4EfHa65v6oMcEDbxPH3rICw7IPRQPr+OAHJGhSTL4BvVgp9bkTHMNwJVUIxRCwLKzYc3KZgLheAFGR2MidvuSJlMGwLzwq8EO8Y+6cyU3DCJnKsw61Lq+XW2LFf/ZNdL3ZHZGrHU4650hZxSXZP9rrPhRVHxngfm3PszGx/QIkJoq1kohwK2+rTgO2ss8eariZE6tDIGPrySu/cub3PidL8nQfW9JJNrH1oC/NO9FSZxR66aSk6nouCHQKVhsc3pGNOdo6dCk7PbWH5+tkOQXmDYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IbiqzDL638Dsa+a2ajhEwIoL+jZfIuTG86DiZXCWgnI=;
 b=GFbdiSSVkS48JmULHwQ2SCmdlo0iXWlFcxKZVHw+6WNjDtdgFyDsCNeeSv3A8ijQ8oPMRmsgO0fmzzEXUlgGwP73Toei6B6IDvW5zk6erTvEwvh4zBsvWJ5lr4xYeAp77zIXI4LEuPU+Gkff83Cc/VAxUUteNsPGJXzrq5yS8LM2Km+FPz03MKR2ShB3FrskP3WYakhKc9yPS7KFoq9hK47AYauCeRETUxMusjBEtEfPvoEuAl7UAtsG1DdgbSlZWs7dUp8Qb64yHnyShxR7fHLhGVkr20V5V2uhexe0Hx/Z8hyupzrEP7D/QpYUDWck2GKBdTRcJv5u16oXE4Dppw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from PU1APC01FT058.eop-APC01.prod.protection.outlook.com
 (10.152.252.57) by PU1APC01HT119.eop-APC01.prod.protection.outlook.com
 (10.152.253.14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2199.13; Sat, 24 Aug
 2019 03:05:02 +0000
Received: from HK0PR06MB2420.apcprd06.prod.outlook.com (10.152.252.57) by
 PU1APC01FT058.mail.protection.outlook.com (10.152.253.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2199.13 via Frontend Transport; Sat, 24 Aug 2019 03:05:02 +0000
Received: from HK0PR06MB2420.apcprd06.prod.outlook.com
 ([fe80::b4df:c26e:14a1:6aec]) by HK0PR06MB2420.apcprd06.prod.outlook.com
 ([fe80::b4df:c26e:14a1:6aec%5]) with mapi id 15.20.2178.020; Sat, 24 Aug 2019
 03:05:02 +0000
From: zhou qi <atmgnd@outlook.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>, "uril@redhat.com"
 <uril@redhat.com>
Thread-Topic: [Spice-devel] windows spice-client-glib hotplug not working
Thread-Index: AQHVV7av4rPep7KYoUuWo1TrP1/OrqcFy9IAgAEM5QCAAsZxCQ==
Date: Sat, 24 Aug 2019 03:05:02 +0000
Message-ID: <HK0PR06MB2420EBD04AB1B9A6DE7CB7EDC9A70@HK0PR06MB2420.apcprd06.prod.outlook.com>
References: <HK0PR06MB242009302E3419E214904AE2C9AA0@HK0PR06MB2420.apcprd06.prod.outlook.com>
 <59e67d01-f17c-6029-a7ca-3916c8738d41@redhat.com>,
 <CAOEp5OcWb7fPp-RbZpBk8Cjiw6x1uqzxEUQyaCZT2KS9xfziWA@mail.gmail.com>
In-Reply-To: <CAOEp5OcWb7fPp-RbZpBk8Cjiw6x1uqzxEUQyaCZT2KS9xfziWA@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:655F3AB748E2A6206726EC9E6611CDF5AF6E998F9D4CA2132C1580C80599E444;
 UpperCasedChecksum:A10BE14CFE5B868654C4239EBB52AFCBB502620F7F197BA1E29EC33C766CD374;
 SizeAsReceived:7029; Count:44
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [FF+SPpH1pdhGsjFBR+VhV1f5zVxN3Cds]
x-ms-publictraffictype: Email
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031322404)(2017031323274)(2017031324274)(1601125500)(1603101475)(1701031045);
 SRVR:PU1APC01HT119; 
x-ms-traffictypediagnostic: PU1APC01HT119:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-message-info: cMzJjpmnIwzvjX0NZT7hLpUKHr0lrGD8XZQ4bizhIk5HWytWuM36fi3zoZbbcKRrNy3t5UDi/4nF/6r+iIvuIk7hTG2EYWtVylSobpHhvcWy3gYkS0CtYRIJH6l2DKWIu/yI83ZNTzbh82lax8LY+gPi+76q4BFSVtJhJUprmnMa8jOVeoBokteEa6rC1jac
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: de3ca606-0645-4caf-6cef-08d7283fdb36
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2019 03:05:02.1572 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PU1APC01HT119
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=outlook.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IbiqzDL638Dsa+a2ajhEwIoL+jZfIuTG86DiZXCWgnI=;
 b=AzSmV6ifDT501WLV1tIs5sNPp2TFvuPB3ItZnkLQn+lHtefy+/Y+b4YOVb1xIqAG+kl6KUhjD1i3eijz2l/YXICS83OjuyfkviPOmYkjgLclq5+wHlz7fSvM64MMuiNG8vaLWfbe3h9QRhibeZQQDvVFkRcjPMMskzinwHBCs+Jsc18TMMb22GpshkhW0lDreVTPcifMw/XzGklJHQa8TXY1SbxjGpTUTp0CyXo645ocXUpFhJehnA+5D1/ljBKbSGgO/P0OZaXJbGAiL2k5UGkZzUR3UYDRlUOFM06ehYhoHtG2aSNsTrGUD8wNaONCSZFvAIEGE8kTTgk7c3ZEBg==
Subject: Re: [Spice-devel] windows spice-client-glib hotplug not working
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============1740391458=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1740391458==
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_HK0PR06MB2420EBD04AB1B9A6DE7CB7EDC9A70HK0PR06MB2420apcp_"

--_000_HK0PR06MB2420EBD04AB1B9A6DE7CB7EDC9A70HK0PR06MB2420apcp_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

U29ycnkgYWJvdXQgdGhlIGRlbGF5IHJlcGxheShJIHdvcmsgb24gdGhpcyBkZW1vIG9ubHkgaW4g
c3BhcmUgdGltZSksIHRoYW5rcyBmb3IgdGhlIGFkdmljZSwgSSBjYW4gZ2V0IHVzYiBob3RwbHVn
IHdvcmtpbmcgb24gd2luZG93cyBub3csIHRoZSByZWFzb24gaXMgbXkgZ3VpIHRocmVhZCBhbmQg
Z2xpYiB0aHJlYWQgYXJlIHR3byBzZXBhcmF0ZSB0aHJlYWRzLiBBZnRlciBJIGFkZGVkIFdpbmRv
d3MgTWVzc2FnZSBMb29wIGFmdGVyIHNwaWNlX3Nlc3Npb25fbmV3IGNhbGwuIE5vdyBldmVyeXRo
aW5nIGlzIG9rLg0KDQoNCg0KYXRtZ25kDQoNCg0KDQpTZW50IGZyb20gTWFpbDxodHRwczovL2dv
Lm1pY3Jvc29mdC5jb20vZndsaW5rLz9MaW5rSWQ9NTUwOTg2PiBmb3IgV2luZG93cyAxMA0KDQoN
Cg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCreivP7IyzogWXVyaSBCZW5kaXRv
dmljaCA8eXVyaS5iZW5kaXRvdmljaEBkYXluaXguY29tPg0Kt6LLzcqxvOQ6IFRodXJzZGF5LCBB
dWd1c3QgMjIsIDIwMTkgNDozMjowMiBQTQ0KytW8/sjLOiB1cmlsQHJlZGhhdC5jb20gPHVyaWxA
cmVkaGF0LmNvbT4NCrOty806IHpob3UgcWkgPGF0bWduZEBvdXRsb29rLmNvbT47IHNwaWNlLWRl
dmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZyA8c3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnPg0K1vfM4jogUmU6IFtTcGljZS1kZXZlbF0gd2luZG93cyBzcGljZS1jbGllbnQtZ2xpYiBo
b3RwbHVnIG5vdCB3b3JraW5nDQoNCk9uIFdlZCwgQXVnIDIxLCAyMDE5IGF0IDc6MjkgUE0gVXJp
IEx1YmxpbiA8dXJpbEByZWRoYXQuY29tPiB3cm90ZToNCj4NCj4gT24gOC8yMS8xOSAzOjI1IEFN
LCB6aG91IHFpIHdyb3RlOg0KPiA+IEhlbGxvLCBJIHdyaXRlIGEgZGVtbyB1bmRlciB3aW5kb3dz
IHVuc2luZyAqc3BpY2UtY2xpZW50LWdsaWIgb25seSosIEk+IGNhbiBnZXQgdXNiIGRldmljZXMg
ZnJvbSBVc2JNYW5hZ2VyLiBidXQgaG90cGx1ZyBpcyBub3Qgd29ya2luZy4gbm8+IGRldmljZSBj
aGFuZ2UgZXZlbnQgcmVjaWV2ZWQuDQo+DQo+IEhlbGxvLA0KPg0KPiA+IEkgZm91bmQgdGhlIGZ1
bmN0aW9uIGdfdWRldl9jbGllbnRfaW5pdGFibGVfaW5pdCBpbiB3aW4tdXNiLWRldi5jIGNyZWF0
ZT4gYSBoaWRkZW4gd2luZG93IHRvIG1vbml0b3IgV01fREVWSUNFQ0hBTkdFIG1lc3NhZ2UuIGJ1
dCBJIGNvdWxkIG5vdD4gZm91bmQgdGhlIGNvcnJlc3BvbmRpbmcgbWVzc2FnZSBsb29wo6hHZXRN
ZXNzYWdlL0Rpc3BhdGNoTWVzc2FnZS4uLikuPiBXaGVyZSBpcyB0aGUgbWVzc2FnZSBsb29wKGd0
ayk/IERvZXMgaXQgZGVwZW5kcyBvbiBzb21lIGhpZ2hlcj4gbGlicmFyeShndGspo79Ib3cgY2Fu
IEkgZ2V0IHVzYiBob3RwbHVnIHdvcmtpbmc/DQo+DQo+IFRoZXNlIGV2ZW50cyBhcmUgc2VudCB0
byB3bmRfcHJvYyBieSBXaW5kb3dzICh0aGUgT1MpLg0KPg0KPiBUaGUgaGlkZGVuIHdpbmRvdyBp
cyBjcmVhdGVkLCBzbyBzcGljZS1ndGsgZ2V0cyB0aG9zZQ0KPiBtZXNzYWdlcyBmcm9tIFdpbmRv
d3MuDQo+DQo+IE5vdGUgdGhhdCB0aGlzIGNvZGUgd2FzIG1vdmVkIHJlY2VudGx5IGluIHNwaWNl
LWd0ayAtLSBub3cgaXQncyBpbg0KPiB1c2ItYmFja2VuZC5jICh0aGF0IHJlcGxhY2VzIHdpbi11
c2ItZGV2LmMpDQo+DQo+IFVyaQ0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXw0KPiBTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QNCj4gU3BpY2UtZGV2ZWxA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWwNCg==

--_000_HK0PR06MB2420EBD04AB1B9A6DE7CB7EDC9A70HK0PR06MB2420apcp_
Content-Type: text/html; charset="gb2312"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dgb2312">
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><style><!-- .EmailQuote { margin-left: 1pt; pad=
ding-left: 4pt; border-left: #800000 2px solid; } --></style>
</head>
<body>
<style>
<!--
@font-face
	{font-family:SimSun}
@font-face
	{font-family:"Cambria Math"}
@font-face
	{font-family:DengXian}
@font-face
	{}
@font-face
	{}
p.x_MsoNormal, li.x_MsoNormal, div.x_MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:DengXian}
a:link, span.x_MsoHyperlink
	{color:blue;
	text-decoration:underline}
a:visited, span.x_MsoHyperlinkFollowed
	{color:#954F72;
	text-decoration:underline}
.x_MsoChpDefault
	{}
@page WordSection1
	{margin:72.0pt 90.0pt 72.0pt 90.0pt}
div.x_WordSection1
	{}
-->
</style>
<div lang=3D"ZH-CN" link=3D"blue" vlink=3D"#954F72">
<div class=3D"x_WordSection1">
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">Sorry about the delay replay(=
I work on this demo only in spare time), thanks for the advice, I can get u=
sb hotplug working on windows now, the reason is my gui thread and glib thr=
ead are two separate threads. After
 I added Windows Message Loop after spice_session_new call. Now everything =
is ok.</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"></span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">atmgnd</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">Sent from <a href=3D"https://=
go.microsoft.com/fwlink/?LinkId=3D550986">
Mail</a> for Windows 10</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt; fo=
nt-family:SimSun">&nbsp;</span></p>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>=B7=A2=BC=FE=C8=CB:</b> Yuri =
Benditovich &lt;yuri.benditovich@daynix.com&gt;<br>
<b>=B7=A2=CB=CD=CA=B1=BC=E4:</b> Thursday, August 22, 2019 4:32:02 PM<br>
<b>=CA=D5=BC=FE=C8=CB:</b> uril@redhat.com &lt;uril@redhat.com&gt;<br>
<b>=B3=AD=CB=CD:</b> zhou qi &lt;atmgnd@outlook.com&gt;; spice-devel@lists.=
freedesktop.org &lt;spice-devel@lists.freedesktop.org&gt;<br>
<b>=D6=F7=CC=E2:</b> Re: [Spice-devel] windows spice-client-glib hotplug no=
t working</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:11pt;">
<div class=3D"PlainText">On Wed, Aug 21, 2019 at 7:29 PM Uri Lublin &lt;uri=
l@redhat.com&gt; wrote:<br>
&gt;<br>
&gt; On 8/21/19 3:25 AM, zhou qi wrote:<br>
&gt; &gt; Hello, I write a demo under windows unsing *spice-client-glib onl=
y*, I&gt; can get usb devices from UsbManager. but hotplug is not working. =
no&gt; device change event recieved.<br>
&gt;<br>
&gt; Hello,<br>
&gt;<br>
&gt; &gt; I found the function g_udev_client_initable_init in win-usb-dev.c=
 create&gt; a hidden window to monitor WM_DEVICECHANGE message. but I could=
 not&gt; found the corresponding message loop=A3=A8GetMessage/DispatchMessa=
ge...).&gt; Where is the message loop(gtk)? Does it
 depends on some higher&gt; library(gtk)=A3=BFHow can I get usb hotplug wor=
king?<br>
&gt;<br>
&gt; These events are sent to wnd_proc by Windows (the OS).<br>
&gt;<br>
&gt; The hidden window is created, so spice-gtk gets those<br>
&gt; messages from Windows.<br>
&gt;<br>
&gt; Note that this code was moved recently in spice-gtk -- now it's in<br>
&gt; usb-backend.c (that replaces win-usb-dev.c)<br>
&gt;<br>
&gt; Uri<br>
&gt; _______________________________________________<br>
&gt; Spice-devel mailing list<br>
&gt; Spice-devel@lists.freedesktop.org<br>
&gt; <a href=3D"https://lists.freedesktop.org/mailman/listinfo/spice-devel"=
>https://lists.freedesktop.org/mailman/listinfo/spice-devel</a><br>
</div>
</span></font>
</body>
</html>

--_000_HK0PR06MB2420EBD04AB1B9A6DE7CB7EDC9A70HK0PR06MB2420apcp_--

--===============1740391458==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1740391458==--
