Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10A7825E5D1
	for <lists+spice-devel@lfdr.de>; Sat,  5 Sep 2020 08:27:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 991276ED24;
	Sat,  5 Sep 2020 06:27:30 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from NAM02-CY1-obe.outbound.protection.outlook.com
 (mail-eopbgr760059.outbound.protection.outlook.com [40.107.76.59])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 806FF6ED20
 for <spice-devel@lists.freedesktop.org>; Sat,  5 Sep 2020 04:38:38 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DftJLHEkioqZciXyBwmbvcTf/I62Dt64tYDUWrJg3wUbhEJyOfJAlFq1jR5Ib244oFS8ppmuNltsAQ9DpRfjcFwcz6ov5B5CFuJobv0M+DAWTDGv5QJNb2HuYLZusJFG3c+S7XnpPR1fDjOkmMejcII22tkOhFvYCF9vRVXfQdC6XnF7s8G/O5s1BFT00/R9obr1iwJq0eGChLR/qQU/jVN0IJ17wLxyvGZRZxgroUdYKPkMwyniQtDuQ2Aow79gedOt+xy4bTRPZaMgbEAVOKSiYVy8OK//Ur2La0gF8CjW4jlCBTMbcDFVr+Y+g4v8mTLQdjapFlJe/L/TfIDdCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OBlemmxQbKmZWaYJUWeoR48LjhskMrwZow4HBssKsFc=;
 b=inAkMh9QhuowoGjKhXJeFS6jEoPYaxXlDEwGtZOWRFmXKUVrRjsy4sNaCBskgiO6HYB59abeT4kpJtJA7SMTP99dDy2B7jVx2amJLm7iEccjEWQJm+6icEiVGNVMcLQNweHGdTIW8yBZnsPUvCogGePwzr7z5lfkv6J2WjU+1Y/5Mp8/yoIUvsJakzmbTYZsm3DC006QJtY2aC91HR7oE/+JQoRtHY8zPDmVlrJPjhG4KVLU1/nyd5zAaEL4ICVX+N4nsZoveNDzeIYU2rjeUweqf/DMUkiU/RrVnFynFSwB0Ei5PEb5+FUYZt0QGgbh1JkFKKVqc8TP3bjWSlBgxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vtc.vsc.edu; dmarc=pass action=none header.from=vtc.vsc.edu;
 dkim=pass header.d=vtc.vsc.edu; arc=none
