Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E723AAB1F
	for <lists+spice-devel@lfdr.de>; Thu, 17 Jun 2021 07:35:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FAC689DC0;
	Thu, 17 Jun 2021 05:35:18 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2086.outbound.protection.outlook.com [40.107.220.86])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3AD66E82A
 for <spice-devel@lists.freedesktop.org>; Wed, 16 Jun 2021 21:20:45 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kSkPBU03jPb4J7srrotKc13c6TI8Waa1RZIqwH6JFZr3JkKke0Uz1cUTKodJJu4NCfGbfNJjvIKWIqDEBgxskq1fFZK96i8omKdlNwdwXSYu90QBwD3dbo8qzyB8I0+QtbNJwONlzlhqogyjucOpRvZOb3158M21UuZHAIYUOhlzPqQzkdUb4y2CmEZ2ozbmu+Yow6LskP9EY70NXSfo45imGR1B1bXdLfNlSkGiKIrLGCSu5+goVFhZb2gy0lwWgPv8x03JPP7W/ne8hpf78Y08baNRdDf0FZ5uTpdSdSKIUcJ5nh9ugZ4xL4XL0NQ02fzTEz1yxEhlX/LxZZkcSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZzKjKIYGEW4vUdkOPItAw82D6Z8igWrjINyv5WwHM5o=;
 b=av5hmedDl9osRV88mgrHF7DpI79ORfBbe7LE7FEFGQPDBqK30m8+d2LOrQpVL/2CR1P5/QJJdabfIHWpgEwhkLolByqv3xhExr3r4oHl+CqGJpJcq7GvpD5y4Mc53CiZkoisls2rrlvlZhj7ahr66u00oISP4RoOIQZY/jX9mYHS8U6YPAKuk2pxQfBrdXeMLTlZTGy0LaKGujfe2zj51nFy+CIEOX41mP6Mjuoa+Z9ghJ17iFmqt02BYbZdL8yaoaryWzk8d2XRSCWvnsj49mKtVARzQpfNwIsGy0RSvYvtwW45MesBqAeW/MAF5KdLgdoxmpO6/UwO3kp1Lfu4mw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=uark.edu; dmarc=pass action=none header.from=uark.edu;
 dkim=pass header.d=uark.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uark.edu; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZzKjKIYGEW4vUdkOPItAw82D6Z8igWrjINyv5WwHM5o=;
 b=eJduxMqFpMx0cVzW3i0Zp72IBGOsGXPaTmHoQqlhkH+8s8ZPV1X+ALfo30hZwFe8ihi/LUyJY+jmYAeAzQ9rkmPdyjtinAKdwNY1JTOlLXdVQnKUZ8W40m7V4zFhVVZ75idSuN05Cl7UAlr/MqMlqQevt3LvgMcV0CC7tsh9+ccb6CR3FIpHXrOSRRtJr8A69BI72Oe1ztYSfVJNmbNjcPErfD2Q2Os4dL6V7EN89vnTPe2hUPlsnZh7SgCJ5n6vUG03bIIldEe9ynpAiADobJSpz3GQH3OAoQpNtaMSP8Q1tHfosrCoxY99aS8/NlIdQVM1PNyMeKYZNKuCoquVXQ==
