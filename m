Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 522126E74BE
	for <lists+spice-devel@lfdr.de>; Wed, 19 Apr 2023 10:13:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEEB310E0AB;
	Wed, 19 Apr 2023 08:13:56 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from GCC02-BL0-obe.outbound.protection.outlook.com
 (mail-bl2gcc02lp2108.outbound.protection.outlook.com [104.47.64.108])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7923510E7EB
 for <spice-devel@lists.freedesktop.org>; Tue, 18 Apr 2023 14:32:00 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zc4wnL9l0aLjDZ2YLkDY/2MFvsSiOsMcFjv2/qDbw1IiE1b5J1NxFpncvAS6MYH50HJJvGTD9QeDC8feHXIu6T9B4AmSBWSFPrgRqRUepTjz3Sam86SsMdb2cBXE6OtXmfOKxnbzmyHOKT9uXHCVR70DYKQ0ZCFnndsDqBZl/8hXJV0fI7sdNHjnXmTI6FazUYoc1wRUAl/qwgTgWLJ7WVh+qrSh2kyCN3QuHtmYV0+vfSd3iOnLB3vuP/c3CggcjAjQ0CzGt9oVHKNp51PhuMsYMu3ln8gNN2WxdecljFxGZz89xuI++KFQobAVl8xsyEKteT/2hXQxdfiaO4lDig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2Nix8EfJVpogbPEscvZrHwUWsBoGC8BOIMc+MOEgMn4=;
 b=ek4ZWwNvA62lsSa8dT8P291vJ2UOEcYiBHfmwPcK2O5XGR2o1XK9AVr4ukWQdQz4fXouWUp898n5tBJ/9ZPzPnsvwuQR93on5dbnh57dmw0VTuoDLsbs12ezIdrwnDPOEx0P2kQOSHkCjtPH9AWZ1Sj8ZppinTP9FRQxzsYImHXW0XE49WknJtgnenCDNSoBECz6KHiaLcpv/DrwsOLmpBjTdnVjq4xq+d8zMWMfTEynSzit0ULmPEBvXFUrUWFmAKzVkCYgefpem2P4Q3B0pEdGODJYPGHmhi2lq9xpHxPCUP/kFp+iBTDQz5YnzhUPbuFvB3gPN+t7wDiBzNR1ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nasa.gov; dmarc=pass action=none header.from=nasa.gov;
 dkim=pass header.d=nasa.gov; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nasa.gov; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2Nix8EfJVpogbPEscvZrHwUWsBoGC8BOIMc+MOEgMn4=;
 b=FYEVH2jL5olHPrY93Ni92WUD1OposRQJRMDpH/s1P0gZr79FRlx3/L0MLFy+/fAJnf+oFtqB0mZj7Nnsqa5+LrvEQVug0ybqL3HdyBbZwyLSIeNm7xnEkHQYUUoimjKOs7rJ7drmEFNOS9QyOnT+EM/YHI9EWFii5ofbB7KWZF4=
