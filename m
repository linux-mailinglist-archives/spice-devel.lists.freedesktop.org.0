Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD78AC524
	for <lists+spice-devel@lfdr.de>; Sat,  7 Sep 2019 09:32:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77F8D89FEA;
	Sat,  7 Sep 2019 07:32:38 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from r3-25.sinamail.sina.com.cn (r3-25.sinamail.sina.com.cn
 [202.108.3.25])
 by gabe.freedesktop.org (Postfix) with SMTP id 700586E141
 for <spice-devel@lists.freedesktop.org>; Sat,  7 Sep 2019 02:00:24 +0000 (UTC)
Received: from unknown (HELO [IPv6:::ffff:192.168.199.155])([114.254.173.51])
 by sina.com with ESMTP
 id 5D730F34000055C2; Sat, 7 Sep 2019 10:00:22 +0800 (CST)
X-Sender: hdanton@sina.com
X-Auth-ID: hdanton@sina.com
X-SMAIL-MID: 35191854919708
MIME-Version: 1.0
To: Frediano Ziglio <fziglio@redhat.com>
From: Hillf Danton <hdanton@sina.com>
Date: Sat, 7 Sep 2019 10:00:20 +0800
Importance: normal
X-Priority: 3
Thread-Topic: Xorg indefinitely hangs in kernelspace
In-Reply-To: <236676538.10995729.1567801661076.JavaMail.zimbra@redhat.com>
References: <20190906055322.17900-1-hdanton@sina.com>
 <236676538.10995729.1567801661076.JavaMail.zimbra@redhat.com>
X-Mailman-Approved-At: Sat, 07 Sep 2019 07:32:36 +0000
Subject: Re: [Spice-devel] Xorg indefinitely hangs in kernelspace
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
Cc: David Airlie <airlied@linux.ie>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "virtualization@lists.linux-foundation.org"
 <virtualization@lists.linux-foundation.org>, Gerd Hoffmann <kraxel@redhat.com>,
 Daniel Vetter <daniel@ffwll.ch>, Dave Airlie <airlied@redhat.com>,
 Jaak Ristioja <jaak@ristioja.ee>,
 "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============1185415162=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>
Message-Id: <20190907073238.77F8D89FEA@gabe.freedesktop.org>


--===============1185415162==
Content-Type: multipart/alternative;
	boundary="_14B5F2F5-2A3E-4F1A-AB25-A0821578134D_"


--_14B5F2F5-2A3E-4F1A-AB25-A0821578134D_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

From Frediano Ziglio <fziglio@redhat.com>
>
> Where does it came this patch?

My fingers tapping the keyboard.

> Is it already somewhere?

No idea yet.

> Is it supposed to fix this issue?

It may do nothing else as far as I can tell.

> Does it affect some other card beside QXL?

Perhaps.



--_14B5F2F5-2A3E-4F1A-AB25-A0821578134D_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="utf-8"

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta ht=
tp-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta name=
=3DGenerator content=3D"Microsoft Word 15 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
	font-family:DengXian;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.DefaultFontHxMailStyle
	{mso-style-name:"Default Font HxMail Style";
	font-family:DengXian;
	color:windowtext;
	font-weight:normal;
	font-style:normal;
	text-decoration:none none;}
.MsoChpDefault
	{mso-style-type:export-only;}
/* Page Definitions */
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style></head><body lang=3DZH-CN link=3Dblue vlink=3D"#954F72"><div cla=
ss=3DWordSection1><p class=3DMsoNormal><span class=3DDefaultFontHxMailStyle=
><span lang=3DEN-US>From Frediano Ziglio &lt;fziglio@redhat.com&gt;</span><=
/span></p><p class=3DMsoNormal><span lang=3DEN-US>&gt;<o:p>&nbsp;</o:p></sp=
an></p><p class=3DMsoNormal><span lang=3DEN-US>&gt; Where does it came this=
 patch?</span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p>=
</span></p><p class=3DMsoNormal><span lang=3DEN-US>My fingers tapping the k=
eyboard.</span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p=
></span></p><p class=3DMsoNormal><span lang=3DEN-US>&gt; Is it already some=
where?</span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p><=
/span></p><p class=3DMsoNormal><span lang=3DEN-US>No idea yet.</span></p><p=
 class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US>&gt; Is it supposed to fix this issue?</spa=
n></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><=
p class=3DMsoNormal><span lang=3DEN-US>It may do nothing else as far as I c=
an tell.</span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p=
></span></p><p class=3DMsoNormal><span lang=3DEN-US>&gt; Does it affect som=
e other card beside QXL?</span></p><p class=3DMsoNormal><span lang=3DEN-US>=
<o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Perhaps=
.</span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span=
></p><p class=3DMsoNormal><span class=3DDefaultFontHxMailStyle><span lang=
=3DEN-US><o:p>&nbsp;</o:p></span></span></p></div></body></html>=

--_14B5F2F5-2A3E-4F1A-AB25-A0821578134D_--



--===============1185415162==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1185415162==--


