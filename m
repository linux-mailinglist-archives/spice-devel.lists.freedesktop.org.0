Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 648B15ADEBE
	for <lists+spice-devel@lfdr.de>; Tue,  6 Sep 2022 07:11:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 160AB10E281;
	Tue,  6 Sep 2022 05:11:05 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from AUS01-SY4-obe.outbound.protection.outlook.com
 (mail-sy4aus01olkn2149.outbound.protection.outlook.com [40.92.62.149])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6DAC10E281
 for <spice-devel@lists.freedesktop.org>; Tue,  6 Sep 2022 05:11:01 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S/tlK7TjEGTy90DiSZ6BM5i1COxOP0zHhM2ynIOC8hPVDS0jzgakjY1FjSyIhvg3J21pbyLaESh3vRB3lijmNh6tZs8UNuEKjVd1Z8XxZy7RIQjtKmPmC4yx3nWQOA8asMamrAm09HVqPy0OEcvI0YRqAjKF+mrJozhcgzN8fU43RG7wqX4ZXie++u6e4iAJ61yhjjhXu820pEoUb/gM/DKSQ/kVm9vJm51weHIQyEfCRdPbt3JW/EZS7lup2MNgadySEnG8zYyPRgo8lzniyJ9W5xTgWdvumKd3AFIjEIrWdmjfhZtqa2xCIOJ+SaR2/035YrZTM5weZG7dUUqM+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hA1mmwUJyGLHBWpB15vbSbYQT2UxcIVvHnWF20DwLxU=;
 b=hrnLdGmLZDw+t5YS+Xf3DNjKmFZjwUEbtM7A0tiqsSYqf/sRwR5NJuPS7UlJhrtHnzKezE/mkfY46ljOCeNlebpoDvlIZXs1mary4LDkca+3uOPHRhipUgrsFDgm2PIeWnHe9CB3QgQgrF/lFXTcAlI/uB1QS54O8BbEzX+cegyFtDnfEPFoqlyQIMwu+mmGKLdDwtEE6BQ4yj9Qb3LB3qtTiAvc3rTmZ+ciydCbIe092unwZtPHERGrpZVZ6gZ1SzUJ91ulXcLXcLyjIB58/0HjmkNwLiIRHl9jiv7iWJaMLFR7Xpbg9yFyJEVHzPPU/1wYE3xkn/91UZC6kXhByA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hA1mmwUJyGLHBWpB15vbSbYQT2UxcIVvHnWF20DwLxU=;
 b=fokho8tsj+vNg7XTMHXQO7uy4ne/b30SADQVjP0flj1ZGfYUYPULXcfhh292+Q2OcbKaKka/55aTPHQq9VaAY+MLb/7T/+6mAuNh92aZTb0vq6ayNd6OV0NgwRMt1Vu/lvdsX8mLfbn5CgO4knTLphw8Hcwf4F/Q68UT1+Gn0yYDg3QJL5EM40hL6nfxKlR3wiTHFX8cMbdBTSFoC6ta68LPQ5szM/r2ph/zGwReX5qCgxa3hK8pm6w3Yb2AG9Q+TcobMxSBfeeN8+H73amVBjnYZF5JRJBbIkEtGxTGUwxaEiU9N/aGjJdg7phol6sckMBzGhrxURGTdKXZFZtoLA==
