Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38CF52CE824
	for <lists+spice-devel@lfdr.de>; Fri,  4 Dec 2020 07:24:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B369B89812;
	Fri,  4 Dec 2020 06:24:32 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from NAM04-BN3-obe.outbound.protection.outlook.com
 (mail-oln040092009071.outbound.protection.outlook.com [40.92.9.71])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D3A66E101
 for <spice-devel@lists.freedesktop.org>; Fri,  4 Dec 2020 02:03:52 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YlSmB1BbfQI7oo0dtSlbnv9Nx9/2uRJdkpCpr/7I8Je/5wV445TO1up94njamTWDvOhlUvzKumP7yt432koEfOFKUrba1vHf+2sAQo3j45DTeeDuLAivqdMojv/3i4miIY9Obhpr2930Jye+hzKlasRm11i7Dxc7/b6VWJz9MM7/jtRwV+rzjxNVZOoTIQHX5bjQ/3ySS6/cfd8x67knK8OBNEFmiJg8Fy74ThBmFYRpInZGju5HAiPEu30aJEnaSldZOywZmjnyCH0BE4ar4VyRW2QxkI4eCroPXOYU/Fbg+mRzYTO6s17e4aS233xkUjqMbzr1u8Ehhm4GLWf2BQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PSafjnjMMbK21t3sQmrQDNtTgi764EMh8R/rIDf0Yys=;
 b=ZLX47385/7vDF95ydWteIB7Amnpg6wTsbb33YrRdNTYVGehYnk1+SjBbBW48jVPuaYVtJnbxYafGMUttO23h+yQV5cBl9srZ26wAxQIsJSZKhfsXBNNR3Y2V3f/hpEgqMlPBI7aNviQOmb1rBBNmdnKEHkfyWyGVreYwrJUYxu4DK5xauVSc+KhuEZhDq7xfr/XuN0TEiVs4DiajDFgcaQlgdnmV+zwQCFboqPNQwytFDHBDKXxcwlYAFiV3YL0DUR5guYmfxzEf8dB9M8eg3YMTA+nRiT7UQKK8L5qMVg1tNa5K+9onA4utz2A3PjES/lHoNhEGCiSvoxR68udvyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PSafjnjMMbK21t3sQmrQDNtTgi764EMh8R/rIDf0Yys=;
 b=S2aerX2MNh30YFrzUqtRKbFj0libvwthML5HZu6m9YCAq21IPPuEJUNuzj3hm+pLfZ2TBIMueDNAZM9bNiy2ibbjnEKemCMXSr1wmldqIegUJbggQ6cZP4fYewfzlic4/kS2OFrecQ3nNHolxgOPeEKSP+yJj2ULm3r6tiHm8EWfLHxBoFusG3RJPtopu+NJ2lnkyLbFurgxAi8OTcigQ0G1bXh9B/SyvdfsEuEo4/X2iLgxoWZtKnKqv22cNYACsetpNRuEpvc3yaUsTA5gBhA6lImd/t2revp0nIxorZke5CEJp9zVtqsaRn3kPaDC1DBEG+WqR/AuyW5+YNrMTA==
