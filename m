Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A76696170
	for <lists+spice-devel@lfdr.de>; Tue, 14 Feb 2023 11:50:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E335E10E870;
	Tue, 14 Feb 2023 10:50:18 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from APC01-TYZ-obe.outbound.protection.outlook.com
 (mail-tyzapc01olkn2106.outbound.protection.outlook.com [40.92.107.106])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2619910E0EB
 for <spice-devel@lists.freedesktop.org>; Tue, 14 Feb 2023 10:50:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M/coyxQjUNr8oO8nyen942BlJO8shNm37pMtsMGyJr1pnX21tbkCtZSwLBbdWJgX65d5BuQ1aQkppcg2Y+90mlJT5bdzcH2xm5EQOGMaxXCdjZSt4KvuUFHgL759FQbggGXlL05j/QVJB5f0/7F9PyxLJQlVQM/7J8iOARCrddspd8NfJQ5yEraL82XQP/yPhR+X8grnm30LYJskf/AwjoBhUdAAr+Lf5+1Ro20T3KKzGNAInRl0hOWL2vdmHjqDFNIxv/HJKxeo0qXf0OqCdK9nxvxclFx1wRaCQqQPI9pj9/WK7REgC7F9ivay5RFMHCyHRkE3Kgph9pyyx6bxUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m4i8uUCJrryMp5x1D+lUURrI+8Laoh6x9g8tPlHCM/4=;
 b=gRoakqzgityGO0v/ongZj+AMgEzHAfR50qZEj8tDf1Yg2Qih/XIcnJLWpFuzOb9Sj3JKeDQ2MWXbNvmKuAaYnCtP4ZU8fOZejCrcHDldYDfxi7Qc7nccQLWKRCirJvMSHLMWSCBI2boq2qkVfATCshYjg2TbPtfs96ZJwweiXTT6LKSSaXTUyAH0Xs84YAZlQa7/4ZF3vMcZz2Re1D8H3LxiwoUuB/Hjlc3rNXev8XqnoGbt4bFy9hD3pLfQpeU7qpCv/m40aqcOTJcysKUfrNkfZhzD24cx3AMLPVLRYr/WOBJ1K2Q0xqt3iPvR/nR9J3LFlzMhWBLHY/IChpR2HQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m4i8uUCJrryMp5x1D+lUURrI+8Laoh6x9g8tPlHCM/4=;
 b=im2eueyRVUY4KI4FJpszhRY+5C6a0vusvJ+dx+5Q9TTJLjDXk5uAWY4cTvcVR7JkvmCJxn8K8gSbQKyJkZASm0+wvLsybPv7Q0vHNtGtczNBtaXTOEyrvIVXkf61u8+1umgFfpAB2mmvPTN4HSXNS4Mq3WeVbtHARSjU7e5s+l5n16UIFXP0k9jTGrq7Cv9q2kOPQbQtzbXECom26U9siH32UzvWoqjR3czuuc5PAAp2B6CHZ1Ec7cvqwAt0IUOzwldBJYfzi21/VwcEht804ZqcSGRkX+TTnsDrL1DrfJXOCNhb1S8Re7A1MNBqCt1rthgZ66DeWZBB6pIFP7vGHw==
