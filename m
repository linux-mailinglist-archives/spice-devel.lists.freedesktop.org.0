Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D8B11A4E5
	for <lists+spice-devel@lfdr.de>; Wed, 11 Dec 2019 08:12:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE17F6E9D7;
	Wed, 11 Dec 2019 07:11:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11olkn2041.outbound.protection.outlook.com [40.92.20.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47CF76E9D7
 for <spice-devel@lists.freedesktop.org>; Wed, 11 Dec 2019 07:11:57 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WNSlrTR6xZuF0aOah8RhFJU6jzH2AjopC69w3Jc2bMd8MV6n40DTFFm8I/HJhc/bN3YjFN4TDM/NqqXPnQaE8GAnNnXM1tN36uk1dTpRlASqN7dxLAEDRLJRR62vgO10ujbDJ1GBtBQK/e96IhXO5OGjiERwLgYmn3sFSLX0hvfHpsKox2Z8BdsiHUTXm5JtloyGyCeE/G/ijx+9Woo9a5aHAVjX+MPg2h7DbvouqX8lO48kO/283eTtUF8WzLdMV2bswwktjWeco4wstaUMa5yaCRnaCrojsBMMfahtqjdTcJUgVf9G5QdIXEb0KPgjWs9eG8ltwexa6Mf8hK9z3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FX75p8TrRBBBahu1M0jLgHmDkA0JhbUIzGHPN20L4rw=;
 b=BX85ezF5jp/sWYysamLPhUKIL+rO/IVK3Fz/O8Gbl58+Gi7aqxhcKtmXSrwEm1iPLRBNa7XNQZIWG9H08Kd4NNzWuSNIi8Dk7bVGPAzSk8LibIsuuYnBOh+lWd9WScRdXPr9edtE7csgnmAxWi1OCagqEUJ0QFJi2ubV0iTxU/hI7XcSaFmAIlWis4Z9iEV/YtcR0pDVFpiHXS35/TQi1Iv2dZoqZQeMnJTIJcPLvhsbjyWc8dLb1OjB5hdnu1kMZG1CkvjxdQuravoLmduXj4rwGbYyGnDm0nRQ7c7npXs/3m7LhKfAtijhb0YdwccCEBOmB70sj5sHZHE+oVYfDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FX75p8TrRBBBahu1M0jLgHmDkA0JhbUIzGHPN20L4rw=;
 b=ZTWPGeZNyh/YxzHJ7TpxEDPXnBT17PMHJPEz+NQqA0T1iq7szHmXsp6+N9fRR0GOaW++A8VdTSmAP0MXNYBWFYsfMw/GlX+ophOB+m7G5QI9mVlQyjBlNdfIIottd/b76ZukafOrMiGqlrq241YUQnREu7Ppq6dZTD2Cis8wgTYa3Ru4wvSub+FGcINGd7gFo0JT0Ehw3fGlmVwRn8BwCF2TJzeIc8/CABF4FTyB4kZu/j7r0BcaVeXm0LYgEM7pftwemsQ/ayr38S3R3lYa7UyK3HqBczzKpUhVThohvMfikkJoZyWfjMG4BDDgyJ90YQTawo6dqt+LaZggNhfhuQ==
Received: from CO1NAM03FT049.eop-NAM03.prod.protection.outlook.com
 (10.152.80.51) by CO1NAM03HT042.eop-NAM03.prod.protection.outlook.com
 (10.152.81.78) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2538.14; Wed, 11 Dec
 2019 07:11:55 +0000
Received: from MN2PR06MB5966.namprd06.prod.outlook.com (10.152.80.53) by
 CO1NAM03FT049.mail.protection.outlook.com (10.152.81.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.14 via Frontend Transport; Wed, 11 Dec 2019 07:11:55 +0000
Received: from MN2PR06MB5966.namprd06.prod.outlook.com
 ([fe80::8061:7adf:1611:69f]) by MN2PR06MB5966.namprd06.prod.outlook.com
 ([fe80::8061:7adf:1611:69f%7]) with mapi id 15.20.2516.018; Wed, 11 Dec 2019
 07:11:55 +0000
From: Wenxu Zhou <codeit@live.com>
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Thread-Topic: spice-streaming-agent on windows
Thread-Index: AQHVr/JBWg5+fb0oVEygi3VOIxT91g==
Date: Wed, 11 Dec 2019 07:11:55 +0000
Message-ID: <MN2PR06MB59666676236ED0DE91440618B35A0@MN2PR06MB5966.namprd06.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:0218D1CBBFDB1F58736DECA17F2CCE0772F6EE8DB066C0B74BBA0A45C946B8F1;
 UpperCasedChecksum:1CA501EC4B13A3A5B0238C2123CB0173FB2C88815EED0B38005B28426B132ABD;
 SizeAsReceived:6689; Count:42
x-tmn: [NtyM/a6XZyDrtornRN9aev1qz+n/L0wM]
x-ms-publictraffictype: Email
x-incomingheadercount: 42
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: ae79b997-e525-44ab-471a-08d77e0967bb
x-ms-traffictypediagnostic: CO1NAM03HT042:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HnDdDet2XpS/UuwwOsmwDLa+XlA8Goz6jGkWfuZfTfOuGc1jxj2FLfhEMXb2Du97zGd2QYk7H+BUP1BsimGZiLDfyY2JxT5caaPv0Y5SPFlHVTQLP1kQP1oMB0DXtP4XCFAkQlnSqGMWe7/yG/qc5h8bbPuMXM7AsEZK19clkkwZ+CvcK6gLQrzbBXw6oMDO
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: ae79b997-e525-44ab-471a-08d77e0967bb
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Dec 2019 07:11:55.5087 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1NAM03HT042
Subject: [Spice-devel] spice-streaming-agent on windows
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
Content-Type: multipart/mixed; boundary="===============0957793741=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0957793741==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR06MB59666676236ED0DE91440618B35A0MN2PR06MB5966namp_"

--_000_MN2PR06MB59666676236ED0DE91440618B35A0MN2PR06MB5966namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Is there a plan for spice-streaming-agent to support the windows system?


--_000_MN2PR06MB59666676236ED0DE91440618B35A0MN2PR06MB5966namp_
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
Is there a plan for&nbsp;spice-streaming-agent to support the windows syste=
m?<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
</body>
</html>

--_000_MN2PR06MB59666676236ED0DE91440618B35A0MN2PR06MB5966namp_--

--===============0957793741==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0957793741==--
