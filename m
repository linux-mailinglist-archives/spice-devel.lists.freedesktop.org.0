Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E3AA74B7F14
	for <lists+spice-devel@lfdr.de>; Wed, 16 Feb 2022 05:02:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5667510E1B7;
	Wed, 16 Feb 2022 04:02:42 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from JPN01-OS0-obe.outbound.protection.outlook.com
 (mail-os0jpn01olkn2103.outbound.protection.outlook.com [40.92.98.103])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C59410E1B7
 for <spice-devel@lists.freedesktop.org>; Wed, 16 Feb 2022 04:02:40 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c2fZblPCpml2wnRghqIT2+ebfG8Ds2nmT0k/Zb0GnBVyCkbKIlvOy+5s0Z56qv8MudQa4lhc34tQSVOY8N/7uM51bgW9nqYp1Bei5A2TVTerwUEdsyXfnFF95xLDaKydOiWjiSyw0/JcBSHswLqZdJtC+HdwNreAUj7LX1K3rRFZmWjaRIbD1H+l33sn7tdJEE2gQTESehEArr2Uw1P7jPIivltsM0DQECbEkzYf1Iw2F6du62kB4Nglfz1yecmqp7m0aBfD5fgbv+hl4W9OyJ3kRINVxppP/eS4GU2LwN9kgKknuvM262CXMVVFYHHiaBXBB/if4eNuog1D24A5Cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=odNz13NEj8rbNb7oB6V6kuJiATKRMGzIdJqfQ7UCHUg=;
 b=RrEcTp5xQQ7RYFckn+TlO0r5GrnAZ253cbn1iNnMm2WYDArpBiVkcdRPYUCyGXDF4ILbPsokI5qov4mgML1ClVW3kek79EezYBRgHmZnIBlso21Y/ZttzqpnOAj3RZBhv5IAAHAd20Ajk/x3ZKi/8a7Ay+0TDOX1e7hQiqKaZuhrEYLmznN7fREkkotT3sYJeieFoXKpVgx0ddzsBtL82f319MvTYTIgi2FvWL8PQo/y3xlz+vMh1lI++r9cnVkWLuYiGTIzyTwR+jPfeR4VWDkrlElSkNbD2+Gkcf4N+HiDSMqu7YqomS24/qq+u3Tit4ixSww6VyeklLhCWAy8iA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=odNz13NEj8rbNb7oB6V6kuJiATKRMGzIdJqfQ7UCHUg=;
 b=B7YTe3dBdKqRsYRkkADqdKJIi81qQjuKpJ3Z7FFd37XMAvnd/Znh67O3eVRt9fwVF2Z+eqJYbwnP/WaAmMHT9FMblWS7PSJXtaQGDRkf05CzDTdXrToURKT4DwkLKUz9DZBIerIKdw7CGqMkkoMDLKdp5/V8JGNMMhZi6UiP/+e+u27OFNeN1jVcuaeMTNerIVX2DytVdATcpAB9UVrsqtqRf8OPFCDUAZdJcpDURyDcBYdI2rV36SUB2TP9rgyYzp3J/R5hYx3Dn3Di5ZPB2su5Ihexz8los1g/6wCOLZRcArUu600DO9LR7ae51yU7OltmmDTaTWSQ6ETMZLiBLQ==
Received: from TYWP286MB2185.JPNP286.PROD.OUTLOOK.COM (2603:1096:400:174::5)
 by OSZP286MB2412.JPNP286.PROD.OUTLOOK.COM (2603:1096:604:1c4::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4975.14; Wed, 16 Feb
 2022 04:02:38 +0000
Received: from TYWP286MB2185.JPNP286.PROD.OUTLOOK.COM
 ([fe80::450d:7c73:fab0:c3d7]) by TYWP286MB2185.JPNP286.PROD.OUTLOOK.COM
 ([fe80::450d:7c73:fab0:c3d7%5]) with mapi id 15.20.4975.019; Wed, 16 Feb 2022
 04:02:38 +0000
Date: Wed, 16 Feb 2022 12:02:35 +0800
From: "smart_fool@hotmail.com" <smart_fool@hotmail.com>
To: =?GB2312?B?TGksIFpoaWppYW4=?= <lizhijian@cn.fujitsu.com>, 
 "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
References: <676eae2b-bb7c-2e89-6d0d-9a1cbc03ffa8@cn.fujitsu.com>
X-GUID: 737216BC-8CD8-47F9-AB50-F6B0C3D2B005
X-Has-Attach: no
X-Mailer: Foxmail 7.2.18.95[cn]
Message-ID: <TYWP286MB21853B3091EC81497C0AFA67E3359@TYWP286MB2185.JPNP286.PROD.OUTLOOK.COM>
Content-Type: multipart/alternative;
 boundary="----=_001_NextPart325414803508_=----"
X-TMN: [jWIKPW+VF6rRYZLbzfbwkzrEpjjr5pRj]
X-ClientProxiedBy: HK2PR03CA0047.apcprd03.prod.outlook.com
 (2603:1096:202:17::17) To TYWP286MB2185.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:174::5)
