Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A885F0B87
	for <lists+spice-devel@lfdr.de>; Fri, 30 Sep 2022 14:18:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1149E10ECC1;
	Fri, 30 Sep 2022 12:18:26 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12olkn2097.outbound.protection.outlook.com [40.92.23.97])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1011510ECBB
 for <spice-devel@lists.freedesktop.org>; Fri, 30 Sep 2022 12:03:13 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y/z9ZhE+R/8dtZKxu4+d6Gk+oRwAMcH58h4j5BlgxNOeDaQHiG3jSWaHRIVkmLRuwAmnFez8gsZEwZeJQQAYwedq66v8pxDpoxZyYpa2+SGAtpkVLSe3nKr4Kp6FRfQIbDcRMWr0ah1Rt14sfFCc0BI2cJPwGzQYd7/6sZHDv9x/c9vj01JuhVjdX/rGLHXqGzIwZjCIbQNNxBE1FA1tVl/KMBC+iTqNhODRIkkGpmMDRHeIUxkVCdO+mbrH8cM0Uj+GPDGHeLDEitHZ9ECdx4GDo9usJ1cx1OnOSXyiHM66j9wA5PBAcvuXJqAX7dVHfphLRJHDiWi1ro1tNmGt7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wKMT94rhngLdHGPZcw7tfEI7107NP4y56r53b02jorA=;
 b=by3aXisf6fEp2Z9cGHsZ9uEiU/pDK2AJJFIHd6j3gfbc4V1tEcfTqQ+1VCs2hdqrTYBExudSus/WzY1NX4GJHsnYT9Cyc2PjFIj0wb8lnLI2FwFQl8sr0B1rrgQCKraAJikYarsNrMRpaiQFieyTwbXGcxlSdmUhG8qCnZviByYk5mHfIAePnoXWD/+OeKVxlSxY1g27fQcAvtl39WkxBHZnUV/nY54zA7hfLiOGr6B7us37KyCQWysRqBWFS035YwZWSrbC8Tvzguh5tDqdG/EKLfxKWcxjKg3caurb9pLMeiVZxjn+mhDmbFZ3xep+kNhqRxytGv3hXj/SXGe+9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wKMT94rhngLdHGPZcw7tfEI7107NP4y56r53b02jorA=;
 b=NgFMtLTX/NMdajg/00Jb+uCi2gwcmTdP0uow84zTXeaqcIUG1axQlrzDzTHJRWtaPPcWIGALqEkoTPryoESh5p51MXQvy/NKxxv59VpE56qHVLgnN3Q3OuKkajBqtZiPSQuCqZqJC1SS3/n/eJZYkA/KSE1RwANa+2H6/oquQrCJ0aD/G9Mio3ZSjva3+pibS7WPs7gEsM9Ozep+mmxGUqtW0kMDwhUCJhjgcff6zDX9RVvCSRP54pBCj6Jsu0aXiBeyw/HMggRoqJGfeFMk9Zj5eZiSD2FM8tEievDvr2fuWK3Zxjwpur/NAxi6WOpqXXo63XmAryhi5zblHTochQ==
