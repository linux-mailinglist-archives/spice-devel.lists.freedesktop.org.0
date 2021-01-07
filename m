Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 225362ECB02
	for <lists+spice-devel@lfdr.de>; Thu,  7 Jan 2021 08:40:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A42AB6E3F2;
	Thu,  7 Jan 2021 07:40:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from APC01-HK2-obe.outbound.protection.outlook.com
 (mail-eopbgr1300044.outbound.protection.outlook.com [40.107.130.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57A3C6E3DA
 for <spice-devel@lists.freedesktop.org>; Thu,  7 Jan 2021 06:22:25 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I53k0OWJ0eEE3hZE0xxB880GUd83zU+zdQHq1tb/TjPJy6kABJ2+kku02+ZW7Ownr5mouwlf1sAzKNVT7oMLWveZoF+9kdMkzrtvjjthWkwwyrw1ETIBzg8IR+o9LV+cYaPmz0dxLvXonz244ifGO0Nyehu+oM60rWGmN/aue0ivrqaAedNOHJR8+ZEqvfdZ9Xkd4SxCWVXMsWFTsfdgVCSUOrrbRhzSmRnDJigC6ygpfVBs96VptAjLEygPtNyR1gpOR4wUH8UNgw2XniJBpoZmTPe5BnK1r+qsqSkAWxX4s4HSB1gK1qDNjO+ZL6Y65BtHNlO//INf1eKl/uvEpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XXj08um1tunCZWICn0Z8HdB2f3xmxWcVHTon2E3+iww=;
 b=g9YviYwgUQTa3qX8kjbcVKzBxO01ZlzAs2gaPvgOXcuj+gyXZyJ5kn/TvgJ4kprAY3V4HHlxzm47Qglwh5fx1WqlzHqPYx2YTEzYwSx+Bb1C0TUpY+3qrFnROtIMFNxCbe6/jN4O1XUj590R8TySd6jhOmLL8fhdKtzW1yMEEWVFJ1kIuwgJtEIJBFcm6JHB53MY7bb89LmPcMTLbWcCw35E+DAXrpqT7Vj42rdpA8XLc1Rr5yZaW39d2xx/oz4N9xAwnudvhtYaWdFQk5NFZIMBnB+moWlaY7OAQRsrk25txAm897p2t0lhRn7P3+hD11oOhyWYqlBGQt3q+ZOZEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oppo.com; dmarc=pass action=none header.from=oppo.com;
 dkim=pass header.d=oppo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oppoglobal.onmicrosoft.com; s=selector1-oppoglobal-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XXj08um1tunCZWICn0Z8HdB2f3xmxWcVHTon2E3+iww=;
 b=YJTuzO4iJHFmPRNTUpMnZPQGgFd7F87l7p7dFMhq78kofYSszcHMQ/ruC/q6j652MxBiKhd4ahNyGOnfQ22nCY5dh5SxKp4gdWzVTn+15Tzteoz9C+a6vWDfVZwIpqIoMZL7VCEd3lsW6TYQ8+XSZ7cWGP9m4XMBrwm79v2HlUo=
Received: from HK0PR02MB3123.apcprd02.prod.outlook.com (2603:1096:203:6e::20)
 by HK0PR02MB3330.apcprd02.prod.outlook.com (2603:1096:203:3a::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6; Thu, 7 Jan
 2021 06:22:22 +0000
Received: from HK0PR02MB3123.apcprd02.prod.outlook.com
 ([fe80::f055:efc6:c2e0:fa04]) by HK0PR02MB3123.apcprd02.prod.outlook.com
 ([fe80::f055:efc6:c2e0:fa04%5]) with mapi id 15.20.3721.024; Thu, 7 Jan 2021
 06:22:22 +0000
From: =?utf-8?B?5YiY546J6ZuqKHl14oCGeHVlIExpdSk=?= <liuyuxue@oppo.com>
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?SGnvvIxHTCBhY2NlbGVyYXRpb24gKHZpcmdsKSBDYW4gdXNlIGl0IG9uIHdp?=
 =?utf-8?B?bmRvbnPvvJ8=?=
Thread-Index: AQHW5LxRSnw1tyhtJEawNPybXxq8TA==
Date: Thu, 7 Jan 2021 06:22:22 +0000
Message-ID: <HK0PR02MB31238306CBBD428A2E7EABFDA1AF0@HK0PR02MB3123.apcprd02.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=oppo.com;
x-originating-ip: [58.252.5.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 47b6163d-7d43-4561-3d38-08d8b2d497cb
x-ms-traffictypediagnostic: HK0PR02MB3330:
x-microsoft-antispam-prvs: <HK0PR02MB33301100D2F4B7AAA36D16B0A1AF0@HK0PR02MB3330.apcprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NDvYjjKh4PED6JxRbARfDtPnGQj30wHAT+gTwMGkgxEIOT6ugtgBX8ELAmBu6oGmyrqDQNRWDerwf0UfRorkNLDMZPc+i01K/a5JSSUzmfT5Ruuo3ohbMOExGBoW9or4hbnCyD7ptCU+LQycOJpaX1n8Fe4BrDGtSXadcSrJQZYwXpFXPYpjw0iDAjA6/eic729O5IdbBAf6qUdjR+X/+6ZuHFV7aKY7zpTp80KMQV6B/9CwF+9UeeViL9U0Nd4sF7Q5LZ/q+nV7Te3eKJGHcToYw42KHfn0BGN3xkyPs5TeiyZIAudygmsaF5lu64vNj85jvD71dD0IZgcPJPrtbqqmwzTpuG3gkCE7lLA/pM4wGJK/hgye+9jq8lvGKoibkc9Nr+bOTAapVjElGh4TRCDss1MmRryY4vq9CfS0szcjRrvjcMgSW+qjkkcBkaI7jOtbotgW4EuP+pqPJr77NlFWxzWflDvoUAvfRZQH7RLwVg8B/9MtqUj0xmruj0OrG7ph7P/jd7OR0zgrpSVSiA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HK0PR02MB3123.apcprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(39860400002)(346002)(136003)(376002)(366004)(8936002)(6916009)(316002)(7696005)(66446008)(76116006)(64756008)(66556008)(66946007)(66476007)(71200400001)(4744005)(52536014)(5660300002)(966005)(478600001)(19627405001)(2906002)(33656002)(21615005)(83380400001)(55016002)(85182001)(186003)(9686003)(26005)(6506007)(86362001)(166002)(11606006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?YThjYlF5MUh2SlNVT3FnVkNvMjVnVGVvbG1ISW1YUG0zcEFLYkVnWTRRNzh4?=
 =?utf-8?B?SXQwUGw3RkFOYmpxU2NvZFp2Tko0Qi8rNzJYUmZzNVdDa0Y1Vk4zMlpEWmJQ?=
 =?utf-8?B?Z1dld3VBb0IyYThlVkdSbGZCZzg1M1FCaVpISGhIMHZtckI5YmwyeE5MUG1o?=
 =?utf-8?B?Nmd6eTVFdk4xK2twc1oxM0JIREwycS90RElkeHNBWm1TSEdWWlVFMGlLN2ty?=
 =?utf-8?B?Z0xid2VFT3ZHTUoxWlRlWE9Odjk4OFJSS1QxSUdiNnpxTFg4Tm9HVjdGcmlR?=
 =?utf-8?B?RkdTSkV2RWFJSndNclh4MFVuZW8yRFhsMVBxUDA5b1JhWkFyTHNCTGlMQ1Er?=
 =?utf-8?B?ZWd0TUNld3FTTUUzSW9wQ0ZNS1ZDdmE2clI2UlhKVzlQdzEzM2xlY2NnQkhu?=
 =?utf-8?B?VU1uNUtLbjBhVW5Lc2RXZStwbGFzQXpWZzNwZGF2YisvekhMdDRKSGtPODV3?=
 =?utf-8?B?YnNvY3pEOXBIOHA5WmJSdGhqR0c1czM5YWpDZWRJNWl1R0dWOXpjMWRmNkxx?=
 =?utf-8?B?emVIbEhXL29lN1NCQWJ3UFAxajRaRjhoTlBSRUtGZGhrTERVWWJzTXBtQ2lJ?=
 =?utf-8?B?QlMyU3VxWkZSdUZETGFxT202SjhGam5nSEpkaGNRU2w2NjlabTdtQ2loelZm?=
 =?utf-8?B?bmkwSThLeG9jeVhtcTJZdVpFQ0tHNHBuWDgwUVpwWmhmYnhIbXRxMEVjMnR4?=
 =?utf-8?B?blJ4SndST0tkeEJnOWZ2bVJsU1N0NnNOWEFuc3FGbU5SVDQ0Z09KVkxpR0pE?=
 =?utf-8?B?ZXZTRlZMU2tIcndEQlBNcUlYYlRPRS8vWlpVRDQ3YUtiMTI1UnR0aGt4OW5F?=
 =?utf-8?B?UjlWbnVtQXNRY2RsVmY4N3VCNnNRUy9id0dXeFJKTS9JVVBBNVBPUHhsWE45?=
 =?utf-8?B?dFEvU0dPL3RrTUVOYTRrSk1NVlZ4SHZqbXdTV3ZhbnB1b3lsSGs2K2pZRWVT?=
 =?utf-8?B?SnBmaGFnZ3RNLzEvNUFYSmE5c0FDWU5kODliS2IrLzlLM2VmVlAyQ2NGeWRt?=
 =?utf-8?B?a1ZjeXlsc1lRREw2UnJYdVFsQkdjQ0Zna0FBdjlZS201UWhZR3F5RkRQU1l0?=
 =?utf-8?B?QVZVSzBjc1Y2L2NwR3dpNnQ0UHlGOTluK29COHIvRGd1MlNmdGZKdUJOM3U2?=
 =?utf-8?B?SUJGWlJjdzhTb0NCL2hZYWY0K1ZHbHhLNTAydDRXNW5UallNRy94L2dJUEtp?=
 =?utf-8?B?L1BwQzNOM1MzRXRNWnpzNFdMay9BYnBoTWNYZlZtVXFGVTFVU2NabkpRRmFK?=
 =?utf-8?B?S01sVDRGa2FNOEc2ZnRRdklRakFBa0VTSkhHUUNnS3F0T1RYSWJkRnFNZDVT?=
 =?utf-8?Q?hEb9NKhii/vjQ=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: oppo.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: HK0PR02MB3123.apcprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 47b6163d-7d43-4561-3d38-08d8b2d497cb
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2021 06:22:22.0876 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f1905eb1-c353-41c5-9516-62b4a54b5ee6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G9/orn6PuhncHXQdGyvtARvKNR2CxkoKo8CKklXFr5f2TIDSx+tfN7xqdC9tVnUabjrRroKnOlkmf6gVTS23ow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK0PR02MB3330
X-Mailman-Approved-At: Thu, 07 Jan 2021 07:40:01 +0000
Subject: [Spice-devel] =?utf-8?q?Hi=EF=BC=8CGL_acceleration_=28virgl=29_C?=
 =?utf-8?q?an_use_it_on_windons=EF=BC=9F?=
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
Content-Type: multipart/mixed; boundary="===============0278556942=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0278556942==
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_HK0PR02MB31238306CBBD428A2E7EABFDA1AF0HK0PR02MB3123apcp_"

--_000_HK0PR02MB31238306CBBD428A2E7EABFDA1AF0HK0PR02MB3123apcp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

IEhp77yMDQogICAzRCBncmFwaGljcyBhY2NlbGVyYXRpb24gdXNpbmcgdmlyZ2wgYW5kIGxvY2Fs
IHNwaWNlIGlzICBGZWF0dXJlcyBDYW4gdXNlIGl0IG9uIHdpbmRvbnPvvJ8NCiAgaHR0cHM6Ly93
d3cuc3BpY2Utc3BhY2Uub3JnL3NwaWNlLXVzZXItbWFudWFsLmh0bWwgIGludHJvZHVjZSB2aXJn
bCBPbmx5IGluIExpbnV477yfDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQpP
UFBPDQoNCuacrOeUteWtkOmCruS7tuWPiuWFtumZhOS7tuWQq+aciU9QUE/lhazlj7jnmoTkv53l
r4bkv6Hmga/vvIzku4XpmZDkuo7pgq7ku7bmjIfmmI7nmoTmlLbku7bkurrkvb/nlKjvvIjljIXl
kKvkuKrkurrlj4rnvqTnu4TvvInjgILnpoHmraLku7vkvZXkurrlnKjmnKrnu4/mjojmnYPnmoTm
g4XlhrXkuIvku6Xku7vkvZXlvaLlvI/kvb/nlKjjgILlpoLmnpzmgqjplJnmlLbkuobmnKzpgq7k
u7bvvIzor7fnq4vljbPku6XnlLXlrZDpgq7ku7bpgJrnn6Xlj5Hku7bkurrlubbliKDpmaTmnKzp
gq7ku7blj4rlhbbpmYTku7bjgIINCg0KVGhpcyBlLW1haWwgYW5kIGl0cyBhdHRhY2htZW50cyBj
b250YWluIGNvbmZpZGVudGlhbCBpbmZvcm1hdGlvbiBmcm9tIE9QUE8sIHdoaWNoIGlzIGludGVu
ZGVkIG9ubHkgZm9yIHRoZSBwZXJzb24gb3IgZW50aXR5IHdob3NlIGFkZHJlc3MgaXMgbGlzdGVk
IGFib3ZlLiBBbnkgdXNlIG9mIHRoZSBpbmZvcm1hdGlvbiBjb250YWluZWQgaGVyZWluIGluIGFu
eSB3YXkgKGluY2x1ZGluZywgYnV0IG5vdCBsaW1pdGVkIHRvLCB0b3RhbCBvciBwYXJ0aWFsIGRp
c2Nsb3N1cmUsIHJlcHJvZHVjdGlvbiwgb3IgZGlzc2VtaW5hdGlvbikgYnkgcGVyc29ucyBvdGhl
ciB0aGFuIHRoZSBpbnRlbmRlZCByZWNpcGllbnQocykgaXMgcHJvaGliaXRlZC4gSWYgeW91IHJl
Y2VpdmUgdGhpcyBlLW1haWwgaW4gZXJyb3IsIHBsZWFzZSBub3RpZnkgdGhlIHNlbmRlciBieSBw
aG9uZSBvciBlbWFpbCBpbW1lZGlhdGVseSBhbmQgZGVsZXRlIGl0IQ0K

--_000_HK0PR02MB31238306CBBD428A2E7EABFDA1AF0HK0PR02MB3123apcp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyIgc3R5bGU9
ImRpc3BsYXk6bm9uZTsiPiBQIHttYXJnaW4tdG9wOjA7bWFyZ2luLWJvdHRvbTowO30gPC9zdHls
ZT4NCjwvaGVhZD4NCjxib2R5IGRpcj0ibHRyIj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OiBD
YWxpYnJpLCBBcmlhbCwgSGVsdmV0aWNhLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDEycHQ7IGNv
bG9yOiByZ2IoMCwgMCwgMCk7Ij4NCiZuYnNwO0hp77yMPC9kaXY+DQo8ZGl2IHN0eWxlPSJmb250
LWZhbWlseTogQ2FsaWJyaSwgQXJpYWwsIEhlbHZldGljYSwgc2Fucy1zZXJpZjsgZm9udC1zaXpl
OiAxMnB0OyBjb2xvcjogcmdiKDAsIDAsIDApOyI+DQombmJzcDsgJm5ic3A7M0QgZ3JhcGhpY3Mg
YWNjZWxlcmF0aW9uIHVzaW5nIHZpcmdsIGFuZCBsb2NhbCBzcGljZSZuYnNwO2lzJm5ic3A7IEZl
YXR1cmVzPHNwYW4gc3R5bGU9ImNvbG9yOiByZ2IoNTEsIDUxLCA1MSk7IGZvbnQtZmFtaWx5OiBI
ZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDMwcHg7IGZvbnQtd2VpZ2h0
OiA1MDA7Ij4mbmJzcDtDYW4gdXNlIGl0IG9uIHdpbmRvbnPvvJ88L3NwYW4+PC9kaXY+DQo8ZGl2
IHN0eWxlPSJmb250LWZhbWlseTogQ2FsaWJyaSwgQXJpYWwsIEhlbHZldGljYSwgc2Fucy1zZXJp
ZjsgZm9udC1zaXplOiAxMnB0OyBjb2xvcjogcmdiKDAsIDAsIDApOyI+DQo8c3BhbiBzdHlsZT0i
Y29sb3I6IHJnYig1MSwgNTEsIDUxKTsgZm9udC1mYW1pbHk6IEhlbHZldGljYSwgQXJpYWwsIHNh
bnMtc2VyaWY7IGZvbnQtc2l6ZTogMzBweDsgZm9udC13ZWlnaHQ6IDUwMDsiPiZuYnNwOyZuYnNw
OzxhIGhyZWY9Imh0dHBzOi8vd3d3LnNwaWNlLXNwYWNlLm9yZy9zcGljZS11c2VyLW1hbnVhbC5o
dG1sIiBpZD0iTFBsbms5Nzg5MTYiPmh0dHBzOi8vd3d3LnNwaWNlLXNwYWNlLm9yZy9zcGljZS11
c2VyLW1hbnVhbC5odG1sPC9hPiZuYnNwOyBpbnRyb2R1Y2UmbmJzcDt2aXJnbCZuYnNwO09ubHkN
CiBpbiBMaW51eO+8nzwvc3Bhbj48L2Rpdj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OiBDYWxp
YnJpLCBBcmlhbCwgSGVsdmV0aWNhLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDEycHQ7IGNvbG9y
OiByZ2IoMCwgMCwgMCk7Ij4NCjxzcGFuIHN0eWxlPSJjb2xvcjogcmdiKDUxLCA1MSwgNTEpOyBm
b250LWZhbWlseTogSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAzMHB4
OyBmb250LXdlaWdodDogNTAwOyI+PGJyPg0KPC9zcGFuPjwvZGl2Pg0KPGhyPg0KPGRpdiBzdHls
ZT0iZm9udC1zaXplOiAxMnB4OyI+PHN0cm9uZyBzdHlsZT0iY29sb3I6IHJnYigwLCAxMDcsIDU1
KTsgZm9udC1mYW1pbHk6IEFyaWFsTVQ7Ij5PUFBPPC9zdHJvbmc+PC9kaXY+DQo8ZGl2IHN0eWxl
PSJmb250LXNpemU6IDEycHg7Ij48c3Ryb25nIHN0eWxlPSJjb2xvcjogcmdiKDAsIDEwNywgNTUp
OyBmb250LWZhbWlseTogQXJpYWxNVDsgZm9udC1zaXplOiAxNHB4OyI+PHNwYW4gc3R5bGU9ImZv
bnQtc2l6ZTogMTJweDsiPjxicj4NCjwvc3Bhbj48L3N0cm9uZz48L2Rpdj4NCjxkaXY+PC9kaXY+
DQo8ZGl2IHN0eWxlPSJjb2xvcjogcmdiKDQ5LCA1MywgNTkpOyBmb250LWZhbWlseTogSGVsdmV0
aWNhOyBmb250LXZhcmlhbnQtbnVtZXJpYzogbm9ybWFsOyBmb250LXZhcmlhbnQtZWFzdC1hc2lh
bjogbm9ybWFsOyBsaW5lLWhlaWdodDogMjIuNHB4OyB3aWRvd3M6IDE7Ij4NCjxzcGFuIHN0eWxl
PSJjb2xvcjogcmdiKDIwMiwgMjAyLCAyMDApOyBmb250LWZhbWlseTogQXJpYWxNVDsgZm9udC1z
aXplOiAxMnB4OyI+5pys55S15a2Q6YKu5Lu25Y+K5YW26ZmE5Lu25ZCr5pyJPHNwYW4gc3R5bGU9
ImZvbnQtc3RyZXRjaDogbm9ybWFsOyBsaW5lLWhlaWdodDogbm9ybWFsOyI+T1BQTzwvc3Bhbj7l
hazlj7jnmoTkv53lr4bkv6Hmga/vvIzku4XpmZDkuo7pgq7ku7bmjIfmmI7nmoTmlLbku7bkurrk
vb/nlKjvvIjljIXlkKvkuKrkurrlj4rnvqTnu4TvvInjgILnpoHmraLku7vkvZXkurrlnKjmnKrn
u4/mjojmnYPnmoTmg4XlhrXkuIvku6Xku7vkvZXlvaLlvI/kvb/nlKjjgILlpoLmnpzmgqjplJnm
lLbkuobmnKzpgq7ku7bvvIw8L3NwYW4+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OiBBcmlhbE1U
OyBjb2xvcjogcmdiKDIwMiwgMjAyLCAyMDApOyBmb250LXNpemU6IDEycHg7Ij7or7fnq4vljbPk
u6XnlLXlrZDpgq7ku7bpgJrnn6Xlj5Hku7bkurrlubbliKDpmaTmnKzpgq7ku7blj4rlhbbpmYTk
u7bjgII8L3NwYW4+PC9kaXY+DQo8ZGl2IHN0eWxlPSJjb2xvcjogcmdiKDQ5LCA1MywgNTkpOyBm
b250LWZhbWlseTogSGVsdmV0aWNhOyBmb250LXZhcmlhbnQtbnVtZXJpYzogbm9ybWFsOyBmb250
LXZhcmlhbnQtZWFzdC1hc2lhbjogbm9ybWFsOyBsaW5lLWhlaWdodDogMjIuNHB4OyB3aWRvd3M6
IDE7Ij4NCjxwIHN0eWxlPSJtYXJnaW46IDBweDsgZm9udC1zdHJldGNoOiBub3JtYWw7IGxpbmUt
aGVpZ2h0OiBub3JtYWw7IG1pbi1oZWlnaHQ6IDE1cHg7Ij4NCjxzcGFuIHN0eWxlPSJjb2xvcjog
cmdiKDIwMiwgMjAyLCAyMDApOyI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogMTJweDsgZm9udC1m
YW1pbHk6IEFyaWFsTVQ7Ij5UaGlzIGUtbWFpbCBhbmQgaXRzIGF0dGFjaG1lbnRzIGNvbnRhaW4g
Y29uZmlkZW50aWFsIGluZm9ybWF0aW9uIGZyb20gT1BQTzwvc3Bhbj48c3BhbiBzdHlsZT0iZm9u
dC1zaXplOiAxMnB4OyBmb250LWZhbWlseTogQXJpYWxNVDsgZm9udC1zdHJldGNoOiBub3JtYWw7
IGxpbmUtaGVpZ2h0OiBub3JtYWw7Ij4sPC9zcGFuPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IDEy
cHg7IGZvbnQtZmFtaWx5OiBBcmlhbE1UOyI+Jm5ic3A7d2hpY2gNCiBpcyBpbnRlbmRlZCBvbmx5
IGZvciB0aGUgcGVyc29uIG9yIGVudGl0eSB3aG9zZSBhZGRyZXNzIGlzIGxpc3RlZCBhYm92ZS4g
QW55IHVzZSBvZiB0aGUgaW5mb3JtYXRpb24gY29udGFpbmVkIGhlcmVpbiBpbiBhbnkgd2F5Jm5i
c3A7PC9zcGFuPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IDEycHg7IGZvbnQtZmFtaWx5OiBBcmlh
bE1UOyBmb250LXN0cmV0Y2g6IG5vcm1hbDsgbGluZS1oZWlnaHQ6IG5vcm1hbDsiPig8L3NwYW4+
PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogMTJweDsgZm9udC1mYW1pbHk6IEFyaWFsTVQ7Ij5pbmNs
dWRpbmc8L3NwYW4+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogMTJweDsgZm9udC1mYW1pbHk6IEFy
aWFsTVQ7IGZvbnQtc3RyZXRjaDogbm9ybWFsOyBsaW5lLWhlaWdodDogbm9ybWFsOyI+LDwvc3Bh
bj48c3BhbiBzdHlsZT0iZm9udC1zaXplOiAxMnB4OyBmb250LWZhbWlseTogQXJpYWxNVDsiPiZu
YnNwO2J1dA0KIG5vdCBsaW1pdGVkIHRvPC9zcGFuPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IDEy
cHg7IGZvbnQtZmFtaWx5OiBBcmlhbE1UOyBmb250LXN0cmV0Y2g6IG5vcm1hbDsgbGluZS1oZWln
aHQ6IG5vcm1hbDsiPiw8L3NwYW4+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogMTJweDsgZm9udC1m
YW1pbHk6IEFyaWFsTVQ7Ij4mbmJzcDt0b3RhbCBvciBwYXJ0aWFsIGRpc2Nsb3N1cmU8L3NwYW4+
PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogMTJweDsgZm9udC1mYW1pbHk6IEFyaWFsTVQ7IGZvbnQt
c3RyZXRjaDogbm9ybWFsOyBsaW5lLWhlaWdodDogbm9ybWFsOyI+LDwvc3Bhbj48c3BhbiBzdHls
ZT0iZm9udC1zaXplOiAxMnB4OyBmb250LWZhbWlseTogQXJpYWxNVDsiPiZuYnNwO3JlcHJvZHVj
dGlvbjwvc3Bhbj48c3BhbiBzdHlsZT0iZm9udC1zaXplOiAxMnB4OyBmb250LWZhbWlseTogQXJp
YWxNVDsgZm9udC1zdHJldGNoOiBub3JtYWw7IGxpbmUtaGVpZ2h0OiBub3JtYWw7Ij4sPC9zcGFu
PjxzcGFuIHN0eWxlPSJmb250LXNpemU6IDEycHg7IGZvbnQtZmFtaWx5OiBBcmlhbE1UOyI+Jm5i
c3A7b3INCiBkaXNzZW1pbmF0aW9uPC9zcGFuPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IDEycHg7
IGZvbnQtZmFtaWx5OiBBcmlhbE1UOyBmb250LXN0cmV0Y2g6IG5vcm1hbDsgbGluZS1oZWlnaHQ6
IG5vcm1hbDsiPik8L3NwYW4+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogMTJweDsgZm9udC1mYW1p
bHk6IEFyaWFsTVQ7Ij4mbmJzcDtieSBwZXJzb25zIG90aGVyIHRoYW4gdGhlIGludGVuZGVkIHJl
Y2lwaWVudDwvc3Bhbj48c3BhbiBzdHlsZT0iZm9udC1zaXplOiAxMnB4OyBmb250LWZhbWlseTog
QXJpYWxNVDsgZm9udC1zdHJldGNoOiBub3JtYWw7IGxpbmUtaGVpZ2h0OiBub3JtYWw7Ij4oPC9z
cGFuPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IDEycHg7IGZvbnQtZmFtaWx5OiBBcmlhbE1UOyI+
czwvc3Bhbj48c3BhbiBzdHlsZT0iZm9udC1zaXplOiAxMnB4OyBmb250LWZhbWlseTogQXJpYWxN
VDsgZm9udC1zdHJldGNoOiBub3JtYWw7IGxpbmUtaGVpZ2h0OiBub3JtYWw7Ij4pPC9zcGFuPjxz
cGFuIHN0eWxlPSJmb250LXNpemU6IDEycHg7IGZvbnQtZmFtaWx5OiBBcmlhbE1UOyI+Jm5ic3A7
aXMNCiBwcm9oaWJpdGVkLiBJZiB5b3UgcmVjZWl2ZSB0aGlzIGUtbWFpbCBpbiBlcnJvcjwvc3Bh
bj48c3BhbiBzdHlsZT0iZm9udC1zaXplOiAxMnB4OyBmb250LWZhbWlseTogQXJpYWxNVDsgZm9u
dC1zdHJldGNoOiBub3JtYWw7IGxpbmUtaGVpZ2h0OiBub3JtYWw7Ij4sPC9zcGFuPjxzcGFuIHN0
eWxlPSJmb250LXNpemU6IDEycHg7IGZvbnQtZmFtaWx5OiBBcmlhbE1UOyI+Jm5ic3A7cGxlYXNl
IG5vdGlmeSB0aGUgc2VuZGVyIGJ5IHBob25lIG9yIGVtYWlsIGltbWVkaWF0ZWx5DQogYW5kIGRl
bGV0ZSBpdCE8L3NwYW4+PC9zcGFuPjwvcD4NCjwvZGl2Pg0KPGRpdj48L2Rpdj4NCjwvYm9keT4N
CjwvaHRtbD4NCg==

--_000_HK0PR02MB31238306CBBD428A2E7EABFDA1AF0HK0PR02MB3123apcp_--

--===============0278556942==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0278556942==--