X-Microsoft-Original-Message-ID: <202202161202268297113@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 015bf292-a486-4714-5ea2-08d9f1012b98
X-MS-TrafficTypeDiagnostic: OSZP286MB2412:EE_
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: va40QllspNuIuIjyitqsotULS8m5P2os04hdN+1A0y4VzHy/nR/G+Pnu4phNjLr0C5NLu/uqc6EuUiu39Z5UtixcT4tNQQBlgvdOUCH/fjtawam7sWX4J7KSj4nPsiheXYLPYQPWe/uzPebHnam/m+DDYcKvhvyDz7oDYcwET8O+UFJNT98imE5Hc8wY63qujGTOGuumORccql64BLt0EyV87Ke3fI2Fm2DY2xFLivYQa9Vqss2BkTN2BgLpRDFTXrkbYSUTQuMQRWYNWWvCp/pri584Ee94iLXK9bHVC8xc9+WNgKxc9MTr8BxDA8qOPSDMreKe3AKvRiBbttvtPlpItrb/3awe1+O49CVL2jh+7OZyC/Q+WbmAkpFiXwiSA/cK6pQJ6yVzLOz3fm+8sIv2jfZQ1bezqKwmg9JpCDz//g89aJaiHDzldvNMinb1T1FzBq0winF061vqVEVFkh//Z4LxagfOHl0EyuDepoBDtC0hQhlpKatCjCH+bO5DWSGrD333VeoIpL3OMSj/nHjRuMaQgoD6hW282kL6JFLZY76zS29Xlwwz7u1fE1lWHaM7NmRvsZdjANsyag6+vOrqT1Et+ZqkKyeCaY9NYxNdK+DU0NgP/NiHIfdOMf3s
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?gb2312?B?d253YTVXcjBoaEZqNDZaOEZZb1dPWC9QRmF0YlJzZmJ3MWhCTFM0OWl1Ky9n?=
 =?gb2312?B?Tzl5M1g0dWx5bzNUTEorZ0t2cTZXT0gwNDZhRHVDaEVJRi9QVytTMlplNWZv?=
 =?gb2312?B?amw4emp2dDZ3bW9XblVSZllXZUNyQ3BkYVVrWWF5a3R4cXV2OVRvYy8vQktk?=
 =?gb2312?B?WHJ5a3R4UWdMNkRqZWhGYkd4bXdOSC9JRmhidjVFUE9wUVVHOHUrY2diZndI?=
 =?gb2312?B?NGQ4UmRmU1JyQ2c4ZFpRMm9BQVZwMWRBdzNqeFVSVExkbGM3bEczKzVZenV0?=
 =?gb2312?B?ZVlWcVliVE9JazVhblFjYWJNbnd0eGtDdmR2WEFselV0MGZmTVEvQy9ZQlR3?=
 =?gb2312?B?QVVPL05vaGxGNU1IVWxHdHVlUDhzbkc0eGp3TXBRN2lZODRGcmNsWlJ3ajVH?=
 =?gb2312?B?dHlOaXRoRU5nZjRhN1V0RjYxSklUaTRWMDZON2dST2RieG1KcHFrdWc1eldp?=
 =?gb2312?B?S1pHaWhwUEowWHBpQzcwckk0NXI3SGlaWC9ka3I4a2hmcytKK1RZSUdXU3U0?=
 =?gb2312?B?UGRKL1F2elMreXJnQmp2bzVpdFZpMmdUaFFVdU5QNjdBWngxYVZnaUNqRVp1?=
 =?gb2312?B?dDdJQmJTc2xTbjlCcHJScngwa1ZwSDJUaTJTaTdNZ3hIb2I4Ujh4UnBjcFgr?=
 =?gb2312?B?cGtqN2NFZ3V0SWdBT2p6TnlSbEZZTnFQZ0N5RS9wTGt0cFJpa050M1dwWDVj?=
 =?gb2312?B?SDAvbDYxUTdLd2pmdExMNU4waGw2djJvRnhoQS9wL1RPSmI1SFJQVERvU0Qx?=
 =?gb2312?B?WUl1TmJTRGlUV3pWOG5TY2VnRDVjWnhHYnBlb0FyY25ES0lIOXpsOFNCVnJT?=
 =?gb2312?B?Nng3UTlSak1NWVN2em9LT2RkYy9VNEpsR21Fb3NCUlM3aUg3TDR3Tkw5TWpt?=
 =?gb2312?B?RVFkSitUZVlTcUVoTFF0cURpRTg0dUJoYjhWQUpkbFcwSGFDbFlPQlRUK0xP?=
 =?gb2312?B?QlFlQWxVQ21HUWRhOUxXR0Yrc1JTUGMxUHRmWG9DUExMaFoxaFpuU0FwWVFR?=
 =?gb2312?B?S2wySGFwSlhGZ0VTRlZyNFpIa3NMVE9VOFBaeGJpcHRaWTFIQ1ozeURwdUV4?=
 =?gb2312?B?SHdkcDZvbDhwRWNhQjZPWGpCNEh5b29QakZDUW1IVFczSnBYY2E1K3JuTHkz?=
 =?gb2312?B?UU84ei9ub3RWU0txdndNSjdZUGZKa3Fodi9QNXczLzhJR282RzZhQU1tSDl1?=
 =?gb2312?B?MXFoeTVpWUdnMk9tRkgvajNnY3NLbTZYQzExT1NzbFF6L3IvL1YyclJEbE1a?=
 =?gb2312?B?V0ZmMk9ZRmZmU01PSjdxczZ3T3hVbUxPSE9XWVRhbXVmQlQyUT09?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-05f45.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 015bf292-a486-4714-5ea2-08d9f1012b98
