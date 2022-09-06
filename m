Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A43A5ADEB9
	for <lists+spice-devel@lfdr.de>; Tue,  6 Sep 2022 07:03:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8190210E2F9;
	Tue,  6 Sep 2022 05:03:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from AUS01-ME3-obe.outbound.protection.outlook.com
 (mail-me3aus01olkn2149.outbound.protection.outlook.com [40.92.63.149])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9919910E2F9
 for <spice-devel@lists.freedesktop.org>; Tue,  6 Sep 2022 05:03:00 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WOMiGLr0F14/NH08TyGyDUMeE0ioHc4uQWOqQjJWHv0renT4hnHh1NISJboJhPEaS39IIcRQXCY80B2r9NGYLNHiTS0wq6sYQsH9K6A3hOAOmoCTybblVq9atUc1dsn3VshgKv5pmWRa6Uh/KBOFu7SLiobnDjAqJaBblV2HLIZAsr6RaZ8HRHOskTEpBj/gdcfrMEuLodTp6RrtoFCNoraMiJcxYwJpdmogUvTi8Bl9jKVOYUqzWICKTAJwPhCbiOuYn00kaRK3yqpaWfaOuYWEn2Or2k3K5maylm9vS0ROvX2RD3Hin10bfVLDnoIj2xhfHsLyF39cqC+T6dpppA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qzNpD+rMLM6Ht11KzD46d5S1/dST07UAtj3PsvzeyrA=;
 b=MBLiVxT8lKczYaYx/8mNzk+npz3yQOuvwK7m5igZJ2M02L1u9/WobylGpEXBq4g76A1ODSJrhU65gAs4rJhNnxJpSaOVmDnH0ChsfdXAutLgyL1X4z7n7P/9fNPAg9ws3hYNOh6hN6hBVEt6xEgoGTHk0D3HoWfXd0l6GfQVqvJRYvy7nDJuIHv5F4IvXRXcMB66pYgFc1Z75v5qHvi+qMhVSF50C7+zlui30L0l3Gd3zb4Hu9SxCZNieS+57nD/PL/k86XcYSgmf1V10qQ0izkNP90GYdvdXUSax1v6fHptNE3ZaZdwDMPDUj+ByObZRNuz1sTUH6q2POxPhBCQDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qzNpD+rMLM6Ht11KzD46d5S1/dST07UAtj3PsvzeyrA=;
 b=UCTsRVIb5alOYrA7MHgMSx2t54PDXSpNDV6QU1pHhZuVtjjjckM0OPu8/Zl73uZvOF78CIKLc+cSgxGCYASwmZnzSfWeoSMt1yhp+aYDwFQVZrDCE5vtzN6BfqmyuCGK4CB63u8m/WgEOgpl2Vp+jAu5A/vL5xoilo1M62ujmtiD5Buy256v++Hlpd5zjkXmMKHK1I5ENLjkppO/w3vJ0V5qBSTPzuCBEBLJ9zPGB0ghI5ZMhlKRlAMqS9PLeuFL1HlIEhdVPHNjZcsAavJ8J6mhs6kCWnhcB8RvF5DKoH5X9bLgWBm2O2Mgo0QDlRFTXfXYo2izSHCHwYneiIokeg==
