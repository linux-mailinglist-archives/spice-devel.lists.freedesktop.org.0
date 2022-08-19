Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CA5F59AE90
	for <lists+spice-devel@lfdr.de>; Sat, 20 Aug 2022 15:56:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA05810E183;
	Sat, 20 Aug 2022 13:56:07 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2040.outbound.protection.outlook.com [40.107.236.40])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE45810E2F4
 for <spice-devel@lists.freedesktop.org>; Fri, 19 Aug 2022 19:16:11 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Otmjkb2tjGtQPWpyB+btZB81lZpoSwyhwSAnv51pKjHiFQdKkoeE7gle54c3yC3wF/sSWQjHA4JfSTUCM89py2CLauc2YuHzlF2tSY6VgKYoxCDW8ywCfnyGL0JCqfUPtDvMTdkd/ys4ARXzCy4CezXWkJ8IKcHP6pd0ffcKBfl7RkWX7NBHsDo5TtHZsYGktbGAOMMxQy7YgGuDmFxkWozUn1QG7PyWLcUsYG82u3K8+MPCt27yKCrNGqenNHBBtPgCI/Uns4BdLwMjFsfErSU47F/t/1xk3is+ia1JiRuctdpCxhYIB6cjNg0DGlMfQVrZcG2zelzqY41zVsBsSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PJWRPwrIhqsBtn829pRCq/MbafBttcCWy+78p/XIvgA=;
 b=hZCZLzLYdYj+Z1ARvLYXAldC/2Ypa3sWzgos+7Dd1q65H7h8yd5SHTrxepf9hx2/Bpxz7zCC8qpYKWVPZMgUxmM/g+22XcD/ytAiUnbJJ6iFHybKtuY428Vls3b+OHREcw/fgF3zqMvQ3Ah6nnZwD3KtBJnxA3m4/d/iRMAP0rtvhycGE7XhzjGmgIGA6OBOPocKj8ArS3NAO0Hjd/uE/NqZlJG4V1MAdNJrfh2UQ1su87erK36gVUb0TUFV/9btDVPzlFgJgf55CuyZyKkmM7DzsvzpWz/M/jEksFN0IPGO2KoCb4tCcoz65sLB10c3ZPI55KC3U8AxIYXva0ercw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=firelandsit.com; dmarc=pass action=none
 header.from=firelandsit.com; dkim=pass header.d=firelandsit.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=firelandsit.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PJWRPwrIhqsBtn829pRCq/MbafBttcCWy+78p/XIvgA=;
 b=kp7J5BPJWnVzQoRqUGPp5Ga8RXmlN3zCWk5eGUksUI/f4TS9mzjc3/TpMan1i1VxfMxG9V8OpTokHxInsApyRtRRfGxVj+dMzAqtR0NfsSxt26RTt04SRwekEO+jO+hZQ6L0wNPAbIsxDEBV2YGtIGgaHP7XXDnUFL1OWq7RJCo=