X-MS-Exchange-CrossTenant-AuthSource: TYWP286MB2185.JPNP286.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2022 04:02:38.1284 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSZP286MB2412
Subject: [Spice-devel] =?gb2312?b?u9i4tDogIHVzYnJlZGlyIGRvZXNuJ3QgaGlk?=
 =?gb2312?b?ZS9maWx0ZXIgc3BlY2lmaWMgdXNiIGRldmljZXM=?=
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

------=_001_NextPart325414803508_=----
Content-Type: text/plain;
	charset="GB2312"
Content-Transfer-Encoding: base64

VHJ5IHRoaXMgcGFyYW1ldGVyIC0tc3BpY2UtdXNicmVkaXItcmVkaXJlY3Qtb24tY29ubmVjdD0i
LTEsMHgwYmRhLC0xLC0xLDAiDQoNCg0KDQpzbWFydF9mb29sQGhvdG1haWwuY29tDQogDQq3orz+
yMujuiBMaSwgWmhpamlhbg0Kt6LLzcqxvOSjuiAyMDIyLTAyLTE1IDIxOjQxDQrK1bz+yMujuiBz
cGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCtb3zOKjuiBbU3BpY2UtZGV2ZWxdIHVz
YnJlZGlyIGRvZXNuJ3QgaGlkZS9maWx0ZXIgc3BlY2lmaWMgdXNiIGRldmljZXMNCkhpIGd1eXMN
CiANCkkgaW50ZW5kZWQgdG8gbm90IGFsbG93IHJlZGlyZWN0aW5nIHNvbWUgb2YgbXkgdXNiIGRl
dmljZXMoSElEKSB0byB0aGUgZ3Vlc3QsIGkgdGhvdWdodCBodHRwczovL3d3dy5zcGljZS1zcGFj
ZS5vcmcvdXNicmVkaXIuaHRtbA0KY291bGQgaGVscCBvbiB0aGlzLg0KIA0KTXkgaG9zdCBoYXMg
YmVsb3cgdXNiIGRldmljZXMNCiANCmxpempARk5TVFBDOn4vd29ya3NwYWNlL3ZndC92aXJ0LXZp
ZXdlci9zcmMkIGxzdXNiDQpCdXMgMDAyIERldmljZSAwMDE6IElEIDFkNmI6MDAwMyBMaW51eCBG
b3VuZGF0aW9uIDMuMCByb290IGh1Yg0KQnVzIDAwMSBEZXZpY2UgMDA2OiBJRCAwNGQ4OjBiMmEg
TWljcm9jaGlwIFRlY2hub2xvZ3ksIEluYy4NCkJ1cyAwMDEgRGV2aWNlIDAyMTogSUQgMDQ2ZDpj
NTM0IExvZ2l0ZWNoLCBJbmMuIFVuaWZ5aW5nIFJlY2VpdmVyDQpCdXMgMDAxIERldmljZSAwMDQ6
IElEIDA0MjQ6MjEzNyBTdGFuZGFyZCBNaWNyb3N5c3RlbXMgQ29ycC4NCkJ1cyAwMDEgRGV2aWNl
IDAwMzogSUQgMGJkYTo4MTc2IFJlYWx0ZWsgU2VtaWNvbmR1Y3RvciBDb3JwLiBSVEw4MTg4Q1VT
IA0KODAyLjExbiBXTEFOIEFkYXB0ZXINCkJ1cyAwMDEgRGV2aWNlIDAwMjogSUQgMGJkYTo4Nzcx
IFJlYWx0ZWsgU2VtaWNvbmR1Y3RvciBDb3JwLg0KQnVzIDAwMSBEZXZpY2UgMDAxOiBJRCAxZDZi
OjAwMDIgTGludXggRm91bmRhdGlvbiAyLjAgcm9vdCBodWINCiANCiQgcmVtb3RlLXZpZXdlciAN
Ci0tc3BpY2UtdXNicmVkaXItYXV0by1yZWRpcmVjdC1maWx0ZXI9Ii0xLDB4MGJkYSwtMSwtMSww
IiAtLXNwaWNlLWRlYnVnIA0Kc3BpY2U6Ly9sb2NhbGhvc3Q6NTkwMA0KIA0KRm9yIHRlc3Rpbmcs
IGkganVzdCB3YW50IHRvIGhpZGUgcHJvZHVjZSBpZCAweDBiZGEgZnJvbSByZW1vdGUtdmlld2Vy
IA0Kd2l0aCBhYm92ZSBjb21tYW5kIGxpbmUuIEJ1dCBhY3V0YWxseQ0KIA0KaSBhbSBzdGlsbCBh
YmxlIHRvIHJlZGlyZWMgYm90aCBSZWFsdGVrIGRldmljZSB0byB0aGUgZ3Vlc3QgdGhyb3VnaCAN
CnJlbW90ZS12aWV3ZXIuDQogDQpTbyBpcyB0aGVyZSBzb21ldGhpbmcgd2l0aCBteSB1c2FnZSA/
IEZlZWwgZnJlZSB0byBsZXQgbWUga25vdyBpZiB0aGVyZSANCmlzIHNvbWV0aGluZyB3cm9uZy4N
CiANClRoYW5rcw0KIA0KWmhpamlhbg0KIA0KIA0KIA0K

