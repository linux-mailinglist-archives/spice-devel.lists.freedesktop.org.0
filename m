Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BDFA84D128
	for <lists+spice-devel@lfdr.de>; Wed,  7 Feb 2024 19:26:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB49810E5CA;
	Wed,  7 Feb 2024 18:26:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=outlook.com header.i=@outlook.com header.b="qRQk74rx";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from NAM02-BN1-obe.outbound.protection.outlook.com
 (mail-bn1nam02olkn2066.outbound.protection.outlook.com [40.92.15.66])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE22910ECD7
 for <spice-devel@lists.freedesktop.org>; Tue,  6 Feb 2024 20:16:47 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JGi7L0+Wt0pv7NNZG63gC9Jt3lflOXYOu9qiPYzHpD+XHn1reLocVilXGRj7KzKXw7xU+jWRRhQ6ocgW/HzCvx43ixPcYm8dMNMSElUIEWcXdS+gtJ4WKhPKIUEHvQztZwiIfhcUd8S/eH+lJU2BAULV3akzvNbKSbtqclTbg+zSnzWezCH+82MytCt6bIzGXyDrVO8HV5tr9bnL81nQvq1BBRmtfNfcBiTGS+YEjY8ZyotGaBerK1QMLa5j8ccgc2XyXGwUcN0qpc2XC67xbN07WhKOLtfm0pXVSeFSzfKfZ/bTi+0/LbnSG41tIr7bckwWxaaM0ZEqUIum2tEEXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YVtB3PSwChukBpJoeG+8L9Gk0tcz0t2ZzkcL6Pru868=;
 b=bk/wHsyBOJ6JIBS/TMpH3P8kHe0H/gsI2R3y7zPHCajoxSzCASPQyiYQzKEXqpeWGil6tlCejAy4+WCNd7+Qmkl+2uER1NThPKIZKRXRGWxCR2sUbvMLkIalCv+lz00l5b+dvsIlNstL8Ue4ZIqg38rwRmbjGhD8c5vScjOfK1b+hQ0bFwR80mwrLZBesH92xsahv/J1rMt9RRYl8qNnsPicWEVBMh/xmMdCojOUu04NkXX0XX9Fo6WTFunyUXun6ntcWn9w6RxVkB31Bzu2WUR56UN0sbqzjDn7Yb3YWDvHnsV+cSn+rIZOP1FCGYzhUqoxAJco5RlhzXkxUJE/2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YVtB3PSwChukBpJoeG+8L9Gk0tcz0t2ZzkcL6Pru868=;
 b=qRQk74rxYCBOd0j9I9YNEe4+E2INTy36BfR6wZjGrnVLjE30bL1GxwO5ybCo1TWK7185A4b3WGPtDFv9mqbaaM0HsFJAd3uYw8wYi1j7VhEZNeuBLGRbzwteyfTl6Aw4RutxTsehmiBWhsu/Sea/i5hpcL+y/4Asnbjn+F9QynyGEm8MhpfKpwO1mofZikCAQa75f7a/a5Wo9NVXFbjCh/WuSeKkHim9bU9L8sVYAh/66K04Qkk0BuDyH1ZNDA7FEARVT3oDg5aARZr9TmpPYYNFuT1LRN6R+xabaSTVKqdTZyJpQpfu9Zbh2HiOlfwS4/k030G++PRsFo5d/HpjWg==
