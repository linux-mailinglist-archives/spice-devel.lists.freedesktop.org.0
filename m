Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F45C2E32EA
	for <lists+spice-devel@lfdr.de>; Sun, 27 Dec 2020 22:22:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 082BF898C8;
	Sun, 27 Dec 2020 21:22:13 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from APC01-HK2-obe.outbound.protection.outlook.com
 (mail-eopbgr1300049.outbound.protection.outlook.com [40.107.130.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12C9F89A67
 for <spice-devel@lists.freedesktop.org>; Thu, 24 Dec 2020 12:03:18 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oaP99FCs13QJHyRgcuV9H2UstJuUDV5jUy26LXy8udEfAW7QWg3plsUMEibRdl9bFnh3hfX/Ed6yyOi7ILrQ8ImzSRniMZNgWkdAQqpCCYh7gUvsmWsD8Z7uUwcMMJE2VjWCRvauAR2F3+cxVsWXsbzw4EJiYK1hIaGD4RZxarncFMwYgTvhy92FRPwfOcB+W+u4+A0X+rLOmpt6RaEEjbH3/ypfhmtehrHcAD77ATmikasVwwfgM8yOT28hNx4b7je5izmlZiCsxszyxalTpKj/KE58dDg9zjTbRKmHv+JN8L2Hz3mM/gfue7nOAY+6i3jS9UAPxqloQJTafHKNTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PccfU5hg/5M40dYvyPfMnhNUGvnP2Rl1daztsYRW6hw=;
 b=ogl1EmP9qBSSiiT2qisDFEsssYjkew2a4uZqZVfor1vTVWX+1u1VfBSqyUCcqH+qU56A7q7p9GZJT4Nrz2rgN1oN0wD3ICjmqSliE6ZR+8aev2kyun3XxaB3fvvtQvjjk0Y2xnp/fmLejobatLiuHxbmf0lgtCFbqEhlYMRTEn+C2P/7n5IGtHMt1in1krEEHnWrnUcCtw/ZWBCxztuKhSnOSNfl7xpfKEt1IEIgbCSbLfp3i1rKddVnoeWITquewKjB9kKmV5JRrMOseeZEhJc5a5PrFBR3RxgQxgo20GdOcgbOGgl1epIOGVN+HQgt0qWCnQkAy8OnEIMQ8PVicA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oppo.com; dmarc=pass action=none header.from=oppo.com;
 dkim=pass header.d=oppo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oppoglobal.onmicrosoft.com; s=selector1-oppoglobal-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PccfU5hg/5M40dYvyPfMnhNUGvnP2Rl1daztsYRW6hw=;
 b=GJ1UGxdQAAiCF5YGCp0YA0s8F+f5pISZO1EX9k7vXDKgjxc9SrsPMv4RGtaYpqvV7STh06m5jN7jPjX7Uek9PRtNcEL+xgbxF8+2Mt9CvMBYKJSe/ymK51cHStTJ+5WGdWwLj4mF1+qfkm7/MpLK8ZLJijMFWhkcEosQs6C1v7U=
Received: from HK0PR02MB2755.apcprd02.prod.outlook.com (2603:1096:203:62::9)
 by HK2PR02MB3923.apcprd02.prod.outlook.com (2603:1096:202:26::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3676.25; Thu, 24 Dec
 2020 12:03:13 +0000
Received: from HK0PR02MB2755.apcprd02.prod.outlook.com
 ([fe80::ed55:f94f:d213:7ca8]) by HK0PR02MB2755.apcprd02.prod.outlook.com
 ([fe80::ed55:f94f:d213:7ca8%6]) with mapi id 15.20.3676.034; Thu, 24 Dec 2020
 12:03:13 +0000
From: =?gb2312?B?y+/D+tH0KE1pbmd5YW5nIFN1bik=?= <sunmingyang@oppo.com>
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Thread-Topic: enable GPU(AMD) rendering with QXL using SPICE
Thread-Index: AdbZ6/KAPSAAqUj1SUCe+GlAQ8hFoA==
Date: Thu, 24 Dec 2020 12:03:13 +0000
Message-ID: <HK0PR02MB2755258F3D299C737C438E80C1DD0@HK0PR02MB2755.apcprd02.prod.outlook.com>
Accept-Language: en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=oppo.com;
x-originating-ip: [58.252.5.70]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c809fe26-b7eb-437f-becc-08d8a803e3eb
x-ms-traffictypediagnostic: HK2PR02MB3923:
x-microsoft-antispam-prvs: <HK2PR02MB39237547E02B30DFBFA30232C1DD0@HK2PR02MB3923.apcprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ygupC2VXPHoQbj7cFfk48/S9QHqjLxgm1w8EAn0l0QNj5HM4HkynyDRUC8yDM5Ech/yks6IZZFZ8FgEADaXEuqdEI7MPRlRkBoZhBPpTmqcQKOKFrQMU9arQpkSxSdJunRVR9QRtwJJGLQwlMYRiDCOiwA/ZB0pkNb4hINeZsP/My4/U3PyP4ne4YfiUpQ/DydGd8egmbFZf7MluIkA4e78U/wgvPfWHpvmQq7eSOvGIUCj0vW0HEs6vnSIQmbAm4FkuTAIMJ2rXWf4Yb8QBbvm8dyWgndgNz8sv4JXF7BhZZLH0hESJcWrMaFxSdTixVIFPokQ4BxYf2iUaNo9Np4TYcVzkJ8Bxpk88o7qeeKf+zi6bDBXpe6m4DwBCl0I4SJ+GZ9sS/g+y6tB2kz8jiiHvO4d3gbp4i5kmFydxXZhviqfd5AOfeDaPl42gi4PX
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HK0PR02MB2755.apcprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(376002)(39860400002)(396003)(136003)(366004)(6916009)(26005)(9686003)(7696005)(66946007)(86362001)(6506007)(66476007)(76116006)(55016002)(8676002)(83380400001)(66556008)(186003)(52536014)(71200400001)(2906002)(85182001)(8936002)(478600001)(5660300002)(33656002)(66446008)(316002)(64756008)(11606006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: =?gb2312?B?cDROWUhrQ2FWNzhyeU1GRktCUmRXeXdqaFpTWnhiYUd6emdNeDZiZnl3emZh?=
 =?gb2312?B?ZlhxMnlKSklwOGFqc0lhQ2pQQ01qeStEaXZsSThRc0lRNzlHQUxaRDlLOXFW?=
 =?gb2312?B?ekR4NDlqRng3OC96a0pFdnc5aHBiMHBacWVqT2xsempIOHhIMzFJeWVGZmFG?=
 =?gb2312?B?MkE0RDBMZ1VmdUUyRVFQaUJrNGVBZzFaNERORmxtcEZBR2pnWHJRUW4vNWIz?=
 =?gb2312?B?SGdFK3Vyd3FCRDZLVXlZSTNzK3JzS2tjN3JWVVJrb0QwSzN3T3RIZGhCREl5?=
 =?gb2312?B?MllFVFhtczlLckFUbzdzTzRmVms2OVlOdk95NklzbWpiNE82aHU5dGczdENy?=
 =?gb2312?B?cFRnZjYrM0hHVUdkVDRrTFduWFVjOTA4Y0FESGp1eTVpTXc5MlNRcFhHbUlK?=
 =?gb2312?B?R3Z2ZWxNQXpwZjY1RHpKNjcyVi9BWTF6OEpveThWcG9leEdnNEF3V0RDaFJx?=
 =?gb2312?B?Y0cyVmtDV1JkWXl2b2REUUxOVWxWLzhxeVRaMG9neDZ1Z0F1Ny9IVUZqTDBE?=
 =?gb2312?B?bE1qNUFZbStWalZaUm5lY2wzNnBhbVJDMkJzQ0tRNnVBRE1FSG44enFOVlN5?=
 =?gb2312?B?N3VvVHlTay9OTzdsT0UwMW1MeE12MG8yNTVTS2lqNHBWZTNEekFRWHZqY3NE?=
 =?gb2312?B?UWlaRGxTc0czRjFhTy9IYWtaS2ZMcFBwck12RFZCNE9VTWRHenhqRkRlZHA5?=
 =?gb2312?B?K1ZacDc5aFFQSFlQeHIyUmh1Rm51L0tjZ1E3YXVjUWFSclRaL2pNbkF6M0FF?=
 =?gb2312?B?dWZTRG16YzZ6YVIzNzV6YTVTMWhjRjhNQTJ6MTFUdnBkNjM5KzhFOFBoL2dk?=
 =?gb2312?B?TlBTbUpSRm5UME9qU053WlVBeUNzcTNFbVU0UjFMMlY0VjI2aEt2cjNwN0Z3?=
 =?gb2312?B?YzNveExzVWVoaWU1aW5qKzdSUEtsQ2RJeUNERHNjbzhHaE5FaEN1eVdnYkxP?=
 =?gb2312?B?eUhjcE92SFZ6anl0VTVhWHpHcUVYN3pUV043L1JJemlVR2oyK05LNzVzODly?=
 =?gb2312?B?dGswUU14Tmc2blNQdk5NYjJyZ0VITkRYU1Y5QmVnT08ra2ZNTFJZbmRWUU53?=
 =?gb2312?B?a1laR2FWNVVRU2F4aDlITTlzcVFld1JXRmpwNkQ4NlhLYWJKbEpjaHNvR3NZ?=
 =?gb2312?B?ZGlqaVlhMzIwWkE2L3VhWG9Ib21DUHJsdEVsaTdRRTlMMmxTbHdFc1ZHT1Vz?=
 =?gb2312?B?OEUrYU94U1lGcU9CUnVTZVoyc1R2VXMzWWZJYzd1UVFMUVRISHgrRll1UHRu?=
 =?gb2312?B?eFMzSUdmalZha2Qyd1Bya2dyOWRYRXp0aG4xK2xSNExOejRZZU9NY2xKWlFE?=
 =?gb2312?Q?TJEvnsxnwtrB8=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: oppo.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: HK0PR02MB2755.apcprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c809fe26-b7eb-437f-becc-08d8a803e3eb
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Dec 2020 12:03:13.4311 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f1905eb1-c353-41c5-9516-62b4a54b5ee6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: R7RKyXbGwM8WD8ypcVvzfQh24CVDZpt4Tz1cX1p06Qr48OS+571QWi0bgu0dJ2PMoM1puZIUx+4De1xooQB7pQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2PR02MB3923
X-Mailman-Approved-At: Sun, 27 Dec 2020 21:22:11 +0000
Subject: [Spice-devel] enable GPU(AMD) rendering with QXL using SPICE
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
Content-Type: multipart/mixed; boundary="===============0636318599=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0636318599==
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_HK0PR02MB2755258F3D299C737C438E80C1DD0HK0PR02MB2755apcp_"

--_000_HK0PR02MB2755258F3D299C737C438E80C1DD0HK0PR02MB2755apcp_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SGksDQoNCkknbSBwcmV0dHkgbmV3IHRvIFNQSUNFIGFuZCB1c2luZyByZW1vdGUtdmlld2VyLiBJ
IGhhdmUgYSBsaW51eCBob3N0IGFuZCBXaW5kb3cgZ3Vlc3QgT1MuDQoNCldoZW4gSSB0cnkgdG8g
dXNlIHJlbW90ZS12aWV3ZXIgdG8gbGF1bmNoIGl0IHdpdGggU1BJQ0UsIHdoYXQgSSBub3RpY2Vk
IGlzIHRoYXQgdGhlIHJlbmRlcmluZyBzZWVtcyB0byBiZSB2ZXJ5IHNsb3cgYW5kIGJsb2NreS4g
SXQgc2VlbXMgdGhpbmdzIGFyZSBiZWluZyB1cGRhdGVkIG9uZS9mZXcgYmxvY2tzIGF0IGEgdGlt
ZSwgd2hpY2ggc2VlbXMgdG8gaW5kaWNhdGUgdG8gbWUgdGhhdCBpdCdzIHVzaW5nIENQVSB0byBy
ZW5kZXIuDQoNCkEgZmV3IG9mIHF1ZXN0aW9ucyByZWdhcmRpbmcgdGhpcyBiZWhhdmlvcjoNCg0K
MSkgSG93IGRvIEkgbWF5IHN1cmUgdGhhdCBTUElDRSBpcyBhY3R1YWxseSBwaWNraW5nIHVwIEdQ
VSB0byByZW5kZXIgb24gdGhlIEhvc3QgaW5zdGVhZCBvZiB1c2luZyBDUFU/IE9yIGlzIGl0IGFj
dHVhbGx5IHVzaW5nIHRoZSBDbGllbnQgQ1BVL0dQVSB0byByZW5kZXI/DQoNCjIpIElmIEkgdW5k
ZXJzdGFuZCBjb3JyZWN0bHksIGl0J3MgdXNpbmcgUVhMIGRyaXZlciB0byBkbyB0aGUgR3JhcGhp
Y3MgcmVuZGVyaW5nLiBJcyBRWEwgc3VwcG9ydGluZyBvbmx5IDJEIHJlbmRlcmluZyBvciAzRCBh
cyB3ZWxsPyBBbmQgaXMgaXQgdXNpbmcgQ1BVIG9yIEdQVSB0byBkbyB0aGUgcmVuZGVyaW5nPw0K
DQozKSBGb3IgdGhlIHF1ZXN0aW9ucyBhYm92ZSwgaXMgdGhlcmUgYW55IHdheS9jb25maWcgZm9y
IG1lIHRvIGNoYW5nZSwgc28gdGhhdCBTUElDRSBhbmQgc3dpdGNoIGJldHdlZW4gdXNpbmcgQ1BV
L0dQVSB0byByZW5kZXIsIGFsc28gd2hldGhlciBpdCdzIHVzaW5nIEhvc3QvQ2xpZW50IEdQVT8N
Cg0KVGhhbmtzIGEgbG90IQ0KDQpNaW5neWFuZw0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18NCk9QUE8NCg0Ksb6159fT08q8/rywxuS4vbz+uqzT0E9QUE+5q8u+tcSxo8Pc0MXPoqOs
vfbP3tPa08q8/ta4w/e1xMrVvP7Iy8q508OjqLD8uqy49sjLvLDIutfpo6mho7371rnIzrrOyMvU
2s60vq3K2siotcTH6b/2z8LS1MjOus7Qzsq9yrnTw6GjyOe5+8T6tO3K1cHLsb7Tyrz+o6zH68Gi
vLTS1LXn19PTyrz+zajWqreivP7Iy7Kiyb6z/bG+08q8/rywxuS4vbz+oaMNCg0KVGhpcyBlLW1h
aWwgYW5kIGl0cyBhdHRhY2htZW50cyBjb250YWluIGNvbmZpZGVudGlhbCBpbmZvcm1hdGlvbiBm
cm9tIE9QUE8sIHdoaWNoIGlzIGludGVuZGVkIG9ubHkgZm9yIHRoZSBwZXJzb24gb3IgZW50aXR5
IHdob3NlIGFkZHJlc3MgaXMgbGlzdGVkIGFib3ZlLiBBbnkgdXNlIG9mIHRoZSBpbmZvcm1hdGlv
biBjb250YWluZWQgaGVyZWluIGluIGFueSB3YXkgKGluY2x1ZGluZywgYnV0IG5vdCBsaW1pdGVk
IHRvLCB0b3RhbCBvciBwYXJ0aWFsIGRpc2Nsb3N1cmUsIHJlcHJvZHVjdGlvbiwgb3IgZGlzc2Vt
aW5hdGlvbikgYnkgcGVyc29ucyBvdGhlciB0aGFuIHRoZSBpbnRlbmRlZCByZWNpcGllbnQocykg
aXMgcHJvaGliaXRlZC4gSWYgeW91IHJlY2VpdmUgdGhpcyBlLW1haWwgaW4gZXJyb3IsIHBsZWFz
ZSBub3RpZnkgdGhlIHNlbmRlciBieSBwaG9uZSBvciBlbWFpbCBpbW1lZGlhdGVseSBhbmQgZGVs
ZXRlIGl0IQ0K

--_000_HK0PR02MB2755258F3D299C737C438E80C1DD0HK0PR02MB2755apcp_
Content-Type: text/html; charset="gb2312"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dgb2312">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:=B5=C8=CF=DF;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"\@=B5=C8=CF=DF";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
	font-family:=B5=C8=CF=DF;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:=B5=C8=CF=DF;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:=B5=C8=CF=DF;}
/* Page Definitions */
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"ZH-CN" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word;text-justify-trim:punctuation">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I'm pretty new to SPICE and usi=
ng remote-viewer. I have a linux host and Window guest OS.<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">When I try to use remote-viewer=
 to launch it with SPICE, what I noticed is that the rendering seems to be =
very slow and blocky. It seems things are being updated one/few blocks at a=
 time, which seems to indicate to me
 that it's using CPU to render.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">A few of questions regarding th=
is behavior:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">1) How do I may sure that SPICE=
 is actually picking up GPU to render on the Host instead of using CPU? Or =
is it actually using the Client CPU/GPU to render?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">2) If I understand correctly, i=
t's using QXL driver to do the Graphics rendering. Is QXL supporting only 2=
D rendering or 3D as well? And is it using CPU or GPU to do the rendering?<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">3) For the questions above, is =
there any way/config for me to change, so that SPICE and switch between usi=
ng CPU/GPU to render, also whether it's using Host/Client GPU?<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks a lot!<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Mingyang<o:p></o:p></span></p>
</div>
<hr>
<div style=3D"font-size: 12px;"><strong style=3D"color: rgb(0, 107, 55); fo=
nt-family: ArialMT;">OPPO</strong></div>
<div style=3D"font-size: 12px;"><strong style=3D"color: rgb(0, 107, 55); fo=
nt-family: ArialMT; font-size: 14px;"><span style=3D"font-size: 12px;"><br>
</span></strong></div>
<div></div>
<div style=3D"color: rgb(49, 53, 59); font-family: Helvetica; font-variant-=
numeric: normal; font-variant-east-asian: normal; line-height: 22.4px; wido=
ws: 1;">
<span style=3D"color: rgb(202, 202, 200); font-family: ArialMT; font-size: =
12px;">=B1=BE=B5=E7=D7=D3=D3=CA=BC=FE=BC=B0=C6=E4=B8=BD=BC=FE=BA=AC=D3=D0<s=
pan style=3D"font-stretch: normal; line-height: normal;">OPPO</span>=B9=AB=
=CB=BE=B5=C4=B1=A3=C3=DC=D0=C5=CF=A2=A3=AC=BD=F6=CF=DE=D3=DA=D3=CA=BC=FE=D6=
=B8=C3=F7=B5=C4=CA=D5=BC=FE=C8=CB=CA=B9=D3=C3=A3=A8=B0=FC=BA=AC=B8=F6=C8=CB=
=BC=B0=C8=BA=D7=E9=A3=A9=A1=A3=BD=FB=D6=B9=C8=CE=BA=CE=C8=CB=D4=DA=CE=B4=BE=
=AD=CA=DA=C8=A8=B5=C4=C7=E9=BF=F6=CF=C2=D2=D4=C8=CE=BA=CE=D0=CE=CA=BD=CA=B9=
=D3=C3=A1=A3=C8=E7=B9=FB=C4=FA=B4=ED=CA=D5=C1=CB=B1=BE=D3=CA=BC=FE=A3=AC</s=
pan><span style=3D"font-family: ArialMT; color: rgb(202, 202, 200); font-si=
ze: 12px;">=C7=EB=C1=A2=BC=B4=D2=D4=B5=E7=D7=D3=D3=CA=BC=FE=CD=A8=D6=AA=B7=
=A2=BC=FE=C8=CB=B2=A2=C9=BE=B3=FD=B1=BE=D3=CA=BC=FE=BC=B0=C6=E4=B8=BD=BC=FE=
=A1=A3</span></div>
<div style=3D"color: rgb(49, 53, 59); font-family: Helvetica; font-variant-=
numeric: normal; font-variant-east-asian: normal; line-height: 22.4px; wido=
ws: 1;">
<p style=3D"margin: 0px; font-stretch: normal; line-height: normal; min-hei=
ght: 15px;">
<span style=3D"color: rgb(202, 202, 200);"><span style=3D"font-size: 12px; =
font-family: ArialMT;">This e-mail and its attachments contain confidential=
 information from OPPO</span><span style=3D"font-size: 12px; font-family: A=
rialMT; font-stretch: normal; line-height: normal;">,</span><span style=3D"=
font-size: 12px; font-family: ArialMT;">&nbsp;which
 is intended only for the person or entity whose address is listed above. A=
ny use of the information contained herein in any way&nbsp;</span><span sty=
le=3D"font-size: 12px; font-family: ArialMT; font-stretch: normal; line-hei=
ght: normal;">(</span><span style=3D"font-size: 12px; font-family: ArialMT;=
">including</span><span style=3D"font-size: 12px; font-family: ArialMT; fon=
t-stretch: normal; line-height: normal;">,</span><span style=3D"font-size: =
12px; font-family: ArialMT;">&nbsp;but
 not limited to</span><span style=3D"font-size: 12px; font-family: ArialMT;=
 font-stretch: normal; line-height: normal;">,</span><span style=3D"font-si=
ze: 12px; font-family: ArialMT;">&nbsp;total or partial disclosure</span><s=
pan style=3D"font-size: 12px; font-family: ArialMT; font-stretch: normal; l=
ine-height: normal;">,</span><span style=3D"font-size: 12px; font-family: A=
rialMT;">&nbsp;reproduction</span><span style=3D"font-size: 12px; font-fami=
ly: ArialMT; font-stretch: normal; line-height: normal;">,</span><span styl=
e=3D"font-size: 12px; font-family: ArialMT;">&nbsp;or
 dissemination</span><span style=3D"font-size: 12px; font-family: ArialMT; =
font-stretch: normal; line-height: normal;">)</span><span style=3D"font-siz=
e: 12px; font-family: ArialMT;">&nbsp;by persons other than the intended re=
cipient</span><span style=3D"font-size: 12px; font-family: ArialMT; font-st=
retch: normal; line-height: normal;">(</span><span style=3D"font-size: 12px=
; font-family: ArialMT;">s</span><span style=3D"font-size: 12px; font-famil=
y: ArialMT; font-stretch: normal; line-height: normal;">)</span><span style=
=3D"font-size: 12px; font-family: ArialMT;">&nbsp;is
 prohibited. If you receive this e-mail in error</span><span style=3D"font-=
size: 12px; font-family: ArialMT; font-stretch: normal; line-height: normal=
;">,</span><span style=3D"font-size: 12px; font-family: ArialMT;">&nbsp;ple=
ase notify the sender by phone or email immediately
 and delete it!</span></span></p>
</div>
<div></div>
</body>
</html>

--_000_HK0PR02MB2755258F3D299C737C438E80C1DD0HK0PR02MB2755apcp_--

--===============0636318599==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0636318599==--
