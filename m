Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C03303A07
	for <lists+spice-devel@lfdr.de>; Tue, 26 Jan 2021 11:18:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E05589C48;
	Tue, 26 Jan 2021 10:18:36 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur05olkn2057.outbound.protection.outlook.com [40.92.90.57])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC40689C48
 for <spice-devel@lists.freedesktop.org>; Tue, 26 Jan 2021 10:18:34 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XGHqyL56xVfp0QukZkbaUYqG3EUCnC2+hnzrn+ZhkgBbQNSHIrR4eWA0G4+SOTRZdKkuxkEowxhwNPbU/N2CAjaoJ8zTKl8k7NeduFW7G+bwmhyx4SfM+yM5AWi1idEvKGoAf5MkvgigOvwMzCMO8cQL2xIdZekaN1gpXa2gJuKmMEV36c0P1D6CLKk849An9nNxnBNUrKIBDHJVua01qERNTOM4+u5FUBF24uFGHdjy550D//2hImS3VMZHMTW/JrMMvCYwkf5O2PKSKmRCqwq38cuig+vuM3qY+zrXAAbaahbb5+CFodNRp2BLqVxudb/AFL0UrMixR9SWjnJVcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BcmPgRUXfnlmgRj0zN0j94/AbILYCCQ4S/TeBotFiiU=;
 b=NN89s7QDQKYJOOBfDMYEwCqY563PSe8GyKjt+i4aP4TXXtqGBGAH4Ram3VKAcxQI6+YM/jLZT19u5wfgZ9x3O0huP0o9MqsKYxkwqxkvzqBdVtpE5cryzkA89XnTp8L5i1DVnZd6xuRyd0MO9A2Pp8kraDOYwLDIvAoAgYrdxBYYXvXSaON1HpFKO0Fq/xJekbUYyZ1b0dI07B196ShXkUw9ahZuIu2BwwAuO5IBW0KXKdnW7g7m9kUI2dIuqCY561f4kz/uSKPoJEIGCS+FQ4H+5SVuX3clLlghZqI8Ro0ByM17T1qndOs3Ocj05Qx+KxYoWsWPsXVYdUu2qADIXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BcmPgRUXfnlmgRj0zN0j94/AbILYCCQ4S/TeBotFiiU=;
 b=rjpI04N+YFRQezFcVvzhqNLCRk074BXx3Qc0zek/gReHGi4XwSm1LbzaUxFAD9S3LZTR8Bj+dyx0DQhdBwU2HhM9+QutDqYydhLQSkBEvcOVGpuRjzAUDCAlILaPTSwuz3KIktE7ud7SsPtx9TQi+I5B0r5KckcMjFTb9rxH+dHkHpmufu0IjXMSYJk+BU7mYUnNiQKn4OZ+YHI5nQnQEIlr4CdjLEjY0leBwn6iP4IxndNUT7y9vPICYYMWVQvMbKdapWL2I1u9L94PZmuA87lk2kqxGBxWdPZtzAD25FZB0/cUB6WY+IiSKahP8bkJn9t/IYlBvwh8BjijFQryBg==
Received: from AM6EUR05FT032.eop-eur05.prod.protection.outlook.com
 (2a01:111:e400:fc11::44) by
 AM6EUR05HT087.eop-eur05.prod.protection.outlook.com (2a01:111:e400:fc11::307)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.11; Tue, 26 Jan
 2021 10:18:32 +0000
Received: from AS8P190MB1255.EURP190.PROD.OUTLOOK.COM (2a01:111:e400:fc11::42)
 by AM6EUR05FT032.mail.protection.outlook.com
 (2a01:111:e400:fc11::101) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.11 via Frontend
 Transport; Tue, 26 Jan 2021 10:18:32 +0000
Received: from AS8P190MB1255.EURP190.PROD.OUTLOOK.COM
 ([fe80::d51f:dfd:a058:387a]) by AS8P190MB1255.EURP190.PROD.OUTLOOK.COM
 ([fe80::d51f:dfd:a058:387a%4]) with mapi id 15.20.3784.019; Tue, 26 Jan 2021
 10:18:32 +0000