Received: from CY8PR20MB5428.namprd20.prod.outlook.com (2603:10b6:930:5b::5)
 by DS7PR20MB3870.namprd20.prod.outlook.com (2603:10b6:5:3a9::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.36; Tue, 6 Feb
 2024 20:16:45 +0000
Received: from CY8PR20MB5428.namprd20.prod.outlook.com
 ([fe80::a807:5d05:2fb6:7465]) by CY8PR20MB5428.namprd20.prod.outlook.com
 ([fe80::a807:5d05:2fb6:7465%5]) with mapi id 15.20.7249.035; Tue, 6 Feb 2024
 20:16:45 +0000
From: Jason Chen <jastsai@outlook.com>
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Subject: Mouse Back and Forward button
Thread-Topic: Mouse Back and Forward button
Thread-Index: AQHaWTj7ZMVtRu4/V0eaQYUt5Pdi9g==
Date: Tue, 6 Feb 2024 20:16:44 +0000
Message-ID: <CY8PR20MB5428D720ECDF97FB942AFE33AB462@CY8PR20MB5428.namprd20.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [B6gdELVR4ONlbPq9D73RG5QZQdRQM8ef]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR20MB5428:EE_|DS7PR20MB3870:EE_
x-ms-office365-filtering-correlation-id: 285dd623-f053-4366-c153-08dc27508a39
x-ms-exchange-slblob-mailprops: CLk2x5OX5VbQwVe0cZB9QxGP6Bh3YlNNDcN9KV8mMgtlK1w+rbGVJ+NbIXc5U570iEhPBD/epM0tDGROBGaNv/2WV782XRnJaB8bn6qEeT4e/g9cMaxwF3cPLfo3fETy5HlmNwQvwgcTBG0TNQn71trhKjW+a6LBmeO9iOcLh4UQqXlPaPF+4XwYKO50WM7ybx4s7BfCOZVubkj7UgAsTwML/WEQLSAJNNu7vvhmkGXMo1+sZKpWIF6MdcFFgQrZfFbmIsmbGP9HsuHp+6WHeVrupiTGDvOr21mZhJFbnpmdQR3GAZ/w28PtmLQSIr90vZaZhkHpmZaGMxruNQOXuXhlY7UnpFRAQTUHg3l7nBBKfvjG+mxTEOllukeeq7iSWHLCkrLSl+kPikKadWkDNQeEflxOTBdetqEGTdpWuJ9qxgGbHtBg0otBvLQ7jo6pTvM1CQNvVQYQ8xHzu4ry5MVuc/Pgkq+cF8XdRdy6t2jLLDvvO7RxR0fVJSQPkCX7H2EPbY3r2Pt0Gw1XFvAqPB27lnBAMGTffAVS4xVgBhW02XpkCEYd92Jo2VFNIPEhMEDa0gjZ4PqkkJ1BJyDO2FNu1eqLErmvkdqqYb2wwlzDhjE5jmGxn2jJbURBZeqmYKtGk4NiWFFzf5eLMV4jvdGqLMcZZAudgshT8PNczQDwNBnCTtykwZ3ZjLqgMKDOZoByv75MX3++dgTSCIconw==
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: afVraBYivhVMZbOcgCqZq3Fe026TBhUyT8rAYBA7eiIoD1EC+wBJ/YR/s90ZUM8pBS896piq62eslgIqKjFZAmHLt2v9muRx4i4VQoExTQQpwsW9PgFmom8Vsqo16i3TImp2PLP/pn8XJVVVdg93fXKZ0JhWTX8KLJl8ji3rJcivaYK2/EaL9eEkeoXMV6Bgsbfajgr3iiEFuSdEQpq0fZOIwj79i8xZoQk2RGXOv55qMNS0QSuhQHZPC41uIe487YVM7lHNIAf3IS0L83NTxCWsfkG+KluSgzJjAW9Q/XnHcUQfQcZz9tVyBnBFwQSQLVVduMIkZnVaefD6pAtk+KuLjO3JyGZL/k8YfznRdWavXu+H51jPe1ZPgIJ7swcTv/EQkpOlf/q4zHaAlQ6ck2VQpzVpYUfzGaI4Ywn9p12yByDnc5ESsott5LBDOeU0rCP1pF2amd0ARvYWHyv1x+zf8/3DHwfgZjdrieDyoqEN+7veuuI0SZs2JBe9JWyc1n0pLd3CdYoJhHoW0xUTKxBtb4JJ8/1zJ+ILMwpnKn9bMDBC6yNmwKUiO3rQar1x
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?a0BsjDamop/3Y35/tLzPhxST72vzA8BK8jiDq8uIdImSX+DB7cLPjMuM6c?=
 =?iso-8859-1?Q?KERUoBBAe82ER/g9cwliE0Yidygz2eOL4bjPkRRHMFl5R9dW0iO8IV3Z8A?=
 =?iso-8859-1?Q?dsO+s1tcOykIVr0VG3zaLmtSzxOzgcHycJ/r97+rK5yyc7p4iDv59mhUSs?=
 =?iso-8859-1?Q?nWrX01gKX6+epibvzPd5AtKbVzJFuRbH0bQGKF4313195qxt3Ym08ZMB4g?=
 =?iso-8859-1?Q?WrVgPppsvyLkiJZGC6hRp6nIwKtJkpW6UPsnPPBI5aj7j9CjoBBY+i0k7q?=
 =?iso-8859-1?Q?TSm02ll3+3aXgUQ7ZtKR+FKhir/lMtYWbRkylNiMwaTlkI1hPTJeiXeNaX?=
 =?iso-8859-1?Q?KjVPshdQcnFOv9DJIKVElK0uExcqzGVwpFC/HUaBK9KFhObxpNeYUMdpNy?=
 =?iso-8859-1?Q?rj39+QM+x0dP4pq8xerJZlgMOgOLqfR4ILeMqcIlsePqPQBzrX+qFuCDh8?=
 =?iso-8859-1?Q?/OqegiJMMxQJ7lGOapGzP9sVJWfJ5dGdHA74JyhH0mBRpofCS7I29cTGL5?=
 =?iso-8859-1?Q?DZlk0/+nKDl29+KYsAVre8bKBFm4swNQj8gL4+xETqI7r+pJnMccRMUMnu?=
 =?iso-8859-1?Q?fkwqWh6iM9MiAlB6GdIGLo/E3G3Oo9KTMOmEFli9TPCFAAwb3o88xxwpxu?=
 =?iso-8859-1?Q?b+QKBG3L1BzoJdBZaOby7rr78RuWFVQ4EhqvWyWMcFboEy+grJWlkEliFh?=
 =?iso-8859-1?Q?EfemmSHsva3oUrHAsR35iIOvwWjYnjQvgR26b5I79Zcxv/R84pUQS6kiXC?=
 =?iso-8859-1?Q?d18yVwio/d95quguXvMHB1Ctab6Hkg71Mua3DCsOmjbYR5YrUmKwr2lrXs?=
 =?iso-8859-1?Q?89P6TamdymmgbvnDQBJ03T9zWxS5lrYL1tKn+n1Arrkus/tkspkUEZZoFQ?=
 =?iso-8859-1?Q?GbpyTzfaunxQAc/9jvwlCJN4t2TO01TA6DQDcmQxIecUB++tw+BC1GNj8P?=
 =?iso-8859-1?Q?2vkZNM20t7LCvb+S+ThJnDkPRG9oO4vzWy83QjccTe24UCaIfPZEt9nCBu?=
 =?iso-8859-1?Q?rLclNrsGxrS+pRXkUqB/lpuolDj6S8Qv4wykcV/NowetraleJQsuSEpYzx?=
 =?iso-8859-1?Q?EcTdMLjNUwL8oh5Gm/scsTqVjOtBylIPLyQaxjKTSOPbbOpSdLXkp8Z1Su?=
 =?iso-8859-1?Q?k5rN32drmhOdWq0dvHyxv74ZGFr53ZKiMxth1T1HoK8NeVc3CSOyRcRirt?=
 =?iso-8859-1?Q?ievmwS7CAINBk+qXesImakFr6WRGA9LkzEtIIsXhLHGnIC+T9+sGJENh?=
Content-Type: multipart/alternative;
 boundary="_000_CY8PR20MB5428D720ECDF97FB942AFE33AB462CY8PR20MB5428namp_"
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR20MB5428.namprd20.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 285dd623-f053-4366-c153-08dc27508a39
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2024 20:16:44.9215 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR20MB3870
X-Mailman-Approved-At: Wed, 07 Feb 2024 18:26:52 +0000
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

--_000_CY8PR20MB5428D720ECDF97FB942AFE33AB462CY8PR20MB5428namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Devs,

Thank you very much for making Spice.  It is 100% faster than any other sof=
tware I have used.

The only problem I have with the software is my mouse.  My back/forward but=
ton on my mouse (Logitech G502) is registered as a scroll input.  My scroll=
 weeks is working as intended.  Windows RDP works flawlessly in this respec=
t.

Is there something I'm missing?  I haven't been able to figure it out and t=
his great affects the way I navigate.

Can you please help?  Thank you very much.

Jason

--_000_CY8PR20MB5428D720ECDF97FB942AFE33AB462CY8PR20MB5428namp_
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
 color: rgb(0, 0, 0);" class=3D"elementToProof">
Hi Devs,</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);" class=3D"elementToProof">
Thank you very much for making Spice.&nbsp; It is 100% faster than any othe=
r software I have used.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);" class=3D"elementToProof">
The only problem I have with the software&nbsp;is my mouse.&nbsp; My back/f=
orward button on my mouse (Logitech G502) is registered as a scroll input.&=
nbsp; My scroll weeks is working as intended.&nbsp; Windows RDP works flawl=
essly in this respect.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);" class=3D"elementToProof">
Is there something I'm&nbsp;missing?&nbsp; I haven't been able to figure it=
 out and this great affects the way I navigate.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);" class=3D"elementToProof">
Can you please help?&nbsp; Thank you very much.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);" class=3D"elementToProof">
Jason</div>
</body>
</html>

--_000_CY8PR20MB5428D720ECDF97FB942AFE33AB462CY8PR20MB5428namp_--
