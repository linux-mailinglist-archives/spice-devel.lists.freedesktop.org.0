Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB38896E52
	for <lists+spice-devel@lfdr.de>; Wed, 21 Aug 2019 02:25:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68EA96E8EE;
	Wed, 21 Aug 2019 00:25:32 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from APC01-PU1-obe.outbound.protection.outlook.com
 (mail-oln040092254030.outbound.protection.outlook.com [40.92.254.30])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4899D6E8EE
 for <spice-devel@lists.freedesktop.org>; Wed, 21 Aug 2019 00:25:30 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N4CiaQMTcqxk6TvJ+Ksg1ModqbVP0U9VLEJnAYyX/+00Gmqrvlhjy5zQgLxTRFZT1RF7X+Sxb3K8q2cqNOkT9W3GV7freBr4j9cqt8rE51E4K8inlmDi3SOodeOUV5gTYYeoqtlOiWoHhDbKMTu910kE4pf5DsjNGnHKVxSVVCTWXjRCGr3H1Qy80VVXkJZrT36y3IyNNWOec+wKbHPcWXxoQM1iBPofbwciwC3y/YeTXG/8HkCaf5V5mTvN6kRxfMH2DbZ86qJq15OGYNBOKurSlyBrFZ2tRrVXcEO25+PUIHe6czKBLttnyRtIPnbAFIL0NSivE9QErDLx6hwY2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zvsAj8k1RvMhdhO4+W2yROQQ5U4Jzi0x57I2BZn0rbE=;
 b=BsNd4gdqhqjHnH6q4XZ4/ejoiVt4FDuiVpaHrGrojwStS9TN9/FMmblmgfmAcmcbSWdB0T7CJWCnSPwnWoPyFCLkl4yFxayES1uWEi+YraxiV8DWnhkFiEZvGOpP5P1DsSccGJim9vcnB6SSXZxFrjA5SrdeTwZBY/xYHxCiHX3WcYug9Q2nKDym/Hbf66fROs+YYsllwybiXiJ8P3xZPIY2AETmoU8p9Ns+f+bfNTW1KuGxlQmF4/xR2ycisODdj5klQ2FjGGzMeduRzMufrv6mZDfF8jSeceD7EBqLnKH4lia6wP7ZxYOpAODOKKmMDae6Xs1dheBsjPwy5gWUtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from SG2APC01FT057.eop-APC01.prod.protection.outlook.com
 (10.152.250.55) by SG2APC01HT004.eop-APC01.prod.protection.outlook.com
 (10.152.250.207) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2178.16; Wed, 21 Aug
 2019 00:25:27 +0000
Received: from HK0PR06MB2420.apcprd06.prod.outlook.com (10.152.250.59) by
 SG2APC01FT057.mail.protection.outlook.com (10.152.251.133) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2178.16 via Frontend Transport; Wed, 21 Aug 2019 00:25:27 +0000
Received: from HK0PR06MB2420.apcprd06.prod.outlook.com
 ([fe80::b4df:c26e:14a1:6aec]) by HK0PR06MB2420.apcprd06.prod.outlook.com
 ([fe80::b4df:c26e:14a1:6aec%5]) with mapi id 15.20.2178.018; Wed, 21 Aug 2019
 00:25:27 +0000
From: zhou qi <atmgnd@outlook.com>
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Thread-Topic: windows spice-client-glib hotplug not working
Thread-Index: AQHVV7av4rPep7KYoUuWo1TrP1/Org==
Date: Wed, 21 Aug 2019 00:25:27 +0000
Message-ID: <HK0PR06MB242009302E3419E214904AE2C9AA0@HK0PR06MB2420.apcprd06.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:75E572F67D675FE89DE3298916F1C3A4EC044A39847B40D549E2AB90E04F74A2;
 UpperCasedChecksum:47BB5AF5ED38DAFEC4A1E8E38A7D4D5FF3FD244D5391A632859E9489FA86E926;
 SizeAsReceived:6596; Count:41
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [Cee2bi8qHt9o6CdDdM2Z/qgdiqamN6MT]
x-ms-publictraffictype: Email
x-incomingheadercount: 41
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031322404)(2017031323274)(2017031324274)(1601125500)(1603101475)(1701031045);
 SRVR:SG2APC01HT004; 