Received: from CO1NAM04FT004.eop-NAM04.prod.protection.outlook.com
 (10.152.90.58) by CO1NAM04HT016.eop-NAM04.prod.protection.outlook.com
 (10.152.91.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.25; Fri, 4 Dec
 2020 02:03:50 +0000
Received: from CPXPR80MB5286.lamprd80.prod.outlook.com
 (2a01:111:e400:7e4d::40) by CO1NAM04FT004.mail.protection.outlook.com
 (2a01:111:e400:7e4d::121) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.21 via Frontend
 Transport; Fri, 4 Dec 2020 02:03:50 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:C6059D39104C8CDAF1534BC93D502F3976B6F0D06563F385EA956B384FCC99CF;
 UpperCasedChecksum:1F2C0CC773250F6695B06C7DA75794EBB5239008B1BD46B0EA2B5D6838CD5237;
 SizeAsReceived:8410; Count:44
Received: from CPXPR80MB5286.lamprd80.prod.outlook.com
 ([fe80::519:4946:ef7f:2740]) by CPXPR80MB5286.lamprd80.prod.outlook.com
 ([fe80::519:4946:ef7f:2740%7]) with mapi id 15.20.3632.019; Fri, 4 Dec 2020
 02:03:49 +0000
Date: Thu, 03 Dec 2020 23:03:44 -0300
Message-ID: <CPXPR80MB5286F53FE3161E6C04B93802F0F10@CPXPR80MB5286.lamprd80.prod.outlook.com>
X-Android-Message-ID: <5b2196b5-e403-4b05-8dfb-a08b1f289eb0@email.android.com>
From: samuka.kira@hotmail.com
To: spice-devel@lists.freedesktop.org
X-TMN: [Ix5wU8ZE0SGQVIaAYr1QK5vpSQNr4eOvR9lg+J4QJrw=]
X-ClientProxiedBy: CP2PR80CA0192.lamprd80.prod.outlook.com
 (2603:10d6:102:15::34) To CPXPR80MB5286.lamprd80.prod.outlook.com
 (2603:10d6:103:8::22)
X-Microsoft-Original-Message-ID: <5b2196b5-e403-4b05-8dfb-a08b1f289eb0@email.android.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.0.0.17] (200.170.125.132) by
 CP2PR80CA0192.lamprd80.prod.outlook.com (2603:10d6:102:15::34) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3632.17 via Frontend Transport; Fri, 4 Dec 2020 02:03:48 +0000
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 44
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 5badae58-2b52-48e1-bb55-08d897f8d6eb
X-MS-TrafficTypeDiagnostic: CO1NAM04HT016:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: C7WJlNAqPmfEIk4bp+Wl8ZS0ZPk8IEp2b5yRPoMkQPIX9+ns+Ad2vhoHwqKwwaKYLL1chtcI+o/0zECKzHzTR5xf6ZuoVwbdykMPLWdhz58kGV6U2cMNKuR4wIdnJOaK4iBgPsTWJTiUgCE5uBVOuGSqrhoIlKEdPTt26DxKjLyfbRQAVE1mt3cxogBbg3AqPUUJwIoMVrLT1qL1uu6h0A==
X-MS-Exchange-AntiSpam-MessageData: Cdr++ZJyXFS5KbtOexmb97qvyYTy77LPNb3pBZNvXFFCcmXRxOvVUwE2XLNCIEwDbO0jyQN5yLTH64HsqtTT1XqX/qHX4T9vN0LFvrwZfpGLn7mygmNor9u3Bpz2U66ZU3VziiWnFl6t9KN7Fqa6SA==
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5badae58-2b52-48e1-bb55-08d897f8d6eb
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Dec 2020 02:03:49.2018 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-AuthSource: CO1NAM04FT004.eop-NAM04.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1NAM04HT016
X-Mailman-Approved-At: Fri, 04 Dec 2020 06:24:31 +0000
Subject: [Spice-devel] Performance on SPICE
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
Content-Type: multipart/mixed; boundary="===============1593313946=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1593313946==
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

PG1ldGEgaHR0cC1lcXVpdj0iQ29udGVudC1UeXBlIiBjb250ZW50PSJ0ZXh0L2h0bWw7IGNoYXJz
ZXQ9dXRmLTgiPjxkaXYgZGlyPSJhdXRvIj5nb29kIG5pZ2h0PGRpdiBkaXI9ImF1dG8iPjxicj48
L2Rpdj48ZGl2IGRpcj0iYXV0byI+aG93IGNhbiBpIGltcHJvdmUgdGhlIHBlcmZvcm1hbmNlIGlu
IGFjY2Vzc2luZyBhIHByb3htb3ggVk0gdmlhIFNwaWNlPzwvZGl2PjxkaXYgZGlyPSJhdXRvIj48
YnI+PC9kaXY+PGRpdiBkaXI9ImF1dG8iPkkgaGF2ZSBhIGJpZyBwcm9ibGVtIHdpdGggcGxheWlu
ZyB2aWRlb3MsIGl0IG9ubHkgd29ya3Mgd2VsbCBpZiBJIHVzZSB2ZXJ5IHN0cm9uZyB0aGluY2xp
ZW50IHR5cGUgSTUgcHJvY2Vzc29ycy48L2Rpdj48ZGl2IGRpcj0iYXV0byI+PGJyPjwvZGl2Pjwv
ZGl2Pg==

--===============1593313946==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1593313946==--