Received: from SJ0PR06MB8421.namprd06.prod.outlook.com (2603:10b6:a03:387::9)
 by MWHPR06MB3229.namprd06.prod.outlook.com (2603:10b6:301:41::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.23; Fri, 30 Sep
 2022 12:03:11 +0000
Received: from SJ0PR06MB8421.namprd06.prod.outlook.com
 ([fe80::d09a:cbfd:38e4:189d]) by SJ0PR06MB8421.namprd06.prod.outlook.com
 ([fe80::d09a:cbfd:38e4:189d%6]) with mapi id 15.20.5654.020; Fri, 30 Sep 2022
 12:03:11 +0000
From: Kormiltcev Nikita <kormiltcev@hotmail.com>
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Thread-Topic: spice-html5
Thread-Index: AdjUxJojNYaH8eeuT16eocNaVtzHVw==
Date: Fri, 30 Sep 2022 12:03:11 +0000
Message-ID: <SJ0PR06MB84214826F650E241F7EE4A07D5569@SJ0PR06MB8421.namprd06.prod.outlook.com>
Accept-Language: ru-RU, en-US
Content-Language: ru-RU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tmn: [v9shKjW2M4fpSlQ5rxjxy0ZtwW44Mbiel8ie6HnMPHs=]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR06MB8421:EE_|MWHPR06MB3229:EE_
x-ms-office365-filtering-correlation-id: d7d44f2f-c155-4b69-6a37-08daa2dbbf20
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3fJPog2/TG6W0ID0flT9afmkzyyiZL3FVsf7O4SpJT1QFyB2Kk/cu2jV6mFwXU/P/mA586whJRwq7WyG0u+PJnnjXmCPP5CJ5VSwOLLLh/hf9t0cpD05kt+hHWBzu+/LJx3t8HCpmea215UmCP0Twox7mjRoC5rsRKMSS5jGszSZmVs5iJ/2gyxqxZ01PePtglAKIBzUHUsWxkagc8npWNNxmMkUmxgBulbsyK/fCvhO9T0u+0B+RuCgDsmqZh8bvqv+GC9QKWMfj9PflEX29y0j3HBkJ6h4LIFzmGdq7j5FmriRaih569R6cIpBXrpFkjND55Ra3F6vFb+lshugXhS7aZqvi79cr+jMghGsLMnbZFFyRnP2EAwMyaO2wIehf0Gw13ni/pRg4M3dDbpTmPkC+k1TvHxkvhzZm1L3dWJhiCwtEM4OVFEkU9xmfITlqeseCEH7V97+uBD1b8xyB918xQRXWeSOa/SG1m2LpeoSPPShQEdg6hnTSxbaZ1cm3cbeyPmS5IJzlopQ4ncuwy/7ibfvAJHU8MDQlUvT5dzYiJvvrjwE7Yyoc1gbsHgzcuaeg1lZed+KUHu6P3EMfebrP0r8OQ9cd5Ro7vOGx076GMA7o8rzWDLV2jc5qeK7AaoSrZOjk1YhJTk5qJ4rxQ==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XvEEtc+6vDdmNS6T+uiVFBr3rGn4uM7bkaPTct+VRL++jWuiVUKwCrgSLSS1?=
 =?us-ascii?Q?KTIDb6IBwa/bqJvBzOiLmaZoR/ihQ7oUVXgb9MyDTRjQL/hmKyYXr4yG0NJc?=
 =?us-ascii?Q?1+Tf4gQxV6w6HWkX3/O58n39Cg6RI0bD1DbVdKACv7s5IGzQ/ny6ptLIbhdm?=
 =?us-ascii?Q?01moWjLhIerKOWOQpWvy4G8mLC+jhuszZ3NxGGICE25+v/5NV3QI4qhIC8Sj?=
 =?us-ascii?Q?JB9puEOqHd+CcU2vJ52Els0eN3QDawNRHa48EjIC84yCSKw7EBjBWLsmrUJU?=
 =?us-ascii?Q?adFCddPNZEV8rw2tvTMffZDTIWqsrQaOhLVfZ9Fa8HyjbEWYz89i0qyncKej?=
 =?us-ascii?Q?2mx84UGYiLOS0QOtqHV/0oUjnvcRArzRKIJ7I56nKLvfcraLbm8W2QRMpqSB?=
 =?us-ascii?Q?b7jwCCevKfTu4JiajSrcE5tGLCwjX7upnMqo+l98VQDbALUwfxrFxdbfP0gg?=
 =?us-ascii?Q?kTMJp+7eUGGwPbbb+rGkGHTphRKueIm7u2ayVzXd56Ph0VuQPlZTf0sTFq0l?=
 =?us-ascii?Q?WVOStlTMMVvHWqo6pGRdAp49mEtsWhJn/f4uqJ/Sa3cWSTXSVZP5Vf/Y7mpD?=
 =?us-ascii?Q?Ui/LmThKmiHHpqFSquIhM8wlQGew76QBmjxJIDIjHtVaND6lDre1vOc6s3nE?=
 =?us-ascii?Q?yHXrYPdZBuRxA4cFEAT4hnhE0iNm3Ge73pf1N0pDmGM/0AZupT9p8CSE+jrw?=
 =?us-ascii?Q?0Oh7sniufif+wtCo+hW8WOy2S2VcygB+pJakI6Qt9x2gg/bcQelbudQCLScx?=
 =?us-ascii?Q?lWKoKsKKxFW8OuWkmmyGoLx13lYyC3oMXVnAf9fQunE1EHcwPxe7uOqgeVl6?=
 =?us-ascii?Q?pG1axEPhY8vHiA52Y5uqSwcPetdXsRfBjl+OKhn5ycGPU0tPrqLGFvO0SOHu?=
 =?us-ascii?Q?+SvLuI0S5tRw3I8HkuR97xHDFyq872rAMN+GcwF5aCHlwqkSHcGLHYaWnaL+?=
 =?us-ascii?Q?L40NvYo8qPKgJcvSljLmBNOG9hKoDkVzAuorI9NmMG97+tylWgg7xX1xoYrF?=
 =?us-ascii?Q?iFN0ouBbDiy4uzH0Idkjg4ixf0UMAGzIj5lNvVcgJMzy9Z5zhLnSA32tqZeI?=
 =?us-ascii?Q?3aLbxxFfKHM5VxnZrDiStaX64/ZQAadm4dQXwGK5jeglDrYLEtNt8jznLJ2g?=
 =?us-ascii?Q?vAgbgpesvsmsID6GK9FHJWyvJQDwxohCG7TzrsLQL0InE16jdbZTlWk5K3T6?=
 =?us-ascii?Q?CFuAxPyz2oP0pYGu0u01kk3Ps9jyPUu7T90LwVev0gyxoNIdBmF/SLk45EAK?=
 =?us-ascii?Q?02k+y4b1i5jb9T0EBwn3Qf1USy/BqT8gYdiBIn+sEg=3D=3D?=
Content-Type: multipart/alternative;
 boundary="_000_SJ0PR06MB84214826F650E241F7EE4A07D5569SJ0PR06MB8421namp_"
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-89723.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB8421.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: d7d44f2f-c155-4b69-6a37-08daa2dbbf20
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Sep 2022 12:03:11.3519 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR06MB3229
X-Mailman-Approved-At: Fri, 30 Sep 2022 12:18:23 +0000
Subject: [Spice-devel] spice-html5
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

--_000_SJ0PR06MB84214826F650E241F7EE4A07D5569SJ0PR06MB8421namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Good day!
I want to install spice-html5 to proxmox. I read instruction and I didn't u=
nderstand.
Can you help me pls?

--_000_SJ0PR06MB84214826F650E241F7EE4A07D5569SJ0PR06MB8421namp_
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
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:2.0cm 42.5pt 2.0cm 3.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"RU" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Good day!<br>
I want to install spice-html5 to proxmox. I read instruction and I didn&#82=
17;t understand.<br>
Can you help me pls?<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_SJ0PR06MB84214826F650E241F7EE4A07D5569SJ0PR06MB8421namp_--