Received: from DM6PR04MB6922.namprd04.prod.outlook.com (2603:10b6:5:246::13)
 by DM5PR04MB1003.namprd04.prod.outlook.com (2603:10b6:4:46::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.21; Wed, 16 Jun
 2021 21:20:38 +0000
Received: from DM6PR04MB6922.namprd04.prod.outlook.com
 ([fe80::d5e8:1405:8b10:305]) by DM6PR04MB6922.namprd04.prod.outlook.com
 ([fe80::d5e8:1405:8b10:305%2]) with mapi id 15.20.4219.026; Wed, 16 Jun 2021
 21:20:38 +0000
From: "Shawn O. Eary" <seary@uark.edu>
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Thread-Topic: License and Payment Required?
Thread-Index: AQHXYvTzKwfWeAQnPUKGgyvl7ydRsw==
Date: Wed, 16 Jun 2021 21:20:38 +0000
Message-ID: <DM6PR04MB6922A051AA74495D2FF0032AD10F9@DM6PR04MB6922.namprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=uark.edu;
x-originating-ip: [130.184.252.15]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2f96a45e-dadb-43c8-3ae9-08d9310c9679
x-ms-traffictypediagnostic: DM5PR04MB1003:
x-microsoft-antispam-prvs: <DM5PR04MB1003C20C4F6A6AF80CC46071D10F9@DM5PR04MB1003.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iZG8+rX170iCmt2ujoMOvIm0Au+/+qFfPOZmnYBRvUnWjavQxDY8p1NHZAnCAi1JPm09ZVlQXU8MhJUnRCPOMjCrl/UAilIJbxm5bTa3KJkInSvUNnWUlRD6P3Vlg6QHvjY7yj4fHnYpBFVEsx3XGtmcLmcTEfL+XOTZLiQnTbGh7/h7m293lRHaBuwxyWiqZLRVWs5jyTdbFhsCXtFXx94TRqNUjn9RRdR8DkxXjMQdbP2N2lv4BpR0nmBoBWVhwBQhwBYcm1wKn3JQb+LK5Nu7HzU30znzSGYg2gMivTm3g41a5/ggCw/2fE2pc2kAzdoB6dyePMc5YtRRxiu0HvUGp7D43cTSopLBBzylUeYRLFcYjqWownQ7eSmzDzihwwczFmWmdvRNEVUrKj6XP12mI/7/W6VszKk55jyEEMEwPcPaTSZgD/EoJEvccs/SoMULdm/MQP3xCFH603Upqk630ADrrYjaErTdYF1Rj86MjRKKYtQdGs3XeYunIU9G+kh01KqBxiT3XFZnn9ENNUezswTFJihhwA2L/ZZ/xXOBt8h/aCmi3SKvcqE0zwOu1mUomhYXPwSOBE4dkIO4Zr3LuDSScy4RJJ1hiTDlvxj8RnB8Q3CXytD6WaNz7WTDsIwEH/W12EYe7fMxjzDmWCKDqXBw8I4fMzkZyrjzGDnllEn1fWnjpkcuehGn5huEKjbFs6MhyddEIgibtyMUNt2WiGSXDyOVN9xC/Io3v6M=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6922.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(136003)(366004)(376002)(346002)(39840400004)(64756008)(66556008)(38100700002)(8936002)(66946007)(66446008)(2906002)(66476007)(76116006)(8676002)(91956017)(122000001)(55016002)(5660300002)(6916009)(71200400001)(52536014)(478600001)(6506007)(86362001)(786003)(4744005)(19627405001)(3480700007)(75432002)(26005)(21615005)(186003)(7696005)(966005)(9686003)(166002)(83380400001)(316002)(33656002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SkViSTJQNjFHWGFQakw5UHFwRHBpU2V3MFpCK2Y1WEpXcUtIb3FWWnhKYXVt?=
 =?utf-8?B?YWx4M3lMdHdDaXlTMkEvc0p6WkVsYVJ6UEJmM1kzNEY5d2h2Y0ZOYzBEbnpF?=
 =?utf-8?B?Q0h3N0dFczYrSTYrLzNZaGIwMTI0Rk1rTlRaOWozWHpTRGtqOHBidmxaT0tn?=
 =?utf-8?B?eDhOV3ZIMnJVYVBoa015aHppaVlBZGhLUkRJaG5ZT1J1MUlzUldsZ2pXSXVU?=
 =?utf-8?B?a0lsdHZ0bHM0YmxKRWRpRXZac25hWDBNR2E1NkZvL2loRDVwcXFhUGNBQkI4?=
 =?utf-8?B?T2V3NE9UNnF4WjY3eEY3SWh1cUJaeHd3a2xxeE8wZ3ZneXlVRjZVenNzbk02?=
 =?utf-8?B?dTFicktTZGRiVDRjT1VWYUFGd0hFU3pCSlNHQktJUzRRZER2TEJFWk9ua2pi?=
 =?utf-8?B?WTZqcGRqenFKRGF1Qnc5aS9nb0ZHQ1B0eC9jYUhkaHdQSDB6UTNrSmZZcURJ?=
 =?utf-8?B?L3RnTlBtVzQxdWtOZTlRS1JyMW9hTVpZYlVsbHdHclFDOVRkbVpxUFJ2MXdk?=
 =?utf-8?B?VVZ4WkxuSVdlUzRmWDZUVVB5amVpK3lSQ0hIZjJGdGxYWGdMdlgxYjREblVW?=
 =?utf-8?B?amdvdzVnUWlnOVp1L0VKcjgrT2d2bnEzTTl4S1ZGaWdIdEdsRWtxT1ROZVFO?=
 =?utf-8?B?VjNvaEpRVE1xSlQwY2xwZlV2T3k5VDF5QzlRZ0dKMHYzTndLQndycW96MDly?=
 =?utf-8?B?Smh1aE5JMWpON0ZBdVE0R0Jjdml6bDFLWWhtSDBIOWpPV1VqUjF1MWM2R3ZP?=
 =?utf-8?B?cDhDYVhkT3AxL1RTZHRleC9kUHhFdG4xdXV1UEF5Nlk3K0J4UnoyWWJWWnZK?=
 =?utf-8?B?Z2JXbkwxYjE5aEhjNDB0R204b0xVVVFLOGw3OHNrVmI2RFE3b1U5RGVPL0x3?=
 =?utf-8?B?RlJRV2MwU2JFckxVMVBvZHI3Qkp0QUp6dGNseVYyU3VnUGJpSWZyMlBJZTJB?=
 =?utf-8?B?Y3lUeC9Wc3pkSHVUWHVkbVI3bnhBMEdMVzIwZk4zOHJvbjhpVzd0elFZRFp3?=
 =?utf-8?B?SHp3UVZqaUxlVGpGRlkyRUZMTUJjWjhMSzhJbmVuVFRjNUppTGE5ZVRod09O?=
 =?utf-8?B?bUEvT0ZlTWJEVDlETXJCSjBjdm5Ld0RrNmUzdGtsQ2RXRUpxUm90TCt2ZlFS?=
 =?utf-8?B?SkxicEtoNFI1TVZuTnJOODg2Y3dZdUthRWFwVWxmaE84ZWJxQW5zZ3BLaTBq?=
 =?utf-8?B?eHVRUzRZZDZCU05DUWZ0dmlia3J0bG5JbHMvQ2M1NFEvaGJ1M09ySkZQMGdx?=
 =?utf-8?B?ZFduOHRkTDNvMmhicFk0L2h6ejllU2JmSi92TkM0ZTdTMHR6dkltNlR5VzZy?=
 =?utf-8?B?TmNzQ2dXWWdqQWlPRUR0QkZSM3QwcjlNZ05adGc3OHBva21COFl3M0FlY2hp?=
 =?utf-8?B?VWJDSzVBeU9aeVd5Tlo0R3pjc1ozWEFIOUdqU241aTdwN1VYL1JSa0FhL2VD?=
 =?utf-8?B?aGRNUzRTdzltUTNJbmtNcGpCZ01rVXV5T2FxQjZKTWg2T0huWTFOa3d1NTFx?=
 =?utf-8?B?Q2VCRlp4Mi9mSzZRaHoxdS9QMW9Cd2M2UDltaFIzYXhUNVVYS2pPdDNrYzhN?=
 =?utf-8?B?Mmt6Z1BIeDZISUFGdUkrQzltd1o0dUdFcXdOYmJDcGljRXRzZHZ3cW5YTFpk?=
 =?utf-8?B?emVMVnhwRU84eHYvREJtU2NpSTVzYWM2TTlyNGZucW5DenYzbUFoTmFQclBJ?=
 =?utf-8?B?MnpLVmlKeUg4VURNY0dFOE5XeVc4ZkR0QUxSNUJSc3JSUTczS2poSkFLb3N1?=
 =?utf-8?Q?QpyQFvcyYvmSGbY/pCXlPPBsbHmyG+Zh3l+6Dbw?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: uark.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR04MB6922.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f96a45e-dadb-43c8-3ae9-08d9310c9679
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2021 21:20:38.2645 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 79c742c4-e61c-4fa5-be89-a3cb566a80d1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Rbv4rnSJgyrDNhCjWujSTQxp94nq1VRv17s02Y6LvxtqEgVCuJFfBfSj4R7xPCFC
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR04MB1003
X-Mailman-Approved-At: Thu, 17 Jun 2021 05:35:17 +0000
Subject: [Spice-devel] License and Payment Required?
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
Content-Type: multipart/mixed; boundary="===============1462266663=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1462266663==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM6PR04MB6922A051AA74495D2FF0032AD10F9DM6PR04MB6922namp_"

--_000_DM6PR04MB6922A051AA74495D2FF0032AD10F9DM6PR04MB6922namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBqdXN0IGNyZWF0ZWQgYSBXaW5kb3dzIDEwIEd1ZXN0IGZvciBRRU1VXEtWTSBvbiBhIERlYmlh
biAxMCBob3N0IGFuZCB1bmZvcnR1bmF0ZWx5IGNvcHkvcGFzdGUgZG9lc24ndCB3b3JrLg0KDQpE
byBJIGhhdmUgdG8gcGF5IGEgZmVlIHRvIHVzZSB5b3VyIHRvb2xzIGF0Pw0KaHR0cHM6Ly93d3cu
c3BpY2Utc3BhY2Uub3JnL2Rvd25sb2FkLmh0bWwNCg0KTXkgZW1wbG95ZXIgd2lsbCBub3QgbGlr
ZWx5IGJlIHdpbGxpbmcgdG8gcGF5IGFueSBzdWNoIGZlZS4NCg0KQ29uZnVzZWQsDQoNCg0KU2hh
d24gRWFyeSDwn5Cx4oCN8J+RpA0KSW5mb3JtYXRpb24gVGVjaG5vbG9neSBTZXJ2aWNlcw0KPGh0
dHA6Ly9kaXJlY3RvcnkudWFyay5lZHUvZGVwYXJ0bWVudGFsLzQ0OC9VSVRTPig0NzkpIDU3NS02
OTQzDQpTeXN0ZW1zIEFuYWx5c3QNClVuaXZlcnNpdHkgb2YgQXJrYW5zYXM6IEFEU0IgMjAxDQpG
YXlldHRldmlsbGUsIEFSIDcyNzAxDQo=

--_000_DM6PR04MB6922A051AA74495D2FF0032AD10F9DM6PR04MB6922namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyIgc3R5bGU9
ImRpc3BsYXk6bm9uZTsiPiBQIHttYXJnaW4tdG9wOjA7bWFyZ2luLWJvdHRvbTowO30gPC9zdHls
ZT4NCjwvaGVhZD4NCjxib2R5IGRpcj0ibHRyIj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OiBD
YWxpYnJpLCBBcmlhbCwgSGVsdmV0aWNhLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDEycHQ7IGNv
bG9yOiByZ2IoMCwgMCwgMCk7Ij4NCkkganVzdCBjcmVhdGVkIGEgV2luZG93cyAxMCBHdWVzdCBm
b3IgUUVNVVxLVk0gb24gYSBEZWJpYW4gMTAgaG9zdCBhbmQgdW5mb3J0dW5hdGVseSBjb3B5L3Bh
c3RlIGRvZXNuJ3Qgd29yay48YnI+DQo8YnI+DQpEbyBJIGhhdmUgdG8gcGF5IGEgZmVlIHRvIHVz
ZSB5b3VyIHRvb2xzIGF0Pzxicj4NCjxhIGhyZWY9Imh0dHBzOi8vd3d3LnNwaWNlLXNwYWNlLm9y
Zy9kb3dubG9hZC5odG1sIiBpZD0iTFBsbms1MjU2MjIiPmh0dHBzOi8vd3d3LnNwaWNlLXNwYWNl
Lm9yZy9kb3dubG9hZC5odG1sPC9hPjxicj4NCjxicj4NCk15IGVtcGxveWVyIHdpbGwgbm90IGxp
a2VseSBiZSB3aWxsaW5nIHRvIHBheSBhbnkgc3VjaCBmZWUuPC9kaXY+DQo8ZGl2IHN0eWxlPSJm
b250LWZhbWlseTogQ2FsaWJyaSwgQXJpYWwsIEhlbHZldGljYSwgc2Fucy1zZXJpZjsgZm9udC1z
aXplOiAxMnB0OyBjb2xvcjogcmdiKDAsIDAsIDApOyI+DQo8YnI+DQo8L2Rpdj4NCjxkaXYgc3R5
bGU9ImZvbnQtZmFtaWx5OiBDYWxpYnJpLCBBcmlhbCwgSGVsdmV0aWNhLCBzYW5zLXNlcmlmOyBm
b250LXNpemU6IDEycHQ7IGNvbG9yOiByZ2IoMCwgMCwgMCk7Ij4NCkNvbmZ1c2VkLDxicj4NCjwv
ZGl2Pg0KPGRpdj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OiBDYWxpYnJpLCBBcmlhbCwgSGVs
dmV0aWNhLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDEycHQ7IGNvbG9yOiByZ2IoMCwgMCwgMCk7
Ij4NCjxicj4NCjwvZGl2Pg0KPGRpdiBpZD0iU2lnbmF0dXJlIj4NCjxkaXY+DQo8ZGl2PjwvZGl2
Pg0KPGRpdj48L2Rpdj4NCjxkaXYgc3R5bGU9ImZvbnQtc2l6ZToxM3B4OyBmb250LWZhbWlseTpU
YWhvbWEiPg0KPGRpdiBpZD0iYXBwV3JhcHBlciI+DQo8ZGl2IGNsYXNzPSJyb3ciPg0KPGRpdiBj
bGFzcz0iY29sLW1kLTYiPg0KPHA+PGZvbnQgc2l6ZT0iMiIgZmFjZT0iQ291cmllciBOZXciPlNo
YXduIEVhcnkg8J+QseKAjfCfkaQ8YnI+DQo8L2ZvbnQ+PGEgaHJlZj0iaHR0cDovL2RpcmVjdG9y
eS51YXJrLmVkdS9kZXBhcnRtZW50YWwvNDQ4L1VJVFMiPjxmb250IHNpemU9IjIiIGZhY2U9IkNv
dXJpZXIgTmV3Ij5JbmZvcm1hdGlvbiBUZWNobm9sb2d5IFNlcnZpY2VzPGJyPg0KPC9mb250Pjwv
YT48Zm9udCBzaXplPSIyIiBmYWNlPSJDb3VyaWVyIE5ldyI+KDQ3OSkgNTc1LTY5NDM8YnI+DQo8
L2ZvbnQ+PGZvbnQgc2l6ZT0iMiIgZmFjZT0iQ291cmllciBOZXciPlN5c3RlbXMgQW5hbHlzdDxi
cj4NCjwvZm9udD48Zm9udCBzaXplPSIyIiBmYWNlPSJDb3VyaWVyIE5ldyI+VW5pdmVyc2l0eSBv
ZiBBcmthbnNhczogQURTQiAyMDE8YnI+DQo8L2ZvbnQ+PGZvbnQgc2l6ZT0iMiIgZmFjZT0iQ291
cmllciBOZXciPkZheWV0dGV2aWxsZSwgQVIgNzI3MDE8L2ZvbnQ+PC9wPg0KPC9kaXY+DQo8L2Rp
dj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2JvZHk+DQo8L2h0
bWw+DQo=

--_000_DM6PR04MB6922A051AA74495D2FF0032AD10F9DM6PR04MB6922namp_--

--===============1462266663==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1462266663==--
