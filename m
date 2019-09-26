Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5067CBF20F
	for <lists+spice-devel@lfdr.de>; Thu, 26 Sep 2019 13:48:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50B786ECDA;
	Thu, 26 Sep 2019 11:48:33 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail1.bemta23.messagelabs.com (mail1.bemta23.messagelabs.com
 [67.219.246.5])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 565866EC03
 for <spice-devel@lists.freedesktop.org>; Thu, 26 Sep 2019 11:25:29 +0000 (UTC)
Received: from [67.219.246.98] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-5.bemta.az-b.us-east-1.aws.symcld.net id 8F/61-25308-220AC8D5;
 Thu, 26 Sep 2019 11:25:22 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrIKsWRWlGSWpSXmKPExsVySpdNU1dpQU+
 sQXcHt8X6TfOZHRg97ncfZwpgjGLNzEvKr0hgzTi6bDdrwX2Jir933BsYt4t1MXJxCAlsZZSY
 8XglG4SzhVHi/JeDLBDOQUaJHzMvAmU4ONgEdCWmzk0FMUUEvCWWP/PrYuTkEBbwlVi/8zwri
 C0iECzxr+khE4StJ7HzzCSwOIuAqsSFD8/ZQGxeAXeJd/e/sYDYjAJiEt9PrQGrZxYQl7j1ZD
 6YLSEgILFkz3lmCFtU4uXjf6wQtoHE1qX7WCBsBYmV3Q1sEL05El2vF7FDzBeUODnzCViNkIC
 yxLIph9gnMArPQrJiFpKWWUhaIOI6Egt2f2KDsLUlli18zQxjnznwmAlZfAEj+ypG06SizPSM
 ktzEzBxdQwMDXUNDI11DXQsLvcQq3SS90mLd1MTiEl1DvcTyYr3iytzknBS9vNSSTYzA+EopY
 IzYwXhi1hu9Q4ySHExKorwq0j2xQnxJ+SmVGYnFGfFFpTmpxYcYZTg4lCR4H8wBygkWpaanVq
 Rl5gBjHSYtwcGjJMKrNg8ozVtckJhbnJkOkTrF6M0x4eXcRcwcO4/OA5IHweSLq4uB5MdVS4D
 kdxApxJKXn5cqJc7LCzJCAGRERmke3AJYyrrEKCslzMvIwMAgxFOQWpSbWYIq/4pRnINRSZi3
 BGQKT2ZeCdwdr4BOZAI6MS+/G+TEkkSElFQD04qt7w8fmXDv9LkOpX0x32c2+q/9tvyawLIcb
 4tAvy0sIbNKPvjfD7vS1Syk2vN5efr8RbYnOe2N2M+ct3cxnVDM1z01svHVnWlhsbfuhcueKz
 f+fGyvaNL009dbdWdv8d70TluGQZonLNx6o8G1vxK1204tXaST+eHxxfpYMb9XTCtWXXFr/5u
 buOvkS2fpSPc3xlEZ5fcdajYvOJf28tJFnSPWFpeuT1D492bvtdebt/75LLa3k6FMVKfvwXN5
 mWLbW0s6Vmx1sziuxGIoo8PFl59cuPvUzvTb+loTTwrJNLIrPVj3dwKn15pvD07lHmF4soPN/
 oA06/W0/Q06jw13C9h7rq6ZfPo4h//FGbeUWIozEg21mIuKEwG3z8jH1AMAAA==
X-Env-Sender: Nupur.Priya@harman.com
X-Msg-Ref: server-18.tower-382.messagelabs.com!1569497081!47803!3
X-Originating-IP: [202.45.6.41]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.43.12; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 22349 invoked from network); 26 Sep 2019 11:25:21 -0000
Received: from unknown (HELO HIBDWSMB09.ad.harman.com) (202.45.6.41)
 by server-18.tower-382.messagelabs.com with ECDHE-RSA-AES256-SHA384 encrypted
 SMTP; 26 Sep 2019 11:25:21 -0000
Received: from HIBDWSMB06.ad.harman.com (10.99.236.96) by
 HIBDWSMB09.ad.harman.com (10.99.236.103) with Microsoft SMTP Server (TLS) id
 15.0.1365.1; Thu, 26 Sep 2019 16:54:46 +0530
Received: from HIBDWSMB01.ad.harman.com (10.99.236.91) by
 HIBDWSMB06.ad.harman.com (10.99.236.96) with Microsoft SMTP Server (TLS) id
 15.0.1365.1; Thu, 26 Sep 2019 16:54:45 +0530
Received: from HIBDWSMB01.ad.harman.com ([fe80::bdbd:eea7:1eae:8cb7]) by
 HIBDWSMB01.ad.harman.com ([fe80::bdbd:eea7:1eae:8cb7%16]) with mapi id
 15.00.1365.000; Thu, 26 Sep 2019 16:54:46 +0530
From: "Priya, Nupur" <Nupur.Priya@harman.com>
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Thread-Topic: Dependency failed for Activation socket for spice guest agent
 daemon
Thread-Index: AdV0XGtcGeOWsKqrQ2u63y/rg67YUA==
Date: Thu, 26 Sep 2019 11:24:45 +0000
Message-ID: <affddb8935464a82ab3623f0bd2a289e@HIBDWSMB01.ad.harman.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.99.236.43]
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 26 Sep 2019 11:48:32 +0000
Subject: [Spice-devel] Dependency failed for Activation socket for spice
 guest agent daemon
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1716622272=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1716622272==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_affddb8935464a82ab3623f0bd2a289eHIBDWSMB01adharmancom_"

--_000_affddb8935464a82ab3623f0bd2a289eHIBDWSMB01adharmancom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi All,

The fix provided at link https://bugzilla.redhat.com/show_bug.cgi?id=3D1545=
212, does not work on boot messages.
Could you please help me understand how, this warning can be removed from b=
ooting console. I tried few things, like creating initramfs and squash.img =
without these spice-vdagent installed on the system. But none of that worke=
d.
Please help me with this.

Regards,
Nupur

--_000_affddb8935464a82ab3623f0bd2a289eHIBDWSMB01adharmancom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi All,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The fix provided at link <a href=3D"https://bugzilla=
.redhat.com/show_bug.cgi?id=3D1545212">
https://bugzilla.redhat.com/show_bug.cgi?id=3D1545212</a>, does not work on=
 boot messages.
<o:p></o:p></p>
<p class=3D"MsoNormal">Could you please help me understand how, this warnin=
g can be removed from booting console. I tried few things, like creating in=
itramfs and squash.img without these spice-vdagent installed on the system.=
 But none of that worked.<o:p></o:p></p>
<p class=3D"MsoNormal">Please help me with this.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Nupur<o:p></o:p></p>
</div>
</body>
</html>

--_000_affddb8935464a82ab3623f0bd2a289eHIBDWSMB01adharmancom_--

--===============1716622272==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1716622272==--