Received: from SYZP282MB3252.AUSP282.PROD.OUTLOOK.COM (2603:10c6:10:169::6) by
 ME3P282MB2033.AUSP282.PROD.OUTLOOK.COM (2603:10c6:220:a8::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6086.26; Tue, 14 Feb 2023 10:50:14 +0000
Received: from SYZP282MB3252.AUSP282.PROD.OUTLOOK.COM
 ([fe80::3021:4e2f:269f:86a2]) by SYZP282MB3252.AUSP282.PROD.OUTLOOK.COM
 ([fe80::3021:4e2f:269f:86a2%2]) with mapi id 15.20.6086.026; Tue, 14 Feb 2023
 10:50:14 +0000
From: qi zhou <atmgnd@outlook.com>
To: Frediano Ziglio <freddy77@gmail.com>
Thread-Topic: [Spice-devel] [PATCH] reset qxl to vga mode
Thread-Index: AQHZQCrEQXik5oEC60GtKnzkSlSffa7OKFAAgAAYoII=
Date: Tue, 14 Feb 2023 10:50:14 +0000
Message-ID: <SYZP282MB325243B7EB9CEF5B87E9AF9FC9A29@SYZP282MB3252.AUSP282.PROD.OUTLOOK.COM>
References: <SYZP282MB3252532513FAB75D92C10DC8C9A29@SYZP282MB3252.AUSP282.PROD.OUTLOOK.COM>
 <CAHt6W4fwa1r7f4gm5=_p2Q4cYHPdE5Dsk2484=O-9sNC1Wq2sA@mail.gmail.com>
In-Reply-To: <CAHt6W4fwa1r7f4gm5=_p2Q4cYHPdE5Dsk2484=O-9sNC1Wq2sA@mail.gmail.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [3ThQwU/odw2dAaBdRDZPq73U2nZtKSGUaign7BSRadI=]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SYZP282MB3252:EE_|ME3P282MB2033:EE_
x-ms-office365-filtering-correlation-id: e266319a-aefd-41ea-bcbe-08db0e7940bd
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vlX/iSnQDA1+As56kzWizIDKD0fxTb9ps3hzanwGJE8q8LE+zSBbReQPXbAaWv5F/4fWj5E3yQNlCZuhM7gcKwP6Yfqd3Q5HoKpO616BnNzEIrDlhRD0Xo1qntMWhY4vuugs7Nde1MLQTVQVZFBbeh01Jq6ceXUoYAhxQkpDhcwbsv+I2gqyUFrMaGRYkd/K9YiZ6N7HQMqGb272M1/fwv/AXqX7dy/Xqk6WF3US2y0EbUM4C82og6Vwv+n/K+q5234bMZPOng6SzTFNmkXnUgiP6btYGLcPr6qP0lX4aIhy2x+B/OpA+znEWnSkm2XpI18qIVgwNdI3djg5BcWqZHwj7shmK08S7uazjPOZ/1fMBzT2Djphx2RtLpLy250XcXSrAem5xjYmPIbNDD6KHS5ohx/rHrvaOOjXtO0TxohG2aSHNHVJ8MGxBwBJC9skp5vUdiMJvnSbtGaHdHNKr3HiUAwU+b/5byAXoSn9K7ytD9tmpXr5IhAIkOQ2FQHKvhg2O6fa4nBlU+o3HqBx6Mtnb+pXKglD9WFHidO2W9OcoLdz83wNjTXvhrE5AwqaKr37bGAO7+7o18YquZAK4JqV3UYI1HRXODUULVzAbKe6DPeaWVQLzG90SkDEMhcclez7kuYUuYAgDSLO/58r/GqvwAXRk8ErMxoMdPPNWt10SAC4RRoV1gU8ZyiB9cUh
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?lmw7ogaUpnUI8OKenUYCqlSA0lAjxRfWmhoKnr6bXSLgQbuGAz0gGqXVgZ?=
 =?iso-8859-1?Q?KqpK9nQ1mtROHTxWfVngymtexZlzPbKVoFZ1fGxwbiAVW/IO6pStLrZu0O?=
 =?iso-8859-1?Q?78ekjPi91krdsofm1iaDUQelosuhDe/SbF1Fk1UMA/LDZ6qyJtHYJF85R4?=
 =?iso-8859-1?Q?oGBptoxi6/Idoftk0Wo+SZ5V88vy6eRMesnt8bCr1u5An30eKTD3dwhoyz?=
 =?iso-8859-1?Q?7JEd08XS0I/PsfcH9u0fInmcSbbCSODsLpb+a7EyaFs1+5QdZ1tZqi7Rd3?=
 =?iso-8859-1?Q?//a5Pi+SoOYLbtxG/vrFYWxmjodOxkFWN4xQ5fXYisoFg0cVElzVFrXNOD?=
 =?iso-8859-1?Q?o7t/vccPPjAQBuMHA804RsdXqGfBnoLwaJl2Hkr3ULD/6oYPoB2i+mPzNw?=
 =?iso-8859-1?Q?OTxy1d5qAygZ8Sp9wWW1fQoGjDZYwVg0/dzOjb0HOLltZ2S58RRIubZKTT?=
 =?iso-8859-1?Q?QfjwZZylx0l3pM7SJBSqH4pXNOrvDqsENcybSkKuZ+SiZumlRvrQQRILD+?=
 =?iso-8859-1?Q?q7pB6lKepYPRMhCxvGE4hRipnEnQk2x42Dk/SaIxDiU6Fzek7ODuWrYh+G?=
 =?iso-8859-1?Q?XZ8ZbwqoEv60xpE7AwnopGBhjJ7JSKPe7TT7oMu5ilGQ80Ser8JJGnNw4k?=
 =?iso-8859-1?Q?+n9VWJKiCgn6JMantQQmh6ewYICuu9qSD2Fv7aPMyNVOhSP/GB4gEM5izh?=
 =?iso-8859-1?Q?pczNv8G5v6ZZoEhv0rsWTgoRpqSxKMM8aBS117VA128OvVu4oEKed4NEBw?=
 =?iso-8859-1?Q?yZtoYVHURZzgxRl1d18s8AhI+WlyhFNAJr3D6xa1mIa+nkKDJYxw2tPSw8?=
 =?iso-8859-1?Q?NHd4Z6ZgmZtzZYHyCJ5cNY2oijQS75qycGTQA06y6Hr/Vp86UgPDtdORWo?=
 =?iso-8859-1?Q?ZzQFsXQcO2HO3jxxcf9Yw2gsQg1hfCe+5W3EO1oZj0O4p+LO5zR4K8VQCQ?=
 =?iso-8859-1?Q?5nEAR3MDKSL6SMWaSjGseDIj2CoK3U+X+UHsBOX81OUtgb5MrqwnwWt4bm?=
 =?iso-8859-1?Q?o5cI4Dv7Y3yiGoAi6AlvCMsI9UMDoNquqaVQ/i5UkLvJMNNbSET48s+uvv?=
 =?iso-8859-1?Q?yshXjtYGQGR5KxdU8ojQ1ZMqiPpYpeUkTL+9KWFWFOXUBfdQTVoyBdCpK2?=
 =?iso-8859-1?Q?9XKlJtrbWQ4e5e/LVFt3kXZh2cd5R4rY3k3wlTidDMO9G4Vns0DZkUDdIm?=
 =?iso-8859-1?Q?S0Y2FOPV3rYLbmh1UfX4rmkzD25qCqilMC66AG94gRN6TlrszeSt52ETfr?=
 =?iso-8859-1?Q?fVG9V5lb3e8I4lhTNsq62zjqVGALQ6HhRzVrjRwC2XZVc61D316rKCoWKj?=
 =?iso-8859-1?Q?O9Y0?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SYZP282MB3252.AUSP282.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: e266319a-aefd-41ea-bcbe-08db0e7940bd
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Feb 2023 10:50:14.2752 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ME3P282MB2033
Subject: Re: [Spice-devel] [PATCH] reset qxl to vga mode
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>,
 admin <admin@atmgnd.cn>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

> Hi,=0A=
> =A0 It looks good to me. Why it was QXL_IO_MEMSLOT_ADD I don't know. On=
=0A=
> Linux is QXL_IO_RESET too.=0A=
=0A=
May be a typo ?, here you can use sysinternal's notmyfault to test this bug=
.=0A=
1. launch qemu use legacy bios mode. make sure qxl driver is active, then o=
pen notmyfault64.exe click on crash button. It will trigger a bsod=0A=
2. without reset/patch, we cannot see bluescreen shown=0A=
=0A=
before qxl revision 5, even DodResetDevice does nothing, the qemu will do r=
eset after detect qxl mode mismatch. see https://github.com/qemu/qemu/blob/=
ed71c09ffd6fbd01c2a487d47291ae57b08671ea/hw/display/qxl.c#L1315=0A=
=0A=
But qxl revison 5+ requires explicit reset=0A=
=0A=
reference:=0A=
not myfault: https://learn.microsoft.com/en-us/sysinternals/downloads/notmy=
fault=0A=
DXGKDDI_RESET_DEVICE : https://learn.microsoft.com/en-us/windows-hardware/d=
rivers/ddi/dispmprt/nc-dispmprt-dxgkddi_reset_device#remarks=
