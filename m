Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E92CB3D1EB9
	for <lists+spice-devel@lfdr.de>; Thu, 22 Jul 2021 09:11:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64F5E6EC90;
	Thu, 22 Jul 2021 07:11:40 +0000 (UTC)
X-Original-To: spice-devel@freedesktop.org
Delivered-To: spice-devel@freedesktop.org
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2129.outbound.protection.outlook.com [40.107.93.129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 105096EE94
 for <spice-devel@freedesktop.org>; Thu, 22 Jul 2021 02:53:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=de7stM3NaA16v8KphX6F13TDLHtrFNCEQcr9ptYThgJbZDh5LvQCgkF+YmLPK2xV3nYaB3n4OXcFDyN6vEnwqkuh24KU9AwICRgcciUyTzbPklhiYK1ZEevB9B0f3He88JfxZRk38IySjBcepKKKoEHZE+EbeCCDVJBa8kVZKveOqvQOBkwiWODPkNqrS4lJJBP04RMxlz30c1ZBL6mdwSBmpzbHOLKR15dQetZ/B246Vi7SntvCRRUbToqbMRlNDV+8lozO4mCv5MagrW7cHgAkqhYWHRgY7EbpdSxt8rvwLYTQKSsO3P012dhZleuWOZmLRrTyG8NFAp/jn6BwdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9Bip0wudo/9VlH6mi4raNn0SMkBVS6ucTkNATE2tupY=;
 b=IHer0WiRRejksZG6s0RK72HGySMWoQWpDtPNDe2EM2p/per0Ro8ICuE2Y87tl1JbJge7USq/xE6fFar7Gw7EkRXey6tk6HMnb8W0IrHdslC1KK0nDLEXHN8A6/GLa+yDf4uIB2koYjml1mcweJCJY6r5DvrAqhDp5Ml9l6swN2x7OfTrCXTk/sry0aHq3PrZWhQ9xrUbCEBql5UJE7tpr7lWf2Zx0oBImem+EypuUSD05LYLrzZLqB1LBXQelqO9OgtMPOmgFk3dnsPX9uGYGrZ+g7Pv5U+6XNR3tk6ye/4B6vBH3KG97azTBeeYiU3pcyoltlY3dLAX5dx9XjJBJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=spiceai.io; dmarc=pass action=none header.from=spiceai.io;
 dkim=pass header.d=spiceai.io; arc=none
Received: from CH2PR10MB4231.namprd10.prod.outlook.com (2603:10b6:610:ac::21)
 by CH0PR10MB5130.namprd10.prod.outlook.com (2603:10b6:610:cb::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.29; Thu, 22 Jul
 2021 02:53:25 +0000
Received: from CH2PR10MB4231.namprd10.prod.outlook.com
 ([fe80::b8d1:e780:fecf:d30d]) by CH2PR10MB4231.namprd10.prod.outlook.com
 ([fe80::b8d1:e780:fecf:d30d%5]) with mapi id 15.20.4331.032; Thu, 22 Jul 2021
 02:53:25 +0000
From: Luke Kim <luke@spiceai.io>
To: "spice-devel@freedesktop.org" <spice-devel@freedesktop.org>
Thread-Topic: github.com/spice
Thread-Index: AQHXfqR2j+9jNA5NUEuXzSwnILcFyw==
Date: Thu, 22 Jul 2021 02:53:25 +0000
Message-ID: <CH2PR10MB42314D13E3A8200852898192A1E49@CH2PR10MB4231.namprd10.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: freedesktop.org; dkim=none (message not signed)
 header.d=none; freedesktop.org; dmarc=none action=none header.from=spiceai.io; 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b7bf8cb8-a419-4d01-a5fe-08d94cbbe078
x-ms-traffictypediagnostic: CH0PR10MB5130:
x-microsoft-antispam-prvs: <CH0PR10MB51309DFE45A418A41BA934FEA1E49@CH0PR10MB5130.namprd10.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XJsCjXxMjwn1Q1NEWlu0gPFQO32R5GkNwaewdOSmE1xYymZIJq4H8M1S5m03mVPEOnGzcz0rFHAjwHG+xQTmd0kdEyAfZnUilR/yHMySeSACXvxzTv4ViOA4kwF5UbonFDS6gWaSCoPs2zuzVRufr5tk6dhmM+YdGfN8lNBHRI/IOZxIbIq0/k7QNw66InsnQMznXwPfC30aZy9hig5kivYFNlODvAWzQor7BfySp8146YfBmR4rxTgciuFSomlgUxT+s6invKPYyPjE+RZ2GrovRUCR6/kvHjt8+BSWyjhq5V/Cavm8fD35QD55xJT/8mVvuL8elbcrkWGjwZCaVotpHrztiDR44GXwmTcfa+FwX48Kx6jRURLdtsyv7Gci7R50oiy7CxhzVQaMAfTuHP3ToXsf4iYjMwVh5hduoFhLUl+kdQ1WKq9XlLDjJGoWC03XGfVR1jdzY3rcgrzToSQrwrdkSxxrDCGYaqHo6fk2muLQttJf2R5ftau43D6BCy1N5HyTt2wQ5Gu0opF9ubufZu01R2YhdDQEne9BqWAfx4UmauyBS15om9jEYRw5mrAHFkhq2RiEewr6y2hc/8Xn/V+tkY2gwSsuy/UArAgprdzhiCXZsiWiJMxU7DAkyNI9Z8mbYe3Cgh6n89jcsF+1YK7LHu9Vn3v49dBJFtpXLQt+7S2XotI8Or6aUs9VQ8ez+R8b4V4ETRilPZYVQBsOgGi/aw2y84TNR0ALpAldQp01n49TmRrI87J7AtDM6q/VSKoeP4d+bce2ne/XPqyD4DZ4wRNhxIw/Pei7zhM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH2PR10MB4231.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(39830400003)(366004)(376002)(396003)(346002)(55016002)(71200400001)(3480700007)(478600001)(38100700002)(8676002)(122000001)(26005)(9686003)(6916009)(2906002)(316002)(4744005)(52536014)(66946007)(166002)(186003)(6506007)(64756008)(83380400001)(86362001)(8936002)(76116006)(66446008)(91956017)(66476007)(66556008)(33656002)(5660300002)(7696005)(38070700004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?rFpHzFGJlHYIJSjNk9C75rk648TUx8nyQoym67mfwQ7NwHZk8ejsxTMn?=
 =?Windows-1252?Q?xyuXdgLRFiDJ7NYBPE9bkHz4cDNJPsMslGeEzVqe+u7pKDr1rGMErKMr?=
 =?Windows-1252?Q?q+c7+eVnCHeEkkCbtZ6Y3aLjNeJjdAoN/TNFHWeksxankEBXa5bbKL9m?=
 =?Windows-1252?Q?KnqoddiPHzj4fXk8gZ6AnR0MQ9eQBX7u0VXNwubi3I/gXksT+NjeJJsZ?=
 =?Windows-1252?Q?5z1oEQ3zdrvAlX5nXm47/PCW86T27Q8QIiLZoRdi5R5GTAK9XiuYsraP?=
 =?Windows-1252?Q?06lpDBU18voo9pCz7nJw3KjDRhoutG0kgVPb0ppfzS61BKRG2F1KO1bC?=
 =?Windows-1252?Q?N0q0OqQ4e7rQeEUsDj24MUyUnhN+nP5BzZYToYGRkw30OP5v1zVfG19G?=
 =?Windows-1252?Q?29ysTHOnAs47IR7ww9C9xjunJsi6TciLHSt28RjnPIF3MF5g2mon4d97?=
 =?Windows-1252?Q?4O8JPnlQeVeSDEOREM//lKUmOUmOipdh8NquXe410IPGwaYN+xZEcXNa?=
 =?Windows-1252?Q?0cNITR+qdL2Kq5lJf0NmPN9t8qxOgiXRgny/XBxc9qe7VZiybmj1tC3D?=
 =?Windows-1252?Q?8zxYf/I7Lg9rwwlufcv8Pd1kd8RE8qA+aei9A7u2kNiFOheppMP+/GdQ?=
 =?Windows-1252?Q?SEevHSlubdUP+P+SeIV11X/5rBUZbXjk70CMkSxKfm/P3Jw+5ERmU5Yz?=
 =?Windows-1252?Q?hiIMbm14j9SB6WCdt3/xyO81sClRGz7iN5jsaaYrrWTbx3v3BM8JzCEa?=
 =?Windows-1252?Q?yEmnSk1+oxQrh9P6gDBMAYciO6AVY3C40Pq16b2oW+HiFbb54Np/ltOy?=
 =?Windows-1252?Q?ze6GsZj/Enqy1gQUKHilonsF42neYJU0FLuQ9+Hr0nOIj54CS8/xQq9S?=
 =?Windows-1252?Q?xgRYTHgaTE4Nb4uhxCU6OixD2oBgxvKCHI5vcfIcxDrmnsVjXwc310uF?=
 =?Windows-1252?Q?BYN1j3apJjBngjofevYvPbMIKgrkk4YgGsN/aQmZbSyWv59MElUWWjGh?=
 =?Windows-1252?Q?+GUbZkZG0YsY5cdUH7ggj/3QwvvCRqu8UtktJ2ERPrkwaUlzkaKOrhC2?=
 =?Windows-1252?Q?tsoaLft0KGyMD89ueM8ZBvVJ617BSdz3/1fLTDbWHzpiOBpnYt9bxEmr?=
 =?Windows-1252?Q?axCSwtnThMZh+8lDMfoYGVvg3NNAF5HLIhO19WiUqXDqooS190oOcSGn?=
 =?Windows-1252?Q?01ztkPRR33Z1WLd3F+hjTPLwaJhV/e0PbfUffDRVD+4sbiqz712UKOGF?=
 =?Windows-1252?Q?BBA5XoceTYrYARXSOB23AV9J2y3cq7q22urvOayW/pdpktvN3bd8N45h?=
 =?Windows-1252?Q?4MSATdRyIVRRWKgZhs3sPLFk7Wv8ufZKdSOWIgE1w1ODan9fri0vZ0xn?=
 =?Windows-1252?Q?VBgio861MZsZWU4fATh2G+9nDTnFgxhzw25IUJtoWH058F+lkcEPsIC0?=
 =?Windows-1252?Q?noAKV91qNlFE0YFhyDatxw=3D=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: spiceai.io
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH2PR10MB4231.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7bf8cb8-a419-4d01-a5fe-08d94cbbe078
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2021 02:53:25.6925 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92543123-2b6a-4eec-9b6f-595720cd1c8f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YCe7e889Q1+Nk476PLwdjXQhnd2oxLJVVE/AQvvrb/YD15x8NNkaT+M9u4d+57gg
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR10MB5130
X-Mailman-Approved-At: Thu, 22 Jul 2021 07:11:39 +0000
Subject: [Spice-devel] github.com/spice
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
Content-Type: multipart/mixed; boundary="===============0217197959=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0217197959==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CH2PR10MB42314D13E3A8200852898192A1E49CH2PR10MB4231namp_"

--_000_CH2PR10MB42314D13E3A8200852898192A1E49CH2PR10MB4231namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi!

I=92m the founder of a new AI startup called Spice AI.

We noticed that the SPICE project at github.com/spice looks like it might n=
ot be in use anymore, and that you might be using GitLab.

If that=92s the case, would you consider a conversation on transferring the=
 GitHub org over to us?

Thanks so much,

Luke

Luke Kim
Founder and CEO
spiceai.io<https://spiceai.io/>


--_000_CH2PR10MB42314D13E3A8200852898192A1E49CH2PR10MB4231namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Malgun Gothic";
	panose-1:2 11 5 3 2 0 0 2 0 4;}
@font-face
	{font-family:"\@Malgun Gothic";}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi!<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I=92m the founder of a new AI startup called Spice A=
I.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We noticed that the SPICE project at github.com/spic=
e looks like it might not be in use anymore, and that you might be using Gi=
tLab.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">If that=92s the case, would you consider a conversat=
ion on transferring the GitHub org over to us?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks so much,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Luke<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt">Luke Kim<o:p></o=
:p></span></b></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Founder and CEO<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
spiceai.io/"><span style=3D"color:#0563C1">spiceai.io</span></a><o:p></o:p>=
</span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_CH2PR10MB42314D13E3A8200852898192A1E49CH2PR10MB4231namp_--

--===============0217197959==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0217197959==--
