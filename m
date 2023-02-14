Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B00426957D6
	for <lists+spice-devel@lfdr.de>; Tue, 14 Feb 2023 05:19:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCC3510E0A7;
	Tue, 14 Feb 2023 04:19:40 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from APC01-SG2-obe.outbound.protection.outlook.com
 (mail-sgaapc01olkn2066.outbound.protection.outlook.com [40.92.53.66])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CA0810E0A7
 for <spice-devel@lists.freedesktop.org>; Tue, 14 Feb 2023 04:19:38 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F3RzNPGrqpdHrv+vC27wchkgili4ctZDS+sCTucqrCdVGic0E9OAkfA2vqZ7VqfeVIRUJajloVto2OdhgnKkKwtbS5axU3SF/u+HB0hIdxlUR68DRvitmREINgmxq0NK0mk64gpY3yYOJ4d73ZQRgvmVhzHLZ03D8pK4SiuyImQkbJkEsvLNXA57jy8dRDpBxod+xxS+UpN9SDhccLzx//UAVEGpFhwuEzL/iQVNkFfgJpU6EJsb1ycvJ/TcC/YNiwj1hU2fsVb72gyggLcdPSmAKl7A8CvDhz9qyvIalnJ4GVRMzvI0C7HmRBQ4qNAjNvu0s4z8l2gVNeO/f2AN4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GtUYkHvhHh6g/amcbkyyffgxbjwXEeXhmw5Msa4pJrM=;
 b=lDoeouFbXpR78U+ZuJXtoENv182AezvZeWERK7eju54ctnU8/sNNtzw343fWn5BKUUd9PRn/soN1ijMmG0o0RV9WY/Tsnhg6eHGc/idKGj08ih7MDrKhMWx3SbjlsstdzsZx6RrBLwgqGhwSx/fKr+eZwjbZGLmpl/bKJsx46OhXM5UF1IO56vHJRhHb6NIxw6kCH6334/D9qXVnGoz0H1txNVm8BkAsz3B8gmK6cctu/u41ys9SfjWjzySjEfewfMFOzxTwkP40MrjVvZ81DwLdMz6QyXfmadD/e7EHOXV0jo480U0wjsRJg7SXhBZB0j3DSaQj/FaXCDL2N/DWYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GtUYkHvhHh6g/amcbkyyffgxbjwXEeXhmw5Msa4pJrM=;
 b=A1WS5SyIJsknizsBmXETxVU+opzOE1gqlv89JUSbEWPeC3AWS2UcUMKNar9zI6P2CIoTU/khv+/thE5otT7h3H5pUyTynfe0IoZVcrNiuX1r1B3sUdW+kIjbSWqjJ0ljGiTqhW9Lc6AZubRYLforzGzmR6vnlx7GepX3/UPFUf8wZ/4uWI5ovj05yvhtYiL5NDJCwC4SI3OfsC6zY5EXODwFAmIBkiQgDZzdTqqgkH6iEpla5AiBafLcSHiuuvIVOan7hdAn178S+iTiWWHahvaw/EtntIzI/beXoMP4IKoHLcoWYo8BPHvt7hEc5Bi6UEGf331CFaEVJpXHyqDQLg==