------=_001_NextPart325414803508_=----
Content-Type: text/html;
	charset="GB2312"
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dgb2312"><=
style>body { line-height: 1.5; }blockquote { margin-top: 0px; margin-bottom=
: 0px; margin-left: 0.5em; }body { font-size: 14px; font-family: 'Microsoft=
 YaHei UI'; color: rgb(0, 0, 0); line-height: 1.5; }</style></head><body>=
=0A=
<div><span></span>Try this&nbsp;<span style=3D"color: rgba(0, 0, 0, 0.85098=
); font-family: 'Microsoft Yahei', Helvetica, 'PingFang SC', 'Helvetica Neu=
e', sans-serif, Arial, Verdana; font-size: 16px; orphans: 2; widows: 2; lin=
e-height: 1.5; background-color: transparent;">parameter</span><span style=
=3D"color: rgba(0, 0, 0, 0.85098); font-family: 'Microsoft Yahei', Helvetic=
a, 'PingFang SC', 'Helvetica Neue', sans-serif, Arial, Verdana; font-size: =
16px; orphans: 2; widows: 2; line-height: 1.5; background-color: transparen=
t;">&nbsp;</span><span style=3D"line-height: 1.5; background-color: transpa=
rent;">--spice-usbredir-redirect-on-connect=3D</span><span style=3D"line-he=
ight: 1.5; background-color: transparent;">&quot;-1,0x0bda,-1,-1,0&quot;</s=
pan></div>=0A=
<div><br></div><hr style=3D"width: 210px; height: 1px;" color=3D"#b5c4df" s=
ize=3D"1" align=3D"left">=0A=
<div><span><div style=3D"MARGIN: 10px; FONT-FAMILY: verdana; FONT-SIZE: 10p=
t"><div>smart_fool@hotmail.com</div></div></span></div>=0A=
<blockquote style=3D"margin-Top: 0px; margin-Bottom: 0px; margin-Left: 0.5e=
m; margin-Right: inherit"><div>&nbsp;</div><div style=3D"border:none;border=
-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm 0cm 0cm"><div style=3D"PADDING-R=
IGHT: 8px; PADDING-LEFT: 8px; FONT-SIZE: 12px;FONT-FAMILY:tahoma;COLOR:#000=
000; BACKGROUND: #efefef; PADDING-BOTTOM: 8px; PADDING-TOP: 8px"><div><b>=
=B7=A2=BC=FE=C8=CB=A3=BA</b>&nbsp;<a href=3D"mailto:lizhijian@cn.fujitsu.co=
m">Li, Zhijian</a></div><div><b>=B7=A2=CB=CD=CA=B1=BC=E4=A3=BA</b>&nbsp;202=
2-02-15&nbsp;21:41</div><div><b>=CA=D5=BC=FE=C8=CB=A3=BA</b>&nbsp;<a href=
=3D"mailto:spice-devel@lists.freedesktop.org">spice-devel@lists.freedesktop=
.org</a></div><div><b>=D6=F7=CC=E2=A3=BA</b>&nbsp;[Spice-devel] usbredir do=
esn't hide/filter specific usb devices</div></div></div><div><div>Hi guys</=
div>=0A=
<div>&nbsp;</div>=0A=
<div>I intended to not allow redirecting some of my usb devices(HID) to the=
 guest, i thought https://www.spice-space.org/usbredir.html</div>=0A=
