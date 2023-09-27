Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 120927B058F
	for <lists+spice-devel@lfdr.de>; Wed, 27 Sep 2023 15:36:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13AD310E51D;
	Wed, 27 Sep 2023 13:36:31 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from JPN01-OS0-obe.outbound.protection.outlook.com
 (mail-os0jpn01olkn2033.outbound.protection.outlook.com [40.92.98.33])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D89F10E50E
 for <spice-devel@lists.freedesktop.org>; Wed, 27 Sep 2023 13:16:05 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CcVAEyCFFKbr43d4TKvrcFvgpVhitqJ3q6iQ2/mTcsbM0zHtRK8r5ChNT7qqS6EXbEbVVbgK+oov5QJZsEW+W/o95ih2TPDtX/VJw7yP3cS6fj9v5yH8Cb96M4e7f1QDRn+5sr+PAHF3qbjGhC7eMNNdW1bOcWNrhMd25TBJsV2Bt3F48I8KqJ67vK7awQBPfVXdgfBItYEByJrfr81oSO/q1JFdRAhh/TOU9qNMo7cbfXYZCx8z/h1PVmg96+m8oMG3BFqbpBhY+zA12dZ68/ZeEkJx/6icWwygYuUGbYFx/5+o9gxuWlec+NyWxTQIkmU5kAd/CB4kKtLPTpJ+Xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fTFVBzd7/MSSRVfz7yHiNHfXvrB7TY7Y01bVzX4i0uo=;
 b=an5Cs7Sgk2FedsCDGabKak9wzfHuCJ3d3nt5ASSBPZJKp/xTqDc/AypymxP5ObuUHBcSUZpFDAewlv+F0AACylFlHYzl4XMIVkmJXHNjv/Kq+ZPtS6s+ALFTSxEgboI/07LxjMiBQRoI0PEQ3JNWBsyxYxjimqdup4QWrZo46Cd5asn6ptq37VIoJJ2LyKiDLYVw+t+WyPXC1DNQNlDv9DrZW2MrDKZtZFy9JEiNAZua6dI3O+q8n0c5LnJfZRzNkMiwXfOSZ9xmF462pYiy141LPeU4YWkU2Zq/6CBvDev1a2ZcNj/CMTXTlC7Zw2LU4VBZPeh4iVRqqoo+eKmQpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fTFVBzd7/MSSRVfz7yHiNHfXvrB7TY7Y01bVzX4i0uo=;
 b=sDwbg0vD7FeI1Pv5qtPHleAyP0ol5qKHxiI9l+eX6NB0DiF6CiiZ/vxV98u5YEwAff0+Fcexx3VS7FWOQ0OBt00LU3Wpu6qLHs2UEvgCMy+t7sUyEeJrlZoHaVUKVXF2s58+7wJzmHJAri0xeOGcgWInxs6hSpOYi/XE1tDtBKXkofCN2455HIkROtjfOTOin3euTBkBBVOcsaCU0vB6FipN5k7YsUnLPSVxu45qZGPZyzCEcxsFRVloN1qZf9Ex7BFu7SdSRYDWMNbujwHCRBC33eU7YTMeiWyYgXP46FrR5p9W/r6SpU4/7K6aauHm5HohZwNHb3vQOurhwy+clg==
