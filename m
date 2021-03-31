Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03D9A34F955
	for <lists+spice-devel@lfdr.de>; Wed, 31 Mar 2021 08:56:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76D2F6E9F9;
	Wed, 31 Mar 2021 06:56:56 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2122.outbound.protection.outlook.com [40.107.93.122])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1ABF6E9D0
 for <spice-devel@lists.freedesktop.org>; Wed, 31 Mar 2021 03:11:50 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QXVNhn26JuqqaqOvaI/L5cU2f8EjPi8391JMRcsr3zu9q4kGCRuatv+h7OopG5Llli1pF7UvNQFeS3uS83r8L2w2ZVj6MDk8p/L8PuvcMOIMSzHCFwl1M7wbo7/vc2OmH/c7CBbuwAi4t/5GkGyAXsh9xxS0PJQygCGDKHX9A3C3jvkjCUFsaMSMOUoGr+XJTcCfMoa68LkZMJanwkIF8e/NQ2kAWFge0rN7f/lcywkBv53G6mMfC8re+wlaRpgZMxKFTX2C4BBydZerJ6Js17uxejBp3yYczn7Vlx751DWHqIhAwg9IR8NhGaAZTMrP2F+7EIZiT1kN5hx97AWTvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=teKWP/Sit4ialxDj+kHTYaadYlbQfDoOHd/DkMAeikw=;
 b=AN0A+nLbqv2PUlOfI32ObKv6OjmcjRS+F4C0oYOamJw9udMVzVltplZJ298OOEpALlh+sUNz3XGvP5AkHl0FkAXmiiQrppswXR+GBdSXbCWr5/I85Z5TtCjtBrk+nCnCq02PIIEegAHq2m9ElJwyaUWNTX3yeJ4YnCZnJaBB7hh1D0nhC1E+R78nyfbILVOLwSX1bNwHChCtV7ZUlpmFcnqRxZtTsgzrn3ehecPPxsLVBl9TOieyn6qiJ3bwDgoG0knmIjZ8BWSuDYxVWYUqpYHNai6KeM8oXc71CBp4UtkvDW5L/6zWcl7FWRD23ikBTRMCY4LeE9JOcAKh838PLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=augusta.edu; dmarc=pass action=none header.from=augusta.edu;
 dkim=pass header.d=augusta.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=augusta.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=teKWP/Sit4ialxDj+kHTYaadYlbQfDoOHd/DkMAeikw=;
 b=MGT9GpTawwFUwN6A9UBtm23itRcDcZiZwqdVIviihv1bUJZklivvpDpTx+IvkJE/Hy2CyiZ+nO+p3A3lTozCI9yrEIQC9BRDbi+XZO8dJ35wOu5PY+Pb3e7dDPIQgS0tRqz1Dr+MK/WZbxwmpOmjAYncoKfiwdijPUwpHJoEmow=
