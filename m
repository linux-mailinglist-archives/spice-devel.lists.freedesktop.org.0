Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D811305353
	for <lists+spice-devel@lfdr.de>; Wed, 27 Jan 2021 07:39:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9260B6E53C;
	Wed, 27 Jan 2021 06:39:16 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
 (mail-oln040092064064.outbound.protection.outlook.com [40.92.64.64])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 685276E53C
 for <spice-devel@lists.freedesktop.org>; Wed, 27 Jan 2021 06:39:15 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HRHw5F3Z4hbbe1Uz9uR2A2x2XD/cgfLtM2xObzdmqDjvCGNdk6HIHsBeIzpdeGaYsbak9hvv6JILFmbQSEz3qdXiigS97ym63P8s0Lt/BNzq2YIrEXrnLaPPRXJUYGhGGBW5BOU4rY167Qwmc1VtmCpYiAtLWuVjVABqmdOXAaLhShMfNcYWY+pOIKvo4dCzn3v3om/2pn9Mt3a4lnpT9vMZJM2fwP9/YN9IuRoew5B2GlK2NAI04AfWBqlRxr5O8+4z+B5Yg2LCm26TvhIT8FL4EGTtCKaiqWRtJbevnjdXyklBh2pvUdj9vBF3g8AJO5HeVNcO6EzY5HrXbDfvxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R95WuDHGjYaF14l+SniU3N+XvN9fhJ9HVThdMVN7B5E=;
 b=TTDg3zrcnHub2kOodscGyDpjkKYTKdAAZsPkGjtanvbwfIlg0ar5XWlzlJm+R3sUJo/K/6ulZS0Fg3xI6FBd23cfR65I9NumremWrhr7us1FsX05DlVeZ0TrRXFGHDvf486hsg0QqWro/kPKVkda4j2yRKgBcZJuC1lOFXO7la0h/ZCCm9OK8DxEl61m0dDX82Yzp0dpnoDlLpMOrSqTiImLAHeouIIhrxj4jKYTUQt0FqlbWpOR3EjlKEB1cORbRUXMmWEt0hbRPnW9xVPqLMKg2FEZu9LgZLqpDLpqNU4hSaP+puuXG8tgkdj/TqpuzpZCcgB0y5ppj0e+exmwbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R95WuDHGjYaF14l+SniU3N+XvN9fhJ9HVThdMVN7B5E=;
 b=dF1GhHdcgaEbkeCtxO/5R77+vZrvDY/ORNlbiDN7sIxZgBqKDcskRmscFDdZM/rLV0CJhyhgAAZIyXxV3f8xwdOVngh9tXivZSr0VcSuYCZG95FFYZpqkaQ8DzZBmk5UCFA2qR2RzMUtP7X/y2qrAesrC1pmo+ojTqR3hRIrnI0mrBEkgdkYB1RP0Qhr6SmdeREElxKUdiz/tmVXnmfRuU0GTDWuQNlDJ09rONkNtgO2fuBHUDQgOajNChegiw+Xbw2AnAs5kzyJqvTr/D7hQk8ANPvIIAYCo1J6gfJMNRYzXxBze/79wClJAc1JYc8o+w2d0duStvQftaiDSkf+dA==
Received: from DB5EUR01FT038.eop-EUR01.prod.protection.outlook.com
 (2a01:111:e400:7e1a::50) by
 DB5EUR01HT093.eop-EUR01.prod.protection.outlook.com (2a01:111:e400:7e1a::327)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.11; Wed, 27 Jan
 2021 06:39:11 +0000
Received: from AS8P190MB1255.EURP190.PROD.OUTLOOK.COM (2a01:111:e400:7e1a::4f)
 by DB5EUR01FT038.mail.protection.outlook.com
 (2a01:111:e400:7e1a::191) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.11 via Frontend
 Transport; Wed, 27 Jan 2021 06:39:11 +0000
Received: from AS8P190MB1255.EURP190.PROD.OUTLOOK.COM
 ([fe80::d51f:dfd:a058:387a]) by AS8P190MB1255.EURP190.PROD.OUTLOOK.COM
 ([fe80::d51f:dfd:a058:387a%4]) with mapi id 15.20.3784.019; Wed, 27 Jan 2021
 06:39:11 +0000
From: alireza kahdoyee <alireza.kahdooee@hotmail.com>
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Thread-Topic: Compression parameters in images
Thread-Index: AQHW9HcVV5xpSatQBkmWb9rK6UHr/Q==
Date: Wed, 27 Jan 2021 06:39:11 +0000
Message-ID: <AS8P190MB1255BCB82E202EF3C01C97DF8FBB0@AS8P190MB1255.EURP190.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:1D8DFD030930CF4CAD3CF07165565B143A48AC67E4B1CCDB12CB4D1AACD4EE92;
 UpperCasedChecksum:2E2F405294A1FD03B4CE2AF53A12FA7E20734B51D59DC32DE02FE871A1C585B1;
 SizeAsReceived:6627; Count:41
