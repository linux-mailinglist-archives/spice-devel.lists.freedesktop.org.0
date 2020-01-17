Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 42449140422
	for <lists+spice-devel@lfdr.de>; Fri, 17 Jan 2020 07:48:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55EE16F3D0;
	Fri, 17 Jan 2020 06:48:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12olkn2080.outbound.protection.outlook.com [40.92.22.80])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D26796F3D0
 for <spice-devel@lists.freedesktop.org>; Fri, 17 Jan 2020 06:48:51 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hgkmO2tVj//LwD1iTab3TeyY3TxdjBuWxmDuRkSjffxIDC3r8MnJoC3zI5acXaWgiqMfb1yCcnAZ7+7IfPBjC3w/8GNoJJsZ0opORNLh41r6xXV2K5OtQLj0R3ST4RcRLCSrbFkI1AyzAdVAg3ZlJ7P5vuhsNMuIuVdd+hbkw3Cxc460U71pz2c2TZx7RkIUYElOzXdG81xZou7mWfnyGm4rqLe/z7XAidbLxGvowhAW5JKnzK4PjByR1QhLSIad4V4eEpPVZFM5BKo/T19+BCOrN8khkcGe4T8jM74sOD4fw3lQk1n+c1Yqj26gKelXo8z1YheNcUmsIiTQbyiuQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s992czkuuGUZd2ZOnQ+VGIm6ewpkyI9m6eju27nJjAQ=;
 b=NAlOUvzruySMIr0Vdc/JfNXolI1iV6uKhCrpVBTm6gEN30yCIL+kMIaiFubGKX3u/7RQPOG/xnOx0wcU6WCF35pULtGw13qHHS3U6fVTSGwWTOvd1bnlwIBY5iOHOzSdCVRp6P+kVPwaaQvRqbH100DQPmaj6lnaOIzB1enkhRZk8AYKU6FpbMMVQT36PTzuzPUelDzQXtsNhtNQ1skIHt9NAWx5lve3aIF2tcqGjjKCLwd/XVxyqSthcN+S+Rh3Fza60kC1JlSFikiuDugySBdr0qmiWdXMxyifiiD1cWPlvOSF9AfJz1OA8Q7GHgsYRyQ0luKJBifa507WhJF7+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s992czkuuGUZd2ZOnQ+VGIm6ewpkyI9m6eju27nJjAQ=;
 b=s/q+u44/31J1f+KLr1x6NdrBGbcTsyJDclF1SVRcraY1Gg3n0dAgvjvddOS07VYJ6PueAdm2cyps4W6aUQtZj0KhWCzA/ZFCamLd0iN5+lxzJW6dfR7ictUNP8C/civNSso9jj2Tkd1hwYRVQVjAPaLcnsVPXEbPjlrx0KK8esnNfnGyfpMC+aPvUnck7HQozUA2CpYN1mEXYiNCnLrSb4+xj9qkbAKuPGS03Le6qC7E+n4Q+F/A/87GAfoO/uB8y1G+6ZFgV9wjyC3v7N17St4USI8zam9bwCvCZOqQPqz2yOVKoMsih6y2KxEJvcYZ45U7pHUw7Ag0A7/r0NcGZg==
