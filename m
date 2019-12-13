Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C6111DC28
	for <lists+spice-devel@lfdr.de>; Fri, 13 Dec 2019 03:34:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7C116E10C;
	Fri, 13 Dec 2019 02:33:59 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12olkn2105.outbound.protection.outlook.com [40.92.23.105])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14FBE6E10C
 for <spice-devel@lists.freedesktop.org>; Fri, 13 Dec 2019 02:33:58 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JPyp+wNgQV7zuoXsOQX0ncU+BXE5ua0vBzNNO8gFyx3YH1oALPX7/6JwE7HABirfdoiPW+BNfnR9cUJQAA4ZBs3Wuhmi4CXpcLfJBM5+K5UzzZODpfaaEEzlmBQDJ1BJKnmNrTkCntOjNWVeW3hFVokmWFG/z/CIBcYGInnotyB0rFaw5uxqlSrgXA4iFImcM/cpmI2CjHGnVg2ihCfsTsd9Y5w5D2cDl0Ij7A57RG1uSmq/POJaX37hVEn4hhJdz5z+4jMA22SS/0ensVt3V1czA+F3+wKw49kcDCQLu3MUa9p7VacvQptukqday7vL3IEP5Hq1ynswhjU9WgDEDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xkESI5Gboz+BgpaVqOOCaGnoDOgmm4ZIZwYU7Dnc5Eo=;
 b=ifacKY+6caHcIcWh9EIYyHEjN+VPruatdoyYDikH752cSWNddEKjX54CUNBekUQxebQ7Z+4guRNVWUkDTHfq4P6SzAt0H2vRziS5GdRtZbxzPg5S15fwCv0Dx3LVpfizXc1ZXeLjvrBadmOYuY7eXuw3Wj3wtSQXKZuH0BqVpKkyh4C/FEknCkDOrNpJYJFcv/XSOii7I0sP8sdtZJE+OYbH/EfgrEDfNwpCP3jnRf29PIUjBcjaL0up3baRm1NYBuMsnn55tckZhTi0s6kPheo7zgPrOPeGgKL/uZ5S34wDqJda3Lht+Ud+WrUXg9E1spMvAOLr9N8lmmJP5XDoJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xkESI5Gboz+BgpaVqOOCaGnoDOgmm4ZIZwYU7Dnc5Eo=;
 b=m6wyi8HJDBTCzqOpgghGuKuSKPnD7eWijcJmuWukJKNtK01TcBCMq9UaGCNzvKSQbZvEkowjsLiw1Qgqnn8xcBl5cVMzpklWz7nU20h7tkr9r09U9XGW/qSx2OYFpTPoI4L7DTIpGkX9tyF2QN6QHsiG69Bl0e6HzvQVqxUy8SZTn/McJO/+rUj4yICNuEfHzPK8qUGSOUeTgnoF4gyr+mzQ/3S5ETYCTLwh1FV+aWYwM0eV0rV/Y/uLFteGsZnHgIbxUHY260niJIXVtHRQ5KX17eMLc5kdf9G37brUbfWCAiInDEKvyU3p/j5k7hyWdepgViSzq6kmTPd8khdLLg==
Received: from MW2NAM12FT060.eop-nam12.prod.protection.outlook.com
 (10.13.180.52) by MW2NAM12HT075.eop-nam12.prod.protection.outlook.com
 (10.13.181.115) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2495.18; Fri, 13 Dec
 2019 02:33:57 +0000
Received: from MN2PR06MB5966.namprd06.prod.outlook.com (10.13.180.55) by
 MW2NAM12FT060.mail.protection.outlook.com (10.13.181.67) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.16 via Frontend Transport; Fri, 13 Dec 2019 02:33:57 +0000
Received: from MN2PR06MB5966.namprd06.prod.outlook.com
 ([fe80::8061:7adf:1611:69f]) by MN2PR06MB5966.namprd06.prod.outlook.com
 ([fe80::8061:7adf:1611:69f%7]) with mapi id 15.20.2538.017; Fri, 13 Dec 2019
 02:33:57 +0000
From: franklin zhou <codeit@live.com>
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Thread-Topic: spice-streaming-agent build with cmake
Thread-Index: AQHVsV2kwpPh3cBbY0C5AD4nZRbBZQ==
Date: Fri, 13 Dec 2019 02:33:57 +0000
Message-ID: <MN2PR06MB5966B0FE96C8C383F432BF75B3540@MN2PR06MB5966.namprd06.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:F6D2CBAAD225888E66610C9335C36B60B1804B5231A5575E38854FAC51723F43;
 UpperCasedChecksum:545E700F47EF68C9BED15BF04E3E8D4D692491BDDAB1E3FF23F446E49C929FA2;
 SizeAsReceived:6698; Count:42
x-tmn: [BIDuFrXvryhs//UwaQiSXmhKGsU2rFUO]
x-ms-publictraffictype: Email
x-incomingheadercount: 42
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: c24a4e3c-ed39-49ba-7f61-08d77f74e7bd
x-ms-traffictypediagnostic: MW2NAM12HT075:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QFIkdrxJIpRzduNkFsV88C97Gwy2uSKOp+AERWqld+l094ggS12t9RnraSCcH1LzEFGsfd5P0uiTfxi93N6nY5tiJIrM2bAEt0jbmKVjjqZn9ABGknnMeGLtpCmIE1G9YkYo2zfiTxknmFSOp3hyX5ky4Pgg046818tRKFa6NJ5uagqvzGUPk0V+WlYC/7KL
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: c24a4e3c-ed39-49ba-7f61-08d77f74e7bd
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2019 02:33:57.5804 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2NAM12HT075
Subject: [Spice-devel] spice-streaming-agent build with cmake
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
Content-Type: multipart/mixed; boundary="===============0083602071=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0083602071==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR06MB5966B0FE96C8C383F432BF75B3540MN2PR06MB5966namp_"

--_000_MN2PR06MB5966B0FE96C8C383F432BF75B3540MN2PR06MB5966namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Is there a patch that supports cmake build?


--_000_MN2PR06MB5966B0FE96C8C383F432BF75B3540MN2PR06MB5966namp_
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
Is there a patch that supports cmake build?<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
</body>
</html>

--_000_MN2PR06MB5966B0FE96C8C383F432BF75B3540MN2PR06MB5966namp_--

--===============0083602071==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0083602071==--
