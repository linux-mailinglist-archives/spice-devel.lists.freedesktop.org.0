Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3499F4C54C1
	for <lists+spice-devel@lfdr.de>; Sat, 26 Feb 2022 09:53:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA37410E414;
	Sat, 26 Feb 2022 08:53:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from esa12.fujitsucc.c3s2.iphmx.com (esa12.fujitsucc.c3s2.iphmx.com
 [216.71.156.125])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7744710E376
 for <spice-devel@lists.freedesktop.org>; Sat, 26 Feb 2022 02:14:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj1;
 t=1645841654; x=1677377654;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:mime-version;
 bh=dIsCk9JlIGrBZcIND2K/nSA0acTvOdJIcljJd78a4gQ=;
 b=IsKBWvhB6/udkLdMQp1/Yt/nZtKVBED30/PCWl9AxfnYtbd50jcMrdfc
 rhDK4742bdBRcMM4PHdJ8KKLcIPK/OEaO6ar08iwE2OsNZCjV2WtdpOMp
 bPEJyEhkK064bMFJ12AWVwgJ+nKWRI9biCiHVzeRJ3v7RQ0Ghqyn+cweb
 HwfIzGw9WpFM2iDbQV7LrQkDLDU3aF12D9DHj0kRo9SeRSwBCNZ5i+pMH
 680U1tU9W6t7pqvfK8tNN2xz8HUkwRBO4mKw/jQWHymkyOst3uD5Mmg+K
 gS3ywn7fA7ARpRz3x9v8KXHiKSW+uaE3+T4gfrBGhFsOJFkHaZv1JslvN A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10269"; a="50700126"
X-IronPort-AV: E=Sophos;i="5.90,138,1643641200"; d="scan'208,217";a="50700126"
Received: from mail-tycjpn01lp2174.outbound.protection.outlook.com (HELO
 JPN01-TYC-obe.outbound.protection.outlook.com) ([104.47.23.174])
 by ob1.fujitsucc.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2022 11:14:10 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=autuv6UMncUZFHE5crYm8eps4yWLipUbSF9wBThx44w97DDjBxLjr3FrMC5C6QX/vkle2GHyg97ranDYKW41/hhAaX2ycMJlN7/Qn5BMg8Ausi1CecDQxA4E0rqcztQLllG4XFQKsPpom6+nQbE8fd4diUVRlzl+EyqHsRowCaMgBoA887a9B9y8YNXXzfpwgUduq3OiAaGPxDL1xzZGSDVGtmGf+5vcZHQz4dEZBB/2eOSqC8VKoqOSB8FNNhaJrpV4HJuiw0nuPNJ9z23T+lLWTvwYlrzz4Qyw9vJu7joLv5YOvowLihCmnX5/aFQcz2wt4ZDxo1zODetq3i6KIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dIsCk9JlIGrBZcIND2K/nSA0acTvOdJIcljJd78a4gQ=;
 b=KcWN5kkAjcoq2VLiBe82EvRswFxsAmIyeLpst/SSaYMEbQEpIL6HHqZi6U0PoMSxtemjOArbvGS4fE3faeNvWRy6mDZF3Gk7VBhzkid0iPhZ6sZ7iKtBTEkZrnmtO+/xid7qkr5PJ2MamTUdCaOheRRhXF8LnryA6znjW8eyT/sdQT+qsuXsjnD2u5XsilL6srdQMXr1urv8ABbWlX3ZK/lKFHSo+88VEX5fEWmW5MkBZDuls1JemWxyygkhuEbr0fHDv7INERsxd8EE44c2RUinR2xK0sTzTkjdsU8AVrspY1TN33zou2YY7x4WSzBYBSHWvSrkTn4cLDrLCR/YAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fujitsu.com; dmarc=pass action=none header.from=fujitsu.com;
 dkim=pass header.d=fujitsu.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fujitsu.onmicrosoft.com; s=selector2-fujitsu-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dIsCk9JlIGrBZcIND2K/nSA0acTvOdJIcljJd78a4gQ=;
 b=hdyOsvI/1Lv0LX5hw6YacTWugP02+51L62riAyLJMEScjQoN+pZC4r7B3GhM1AL/RfT/QP+3aGBleUGFrHfVytsIHFRQPnukM6UE4CP2cpNiRJn+TbNUhCBqJo40RtTOA4XoQr/DnGJQdGtXi4b1qJC3V+NBA+DxISRQMcI8e7M=