x-tmn: [Q64DQSqN4MTFU6IRD0XVB0qNXp93dRLi]
x-ms-publictraffictype: Email
x-incomingheadercount: 41
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: bc57fbca-b6b3-4168-06b7-08d8c28e41c9
x-ms-traffictypediagnostic: DB5EUR01HT093:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3nR9d5H7AL2YDsN1pAvRzCilgNQFJF/auy2Thn7reOhkeMVo25NH7gNljPaJgfCFaFv36vIWRCVq8EOmnVPEoH0+pC5zDTlv+a8lnbVx1sQIwIdDpsxSBdd7uMW2a2I3dEfiSDZqA8cjfwJ1DBgA2GQtj1ft9kF57YL6ROub0F2odsn/HOwxnCh66iHvRCTEe+g4DeyyKcurF+lwZ1vNcA+FGa9jYamCKFhgdBjnZp3njhz6WPDwFxBNJx/Rwm6Gr+iBwQy+mfPo16cQIGjDC630nAqGChxQfLxX+26qn1Z8LVMSTctsMJjmPpX7KqoX/pnFGquuyk9yiAKLuS/k2HihrrShEmVdqbzrd80eFCqEhryHpsUNzp7z6QLoUMSUFNggj2CeN4KZvXX0pYNbbw==
x-ms-exchange-antispam-messagedata: 0XXnfFXhZL1OB06ats/XFpdDipbDm3+vtCgyg/OtR/hPzozgI9U7HuNn68OEIIFIcRsc0aXeA+0U4O1MmPT7gU55AZFkcTNTe4R+6kMJw/L0KLperrR5kXtRSoZvGuqu8zexNSH+O4qD0Lbq+YpDIA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: DB5EUR01FT038.eop-EUR01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: bc57fbca-b6b3-4168-06b7-08d8c28e41c9
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2021 06:39:11.7394 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5EUR01HT093
Subject: [Spice-devel] Compression parameters in images
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
Content-Type: multipart/mixed; boundary="===============1795032504=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1795032504==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AS8P190MB1255BCB82E202EF3C01C97DF8FBB0AS8P190MB1255EURP_"

--_000_AS8P190MB1255BCB82E202EF3C01C97DF8FBB0AS8P190MB1255EURP_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgZGVhciBmcmllbmQNCg0KSSBhbSB3b3JraW5nIG9uIHRoZSBjb25uZWN0aW9uIGJldHdlZW4g
dGhlIHNwaWNlIGNsaWVudCBhbmQgdGhlIHNwaWNlIHNlcnZlciBhbmQgSQ0KZG8gbm90IGhhdmUg
aW5mb3JtYXRpb24gYWJvdXQgdGhlIHBhcmFtZXRlcnMgYmVsb3cgdGhlIHRvIGtub3cgdGhlIGV4
YWN0IHNldHRpbmdzLg0KDQoNCmltYWdlLWNvbXByZXNzaW9uDQoNCmpwZWctd2FuLWNvbXByZXNz
aW9uDQoNCnpsaWItZ2x6LXdhbi1jb21wcmVzc2lvbg0KDQpJIHNlYXJjaGVkIHRoZSBpbnRlcm5l
dCBhIGxvdCwgYnV0IEkgZGlkIG5vdCBmaW5kIHRoZSBleGFjdCBpbmZvcm1hdGlvbi4gSWYgcG9z
c2libGUsIHNlbmQNCm1lIGEgZ29vZCBkb2N1bWVudCBhYm91dCB0aGlzIG9yIGhlbHAgbWUuDQoN
ClRoYW5rIHlvdfCfmYINCg0K

