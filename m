Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A40D411DF67
	for <lists+spice-devel@lfdr.de>; Fri, 13 Dec 2019 09:27:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FB7B6E2CD;
	Fri, 13 Dec 2019 08:27:32 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12olkn2053.outbound.protection.outlook.com [40.92.21.53])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEB8C6E2CD
 for <spice-devel@lists.freedesktop.org>; Fri, 13 Dec 2019 08:27:30 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k0OQ3xkwrXXZf7RFcNnnR8pZtlY5AAAuYknbzYzuvrMoRERkfOJa9BUffJjUpEi+XXVrFkB6e2sLnt9yK4EAu2Hgr/aUsYV+Gi+DlHNtOf5wSjUYex2fThOMKFEQTedhE/LhZE2peDy3hCrVg9ADBzCjPTZuftrPuoCRq8W3OrO92y6HPJGlGzCGPrL2PMVcdWu06LC2yWDi0WofS+P8JRE0gkJFRA9Njo2RL1xaq2u4lTXSU+JCVTShf4LOepw6zX2MKOqIu44NOGx2lY1/0ZAUGrMsK+XcHHduRVZ2OWyXs8+u6lH/bBZoysU2j+an9GRKC480ZyxVpCMcUGoZVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v5H81pLcnng7zwB1rprqOTm/rPc2yaGWniw4bdC6Jv0=;
 b=nyq9kVDqfjuhoM5UWQpOJgK91+2pBHN17F/6lxTAUQHhxeQ92jDBXuXvqAZadCo4/G8ulNtDq+j6zH78hxJI8WBJ6ast2HENCrdrJc/oiP7P+JZc02oZ6mCk6Yv03ht777izqNvTcgcqcQujheWTaDEmayfjhdXdnPJHmPl/D1JEKMqRRanHJSz+DA1ObSHgrrcn2XdD3WNvMnLe4kZcCB2smNBRoQwMFlfaILsqBscvkPl5+VHnxn90C4w0vk9EFcq45PgLPDliJ5KinSNOPehJrBT5SSQ11f+TQky00N0ayQzRMltIC0Y5VCjAMGdnq9PJ6f7Zlo2ryfAFrNwXIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v5H81pLcnng7zwB1rprqOTm/rPc2yaGWniw4bdC6Jv0=;
 b=qsyFC3S/DRU7UJ2xHMC639hIzIbeHPpi83i9qgKgf5+n3Z525zvBXj2i+rx3jxZ5g3439a6wimicx0at7WkTqITmuF7xolx2VJSkOgc9tYlkngxMSnVfUGZzL6o1LVtqb2cRFDb5hM/WlGbxqwqKGAImFz2OFarDzAy3hmelSz2wu/NQE1DLnMyKJnpetdTjBst/pQWdfPPORqhtq7ou9caOPaVjeaYEEcWdlKIPaLE7aAEuxPR6zTu9AzOwEGb4POWFDaBdo0O+CaToecNwGxWRBtp0HIYsBccU88zMNg1ExtZQaw5CFeO3ICbYE3D7BdjwiN4nAVBZoP93pK4ESg==
Received: from DM6NAM12FT065.eop-nam12.prod.protection.outlook.com
 (10.13.178.60) by DM6NAM12HT203.eop-nam12.prod.protection.outlook.com
 (10.13.179.129) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2538.16; Fri, 13 Dec
 2019 08:27:29 +0000
Received: from MN2PR06MB5966.namprd06.prod.outlook.com (10.13.178.58) by
 DM6NAM12FT065.mail.protection.outlook.com (10.13.179.97) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.16 via Frontend Transport; Fri, 13 Dec 2019 08:27:29 +0000
Received: from MN2PR06MB5966.namprd06.prod.outlook.com
 ([fe80::8061:7adf:1611:69f]) by MN2PR06MB5966.namprd06.prod.outlook.com
 ([fe80::8061:7adf:1611:69f%7]) with mapi id 15.20.2538.017; Fri, 13 Dec 2019
 08:27:29 +0000
From: franklin zhou <codeit@live.com>
To: Frediano Ziglio <fziglio@redhat.com>
Thread-Topic: [Spice-devel] spice-streaming-agent build with cmake
Thread-Index: AQHVsV2kwpPh3cBbY0C5AD4nZRbBZcAgBr8F55e01KU=
Date: Fri, 13 Dec 2019 08:27:28 +0000
Message-ID: <MN2PR06MB596643F8A10266D628EC096CB3540@MN2PR06MB5966.namprd06.prod.outlook.com>
References: <MN2PR06MB5966B0FE96C8C383F432BF75B3540@MN2PR06MB5966.namprd06.prod.outlook.com>,
 <2057776774.15999309.1576224649304.JavaMail.zimbra@redhat.com>
In-Reply-To: <2057776774.15999309.1576224649304.JavaMail.zimbra@redhat.com>
Accept-Language: en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:5784F1B224756BA466C9CE75819997F6676D223FA367A9BD0B3587305157CEA7;
 UpperCasedChecksum:994385BBBD797626BF26F0C2ACE9B34CDEFEAB2A9EC435ACE16198FD79A7EDE2;
 SizeAsReceived:7062; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [wjjoZQFm+FjTjY56Aeg01w3sQNL9/6fN]
x-ms-publictraffictype: Email
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: bcb02225-68ea-4f9a-901a-08d77fa64adb
x-ms-traffictypediagnostic: DM6NAM12HT203:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: s+Cal72B17luXDcX3eA+vRCfuYmJad9krUJKTbvdtjThoLRTgbBSClQ6WHbJKEtmzafbzb3yXTyLNlQdaLCf37HPwYyqFTbAL4EkUwI7DiGB6VcblppH+7ElCL4Cy8nIR4nUKfgVkzktUloouPPzaQ+DfHYyPG46ideKCqj+XMVrfocMBcKAbVBhl4ZFHaqk
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: bcb02225-68ea-4f9a-901a-08d77fa64adb
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2019 08:27:29.0208 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM12HT203
Subject: Re: [Spice-devel] spice-streaming-agent build with cmake
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

QmVjYXVzZSBJ4oCZbSB2ZXJ5IGludGVyZXN0ZWQgaW4gQ01ha2UNCiBhZnRlciBzYXcgeW91ciBi
dWlsZCBjb21tYW5kDQogZm9yIHZkX2FnZW50LCB0aGFuayB5b3UhDQoNCuWPkeiHquaIkeeahGlQ
aG9uZQ0KDQo+IOWcqCAyMDE55bm0MTLmnIgxM+aXpe+8jOS4i+WNiDQ6MTDvvIxGcmVkaWFubyBa
aWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4g5YaZ6YGT77yaDQo+IA0KPiDvu78NCj4+IA0KPj4g
SXMgdGhlcmUgYSBwYXRjaCB0aGF0IHN1cHBvcnRzIGNtYWtlIGJ1aWxkPw0KPiANCj4gTm8uDQo+
IFdoeSBhcmUgeW91IGFza2luZz8NCj4gDQo+IEZyZWRpYW5vDQo+IA0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0
ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVsCg==