Received: from TYCPR01MB9305.jpnprd01.prod.outlook.com (2603:1096:400:196::10)
 by OSAPR01MB7685.jpnprd01.prod.outlook.com (2603:1096:604:140::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.22; Sat, 26 Feb
 2022 02:14:07 +0000
Received: from TYCPR01MB9305.jpnprd01.prod.outlook.com
 ([fe80::a83c:6b2f:3f10:b182]) by TYCPR01MB9305.jpnprd01.prod.outlook.com
 ([fe80::a83c:6b2f:3f10:b182%5]) with mapi id 15.20.5017.026; Sat, 26 Feb 2022
 02:14:07 +0000
From: "lizhijian@fujitsu.com" <lizhijian@fujitsu.com>
To: Uri Lublin <uril@redhat.com>
Thread-Topic: [Spice-devel] usbredir doesn't hide/filter specific usb devices
Thread-Index: AQHYInHEhAS02jznUUC9WzGA3QUJIqyUsaeAgAAMi2mAAYL5AIAO5rDZ
Date: Sat, 26 Feb 2022 02:14:07 +0000
Message-ID: <TYCPR01MB9305774C7FA8F9780752BC08A53F9@TYCPR01MB9305.jpnprd01.prod.outlook.com>
References: <676eae2b-bb7c-2e89-6d0d-9a1cbc03ffa8@cn.fujitsu.com>
 <CAAg9qJ0cBHDqHoGGPvwtb7GeGXuM5foGhoo3g9wp-5wpP58j_g@mail.gmail.com>
 <TYCPR01MB9305A867046320ADF30122EBA5349@TYCPR01MB9305.jpnprd01.prod.outlook.com>
 <CAAg9qJ3nQp=RfWE2YKUsd2cvfWfS7C4HCmntsTYdnEoYmBRwxQ@mail.gmail.com>
In-Reply-To: <CAAg9qJ3nQp=RfWE2YKUsd2cvfWfS7C4HCmntsTYdnEoYmBRwxQ@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=fujitsu.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 06b4ab25-a063-4ae9-190e-08d9f8cdab61
x-ms-traffictypediagnostic: OSAPR01MB7685:EE_
x-microsoft-antispam-prvs: <OSAPR01MB76851B7E75D85F9BCDB739D3A53F9@OSAPR01MB7685.jpnprd01.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LwskEugpOXQtV3WNvKut0vaiyQHGtcMTB2ovgCZ5EgSDGUUyIla4S9GP6EEp57EQG3+J51pFoOglhOZbELvg6U+L8+ThKFbh7yNggbabrAYvx4jTaPlmpYQ/ENsLqNRffHSyV3uFZVgqYujEUfXiPZSRM4jBQJHhR6jmJBot39UEjGcUtq95vbqHBiP1B4Ib5Ki6rMTYGEWjMI5pKXFLK/oPlk7AMX6j0G27RJOhccl67mgwS9pKKORK44D6z+Zml54zD1lWrwTdUTZbJycy/Cu57oHeOFmAjrFV/0F+KxscGrj+qP/npWDAzIKkOhoY1WqBMgLCSKWaUm39e5hSGV4B/t8dtomug+KbjTUu8bWt2BSMP7CA4gFp2RowZZSmJ+t3tntdC/GrKjBIFkqihGn66Iss+h/XcLnnouwfK2W35EPD42TE/3ihGl6S01P7zqUDBVXJe7lWpnYirFR6JzT0PR9Z1lQWncMtt/627RzCIsYy9MGTVjazehLY8+aBG2yls+ZzZfMZ7mnavxL4MMCbYLSFWWJ1IpDS3XQNHEGBiiL2wHJA6ac2byvnol4lresAWKJPCiFjRjD1mZyHkDVXGEvAfBnTxEfusN9QC4yOcMC9PLiByoco79gwDouWGdCnoCaRGBgaDH7c6iXP2PkM/GuHCalMDsgwifysPOG8mJzESBG+UDEbigQBGgClh5dQjD95AGDLg5s4/R7I68c42Bbo7PVKrcsYT1AkayUeGGxqIs5763eMy/uR78lN5k5tbZwVIXsEcLdsUTkAQSU6s1/y9id1My0BWIBk+J4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:TYCPR01MB9305.jpnprd01.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(53546011)(52536014)(9686003)(7696005)(55016003)(5660300002)(64756008)(8676002)(76116006)(66946007)(66556008)(66476007)(66446008)(91956017)(86362001)(55236004)(8936002)(166002)(21615005)(71200400001)(45080400002)(6506007)(122000001)(82960400001)(6916009)(966005)(26005)(4326008)(38070700005)(186003)(508600001)(85182001)(38100700002)(2906002)(316002)(33656002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?gb2312?B?M3dSTjVENUlEOUJUeVdZbWdBU1E4aWdhZVNlRXJSOC9LWjhTTHE3VTQ1ZEFh?=
 =?gb2312?B?c2tKM01rWnZablFNM284V0JiV2FQOFdjMmhZWkhvdlU4L0pKSEZPZU1wTmF4?=
 =?gb2312?B?aGswbHBpK2ZEN3c1emQ2am80bXRIRzczakY5TGNRY3lHT3RrZ045SERsNnFs?=
 =?gb2312?B?RFdmM2FxMjRXQnREa0hkaDV3YXRaQjhpTjFlcXduNWJ2WkZFRW1nNWZmS3VO?=
 =?gb2312?B?Vkl3eEwwcWVxRXpsU2NGckRuSjlSNjgya1p5NGN6U1JFaHRuSUlQVTlYc29G?=
 =?gb2312?B?bHlwR3pRZXBRQ3QyTWgzZHRTanJIZDkyN1h4UXR3dVNheXI5dDZqVXRhNVNE?=
 =?gb2312?B?czByZ3h1L2Q5dTAxVjFnNWg2am1kbzhFKzljZUVqY1RDK1ExNkoxc2Z0NHhi?=
 =?gb2312?B?Qmt4by9RcmpYS00vVFlyTklVb3FhZDRIZGlrN1g5UDZjVkpETlI2RTdRaWli?=
 =?gb2312?B?NTFlQlNwVGNSSU5aYkVyL1p1bFYrZDg3M3FZdVRZZzB1cHVvd3ppWXgyS2Jr?=
 =?gb2312?B?QkRDaW9JaVR0VTZwSDV5NDk4TU15bENGMnROdW40emFNUWJjY1VnM3o1dGZT?=
 =?gb2312?B?SUgvdEtGc3NDMi9qQitENGlXMlQ5N2cwcWU1b1RjTWZiYjE3T0ZtcUhSNk0y?=
 =?gb2312?B?VnZ2djhaMVdtSjFPM0JzRGIxVWNSTExORE82NXJDQWV2NE5ON2RQMVViVDg4?=
 =?gb2312?B?VVEzYnNVNVc5Q3FUK0gxZ0pHeTlMdzYvSGk2SEZ4RHk1dXVmS0YxY3FpeVJK?=
 =?gb2312?B?NlhUb2JtU2t4T1BEN2cveG5xRVQ2dFcyVVlRMVJHbll6UU0ycFpqV1AwOUVn?=
 =?gb2312?B?SEloTkJhVVdMcDRQS2k3eUIxMVQ2ZUtsS1RqQVZpajlBYXpJdVJLTHgzWThT?=
 =?gb2312?B?a29DWDdlWDBaSXRMM2NlNDAxTFM4UTlQUFFQRU9QK3A3ZnRhd0VMK3Rhd2dk?=
 =?gb2312?B?aWlmY0czcnJEcUhyVTVGejViYXVTTG5RNzEzR2xMMkdnYXR4Qng5QVFjbG1j?=
 =?gb2312?B?UnplN3cyZ1pyc1JGd1ByazJubllrYlp0blNlM0JWSnh2TXFxZkt6Q3hZODBo?=
 =?gb2312?B?K2ZhbURSajVlMWYzRWJjTkxzRUZWeUxpWlB0N0tUdHZlcDIxaEhyNlpxRmYv?=
 =?gb2312?B?KzFaOXhrcDZEenRVUVRWQXZLSmduVC9lOU9ZN0MwV2tVSEpYbk1YMHBwRkh3?=
 =?gb2312?B?ZW1rdWRkdVZCOHdmQ0hUMGw2OHdZaDl5Wmw1cklLbkZRbFFEbDIwcWQzZzFY?=
 =?gb2312?B?VE1TeWtMR1RNeW9zekl4ZTVDb0taeU9qanBaWWQxTkk3ZVJGTy9xK3pYa25k?=
 =?gb2312?B?RjFzNVlxMXZXNXUwYVhCUENxSVZ6RW9uMXhXL2gveWFQa2hwYW5BMnpkR3NY?=
 =?gb2312?B?OWRGNUV2WFZJK04rRXlyRWM2d0gzSjJvWjNSNHB1cnJNZEg1SHJWVzdZQ0oz?=
 =?gb2312?B?cHowTzdNV21WWFV2L3YyTG9zR25xYmRsNFpyUTc5MmpMTU9HMUtJOGM3TGVs?=
 =?gb2312?B?aE1UbElFeVl2M29Ec2FKZlRTcXN0OHdiZzdUbUllZ2x4M09KMmp3ZzVid2N4?=
 =?gb2312?B?K1J5YmpxZkF0Slk2a1FKVzVvdjlObWZuUG41S3h1NDZ5RnNtTXFKQkRidENU?=
 =?gb2312?B?UlRFalJnZ1pDY1IxeFhEWW9VK0syenIxYlQ1SDQ3a0lOL290aXRvY0sxQkNP?=
 =?gb2312?B?UWhZSzMwa21pc0NLa3R0bEdBaFNtRGYyRUxFejl3ZzkwZG9sa254QmVoQlVk?=
 =?gb2312?B?TmluMUpyQjV5QkpmOHhkUkdVTTc5MW1HVkRjRU1nZVFmd05mbjIyWkkwdzFl?=
 =?gb2312?B?WEhreCtORCtVcDFEZCszOHh1dTRhcWJLK3huNFFxaDJkeGozMXQ2VUc4YzQy?=
 =?gb2312?B?QW92bDZ1L3NBbzM3ZENsNy9wZFFrUFhQbEpTZ3ZncG5TZklpdms4WHlCcHBi?=
 =?gb2312?B?VmlNWEl6aGpzSW9ISmVsajZ0Q0hEc2lQbk5naFFPbDFNaytjNGQyR1JHam84?=
 =?gb2312?B?bHM3cjN4K2prYzZyMGxkcGo1TlJLazI0Q1FWY1JwYk9YSkZKYnBybXVkU0ti?=
 =?gb2312?B?Z2dzT2ttWVJxNTJKZWcvbHBQM1JBbFh0Vi9KUTNEWE9UN2lpeU02K1g2QVVR?=
 =?gb2312?B?aVIvM1REOFJjRmpBK05HUWR6R3lEWEV2ZGV4R1M4SnNzdG8yWTNTaW54Z3A3?=
 =?gb2312?Q?kzjcIFU9gf9EXhBrof/5zwMdn/VU4mvp3jNCGSpKm9U1?=
Content-Type: multipart/alternative;
 boundary="_000_TYCPR01MB9305774C7FA8F9780752BC08A53F9TYCPR01MB9305jpnp_"
MIME-Version: 1.0
X-OriginatorOrg: fujitsu.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB9305.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06b4ab25-a063-4ae9-190e-08d9f8cdab61
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Feb 2022 02:14:07.1717 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a19f121d-81e1-4858-a9d8-736e267fd4c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dqHlfEbSFPyPCiW2zgU3fYTUfOvJTLmQ4ERCNtjo3zYYQUaUvoTNuL6v614i0WFZhxufjjNc4/YbepGPnh06Dw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSAPR01MB7685
X-Mailman-Approved-At: Sat, 26 Feb 2022 08:53:53 +0000
Subject: Re: [Spice-devel] usbredir doesn't hide/filter specific usb devices
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--_000_TYCPR01MB9305774C7FA8F9780752BC08A53F9TYCPR01MB9305jpnp_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

dGhhbmtzIGEgbG90ICBmb3IgeW91ciBraW5kbHkgZXhwbGFuYXRpb24uDQoNCg0KR2V0IE91dGxv
b2sgZm9yIEFuZHJvaWQ8aHR0cHM6Ly9ha2EubXMvQUFiOXlzZz4NCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fDQpGcm9tOiBVcmkgTHVibGluIDx1cmlsQHJlZGhhdC5jb20+DQpTZW50
OiBXZWRuZXNkYXksIEZlYnJ1YXJ5IDE2LCAyMDIyIDEwOjM5OjQwIFBNDQpUbzogTGksIFpoaWpp
YW4vwO4g1se84SA8bGl6aGlqaWFuQGZ1aml0c3UuY29tPg0KQ2M6IHNwaWNlLWRldmVsIDxzcGlj
ZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmc+DQpTdWJqZWN0OiBSZTogW1NwaWNlLWRldmVs
XSB1c2JyZWRpciBkb2Vzbid0IGhpZGUvZmlsdGVyIHNwZWNpZmljIHVzYiBkZXZpY2VzDQoNCk9u
IFR1ZSwgRmViIDE1LCAyMDIyIGF0IDU6NDEgUE0gbGl6aGlqaWFuQGZ1aml0c3UuY29tPG1haWx0
bzpsaXpoaWppYW5AZnVqaXRzdS5jb20+IDxsaXpoaWppYW5AZnVqaXRzdS5jb208bWFpbHRvOmxp
emhpamlhbkBmdWppdHN1LmNvbT4+IHdyb3RlOg0KPiBUaGUgYXV0by1yZWRpcmVjdC1maWx0ZXIg
b25seSB3b3JrcyBmb3IgYXV0by1yZWRpcmVjdGVkIFVTQiBkZXZpY2VzLg0KDQptYXkgaSBrbm93
IHdoYXQgImF1dG8tcmVkaXJlY3RlZCB1c2IgZGV2aWNlcyIgbWVhbiBoZXJlLiB3aGF0J3MgYXV0
by1yZWRpcmVjdC1maWx0ZXIgdXNlciBjYXNlLg0KDQoNClVTQiBkZXZpY2VzIHRoYXQgYXJlIGJl
aW5nIHBsdWdnZWQgaW4gd2hpbGUgdGhlIHJlbW90ZS12aWV3ZXIgd2luZG93IGlzIGluIGZvY3Vz
Lg0KU3VjaCBVU0IgZGV2aWNlcyBhcmUgYXV0by1yZWRpcmVjdCdlZCB0byB0aGUgZ3Vlc3QsIGJ1
dCBnbyB0aHJvdWdoIHRoZSBmaWx0ZXIgZmlyc3QuDQoNClVyaQ0KDQoNCg0KPiBXaGVuIGEgdXNl
ciBpcyBjaG9vc2luZyBhIGRldmljZSBmcm9tIHRoZSBtZW51LCB0aGUgZmlsdGVyIGRvZXMgbm90
IGFwcGx5Lg0KDQphbnkgaWRlYSB0byBoaWRlIHNwZWNpZmljIGhvc3QgdXNiIGRldmljZXMgZnJv
bSBndWVzdCBieSBjdXJyZW50IHNjaGVtZQ0KDQoNCkdldCBPdXRsb29rIGZvciBBbmRyb2lkPGh0
dHBzOi8vYWthLm1zL0FBYjl5c2c+DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
DQq3orz+yMs6IFVyaSBMdWJsaW4gPHVyaWxAcmVkaGF0LmNvbTxtYWlsdG86dXJpbEByZWRoYXQu
Y29tPj4NCreiy83KsbzkOiAyMDIyxOoy1MIxNcjV0MfG2rb+IDIyOjUwDQrK1bz+yMs6IExpLCBa
aGlqaWFuL8DuINbHvOENCrOty806IHNwaWNlLWRldmVsDQrW98ziOiBSZTogW1NwaWNlLWRldmVs
XSB1c2JyZWRpciBkb2Vzbid0IGhpZGUvZmlsdGVyIHNwZWNpZmljIHVzYiBkZXZpY2VzDQoNCkhp
IFpoaWppYW4sDQoNCk9uIFR1ZSwgRmViIDE1LCAyMDIyIGF0IDM6NTIgUE0gTGksIFpoaWppYW4g
PGxpemhpamlhbkBjbi5mdWppdHN1LmNvbTxtYWlsdG86bGl6aGlqaWFuQGNuLmZ1aml0c3UuY29t
Pj4gd3JvdGU6DQpIaSBndXlzDQoNCkkgaW50ZW5kZWQgdG8gbm90IGFsbG93IHJlZGlyZWN0aW5n
IHNvbWUgb2YgbXkgdXNiIGRldmljZXMoSElEKSB0byB0aGUgZ3Vlc3QsIGkgdGhvdWdodCBodHRw
czovL3d3dy5zcGljZS1zcGFjZS5vcmcvdXNicmVkaXIuaHRtbA0KY291bGQgaGVscCBvbiB0aGlz
Lg0KDQpNeSBob3N0IGhhcyBiZWxvdyB1c2IgZGV2aWNlcw0KDQpsaXpqQEZOU1RQQzp+L3dvcmtz
cGFjZS92Z3QvdmlydC12aWV3ZXIvc3JjJCBsc3VzYg0KQnVzIDAwMiBEZXZpY2UgMDAxOiBJRCAx
ZDZiOjAwMDMgTGludXggRm91bmRhdGlvbiAzLjAgcm9vdCBodWINCkJ1cyAwMDEgRGV2aWNlIDAw
NjogSUQgMDRkODowYjJhIE1pY3JvY2hpcCBUZWNobm9sb2d5LCBJbmMuDQpCdXMgMDAxIERldmlj
ZSAwMjE6IElEIDA0NmQ6YzUzNCBMb2dpdGVjaCwgSW5jLiBVbmlmeWluZyBSZWNlaXZlcg0KQnVz
IDAwMSBEZXZpY2UgMDA0OiBJRCAwNDI0OjIxMzcgU3RhbmRhcmQgTWljcm9zeXN0ZW1zIENvcnAu
DQpCdXMgMDAxIERldmljZSAwMDM6IElEIDBiZGE6ODE3NiBSZWFsdGVrIFNlbWljb25kdWN0b3Ig
Q29ycC4gUlRMODE4OENVUw0KODAyLjExbiBXTEFOIEFkYXB0ZXINCkJ1cyAwMDEgRGV2aWNlIDAw
MjogSUQgMGJkYTo4NzcxIFJlYWx0ZWsgU2VtaWNvbmR1Y3RvciBDb3JwLg0KQnVzIDAwMSBEZXZp
Y2UgMDAxOiBJRCAxZDZiOjAwMDIgTGludXggRm91bmRhdGlvbiAyLjAgcm9vdCBodWINCg0KJCBy
ZW1vdGUtdmlld2VyDQotLXNwaWNlLXVzYnJlZGlyLWF1dG8tcmVkaXJlY3QtZmlsdGVyPSItMSww
eDBiZGEsLTEsLTEsMCIgLS1zcGljZS1kZWJ1Zw0Kc3BpY2U6Ly9sb2NhbGhvc3Q6NTkwMA0KDQpG
b3IgdGVzdGluZywgaSBqdXN0IHdhbnQgdG8gaGlkZSBwcm9kdWNlIGlkIDB4MGJkYSBmcm9tIHJl
bW90ZS12aWV3ZXINCndpdGggYWJvdmUgY29tbWFuZCBsaW5lLiBCdXQgYWN1dGFsbHkNCg0KaSBh
bSBzdGlsbCBhYmxlIHRvIHJlZGlyZWMgYm90aCBSZWFsdGVrIGRldmljZSB0byB0aGUgZ3Vlc3Qg
dGhyb3VnaA0KcmVtb3RlLXZpZXdlci4NCg0KU28gaXMgdGhlcmUgc29tZXRoaW5nIHdpdGggbXkg
dXNhZ2UgPyBGZWVsIGZyZWUgdG8gbGV0IG1lIGtub3cgaWYgdGhlcmUNCmlzIHNvbWV0aGluZyB3
cm9uZy4NCg0KVGhlIGF1dG8tcmVkaXJlY3QtZmlsdGVyIG9ubHkgd29ya3MgZm9yIGF1dG8tcmVk
aXJlY3RlZCBVU0IgZGV2aWNlcy4NCldoZW4gYSB1c2VyIGlzIGNob29zaW5nIGEgZGV2aWNlIGZy
b20gdGhlIG1lbnUsIHRoZSBmaWx0ZXIgZG9lcyBub3QgYXBwbHkuDQoNClJlZ2FyZHMsDQogICAg
VXJpLlQNCg0KDQpUaGFua3MNCg0KWmhpamlhbg0KDQoNCg0KDQo=

--_000_TYCPR01MB9305774C7FA8F9780752BC08A53F9TYCPR01MB9305jpnp_
Content-Type: text/html; charset="gb2312"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dgb2312">
</head>
<body>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
" dir=3D"auto">
thanks a lot&nbsp; for your kindly explanation.</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
" dir=3D"auto">
<br>
</div>
<div id=3D"ms-outlook-mobile-signature">
<div><br>
</div>
Get <a href=3D"https://aka.ms/AAb9ysg">Outlook for Android</a></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Uri Lublin &lt;uril@r=
edhat.com&gt;<br>
<b>Sent:</b> Wednesday, February 16, 2022 10:39:40 PM<br>
<b>To:</b> Li, Zhijian/=C0=EE =D6=C7=BC=E1 &lt;lizhijian@fujitsu.com&gt;<br=
>
<b>Cc:</b> spice-devel &lt;spice-devel@lists.freedesktop.org&gt;<br>
<b>Subject:</b> Re: [Spice-devel] usbredir doesn't hide/filter specific usb=
 devices</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Tue, Feb 15, 2022 at 5:41 PM <a =
href=3D"mailto:lizhijian@fujitsu.com" target=3D"_blank">
lizhijian@fujitsu.com</a> &lt;<a href=3D"mailto:lizhijian@fujitsu.com" targ=
et=3D"_blank">lizhijian@fujitsu.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div>
<div dir=3D"auto" style=3D"color:rgb(33,33,33); background-color:rgb(255,25=
5,255)">&gt; The auto-redirect-filter only works for auto-redirected USB de=
vices.</div>
<div dir=3D"auto" style=3D"color:rgb(33,33,33); background-color:rgb(255,25=
5,255)"><br>
</div>
<div dir=3D"auto" style=3D"color:rgb(33,33,33); background-color:rgb(255,25=
5,255)">may i know what &quot;auto-redirected usb devices&quot; mean here. =
what's&nbsp;auto-redirect-filter user case.</div>
<div dir=3D"auto" style=3D"color:rgb(33,33,33); background-color:rgb(255,25=
5,255)"><br>
</div>
</div>
</blockquote>
<div><br>
</div>
<div>USB devices that are being plugged in while the remote-viewer window i=
s in focus.<br>
</div>
<div>Such USB devices are auto-redirect'ed to the guest, but go through the=
 filter first.</div>