From: alireza kahdoyee <alireza.kahdooee@hotmail.com>
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Thread-Topic: Compression parameters in spice
Thread-Index: AQHW88uxZPfU8n9THUyQUVsVNis/hw==
Date: Tue, 26 Jan 2021 10:18:32 +0000
Message-ID: <AS8P190MB125552EA045CF71E2A9A1C6A8FBC0@AS8P190MB1255.EURP190.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:69472B58053B578FF6774F194FDD6D645C6CA74B19B612B646C31243B549FB14;
 UpperCasedChecksum:7DE76939BB6DE3CE49EEDCA991519BA45DF6BE3590AE16CB9CECE35EA4E0E99E;
 SizeAsReceived:6625; Count:41
x-tmn: [tqS2lM+o7JtVZT7YLWAJpRdfHsp23sz3]
x-ms-publictraffictype: Email
x-incomingheadercount: 41
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 6b8ec3ad-90da-4d5d-33ec-08d8c1e3bb9f
x-ms-traffictypediagnostic: AM6EUR05HT087:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WSTioj519D4NBiKMbeAOEnjIBI1Nk8srXlyDuWyz3jdPzCZROh0EMQgkOCHUDzPcW1/vUyovTZ0YE31kV+WVM0w0UzxbzhklLwI1moImxflN9qxTLF8tcy+FFDaLMzNsKvkJ7xezQ1VHTmCDH2AuT+AzFg91+klPnOLz8GbsZL2O3aCt69JoCCZavBRzGCnu/Kipbtne1OZCOFCqdgRB+Yh97zKj4Ks9s+Xt+00P0q8jVxOxr1Rxw7x30lEuFei5
x-ms-exchange-antispam-messagedata: SkdPTK9kT20ZbtBeDu+43WofARMUL2c+ve0JUarR4mKqpbish8tgS4TDxIxYnOoSke+FQoV3CbWliopR4hxT9NQvrXadYkCEJrwxxGMN8RYDnq/oN7QxFhiB/5zEin4F7M7Gd610YK59Rp1W7BPWhg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: AM6EUR05FT032.eop-eur05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b8ec3ad-90da-4d5d-33ec-08d8c1e3bb9f
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jan 2021 10:18:32.2046 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6EUR05HT087
Subject: [Spice-devel] Compression parameters in spice
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
Content-Type: multipart/mixed; boundary="===============1977480929=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1977480929==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AS8P190MB125552EA045CF71E2A9A1C6A8FBC0AS8P190MB1255EURP_"

--_000_AS8P190MB125552EA045CF71E2A9A1C6A8FBC0AS8P190MB1255EURP_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgZGVhciBmcmllbmQNCg0KSSBhbSB3b3JraW5nIG9uIHRoZSBjb25uZWN0aW9uIGJldHdlZW4g
dGhlIHNwaWNlIGNsaWVudCBhbmQgdGhlIHNwaWNlIHNlcnZlciBhbmQgSQ0KZG8gbm90IGhhdmUg
aW5mb3JtYXRpb24gYWJvdXQgdGhlIHBhcmFtZXRlcnMgYmVsb3cgdGhlIHRvIGtub3cgdGhlIGV4
YWN0IHNldHRpbmdzLg0KDQppbWFnZS1jb21wcmVzc2lvbg0KanBlZy13YW4tY29tcHJlc3Npb24N
CnpsaWItZ2x6LXdhbi1jb21wcmVzc2lvbg0KDQpJIHNlYXJjaGVkIHRoZSBpbnRlcm5ldCBhIGxv
dCwgYnV0IEkgZGlkIG5vdCBmaW5kIHRoZSBleGFjdCBpbmZvcm1hdGlvbi4gSWYgcG9zc2libGUs
IHNlbmQNCm1lIGEgZ29vZCBkb2N1bWVudCBhYm91dCB0aGlzIG9yIGhlbHAgbWUuDQoNClRoYW5r
IHlvdSDwn5mCDQo=