<div>could help on this.</div>=0A=
<div>&nbsp;</div>=0A=
<div>My host has below usb devices</div>=0A=
<div>&nbsp;</div>=0A=
<div>lizj@FNSTPC:~/workspace/vgt/virt-viewer/src$ lsusb</div>=0A=
<div>Bus 002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub</div>=
=0A=
<div>Bus 001 Device 006: ID 04d8:0b2a Microchip Technology, Inc.</div>=0A=
<div>Bus 001 Device 021: ID 046d:c534 Logitech, Inc. Unifying Receiver</div=
>=0A=
<div>Bus 001 Device 004: ID 0424:2137 Standard Microsystems Corp.</div>=0A=
<div>Bus 001 Device 003: ID 0bda:8176 Realtek Semiconductor Corp. RTL8188CU=
S </div>=0A=
<div>802.11n WLAN Adapter</div>=0A=
<div>Bus 001 Device 002: ID 0bda:8771 Realtek Semiconductor Corp.</div>=0A=
<div>Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub</div>=
=0A=
<div>&nbsp;</div>=0A=
<div>$ remote-viewer </div>=0A=
<div>--spice-usbredir-auto-redirect-filter=3D&quot;-1,0x0bda,-1,-1,0&quot; =
--spice-debug </div>=0A=
<div>spice://localhost:5900</div>=0A=
<div>&nbsp;</div>=0A=
<div>For testing, i just want to hide produce id 0x0bda from remote-viewer =
</div>=0A=
<div>with above command line. But acutally</div>=0A=
<div>&nbsp;</div>=0A=
<div>i am still able to redirec both Realtek device to the guest through </=
div>=0A=
<div>remote-viewer.</div>=0A=
<div>&nbsp;</div>=0A=
<div>So is there something with my usage ? Feel free to let me know if ther=
e </div>=0A=
<div>is something wrong.</div>=0A=
<div>&nbsp;</div>=0A=
<div>Thanks</div>=0A=
<div>&nbsp;</div>=0A=
<div>Zhijian</div>=0A=
<div>&nbsp;</div>=0A=
<div>&nbsp;</div>=0A=
<div>&nbsp;</div>=0A=
</div></blockquote>=0A=
</body></html>=

------=_001_NextPart325414803508_=------