Received: from TYYP286MB2915.JPNP286.PROD.OUTLOOK.COM (2603:1096:400:2f4::8)
 by TY1P286MB3345.JPNP286.PROD.OUTLOOK.COM (2603:1096:400:2e0::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.19; Wed, 27 Sep
 2023 13:16:03 +0000
Received: from TYYP286MB2915.JPNP286.PROD.OUTLOOK.COM
 ([fe80::7e96:a6c2:d8f1:89ee]) by TYYP286MB2915.JPNP286.PROD.OUTLOOK.COM
 ([fe80::7e96:a6c2:d8f1:89ee%7]) with mapi id 15.20.6838.016; Wed, 27 Sep 2023
 13:16:03 +0000
From: haibin wang <haibinwang@outlook.com>
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Thread-Topic: Drag and Drop from Guest to Host
Thread-Index: AQHZ8UTBIvR0+wMw3UCkhzb6X/Io7g==
Date: Wed, 27 Sep 2023 13:16:02 +0000
Message-ID: <TYYP286MB291548CC42CF7089D55BA36AC6C2A@TYYP286MB2915.JPNP286.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-tmn: [xgjHI2uwo3WQJMfgY2ae7LfVdSohMxzk]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYYP286MB2915:EE_|TY1P286MB3345:EE_
x-ms-office365-filtering-correlation-id: fddbf3ca-36fa-4c21-c570-08dbbf5be650
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CHDjoYgZHjeKiefm8T0v9UdQiLWUY4zjOZ/gcBCJNdtZTuzhi2h2ZGZSWZtQOXh27pUznNfZQfZ3B/9+cQ7z5exQ7PvQrxCN+WgPUha9ap+mzOj3ez7aLMDhlwAZ9IONxasv74nqLo8qd2VjwNt7R9WmQ67Jh9VvRjons9PaLAvpbNywNd3W/WDaoAIM9J1vlNXLSNLSn/u67L2xhpVeRNCSs8u0v83EAV1uYbH67IwdCq/UMWBfxwBeuHy7PeurKssYkszi+VWLm41IoG5a7Wzb8U4SRXrZV5WD0dcXyJZ77YimsXYIkwuhNlgEqfXQMQ6xKCRzkemBOgKms/+SAL8QR1IXakqiAow9UIIiI6r9XkJu3MDWSI+hh8cTkwpxba3yWV0afPdTyIrvysacc9TWnPhdOYynB5H4IcLtQu/eFF+CipnkechZSDM9hvHLSeJibprl1BlDPstf1YqiIt4S4UuFqQrcdjvwF41Yc8wbx1gwbDi2ED2H+ONcRKHCGJb+M99sO6RG0Auw8Psi9t2kulasUlda8d3jvD8c9DAPOdgDPYTPuaT/+t1WSMQTR+S3wQKml4LXkL0/C/oZyebow78uAoFKbOVhX7XiPqqjo3w0kgPD5BcQA8lu973XZ3C/iJkns2/UsYQhfOFqAbZ4pqUw4gsstaTCMaig3zgjINYGmvnRe/1kVWLsLkj4
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-2022-jp?B?WXd4NS82V0R0ZkduY1NjRG1HdUt1WUxlaSs5ZDA5aHNQd3BTaStFSnV1?=
 =?iso-2022-jp?B?L2hoSXc0TWg2M3l2UU52YkwxdEVJS2xqQ3kxcUxWUzZWdUNLb0l6akFj?=
 =?iso-2022-jp?B?ZzdyT1FIR2FCeEhITDhHWDZ6eHlrTWRtNFhQakY1aVE3bm95N1RvT3ls?=
 =?iso-2022-jp?B?L2ZxY3Zrc21FdDh1empzZTNhVmRGTGNFUzU1ZnN3anQvMlNlbWg4aVMy?=
 =?iso-2022-jp?B?a2VvQThWektwNUNFMi9VZnZyNy9teGFmQVNpSWFhU0psNWVvR1BIWlA2?=
 =?iso-2022-jp?B?dnhnVFkydVBkMkVzUEtIajlRdnQ0enZjMVJuV3Bab2s0VHU1R3JReDls?=
 =?iso-2022-jp?B?SWhEOElLWm9aRW01ZjBqYzhFblFhMmxvRHIxUWxxRFljYUR3WDdqM1dm?=
 =?iso-2022-jp?B?QnoyOVJSR3lvR3NVaGN2Uk1CVGJqZ1d3TlAwZTgrSk1PQ3RJakJueUt2?=
 =?iso-2022-jp?B?cTRZTExvVm84RUV2MlNDTkU4NDFhUlFGWmZUY1ZNc25GZmZtTHdmbDhl?=
 =?iso-2022-jp?B?TndyS2dMamdXYmY3V1lIbmZHUkU0aXZraE81WnV4WXVTM2RSQ3JFU0ZT?=
 =?iso-2022-jp?B?c3hkd3BEb1BzMUMzZlp4NzQzNkwxMXUyclFwZXlCTmZENDRkYnY0Z2kr?=
 =?iso-2022-jp?B?OEg1OEp2dU9INmZrR1JlcmUvdjEraGVNVHg3QmJQdC85VWZTMmxiRU9s?=
 =?iso-2022-jp?B?MzU1ZDhETUo3UWlRWTdRd0NWblU0NEdEeTIzVHJJcXJwc2R0T2VvNHll?=
 =?iso-2022-jp?B?N1FnQm5teU1WVnRpamgvZHZqMEhuQjhNMEtqZG5COWsyTHhQMW00dWhF?=
 =?iso-2022-jp?B?QWRXQzRnRmcxQ1FQdnhmdnZ4Umk4UVFqNU5XRDdaSFBvWHIwTHorV203?=
 =?iso-2022-jp?B?bXJCL21KN2EydEpRZkVsOVhDa1NxVWN3R2tzdUFqRmFGNlQzZzZJOU56?=
 =?iso-2022-jp?B?NUw4L1dobzc5S1cvK05yMStESDRYME9BejZqR1ZZRGRLd3lERkVDQkdU?=
 =?iso-2022-jp?B?cVp4YkpVNmcxQjI0RXMwdmEvMkZYTVhVQmZESGVFZEVPOXFDSFQwWmlM?=
 =?iso-2022-jp?B?bndZTkRmb3pVMy94S2pOQWFJb2IwZktaNGoweUhiL0pjOUdoVjhndHd1?=
 =?iso-2022-jp?B?YVFYb0tsMFJ1TGtReXdLclNwZDhkSWM4d09Cb1RFbHpsZ3RzSVdGWm1E?=
 =?iso-2022-jp?B?ME5uRHo5NlMyYXF0a3N3QVRKUzRFRGhFWFhLRitrVHZHOTVDQUVVVXJ6?=
 =?iso-2022-jp?B?ME5SbUNNYlpOdEF4UEtUcTYzQ05KTW1DbGEyNUFFQmJXT0U4dUM1OUcv?=
 =?iso-2022-jp?B?NjB4VEppaGVBekd3S2IvVjdENlpEaEpydmZBMjVMQnU4Uk9xQ0d2MVJF?=
 =?iso-2022-jp?B?TzdtbWhYYlVJTzk0amJ2TTg2K0JIU24wc2V4bjQzU3V6UEwzRzltak5B?=
 =?iso-2022-jp?B?anBlemNEaEhDcGY5ZUFEODNRSlBLWVppQ1Z2blNOMkd1WnIyQ2Q5TUdX?=
 =?iso-2022-jp?B?amJZby82aDBtalZIUW51V3d4dmlEZVIrNkRPL3dTbEpxazRUcWVmeHlQ?=
 =?iso-2022-jp?B?TVp6dW1NcDhzdEM1eEFibFNsZmUzZFNRQjRhT3JzdXlOT1JzK2YxdWhZ?=
 =?iso-2022-jp?B?ZHFCTjJGMncwdkJWQ2VMN0ZibVRYc2Fqd0J5U1RoSE95Q0p5TVl5TVkw?=
 =?iso-2022-jp?B?UWRtOWdWU053aG0vNDVKVnZTa0JqWmRxbk1EcWJZUWtZQ1BjV2N6K09n?=
 =?iso-2022-jp?B?djZ2NXFLTzF4VHhuWFFaTDdjVlE9PQ==?=
Content-Type: multipart/alternative;
 boundary="_000_TYYP286MB291548CC42CF7089D55BA36AC6C2ATYYP286MB2915JPNP_"
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYYP286MB2915.JPNP286.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: fddbf3ca-36fa-4c21-c570-08dbbf5be650
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2023 13:16:02.9754 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY1P286MB3345
X-Mailman-Approved-At: Wed, 27 Sep 2023 13:36:29 +0000
Subject: [Spice-devel] Drag and Drop from Guest to Host
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

--_000_TYYP286MB291548CC42CF7089D55BA36AC6C2ATYYP286MB2915JPNP_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hi,

I am using spice on my Linux Mint machine, and would like to ask a question=
 about how drag and drop is supposed to work.

Basically, I use qemu with spice agent installed on the guest.  Dynamic res=
olution changing works.  Copy and paste between the guest and the host work=
s, both ways.  File transfer through drag and drop works from host to guest=
, though not from guest to host.

Ubuntu (https://manpages.ubuntu.com/manpages/xenial/man1/spice-vdagent.1.ht=
ml), Debian (https://manpages.debian.org/testing/spice-vdagent/spice-vdagen=
t.1.en.html), and Arch Linux (https://man.archlinux.org/man/spice-vdagent.1=
.en#:~:text=3DThe%20spice%20guest%20agent%20for%20Linux%20consists%20of,des=
ktop%20environments%20which%20honor%20%2Fetc%2Fxdg%2Fautostart%2C%20and%20u=
nder%20gdm.) all say that spice agent supports 'transferring files from the=
 client to the agent', not mentioning the other way around.

What I wanted to know was, if this one directional drag and drop works by d=
esign, or there is something I missed or misconfigured as it should work bo=
th ways, i.e., from host to guest as well as from guest to host.  Thank you=
.

Best Regards,
Haibin

P.S.
host: Linux Mint 21.2 Cinnamon 5.8.4
Virtual Machine Manager 4.0.0
qemu 6.2
virt-viewer 7.0-2build2
guest: Devuan Daedalus Linux 5
vdagent: 0.22.1-3+b2

[https://s-install.avcdn.net/ipm/preview/icons/icon-envelope-tick-green-avg=
-v1.png]<http://www.avg.com/email-signature?utm_medium=3Demail&utm_source=
=3Dlink&utm_campaign=3Dsig-email&utm_content=3Dwebmail>     =1B$BZ[IBFG!#=
=1B(Bwww.avg.com<http://www.avg.com/email-signature?utm_medium=3Demail&utm_=
source=3Dlink&utm_campaign=3Dsig-email&utm_content=3Dwebmail>

--_000_TYYP286MB291548CC42CF7089D55BA36AC6C2ATYYP286MB2915JPNP_
Content-Type: text/html; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-2022-=
jp">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);" class=3D"elementToProof">
Hi,<br>
<br>
I am using spice on my Linux Mint machine, and would like to ask a question=
 about how drag and drop is supposed to work.<br>
<br>
Basically, I use qemu with spice agent installed on the guest.&nbsp; Dynami=
c resolution changing works.&nbsp; Copy and paste between the guest and the=
 host works, both ways.&nbsp; File transfer through drag and drop works fro=
m host to guest, though not from guest to host.<br>
<br>
Ubuntu (https://manpages.ubuntu.com/manpages/xenial/man1/spice-vdagent.1.ht=
ml), Debian (https://manpages.debian.org/testing/spice-vdagent/spice-vdagen=
t.1.en.html), and Arch Linux (https://man.archlinux.org/man/spice-vdagent.1=
.en#:~:text=3DThe%20spice%20guest%20agent%20for%20Linux%20consists%20of,des=
ktop%20environments%20which%20honor%20%2Fetc%2Fxdg%2Fautostart%2C%20and%20u=
nder%20gdm.)
 all say that spice agent supports 'transferring files from the client to t=
he agent', not mentioning the other way around.<br>
<br>
What I wanted to know was, if this one directional drag and drop works by d=
esign, or there is something I missed or misconfigured as it should work bo=
th ways, i.e., from host to guest as well as from guest to host.&nbsp; Than=
k you.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);" class=3D"elementToProof">
Best Regards,</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);" class=3D"elementToProof">
Haibin</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);" class=3D"elementToProof">
P.S.<br>
host: Linux Mint 21.2 Cinnamon 5.8.4<br>
Virtual Machine Manager 4.0.0<br>
qemu 6.2<br>
virt-viewer 7.0-2build2<br>
guest: Devuan Daedalus Linux 5<br>
vdagent: 0.22.1-3+b2<br>
</div>
<div id=3D"DAB4FAD8-2DD7-40BB-A1B8-4E2AA1F9FDF2"><br>
<table style=3D"border-top: 1px solid #D3D4DE;">
<tbody>
<tr>
<td style=3D"width: 55px; padding-top: 13px;"><a href=3D"http://www.avg.com=
/email-signature?utm_medium=3Demail&amp;utm_source=3Dlink&amp;utm_campaign=
=3Dsig-email&amp;utm_content=3Dwebmail" target=3D"_blank"><img alt=3D"" wid=
th=3D"46" height=3D"29" style=3D"width: 46px; height: 29px;" src=3D"https:/=
/s-install.avcdn.net/ipm/preview/icons/icon-envelope-tick-green-avg-v1.png"=
></a></td>
<td style=3D"width: 470px; padding-top: 12px; color: #41424e; font-size: 13=
px; font-family: Arial, Helvetica, sans-serif; line-height: 18px;">
=1B$BZ[IBFG!#=1B(B<a href=3D"http://www.avg.com/email-signature?utm_medium=
=3Demail&amp;utm_source=3Dlink&amp;utm_campaign=3Dsig-email&amp;utm_content=
=3Dwebmail" target=3D"_blank" style=3D"color: #4453ea;">www.avg.com</a></td=
>
</tr>
</tbody>
</table>
<a href=3D"#DAB4FAD8-2DD7-40BB-A1B8-4E2AA1F9FDF2" width=3D"1" height=3D"1">=
</a></div>
</body>
</html>

--_000_TYYP286MB291548CC42CF7089D55BA36AC6C2ATYYP286MB2915JPNP_--
