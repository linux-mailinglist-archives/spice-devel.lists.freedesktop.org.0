Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E95125A14
	for <lists+spice-devel@lfdr.de>; Thu, 19 Dec 2019 04:49:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11D4E6E0A1;
	Thu, 19 Dec 2019 03:49:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12olkn2076.outbound.protection.outlook.com [40.92.23.76])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A953F6E093
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Dec 2019 03:49:52 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mWyyO2OzH2VeeJOOZnETszWuw3MccDQGRIUGr58Zw0gEgDAI8Atlr3kCz1h74ggJA3JMkz9TGB4BA6ucbI5qzKpyMPh3691m8TWTyZAOPFbkd1z73QfypTkGgmYLCNQ/xu0uN19VnxPwJNmta/EljvIICq8SpySHMZRRJSaFJUcUBui259SJZSXy6So5oUULJGJsmd/YxAr0+FDHT2B9TvXVq5jajEGsXgqLZ1npWacgQnnIEuY1SKo+zdVhshQg5VxVmT/rWaOR2EyaV68V2kbuSflEQbsowljaAtx+bc/kwKykHKNA0Zp0jtxCIKcm7wh9Rz4pF5B9J00oN6kTXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=akb8rJMdiRyDfTWKaBM4IVoowfRF/YkMx4oqu7VaITU=;
 b=Atg7Wf3O4f2f8Gjw0sk5z4i6xjuGIOhg3CYKFdfjCWaBubJ5YyY9KFEY4+3V2gvrw/5rUZ/SiVJhRSyjSlccX8nLCId4CV4n/f7AuOHKXvngjWAsy6yZKorTH4LXKMlQG2HaNJ1VwgSfkDkNyR+BbPcidVlehG1RATP1i17YZxKgFRDcBWz1WtdRzsP7+qi9WUS3+vCwdsYYKEtq49oEuh0ZP292AoPwByNOSwJddmV2bQY9lVPFRn3lpIAqbtKm2kxhh8lcreMvDXiqFU/kbtqBZ9TkcVFKU6wR12RxaenZQ9WlNkFw8j98L3vCpBXBl18OY+vWimOpChZZf6H/Jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=akb8rJMdiRyDfTWKaBM4IVoowfRF/YkMx4oqu7VaITU=;
 b=tyGlPpuKByFYu4ILRx8pA6ikwOBPkLaUNWrgomSBpv75eewLqG8C5jrxHW2wMtU2th1qWpe91tEKDtsH7WuHeC38UCELJOzNJwJhaRI38ZkKMjhDLsnIFkSN5EipvOAGufIPaXmfIrx4m82G5NhHuMqoakCVQ/4W3FwI3QWS/fojPbdoVEoySgJuymjlpC7FeDKGZs6giseHTnpa1hpPEqElwXjqpbUBxd4JYnsfhaAYoZ4Oy4seDerofDI32lmyYR3+OEdwtgZxXavaTVAcA1pJY9MpOCMDtIY7Su87TUDLKm7Vd3Kgt/caMTf42nraK0BZjOiP/XBejvQ56zJkyg==
Received: from MW2NAM12FT046.eop-nam12.prod.protection.outlook.com
 (10.13.180.56) by MW2NAM12HT065.eop-nam12.prod.protection.outlook.com
 (10.13.180.133) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2538.16; Thu, 19 Dec
 2019 03:49:51 +0000
Received: from MN2PR06MB5966.namprd06.prod.outlook.com (10.13.180.51) by
 MW2NAM12FT046.mail.protection.outlook.com (10.13.181.244) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.16 via Frontend Transport; Thu, 19 Dec 2019 03:49:51 +0000
Received: from MN2PR06MB5966.namprd06.prod.outlook.com
 ([fe80::8061:7adf:1611:69f]) by MN2PR06MB5966.namprd06.prod.outlook.com
 ([fe80::8061:7adf:1611:69f%7]) with mapi id 15.20.2559.012; Thu, 19 Dec 2019
 03:49:51 +0000
From: franklin zhou <codeit@live.com>
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Thread-Topic: after enable streaming agent , but the mouse does not work in
 spice-gtk streaming window
Thread-Index: AQHVth7FHpXNJHNH5UGnLYg4tfS4Bg==
Date: Thu, 19 Dec 2019 03:49:51 +0000
Message-ID: <MN2PR06MB5966CD81F9EB406EA5198012B3520@MN2PR06MB5966.namprd06.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:3F8ED00CD873CD5C25F78517AD81A1D54B0AF1F5BF3826587B65D9AB97994269;
 UpperCasedChecksum:03B8EECAA11BE050AFB38007A8F9BE87B34DCBA30C37BACE4BFF31485FF78D9C;
 SizeAsReceived:6787; Count:42
x-tmn: [e8RXjoYxX3OmoMlEAJqW9TUnljmuetuq]
x-ms-publictraffictype: Email
x-incomingheadercount: 42
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 8b5ca6d4-08a0-47cf-3182-08d784368086
x-ms-traffictypediagnostic: MW2NAM12HT065:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: W/Jjf3r5yVAFGrjacSlcSczoCjZRR1oufiaZDqyd8VZBlAIC8KZ3JeTbU2K1XAy8lFeOxAgnv3OS5+QvyWaqU4znUCeg1hnc3IasQBTfft6czh6imZT3rDg0E7re27B0CPaPkDTLwLZiGGm+WcVmxsyXuHPOho4FfzRS1oXnXycJdro3jNAhu5JqH7eZ7tkA
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b5ca6d4-08a0-47cf-3182-08d784368086
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Dec 2019 03:49:51.4573 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2NAM12HT065
Subject: [Spice-devel] after enable streaming agent ,
 but the mouse does not work in spice-gtk streaming window
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
Content-Type: multipart/mixed; boundary="===============0582686302=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0582686302==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR06MB5966CD81F9EB406EA5198012B3520MN2PR06MB5966namp_"

--_000_MN2PR06MB5966CD81F9EB406EA5198012B3520MN2PR06MB5966namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

hi, all,

I try streaming agent, after enable,

when start spicy at client side, it will popup two windows, one is origin, =
 the other one is for guest streaming agent,

the origin window mouse is ok, but at  the other one (for streaming agent) =
mouse not work,
Is this a bug?

--_000_MN2PR06MB5966CD81F9EB406EA5198012B3520MN2PR06MB5966namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
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
I try&nbsp;streaming agent, after enable,</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
when start spicy at client side, it will popup two windows, one is origin,&=
nbsp;&nbsp;the other one is for guest streaming agent,</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
the origin window mouse is ok, but at&nbsp;<span style=3D"font-family: Cali=
bri, Helvetica, sans-serif; background-color: rgb(255, 255, 255); display: =
inline !important">&nbsp;</span><span style=3D"font-family: Calibri, Helvet=
ica, sans-serif; background-color: rgb(255, 255, 255); display: inline !imp=
ortant">the
 other one (for&nbsp;</span>streaming agent) mouse not work,&nbsp;&nbsp;</d=
iv>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Is this a bug?<br>
</div>
</body>
</html>

--_000_MN2PR06MB5966CD81F9EB406EA5198012B3520MN2PR06MB5966namp_--

--===============0582686302==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0582686302==--