<div><br>
</div>
<div>Uri</div>
<div><br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div>
<div dir=3D"auto" style=3D"color:rgb(33,33,33); background-color:rgb(255,25=
5,255)"></div>
<div dir=3D"auto" style=3D"color:rgb(33,33,33); background-color:rgb(255,25=
5,255)"><br>
</div>
<div dir=3D"auto" style=3D"color:rgb(33,33,33); background-color:rgb(255,25=
5,255)"><br>
</div>
<div dir=3D"auto" style=3D"color:rgb(33,33,33); background-color:rgb(255,25=
5,255)"><span>&gt; When a user is choosing a device from the menu, the filt=
er does not apply.</span></div>
<div id=3D"x_m_3220267789811850740gmail-m_8151785131361810437ms-outlook-mob=
ile-signature" dir=3D"auto">
<div><br>
</div>
<div dir=3D"auto">any idea to hide specific host usb devices from guest by =
current scheme</div>
<div dir=3D"auto"><br>
</div>
<div><br>
</div>
Get <a href=3D"https://aka.ms/AAb9ysg" target=3D"_blank">Outlook for Androi=
d</a></div>
<div id=3D"x_m_3220267789811850740gmail-m_8151785131361810437id-f6a8d475-5d=
cb-48a4-9fd6-b9df2cd42998">
<div style=3D"font-family:sans-serif; font-size:12.48pt; color:rgb(0,0,0)">=
<br>
</div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_m_3220267789811850740gmail-m_8151785131361810437divRplyFwdMsg"=
><b>=B7=A2=BC=FE=C8=CB:</b> Uri Lublin &lt;<a href=3D"mailto:uril@redhat.co=
m" target=3D"_blank">uril@redhat.com</a>&gt;<br>
<b>=B7=A2=CB=CD=CA=B1=BC=E4:</b> 2022=C4=EA2=D4=C215=C8=D5=D0=C7=C6=DA=B6=
=FE 22:50<br>
<b>=CA=D5=BC=FE=C8=CB:</b> Li, Zhijian/=C0=EE =D6=C7=BC=E1<br>
<b>=B3=AD=CB=CD:</b> spice-devel<br>
<b>=D6=F7=CC=E2:</b> Re: [Spice-devel] usbredir doesn't hide/filter specifi=
c usb devices<br>
</div>
<br>
<div dir=3D"ltr">
<div>Hi Zhijian,</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Tue, Feb 15, 2022 at 3:52 PM Li,=
 Zhijian &lt;<a href=3D"mailto:lizhijian@cn.fujitsu.com" target=3D"_blank">=