--_000_AS8P190MB1255BCB82E202EF3C01C97DF8FBB0AS8P190MB1255EURP_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyIgc3R5bGU9
ImRpc3BsYXk6bm9uZTsiPiBQIHttYXJnaW4tdG9wOjA7bWFyZ2luLWJvdHRvbTowO30gPC9zdHls
ZT4NCjwvaGVhZD4NCjxib2R5IGRpcj0ibHRyIj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OiBD
YWxpYnJpLCBIZWx2ZXRpY2EsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTJwdDsgY29sb3I6IHJn
YigwLCAwLCAwKTsiPg0KPGRpdiBzdHlsZT0iZm9udC1zaXplOjEycHQiPjxzcGFuPkhpIGRlYXIg
ZnJpZW5kPC9zcGFuPg0KPGRpdj48YnI+DQo8L2Rpdj4NCjxkaXY+SSBhbSB3b3JraW5nIG9uIHRo
ZSBjb25uZWN0aW9uIGJldHdlZW4gdGhlIHNwaWNlIGNsaWVudCBhbmQgdGhlIHNwaWNlIHNlcnZl
ciBhbmQgSTwvZGl2Pg0KPGRpdj5kbyBub3QgaGF2ZSBpbmZvcm1hdGlvbiBhYm91dCB0aGUgcGFy
YW1ldGVycyBiZWxvdyB0aGUgdG8ga25vdyB0aGUgZXhhY3Qgc2V0dGluZ3MuPC9kaXY+DQo8Ymxv
Y2txdW90ZSBzdHlsZT0ibWFyZ2luLXRvcDowO21hcmdpbi1ib3R0b206MCI+DQo8ZGl2IGRpcj0i
bHRyIiBzdHlsZT0idGV4dC1hbGlnbjpsZWZ0Ij48Yj48YnI+DQo8L2I+PC9kaXY+DQo8ZGl2Pg0K
PHAgY2xhc3M9InhfTXNvTm9ybWFsIiBkaXI9Imx0ciIgc3R5bGU9Im1hcmdpbjowaW4gMGluIDhw
dDtsaW5lLWhlaWdodDoxMDclO2ZvbnQtc2l6ZToxMXB0O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGli
cmkmcXVvdDssc2Fucy1zZXJpZjt0ZXh0LWFsaWduOmxlZnQ7ZGlyZWN0aW9uOnJ0bDt1bmljb2Rl
LWJpZGk6ZW1iZWQiPg0KPGI+PHNwYW4gZGlyPSJMVFIiPmltYWdlLWNvbXByZXNzaW9uPC9zcGFu
PjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTomcXVvdDtBcmlhbCZxdW90Oywgc2Fucy1zZXJpZiwg
c2VyaWYsIEVtb2ppRm9udCIgbGFuZz0iRkEiPiZuYnNwOzwvc3Bhbj48L2I+PC9wPg0KPHAgY2xh
c3M9InhfTXNvTm9ybWFsIiBkaXI9Imx0ciIgc3R5bGU9Im1hcmdpbjowaW4gMGluIDhwdDtsaW5l
LWhlaWdodDoxMDclO2ZvbnQtc2l6ZToxMXB0O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVv
dDssc2Fucy1zZXJpZjt0ZXh0LWFsaWduOmxlZnQ7ZGlyZWN0aW9uOnJ0bDt1bmljb2RlLWJpZGk6
ZW1iZWQiPg0KPGI+PHNwYW4gZGlyPSJMVFIiPmpwZWctd2FuLWNvbXByZXNzaW9uPC9zcGFuPjxz
cGFuIHN0eWxlPSJmb250LWZhbWlseTomcXVvdDtBcmlhbCZxdW90Oywgc2Fucy1zZXJpZiwgc2Vy
aWYsIEVtb2ppRm9udCIgbGFuZz0iRkEiPiZuYnNwOzwvc3Bhbj48L2I+PC9wPg0KPHAgY2xhc3M9
InhfTXNvTm9ybWFsIiBkaXI9Imx0ciIgc3R5bGU9Im1hcmdpbjowaW4gMGluIDhwdDtsaW5lLWhl
aWdodDoxMDclO2ZvbnQtc2l6ZToxMXB0O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDss
c2Fucy1zZXJpZjt0ZXh0LWFsaWduOmxlZnQ7ZGlyZWN0aW9uOnJ0bDt1bmljb2RlLWJpZGk6ZW1i
ZWQiPg0KPGI+PHNwYW4gZGlyPSJMVFIiPnpsaWItZ2x6LXdhbi1jb21wcmVzc2lvbjwvc3Bhbj48
c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6JnF1b3Q7QXJpYWwmcXVvdDssIHNhbnMtc2VyaWYsIHNl
cmlmLCBFbW9qaUZvbnQiIGxhbmc9IkZBIj4mbmJzcDs8L3NwYW4+PC9iPjwvcD4NCjwvZGl2Pg0K
PC9ibG9ja3F1b3RlPg0KPGRpdj48YnI+DQo8L2Rpdj4NCjxkaXY+SSBzZWFyY2hlZCB0aGUgaW50
ZXJuZXQgYSBsb3QsIGJ1dCBJIGRpZCBub3QgZmluZCB0aGUgZXhhY3QgaW5mb3JtYXRpb24uIElm
IHBvc3NpYmxlLCBzZW5kPC9kaXY+DQo8ZGl2Pm1lIGEgZ29vZCBkb2N1bWVudCBhYm91dCB0aGlz
IG9yIGhlbHAgbWUuPC9kaXY+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPHNwYW4+VGhhbmsgeW91PC9z
cGFuPjxzcGFuPvCfmYI8L3NwYW4+PC9kaXY+DQo8YnI+DQo8L2Rpdj4NCjwvYm9keT4NCjwvaHRt
bD4NCg==

--_000_AS8P190MB1255BCB82E202EF3C01C97DF8FBB0AS8P190MB1255EURP_--

--===============1795032504==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1795032504==--