Received: from DM6NAM12FT017.eop-nam12.prod.protection.outlook.com
 (10.13.178.52) by DM6NAM12HT030.eop-nam12.prod.protection.outlook.com
 (10.13.179.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2665.6; Fri, 17 Jan
 2020 06:48:50 +0000
Received: from MN2PR06MB5966.namprd06.prod.outlook.com (10.13.178.52) by
 DM6NAM12FT017.mail.protection.outlook.com (10.13.178.65) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.6 via Frontend Transport; Fri, 17 Jan 2020 06:48:50 +0000
Received: from MN2PR06MB5966.namprd06.prod.outlook.com
 ([fe80::8ded:9cfa:7c1:3f5f]) by MN2PR06MB5966.namprd06.prod.outlook.com
 ([fe80::8ded:9cfa:7c1:3f5f%7]) with mapi id 15.20.2623.018; Fri, 17 Jan 2020
 06:48:49 +0000
From: franklin zhou <codeit@live.com>
To: Frediano Ziglio <fziglio@redhat.com>, Yuri Benditovich
 <yuri.benditovich@daynix.com>
Thread-Topic: =?iso-2022-jp?B?W1NwaWNlLWRldmVsXSB3aW5kb3dzIHNlcnZlciAyMDEyGyRCIScbKEIg?=
 =?iso-2022-jp?B?V0RETUludGVyZmFjZTo6ZXNjYXBlOjp0aGlzIHNob3VsZCBuZXZlciBo?=
 =?iso-2022-jp?B?YXBwZW4uIFN0YXR1cyBpcyAweGMwMDAwMDBk?=
Thread-Index: AQHVyrmubJR+NUKw4kqg2EFFZYCGb/qWdQdKrVN6RICAAVBQeYAAFraAgAHbaQCAATxGNA==
Date: Fri, 17 Jan 2020 06:48:49 +0000
Message-ID: <MN2PR06MB5966CE1ADAD80F6CDCF455B3B3310@MN2PR06MB5966.namprd06.prod.outlook.com>
References: <MN2PR06MB5966B91D42D1F839645822D1B3340@MN2PR06MB5966.namprd06.prod.outlook.com>
 <340504604.5713959.1578994995366.JavaMail.zimbra@redhat.com>
 <CAOEp5OehVVQxjYW3wR7wTE++Ct4vp-1KUnLOfnL-Z_Vq25DcBw@mail.gmail.com>
 <MN2PR06MB59660C9996BE501670A7E50EB3370@MN2PR06MB5966.namprd06.prod.outlook.com>
 <CAOEp5OdgTBGvHBU9CAnDt5bF0A-JaRv0Fzi=rNRLJrBhdtTOSQ@mail.gmail.com>,
 <2007873689.6101347.1579175618090.JavaMail.zimbra@redhat.com>
In-Reply-To: <2007873689.6101347.1579175618090.JavaMail.zimbra@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:C228A7E5B1566A3C80E671B5428D41F9D32B3409F72DDDAD7C8EFE557D8CD006;
 UpperCasedChecksum:D9E0245A7F43A9325E52DF0AA04750FD02CAD4540F0460E4D446EE115B4127F9;
 SizeAsReceived:7721; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [LyrqDVN2LZpcWzN58B2GsmXlpry03mu3]
x-ms-publictraffictype: Email
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: d13e332b-9dd1-4886-fa85-08d79b194f15
x-ms-traffictypediagnostic: DM6NAM12HT030:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NG79lnXxOq0CssRbmIapMyU9n3mMBeR6lCqggGBHzmCC6+BSX4Lpc6yKMzrLw3UgJmdl3vPlB/mHAIKsrzhjsMzinjSOPU1nW0lGUQoz5OXenGjoMxoItXMjqAMK6wSQiMKlVGIwo9PTMzj91nF0+BOo67JGdlAOPE8oLqjSq4IWR7X8EQftVGIB+I6O0T6jkLofWvhQC2v5FgGHrHDbd2njYGduZtt4kg00rCiejzI=
x-ms-exchange-antispam-messagedata: HALaX1x3b5kx0NciWY9if3lVJ8OYaSKSeZtmhTKCAjxrDtlIqakPaQpsGjnprmj1wiakW1Z1ZN50Wj4aJ69LEkYWnN4NwZsFNF8fsGsVdUr9EuKQtkTjjPbDhu9yeO50HpzPQJxp5/Ot0oxyRerQ/g==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: d13e332b-9dd1-4886-fa85-08d79b194f15
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jan 2020 06:48:49.8533 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM12HT030
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
Content-Type: multipart/mixed; boundary="===============0880299357=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0880299357==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR06MB5966CE1ADAD80F6CDCF455B3B3310MN2PR06MB5966namp_"

--_000_MN2PR06MB5966CE1ADAD80F6CDCF455B3B3310MN2PR06MB5966namp_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

hi, Frediano,

The vdagent is:  https://www.spice-space.org/download/windows/spice-guest-t=
ools/spice-guest-tools-latest.exe


________________________________
From: Frediano Ziglio <fziglio@redhat.com>
Sent: Thursday, January 16, 2020 11:53 AM
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Cc: franklin zhou <codeit@live.com>; Spice List <spice-devel@lists.freedesk=
top.org>
Subject: Re: [Spice-devel] windows server 2012=1B$B!'=1B(B WDDMInterface::e=
scape::this should never happen. Status is 0xc000000d

>
> On Wed, Jan 15, 2020 at 8:13 AM franklin zhou <codeit@live.com> wrote:
> >
> > I find the rules=1B$B!$=1B(B it no matter with windows 2012, it depend =
on video type,
> >  if type is cirrus,  or use nvidia GPU in display settings, will cause =
this
> >  problem:
> >
> >     <video>
> >       <model type=3D'cirrus' vram=3D'16384' heads=3D'1' primary=3D'yes'=
/>
> >       <address type=3D'pci' domain=3D'0x0000' bus=3D'0x00' slot=3D'0x02=
'
> >       function=3D'0x0'/>
> >     </video>
> >
> >  Does WDDMInterface::escape only support qxl type video card?
>
> Yes, this is private interface
>

I tested briefly the agent changing the VM to standard VGA and the agent
detect correctly the situation and instead (for the screen size) find the
closest resolution and set that instead of sending invalid Escape commands.
I used Windows 7. So why under Windows 2012 the agent behave that way?
Franklin, what version of the agent are you using?

> >
> > ________________________________
> > From: Yuri Benditovich <yuri.benditovich@daynix.com>
> > Sent: Tuesday, January 14, 2020 10:07 AM
> > To: franklin zhou <codeit@live.com>
> > Cc: Frediano Ziglio <fziglio@redhat.com>; Spice List
> > <spice-devel@lists.freedesktop.org>
> > Subject: Re: [Spice-devel] windows server 2012=1B$B!'=1B(B WDDMInterfac=
e::escape::this
> > should never happen. Status is 0xc000000d
> >
> > Which QXL driver is installed on 2012: qxl.sys for xp/Win7 or
> > qxldod.sys for win8+?
> >
> > On Tue, Jan 14, 2020 at 11:43 AM Frediano Ziglio <fziglio@redhat.com>
> > wrote:
> > >
> > >
> > > > In windows server 2012, the follow line " status =3D
> > > > _pfnEscape(&escapeData); "
> > > > always cause error,
> > > > status is: 0xc000000d, error message is: "INFO::2020-01-14
> > > > 16:58:23,387::WDDMInterface::escape::this should never happen. Stat=
us
> > > > is
> > > > 0xc000000d"
> > > > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
> > > > bool WDDMInterface::escape(LPCTSTR device_name, void* data, UINT
> > > > size_data) {
> > > > .......
> > >
> > > > status =3D _pfnEscape(&escapeData);
> > >
> > > > if (!NT_SUCCESS(status)) {
> > > > vd_printf("this should never happen. Status is 0x%lx", status);
> > > > };
> > >
> > > > }
> > > > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D
> > > > is this a bug ?
> > >
> > > Code is STATUS_INVALID_PARAMETER.
> > > I don't see any reason (beside from device_name) for this result but
> > > looks like a bug indeed.
> > >
> > > Frediano
> > >


--_000_MN2PR06MB5966CE1ADAD80F6CDCF455B3B3310MN2PR06MB5966namp_
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
hi, Frediano,</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
The vdagent is:&nbsp;&nbsp;<a href=3D"https://www.spice-space.org/download/=
windows/spice-guest-tools/spice-guest-tools-latest.exe" id=3D"LPlnk228662">=
https://www.spice-space.org/download/windows/spice-guest-tools/spice-guest-=
tools-latest.exe</a></div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Frediano Ziglio &lt;f=
ziglio@redhat.com&gt;<br>
<b>Sent:</b> Thursday, January 16, 2020 11:53 AM<br>
<b>To:</b> Yuri Benditovich &lt;yuri.benditovich@daynix.com&gt;<br>
<b>Cc:</b> franklin zhou &lt;codeit@live.com&gt;; Spice List &lt;spice-deve=
l@lists.freedesktop.org&gt;<br>
<b>Subject:</b> Re: [Spice-devel] windows server 2012=1B$B!'=1B(B WDDMInter=
face::escape::this should never happen. Status is 0xc000000d</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">&gt; <br>
&gt; On Wed, Jan 15, 2020 at 8:13 AM franklin zhou &lt;codeit@live.com&gt; =
wrote:<br>
&gt; &gt;<br>
&gt; &gt; I find the rules=1B$B!$=1B(B it no matter with windows 2012, it d=
epend on video type,<br>
&gt; &gt;&nbsp; if type is cirrus,&nbsp; or use nvidia GPU in display setti=
ngs, will cause this<br>
&gt; &gt;&nbsp; problem:<br>
&gt; &gt;<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; &lt;video&gt;<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;model type=3D'cirrus' vra=
m=3D'16384' heads=3D'1' primary=3D'yes'/&gt;<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;address type=3D'pci' doma=
in=3D'0x0000' bus=3D'0x00' slot=3D'0x02'<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; function=3D'0x0'/&gt;<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/video&gt;<br>
&gt; &gt;<br>
&gt; &gt;&nbsp; Does WDDMInterface::escape only support qxl type video card=
?<br>
&gt; <br>
&gt; Yes, this is private interface<br>
&gt; <br>
<br>
I tested briefly the agent changing the VM to standard VGA and the agent<br=
>
detect correctly the situation and instead (for the screen size) find the<b=
r>
closest resolution and set that instead of sending invalid Escape commands.=
<br>
I used Windows 7. So why under Windows 2012 the agent behave that way?<br>
Franklin, what version of the agent are you using?<br>
<br>
&gt; &gt;<br>
&gt; &gt; ________________________________<br>
&gt; &gt; From: Yuri Benditovich &lt;yuri.benditovich@daynix.com&gt;<br>
&gt; &gt; Sent: Tuesday, January 14, 2020 10:07 AM<br>
&gt; &gt; To: franklin zhou &lt;codeit@live.com&gt;<br>
&gt; &gt; Cc: Frediano Ziglio &lt;fziglio@redhat.com&gt;; Spice List<br>
&gt; &gt; &lt;spice-devel@lists.freedesktop.org&gt;<br>
&gt; &gt; Subject: Re: [Spice-devel] windows server 2012=1B$B!'=1B(B WDDMIn=
terface::escape::this<br>
&gt; &gt; should never happen. Status is 0xc000000d<br>
&gt; &gt;<br>
&gt; &gt; Which QXL driver is installed on 2012: qxl.sys for xp/Win7 or<br>
&gt; &gt; qxldod.sys for win8&#43;?<br>
&gt; &gt;<br>
&gt; &gt; On Tue, Jan 14, 2020 at 11:43 AM Frediano Ziglio &lt;fziglio@redh=
at.com&gt;<br>
&gt; &gt; wrote:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; In windows server 2012, the follow line &quot; status =
=3D<br>
&gt; &gt; &gt; &gt; _pfnEscape(&amp;escapeData); &quot;<br>
&gt; &gt; &gt; &gt; always cause error,<br>
&gt; &gt; &gt; &gt; status is: 0xc000000d, error message is: &quot;INFO::20=
20-01-14<br>
&gt; &gt; &gt; &gt; 16:58:23,387::WDDMInterface::escape::this should never =
happen. Status<br>
&gt; &gt; &gt; &gt; is<br>
&gt; &gt; &gt; &gt; 0xc000000d&quot;<br>
&gt; &gt; &gt; &gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt; &gt; &gt; &gt; bool WDDMInterface::escape(LPCTSTR device_name, void* d=
ata, UINT<br>
&gt; &gt; &gt; &gt; size_data) {<br>
&gt; &gt; &gt; &gt; .......<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; status =3D _pfnEscape(&amp;escapeData);<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; if (!NT_SUCCESS(status)) {<br>
&gt; &gt; &gt; &gt; vd_printf(&quot;this should never happen. Status is 0x%=
lx&quot;, status);<br>
&gt; &gt; &gt; &gt; };<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; }<br>
&gt; &gt; &gt; &gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt; &gt; &gt; &gt; is this a bug ?<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Code is STATUS_INVALID_PARAMETER.<br>
&gt; &gt; &gt; I don't see any reason (beside from device_name) for this re=
sult but<br>
&gt; &gt; &gt; looks like a bug indeed.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Frediano<br>
&gt; &gt; &gt;<br>
<br>
</div>
</span></font></div>
</body>
</html>

--_000_MN2PR06MB5966CE1ADAD80F6CDCF455B3B3310MN2PR06MB5966namp_--

--===============0880299357==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0880299357==--
