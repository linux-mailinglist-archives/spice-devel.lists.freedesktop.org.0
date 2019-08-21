Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E24BA9779C
	for <lists+spice-devel@lfdr.de>; Wed, 21 Aug 2019 12:57:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0274D6E27A;
	Wed, 21 Aug 2019 10:57:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CE376E27A
 for <spice-devel@lists.freedesktop.org>; Wed, 21 Aug 2019 10:57:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id BF16F7F752;
 Wed, 21 Aug 2019 10:57:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B5FD660C57;
 Wed, 21 Aug 2019 10:57:37 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id ACFEB180B536;
 Wed, 21 Aug 2019 10:57:37 +0000 (UTC)
Date: Wed, 21 Aug 2019 06:57:37 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: zhou qi <atmgnd@outlook.com>
Message-ID: <746254856.8073421.1566385057576.JavaMail.zimbra@redhat.com>
In-Reply-To: <HK0PR06MB242009302E3419E214904AE2C9AA0@HK0PR06MB2420.apcprd06.prod.outlook.com>
References: <HK0PR06MB242009302E3419E214904AE2C9AA0@HK0PR06MB2420.apcprd06.prod.outlook.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.46, 10.4.195.2]
Thread-Topic: windows spice-client-glib hotplug not working
Thread-Index: AQHVV7av4rPep7KYoUuWo1TrP1/OrijGFgcQ
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.71]); Wed, 21 Aug 2019 10:57:37 +0000 (UTC)
Subject: Re: [Spice-devel] windows spice-client-glib hotplug not working
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============1394112377=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1394112377==
Content-Type: multipart/alternative; 
	boundary="----=_Part_8073420_1555810504.1566385057575"

------=_Part_8073420_1555810504.1566385057575
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

> Hello, I write a demo under windows unsing spice-client-glib only , I can=
 get
> usb devices from UsbManager. but hotplug is not working. no device change
> event recieved.

> I found the function g_udev_client_initable_init in win-usb-dev.c create =
a
> hidden window to monitor WM_DEVICECHANGE message. but I could not found t=
he
> corresponding message loop =EF=BC=88 GetMessage/DispatchMessage...). Wher=
e is the
> message loop(gtk)? Does it depends on some higher library(gtk) =EF=BC=9F =
How can I
> get usb hotplug working?

> I resent this message because I found that I am not a subscriber to the
> mailing list. Thanks.

> best regards

Normally the main thread should have an event message loop. Either GTK or o=
ther. In Windows messages are queued to threads so the thread that call g_u=
dev_client_initable_init should handle messages.=20

Frediano=20

------=_Part_8073420_1555810504.1566385057575
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"font-family: times new roman, new york, times, se=
rif; font-size: 12pt; color: #000000"><blockquote style=3D"border-left:2px =
solid #1010FF;margin-left:5px;padding-left:5px;color:#000;font-weight:norma=
l;font-style:normal;text-decoration:none;font-family:Helvetica,Arial,sans-s=
erif;font-size:12pt;"><div><br></div><style><!--

@font-face
=09{font-family:SimSun;
=09panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
=09{font-family:"Cambria Math";
=09panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
=09{font-family:DengXian;
=09panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
=09{font-family:HelveticaNeue;}
@font-face
=09{font-family:DengXian;
=09panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
=09{font-family:SimSun;
=09panose-1:2 1 6 0 3 1 1 1 1 1;}

p.MsoNormal, li.MsoNormal, div.MsoNormal
=09{margin:0cm;
=09margin-bottom:.0001pt;
=09text-align:justify;
=09text-justify:inter-ideograph;
=09font-size:10.5pt;
=09font-family:DengXian;}
.MsoChpDefault
=09{mso-style-type:export-only;}

@page WordSection1
=09{size:612.0pt 792.0pt;
=09margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
=09{page:WordSection1;}
--></style><div class=3D"WordSection1"><p class=3D"MsoNormal" style=3D"text=
-align:left;line-height:150%" align=3D"left"><span style=3D"font-family:&qu=
ot;HelveticaNeue&quot;,serif;color:#333333" lang=3D"EN-US">Hello, I write a=
 demo under windows unsing
<b>spice-client-glib only</b>, I can get usb devices from UsbManager. but h=
otplug is not working. no device change event recieved.</span></p><p class=
=3D"MsoNormal" style=3D"line-height:150%"><span style=3D"font-family:&quot;=
HelveticaNeue&quot;,serif;color:#333333" lang=3D"EN-US">I found the functio=
n g_udev_client_initable_init in win-usb-dev.c create a hidden window to mo=
nitor WM_DEVICECHANGE message. but I could
 not found the corresponding message loop</span><span style=3D"color:#33333=
3">=EF=BC=88</span><span style=3D"font-family:&quot;HelveticaNeue&quot;,ser=
if;color:#333333" lang=3D"EN-US">GetMessage/DispatchMessage...). Where is t=
he message loop(gtk)? Does it depends on some higher library(gtk)</span><sp=
an style=3D"color:#333333">=EF=BC=9F</span><span style=3D"font-family:&quot=
;HelveticaNeue&quot;,serif;color:#333333" lang=3D"EN-US">How
 can I get usb hotplug working?</span></p><p class=3D"MsoNormal" style=3D"l=
ine-height:150%"><span style=3D"font-family:&quot;HelveticaNeue&quot;,serif=
;color:#333333" lang=3D"EN-US">&nbsp;</span></p><p class=3D"MsoNormal" styl=
e=3D"line-height:150%"><span style=3D"font-family:&quot;HelveticaNeue&quot;=
,serif;color:#333333" lang=3D"EN-US">I resent this message because I found =
that I am not a subscriber to the mailing list. Thanks.</span></p><p class=
=3D"MsoNormal" style=3D"line-height:150%"><span style=3D"font-family:&quot;=
HelveticaNeue&quot;,serif;color:#333333" lang=3D"EN-US">&nbsp;</span></p><p=
 class=3D"MsoNormal" style=3D"line-height:150%"><span style=3D"font-family:=
&quot;HelveticaNeue&quot;,serif;color:#333333" lang=3D"EN-US">best regards<=
/span></p></div></blockquote><div>Normally the main thread should have an e=
vent message loop. Either GTK or other. In Windows messages are queued to t=
hreads so the thread that call <span style=3D"font-family: 'HelveticaNeue',=
serif; color: #333333;" data-mce-style=3D"font-family: 'HelveticaNeue',seri=
f; color: #333333;" lang=3D"EN-US">g_udev_client_initable_init</span> shoul=
d handle messages.<br></div><div><br></div><div>Frediano</div><div><br></di=
v></div></body></html>
------=_Part_8073420_1555810504.1566385057575--

--===============1394112377==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1394112377==--