Received: from BL0PR0102MB3492.prod.exchangelabs.com (2603:10b6:207:1e::14) by
 BL0PR01MB5201.prod.exchangelabs.com (2603:10b6:208:65::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3326.21; Sat, 5 Sep 2020 04:38:34 +0000
Received: from BL0PR0102MB3492.prod.exchangelabs.com
 ([fe80::4024:509a:df43:efc4]) by BL0PR0102MB3492.prod.exchangelabs.com
 ([fe80::4024:509a:df43:efc4%4]) with mapi id 15.20.3348.017; Sat, 5 Sep 2020
 04:38:34 +0000
From: "Thayer, Kevin I." <kit10290@vtc.vsc.edu>
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Thread-Topic: Shared Playback with simultaneous clients connection
Thread-Index: AQHWgz1yN2vCoLhg7keaNEU+Bgi/iA==
Date: Sat, 5 Sep 2020 04:38:34 +0000
Message-ID: <BL0PR0102MB34922D74D1058DC6BD08D669C52A0@BL0PR0102MB3492.prod.exchangelabs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=vtc.vsc.edu;
x-originating-ip: [174.83.3.246]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2ecca534-fcfb-43fc-0100-08d851558c94
x-ms-traffictypediagnostic: BL0PR01MB5201:
x-microsoft-antispam-prvs: <BL0PR01MB5201CFB6F62246485AE7421BC52A0@BL0PR01MB5201.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: apjXcSELzKdo41mZDo5ShHbFgjZ2tjtUGihssQ8jDBqEpxhWak5CF/FYgS2V6w7mujWOgw3BGS+Cz1snMoR88wpBFDdNNQd+1suZZJBkAfPVQPrI1GnjkJ4uW9F1oeISPDZ6srgSNisJxT5W6DJav2za05p+rea6J9B1M7Nfe6GSXar6AVx9DoTC300HJjvcD7J+0EQW4sxMC5mEThhBRQUjdt4XS9L5nPXPvYzZlhZbqawUgmKgXoQWeTK9L2dJRLcjxYXnImHi37CjXmk30e9tyPuhap9XegUAFGVvgsO23TewcEExmR7yBlhpj/UeK1HWBXsgRmEoUv1qu/Yqhw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR0102MB3492.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(346002)(396003)(39860400002)(376002)(136003)(2906002)(478600001)(64756008)(66946007)(6916009)(66476007)(66556008)(66446008)(5660300002)(9686003)(55016002)(8936002)(86362001)(76116006)(83380400001)(75432002)(71200400001)(786003)(316002)(52536014)(19627405001)(7696005)(8676002)(33656002)(26005)(4744005)(186003)(6506007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 51p2XrgAbmqKv5kitUoOKRvBzQ7cP+qBaxw+fo+NaBL0KXk9s1mWYYazrOz1sY4WVq6HMOdqtsuJ+nXI7waAtjz3/WGnLoPhaJMiKZcwXoiWQkRfw3YG+Co8XGgSxvHoyQgJjFN3suViZpsxia/dr3HMdeaCHys2ELSkNT7RlDSEAm02iisdbYrrb9/CTBWGByNOL3S8bdOIzUPiieP0D9WQlrUqLjBtRgjlu4sBc6ROcSYCNKw1e/YTeNeR7Goto93ZKpMb5jmaYK8CwvrF6iYJiGFM3TNNZQ7nF0o/fRxbyvjryAhQ2sM4XEusjBSOjuUxtXOFPjFEzXyLCKT9GbkaUMP689ivBmNew2kIz09yasz35BaU+ZIrnnGQ9qFOuLP8wXSU1xfYg3h35M2wfSccmR2m+PWxxtHNfS27wypIjeCnuEaihoBgNhfvh/7dQF4sKs/xIPx2qn7g0PV6YTjU5xHHYunlAS2Zui72gzO2vWCW+XGUFAhDpJ5CwR5VqZMROS23jK5W5rb0M5u40kMs8RJMKMKT+G3y5bFuY1YeUbhG0grFvhHmKTJpA2TPZ+qlLpOGsi+vWonx9IXX2S7uc8N0PmowkpH6lmzSLBmZDNX71g4drM4yXdq0ccLCFyHnmozgeH9DJIcTVjvUaQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vtc.vsc.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR0102MB3492.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ecca534-fcfb-43fc-0100-08d851558c94
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2020 04:38:34.5205 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b17e9703-dbdd-49fa-909c-03dfd13086af
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JXGYdKlPJegNatAthl32rhqFF9MFprfBmolz+RVnuYLwM0UeymQLH7K5NUU0+ne5DJKCsh4gjX6f15HHRUJJZg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR01MB5201
X-Mailman-Approved-At: Sat, 05 Sep 2020 06:27:29 +0000
Subject: [Spice-devel] Shared Playback with simultaneous clients connection
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
Content-Type: multipart/mixed; boundary="===============1652823025=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1652823025==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR0102MB34922D74D1058DC6BD08D669C52A0BL0PR0102MB3492_"

--_000_BL0PR0102MB34922D74D1058DC6BD08D669C52A0BL0PR0102MB3492_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,
I am a college student working on my senior project for Vermont Technical C=
ollege. My little team hoped to use, the kimchi/wok environment to create a=
 collaborative web browsing service. I have used the proper settings to all=
ow for multiple users to use the same VM. But I have noticed both in practi=
ce and in the documentation; that you cannot have audio for any subsequent =
connections after the first one. I was curious if that feature has been add=
ed to later versions, or if it was still being worked out along the pipelin=
e.
Would you be able to give me any more information?

Thank you for your time,
Kevin Thayer
B.S. CIT




--_000_BL0PR0102MB34922D74D1058DC6BD08D669C52A0BL0PR0102MB3492_
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
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<p class=3D"MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; =
font-family: Calibri, sans-serif">
Hello, <o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; =
font-family: Calibri, sans-serif">
I am a college student working on my senior project for Vermont<o:p>&nbsp;T=
echnical College. My little team hoped to use, the kimchi/wok environment t=
o create a collaborative web browsing service. I have used the proper setti=
ngs to allow for multiple users to use
 the same VM. But I have noticed both in practice and in the documentation;=
 that you cannot have audio for any subsequent connections after the first =
one. I was curious if that feature has been added to later versions, or if =
it was still being worked out along
 the pipeline.&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; =
font-family: Calibri, sans-serif">
<o:p>Would you be able to give me any more information?&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; =
font-family: Calibri, sans-serif">
<o:p><br>
</o:p></p>
<p class=3D"MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; =
font-family: Calibri, sans-serif">
<o:p>Thank you for your time,</o:p></p>
<p class=3D"MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; =
font-family: Calibri, sans-serif">
<o:p>Kevin Thayer</o:p></p>
<p class=3D"MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; =
font-family: Calibri, sans-serif">
<o:p>B.S. CIT</o:p></p>
<p class=3D"MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; =
font-family: Calibri, sans-serif">
<o:p><br>
</o:p></p>
<p class=3D"MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; =
font-family: Calibri, sans-serif">
<o:p><br>
</o:p></p>
<br>
</div>
</body>
</html>

--_000_BL0PR0102MB34922D74D1058DC6BD08D669C52A0BL0PR0102MB3492_--

--===============1652823025==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1652823025==--
