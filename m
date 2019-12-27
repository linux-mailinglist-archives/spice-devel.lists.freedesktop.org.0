Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB31112B0BE
	for <lists+spice-devel@lfdr.de>; Fri, 27 Dec 2019 03:49:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7CC789739;
	Fri, 27 Dec 2019 02:49:20 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11olkn2016.outbound.protection.outlook.com [40.92.20.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6861589739
 for <spice-devel@lists.freedesktop.org>; Fri, 27 Dec 2019 02:49:19 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hhZJgW/9OecP7j/BWOnmcZylM0b6uXsclJ+pxTDmmAj9NlqoVqAxrRx3EWoPQP8ZxRzy7A61rgt3o+Z+/BHgeEZ1098bYOETUqJfq/ireOxH61RE5gE2YjG1jR7j7hmxyjOgY+7dQAXNkbZKkfGkXzqEORjGtiak6GJb/cY7R6ssS3iZ6YfOp2MF8FLJOZYX94gCcd3vEcTmBwxqj0y/7iy/oCLF5Yx0d5PTWX6SvNSr+BsCNbSVKZAQ25DsGHPnrSU4a0JE5YXT6JdXe1YoA3Kza80gDeTF78CIu5qNfrEttXsDmBU3qo63jrWP7xFLW/daeC4c7wcKeyMftmu+9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q7XXfv+Cm/G/1fqQnimbvrQ7zaJQZBo0v65hVV6DOeA=;
 b=BzFH/IjQbrZhybnsorIzreuSzmRPCTkeKwPTIGhdo7sGBLRvv8GMFIBXynfElXhIxtaG1236AToZtIcL5Ongdj08V1fZeq2ShV93A8AinoThCaWxwRWTHYxLKlNcc96INl12gK1i4s8E2pU9ZHUbeaZuqnKnlE0SEmi0LKjBaakYY4kib+ClUo/KqctRdLJT6KP7v4lUGhm0DVt7b5ShPaauxgv1LeacXEiP15ozA5gWVwkqgXal3IqNghrZXu4Yun2YSfdPNMbqHYTgwfsBtKaCbE12DWVmj8QhmMXjqKdp45iG/PIE1iJGMoJBM0Vj3dRt5/vrF7QTmEKX7v6lqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q7XXfv+Cm/G/1fqQnimbvrQ7zaJQZBo0v65hVV6DOeA=;
 b=IqwUrZPhvN/X8W22wajSyHpAMKPs3JTHAxfZ/Gcs0juSygKATKc9pdF4OcZ0geKzqXE5VjTV9u92slYk9obXsA/FNGVT9YZlxOmEi1CE92OLqP7S8fuEoHrHWjIyGV1+u6O4oEY3DH/58srAs+n/qEUrJI54lwGwUtFLZe42Fs0xZeUm8sEZ/UGVQStF0D36hLKFn4QN3myB2b3qO9ioZQMbfC+WqnEAdFwp1yGdUtsCyDoN4SDOebLl1ihXZikyrrG1jK4OB/f7UTgH2FHHHHoiLhEbXBAO1A/1acK2184PQxCvqvsUfWCqsTP5/JUhXIlULIruR+IjxWj5dBJeBg==
Received: from BN8NAM11FT055.eop-nam11.prod.protection.outlook.com
 (10.13.176.51) by BN8NAM11HT127.eop-nam11.prod.protection.outlook.com
 (10.13.176.227) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2581.11; Fri, 27 Dec
 2019 02:49:17 +0000
Received: from MN2PR06MB5966.namprd06.prod.outlook.com (10.13.176.56) by
 BN8NAM11FT055.mail.protection.outlook.com (10.13.177.62) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2581.11 via Frontend Transport; Fri, 27 Dec 2019 02:49:17 +0000
Received: from MN2PR06MB5966.namprd06.prod.outlook.com
 ([fe80::8061:7adf:1611:69f]) by MN2PR06MB5966.namprd06.prod.outlook.com
 ([fe80::8061:7adf:1611:69f%7]) with mapi id 15.20.2581.007; Fri, 27 Dec 2019
 02:49:17 +0000
From: franklin zhou <codeit@live.com>
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Thread-Topic: cannot drag file from guest to client.
Thread-Index: AQHVvGAeo+OALTGByU2BoJcUiD+rIg==
Date: Fri, 27 Dec 2019 02:49:17 +0000
Message-ID: <MN2PR06MB59667E5D641FCF397D0D0B8AB32A0@MN2PR06MB5966.namprd06.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:A373083DE11101F62D3323420DA24B91F41DA8EE15DF476E172E3EC11A785068;
 UpperCasedChecksum:7C653D9DD5AB5FF342774951F29B70EF2F3DB4D906889FA44450F51B66134F9B;
 SizeAsReceived:6674; Count:42
x-tmn: [3LpgX7svfeIrV/ykuMqsy/ZLXhqTwM5k]
x-ms-publictraffictype: Email
x-incomingheadercount: 42
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: f42b4832-7bef-49f9-4ce0-08d78a775d8b
x-ms-traffictypediagnostic: BN8NAM11HT127:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lrpgrPxUit2H26J2JvE9v/JlJQYREu/HOKajcj4SLCf3PeHsEqbDde6zlv+rrihVFp+tDYobhZisU2sCkHqXu26gmc/Xhe24M+Nid38MsRcsFA0aQZt4eaFMJ8YwKx2m/Gsu8JYbdMth3rDZddkuhX+8pSzgDinEM/Qyt+cwuV7FiTwvCLSb+HNfNiKXihe1
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: f42b4832-7bef-49f9-4ce0-08d78a775d8b
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Dec 2019 02:49:17.0926 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8NAM11HT127
Subject: [Spice-devel] cannot drag file from guest to client.
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
Content-Type: multipart/mixed; boundary="===============1282713961=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1282713961==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR06MB59667E5D641FCF397D0D0B8AB32A0MN2PR06MB5966namp_"

--_000_MN2PR06MB59667E5D641FCF397D0D0B8AB32A0MN2PR06MB5966namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I tried drag file from guest to client, but it cannot success, only drag fi=
le from client to guest is ok. is it a bug or need some setting?



client:  window10, ubuntu18.04

guest: windows10, windows7, ubuntu18.04



--_000_MN2PR06MB59667E5D641FCF397D0D0B8AB32A0MN2PR06MB5966namp_
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
<div>
<p dir=3D"auto">I tried drag file from guest to client, but it cannot succe=
ss, only drag file from client to guest is ok. is it a bug or need some set=
ting?</p>
<p dir=3D"auto"><br>
</p>
<p dir=3D"auto"><br>
</p>
<p dir=3D"auto">client:&nbsp; window10, ubuntu18.04</p>
<p dir=3D"auto">guest: windows10, windows7, ubuntu18.04</p>
<p dir=3D"auto"><br>
</p>
</div>
<br>
</div>
</body>
</html>

--_000_MN2PR06MB59667E5D641FCF397D0D0B8AB32A0MN2PR06MB5966namp_--

--===============1282713961==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1282713961==--