Received: from CH2PR03MB5237.namprd03.prod.outlook.com (2603:10b6:610:9c::17)
 by CH0PR03MB6049.namprd03.prod.outlook.com (2603:10b6:610:bc::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3999.27; Wed, 31 Mar
 2021 03:11:44 +0000
Received: from CH2PR03MB5237.namprd03.prod.outlook.com
 ([fe80::edcb:8daa:914b:ee66]) by CH2PR03MB5237.namprd03.prod.outlook.com
 ([fe80::edcb:8daa:914b:ee66%4]) with mapi id 15.20.3955.033; Wed, 31 Mar 2021
 03:11:44 +0000
From: "Browning, Peter" <PEBROWNING@augusta.edu>
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Thread-Topic: FIXME advice
Thread-Index: AQHXJdqmXA2bi0cVYk6MWWX8TMh0Ig==
Date: Wed, 31 Mar 2021 03:11:44 +0000
Message-ID: <CH2PR03MB52379A6D5EB225218C5E6B6FD37C9@CH2PR03MB5237.namprd03.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=augusta.edu;
x-originating-ip: [24.42.128.191]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0fd4ec3e-e91d-4ab5-a7e3-08d8f3f2b687
x-ms-traffictypediagnostic: CH0PR03MB6049:
x-microsoft-antispam-prvs: <CH0PR03MB60493E23AD0EF90D89688432D37C9@CH0PR03MB6049.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ILGXHftVhdY6cRFl+dGosqZLfwrRlo9cgjJ1HkwNcQnDmgBFlK4VzMTTs5xZIL5eERExpcCWWjStBMwU7D/tSq0GU78gQ55/Zwxn7vltR5SwLq13NTQHgMt8p6WZZE9MlA9/EB9nqUadhveVDF8UeJGenik/NbW9jAhPXNS6XwajLWDRzNy5UoISUwzENpOY4InB6pg+GsC5+XHes+Jwn5wVSwHKd5R+vkOnxGJHWctXe2s31gW8TJg/iQEQjZEYKN2dqY5Jxjgh3f/Op/mlXASN5sdwSU18d4pqANtZ7j6xJLhzVu4tzXJkOftJAsLuUrnzcteL+kfD5wU8iAkSKXZiv+qRDYY5mR/lipPLh+ayE9yoUyjlOjUWr8OrVLqCBB6yaq91ADfmeIIymebpo8Focn9VyFcqvGsdIQLtueiOFCZEzaR/0fEJ1yiEz0U3dBA8aUeXpiL37jD7SpJQYx6BRv1p2h4LV3gRogQ2i3/KX/cujhRXIt8nDGaeFDuww9fD2BwXRDY1K4vQiEg8zPosMNHpxAI/FyR3Am7lWdY3FdnXa4wo0FoMviyNktZzTdPFBJpLXz28y3qnxp84+66AYyB7SwD/ZzITdlaWvZI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH2PR03MB5237.namprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(39860400002)(366004)(136003)(376002)(346002)(7696005)(75432002)(316002)(786003)(2906002)(478600001)(86362001)(76116006)(52536014)(66476007)(66556008)(64756008)(66446008)(66946007)(55016002)(6506007)(19627405001)(71200400001)(186003)(26005)(33656002)(8936002)(9686003)(8676002)(3480700007)(7116003)(6916009)(5660300002)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?CUC1y5LMJUddof5HKJvAe/TUmQ+M7WfikbgFXAPNxFNJZjq519dKsdIT3h?=
 =?iso-8859-1?Q?U0UHyRAonAWX5S8oKHWSWkhXD2NkA1NRw8sNEz9kqzE917Hh4KanKcCOFR?=
 =?iso-8859-1?Q?cSiXXEbH0sbmplvUbAorJwxQ4Husn6H8YS+PccAXxX4IKBgpVjw+mS/uaM?=
 =?iso-8859-1?Q?pRbH3jJ+mTvGqM6rn74cZPkkvNb//4a8I1FkKwTzBsRMaGrsv/FJtkYa2O?=
 =?iso-8859-1?Q?DYGBFOQNZqzV/Q+NgisHdhdFrbsjNNepCF2C7cMVy0xt3SNXfJjl1l/KiW?=
 =?iso-8859-1?Q?mWEIkC7GfRxIJavQfE5va+C16ZvpxFjlx6aqGkS9KvrdXnQRUqxEzaUGBF?=
 =?iso-8859-1?Q?DnCX93BGkriuddNRPci9ajRqCHf+6YrtcW7tHF4d7ks+41u2h+LRfD5lQS?=
 =?iso-8859-1?Q?hlM8PCH4wzAocwoZWAwy1VzHW09Ky7/PJIed9YvKDRP0/40tES5OkHRn09?=
 =?iso-8859-1?Q?QFxLWN3j6b9erTK+Fa/KypwZBydcfRFx0lT9X/dhpubMKaxBnUaQkypReN?=
 =?iso-8859-1?Q?n6Oef2xTcNs0PtFWju5+p9kgrlfA2mobta243K4FTsDr7cDnzLOWcp6NXN?=
 =?iso-8859-1?Q?lAU02YFYZY+SXcrNjBvSoZ0+WgbN2QDAAE+os9DVz2a/q4QK9L67Cguzoy?=
 =?iso-8859-1?Q?HqHwTDYxZ3aAo102+7AMCQS+CuRxZkGusf6qAj1/qi4JmY256s1OA1h1Qf?=
 =?iso-8859-1?Q?38sQAgcLxg4e5gHrUxyztbFZJfFbG1IGGD86nCwu0oKotmFs+8RLAk/V53?=
 =?iso-8859-1?Q?XqHHMBA4Fj2byAKRgwFgF4BxTk4cQ8kxqBpTiUoWoWMiLuY3hJhMOIbh6z?=
 =?iso-8859-1?Q?cKD6kfND5uA8r7AxtHC5SOLHOgW+5TyQx0nhNvm8YDpxpDHyvYUXdJUECz?=
 =?iso-8859-1?Q?7DJqne2aTwdlGbB6mTmhSf9kzhB9TNRozqAYcz5dDsEQJn5FzjKk2jfk1V?=
 =?iso-8859-1?Q?msnl/AprCZMwrnj5Rasv8sMlwWqVng+0427cfb621KwvfS95sKGUu485Kh?=
 =?iso-8859-1?Q?zd8ZcAUh+6OGYmeEM1BEbrskwnertiw8n0QmeD9M7NIlnJ5NEvOpqQ5Yna?=
 =?iso-8859-1?Q?K6635r7yTIO25dWNIGJ2ibtJtYI1U2oxvvZFKcI6aWZCJkYPfp6HcROarH?=
 =?iso-8859-1?Q?+nYHsL2dONmmobCgvCzem2Ljal52ntbuwuFy0hqMtI0jrGmMM5rrUPYyKZ?=
 =?iso-8859-1?Q?U7Y/uUPnOD0KSTUm1LDKASONN8Tg2542qXv6TqhiV2wIHLx9ZWI3wUOn/K?=
 =?iso-8859-1?Q?XeqpHO7hewJ4alO049+sP1BtSJ4ZRDwN3EwEbWrV4fDQO8ZwhTUWVHPD6o?=
 =?iso-8859-1?Q?t7+rHo346c/7N8PgcCyMuOBVl9jLTTjvvQU1XYfG4M1sXvM=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: augusta.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH2PR03MB5237.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0fd4ec3e-e91d-4ab5-a7e3-08d8f3f2b687
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2021 03:11:44.1350 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8783ac6b-d05b-4292-b483-e65f1fdfee91
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: m0uiLWhymengFhxwq07/vK4YAbNxR3qW10z7mSV4BQ9dh9XTEi048toRKRfpbCF6ozLMSI6OGd/5BcNjVXeMqg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR03MB6049
X-Mailman-Approved-At: Wed, 31 Mar 2021 06:56:55 +0000
Subject: [Spice-devel] FIXME advice
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
Content-Type: multipart/mixed; boundary="===============0587598929=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0587598929==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CH2PR03MB52379A6D5EB225218C5E6B6FD37C9CH2PR03MB5237namp_"

--_000_CH2PR03MB52379A6D5EB225218C5E6B6FD37C9CH2PR03MB5237namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Good evening,

I am attempting to address the FIXME in the spice-html5 wire.js class:

/*  FIXME - it would be faster to revise the processing code to handle
        **          multiple fragments directly.  Essentially, we should be
        **          able to do this without any slice() or combine_array_bu=
ffers() calls */

I am having difficulties understanding the code surrounding this however. I=
 was hoping that I could get some advice or insight into the way the buffer=
 and callback structure works. Specifically, how the process_message functi=
on processes data and how the requesting and needed functions interact. I a=
m working to make optimizations to improve client side performance on low-e=
nd machines. Any insight or advice you can offer me would be of great help.

Best regards,

Peter Browning

--_000_CH2PR03MB52379A6D5EB225218C5E6B6FD37C9CH2PR03MB5237namp_
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
Good evening,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I am attempting to address the FIXME in the spice-html5 wire.js class:</div=
>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<blockquote itemscope=3D"" itemtype=3D"https://schemas.microsoft.com/Quoted=
Text" style=3D"border-left: 3px solid rgb(200, 200, 200); border-top-color:=
 rgb(200, 200, 200); border-right-color: rgb(200, 200, 200); border-bottom-=
color: rgb(200, 200, 200); padding-left: 1ex; margin-left: 0.8ex; color: rg=
b(102, 102, 102);">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<div style=3D"color:#d4d4d4;background-color:#1e1e1e;font-family:'Droid San=
s Mono', 'monospace', monospace, 'Droid Sans Fallback';font-weight:normal;f=
ont-size:14px;line-height:19px">
<span><span style=3D"color:#6a9955">/* &nbsp;FIXME - it would be faster to =
revise the processing code to handle</span></span>
<div><span style=3D"color:#6a9955">&nbsp; &nbsp; &nbsp; &nbsp; ** &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;multiple fragments directly. &nbsp;Essentially, we=
 should be</span></div>
<span><span style=3D"color:#6a9955">&nbsp; &nbsp; &nbsp; &nbsp; ** &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp;able to do this without any slice() or combine_ar=
ray_buffers() calls */</span></span></div>
</div>
</blockquote>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I am having difficulties understanding the code surrounding this however. I=
 was hoping that I could get some advice or insight into the way the buffer=
 and callback structure works. Specifically, how the process_message functi=
on processes data and how the requesting
 and needed functions interact. I am working to make optimizations to impro=
ve client side performance on low-end machines. Any insight or advice you c=
an offer me would be of great help.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Best regards,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Peter Browning</div>
</body>
</html>

--_000_CH2PR03MB52379A6D5EB225218C5E6B6FD37C9CH2PR03MB5237namp_--

--===============0587598929==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0587598929==--