Received: from SYZP282MB3252.AUSP282.PROD.OUTLOOK.COM (2603:10c6:10:169::6) by
 SY4P282MB3858.AUSP282.PROD.OUTLOOK.COM (2603:10c6:10:1ce::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6086.24; Tue, 14 Feb 2023 04:19:34 +0000
Received: from SYZP282MB3252.AUSP282.PROD.OUTLOOK.COM
 ([fe80::3021:4e2f:269f:86a2]) by SYZP282MB3252.AUSP282.PROD.OUTLOOK.COM
 ([fe80::3021:4e2f:269f:86a2%2]) with mapi id 15.20.6086.024; Tue, 14 Feb 2023
 04:19:34 +0000
From: qi zhou <atmgnd@outlook.com>
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>,
 admin <admin@atmgnd.cn>
Thread-Topic: [PATCH] reset qxl to vga mode
Thread-Index: AQHZQCrEQXik5oEC60GtKnzkSlSffQ==
Date: Tue, 14 Feb 2023 04:19:34 +0000
Message-ID: <SYZP282MB3252532513FAB75D92C10DC8C9A29@SYZP282MB3252.AUSP282.PROD.OUTLOOK.COM>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [dQIuLtPsxJFvcVucqRBRc4N69LetYfac388qi/kTBLI=]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SYZP282MB3252:EE_|SY4P282MB3858:EE_
x-ms-office365-filtering-correlation-id: 7f11d0ea-2075-41aa-46b5-08db0e42ad52
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KSW+PvreH2FwskkjVX56XmASrZV1K/k1efi6DFcuR8Rt3G5GbrlgTaD6vZ29aK7PynatJqUwzGIE5Ffad41APBSV9CfJhADlN/A20mAq4wUs+kbZhNMiCJl86GU+efmAJ289pXVTrvsCVHIInca1zCBtIbWeSR+5N2b/SKjfQ27Om4wXGYiwDzYj9n2bFkHHR9QpepYgoEEaG16lT3kXmLNN6tlXFyG364eVBdWyV4ujAHn6Rfl7dYGTWAyo9XEXxbD8Rc06kNEBY5L/SCuurjOHzCwcicUczRYVEDm0wMOOMPhs+c/FPz0UOtUCXj1NwQWEf7eOJwcyZy6Unz1fR/g8Xz0SItPU6FwBfkDq5Tp6mrS3hkB4AEQksQtxOssux1vOkE+WFq0vOpEquh8f6f7YnIMEjoOKBPavC5o13W9ViVq8X8I2flIYDQwttOXyoCx3rZGKKJRx8IOXNAe0mqCxexBuhFzTAM39YnOzrFWbRMPC/DtdwVxRhePPeT8rNOgpFxP/RZO+6w4Lz4VFWbLK5n5e/e3VZzIsyx8Kmc5RKCUQN2a25vvhUdsQyNmCfSRDUwfM2JlaRvOkExBI/Q==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?qrZ539kEqMrOwnqrf0HMCAlbiQ1h02iw/nK7EOPO5KwgzLFmRtNyt+JE+H?=
 =?iso-8859-1?Q?hcb5VpNgsHlKGpr/0SnfQqSfQ9qjx3PCmZvNEJRJpXGNsbqFI5f0VVW+lE?=
 =?iso-8859-1?Q?VpAmUZQ9WOjRp79MIuWr+kztyddgSRGDUklfLbnvPl4k/ctcZUPakx3Jw6?=
 =?iso-8859-1?Q?nU3zyHi9pgM/BuvPA9LkhG+YDZRo+xfraJEMosN1K9ePoxzqn7cXj+WDoQ?=
 =?iso-8859-1?Q?NCZZ0pf9nlbRODxTERXMAAyd8zR5cVsu9Xa3tzwIfVPgeThQtbgSSAQw4u?=
 =?iso-8859-1?Q?jqFZdPoB19nkSjozDDzfnauMPZUWhTC4A/jxifuGa2WDDpJ3Q8rQC6VDAY?=
 =?iso-8859-1?Q?1xl1rmwlNaJmE6kIyLKDzzL2vh2TzDgXdk7Z/scEpvj3J++I8ZObf7YJm+?=
 =?iso-8859-1?Q?mO0Yz95bfefCQDPGnCRzFFe9prvrT66rLq0p7QJodrP2iM6x4NRHnnQdKB?=
 =?iso-8859-1?Q?hVczFjqvHLLoekdjYoBiniXcngAgl1rZqjOLLzI+9/OalrgeqiE1lreXZD?=
 =?iso-8859-1?Q?yYkXBsAHDN88KMhNHi0CnuY+Ks+6QTdQhfPm18z8kZM63tjZbAzslCWw04?=
 =?iso-8859-1?Q?H23PknIovO/Q0McIvIhjw09IfNLuLxUv8mmbxeaumf6515QMKdx6vZ2Zvw?=
 =?iso-8859-1?Q?MVKGqWHmOq8FgMRN7G4WG6ANiOjpeO95kpZ6EVfIhbkfEEMCc97+7xbudr?=
 =?iso-8859-1?Q?eNbZP4z3eBSy+EOPs+Cazm4ZnJ3TGVLjvGlEJfdEW8bbA4Oiv61NUw+7TV?=
 =?iso-8859-1?Q?UOv8g1omSEIFqgBrkFTygaBhXy+4xmDqWmwQfyZmqIwRWVjnYZ/yYvfMTb?=
 =?iso-8859-1?Q?0AZQWBmjKAr9s12DjMWrHzy1PfW2+sJ1KlAjuipuRsUc6enQBRlOhfMhHm?=
 =?iso-8859-1?Q?yGLBxnHJqqBXIiKY+waS0NFg0aqFWZBqRhhTWFU3GwhWqP5dEW8wiJTuBU?=
 =?iso-8859-1?Q?o6OBgd9N/XxBu9N2mfnogyD/tIN4d+LR55yvZAQgLKQ7ckr5667UZq2tbK?=
 =?iso-8859-1?Q?SZh1Ud/GrLGwMTjj5TSQG5NHQSQyhGPyDvqtb6x+/rpLahgEt7xlPz2UjZ?=
 =?iso-8859-1?Q?vvVJIfgAy0wjJ15laX+l+PogpSTfKWaQgL4+ANeLvm5JjIFW80Ooc6DQ8t?=
 =?iso-8859-1?Q?MUkhsYaRLBzaAEpHr481+gKr+oft0EZRPnLXZFFgsp5wME3QMpKlrKkksT?=
 =?iso-8859-1?Q?RMCnL53CycHBigAY0l0vBZKrCh9+/OAIgTJkUAuwSgMwfIXRNCrwy+YCtZ?=
 =?iso-8859-1?Q?rkwABxV+p0Z1598ckCf5yr3SutQjwRBzqLE2HkUVculItVdstOWqknd7Wc?=
 =?iso-8859-1?Q?VBDh?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SYZP282MB3252.AUSP282.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f11d0ea-2075-41aa-46b5-08db0e42ad52
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Feb 2023 04:19:34.0912 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SY4P282MB3858
Subject: [Spice-devel] [PATCH] reset qxl to vga mode
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

from https://github.com/qemu/qemu/commit/ed71c09ffd6fbd01c2a487d47291ae57b0=
8671ea=0A=
QXL device rev 5+ requires explicit reset to switch to VGA mode.=0A=
in windows, if bsod happens, windows cannot switch qxl gpu from qxl mode to=
 vga mode. It is important to reset to vga mode after windows system bsod, =
so the blue screen can show=0A=
=0A=
below is the patch:=0A=
=0A=
=0A=
From 9c4ba40a02d4fa517b069e8a795c5b570091c928 Mon Sep 17 00:00:00 2001=0A=
From: Qi Zhou <atmgnd@outlook.com>=0A=
Date: Tue, 14 Feb 2023 11:31:08 +0800=0A=
Subject: [PATCH] reset qxl to vga mode=0A=
=0A=
in windows guest, if we trigger a bluescreen, windows will reset gpu to vga=
=0A=
mode, otherwise the bluescreen will not shown=0A=
=0A=
Signed-off-by: Qi Zhou <atmgnd@outlook.com>=0A=
---=0A=
 qxldod/QxlDod.cpp | 2 +-=0A=
 1 file changed, 1 insertion(+), 1 deletion(-)=0A=
=0A=
diff --git a/qxldod/QxlDod.cpp b/qxldod/QxlDod.cpp=0A=
index f498115..25b9af6 100755=0A=
--- a/qxldod/QxlDod.cpp=0A=
+++ b/qxldod/QxlDod.cpp=0A=
@@ -3869,7 +3869,7 @@ void QxlDevice::ResetDevice(void)=0A=
 {=0A=
     DbgPrint(TRACE_LEVEL_VERBOSE, ("---> %s\n", __FUNCTION__));=0A=
     m_RamHdr->int_mask =3D ~0;=0A=
-    WRITE_PORT_UCHAR(m_IoBase + QXL_IO_MEMSLOT_ADD, 0);=0A=
+    WRITE_PORT_UCHAR(m_IoBase + QXL_IO_RESET, 0);=0A=
     DbgPrint(TRACE_LEVEL_VERBOSE, ("<--- %s\n", __FUNCTION__));=0A=
 }=0A=
 =0A=
-- =0A=
2.30.0.windows.1=0A=
=0A=
