Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DD8613B95E
	for <lists+spice-devel@lfdr.de>; Wed, 15 Jan 2020 07:13:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0D1A6E029;
	Wed, 15 Jan 2020 06:13:41 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11olkn2109.outbound.protection.outlook.com [40.92.18.109])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0089A6E029
 for <spice-devel@lists.freedesktop.org>; Wed, 15 Jan 2020 06:13:40 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=masD56DVm/k0pylv7cLaoLgcxe8kw5XatSw4voWIpVhxP9EdWBWfRBIcj+sFnYa3d6vOr9wG60TbT84POcGhAW20m5c02KZd7nLvlEYfiDUVTqFrTvA9hwaAZzHV6czxE6mMcaXixf2++WtqrLqNQl7xLAwQ9FfL/A3n86E/YViE/M1G4f7syFw1/KqgoZklHByW9v4GRNNZQMiOlUBAXGDYel9TKhXlhO3dWfeyyP3itGJ+E1cOlGJzNYOtV3f6rwCC4KaAgfsEuxtln2IsNNXV8YyAd9dFKq5qrsPIKLJlh/uL8bnFqMxrl8dtzvdOA42rQVdLGtoAelH8c1SXuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lgvjlNwwQgPcj7UEXEqhMUSfiYnYuiRQUJvRJwm0znE=;
 b=eCex11EiLph9zUjMStulBNGM9nrPMxtYWZTl4sC3PIy1yuZlLX3wlSvI91vEXGdW8cCUS98anC72S0ZuwVFC01lsbQ7EnLqMzD5fIeF0C1eQ/MrWLBgnW2DpNl16kQgSizAVmHDe7wJa4XG33P+TQePw8L8eupDbWuPsswtnCCgtEO7iECJxNlOky4aI+Q+Yfj0TF5h/qgN9ZGNOSI3e1PvljOSrJs0ouqfkAfF6Qj+puYeLIZG4zFl3fieJeBi62/5QsSBqA+O3ZXuVPwKUcXpbcXV1MCjmxDVUxwWwjs48BjQ8z3XDGHkE3Nb5COVc+IHQ/czP8rNf7tMQ/NFG7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lgvjlNwwQgPcj7UEXEqhMUSfiYnYuiRQUJvRJwm0znE=;
 b=uzd4Mp0JxvB8o+brj5ThAiYm4KfnADxDQ2b8GxnDotgmwsrG96zzuBHdSPlR7ujhw1uEJukjfKIRkUjg6AFNzG9tE2Ra+S2w3KecZk7rgdrfVtHt77owTYpQapC+46GAKpZYTIv+UbIk6tvg3f4QSIE0jNDI6hzX1cqb9fvGVJHlzryfOMknMbmjg1D7KMLMCQa4P8e88CgJv2eZP2mOaUBWH6a/KjwnhVRLUQjtCDBnC6cgyKBK4i6Vdo/zL7JctVnjR2a4iMJZZsSqYJvIAZhUVaQnwqpiKvRvLLI/BKH5XOF58P5Mi8eF47PAlPCvEI68rE7j1gbKTeItAR80/A==
Received: from CO1NAM11FT035.eop-nam11.prod.protection.outlook.com
 (10.13.174.51) by CO1NAM11HT014.eop-nam11.prod.protection.outlook.com
 (10.13.174.96) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2623.9; Wed, 15 Jan
 2020 06:13:39 +0000
Received: from MN2PR06MB5966.namprd06.prod.outlook.com (10.13.174.53) by
 CO1NAM11FT035.mail.protection.outlook.com (10.13.175.36) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.19 via Frontend Transport; Wed, 15 Jan 2020 06:13:38 +0000
Received: from MN2PR06MB5966.namprd06.prod.outlook.com
 ([fe80::8ded:9cfa:7c1:3f5f]) by MN2PR06MB5966.namprd06.prod.outlook.com
 ([fe80::8ded:9cfa:7c1:3f5f%7]) with mapi id 15.20.2623.015; Wed, 15 Jan 2020
 06:13:38 +0000
From: franklin zhou <codeit@live.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Thread-Topic: =?iso-2022-jp?B?W1NwaWNlLWRldmVsXSB3aW5kb3dzIHNlcnZlciAyMDEyGyRCIScbKEIg?=
 =?iso-2022-jp?B?V0RETUludGVyZmFjZTo6ZXNjYXBlOjp0aGlzIHNob3VsZCBuZXZlciBo?=
 =?iso-2022-jp?B?YXBwZW4uIFN0YXR1cyBpcyAweGMwMDAwMDBk?=
