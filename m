Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D0A6113A385
	for <lists+spice-devel@lfdr.de>; Tue, 14 Jan 2020 10:11:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3E156E1ED;
	Tue, 14 Jan 2020 09:11:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12olkn2083.outbound.protection.outlook.com [40.92.21.83])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEA126E1ED
 for <spice-devel@lists.freedesktop.org>; Tue, 14 Jan 2020 09:11:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G8CLoWMzKSjuaqg6htQN9wXwI62nBYJCdQyaI1LvJTFE8pNm9zzxATBDTOAN8w5qRN/zTxp8zyJUzG7lLUpB/aiPILMO3x/f8v8Recci2h/mgv9qLwraiDwhHbIN/7EdExBt/Ty3F5GDJTkwwF89WGL3nVN97OmjwXKqAN0KPp4MqikdRgNCx304y6MwaDNEP0Dc/20YtmiN2jJBqdyEYZb4Cq5e1RdrpBuN9F2Ok12TlBq0mqw+ccHSbjxzlkCJH5lVekGUMD4DwJ4upDEf3/0bRz7RJGAFkZ2L+8QOX431JXJuC2UdrXmRPiHw4EBBSe+UqJShtQeVx9wgLCE++Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rj3m8rSAnPO13lEjpM9afdoHIsLHm88lsAieT0XBthA=;
 b=f3NXz+beWoYkayciy+QTQGj3fisTAQwsg0qHoZnGnySkkneQxurIDHlZO+4MsP37pWy9gizYB0eKa+CndlxLpI06k+ABMcgC7pRf3V8GMOtzdaOyIfzdu/9pZ4tzNDq+WonCxC2Y8GgWWdUyTRtiYlWWRwrbu1Ibt+jI/XjxyFXXt5ugdoE37yMWpJbnKWMSK2+jbBtc3mf+TCE9NxIjG0u0o2ZelYXXbCBvNMTZlc3TizSwejCz8Q+eiWJiKGPYQ7JPryPDHxCRW64WGtBrfSsF7nFZQwKtga/7s5fsTY+tCxGxu3mET7J2T1lMt3bmm6OuoSUxoeciTTQxkukfbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rj3m8rSAnPO13lEjpM9afdoHIsLHm88lsAieT0XBthA=;
 b=szfionmRxN+SdvaXsgC+Jii+x/SM6D4JnWEtWiCBZ4fXV+Sju146ooXe8E1SDV3vZbIGvUZH0vGDVAkomowNeom/ypuaKo/hLdo2JkbOb08Wbj2uL1rpmpVg4q7irTI0uu6c7YULWColCzVcPNsu9LDg8QkZcXms4m0WXyrPyYHSMG9Z4AQWlfD2VgFdRn8xZMzXI9+X5pMZY/5c70F3VOon0HoZNeEN7zRn0h61Cdk6Ssnul6xRFwxnmkC5ONLLpUaubPaPfHztfUD+YLKKicW2wdtbxw8CVdO9IKoE49VJLEwUJubxegHrL2GjTalikGJAz2qO5D7C4RNZ0TB81w==
Received: from DM6NAM12FT035.eop-nam12.prod.protection.outlook.com
 (10.13.178.54) by DM6NAM12HT172.eop-nam12.prod.protection.outlook.com
 (10.13.179.87) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2644.6; Tue, 14 Jan
 2020 09:11:26 +0000