Received: from SYZP282MB3252.AUSP282.PROD.OUTLOOK.COM (2603:10c6:10:169::6) by
 MEYP282MB1991.AUSP282.PROD.OUTLOOK.COM (2603:10c6:220:b5::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5588.10; Tue, 6 Sep 2022 05:02:57 +0000
Received: from SYZP282MB3252.AUSP282.PROD.OUTLOOK.COM
 ([fe80::45a5:eb4e:4045:7c49]) by SYZP282MB3252.AUSP282.PROD.OUTLOOK.COM
 ([fe80::45a5:eb4e:4045:7c49%7]) with mapi id 15.20.5588.018; Tue, 6 Sep 2022
 05:02:57 +0000
From: qi zhou <atmgnd@outlook.com>
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Thread-Topic: [PATCH] unhide cursor if pos_x is negative
Thread-Index: AQHYwatVE65mb9rpNEyAXLFA8MgFwA==
Date: Tue, 6 Sep 2022 05:02:57 +0000
Message-ID: <SYZP282MB3252EF544B06AD8AAF2E7746C97E9@SYZP282MB3252.AUSP282.PROD.OUTLOOK.COM>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [MLEkUcmCqE0Go2lxlxQLcoCZdsQu9VI8]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: be0747fc-dc69-459a-27eb-08da8fc5105c
x-ms-traffictypediagnostic: MEYP282MB1991:EE_
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6rkCaNXVUXy/xQLi3zcm2YdE/akPV1BhSbaLIZSjrrkZ5d0HziakWmY2Zx0RqxsaPk9079IXRf8ipiiKD7xAgA0Vx+RZ7yxyjqkGbO5bUOTUOD6EqFYqNUcBSayvNTjVJ7snfp3JXYVr3M15MMkwa1p0q/n7w9AJ0qEZxZcCWPb+Pqna8p7LgNIbHnxCpvuM09a7B9LBWRW/KRMRKvZzdKEiPti60jZ/XNYACA2TP69TeMLOWOvNzmGumEaAKKyUTZ5Fijc28PtalgnFC2gP6qqWHnb8hduSpEKO9GJIwgJzVM4diSJOvXmfZcx6ZQasMUoWdpcKdya5HzHK1aniIC2foU8J567rsD0xpyNxwVDbyEB15Qww2tBMohNPUl06T86n78bYHcKDLnejvHeR76r8EkCn5EYdvBktgheRjK/6yoAevuXOdweXQwUTjIohc5UUcPWHb0oCZniGLjJVjlvdafG8u/wkVPnFefQPsSvsHEyvtSm7QVkNjILptmgbryLz3snHSf/2PkfmyCFkwQ11zSal6QXi8rAWNq3XHub/lDijQxiH08xoAhbGAUDiD2uP7UxMTbOfKEnwzT9JZ5WW82ple6A5qly+Q0zIgX5lJzqzOf5tOYiyOiBEJ42dSYU+6tVM3j4G699PK+6y1Q==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?jyxjEH8hxLWdvDig9Ywd4NCjrNnt0w6QU825VZrVnqDpzA7vvUyCI51Gkn?=
 =?iso-8859-1?Q?nyc3vLnOyen4iyPcQZBLQwGIZNjhYxS4jkMmATW2IiV1M4D0rr7IyorCfD?=
 =?iso-8859-1?Q?FB0WnbfJJONxYG+bpmRVb922p2BtzcGdO30B2I5Kz44YKPEJ4u1prEG2Y7?=
 =?iso-8859-1?Q?Q7p6s2t1yk6VMNoDi0gkDmMs4rLdulEEFgL2E3f50i4j7sjKFd3xsydNM9?=
 =?iso-8859-1?Q?HdM1b5wCdwD14kWDteljk/e4W+H9j8Ai6tzXnwjl6nSdfJnZizZ9VHrduR?=
 =?iso-8859-1?Q?aibd/KreprkiS/+/lP88b2O4rHrh5qIcDYPz0suHPiqss6P7mToXOw0vPH?=
 =?iso-8859-1?Q?u8hPnYn+gay9sEF4VTEcPo8gyThnfqsvtDr3qI6OpDtp74VYcCjJlb0Lt5?=
 =?iso-8859-1?Q?0OHkpcspLj/Lixyp3MKE7sfgjruTwvgNxWlQLw0DvdNY97pxpbbcMf1x9m?=
 =?iso-8859-1?Q?3dTOHqughmR1jFnViOyLrxfQCC3McFr3EqFQ5oF8kIWuEbFjahe3iYJ2G7?=
 =?iso-8859-1?Q?s5v0TTaus/nyS9XZYk5QLvBnNZB+RVqSitQ6rUALflgbqC5Jlcr8499dzX?=
 =?iso-8859-1?Q?eCgDXO1Week9AYZg//qxSIwYwR7REABE2w2YQHgriubRfDT8VLi4gRxjIp?=
 =?iso-8859-1?Q?h5auogeJ3sOSWhLX/NkBRl+AUoNJyvKnnXcfIGVHsMOZVCH5MzPdqdJHuo?=
 =?iso-8859-1?Q?j/m5MNv38lc88aoQ28CuPKncJJHkeGyxcyIC1Ar318eSu5+YLlR6SpjHx6?=
 =?iso-8859-1?Q?fPlIOkKSwuDcSBkLvBnjvbkb4EtghvDqTbUuIaLmGs/KwUCW0jvZ4YT25d?=
 =?iso-8859-1?Q?fbQheBcrEuGlL7rIpKTIEIqatZcW3X9LJMiFau01xRHOv8SjMN9TIjg7kk?=
 =?iso-8859-1?Q?LeJzxiW9Alf8S9tyoEXmoY+l+59UwOsV9BhCM8niwU3rJ1mL84o3TK3Vnf?=
 =?iso-8859-1?Q?Y+PapYUDSMa+eRYJagT/yvXi0Vcdl6j9CgjPWr3rgozeRuQkGvQtWAqhhc?=
 =?iso-8859-1?Q?+pqpMc26sRY5L6EKHgxA0aKaU4cPjzxZjIDjuUEB/0mBITcWGhIE3NK5FA?=
 =?iso-8859-1?Q?JItIOWbOgATjgK/SY27nn/XK9S2NdEh5AGzqljYuZUd1SQ1orUy+MGGSzW?=
 =?iso-8859-1?Q?O+CykVZEnnF+Plihb5nU39O8BsKsPi85BKfYFVFmVrzSnXhWRdxl3pC0LF?=
 =?iso-8859-1?Q?0NLorHlprjcfyYEfyxLHQ08NJor+jvicperkOcLhOV4k9B6ctsIuFpBm6T?=
 =?iso-8859-1?Q?SF8HIAvk/KxyaVq7k4EUNZpSifrZmRdcvxY5oJA2F2mRbH+lCYEwQ4DNCx?=
 =?iso-8859-1?Q?EGI2?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SYZP282MB3252.AUSP282.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: be0747fc-dc69-459a-27eb-08da8fc5105c
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Sep 2022 05:02:57.1369 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MEYP282MB1991
Subject: [Spice-devel] [PATCH] unhide cursor if pos_x is negative
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
 qxldod/QxlDod.cpp | 2 +-=0A=
 1 file changed, 1 insertion(+), 1 deletion(-)=0A=
=0A=
diff --git a/qxldod/QxlDod.cpp b/qxldod/QxlDod.cpp=0A=
index 341518e..f498115 100755=0A=
--- a/qxldod/QxlDod.cpp=0A=
+++ b/qxldod/QxlDod.cpp=0A=
@@ -4920,7 +4920,7 @@ NTSTATUS QxlDevice::SetPointerPosition(_In_ CONST DXG=
KARG_SETPOINTERPOSITION* pS=0A=
         return STATUS_INSUFFICIENT_RESOURCES;=0A=
     }=0A=
 =0A=
-    if (pSetPointerPosition->X < 0 || !pSetPointerPosition->Flags.Visible)=
 {=0A=
+    if (!pSetPointerPosition->Flags.Visible) {=0A=
         cursor_cmd->type =3D QXL_CURSOR_HIDE;=0A=
     } else {=0A=
         cursor_cmd->type =3D QXL_CURSOR_MOVE;=0A=
-- =0A=
2.32.0.windows.2=0A=
=0A=
