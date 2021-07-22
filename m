Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C953D2370
	for <lists+spice-devel@lfdr.de>; Thu, 22 Jul 2021 14:40:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F8E46EB1A;
	Thu, 22 Jul 2021 12:40:01 +0000 (UTC)
X-Original-To: spice-devel@freedesktop.org
Delivered-To: spice-devel@freedesktop.org
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2102.outbound.protection.outlook.com [40.107.223.102])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 917C76E14F
 for <spice-devel@freedesktop.org>; Thu, 22 Jul 2021 10:19:42 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZVZuix8rdcAHcJtPifQnH+ucP6SZVjm1XITX9tGx3HKLNNtzlB9ISjGiOsV0um/4e/uwqSIM67E18fv83UV7X+6Ej5rss3gx0UKLrmyhGPeoH45c4vG7pRuoYv+5NneC0qNDsV8fgBaFt4akjF/koLfr7qKz7niJlbGnaaymnu0rJ1NXqxNN4LaeaF2+xeMgB09IR2RxN7NL/oQMOhfA+snsTLX+a96FV+Bqg/8831kI9Y7MxJRrQn+vni6EzDigL7CPbidwYDku+X9oR5dQOOvXizMYAwtOEhibrNTaQ1nvCp41vuoUZ/ab7Fzu9bXsG52Wsrg0lqRyOae/1be/sA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gZYmfiwBOF/bAZUHYJeOfOWiDO4z9RQUl0QUUE9s3o4=;
 b=KnHDjkG0avkm0Rw2lqXktXTLotvDnKzspX1OPAOs4P/b+FNuPptbVPxxDF+1p0ZkFdtAgeErxl3OV5nRZfHFIxL5TLPB3Y7gafZu55OFOAV2HcHutTiy3Up6oKtBeLh0jO6rwrVGx3bWyErqZwtldnfNQ77rCCyijADxzLUa2edH3C9yrsFaKsnXJGTucIU3e3aizoW2qepvRdWS0Oicg26tNaB+4zrz9K3tD5Tpi/o5XslUJ7kYScSfWXhPSecYKU+qOO9VGtOnyG8c7ZwUGi9NIdeTIK9wC/njSkKtjfusJy/7EfpHuvxYS+9KVQOBgb4yJxZHMQHu0/3tTlLr2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=spiceai.io; dmarc=pass action=none header.from=spiceai.io;
 dkim=pass header.d=spiceai.io; arc=none
