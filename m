Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB2EBAA8483
	for <lists+spice-devel@lfdr.de>; Sun,  4 May 2025 09:19:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D30610E148;
	Sun,  4 May 2025 07:19:11 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11olkn2061.outbound.protection.outlook.com [40.92.19.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB32110E93D
 for <spice-devel@lists.freedesktop.org>; Fri,  2 May 2025 14:08:51 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jqHzWN/OMc486kf3p0Hl/bd60FDQYerC2aHLpDrJ2phNIcyi1QSrqsK7RCtRN+ynO16WeFGUbaN5OYiughd9tY4o86cuAQ7F7EpvqJAMCKlVYVzUf6oOewQoLY9+PmwaO/PqKOKrCFqw7/B+QYw6AdyNzrAQv3ISPtij/cLZFRA4vjUpZLAWwwpUm/kQurXS52AJOSM2QrJRQeIhhHa752SeP4grj5+tXU34+5igVIQb6nWbeSJkl7pCFKGu+LJmVCLMlvE0FbED80SK/4/pigj5pBfvo/toIp6SIkDHABmhMRl1W3UPAqWGF4e91A4r9jp7D8elgJkgYkle8X9L0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iSrUhPIvE7/j5xJTYUrlJNlQjk0Mz69Z/qIrrUkDKHc=;
 b=jXGQXFSzG5ja1bKUEB07p/DvYfpcTHMc1YS1hBheL80fTETKTTZCW/rpLyc1yTrvgdMW6tl5MMMd8hpbxat/XoDOlu+mP/wq6fpn78Tnbrn5la1G1/tdULGCq0RqHXkdCSN8XyJXXAzPR3PCyo7jeR8ANoGdnEPyPufnJR+zowMzFVuGBUSHZHTNNNrpN+B8WfW4fCYKFe6IX94PBJHjYZdRulP6T6mQRpehy2eaMEUYXpiZNf5u3E2WSlm+DjILMWHo4ZKi3ekNMphOxUvk4CSLY6eHZPalaV6/eBe/NVgWfoA7jeJc7hy1xK5ZS1hHgkRhO67WQuew7ZYSvEMejg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iSrUhPIvE7/j5xJTYUrlJNlQjk0Mz69Z/qIrrUkDKHc=;
 b=l9GSOgkiPWdGEFCNNpOE5NfxNSRNAnnGhM4wyZ3GM1ohU1rFz8Z5VndaoBop2SKZ2FsjkH9PIyX6VgrhLVAr3GWZWHz80stgmGoZto9cCYQToUxHKpbkKREuEzlatDQBGkW8XQEczsN95Mat44sRnHqUcY8hyIGBYVJ3oSqeIrfF1kt9VxKW484XTDN8dfbUJCCc1NWxTH1San4ZnRjJ5achZnbY+BX+3KkM+42h5MEaivQ0H7+35EByiRMYwgB9/MOk/tgzXLyHubWyU3EdkGJsuRioaam0tOyAUC8GRiQo+Vht2hjcbKkSkHjtPYNGWalhBAXNsbIiLbmrXDSsRg==
Received: from DM8P221MB0636.NAMP221.PROD.OUTLOOK.COM (2603:10b6:8:1d::12) by
 MN0P221MB0850.NAMP221.PROD.OUTLOOK.COM (2603:10b6:208:3ce::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8699.18; Fri, 2 May 2025 14:08:48 +0000
Received: from DM8P221MB0636.NAMP221.PROD.OUTLOOK.COM
 ([fe80::f552:d926:cf7d:29b6]) by DM8P221MB0636.NAMP221.PROD.OUTLOOK.COM
 ([fe80::f552:d926:cf7d:29b6%3]) with mapi id 15.20.8699.012; Fri, 2 May 2025
 14:08:47 +0000
From: Lee Crawford <l_crawford@hotmail.com>
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Subject: SPICE: How to disable Ctrl Alt R?
Thread-Topic: SPICE: How to disable Ctrl Alt R?
Thread-Index: AQHbu2nL8BBBVmZx20i8K8gAI8LaZQ==
Date: Fri, 2 May 2025 14:08:47 +0000
Message-ID: <DM8P221MB06365501CE9B0C38DDF5C22FE48D2@DM8P221MB0636.NAMP221.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8P221MB0636:EE_|MN0P221MB0850:EE_
x-ms-office365-filtering-correlation-id: 5d48fced-ca0f-4c58-70f6-08dd8982db7e
x-microsoft-antispam: BCL:0;
 ARA:14566002|15080799006|7092599003|8060799006|8062599003|15030799003|19110799003|461199028|3412199025|440099028|102099032;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?IymjPjHoD98PbWQNSnHNk9pGv0wWYsMjm2Y1rr4QWQpapQ/9T4Gj47ktda?=
 =?iso-8859-1?Q?KycfylT4n1qgZnv4/a1vdtBwqXrbH2KUPgiOnCtdym+MO7Ai1UXIWUqFpL?=
 =?iso-8859-1?Q?r+Q1HG8v0l8Z81hzNDoJqj7xW1/rdKFbJAN9mgOlGf2+pQSeg1GVqyqrVX?=
 =?iso-8859-1?Q?vaxJl2bX7+hO1Y/ZQLyzWs14gk5Do7La8nu805yA1JlvwDZF5NS2HuD8z0?=
 =?iso-8859-1?Q?PuUbdfytQnu47aaHdjdqDHhkAyq5e6s7mZm7NP/2xj8uPyvjFxpUDEW52w?=
 =?iso-8859-1?Q?iZVPl72So00x6PSLB/L5417tH5JUzAuZ6PJD9dB9lQJMD0w0TnJjSJcQMv?=
 =?iso-8859-1?Q?wR+VZr1mkZt1e6WPwL+qgU9HvzoxC0O1ANrI5dkNMeOEvhoUjjKS5SmJsh?=
 =?iso-8859-1?Q?mbo8SPMW2gGUhIl926N3+NCYKeGCoMbMkB39UmcOM0JHvc0pjzRWOo1X55?=
 =?iso-8859-1?Q?Qx1fjA5C3k+YQJzukNOYDj4+P8bIHyqI9ZEZBZjBv4q8DYkEHMyX1ioPJh?=
 =?iso-8859-1?Q?wxMtQlko+M434/s0hwb4ADw4LWy9ymAEgXrYySsF5gk7GKQ7k8R5fKX9Tq?=
 =?iso-8859-1?Q?muFF+EGtNZ7OGXal8a01CyrXgiKdmCYG586gM7cY4DKMvfG+tZc1PgYFxh?=
 =?iso-8859-1?Q?yeJszkkLeGB2LTQ0cwgOp2hy7dFfk6Kxt2V3w96g7jOvPEamdBgN8WTKmp?=
 =?iso-8859-1?Q?jBqJPDA+DZb+0qmMoDxYHyf/KNdAleJBPSUTq8V7qBNPvM2aLOnBQWjt5W?=
 =?iso-8859-1?Q?F4zTDbQDzpK2ADdLTPu9LTjHarj71UZfhJaij/BMYI8p7FFdFonJuGpTRo?=
 =?iso-8859-1?Q?Msw0aqY6qacZHZdj6ykc5JYkpa1jiM3rfr3La70tKxMJhYCDIK9NPvcTbi?=
 =?iso-8859-1?Q?Bq5NsoErBdM0BGNS+iFpd9HJvF4BDSND/foYZEAsxJu2YMYTAXAppdlqkU?=
 =?iso-8859-1?Q?nnJjG31iw9lLX8+Od0b/nss2QJYH2SQEyE9UEV59cQrnOlyZmYVaxo2g86?=
 =?iso-8859-1?Q?AzGqVKtcuhCdGELfRc448s35wel3MiePVw5KduaZMNyaASTl+gWF0HFxg6?=
 =?iso-8859-1?Q?/WM9OBhXCcAuU4i1xiHqoG8KvfDvSSJlvRuXiiPtxzJ/aE3tnMBIBCKdSO?=
 =?iso-8859-1?Q?81DVIU7biGWval1jrOYc9gBk+mScByYqymxzRy0trQL0IJoYgQ2KSWlbTe?=
 =?iso-8859-1?Q?WJUwWhBz1bFyKg=3D=3D?=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?57ye2Rd3fiK5M+FruIGdqfcQSfn9OugXVkwtEVXX208miq/XA3W0atNU9a?=
 =?iso-8859-1?Q?UndrhiqJisah6Zah5TFXPO71PT7ZFA9sdEeVLKxUl9r40OJ8xYCGmnHmd+?=
 =?iso-8859-1?Q?w1grQf96bPPLYiDGWdnQl2mFopGw7JNqfE2shftsoIe/RhUTSv0vl6OjrF?=
 =?iso-8859-1?Q?55HXiyqOYTvJM/p1u4/HyLIwOn4Km8AqLlVCiHRTLGrE9M/gknKMBtt9gJ?=
 =?iso-8859-1?Q?fHY5Am8V/V9JgrWJ1WgmmGzzn187b/WQp6KArtmQBEpVF8INP9jO8IZG58?=
 =?iso-8859-1?Q?ZjMCMT3lWyRNb4im6HWKi5lkTbsOBeuau/oasd+ITW/9OE3zDcAFdsRa4m?=
 =?iso-8859-1?Q?JJ25wirid/ERoOCwfm86tB8dWuLN7d3sEBAA3vlmu2H9J9JIqr4hJEigaZ?=
 =?iso-8859-1?Q?j7NKoAqDGgk/phUA8uhZ6dL78XXuXWf4Y1eZWx7C7Wmca1R9OfDWgTw7Z0?=
 =?iso-8859-1?Q?6FeDwyc9vPV237mOq0rn30AaWBF7Ja1mZ4cB+p2Df670sgs96fvDzG6Yg9?=
 =?iso-8859-1?Q?TZ3G4gpzdp97brdt8xlO87qLqOGhYGKPiVO92qaV46WiLjTfqp8ZhrwYEs?=
 =?iso-8859-1?Q?jLpFCmaCGfOl67bYsPc3wbliZs4YtntqEieTVhkChN0oU4DMJXecRnsfEk?=
 =?iso-8859-1?Q?WGCGqIhRDVBUVf9ARHsTXlibjkbChUrhyrM3E87B8x64m8Ex3A6XaS6CnC?=
 =?iso-8859-1?Q?urzyUo6aQAA2oUtIcUCIzu7ZCnHK2iacP+SiKfCG8ekqB6N9fyCAt4/gez?=
 =?iso-8859-1?Q?UUoKO1ouQm0YWucHa6A0mPlRwicRFouE+ijduVGbZ7r5mcgQXUtVE7jWGn?=
 =?iso-8859-1?Q?cQZzbZIfpMUF/BIrcGKpKs4MAtAkxO21PaDNlNkzq38gOrO81KqYwa2RY4?=
 =?iso-8859-1?Q?DhSyMnd0imhlL//ynOZnl9skBLeeyHqHKOXGJz6oJBIkN/oWvCZPSl+w75?=
 =?iso-8859-1?Q?CtANZoLMxBWA0LjnrTX/xCNaD2BCWRWqRLz6X54nvmq2JsW8BTctgb794K?=
 =?iso-8859-1?Q?kYdX4HTn6Zn57B19Ciq/dBSE/PJozFlGFNv7HG0suIxt4W4l0h7vNLvGR/?=
 =?iso-8859-1?Q?hJ1nwYYnBjXMvTw+mehoQwJDwo4ANKd1f9kKPjeRlNuwY27EaGoiBS7WbG?=
 =?iso-8859-1?Q?/UHFxtqiW4nMaqYqTg5t6Df+SwJx4lydNw0Qpbz/6GqrcvDvFElHuaxDAa?=
 =?iso-8859-1?Q?1LT5//s9Cqi+CZXY+j85Rldjq4TUOkgJhwOItHxGNrUVzk2DnP+Ed7MFHY?=
 =?iso-8859-1?Q?HLfDahG2bnBomN5a73M2fScQyY6sYPCLun2eHekNk=3D?=
Content-Type: multipart/alternative;
 boundary="_000_DM8P221MB06365501CE9B0C38DDF5C22FE48D2DM8P221MB0636NAMP_"
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-7762-17-msonline-outlook-7d150.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8P221MB0636.NAMP221.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d48fced-ca0f-4c58-70f6-08dd8982db7e
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2025 14:08:47.7543 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0P221MB0850
X-Mailman-Approved-At: Sun, 04 May 2025 07:19:09 +0000
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

--_000_DM8P221MB06365501CE9B0C38DDF5C22FE48D2DM8P221MB0636NAMP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I am a VMWare/ESXi/vCenter user of a couple decades, moving over to Proxmox=
 VE as a result of the recent changes to their licensing affecting my custo=
mers. One feature I really liked in VMWare's platform is the Remote Console=
, and SPICE has been an excellent equivalent product for Proxmox.

When I first installed the SPICE client tool I could move my mouse to the S=
PICE VM console session and type in the window, then move the mouse out and=
 work on a local program on my (Windows) PC. I've been trying to get a Yubi=
key device on my local PC to connect to a VM (still working on accomplishin=
g this) and I installed updated SPICE programs on my PC. I immediately noti=
ced I now have to hit Ctrl Alt R to leave the remote console. I'm able to f=
ind a config panel that shows the shortcut, but it does not allow me to dis=
able it. I haven't found a workaround googling, so I wonder if you could te=
ll me if there is a way to disable this behavior?

Thanks,
Lee Crawford
Mobile: (513) 518-5024

--_000_DM8P221MB06365501CE9B0C38DDF5C22FE48D2DM8P221MB0636NAMP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Hello,</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
I am a VMWare/ESXi/vCenter user of a couple decades, moving over to Proxmox=
 VE as a result of the recent changes to their licensing affecting my custo=
mers. One feature I really liked in VMWare's platform is the Remote Console=
, and SPICE has been an excellent
 equivalent product for Proxmox.</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
When I first installed the SPICE client tool I could move my mouse to the S=
PICE VM console session and type in the window, then move the mouse out and=
 work on a local program on my (Windows) PC. I've been trying to get a Yubi=
key device on my local PC to connect
 to a VM (still working on accomplishing this) and I installed updated SPIC=
E programs on my PC. I immediately noticed I now have to hit Ctrl Alt R to =
leave the remote console. I'm able to find a config panel that shows the sh=
ortcut, but it does not allow me
 to disable it. I haven't found a workaround googling, so I wonder if you c=
ould tell me if there is a way to disable this behavior?</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Thanks,</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Lee Crawford</div>
<div id=3D"Signature" style=3D"color: inherit;">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Mobile: (513) 518-5024</div>
</div>
</body>
</html>

--_000_DM8P221MB06365501CE9B0C38DDF5C22FE48D2DM8P221MB0636NAMP_--