Received: from MN2PR06MB5966.namprd06.prod.outlook.com (10.13.178.56) by
 DM6NAM12FT035.mail.protection.outlook.com (10.13.179.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.6 via Frontend Transport; Tue, 14 Jan 2020 09:11:26 +0000
Received: from MN2PR06MB5966.namprd06.prod.outlook.com
 ([fe80::8ded:9cfa:7c1:3f5f]) by MN2PR06MB5966.namprd06.prod.outlook.com
 ([fe80::8ded:9cfa:7c1:3f5f%7]) with mapi id 15.20.2623.015; Tue, 14 Jan 2020
 09:11:26 +0000
From: franklin zhou <codeit@live.com>
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Thread-Topic: =?iso-2022-jp?B?d2luZG93cyBzZXJ2ZXIgMjAxMhskQiEnGyhCIFdERE1JbnRlcmZhY2U6?=
 =?iso-2022-jp?B?OmVzY2FwZTo6dGhpcyBzaG91bGQgbmV2ZXIgaGFwcGVuLiBTdGF0dXMg?=
 =?iso-2022-jp?B?aXMgMHhjMDAwMDAwZA==?=
Thread-Index: AQHVyrmubJR+NUKw4kqg2EFFZYCGbw==
Date: Tue, 14 Jan 2020 09:11:25 +0000
Message-ID: <MN2PR06MB5966B91D42D1F839645822D1B3340@MN2PR06MB5966.namprd06.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:7CF0D7CD909466B2D043871AA4BFFCAFF5406C4FA3363A32323F1816D13E13E1;
 UpperCasedChecksum:C65E1359CE631F02CD9B776544EDB0C27A96107CFB93117B748865940A6730B3;
 SizeAsReceived:7069; Count:42
x-tmn: [SLS6g6nRjtOO5X+eF9emX3UHuZjLHY4L]
x-ms-publictraffictype: Email
x-incomingheadercount: 42
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: d9d0a802-9814-4d90-986d-08d798d1bbb1
x-ms-traffictypediagnostic: DM6NAM12HT172:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MbDwNQzUf6JJs2m+IqRj4zJ5RiafvOZ1xD1U5LjSN163T7gQVyVge7e1jyyHlrgoGyWDT+7I/AjX9D/gikYGLn3OmckUHE/OBXPf0rAZZlol1jzHbzC01MzFBYo4OxKYnyTGzw7Qb4kfUSRqf1S2vz7MaMZWKbGlwAwZgHtAxaDkevNSx4gaD4qUtDvvfYRR
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: d9d0a802-9814-4d90-986d-08d798d1bbb1
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2020 09:11:25.9350 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM12HT172
Subject: [Spice-devel] =?iso-2022-jp?b?d2luZG93cyBzZXJ2ZXIgMjAxMg==?=
 =?iso-2022-jp?b?GyRCIScbKEIgV0RETUludGVyZmFjZTo6ZXNjYXBlOjp0aGlzIHNob3Vs?=
 =?iso-2022-jp?b?ZCBuZXZlciBoYXBwZW4uIFN0YXR1cyBpcyAweGMwMDAwMDBk?=
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
Content-Type: multipart/mixed; boundary="===============0824201302=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0824201302==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR06MB5966B91D42D1F839645822D1B3340MN2PR06MB5966namp_"

--_000_MN2PR06MB5966B91D42D1F839645822D1B3340MN2PR06MB5966namp_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

In windows server 2012, the follow line  "status =3D _pfnEscape(&escapeData=
);" always cause error,
status is: 0xc000000d, error message is: "INFO::2020-01-14 16:58:23,387::WD=
DMInterface::escape::this should never happen. Status is 0xc000000d"
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
bool WDDMInterface::escape(LPCTSTR device_name, void* data, UINT size_data)=
 {
 .......

    status =3D _pfnEscape(&escapeData);

    if (!NT_SUCCESS(status)) {
        vd_printf("this should never happen. Status is 0x%lx", status);
    };

}
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
is this a bug ?




--_000_MN2PR06MB5966B91D42D1F839645822D1B3340MN2PR06MB5966namp_
Content-Type: text/html; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-2022-=
jp">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
In windows server 2012, the follow line&nbsp; &quot;<span style=3D"font-fam=
ily: Calibri, Helvetica, sans-serif; background-color: rgb(255, 255, 255); =
display: inline !important">status =3D _pfnEscape(&amp;escapeData);</span>&=
quot; always cause error,</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
status is:&nbsp;0xc000000d, error message is: &quot;INFO::2020-01-14 16:58:=
23,387::WDDMInterface::escape::this should never happen. Status is 0xc00000=
0d&quot;</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
bool WDDMInterface::escape(LPCTSTR device_name, void* data, UINT size_data)=
 {<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
&nbsp;.......</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<span>&nbsp; &nbsp; status =3D _pfnEscape(&amp;escapeData);<br>
</span>
<div><br>
</div>
<div>&nbsp; &nbsp; if (!NT_SUCCESS(status)) {<br>
</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; vd_printf(&quot;this should never happen. =
Status is 0x%lx&quot;, status);<br>
</div>
<span>&nbsp; &nbsp; };</span><br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
}</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
is this a bug ?</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
</body>
</html>

--_000_MN2PR06MB5966B91D42D1F839645822D1B3340MN2PR06MB5966namp_--

--===============0824201302==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0824201302==--
