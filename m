Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 216DB13B849
	for <lists+spice-devel@lfdr.de>; Wed, 15 Jan 2020 04:46:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 930956E835;
	Wed, 15 Jan 2020 03:46:02 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10olkn2012.outbound.protection.outlook.com [40.92.42.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D5A66E835
 for <spice-devel@lists.freedesktop.org>; Wed, 15 Jan 2020 03:46:00 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ld9B5clEgozOjop2ULM9P1xtBEJFU5WwR2nAVgN740kWZtohWf/IoC8UKVgCB2+lmz9w2KNOcIxPmvB1LK0IC4LN3hAl1jWNeXbJB4ILdaHQL4h0dUOfiki740zqulWnghicU06bpezKaVrJ66dLm6IPYhLpE+Vlyj8OFXHmD/gjpdtSgc8qR77MRCT3pWcJCtMJC/aO3cF9zy568Q78D0Ra7t4G97ynxIamSjuZLMxVvZ0LcY3IrxXeUm8cMOHRGc47CaUmuYgD8s/02qhrHFIwG6ceTPiA/PTXjPKqerFp5sFz1HWZOg8FtTGK4dXaY4NRStj8FzPlbL4cDVqa1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/A6tvA3WH+ZMxKKlrc2jxVzyj2PLmNEUp/6Az0tZxPI=;
 b=RhZtDpNuXCAWTrWKKrZ72Kw0Md8iEWRiJI4Z7dzvjaD04ZM04zQI59KYpcdpqGdBcUZ3CNsa6Ad6jBqSpZWXd5JTCVE7iOOGrc4yR/Om0MElCewegOHQ+ci48h+9b4OgnwMyazA9+Zs82qjqd15AOpLT2ZFHOAJ2xsOHeLvoh4O/9yyTvnr6c++CG6gIFYCm4A6zKlWqxqADM9IMxiW58tfCZVbVBqaI3aJEWfDWx9Oa99ixP7860mmtHKE5QWWYYDJOeX7kTSuYy9PU4+BrM9rs1aNq1BqNDHc8ID50GFvD7dm73ind2IM2wb2GB4crd+R2MLoQDUKOAv1nsMRzfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/A6tvA3WH+ZMxKKlrc2jxVzyj2PLmNEUp/6Az0tZxPI=;
 b=s84FMCE0R3LF+Ko57UEgTr4oSLtS9l3tGWe76h2C6DG7EjJXd9swHlhGA8m43TbECyT/+cRaor5ryzkY8wY/YQJWJytm3OR7RN32XkSAoHWUY5DcdYdbenwZg8E0x/H28G6z2hKlSy6NQUwWKhoRlVlGSoS/4SJL4dpPcywUYemsumoOr2Kmdu1USqX3KJbpW8GukjOHMoQrgmJ9hkMKzpx0GM1Gp8D544+0Q8CCuZOXot21HKP5eBbiidyFlY759Uky2Xf9df/5WD1Uh1wZuL96J5P5+tH+rEpoLljexLDX0+5QIn1YcbeQvb/WXzsXSkHGgQ4iW9YAZq59jwpesQ==
Received: from DM6NAM10FT022.eop-nam10.prod.protection.outlook.com
 (10.13.152.53) by DM6NAM10HT091.eop-nam10.prod.protection.outlook.com
 (10.13.153.156) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2623.9; Wed, 15 Jan
 2020 03:45:57 +0000
Received: from MN2PR06MB5966.namprd06.prod.outlook.com (10.13.152.57) by
 DM6NAM10FT022.mail.protection.outlook.com (10.13.152.92) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.19 via Frontend Transport; Wed, 15 Jan 2020 03:45:57 +0000
Received: from MN2PR06MB5966.namprd06.prod.outlook.com
 ([fe80::8ded:9cfa:7c1:3f5f]) by MN2PR06MB5966.namprd06.prod.outlook.com
 ([fe80::8ded:9cfa:7c1:3f5f%7]) with mapi id 15.20.2623.015; Wed, 15 Jan 2020
 03:45:57 +0000
From: franklin zhou <codeit@live.com>
To: Frediano Ziglio <fziglio@redhat.com>
Thread-Topic: =?iso-2022-jp?B?W1NwaWNlLWRldmVsXSB3aW5kb3dzIHNlcnZlciAyMDEyGyRCIScbKEIg?=
 =?iso-2022-jp?B?V0RETUludGVyZmFjZTo6ZXNjYXBlOjp0aGlzIHNob3VsZCBuZXZlciBo?=
 =?iso-2022-jp?B?YXBwZW4uIFN0YXR1cyBpcyAweGMwMDAwMDBk?=
Thread-Index: AQHVyrmubJR+NUKw4kqg2EFFZYCGb/qWdQdKrVShPO4=
Date: Wed, 15 Jan 2020 03:45:56 +0000
Message-ID: <MN2PR06MB5966D576A159340FBBEBBC7DB3370@MN2PR06MB5966.namprd06.prod.outlook.com>
References: <MN2PR06MB5966B91D42D1F839645822D1B3340@MN2PR06MB5966.namprd06.prod.outlook.com>,
 <340504604.5713959.1578994995366.JavaMail.zimbra@redhat.com>
In-Reply-To: <340504604.5713959.1578994995366.JavaMail.zimbra@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:DE588B23AF90DF94FD4F858797FE6D300F66B1FF6BB289065C123E1EB12673EE;
 UpperCasedChecksum:FE54951B089525012B5DA8CF72618AE21E6B8C4716210E4596C7E64E24A56284;
 SizeAsReceived:7428; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [bs4wRv+sK99Cu15zlZ05Re/cl9MX7vrT]
x-ms-publictraffictype: Email
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: efb202a9-f074-45c7-1f6d-08d7996d6deb
x-ms-traffictypediagnostic: DM6NAM10HT091:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ok2iAEqt+yboijVgWcwXU2tDl9bsi9jiKBq9GhqnkV+bNnB5pOWefojQav7jZMYS2aUyZdkyuEGk7Yllo5GxlSZFx2EdZib4UNDK6ns1rS/lvvE5Lh9CqEonqPqcpBuQAfXhddPqxYnZRi2E4GS95YTcaO5yfUfjS/eJZwfW+F1nn1cp+U8wVpGS7T59kA7m
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: efb202a9-f074-45c7-1f6d-08d7996d6deb
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2020 03:45:56.9895 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM10HT091
Subject: Re: [Spice-devel] =?iso-2022-jp?b?d2luZG93cyBzZXJ2ZXIgMjAxMg==?=
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>,
 Yuri Benditovich <ybendito@redhat.com>
Content-Type: multipart/mixed; boundary="===============0605316765=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0605316765==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR06MB5966D576A159340FBBEBBC7DB3370MN2PR06MB5966namp_"

--_000_MN2PR06MB5966D576A159340FBBEBBC7DB3370MN2PR06MB5966namp_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

I find the rules=1B$B!$=1B(B it no matter with windows 2012, it depend on v=
ideo type,
 if type is cirrus,  or use nvidia GPU in display settings, will cause this=
 problem:

    <video>
      <model type=3D'cirrus' vram=3D'16384' heads=3D'1' primary=3D'yes'/>
      <address type=3D'pci' domain=3D'0x0000' bus=3D'0x00' slot=3D'0x02' fu=
nction=3D'0x0'/>
    </video>


________________________________
From: Frediano Ziglio <fziglio@redhat.com>
Sent: Tuesday, January 14, 2020 9:43 AM
To: franklin zhou <codeit@live.com>
Cc: spice-devel@lists.freedesktop.org <spice-devel@lists.freedesktop.org>; =
Yuri Benditovich <ybendito@redhat.com>
Subject: Re: [Spice-devel] windows server 2012=1B$B!'=1B(B WDDMInterface::e=
scape::this should never happen. Status is 0xc000000d


> In windows server 2012, the follow line " status =3D _pfnEscape(&escapeDa=
ta); "
> always cause error,
> status is: 0xc000000d, error message is: "INFO::2020-01-14
> 16:58:23,387::WDDMInterface::escape::this should never happen. Status is
> 0xc000000d"
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
> bool WDDMInterface::escape(LPCTSTR device_name, void* data, UINT size_dat=
a) {
> .......

> status =3D _pfnEscape(&escapeData);

> if (!NT_SUCCESS(status)) {
> vd_printf("this should never happen. Status is 0x%lx", status);
> };

> }
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
> is this a bug ?

Code is STATUS_INVALID_PARAMETER.
I don't see any reason (beside from device_name) for this result but
looks like a bug indeed.

Frediano


--_000_MN2PR06MB5966D576A159340FBBEBBC7DB3370MN2PR06MB5966namp_
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
I find the rules=1B$B!$=1B(B it no matter with windows 2012, it depend on v=
ideo type,</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
&nbsp;if type is&nbsp;<span style=3D"font-family: Calibri, Helvetica, sans-=
serif; background-color: rgb(255, 255, 255); display: inline !important">ci=
rrus,&nbsp; or use nvidia GPU in display settings, will cause this problem:=
</span></div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<span>&nbsp; &nbsp; &lt;video&gt;<br>
</span>
<div>&nbsp; &nbsp; &nbsp; &lt;model type=3D'cirrus' vram=3D'16384' heads=3D=
'1' primary=3D'yes'/&gt;<br>
</div>
<div>&nbsp; &nbsp; &nbsp; &lt;address type=3D'pci' domain=3D'0x0000' bus=3D=
'0x00' slot=3D'0x02' function=3D'0x0'/&gt;<br>
</div>
<span>&nbsp; &nbsp; &lt;/video&gt;</span><br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<span><br>
</span></div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Frediano Ziglio &lt;f=
ziglio@redhat.com&gt;<br>
<b>Sent:</b> Tuesday, January 14, 2020 9:43 AM<br>
<b>To:</b> franklin zhou &lt;codeit@live.com&gt;<br>
<b>Cc:</b> spice-devel@lists.freedesktop.org &lt;spice-devel@lists.freedesk=
top.org&gt;; Yuri Benditovich &lt;ybendito@redhat.com&gt;<br>
<b>Subject:</b> Re: [Spice-devel] windows server 2012=1B$B!'=1B(B WDDMInter=
face::escape::this should never happen. Status is 0xc000000d</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText"><br>
&gt; In windows server 2012, the follow line &quot; status =3D _pfnEscape(&=
amp;escapeData); &quot;<br>
&gt; always cause error,<br>
&gt; status is: 0xc000000d, error message is: &quot;INFO::2020-01-14<br>
&gt; 16:58:23,387::WDDMInterface::escape::this should never happen. Status =
is<br>
&gt; 0xc000000d&quot;<br>
&gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D<br>
&gt; bool WDDMInterface::escape(LPCTSTR device_name, void* data, UINT size_=
data) {<br>
&gt; .......<br>
<br>
&gt; status =3D _pfnEscape(&amp;escapeData);<br>
<br>
&gt; if (!NT_SUCCESS(status)) {<br>
&gt; vd_printf(&quot;this should never happen. Status is 0x%lx&quot;, statu=
s);<br>
&gt; };<br>
<br>
&gt; }<br>
&gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D<br>
&gt; is this a bug ?<br>
<br>
Code is STATUS_INVALID_PARAMETER.<br>
I don't see any reason (beside from device_name) for this result but<br>
looks like a bug indeed.<br>
<br>
Frediano<br>
<br>
</div>
</span></font></div>
</body>
</html>

--_000_MN2PR06MB5966D576A159340FBBEBBC7DB3370MN2PR06MB5966namp_--

--===============0605316765==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0605316765==--