Received: from DM4PR17MB5873.namprd17.prod.outlook.com (2603:10b6:8:41::9) by
 PH0PR17MB4890.namprd17.prod.outlook.com (2603:10b6:510:e7::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5546.16; Fri, 19 Aug 2022 19:16:05 +0000
Received: from DM4PR17MB5873.namprd17.prod.outlook.com
 ([fe80::2021:2542:1001:e637]) by DM4PR17MB5873.namprd17.prod.outlook.com
 ([fe80::2021:2542:1001:e637%5]) with mapi id 15.20.5525.019; Fri, 19 Aug 2022
 19:16:05 +0000
From: Jonathon Bauer <jbauer@firelandsit.com>
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Thread-Topic: Windows Spice Guest Tools Silent Install Found
Thread-Index: Adiz///9cO9iFMKUSKKiDGlYJCqupg==
Date: Fri, 19 Aug 2022 19:16:04 +0000
Message-ID: <DM4PR17MB587332F4914A9864684C628BCF6C9@DM4PR17MB5873.namprd17.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=firelandsit.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 22363b24-d181-4dfa-41cc-08da82174345
x-ms-traffictypediagnostic: PH0PR17MB4890:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JAWa/KGu57Kp5pqRiXtvHJV3mU5qQPmPsm/TvOvmGJoJp8jdN1BDj6uFr3ZQNRUtJCX+Oxi0D47sR5QwJX8enc02tS/6P/kADvBC/DrkD2hns+lE0gWoBz1D5iObmvjRiuANoZtWSDBD7dumeHNVR8z65tMjtJEl+in/iSHpbPX9ta/J8WrA1cjoTHjF7FSmKtxd04DEY86OfJ8TOym3hL9JGRNtMhCjsZhZNyTOZELtQXaJwOr0FMjoW45FxBoY+wx2cn4mXbFKoIiOaMoqfkGbnFH/AmlBVrofDe5lOMRQH1Aqg6E2d8RHBiSwqdsogm/e2vZ2hWR6SjP0gjibtG5QDuExrzb4cuIR0KAMcPnYkeWwmHShwxNKhHdn2vEK0gQcSHdD6j3vQmIweoxHImUJAeVBb+TLQSGjL8VMII/u31eslO/4mEbfW536NO1r9ZD7Yc/8Kjf5LkzBTkk93BeomwWHEc/ixRyPPyyBwZanTvVcDqDld981e1kSpfvW/UwOBEycoksC38bkUs6YczkpqxRgRDPtYg/jwQlhvcpM+7osW+hbOqkTUqQMVd70sbJbKDHyE29UmoTbe7q5qB2NYo6anuHnNReP7xf0MI/GNjtgGIXrWC3deSQEvk+AzdWD3TV3ZY6aW8KIS4cETTsjFUxWamEIHTf6shbGLgpe7rt1X4IWZdB5JSUMgHLhf9+Ao718QSRrMosP1W0+XUmAK8GZl4FJQBn1g0hx0EaDbZIMVo5shs3LA0p/90SL6Zd/NH7BkW/SeP3vebLRYoKJXsUik1rqJiXxQKPs7YuU83uxhQ6L6YllhYEZYyk6evMoU/YOicKtqCP+us3h2A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR17MB5873.namprd17.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(4636009)(376002)(366004)(346002)(396003)(136003)(39830400003)(86362001)(166002)(38070700005)(99936003)(122000001)(66574015)(38100700002)(186003)(5660300002)(8936002)(83380400001)(76116006)(8676002)(64756008)(66476007)(19627405001)(66946007)(66556008)(66446008)(2906002)(41300700001)(55016003)(478600001)(52536014)(7696005)(26005)(6916009)(966005)(9686003)(6506007)(71200400001)(40140700001)(316002)(33656002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?nRBtKOydYVxgCkhtjGzjJGoU04etT9PdmcuOJal9Y1keUKm/BoZT3APZsJTH?=
 =?us-ascii?Q?9IPIV0Kxh10lbarH+Ys0eEzydh2y6sIL5d6LMnQvxWwq8irFizInjHDF3hhM?=
 =?us-ascii?Q?VOU5Nr5YNQNsS4SbrcO8ZhrZh3OI44Si1xRB5r843FVUcyfbROvKDr5GR63d?=
 =?us-ascii?Q?bJo1OrY9Cd0A3BE5a93uInZIG+od2UIv/OB4xxtzglCHhc/XdXocJ8S4rnSt?=
 =?us-ascii?Q?2voW6lNM6hM1FP2aXFMwloozpIVfQ2z4C+3OBf8SgnHhDqoUN6lWqu7O6PwP?=
 =?us-ascii?Q?429jPApUIJxy67IGGtRWlQZpZ9FzrkwmNmNwuuUwLuf7/wSjWnoliawPsugd?=
 =?us-ascii?Q?UUw63BmRa/VuiOq/KTIe8w3X6jsRKr5va7Oo+dxwAKi9CRRlmCXv+CqO12tt?=
 =?us-ascii?Q?+/Wq8nVw6Vb199ipt40aCLd+UZwPLGdjerACO/uQA2fzartwhpKegw46GF6R?=
 =?us-ascii?Q?tGutgHAaipIVWwqPLPRMd1CHyk4v9vWHJUdbflXlrIpO1ohZTVqhLRUSMvdR?=
 =?us-ascii?Q?wqWbQprodhA8jaAhGj23SzZBI6MKwU8bL88G8xe+Eni5ZikTMXKggKB3muyA?=
 =?us-ascii?Q?9cpVvyui6ax+bEKF+pP7yTDPB65lQ+eI+hT+tpevEiudg5F3PFeiyJLMan7c?=
 =?us-ascii?Q?B9cQ1yYIusxOFgVe5wpiV63CDXKVRiHWY4gpR03nPX6fVQ3I3dGofFO1gZsX?=
 =?us-ascii?Q?R0t8iaB8Et7RSA/U8OpjB9wGveKIu7fN5Bxt7sM/+S8bdgKD+Krf6QqIy1DM?=
 =?us-ascii?Q?LKp3z24pJhh7itkwdAOzZ2stsu49h5JWTX8df7e3ffIArJ0YMRgXkdVdOU4Q?=
 =?us-ascii?Q?HKwesflt8X8A8RD3pA8Iajczud0kZv97ihDwz+aeFQn8FbGrjxOIOeEX3B+X?=
 =?us-ascii?Q?yL0ATAUJUO9Jlqjzeih+nrasCR5FhH6RptZQ0ybXh9u2zpavp1pgxrT2ztEA?=
 =?us-ascii?Q?s+PdVgEZmTLyFrPopv5fPk+qgwDW3l8qzPrOkrVoka7hIjCGo8z/YvA2LL1N?=
 =?us-ascii?Q?gk29pJObuAU8a/76uIpK4ESzJDPapsSqQL0MbAiLFElfAqq1KpFx1sodD6jN?=
 =?us-ascii?Q?SH7Z3s8XLP84qm90HOM3MeEqxCkmqz0ALp5nCS1ixEcV/jF0mmxSTRSdZjWo?=
 =?us-ascii?Q?HH3kZNt186x3hXXLuJGiWeWDcuEPkS4xmhdtP2HhkYhHFr6PHgsfPwfHjPEY?=
 =?us-ascii?Q?edJhxIg1vxRScU2spKXTVD++GWePZZ2m24TJF8ETUQ58wxhB1FI27iyn2ijp?=
 =?us-ascii?Q?gy1Y3jvrinod3RE9GDcHgxQ48V7Kq+/iDEHQAQT1ROWR8PzBwyCgBY5RURqA?=
 =?us-ascii?Q?dXhf/iMSMcShki4Cm5e6QpYu9EWiiUsiI7dGnBB2o8d8eIpL63XC5vcDzstF?=
 =?us-ascii?Q?ZTG7yPFasMYZUxXWMH5BujHb0Z76vBGcCCk1sknEj4Q/jaY/PRvK4hn5Ca8J?=
 =?us-ascii?Q?5Up7r9WD8AGC6cIpyqkeX7ya6rEeRME61dvQ8FGBEZxyB1lNCs/5hmZBAx8F?=
 =?us-ascii?Q?ZTRfAAaaIdBh6rsupkqnu+boo3AMd4OksJK5dal1YgAl1rlsyjf/Bn9cNb2h?=
 =?us-ascii?Q?O9MK+4IAFTwuBllqKm5ueGp3SHOLUFD8UYMDhv44?=
Content-Type: multipart/related;
 boundary="_006_DM4PR17MB587332F4914A9864684C628BCF6C9DM4PR17MB5873namp_";
 type="multipart/alternative"
MIME-Version: 1.0
X-OriginatorOrg: firelandsit.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR17MB5873.namprd17.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 22363b24-d181-4dfa-41cc-08da82174345
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2022 19:16:05.0348 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 16c583f1-405d-4dd8-9e7b-3bc80bcc3a23
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VHO/WSvO1QWJLZNf+IZlIrkBhAbRyrCcLjCkPzZ0O68xoDafUQNtTVgMq4W82Ox208imACgjrSuhy3UyJjrrEg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR17MB4890
X-Mailman-Approved-At: Sat, 20 Aug 2022 13:56:02 +0000
Subject: [Spice-devel] Windows Spice Guest Tools Silent Install Found
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

--_006_DM4PR17MB587332F4914A9864684C628BCF6C9DM4PR17MB5873namp_
Content-Type: multipart/alternative;
	boundary="_000_DM4PR17MB587332F4914A9864684C628BCF6C9DM4PR17MB5873namp_"

--_000_DM4PR17MB587332F4914A9864684C628BCF6C9DM4PR17MB5873namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Spice Devs,

I figured out a way to run the Windows spice guest tools installer silently=
, enabling automated deployment. Just run the installer as System, and add =
the /S switch (case sensitive). I posted more details on Reddit here: https=
://www.reddit.com/r/qemu_kvm/comments/9ivlkp/spice_windows_guest_tools_sile=
nt_install/

Please consider adding this to your documentation, so it's not so hard to f=
ind. Adding it to the Spice-Space download page, under the "Windows binarie=
s" section may be a good place.

Thanks!

[cid:image001.jpg@01D8B3DE.99329410]

[cid:image002.png@01D8B3DE.99329410]<https://www.credly.com/badges/a1296f6d=
-b3d2-4ac9-8d40-f7b56ce98607/public_url>
Jonathon Bauer
Cyber Security & Cloud Solutions Specialist
Firelands IT Services

Email: jbauer@firelandsit.com<mailto:jbauer@firelandsit.com>
Phone: 419-626-6767 Ext. 206
Toll Free: 888-841-4795 Ext. 206
Direct: 419-504-5247

2215 Cleveland Rd, Sandusky, OH 44870
www.firelandsit.com<http://www.firelandsit.com/>



CONFIDENTIAL NOTICE: This electronic transmission and any attachments const=
itute confidential information which is intended only for the named recipie=
nt(s) and may be legally privileged. If you have received this communicatio=
n in error, please contact the sender immediately. Any disclosure, copying,=
 distribution or the taking of any action concerning the contents of this c=
ommunication by anyone other than the named recipient(s) is strictly prohib=
ited.



--_000_DM4PR17MB587332F4914A9864684C628BCF6C9DM4PR17MB5873namp_
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
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Trebuchet MS";
	panose-1:2 11 6 3 2 2 2 2 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi Spice Devs,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I figured out a way to run the Windows spice guest t=
ools installer silently, enabling automated deployment. Just run the instal=
ler as System, and add the /S switch (case sensitive). I posted more detail=
s on Reddit here:
<a href=3D"https://www.reddit.com/r/qemu_kvm/comments/9ivlkp/spice_windows_=
guest_tools_silent_install/">
https://www.reddit.com/r/qemu_kvm/comments/9ivlkp/spice_windows_guest_tools=
_silent_install/</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Please consider adding this to your documentation, s=
o it&#8217;s not so hard to find. Adding it to the Spice-Space download pag=
e, under the &#8220;Windows binaries&#8221; section may be a good place.<o:=
p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks!<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"336" style=3D"width:3.5in;border-collapse:collapse">
<tbody>
<tr style=3D"height:88.65pt">
<td width=3D"96" valign=3D"top" style=3D"width:1.0in;padding:0in 5.4pt 0in =
5.4pt;height:88.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt"><img border=3D"0" width=3D"69" height=3D"60" style=
=3D"width:.7187in;height:.625in" id=3D"Picture_x0020_8" src=3D"cid:image001=
.jpg@01D8B3DE.99329410"><o:p></o:p></span></p>
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><a href=
=3D"https://www.credly.com/badges/a1296f6d-b3d2-4ac9-8d40-f7b56ce98607/publ=
ic_url"><span style=3D"font-size:9.0pt;color:blue;text-decoration:none"><im=
g border=3D"0" width=3D"66" height=3D"66" style=3D"width:.6875in;height:.68=
75in" id=3D"Picture_x0020_2" src=3D"cid:image002.png@01D8B3DE.99329410"></s=
pan></a><span style=3D"font-size:9.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"240" valign=3D"top" style=3D"width:2.5in;padding:0in 5.4pt 0in=
 5.4pt;height:88.65pt">
<p class=3D"MsoNormal"><b><i><span style=3D"font-size:10.0pt;font-family:&q=
uot;Trebuchet MS&quot;,sans-serif;color:#C45911">Jonathon Bauer<o:p></o:p><=
/span></i></b></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Tre=
buchet MS&quot;,sans-serif;color:#C45911">Cyber Security &amp; Cloud Soluti=
ons Specialist<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Tre=
buchet MS&quot;,sans-serif;color:#C45911">Firelands IT Services<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:4.0pt;font-family:&quot;Tre=
buchet MS&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-CA" style=3D"font-size:8.0pt;font-f=
amily:&quot;Trebuchet MS&quot;,sans-serif">Email:
<a href=3D"mailto:jbauer@firelandsit.com"><span style=3D"color:blue">jbauer=
@firelandsit.com</span></a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-CA" style=3D"font-size:8.0pt;font-f=
amily:&quot;Trebuchet MS&quot;,sans-serif">Phone: 419-626-6767 Ext. 206<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-CA" style=3D"font-size:8.0pt;font-f=
amily:&quot;Trebuchet MS&quot;,sans-serif">Toll Free: 888-841-4795 Ext. 206=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-CA" style=3D"font-size:8.0pt;font-f=
amily:&quot;Trebuchet MS&quot;,sans-serif">Direct: 419-504-5247<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-CA" style=3D"font-size:4.0pt;font-f=
amily:&quot;Trebuchet MS&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Tre=
buchet MS&quot;,sans-serif">2215 Cleveland Rd, Sandusky, OH 44870<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Tre=
buchet MS&quot;,sans-serif;color:#C45911"><a href=3D"http://www.firelandsit=
.com/"><span style=3D"color:blue">www.firelandsit.com</span><span style=3D"=
font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#0563C1;t=
ext-decoration:none"><img border=3D"0" width=3D"217" height=3D"2" style=3D"=
width:2.2604in;height:.0208in" id=3D"Straight_x0020_Connector_x0020_9" src=
=3D"cid:image003.png@01D8B3DE.99329410" alt=3D"Title: line art"></span></a>=
</span><span style=3D"font-size:8.0pt;font-family:&quot;Trebuchet MS&quot;,=
sans-serif"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"display:none"><o:p>&nbsp;</o:p></span=
></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"469" style=3D"width:351.75pt">
<tbody>
<tr>
<td style=3D"padding:0in 6.0pt 0in 0in"></td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal" style=3D"line-height:0%"><span style=3D"display:none=
"><o:p>&nbsp;</o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"100%" style=3D"width:100.0%">
<tbody>
<tr style=3D"height:12.0pt">
<td style=3D"padding:0in 0in 0in 0in;height:12.0pt"></td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal" style=3D"line-height:0%"><span style=3D"display:none=
"><o:p>&nbsp;</o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"border:none;border-top:solid gray 1.0pt">
<tbody>
<tr>
<td style=3D"border:none;padding:0in 6.0pt 0in 0in">
<p class=3D"MsoNormal" style=3D"line-height:120%"><span style=3D"font-size:=
7.5pt;line-height:120%;font-family:&quot;Arial&quot;,sans-serif;color:gray"=
>CONFIDENTIAL NOTICE: This electronic transmission and any attachments cons=
titute confidential information which is intended
 only for the named recipient(s) and may be legally privileged. If you have=
 received this communication in error, please contact the sender immediatel=
y. Any disclosure, copying, distribution or the taking of any action concer=
ning the contents of this communication
 by anyone other than the named recipient(s) is strictly prohibited. <o:p><=
/o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_DM4PR17MB587332F4914A9864684C628BCF6C9DM4PR17MB5873namp_--

--_006_DM4PR17MB587332F4914A9864684C628BCF6C9DM4PR17MB5873namp_
Content-Type: image/jpeg; name="image001.jpg"
Content-Description: image001.jpg
Content-Disposition: inline; filename="image001.jpg"; size=1541;
	creation-date="Fri, 19 Aug 2022 19:16:04 GMT";
	modification-date="Fri, 19 Aug 2022 19:16:04 GMT"
Content-ID: <image001.jpg@01D8B3DE.99329410>
Content-Transfer-Encoding: base64

/9j/4AAQSkZJRgABAQEAYABgAAD/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0a
HBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL/2wBDAQkJCQwLDBgNDRgyIRwhMjIyMjIy
MjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjL/wAARCAA8AEUDASIA
AhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQA
AAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3
ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWm
p6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEA
AwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSEx
BhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElK
U1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3
uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD0fNIT
Tc01jWQxGNRO6qpZmCr6k4FKTk4ry+70bVfHeqX1ydReDS4bhoII8ZHy8E7emc96UpJLUuEHN2R6
TBc29yW8i4il2nDeW4bH1xVgGvI5Ph/qnhndq2k6vuntgZPL2FN6jkrx7V6bpepR6tpNpqMS7EuI
lk2E5256j8DRGSewTpuG5og80+oUbNS54qlsZm94a63X/AP60UeGet1/wD/2airWwGCaaTUpFIUy
KVgKrHDA+lcrpGkatZWbC3vVhjW+nllBX/WKXYj+ldbIlVpYEuB5JmEbrhsdcj3HvyKxqJ2OjDNK
Wpl3cGoXerFkvTHbRjbJbAD5h61V8KRtYeHYrWQEGOaZR9PMbH6VoXNtb2Fz9oLeQm1sqW+8f7xP
oKfcQrbRxhOVPOR0Oec1FJO7NsU42Rfhbcas44qlZAswrTEftXQkcJseGet3/wAA/wDZqKk8OrtN
z77P60VaAxttKEzTwK8t+J3iW5+1rodhdSQIi7roxnaXLDhc+mOv1q4Q5nZEXN7xL490fQS0KOL6
8Bx5EDDCn/aboPp1rE8Aa6/iPxTq7aj5YlvLSPyo04VVjZvlXv8AxZ/OvLfssbLtOQw9KvadqD6J
dW15A7/aIGym3qRW0sP7rRUJ2lc9s1jTIIrW6kBYr5Drl23dRXlOjfELUtLsoNNvIY760gRUib7s
qqO2e/411OqfEq2v/DwtRbSRzsD5r/3lx/COuSePavK8MWU7MHbgj0rGjQte6Na1RSske6eFvHHh
7Vp0g+0m1uW6RXI27j7Hoa7kBGXcrAj1Br5TxswwzuBzn3r134f+KZdTtzazSZuY/vg/xr/e+tXO
ny7GFz2TRMZuMf7P9aKr+Gt2663H+5j/AMeorFlIzARnnpXzrrd59v1rULxn3Ge4dlb1GcL+le7e
IJ5Lfw5qc0Rw6WsjKfQ7TXzhekpCu0424xXZh1a7Mmbek6a2r6hbWwby1ldUaYjiMepp2t6Wukav
c2QmFwkL7FmAwGqlbyOsJCsyg8EKSMinXUsjhVeR3AHG5icV0cr5r30C6tYhnRBKuP7iH/x0U+K3
heFmebYwPA25zx/j/Om3LHzFH/TNP/QRSKTiiwXKNyNpX0JqxoWpz6ZqMV5buVkRsj39jUF8oIQ/
7VU7cnYfY1lLV2GfWXgDWrfXNNmuoD2QOv8AdPzZFFcN+z/Izxa+CeB9mIHb/lp/gKK4pq0rGi2P
/9k=

--_006_DM4PR17MB587332F4914A9864684C628BCF6C9DM4PR17MB5873namp_
Content-Type: image/png; name="image002.png"
Content-Description: image002.png
Content-Disposition: inline; filename="image002.png"; size=3745;
	creation-date="Fri, 19 Aug 2022 19:16:04 GMT";
	modification-date="Fri, 19 Aug 2022 19:16:04 GMT"
Content-ID: <image002.png@01D8B3DE.99329410>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAEIAAABCCAYAAADjVADoAAAABGdBTUEAALGPC/xhBQAAACBjSFJN
AAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAABmJLR0QA/wD/AP+gvaeTAAAA
B3RJTUUH5QsIFi4W30Fa0AAAACV0RVh0ZGF0ZTpjcmVhdGUAMjAyMS0xMS0wOFQyMjo0NjoyMisw
MDowMDNtQhQAAAAldEVYdGRhdGU6bW9kaWZ5ADIwMjEtMTEtMDhUMjI6NDY6MjIrMDA6MDBCMPqo
AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAjppVFh0b3BlbmJhZGdlcwAA
AAAAeyJAY29udGV4dCI6Imh0dHBzOi8vdzNpZC5vcmcvb3BlbmJhZGdlcy92MiIsImJhZGdlIjoi
aHR0cHM6Ly93d3cuY3JlZGx5LmNvbS9hcGkvdjEvb2JpL3YyL2lzc3VlcnMvOGI4MThiZmQtYTE5
Mi00MzM5LWFlNGMtZGFlYzc2MjJjYzI0L2JhZGdlX2NsYXNzZXMvMTBiMzViZjMtMjVhOC00M2I5
LTgxMWYtMjA3NzU2Y2Y1NTg2IiwiZXhwaXJlcyI6IjIwMjEtMTAtMzFUMDA6MDA6MDAuMDAwWiIs
ImV2aWRlbmNlIjpbXSwiaWQiOiJodHRwczovL3d3dy5jcmVkbHkuY29tL2FwaS92MS9vYmkvdjIv
YmFkZ2VfYXNzZXJ0aW9ucy9hMTI5NmY2ZC1iM2QyLTRhYzktOGQ0MC1mN2I1NmNlOTg2MDciLCJp
c3N1ZWRPbiI6IjIwMDktMTAtMjBUMDA6MDA6MDAuMDAwWiIsInJlY2lwaWVudCI6eyJ0eXBlIjoi
ZW1haWwiLCJpZGVudGl0eSI6InNoYTI1NiQxMWJlNjJhZDQ4Yzk4NTg3NzdjODY4YTY0ZDY0ZjE2
YTI2N2EzYzAxYTM5NjgyYTZlYzE1NWQzM2ExMzlmMTA0IiwiaGFzaGVkIjp0cnVlfSwidHlwZSI6
IkFzc2VydGlvbiIsInZlcmlmaWNhdGlvbiI6eyJ0eXBlIjoiaG9zdGVkIn19xFa3/wAACzpJREFU
eNrtnHtwFdUdgL9zdu8r7wc3ISS8SZDI+xlAQ1EpDytajBatrVZbmdrRSTtqbSvVOq22M21NnUHr
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

--_006_DM4PR17MB587332F4914A9864684C628BCF6C9DM4PR17MB5873namp_
Content-Type: image/png; name="image003.png"
Content-Description: image003.png
Content-Disposition: inline; filename="image003.png"; size=211;
	creation-date="Fri, 19 Aug 2022 19:16:04 GMT";
	modification-date="Fri, 19 Aug 2022 19:16:04 GMT"
Content-ID: <image003.png@01D8B3DE.99329410>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAANkAAAACCAMAAADimYmoAAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAeUExURd+AQOyAM+t8MOt9Mex9Me1+Mu59Me59Me59Me59MfyrGjEAAAAKdFJOUwgo
QFh4gIeXp78EJIbgAAAACXBIWXMAAA7DAAAOwwHHb6hkAAAAKElEQVQoU2NgZCIaMLPSArBx0gQw
M7BDWUQADqhbqAtYoOFGXcDEAAAbuQjzJMamzwAAAABJRU5ErkJggg==

--_006_DM4PR17MB587332F4914A9864684C628BCF6C9DM4PR17MB5873namp_--