Received: from SA1PR09MB8398.namprd09.prod.outlook.com (2603:10b6:806:17f::20)
 by SA1PR09MB10619.namprd09.prod.outlook.com (2603:10b6:806:367::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Tue, 18 Apr
 2023 14:31:58 +0000
Received: from SA1PR09MB8398.namprd09.prod.outlook.com
 ([fe80::1733:7268:758f:3058]) by SA1PR09MB8398.namprd09.prod.outlook.com
 ([fe80::1733:7268:758f:3058%6]) with mapi id 15.20.6319.020; Tue, 18 Apr 2023
 14:31:58 +0000
From: "Simmons, Thomas W. (LARC-E301)[STARSS III Affiiate]"
 <thomas.w.simmons@nasa.gov>
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Thread-Topic: USB redirection fails with latest virt-viewer and UsbDk
Thread-Index: AdlxYTgKobg03VG2RbmZ9G17gd/ATQ==
Date: Tue, 18 Apr 2023 14:31:57 +0000
Message-ID: <SA1PR09MB8398212DA5A87B1F62E4B448A49D9@SA1PR09MB8398.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nasa.gov;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA1PR09MB8398:EE_|SA1PR09MB10619:EE_
x-ms-office365-filtering-correlation-id: 49b1af8c-3f86-4176-0cd7-08db4019aa72
x-agency-banner-exclusion: 1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xdUtD6IGpWAACe6W7WvrtjJ1wCgYXpQX5Qo6udk+I4sFnNGx5TsbwUkjqBDQvlfYnSlQ4QhtxdIAr1r2+BrHRuZHxsfXeUvrDCdKudTXKvZCjIggATMYRU6aJ8K0E3p9lM0ilCHG0IwJkmpZdXgsV03HQlPTY3iiwoE2lfp99jD0/9LGKISSBNA0lnwdDp3Ge2WPo8AmCwr5/+8n1vX/hW+WV2VQLGaCMLVULhEkHFBVXa7vMt/gjgf+VR7WpACVEJJa7g+VZYrhMYLXXr2jGOcKWouBFDpuz2Tr7Pf4Yxg+UYzCeecQJtQP26/pvyzCuLhgj2EPm7sX7g3r4BDNAhtMkEKpiMLRssC+lqfbBbjtjTBlvnRgQSvxIXiqu09QHUw+EP8A1nFNzd54707u0vwjlCnXgcU49UTcUoPV/cO5lRgFV4ELOP38QBqQEqA6CrXVk2wQYD+MctkUyC96p2CeZBznrI3HQdiVOFqSebbh6hVHmgaczhvtnL00SMUMOMPwO00vADOoKY0WFoteiBIjscWkzXSUIQ6IiHQq3UzBSjBEZukk0pzFiomNA/WS50ksvBRHdAmXSVsFLZzW6iM3mhynM3XvhbXgI8kw8PDYz/4rg7Y6XnyyW7Ty4erS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR09MB8398.namprd09.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(451199021)(66446008)(6916009)(66946007)(76116006)(66476007)(64756008)(66556008)(498600001)(9326002)(71200400001)(55016003)(7696005)(8676002)(8936002)(5660300002)(122000001)(2906002)(52536014)(4744005)(86362001)(33656002)(38070700005)(186003)(38100700002)(9686003)(26005)(6506007)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?EIbQa1kWJgzEZzAh4+IsBB/73xrKRL/Y8z+KbpmX0fxMwSnIGNsjFlDrC6m/?=
 =?us-ascii?Q?NeOzZZw/mQgNDPbcGdM/QF2Lx7HOTvMsjmXhZkq1QuUN246b6Fk3qW86VLPi?=
 =?us-ascii?Q?X882J7YnHwT0KcMbhQm0rD5hJ1QERTR/5rSiMnUsyUmcphe/z/MhHMCdpjsI?=
 =?us-ascii?Q?4/n0kzKz57FIY4Lmov1koy4gansCZj1tNGLVKkYJxQjsKtc76OWJG/+R41t4?=
 =?us-ascii?Q?+YZ0ChzA0rLNM033H49mKcVLqhPfr1YttumZ3iPDQ8g8yQYlHFVuZCmTc/T8?=
 =?us-ascii?Q?XLkzW7klV74IITvIGxmINv2UFYFfCF4SOT0BGSz6OapDlfoG4T5Jc/7kC3AI?=
 =?us-ascii?Q?4sB+1SVOBThpdJKf9GJwDdo7imBDJhJ157GrE5TJCZTK72+2OEOtkgVhmuj0?=
 =?us-ascii?Q?gVnPGe74eaFJs7Ma3dvCLOp6uEZ/g2H37G7ip/5Mje6WzwTHMaLg1IyxuZ40?=
 =?us-ascii?Q?ne2MN6UbClzQQRRQzU0bi0EWtkawBYy1rez1QreEyDX7SxJWOTaNKN8mNxvK?=
 =?us-ascii?Q?CX9RGUPXTqQRlnJ8KSceERjBUfQeyBAUqRYXOHkJPVNU9VvAnhoT5Y/9/uMd?=
 =?us-ascii?Q?sovmY3eVaJL5kcOwqpLRUwOgUGrKpqzoao+CTYNoj+U4Ai9BbPsvf30eA6No?=
 =?us-ascii?Q?y6+56E8BfHvyy6dR3ZqvL9mnz6sy6Q2IjsmtvKuVkR1ILUNXPQ3Hd8nCs9EF?=
 =?us-ascii?Q?s2FRh6kgz5TXhwJ/brWLH1GRBzEfkmRh4T63FBRq9HmMVS5BdLzqeTMVUyiC?=
 =?us-ascii?Q?LBcNfzOG49kDJ3cgxW0BJaFulIdILoa6fyqXHx9sqo9kr4L2TIbEkgDSydIR?=
 =?us-ascii?Q?j5YLkjmnZigxDWCI8Uz6nLJ3VpyaeqiznBgIdcyEAc9Gkx6aBhwtEKZCs3uW?=
 =?us-ascii?Q?NZ6F14lEDeNyZ9qI2IxYpaSw0T9GrH6XaHNgdWeAeOzY3ESZsfrvaVTV0+kx?=
 =?us-ascii?Q?nppsjwFpEGhQJkrAY+5t0yr9aD3seB94PgQGKK+0W2Udyr4JAERbe/o8O2QB?=
 =?us-ascii?Q?8kMKHlpbhQ9ESni9uUoDu2HoC3XT1QITQ6j+YEV1+WMkAXNRGATVXWFGtpfE?=
 =?us-ascii?Q?lG4LfQ8l6J3Tb9hfWRZSQsHUlaXGCsmfm+XH0d1DZaCdd/ZlHO+W1jF5rSzW?=
 =?us-ascii?Q?yeXbzNXq23F0w8y/j21clNb0lbco5zRJLkpQeUP25gQlMxwIi1gLNlrxO2mg?=
 =?us-ascii?Q?CbE05G2BtwzI6qLyVfjzOVlNWHdMMbIn9aeCd2bGMQo8CYr9orHkoBpq77MZ?=
 =?us-ascii?Q?GSR17iacr/YU8XaMNLCI9k67XYeA5v6zUOKu8AIas7F1hcwxbWsE3Ex2ERxW?=
 =?us-ascii?Q?yKCvi54MKC6bjyKIRlCLFmlz8xUkQpvXJ9zjYtJUJvV6K8VrvCzTmOb51i5G?=
 =?us-ascii?Q?T/Lu8kCgqLNKT2FQSl8P0XV5yZTKcDl+uZqRfuMGsrcFTaBSmO3ju3uxvQzP?=
 =?us-ascii?Q?QPa4VpaOKKJuxm69ccwj7n1j9YjykS8neiZM5V5dk0P6Sf64pLm5HzbbTg7I?=
 =?us-ascii?Q?3tJkAnIyRBqdBK5L81SYXQlHTbDaIpY5/mRxrJaRCgg9shE9rX1yE0fSTXWs?=
 =?us-ascii?Q?iHQJlt+xsNyHiGf4cUkFf/Qi99/n6mGdILbAoia7?=
Content-Type: multipart/alternative;
 boundary="_000_SA1PR09MB8398212DA5A87B1F62E4B448A49D9SA1PR09MB8398namp_"
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 2ctRJCD1Fz34WCg5MFLT7Dp1BPExat0Mrtppp2MWbInkHCN/qAa8wZVBFfkY01dMps+TX2vI3XwEzklrtynYg/fp/HYfOWFKnQE1OVAUfh08CPE+UzmzsxC7M1YJbIBHoa+tHtbw96r27moGWwAwXlno0FqIj5vqNqTt/fU/PF1XevMm5GKl6/ZK74BdenH2EC8of3TYZzLqIdWp9/JCkgO70jy9FDtWjbPSDU9UpIIN2nYwA8ibS9MCTsyIZ/1DYR6/AB1x2cyOFiAWWTy+Wzzjt3gOXbpWStZDslXdfE+/48WRQPkkmZnECcPp13c9skG0Md2LPu0alrgkIgI4/lNwTv3ryigNbQIpJqbhmTKu0w8OP+SyzouBrJtwf0uKLYatM1H11TG7FZcqZUxzYl65VyV7zN6Z5QHWhUfe4s185wBh/fdwf4Zd9fUIuP/PHlbGWu48h3GKL+UYTTvu/w1FL6o7otUZTTQ5tSGrV35OEZH8yHPKk2vYTqv+kLpEBRdKdfkG08FmlFb3KwSoOnrzni8eSirz+C3uRlRpDHyp0E67DgYzmt5+iAhg2FX4FQfq/bhCqh9/8hW6lxXmus9u/vnL25Xn94+hRRF9fa/VMKt5kwoOFLB5uKOHV+oeliBqT0vZ/rswjUr7bXl6CamCqyP6kqZmvTcWyZhBLIOmJNYu1SuPQ73zfiwGsNP0Ev08PjOu24txy/C3maaVTlTrDCb0f2HUkpu8UbD/KtQmdj1wdc7zJisF/q2KM5LsnEq3GdFYP7Q2HOsejyawP45JkrH7M9tmQJpL/8iHm+w=
X-OriginatorOrg: nasa.gov
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR09MB8398.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 49b1af8c-3f86-4176-0cd7-08db4019aa72
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Apr 2023 14:31:58.0740 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7005d458-45be-48ae-8140-d43da96dd17b
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR09MB10619
X-Mailman-Approved-At: Wed, 19 Apr 2023 08:13:54 +0000
Subject: [Spice-devel] USB redirection fails with latest virt-viewer and
 UsbDk
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

--_000_SA1PR09MB8398212DA5A87B1F62E4B448A49D9SA1PR09MB8398namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,
When using the latest versions of virt-viewer (11.0) and UsbDk (1.0.22), my=
 spice console immediately closes when I select any USB device for redirect=
ion. Reverting to virt-viewer 10.0 resolves the issue and USB redirection w=
orks as expected. I am running Windows 10 21H2 (build 19044.2728).


Thomas W. Simmons Sr.
Sr. Systems Administrator

NASA Langley Research Center
Atmospheric Science Data Center
Science Systems and Applications, Inc


--_000_SA1PR09MB8398212DA5A87B1F62E4B448A49D9SA1PR09MB8398namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
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
	{font-family:"Calibri Light";
	panose-1:2 15 3 2 2 2 4 3 2 4;}
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
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal">When using the latest versions of virt-viewer (11.0)=
 and UsbDk (1.0.22), my spice console immediately closes when I select any =
USB device for redirection. Reverting to virt-viewer 10.0 resolves the issu=
e and USB redirection works as expected.
 I am running Windows 10 21H2 (build 19044.2728).<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ca=
libri Light&quot;,sans-serif">Thomas W. Simmons Sr.<br>
Sr. Systems Administrator<br>
&nbsp;<br>
NASA Langley Research Center<br>
Atmospheric Science Data Center<br>
Science Systems and Applications, Inc</span><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_SA1PR09MB8398212DA5A87B1F62E4B448A49D9SA1PR09MB8398namp_--