Received: from SYZP282MB3252.AUSP282.PROD.OUTLOOK.COM (2603:10c6:10:169::6) by
 SY4P282MB3971.AUSP282.PROD.OUTLOOK.COM (2603:10c6:10:197::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5588.10; Tue, 6 Sep 2022 05:10:58 +0000
Received: from SYZP282MB3252.AUSP282.PROD.OUTLOOK.COM
 ([fe80::45a5:eb4e:4045:7c49]) by SYZP282MB3252.AUSP282.PROD.OUTLOOK.COM
 ([fe80::45a5:eb4e:4045:7c49%7]) with mapi id 15.20.5588.018; Tue, 6 Sep 2022
 05:10:58 +0000
From: qi zhou <atmgnd@outlook.com>
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Thread-Topic: [PATCH] unhide cursor if pos_x is negative
Thread-Index: AQHYwatVE65mb9rpNEyAXLFA8MgFwK3R2MiF
Date: Tue, 6 Sep 2022 05:10:58 +0000
Message-ID: <SYZP282MB3252459626A15C3DD629ADE3C97E9@SYZP282MB3252.AUSP282.PROD.OUTLOOK.COM>
References: <SYZP282MB3252EF544B06AD8AAF2E7746C97E9@SYZP282MB3252.AUSP282.PROD.OUTLOOK.COM>
In-Reply-To: <SYZP282MB3252EF544B06AD8AAF2E7746C97E9@SYZP282MB3252.AUSP282.PROD.OUTLOOK.COM>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [v8o+HC/2Ldb8TI+LOnnkll9YenMyiJJ0]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f40faab8-9a26-45cc-86f0-08da8fc62f3e
x-ms-traffictypediagnostic: SY4P282MB3971:EE_
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kcFXSiZWFkXjD3iVdveynN/VyW9K580qCFMD9/FCv5ECBXmkZY25Tj7xKuXHrXwe28UaYY4kP12CTWghR5qPwztavV5hqgUlvdBQxyXhwLx0J+hnx8zlXYMjhmXtIcsbMyjmwN1kfPINtpc3ao9ARhals9HHUDbdiJVsoFrMHIxCQQXziS03nsbYcm2Z9aYYRpbrvw4Vl5Yz+L8XuH950Pg9XdmMf4nLEEVwDByncIDhmgy8kj5+LAwXub50duQ5stVKFkWICu4UZX4XCCXj3i9NPwQJrRwU5St9DtE77Ia3rm+lbv0YrU5/qOazPDv/S2Y9Yd7LfPdiAyn757ywnuLk/yEclPrAv8qWUtZQaq2Kvz+u+QT5GaIe3hkj41Ki54mljp9MlLZ0YIWCG9R0NilNNsKnKvCGfBN3ArJCG5su/IkTAbQ1/guMJJmgmvsUx0TMYk4tloLWdlHk9yHw608n/v36Ccjqf4UM2GnFqYHqWcf6mWt2H/x52M6yvq6jIMTIUwCHJM2//YzWAbh/cnH1Mjfceg44noYuaMJgfT1jJ3jcbsbr22JZE1VpF/0CU5BkuEC6VgLLeTYmwongfjUDlwYN01TSAC5EOhQuPPirFMf42558N9rp5nRag98rl5K64WY3vUo6gX8x1KZHePV+skc6QytwGUKbXrKFi7XJ43s7Ih8zXa4ovSe9rj1S
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?FMrTMdfRQJBjdQTu2dKsJa+mskMIafyikzH0kc+VMN/W3ggg1qrb4kboFu?=
 =?iso-8859-1?Q?pHL9iuzvnbdtTcGGLa3YbdVYpaiFI/S97iPfyQ4PKUk6Qop7CN5uufnQhN?=
 =?iso-8859-1?Q?CDo6lUhr86bOQJmiVmh9XrYtryXiDPtCUI1q1XO9HeUIRlOrlscXLwoRa2?=
 =?iso-8859-1?Q?v2LMDEVHDXQDgALphioXTgdvw+8aYOnGggDpRAwsn2ApzYDfRTCRMYpDcW?=
 =?iso-8859-1?Q?CWrpgZpzqR/YSJPK0sS+dZjqIBW5hBYCKO5S2ayq8ZGMmIFbLqFImUK8yL?=
 =?iso-8859-1?Q?4X16qVlb3MErJC5VXC5OnBkv2NH1TkZCnojXX90v+8F9A+bJaXRmiXA3x4?=
 =?iso-8859-1?Q?lWtLOSVYBEQQbY6NGU/TKGPc5NVSACp62wuqI6vL4wInpuHsNXy5zL3B1M?=
 =?iso-8859-1?Q?xvbJUEhewVhSofPOUCZi/B0pM0CP3k4b+L6uVdNto4ARlA4z2TStktusR3?=
 =?iso-8859-1?Q?EzpZ6GIXXrw4mwf46kL9Nn9pMmVxfyhmJZoLRkQ+F7LmH/j4pfQhIzYvLh?=
 =?iso-8859-1?Q?4kS7jottLZ7xHHi0v/cyiz69FjiPuvoGpW/CyOV8p4wXd+NQs6pXhoni5m?=
 =?iso-8859-1?Q?TqBdZq3js1veHLMGYWDaCwy+ftZMST9zKEQRESsWzKa7m8iKtSthwBIUI9?=
 =?iso-8859-1?Q?02No/XaHcyTLSEIZ6JzsUk5ofqEufQDBHECEXca+qvzDfuzpM2zbiF3kFy?=
 =?iso-8859-1?Q?X0akynqx05HEftL3s8u2DwZwqnHGJq1D4SbXAjMSGhnS2bUCxai0IAkzP1?=
 =?iso-8859-1?Q?XHd0Rm4HXlDX83H6/UcarcnATwggcFzVajtZSayEoYzeGSTn8brLniKGOZ?=
 =?iso-8859-1?Q?Oy65AHJPfO7nZx5nXpNxNiGmSj/7Q1sG+63NU6mRWGA1dtav+VNCdzt+Sr?=
 =?iso-8859-1?Q?QVTeg+vUBU6t1RPPpNWCr4BS8RHi4Nxewxx4gfWdoJbcV978akoZ1kL2g5?=
 =?iso-8859-1?Q?XokOkN0kOhxTmzlULHoLKdUzmxl7hAvgPtKakivVe27Po0op7ce2diEY0c?=
 =?iso-8859-1?Q?DkQYP6rVar3zMaXYYMVxr0hgwcua6h/p6IMHUCe53VXAFWXb5xmKO00jro?=
 =?iso-8859-1?Q?U2kkNwsXvGuVJR7qZiUHYuQLjHm0hac9wUy+dE+UxvnAIQ7t/PxNZtmg8X?=
 =?iso-8859-1?Q?xLO31UG8aOgxHYdpBz4GKVoIJNdRhYTF5TqoCkcdxRlCAiEbwKgHdlTj8X?=
 =?iso-8859-1?Q?yYKeYczfLuBO1vsCc7uX8qMhtm/8cP6RrFP06GZq3lcZGY4lgyjlDG+SZT?=
 =?iso-8859-1?Q?Aiajz/uZCr90scktOR3C8haV5BUobPPY1g/YzHW0yJZi8jkQqVU4ehB4pm?=
 =?iso-8859-1?Q?uq4G?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SYZP282MB3252.AUSP282.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: f40faab8-9a26-45cc-86f0-08da8fc62f3e
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Sep 2022 05:10:58.4801 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SY4P282MB3971
Subject: Re: [Spice-devel] [PATCH] unhide cursor if pos_x is negative
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

I also made two videos for this bugfix in qxl-wddm-dod windows driver, link=
: https://1drv.ms/u/s!As-Ec5SPH0fuiymF5yHwe8R8GY6I?e=3DWnC3PX=0A=
=0A=
From: qi zhou <atmgnd@outlook.com>=0A=
Sent: Tuesday, September 6, 2022 13:02=0A=
To: spice-devel@lists.freedesktop.org <spice-devel@lists.freedesktop.org>=
=0A=
Subject: [PATCH] unhide cursor if pos_x is negative =0A=
=A0=0A=
From e1cb184f71e698509c5ae50c20c687130325da52 Mon Sep 17 00:00:00 2001=0A=
From: Qi Zhou <atmgnd@outlook.com>=0A=
Date: Tue, 6 Sep 2022 12:14:49 +0800=0A=
Subject: [PATCH] unhide cursor if pos_x is negative=0A=
=0A=
It is valid if position of cursor is negative(not hotspot coordinates). for=
=0A=
example: precision section, resize, move, north east arrow...=0A=
=0A=
Signed-off-by: Qi Zhou <atmgnd@outlook.com>=0A=
---=0A=
=A0qxldod/QxlDod.cpp | 2 +-=0A=
=A01 file changed, 1 insertion(+), 1 deletion(-)=0A=
=0A=
diff --git a/qxldod/QxlDod.cpp b/qxldod/QxlDod.cpp=0A=
index 341518e..f498115 100755=0A=
--- a/qxldod/QxlDod.cpp=0A=
+++ b/qxldod/QxlDod.cpp=0A=
@@ -4920,7 +4920,7 @@ NTSTATUS QxlDevice::SetPointerPosition(_In_ CONST DXG=
KARG_SETPOINTERPOSITION* pS=0A=
=A0=A0=A0=A0=A0=A0=A0=A0 return STATUS_INSUFFICIENT_RESOURCES;=0A=
=A0=A0=A0=A0 }=0A=
=A0=0A=
-=A0=A0=A0 if (pSetPointerPosition->X < 0 || !pSetPointerPosition->Flags.Vi=
sible) {=0A=
+=A0=A0=A0 if (!pSetPointerPosition->Flags.Visible) {=0A=
=A0=A0=A0=A0=A0=A0=A0=A0 cursor_cmd->type =3D QXL_CURSOR_HIDE;=0A=
=A0=A0=A0=A0 } else {=0A=
=A0=A0=A0=A0=A0=A0=A0=A0 cursor_cmd->type =3D QXL_CURSOR_MOVE;=0A=
-- =0A=
2.32.0.windows.2=0A=