Thread-Index: AQHVyrmubJR+NUKw4kqg2EFFZYCGb/qWdQdKrVN6RICAAVBQeQ==
Date: Wed, 15 Jan 2020 06:13:38 +0000
Message-ID: <MN2PR06MB59660C9996BE501670A7E50EB3370@MN2PR06MB5966.namprd06.prod.outlook.com>
References: <MN2PR06MB5966B91D42D1F839645822D1B3340@MN2PR06MB5966.namprd06.prod.outlook.com>
 <340504604.5713959.1578994995366.JavaMail.zimbra@redhat.com>,
 <CAOEp5OehVVQxjYW3wR7wTE++Ct4vp-1KUnLOfnL-Z_Vq25DcBw@mail.gmail.com>
In-Reply-To: <CAOEp5OehVVQxjYW3wR7wTE++Ct4vp-1KUnLOfnL-Z_Vq25DcBw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:9361A4FC72CE1BB99A60A808769F3DA1596E8B1563708B20830A4C4FD2AFD8DD;
 UpperCasedChecksum:6F18C95725B235CE57F307E5A97F43342C13449A01017F178B560240466EEC3C;
 SizeAsReceived:7506; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [UuEoua3XiQY3/jOjelKrXU7M0PTRFAaK]
x-ms-publictraffictype: Email
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: e6620ccf-a40f-4a1b-1790-08d799821000
x-ms-traffictypediagnostic: CO1NAM11HT014:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /RCrnBwrghHmSBqwr0Fd9Ier4lB0ACbI6oO1GraxSaZgkFBnKyoCDdFMbLUXvVHLI/D52cQLw8Sm5sqfhSMSMFnrNGfcEqgK5YyQC6r9HqkAlrzYDrvcV1Fsf5MoN/ae5IFCqR3q9wsWqT0qjjBDJsWQZ3GpKLBtZ4joyh+n9/qGfFyhi1TvckbJY/TXgeEsY25/bL4UnTfxGZDzxD5HZO9ugAuqACq6pymHjHMuV3Y=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: e6620ccf-a40f-4a1b-1790-08d799821000
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2020 06:13:38.8244 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1NAM11HT014
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
Cc: Spice List <spice-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============1181474486=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1181474486==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR06MB59660C9996BE501670A7E50EB3370MN2PR06MB5966namp_"

--_000_MN2PR06MB59660C9996BE501670A7E50EB3370MN2PR06MB5966namp_
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

 Does WDDMInterface::escape only support qxl type video card?

________________________________
From: Yuri Benditovich <yuri.benditovich@daynix.com>
Sent: Tuesday, January 14, 2020 10:07 AM
To: franklin zhou <codeit@live.com>
Cc: Frediano Ziglio <fziglio@redhat.com>; Spice List <spice-devel@lists.fre=
edesktop.org>
Subject: Re: [Spice-devel] windows server 2012=1B$B!'=1B(B WDDMInterface::e=
scape::this should never happen. Status is 0xc000000d

Which QXL driver is installed on 2012: qxl.sys for xp/Win7 or
qxldod.sys for win8+?