x-ms-traffictypediagnostic: SG2APC01HT004:
x-microsoft-antispam-message-info: lvQ5TqO00U+qHKin3W4Mv5wQmSkOOskziyWDJR1pkHec8rm4nYXPaEWeTvhRfLv/cffXtXCvW3Yppue6SxvBcz6OTRTe4aJ6wirTW9CcvNBgxPVBe31ga+97sO1dv2NGPfrDn3exp5J+hwS1UAD1k0M/hQRVxtMgrZ/F1fuUtE9180miFbsMGtPJtPn3/yuR
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: f1e6c10b-ee67-4a68-1d57-08d725ce1112
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2019 00:25:27.5405 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2APC01HT004
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=outlook.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zvsAj8k1RvMhdhO4+W2yROQQ5U4Jzi0x57I2BZn0rbE=;
 b=H3WrUjA/zR0/KpRX1cX8exdJjglfLZ+Y68asjSftmOIHzUbEHX7ytCyxMfh2bSneiOnlixlgi7CxPaC0/ytvcqeM71cU+d0JfdZN6sDGImirDcrltX5Cj1SLl14jIKfPm9GoY0p7qUP4vyIPwet+obVgV1z7LB4p5VylwYWXOp7f6LPTuMBwu/rxUJYjatJjCI2FDmhA3Rwy1AqyW1ag6HPl58cf6lDKlUSkAJBJplfN1CiqRaedGNIiIYk5X5962Qe2KxyDAFAcQOwBXBi/vkG6lcLxpXlFTJTThRRfQvD7mx9QsvAk/14yAf9rKlb+MxmPAbbMK4pSyVxNjRBF8A==
Subject: [Spice-devel] windows spice-client-glib hotplug not working
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
Content-Type: multipart/mixed; boundary="===============0676953906=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0676953906==
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_HK0PR06MB242009302E3419E214904AE2C9AA0HK0PR06MB2420apcp_"

--_000_HK0PR06MB242009302E3419E214904AE2C9AA0HK0PR06MB2420apcp_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hello, I write a demo under windows unsing spice-client-glib only, I can ge=
t usb devices from UsbManager. but hotplug is not working. no device change=
 event recieved.
I found the function g_udev_client_initable_init in win-usb-dev.c create a =
hidden window to monitor WM_DEVICECHANGE message. but I could not found the=
 corresponding message loop=1B$B!J=1B(BGetMessage/DispatchMessage...). Wher=
e is the message loop(gtk)? Does it depends on some higher library(gtk)=1B$=
B!)=1B(BHow can I get usb hotplug working?

I resent this message because I found that I am not a subscriber to the mai=
ling list. Thanks.

best regards




--_000_HK0PR06MB242009302E3419E214904AE2C9AA0HK0PR06MB2420apcp_
Content-Type: text/html; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-2022-=
jp">
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
	{font-family:HelveticaNeue;}
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
<body lang=3D"ZH-CN">
<div class=3D"WordSection1">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;line-height:=
150%"><span lang=3D"EN-US" style=3D"font-family:&quot;HelveticaNeue&quot;,s=
erif;color:#333333">Hello, I write a demo under windows unsing
<b>spice-client-glib only</b>, I can get usb devices from UsbManager. but h=
otplug is not working. no device change event recieved.</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt;line-height:150%;font-family:&quot;Helvet=
icaNeue&quot;,serif;color:#333333"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:150%"><span lang=3D"EN-US" styl=
e=3D"font-family:&quot;HelveticaNeue&quot;,serif;color:#333333">I found the=
 function g_udev_client_initable_init in win-usb-dev.c create a hidden wind=
ow to monitor WM_DEVICECHANGE message. but I could
 not found the corresponding message loop</span><span style=3D"color:#33333=
3">=1B$B!J=1B(B</span><span lang=3D"EN-US" style=3D"font-family:&quot;Helve=
ticaNeue&quot;,serif;color:#333333">GetMessage/DispatchMessage...). Where i=
s the message loop(gtk)? Does it depends on some higher library(gtk)</span>=
<span style=3D"color:#333333">=1B$B!)=1B(B</span><span lang=3D"EN-US" style=
=3D"font-family:&quot;HelveticaNeue&quot;,serif;color:#333333">How
 can I get usb hotplug working?<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:150%"><span lang=3D"EN-US" styl=
e=3D"font-family:&quot;HelveticaNeue&quot;,serif;color:#333333"><o:p>&nbsp;=
</o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:150%"><span lang=3D"EN-US" styl=
e=3D"font-family:&quot;HelveticaNeue&quot;,serif;color:#333333">I resent th=
is message because I found that I am not a subscriber to the mailing list. =
Thanks.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:150%"><span lang=3D"EN-US" styl=
e=3D"font-family:&quot;HelveticaNeue&quot;,serif;color:#333333"><o:p>&nbsp;=
</o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:150%"><span lang=3D"EN-US" styl=
e=3D"font-family:&quot;HelveticaNeue&quot;,serif;color:#333333">best regard=
s<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o:p=
>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:SimSun"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_HK0PR06MB242009302E3419E214904AE2C9AA0HK0PR06MB2420apcp_--

--===============0676953906==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0676953906==--