lizhijian@cn.fujitsu.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
Hi guys<br>
<br>
I intended to not allow redirecting some of my usb devices(HID) to the gues=
t, i thought
<a href=3D"https://www.spice-space.org/usbredir.html" rel=3D"noreferrer" ta=
rget=3D"_blank">
https://www.spice-space.org/usbredir.html</a><br>
could help on this.<br>
<br>
My host has below usb devices<br>
<br>
lizj@FNSTPC:~/workspace/vgt/virt-viewer/src$ lsusb<br>
Bus 002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub<br>
Bus 001 Device 006: ID 04d8:0b2a Microchip Technology, Inc.<br>
Bus 001 Device 021: ID 046d:c534 Logitech, Inc. Unifying Receiver<br>
Bus 001 Device 004: ID 0424:2137 Standard Microsystems Corp.<br>
Bus 001 Device 003: ID 0bda:8176 Realtek Semiconductor Corp. RTL8188CUS <br=
>
802.11n WLAN Adapter<br>
Bus 001 Device 002: ID 0bda:8771 Realtek Semiconductor Corp.<br>
Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub<br>
<br>
$ remote-viewer <br>
--spice-usbredir-auto-redirect-filter=3D&quot;-1,0x0bda,-1,-1,0&quot; --spi=
ce-debug <br>
spice://localhost:5900<br>
</blockquote>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<br>
For testing, i just want to hide produce id 0x0bda from remote-viewer <br>
with above command line. But acutally<br>
<br>
i am still able to redirec both Realtek device to the guest through <br>
remote-viewer.<br>
<br>
So is there something with my usage ? Feel free to let me know if there <br=
>
is something wrong.<br>
</blockquote>
<div><br>
</div>
<div>The auto-redirect-filter only works for auto-redirected USB devices.</=
div>
<div>When a user is choosing a device from the menu, the filter does not ap=
ply.</div>
<div><br>
</div>
<div>Regards,</div>
<div dir=3D"auto">&nbsp;&nbsp;&nbsp; Uri.T<br>
</div>
<div>&nbsp;</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<br>
Thanks<br>
<br>
Zhijian<br>
<br>
<br>
<br>
</blockquote>
</div>
</div>
<br>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</body>
</html>

--_000_TYCPR01MB9305774C7FA8F9780752BC08A53F9TYCPR01MB9305jpnp_--
