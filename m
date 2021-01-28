Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB581306E95
	for <lists+spice-devel@lfdr.de>; Thu, 28 Jan 2021 08:18:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3478D89994;
	Thu, 28 Jan 2021 07:18:35 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from EUR06-DB8-obe.outbound.protection.outlook.com
 (mail-db8eur06olkn2015.outbound.protection.outlook.com [40.92.51.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC15B89994
 for <spice-devel@lists.freedesktop.org>; Thu, 28 Jan 2021 07:18:33 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ur8wuARwUlc8xRjQJ9IjPVR4pFy21mnGSNg5O9CFxxamYFFGtqYnTsqv22YRcsEdpCCZCZSvG6HDFZN7SzyGQWMUdd30Zhf8xCIjLXow43eQzwmGhAK+9rJnhFKUmV+65fyKRBHD7aHTwqxNlMu6LfNu5mXvCbTrLfYcFLj8h9yihskM9CQeiaKZUSIxsXRAB7qlKer7dFg03UZayVh/Qwe0/3BeCAl14cMTT2Ow6L0HcUOr2mT+qcxqjB1FTJYbonv2i/5/gw4c2jAFyN0FmZJLbSSpFNZ4cgSZSHNegIrHaZSLyE21SUOGZrDIlbYtX8msoQtgcuBvKTTIAG6JwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sSczrHmJYfWuMLbusVv5flMQW8AVN1vC3F0LEjaarso=;
 b=MU87gcxbqFFXAc2sq2AfoDzSLtk6u7UkgqMIk79d8gMptZXSm8loFNOMI2HiBZyzCY/DJbGwFXXw1TIx1uD9ee8Kw34hTGNaPhD+0S6458TJe7iw+IZyXY6XHhdHwWKFI8XgqRy6pLSjdtrce9aXfljmjp8yl/hleOK525HO0+0dLqKi6cW0d4k8eqmtf/8XiNG2oFjeZV1RJB5IeGQJhtBWHGBiwFsIl9LqI5FDmlgRyUZjYYexULJSrQne3K1XRRxcBdUGa+2MXLGB9G8eJlUE1SMGvQUeajSR3SxWGbBZcAI7m8kT/3hs9lFem2/dgUGULFb3RaCLHiIPudK/UA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sSczrHmJYfWuMLbusVv5flMQW8AVN1vC3F0LEjaarso=;
 b=W+b2Ec3vwg8jXwoDNp48WgUWxa1u1orRbl5MS6mpW/ZP+icwVO1DunEs8FfP/sjf76HaRCDugn4EmJVp623lHQaAIZd06O2luru5rd7WUSSF4Xu8QCxMVg1HSDx6ADNnUgRDz13f19wfmHmeqU5IwdxDYBZmSXzD9npjtOggRjrsAgO2CIVN3jod07ORrhupMLFh0ebig8kBuBXJcUW/XZfU8B7VKlSXrshVDPqDnJuMTlwF5rQ2Ro0tQxIcJ/JO1m6UM1p3v1GdcSOv568oUbIeSGDGXk/cM2g2L9FlkNncPakvqqwVnB4dwchUSPe0ki8LLkfijO0KVWWTWJA5vA==
Received: from VI1EUR06FT061.eop-eur06.prod.protection.outlook.com
 (2a01:111:e400:fc37::40) by
 VI1EUR06HT213.eop-eur06.prod.protection.outlook.com (2a01:111:e400:fc37::296)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.11; Thu, 28 Jan
 2021 07:18:27 +0000
Received: from AS8P190MB1255.EURP190.PROD.OUTLOOK.COM (2a01:111:e400:fc37::46)
 by VI1EUR06FT061.mail.protection.outlook.com
 (2a01:111:e400:fc37::101) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.11 via Frontend
 Transport; Thu, 28 Jan 2021 07:18:27 +0000
Received: from AS8P190MB1255.EURP190.PROD.OUTLOOK.COM
 ([fe80::d51f:dfd:a058:387a]) by AS8P190MB1255.EURP190.PROD.OUTLOOK.COM
 ([fe80::d51f:dfd:a058:387a%4]) with mapi id 15.20.3784.019; Thu, 28 Jan 2021
 07:18:27 +0000
From: alireza kahdoyee <alireza.kahdooee@hotmail.com>
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Thread-Topic: Activate the spice console password when vm is on
Thread-Index: AQHW9UWENj7TDaKn3kyKL6pBTixjCA==
Date: Thu, 28 Jan 2021 07:18:27 +0000
Message-ID: <AS8P190MB12557CD1CE3EEA6D1D1AA2778FBA9@AS8P190MB1255.EURP190.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:6A6EBB06ABE67EA4818391A40CBB81B29791745471D3E2235D83A13A6A5449F4;
 UpperCasedChecksum:8FD95D1A549C25E100875C1857121561F6230B8C3D1A19329F818CEA8A72C817;
 SizeAsReceived:6667; Count:41
x-tmn: [1gU1fI+VdPiAGKyGSJ1hJXbtRVvedB8F]
x-ms-publictraffictype: Email
x-incomingheadercount: 41
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 22a90d9c-7358-41db-43f4-08d8c35ce864
x-ms-traffictypediagnostic: VI1EUR06HT213:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DX4z1s4+ezzj6ufjYkav38G9Mk54B23C0PKxxpl+Jg1TfuzDZxUUuTAEddJGs2en2kTnttZAKYQbxzcSbAcUglWr5l6bbo4vDdsJ1nHzFw7fa55rOvaWEPCfb+9eCkMHnghIexTEw4GUNfFANpe6RJbO3VYdfuuCcv2Ll9ah8Cuq9uX8NjItlj55Gzjez+E3V4hziQalre1hagYdKdDNmmF0eyGPdKliHN1EYjsSprMK/VsKX9Ja/0DSKjfqAk3AKfYy5he7/fb99E0d/A/ysLMCf/HiliuuDopXF5Uzh2+vBvRRL9ASd+Vepq2x8NOs51wLGaMtXBcGONmhZ1UmFXqbOfCFkIPALsb8IfjvG3FTNFNVnlzNVw0gewnBVVjLGRQCJtNbXfqf/dgORXfT0Q==
x-ms-exchange-antispam-messagedata: LxDnVuujhzVTz6LNqXD6SzWp1ySjuac9kXLLFPlg2oLj/fSHFGGJncLyBefY2nUuYbU5m5fQgTIbHJSdvIKsEGq7Lpc64ivuqdTTpIDyRHMd46RO0mPAplN6SJK7DxmQwyajG+UaSUsO04RNnmqmuw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: VI1EUR06FT061.eop-eur06.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 22a90d9c-7358-41db-43f4-08d8c35ce864
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2021 07:18:27.5212 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1EUR06HT213
Subject: [Spice-devel] Activate the spice console password when vm is on
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
Content-Type: multipart/mixed; boundary="===============1554788534=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1554788534==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AS8P190MB12557CD1CE3EEA6D1D1AA2778FBA9AS8P190MB1255EURP_"

--_000_AS8P190MB12557CD1CE3EEA6D1D1AA2778FBA9AS8P190MB1255EURP_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gdG8gYWxsDQoNCkRlYXIgZnJpZW5kcywgaXMgaXQgcG9zc2libGUgdG8gYWN0aXZhdGUg
YW5kIHNldCBhIHBhc3N3b3JkIGZvciBpdHMgc3BpY2UgY29uc29sZSB3aGVuIHZtIGlzIG9uPw0K
DQp0aGFuayB5b3Ug8J+Zgg0K

--_000_AS8P190MB12557CD1CE3EEA6D1D1AA2778FBA9AS8P190MB1255EURP_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyIgc3R5bGU9
ImRpc3BsYXk6bm9uZTsiPiBQIHttYXJnaW4tdG9wOjA7bWFyZ2luLWJvdHRvbTowO30gPC9zdHls
ZT4NCjwvaGVhZD4NCjxib2R5IGRpcj0ibHRyIj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OiBD
YWxpYnJpLCBIZWx2ZXRpY2EsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTJwdDsgY29sb3I6IHJn
YigwLCAwLCAwKTsiPg0KSGVsbG8gdG8gYWxsPC9kaXY+DQo8ZGl2IHN0eWxlPSJmb250LWZhbWls
eTogQ2FsaWJyaSwgSGVsdmV0aWNhLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDEycHQ7IGNvbG9y
OiByZ2IoMCwgMCwgMCk7Ij4NCjxicj4NCjwvZGl2Pg0KPGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6
IENhbGlicmksIEhlbHZldGljYSwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxMnB0OyBjb2xvcjog
cmdiKDAsIDAsIDApOyI+DQpEZWFyIGZyaWVuZHMsIGlzIGl0IHBvc3NpYmxlIHRvIGFjdGl2YXRl
IGFuZCBzZXQgYSBwYXNzd29yZCBmb3IgaXRzIHNwaWNlIGNvbnNvbGUgd2hlbiB2bSBpcyBvbj88
L2Rpdj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OiBDYWxpYnJpLCBIZWx2ZXRpY2EsIHNhbnMt
c2VyaWY7IGZvbnQtc2l6ZTogMTJwdDsgY29sb3I6IHJnYigwLCAwLCAwKTsiPg0KPGJyPg0KPC9k
aXY+DQo8ZGl2IHN0eWxlPSJmb250LWZhbWlseTogQ2FsaWJyaSwgSGVsdmV0aWNhLCBzYW5zLXNl
cmlmOyBmb250LXNpemU6IDEycHQ7IGNvbG9yOiByZ2IoMCwgMCwgMCk7Ij4NCnRoYW5rIHlvdSA8
c3BhbiBpZD0i8J+ZgiI+8J+Zgjwvc3Bhbj48YnI+DQo8L2Rpdj4NCjwvYm9keT4NCjwvaHRtbD4N
Cg==

--_000_AS8P190MB12557CD1CE3EEA6D1D1AA2778FBA9AS8P190MB1255EURP_--

--===============1554788534==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1554788534==--