On Tue, Jan 14, 2020 at 11:43 AM Frediano Ziglio <fziglio@redhat.com> wrote=
:
>
>
> > In windows server 2012, the follow line " status =3D _pfnEscape(&escape=
Data); "
> > always cause error,
> > status is: 0xc000000d, error message is: "INFO::2020-01-14
> > 16:58:23,387::WDDMInterface::escape::this should never happen. Status i=
s
> > 0xc000000d"
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
> > bool WDDMInterface::escape(LPCTSTR device_name, void* data, UINT size_d=
ata) {
> > .......
>
> > status =3D _pfnEscape(&escapeData);
>
> > if (!NT_SUCCESS(status)) {
> > vd_printf("this should never happen. Status is 0x%lx", status);
> > };
>
> > }
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
> > is this a bug ?
>
> Code is STATUS_INVALID_PARAMETER.
> I don't see any reason (beside from device_name) for this result but
> looks like a bug indeed.
>
> Frediano
>
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--_000_MN2PR06MB59660C9996BE501670A7E50EB3370MN2PR06MB5966namp_
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
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Helvetica=
, sans-serif; color: black; background-color: rgb(255, 255, 255)">
I find the rules=1B$B!$=1B(B it no matter with windows 2012, it depend on v=
ideo type,</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Helvetica=
, sans-serif; color: black; background-color: rgb(255, 255, 255)">
&nbsp;if type is&nbsp;<span style=3D"margin: 0px; background-color: white">=
cirrus,&nbsp; or use nvidia GPU in display settings, will cause this proble=
m:</span></div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Helvetica=
, sans-serif; color: black; background-color: rgb(255, 255, 255)">
<br>
</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Helvetica=
, sans-serif; color: black; background-color: rgb(255, 255, 255)">
<span style=3D"margin: 0px">&nbsp; &nbsp; &lt;video&gt;<br>
</span>
<div style=3D"margin: 0px">&nbsp; &nbsp; &nbsp; &lt;model type=3D'cirrus' v=
ram=3D'16384' heads=3D'1' primary=3D'yes'/&gt;<br>
</div>
<div style=3D"margin: 0px">&nbsp; &nbsp; &nbsp; &lt;address type=3D'pci' do=
main=3D'0x0000' bus=3D'0x00' slot=3D'0x02' function=3D'0x0'/&gt;<br>
</div>
<span style=3D"margin: 0px">&nbsp; &nbsp; &lt;/video&gt;</span></div>
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
</div>
&nbsp;Does WDDMInterface::escape only support qxl type video card?
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<span style=3D"color: rgb(50, 49, 48); font-family: &quot;Segoe UI&quot;, &=
quot;Segoe UI Web (West European)&quot;, &quot;Segoe UI&quot;, -apple-syste=
m, BlinkMacSystemFont, Roboto, &quot;Helvetica Neue&quot;, sans-serif; font=
-size: 17px; font-weight: 600; background-color: rgb(250, 249, 248); displa=
y: inline !important"><br>
</span></div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Yuri Benditovich &lt;=
yuri.benditovich@daynix.com&gt;<br>
<b>Sent:</b> Tuesday, January 14, 2020 10:07 AM<br>
<b>To:</b> franklin zhou &lt;codeit@live.com&gt;<br>
<b>Cc:</b> Frediano Ziglio &lt;fziglio@redhat.com&gt;; Spice List &lt;spice=
-devel@lists.freedesktop.org&gt;<br>
<b>Subject:</b> Re: [Spice-devel] windows server 2012=1B$B!'=1B(B WDDMInter=
face::escape::this should never happen. Status is 0xc000000d</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">Which QXL driver is installed on 2012: qxl.sys for=
 xp/Win7 or<br>
qxldod.sys for win8&#43;?<br>
<br>
On Tue, Jan 14, 2020 at 11:43 AM Frediano Ziglio &lt;fziglio@redhat.com&gt;=
 wrote:<br>
&gt;<br>
&gt;<br>
&gt; &gt; In windows server 2012, the follow line &quot; status =3D _pfnEsc=
ape(&amp;escapeData); &quot;<br>
&gt; &gt; always cause error,<br>
&gt; &gt; status is: 0xc000000d, error message is: &quot;INFO::2020-01-14<b=
r>
&gt; &gt; 16:58:23,387::WDDMInterface::escape::this should never happen. St=
atus is<br>
&gt; &gt; 0xc000000d&quot;<br>
&gt; &gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<br>
&gt; &gt; bool WDDMInterface::escape(LPCTSTR device_name, void* data, UINT =
size_data) {<br>
&gt; &gt; .......<br>
&gt;<br>
&gt; &gt; status =3D _pfnEscape(&amp;escapeData);<br>
&gt;<br>
&gt; &gt; if (!NT_SUCCESS(status)) {<br>
&gt; &gt; vd_printf(&quot;this should never happen. Status is 0x%lx&quot;, =
status);<br>
&gt; &gt; };<br>
&gt;<br>
&gt; &gt; }<br>
&gt; &gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt; &gt; is this a bug ?<br>
&gt;<br>
&gt; Code is STATUS_INVALID_PARAMETER.<br>
&gt; I don't see any reason (beside from device_name) for this result but<b=
r>
&gt; looks like a bug indeed.<br>
&gt;<br>
&gt; Frediano<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; Spice-devel mailing list<br>
&gt; Spice-devel@lists.freedesktop.org<br>
&gt; <a href=3D"https://lists.freedesktop.org/mailman/listinfo/spice-devel"=
>https://lists.freedesktop.org/mailman/listinfo/spice-devel</a><br>
</div>
</span></font></div>
</body>
</html>

--_000_MN2PR06MB59660C9996BE501670A7E50EB3370MN2PR06MB5966namp_--

--===============1181474486==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1181474486==--