--_000_AS8P190MB125552EA045CF71E2A9A1C6A8FBC0AS8P190MB1255EURP_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyIgc3R5bGU9
ImRpc3BsYXk6bm9uZTsiPiBQIHttYXJnaW4tdG9wOjA7bWFyZ2luLWJvdHRvbTowO30gPC9zdHls
ZT4NCjwvaGVhZD4NCjxib2R5IGRpcj0ibHRyIj4NCjxkaXY+SGkgZGVhciBmcmllbmQ8YnI+DQo8
L2Rpdj4NCjxkaXY+PGJyPg0KPC9kaXY+DQo8ZGl2PkkgYW0gd29ya2luZyBvbiB0aGUgY29ubmVj
dGlvbiBiZXR3ZWVuIHRoZSBzcGljZSBjbGllbnQgYW5kIHRoZSBzcGljZSBzZXJ2ZXIgYW5kIEk8
L2Rpdj4NCjxkaXY+ZG8gbm90IGhhdmUgaW5mb3JtYXRpb24gYWJvdXQgdGhlIHBhcmFtZXRlcnMg
YmVsb3cgdGhlIHRvIGtub3cgdGhlIGV4YWN0IHNldHRpbmdzLjwvZGl2Pg0KPGJsb2NrcXVvdGUg
c3R5bGU9Im1hcmdpbi10b3A6MDttYXJnaW4tYm90dG9tOjAiPg0KPGRpdiBkaXI9Imx0ciIgc3R5
bGU9InRleHQtYWxpZ246IGxlZnQ7Ij48Yj48YnI+DQo8L2I+PC9kaXY+DQo8ZGl2Pg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCIgZGlyPSJsdHIiIHN0eWxlPSJtYXJnaW46IDBpbiAwaW4gOHB0OyBsaW5l
LWhlaWdodDogMTA3JTsgZm9udC1zaXplOiAxMXB0OyBmb250LWZhbWlseTogJnF1b3Q7Q2FsaWJy
aSZxdW90Oywgc2Fucy1zZXJpZjsgdGV4dC1hbGlnbjogbGVmdDsgZGlyZWN0aW9uOiBydGw7IHVu
aWNvZGUtYmlkaTogZW1iZWQ7Ij4NCjxiPjxzcGFuIGRpcj0iTFRSIiBzdHlsZT0ibXNvLWJpZGkt
bGFuZ3VhZ2U6RkEiPmltYWdlLWNvbXByZXNzaW9uPC9zcGFuPjxzcGFuIHN0eWxlPSJmb250LWZh
bWlseTomcXVvdDtBcmlhbCZxdW90OyxzYW5zLXNlcmlmO21zby1hc2NpaS1mb250LWZhbWlseTpD
YWxpYnJpO21zby1hc2NpaS10aGVtZS1mb250Om1pbm9yLWxhdGluO21zby1oYW5zaS1mb250LWZh
bWlseTpDYWxpYnJpO21zby1oYW5zaS10aGVtZS1mb250Om1pbm9yLWxhdGluO21zby1iaWRpLXRo
ZW1lLWZvbnQ6bWlub3ItYmlkaTttc28tYmlkaS1sYW5ndWFnZTpGQSIgbGFuZz0iRkEiPjxvOnA+
Jm5ic3A7PC9vOnA+PC9zcGFuPjwvYj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIiBkaXI9Imx0
ciIgc3R5bGU9Im1hcmdpbjogMGluIDBpbiA4cHQ7IGxpbmUtaGVpZ2h0OiAxMDclOyBmb250LXNp
emU6IDExcHQ7IGZvbnQtZmFtaWx5OiAmcXVvdDtDYWxpYnJpJnF1b3Q7LCBzYW5zLXNlcmlmOyB0
ZXh0LWFsaWduOiBsZWZ0OyBkaXJlY3Rpb246IHJ0bDsgdW5pY29kZS1iaWRpOiBlbWJlZDsiPg0K
PGI+PHNwYW4gZGlyPSJMVFIiIHN0eWxlPSJtc28tYmlkaS1sYW5ndWFnZTpGQSI+anBlZy13YW4t
Y29tcHJlc3Npb248L3NwYW4+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OiZxdW90O0FyaWFsJnF1
b3Q7LHNhbnMtc2VyaWY7bXNvLWFzY2lpLWZvbnQtZmFtaWx5OkNhbGlicmk7bXNvLWFzY2lpLXRo
ZW1lLWZvbnQ6bWlub3ItbGF0aW47bXNvLWhhbnNpLWZvbnQtZmFtaWx5OkNhbGlicmk7bXNvLWhh
bnNpLXRoZW1lLWZvbnQ6bWlub3ItbGF0aW47bXNvLWJpZGktdGhlbWUtZm9udDptaW5vci1iaWRp
O21zby1iaWRpLWxhbmd1YWdlOkZBIiBsYW5nPSJGQSI+PG86cD4mbmJzcDs8L286cD48L3NwYW4+
PC9iPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiIGRpcj0ibHRyIiBzdHlsZT0ibWFyZ2luOiAw
aW4gMGluIDhwdDsgbGluZS1oZWlnaHQ6IDEwNyU7IGZvbnQtc2l6ZTogMTFwdDsgZm9udC1mYW1p
bHk6ICZxdW90O0NhbGlicmkmcXVvdDssIHNhbnMtc2VyaWY7IHRleHQtYWxpZ246IGxlZnQ7IGRp
cmVjdGlvbjogcnRsOyB1bmljb2RlLWJpZGk6IGVtYmVkOyI+DQo8Yj48c3BhbiBkaXI9IkxUUiIg
c3R5bGU9Im1zby1iaWRpLWxhbmd1YWdlOkZBIj56bGliLWdsei13YW4tY29tcHJlc3Npb248L3Nw
YW4+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OiZxdW90O0FyaWFsJnF1b3Q7LHNhbnMtc2VyaWY7
bXNvLWFzY2lpLWZvbnQtZmFtaWx5OkNhbGlicmk7bXNvLWFzY2lpLXRoZW1lLWZvbnQ6bWlub3It
bGF0aW47bXNvLWhhbnNpLWZvbnQtZmFtaWx5OkNhbGlicmk7bXNvLWhhbnNpLXRoZW1lLWZvbnQ6
bWlub3ItbGF0aW47bXNvLWJpZGktdGhlbWUtZm9udDptaW5vci1iaWRpO21zby1iaWRpLWxhbmd1
YWdlOkZBIiBsYW5nPSJGQSI+PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9iPjwvcD4NCjwvZGl2
Pg0KPC9ibG9ja3F1b3RlPg0KPGRpdj48YnI+DQo8L2Rpdj4NCjxkaXY+SSBzZWFyY2hlZCB0aGUg
aW50ZXJuZXQgYSBsb3QsIGJ1dCBJIGRpZCBub3QgZmluZCB0aGUgZXhhY3QgaW5mb3JtYXRpb24u
IElmIHBvc3NpYmxlLCBzZW5kPC9kaXY+DQo8ZGl2Pm1lIGEgZ29vZCBkb2N1bWVudCBhYm91dCB0
aGlzIG9yIGhlbHAgbWUuPC9kaXY+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj5UaGFuayB5b3Ug
PHNwYW4gaWQ9IvCfmYIiPvCfmYI8L3NwYW4+PGJyPg0KPC9kaXY+DQo8L2JvZHk+DQo8L2h0bWw+
DQo=

--_000_AS8P190MB125552EA045CF71E2A9A1C6A8FBC0AS8P190MB1255EURP_--

--===============1977480929==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1977480929==--
