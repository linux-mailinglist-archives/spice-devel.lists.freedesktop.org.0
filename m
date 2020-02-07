Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBDFA155408
	for <lists+spice-devel@lfdr.de>; Fri,  7 Feb 2020 09:54:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18F5A6FBCA;
	Fri,  7 Feb 2020 08:54:16 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-oln040092005060.outbound.protection.outlook.com [40.92.5.60])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E9ED6FBCA
 for <spice-devel@lists.freedesktop.org>; Fri,  7 Feb 2020 08:54:14 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LTcp9LXy0HnYCShIm79V/gQOnAYRbB68r1H4wIOAY3JFjnaRUZ4hxQF6r6XU+lSDn4v8gnrqT2mQUYeizF7j2EycWmwxLLmXjGJi7PVt1tj3shx4HbQEnImZKSy2H7fpy+468a66ia+fsK9NVoHunWAJ+Oy1ZWL8u3doYdNpsmWkGd/UBvZE3QFWSN28ugCkVyi+JCoBIeq0W9z/0akluB7/uI7/K5XGuSTtITPgyLyZrp/4LDMRPaY3a3djCgAN2y2pj0WAxzuZju7YIwXDAFfZ6X4XgSssswCZWAMiX7y09fMFlqskLWw85HESYIv/OMzkRkJSY61sSTBHmgrCkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zc8oFP+YIRxxgwy01EGKslu9rglUAdN4d7HDowRfoug=;
 b=jVLy7dbXxiiz4IdKrZwEerN5g8yg/GJf5pSP2ryxooIQQCFhzCvU2dQ25l/NoL16dG+QD3lwf9vyfWKEIOOA6T4ju25jOhPyESRQ09zcf7iLkX0ctrTz4wArI1Dw9RbE2y19hNw42FWPTe/W1pAU8VNkTDw1fj4eiBb+TPR4yczo6VXWqoRCco8yrMi6ql11wOvJW6Fu4ifx+mAPyFILuUZ1JKdETPb/MdLpc3TYP2A/j/7v54EKBkx8MIhacgxAkc0ur/0XZBtywoSys0K9aYDCiUjibYc9W6RdlE3H3CB2c3kiF9pcQiW9C49f/Ls9zke0XLqik3GfwfvgQoCHlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zc8oFP+YIRxxgwy01EGKslu9rglUAdN4d7HDowRfoug=;
 b=tUYEJunLdH+779liIvgCgSMVA69diXI9I55iujf6AFF9/wTkQ4jMguSTqbjZgaYrUfCLWN5Kl3uSAOdqoUeUWPnER6KdpAWspAbf/+rpwgD3uR5NS+S0OxTvpuO5M+N2ob+EQbuuLXOOchWC6wuiH7ErFUAs41dfisCo/J0KXq5nDnSgrGi3wv2ByLa02OvOzgCU/0O0Bau9Xo/GawhmM9qoW10Q4h1D9Eioycq11UrwYwDsdwl+YQcN6dOJvx8slEbwObaW4C2glNE5lbBHDmqCUU2m2KhAwrhk3v6pIi6UGDUF6UhPnz4+gqDKXBkiiDV2U6pfeEjoaupMh500FA==
Received: from SN1NAM02FT031.eop-nam02.prod.protection.outlook.com
 (10.152.72.59) by SN1NAM02HT087.eop-nam02.prod.protection.outlook.com
 (10.152.72.222) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2707.21; Fri, 7 Feb
 2020 08:54:13 +0000
Received: from MN2PR06MB5966.namprd06.prod.outlook.com (10.152.72.60) by
 SN1NAM02FT031.mail.protection.outlook.com (10.152.72.116) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.21 via Frontend Transport; Fri, 7 Feb 2020 08:54:13 +0000
Received: from MN2PR06MB5966.namprd06.prod.outlook.com
 ([fe80::8ded:9cfa:7c1:3f5f]) by MN2PR06MB5966.namprd06.prod.outlook.com
 ([fe80::8ded:9cfa:7c1:3f5f%7]) with mapi id 15.20.2707.023; Fri, 7 Feb 2020
 08:54:12 +0000
