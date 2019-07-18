Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AAD6A6C63F
	for <lists+spice-devel@lfdr.de>; Thu, 18 Jul 2019 05:15:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A4FA6E2F5;
	Thu, 18 Jul 2019 03:15:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from APC01-SG2-obe.outbound.protection.outlook.com
 (mail-oln040092253055.outbound.protection.outlook.com [40.92.253.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EAD06E2F3
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 03:15:06 +0000 (UTC)
Received: from SG2APC01FT114.eop-APC01.prod.protection.outlook.com
 (10.152.250.54) by SG2APC01HT135.eop-APC01.prod.protection.outlook.com
 (10.152.251.127) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2052.18; Thu, 18 Jul
 2019 03:15:03 +0000
Received: from HK2PR0401MB1956.apcprd04.prod.outlook.com (10.152.250.54) by
 SG2APC01FT114.mail.protection.outlook.com (10.152.250.193) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2052.18 via Frontend Transport; Thu, 18 Jul 2019 03:15:03 +0000
Received: from HK2PR0401MB1956.apcprd04.prod.outlook.com
 ([fe80::ada0:2de5:c5d8:9d42]) by HK2PR0401MB1956.apcprd04.prod.outlook.com
 ([fe80::ada0:2de5:c5d8:9d42%7]) with mapi id 15.20.2073.012; Thu, 18 Jul 2019
 03:15:03 +0000
From: =?gb2312?B?0LsgwKXD9w==?= <KunMing.Xie@hotmail.com>
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Thread-Topic: why does X11 SHM backend is not compatible with GTK3?
Thread-Index: AQHVPRbRkgkmF28ZZkSKEV9OvtQwuQ==
Date: Thu, 18 Jul 2019 03:15:03 +0000
Message-ID: <HK2PR0401MB19568DF216DAD036441DC658E8C80@HK2PR0401MB1956.apcprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:96D4788266ABC0DAD8C249F7819A1FD6254A967A731C2A4C01539114C8A7618F;
 UpperCasedChecksum:6C8374C303D3EBA4643FAF073EFCAFEE4CC8007364E238A13DAAD74EAF24747C;
 SizeAsReceived:6717; Count:40
x-tmn: [DHiJKTBbJWGbE1ObSbU2Yt5a9c0RQex2EjvnJIjI63YrONPsuGC/7fOLbZrNg+4M]
x-ms-publictraffictype: Email
x-incomingheadercount: 40
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031322404)(2017031323274)(2017031324274)(1601125500)(1603101475)(1701031045);
 SRVR:SG2APC01HT135; 
x-ms-traffictypediagnostic: SG2APC01HT135:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-message-info: e7ZZ/zfOouFAm2rm2/scJIfjVzS9n6TsFXzPbslaCG1QIJilzhl8Q0XyHTmqq28r8EqaDamHtN/8WY2xUByysC8BYnE5oPJ5OrAN30lc47tHGChYlaDGeI97RcCMRfZGGaLMGDB9UjCagL5KvUyxiw5BFV7gl4CV11VkWrvbCf00+Y51wZwrX/Y4SvFEw1m9
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: e0f577ce-fae4-407c-ad8d-08d70b2e2080
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2019 03:15:03.6790 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2APC01HT135
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=hotmail.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Bek5Do2PY7Abigh0SSE13RAOU8y/KBHUcg6TZFiomJo=;
 b=U3ljEWbbb6of8riPiqz76wcHQVNdWOD/wq7k6WTo8lIjNaC5a+djuJy/iGI0mbfQlG9bhPg1Jj3ntcqmGXF2ppk5HhomyvbuGdRoVUcbetBx6Nv8aovaUqvLGMVX4X+yZH4r/6ypTWCSq0hG+xBUwIgm+FJpPwbJj7tF5SAkHQ656JkxhPL3Z195vpG3b7UDLyNe/+jwzI3eJSSoFThRoO7ri3qc78ZWbDoq8pGptLl+NX4X2wAMfQ/B7BESieuvBiTg4VemUVlST2GGLkjiXnSSCmCglbYjAilR5q1KIy+dvZ/JbNfWvQnIQTAffZ3U0Axra/6sjFo9owmd6j+ggA==
Subject: [Spice-devel] why does X11 SHM backend is not compatible with GTK3?
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
Content-Type: multipart/mixed; boundary="===============1290733707=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1290733707==
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_HK2PR0401MB19568DF216DAD036441DC658E8C80HK2PR0401MB1956_"

--_000_HK2PR0401MB19568DF216DAD036441DC658E8C80HK2PR0401MB1956_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

V2h5IGRvZXMgaXQgbm90IGNvbXBhdGlibGU/DQoNCreiy83X1CBXaW5kb3dzIDEwILDm08q8/jxo
dHRwczovL2dvLm1pY3Jvc29mdC5jb20vZndsaW5rLz9MaW5rSWQ9NTUwOTg2PtOm08MNCg0K

--_000_HK2PR0401MB19568DF216DAD036441DC658E8C80HK2PR0401MB1956_
Content-Type: text/html; charset="gb2312"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dgb2312">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
	font-family:DengXian;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
.MsoChpDefault
	{mso-style-type:export-only;}
/* Page Definitions */
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"ZH-CN" link=3D"blue" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Why does it not compatible?</sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o:p=
>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">=B7=A2=CB=CD=D7=D4<span lang=3D"EN-US"> Windows 10 <=
/span>=B0=E6<span lang=3D"EN-US"><a href=3D"https://go.microsoft.com/fwlink=
/?LinkId=3D550986"><span lang=3D"EN-US"><span lang=3D"EN-US">=D3=CA=BC=FE</=
span></span></a></span>=D3=A6=D3=C3</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:SimSun"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_HK2PR0401MB19568DF216DAD036441DC658E8C80HK2PR0401MB1956_--

--===============1290733707==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1290733707==--