Received: from CH2PR10MB4231.namprd10.prod.outlook.com (2603:10b6:610:ac::21)
 by CH0PR10MB4905.namprd10.prod.outlook.com (2603:10b6:610:ca::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.23; Thu, 22 Jul
 2021 10:19:40 +0000
Received: from CH2PR10MB4231.namprd10.prod.outlook.com
 ([fe80::b8d1:e780:fecf:d30d]) by CH2PR10MB4231.namprd10.prod.outlook.com
 ([fe80::b8d1:e780:fecf:d30d%5]) with mapi id 15.20.4331.032; Thu, 22 Jul 2021
 10:19:40 +0000
From: Luke Kim <luke@spiceai.io>
To: =?Windows-1252?Q?Marc-Andr=E9_Lureau?= <marcandre.lureau@gmail.com>
Thread-Topic: [Spice-devel] github.com/spice
Thread-Index: AQHXfqR2j+9jNA5NUEuXzSwnILcFy6tOpnQAgAAiTYk=
Date: Thu, 22 Jul 2021 10:19:40 +0000
Message-ID: <CH2PR10MB42315B8532AEE20AE86B6C3BA1E49@CH2PR10MB4231.namprd10.prod.outlook.com>
References: <CH2PR10MB42314D13E3A8200852898192A1E49@CH2PR10MB4231.namprd10.prod.outlook.com>,
 <CAJ+F1CLRP6gypvAdjOoz_CcgCQXn6uJxR2LrV25=c0Mi169X=A@mail.gmail.com>
In-Reply-To: <CAJ+F1CLRP6gypvAdjOoz_CcgCQXn6uJxR2LrV25=c0Mi169X=A@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=spiceai.io;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 58d83736-9db1-4891-2ead-08d94cfa376a
x-ms-traffictypediagnostic: CH0PR10MB4905:
x-microsoft-antispam-prvs: <CH0PR10MB4905CD5D85401E0F77C20D8DA1E49@CH0PR10MB4905.namprd10.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5NnLDhoK30PzkcTkXzu7eVf8JYwlzDeEaUQGSkcf9mDoBLMfwCwcpuk0009/9KnFKGYsF4wo3zLNRsmtTrdSISKuZV2YucCTXewVuDrPk2Rlh9z5GLHN1OiOw6RR6ekWPcMxzoHj/B6WsX0HJt7xeyJ4ZbZVw/CSqjLdIZgrvY3z0MyCH7btzSCYD94c90SXY7bCo7X3vJIDJDJOg3RGid573BdX9TtSKjuMDTiMJJs0P4EmCxACMyRUJ4FjBBicaombiPgtULDPTZF1RzGmtVy7Z2aVazjaMdHfJByQPjXMEFKFRiYsYa3GiCY2zm1bebPG+eDy7qQiJJG8vIFEiExXIlyEbjQDgCR3MPv8sgRpd0LXvlQQAu3QxOrjxfbCZg5TyXXKnQT3LvxGE+s1V6Sk3pk4Yxwk+DINOvvfXczp5TMp6xJe+NmmZAlX3mzocgnSY7Fc3etDa3YmJ6DBu7EOkLh/gaET1Zwce1vDrVGv8LaWlraiMK7dtrOra9j410lSChvaR2111JBazK/yMUUgUsKAR2iIzbgM7XszqHXD94RdFBiVNgVyVux2ZkeHkeH/yZBeAzN38o+epI2gZFoS7RviwqRX8OW8KBqwC26ZzQOsHzQS5mwLeoICbnSoCaVajKThGPANg4cVhKREgiVRaWzMUig3kMUxoInl1WvWa8rR9Q8+zmORg9R47tPCqI426yRQ5Uo6Q8mqRvRquMkIabBhmgEwxVM05hdqsvtK1cVhzCx+13Uw9kptMxHlaiAPi0nwPB4Srs48MIpQUF2bl74yrM6HT8Uqs+kFaUI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH2PR10MB4231.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(366004)(39830400003)(346002)(136003)(396003)(66946007)(166002)(83380400001)(66556008)(7696005)(478600001)(53546011)(6916009)(66476007)(9686003)(6506007)(4326008)(38100700002)(55016002)(64756008)(66446008)(76116006)(8676002)(186003)(5660300002)(86362001)(2906002)(316002)(122000001)(8936002)(26005)(33656002)(4744005)(52536014)(91956017)(71200400001)(38070700004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?3HmRSY/5AcUZxjluF6BeGLgsh4QrsMceGSdMDA6tnPfHPbctNbHECikV?=
 =?Windows-1252?Q?OWi0Dq8kLgA6ZpW3EJlpPhxSxN/C57T0ENgFfnzxiGHULCImGZPECG9S?=
 =?Windows-1252?Q?h92mbqEFOs9tWwAl6IKrbPJ0sjK+hklYVy4qgwsbQFS8a2sQ0zusmWj4?=
 =?Windows-1252?Q?z8ws3m+o7DmmYLUB7Z0p2rEH6QeI/YqwVjru1RP270sR+5fxi+Eo5yH2?=
 =?Windows-1252?Q?zHdcdYioLyql0imNz2uauzSTVTgTJlCER7vX5gSJzzmFmQ9oAl2jP20v?=
 =?Windows-1252?Q?gePN8bxNAj/ZoteqRfbx0IhBPg6Cduz7/0GYr5pRu5piMOvQma1XDzmd?=
 =?Windows-1252?Q?Aj0F217wNo0a5vxm+Gd8xfDx9jbA4YC3KlLpNdzvAAoiO8LfaoEA7NDu?=
 =?Windows-1252?Q?OXBnOsEcvttX7yTm/FOtvoEWz8i3SyuID7p8K4J3XD/HDe1WHzw8ufD3?=
 =?Windows-1252?Q?IJsxnsk8ta9dDlegM+lg8zWvg3+ty/tNFaaD106kfNVOQvu+7ZVAudyh?=
 =?Windows-1252?Q?+X2KHDo6ANHSblmH9FsfPUsiEqC6b0hlh7rNOarQ+Ya4xW5caJPUABdg?=
 =?Windows-1252?Q?MqrPcF/Zdsj47rsFugQ3ImXl+kbqYi1fA7Nt2EEpyhHfL7ZOVCaUqI6L?=
 =?Windows-1252?Q?fop8nVkIGtpyHaXHfQnBBHbFSLG1HNoKMKBcZ7LDMNoJUavlVrUBIQLi?=
 =?Windows-1252?Q?GcdmM2/b9HZ4yWeOLV0/3dwQcM7/ps7mwob3MHVgYX8pgrqjW+YjcPhE?=
 =?Windows-1252?Q?EPqBp3mbzQkbKQE25Uo/5labhgEAIeI44wvBBNdCVCnAprmzOquV3E4a?=
 =?Windows-1252?Q?ViFyLb/Rir7jOxn8zN+BLJVf+tmwyak7CN8opaMAi1wJ8uMDuQSDv2lh?=
 =?Windows-1252?Q?WIyd6XUcYdQa2M3sIyPGYLXQvJmNhPBsU5YosVBZlGuIjeRlV+P4h67a?=
 =?Windows-1252?Q?JN4RvPOHEO7nawXQBuets0ni2slKOie1ii807d3hKY0ih6myQXhDJgRM?=
 =?Windows-1252?Q?AabfYHO0lO2HSMzVLuh3nyc0n7XRH4+lOMS6leJih+De/tBNQT6wGvSm?=
 =?Windows-1252?Q?Jo+GjxKsi+xK6nPD33Ap6mSkvWrL9bXRhVmz27WO/adcX4bT7X5geoRS?=
 =?Windows-1252?Q?6SSu1dNqmZ5sHZ9NMvlXJXb5hDAOsVTLegc4grugm5rUtBB/w1edo2rW?=
 =?Windows-1252?Q?YgFppNW5vCt9BM/LX4WcpOG7Hvv0ceg4tp275oOaTm46Ersfwn31zbfz?=
 =?Windows-1252?Q?ASpwBey91otcl6MWADBkrd5fM3mbLfI3xaF/HsPI0+Y724UjTSj85cXB?=
 =?Windows-1252?Q?IKhqaQcalk+qOfGxMAgefYLkUzaPLGwTIByHRIiDLBAjICbUtkeeudJ0?=
 =?Windows-1252?Q?tTrRrU/M3MkGTHhquRsl7ILhu9MhyybKCHFdmeCDSe9xtE7Zwr+7dhex?=
 =?Windows-1252?Q?4XO2X7hpFw7+3vZkv/HzZA=3D=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: spiceai.io
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH2PR10MB4231.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58d83736-9db1-4891-2ead-08d94cfa376a
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2021 10:19:40.2865 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92543123-2b6a-4eec-9b6f-595720cd1c8f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yHitjQPRULeby699iHab2/ODAE5VTyxuuoSBdIEygvYlmbbgWr0l9yCxQ3gAF+R5
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR10MB4905
X-Mailman-Approved-At: Thu, 22 Jul 2021 12:39:59 +0000
Subject: Re: [Spice-devel] github.com/spice
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
Cc: "spice-devel@freedesktop.org" <spice-devel@freedesktop.org>
Content-Type: multipart/mixed; boundary="===============0400792430=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0400792430==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CH2PR10MB42315B8532AEE20AE86B6C3BA1E49CH2PR10MB4231namp_"

--_000_CH2PR10MB42315B8532AEE20AE86B6C3BA1E49CH2PR10MB4231namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Got it. Thanks for the prompt reply!

Luke

From: Marc-Andr=E9 Lureau <marcandre.lureau@gmail.com>
Date: Thursday, July 22, 2021 at 5:16 PM
To: Luke Kim <luke@spiceai.io>
Cc: spice-devel@freedesktop.org <spice-devel@freedesktop.org>
Subject: Re: [Spice-devel] github.com/spice
Hi Luke

On Thu, Jul 22, 2021 at 11:11 AM Luke Kim <luke@spiceai.io<mailto:luke@spic=
eai.io>> wrote:
Hi!

I=92m the founder of a new AI startup called Spice AI.

We noticed that the SPICE project at github.com/spice<http://github.com/spi=
ce> looks like it might not be in use anymore, and that you might be using =
GitLab.

If that=92s the case, would you consider a conversation on transferring the=
 GitHub org over to us?


We reserved the name on github a long time ago. There are already several p=
rojects called Spice. It would be better if you named your organization on =
github "spiceai" instead. It would avoid the confusion.

Ideally github.com/spice<http://github.com/spice> should redirect to the va=
rious "spice" projects, in a wiki-index fashion, but I don't think we can d=
o that yet.


--
Marc-Andr=E9 Lureau

--_000_CH2PR10MB42315B8532AEE20AE86B6C3BA1E49CH2PR10MB4231namp_
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
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:brea=
k-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Got it. Thanks for the prompt reply!<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Luke<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><b><span style=3D"fon=
t-size:12.0pt;color:black">From:
</span></b><span style=3D"font-size:12.0pt;color:black">Marc-Andr=E9 Lureau=
 &lt;marcandre.lureau@gmail.com&gt;<br>
<b>Date: </b>Thursday, July 22, 2021 at 5:16 PM<br>
<b>To: </b>Luke Kim &lt;luke@spiceai.io&gt;<br>
<b>Cc: </b>spice-devel@freedesktop.org &lt;spice-devel@freedesktop.org&gt;<=
br>
<b>Subject: </b>Re: [Spice-devel] github.com/spice<o:p></o:p></span></p>
</div>
<div>
<div>
<p class=3D"MsoNormal">Hi Luke<o:p></o:p></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal">On Thu, Jul 22, 2021 at 11:11 AM Luke Kim &lt;<a hre=
f=3D"mailto:luke@spiceai.io">luke@spiceai.io</a>&gt; wrote:<o:p></o:p></p>
</div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-right:0in">
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Hi!<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">I=92m the founder of a new AI startup called Spice AI.<o:p></o:p><=
/p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">We noticed that the SPICE project at
<a href=3D"http://github.com/spice" target=3D"_blank">github.com/spice</a> =
looks like it might not be in use anymore, and that you might be using GitL=
ab.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">If that=92s the case, would you consider a conversation on transfe=
rring the GitHub org over to us?<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
</div>
</blockquote>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">We reserved the name on github a long time ago. Ther=
e are already several projects called Spice. It would be better if you name=
d your organization on github &quot;spiceai&quot; instead. It would avoid t=
he confusion.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Ideally <a href=3D"http://github.com/spice">github.c=
om/spice</a> should redirect to the various &quot;spice&quot; projects, in =
a wiki-index fashion, but I don't think we can do that yet.<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><br clear=3D"all">
<br>
-- <o:p></o:p></p>
<div>
<p class=3D"MsoNormal">Marc-Andr=E9 Lureau<o:p></o:p></p>
</div>
</div>
</div>
</body>
</html>

--_000_CH2PR10MB42315B8532AEE20AE86B6C3BA1E49CH2PR10MB4231namp_--

--===============0400792430==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0400792430==--