From: franklin zhou <codeit@live.com>
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Thread-Topic: how disable  auto enter last user windows desktop
Thread-Index: AQHV3ZNZ+Y2E9JDNQEi9wDVfqO4vig==
Date: Fri, 7 Feb 2020 08:54:12 +0000
Message-ID: <MN2PR06MB59662A5FF2F03BAE5A4130DEB31C0@MN2PR06MB5966.namprd06.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:FCBB699BAC8ED9B66701A7EDAE695A15428B1EEEDBC46E063E0CCC484000AF5C;
 UpperCasedChecksum:240365BE3CF205373761DC620A8007BE635F9B59F5AED51CAC3315F632CD2560;
 SizeAsReceived:6701; Count:42
x-tmn: [BtDeFsF9BPT37u7MVAGs/EZZ+bk9CbG2]
x-ms-publictraffictype: Email
x-incomingheadercount: 42
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: fe9e357a-38ff-4444-385a-08d7abab4d92
x-ms-traffictypediagnostic: SN1NAM02HT087:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wBVEK84aes0i5C2xDMnyfkUeTrRuUpNfTTe5UaxT66P6HaKOfEow81/zsLoSULnopJBROTuO16x8KSbDV1MowxrsXnMRTuTayAPf5UEVFUgTJmGm+A+RQ6nBgfPO/QHBS29KQrXvyM6IDSvV1UTPrBs8z9APJFujeUPnB4W/EmiRhg7n8IeHA/MeVq65gRZ3
x-ms-exchange-antispam-messagedata: ntt0toqR2dLdgFmjTyEgqZdby2kChwR7nz0N/lXi+gmEnhwnGj4UqHPEXD8rQnNUMK9grlIksjL9khjpfD98HO185pi+FRFpSKO8pQcIkO18Psw2LlmrDeTmJ4Vl8Cfgizoi3BwS7pFIostDX3hOzw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: fe9e357a-38ff-4444-385a-08d7abab4d92
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2020 08:54:12.4840 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1NAM02HT087
Subject: [Spice-devel] how disable  auto enter last user windows desktop
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
Content-Type: multipart/mixed; boundary="===============0849105141=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0849105141==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR06MB59662A5FF2F03BAE5A4130DEB31C0MN2PR06MB5966namp_"

--_000_MN2PR06MB59662A5FF2F03BAE5A4130DEB31C0MN2PR06MB5966namp_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

hi, all,

When use spice  windows vm,  when I first connect spice://xxx.xxx.xxx:5901,
windows need user name and password to login, then I input user name and pa=
ssword and logon=1B$B!#=1B(B
but I disconnect and then connect spice://xxx.xxx.xxx:5901 again,  then it =
does not need user name and password,
it directly connect my desktop,
how to disable the function that auto enter last user session ?


--_000_MN2PR06MB59662A5FF2F03BAE5A4130DEB31C0MN2PR06MB5966namp_
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
 color: rgb(0, 0, 0);">
hi, all,</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
When use spice&nbsp; windows vm,&nbsp; when I first connect spice://xxx.xxx=
.xxx:5901,</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
windows need user name and password to login, then I input user name and pa=
ssword and logon=1B$B!#=1B(B</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
but I disconnect and then <span style=3D"font-family: Calibri, Helvetica, s=
ans-serif; background-color: rgb(255, 255, 255); display: inline !important=
">
connect spice://xxx.xxx.xxx:5901 again,&nbsp; then it does not need user na=
me and password,</span></div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<span style=3D"font-family: Calibri, Helvetica, sans-serif; background-colo=
r: rgb(255, 255, 255); display: inline !important">it directly connect my d=
esktop,&nbsp;</span></div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<span style=3D"font-family: Calibri, Helvetica, sans-serif; background-colo=
r: rgb(255, 255, 255); display: inline !important">how to disable the funct=
ion that auto enter last user session ?</span></div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<span style=3D"font-family: Calibri, Helvetica, sans-serif; background-colo=
r: rgb(255, 255, 255); display: inline !important"><br>
</span></div>
</body>
</html>

--_000_MN2PR06MB59662A5FF2F03BAE5A4130DEB31C0MN2PR06MB5966namp_--

--===============0849105141==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0849105141==--
