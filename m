Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A1B1FC696
	for <lists+spice-devel@lfdr.de>; Wed, 17 Jun 2020 09:03:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C03D86E248;
	Wed, 17 Jun 2020 07:03:26 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from sonic312-24.consmr.mail.gq1.yahoo.com
 (sonic312-24.consmr.mail.gq1.yahoo.com [98.137.69.205])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B2FC6E923
 for <spice-devel@lists.freedesktop.org>; Tue, 16 Jun 2020 17:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1592328534; bh=r3aMb5uxGgOosDKfumxmJkQ1V/fOiwnR5KRfWo7FFho=;
 h=Date:From:To:Cc:Subject:References:From:Subject;
 b=eQ43STTlqs9XQgFJei8gNSA+cagfss+hQDn8PnvOTVOwm3f61nn1fU0AnYnAcvqsQPmiQUCL/X/M4d5yFdzBGVE5u9+aAKF6Wm0T8DmDIgB5CIf4Yca6sPahubt/RM9MIcEeRe9gaG1HsRxu9u1fgfccHgHeYtIhTj8y+4QQrOWSEZ8/xhzL7ZAfT+l5tZqdrsMqEgVFAVNg3VMfjMKS+MtHXybPykiqkVbIr7XiGZV0oFtm4t0msemH+/gdV9MdF5NJEnwqsiPQkuK7X3xtBM/xvBbJFNv9kaYImJxdo+ohrtnX81EYJBoTIAGF0HbH+HrFRX+F6mPvhu4pR2pGmw==
X-YMail-OSG: _2TipdYVM1lUZ51jbyyHnktl.3E2.cJ_p_XWmYx0xyvvh6SNSW5lIYv8FFqyPTm
 p1VIbcF5_LU6xwRApB9RyDEAahz5Z3NxQiBxmuMljcj.gpverKEgdgARNMZ6TgzG7FoxTlzRH0sD
 qFZoVY362mgo_HuMOBDHn_JmWEncJA7KI6YVM6TD658cvNTwUCfSbL7K6a.hZUtI.YoIspflziVP
 rEamk2psmL62uwltl8Frxss_CgWiFp36_DM2AWVTWPEZasGXarBBeGbKV46FB.8YqLiG3d086JYK
 vOY.2_o3DvezsxiLPZjC6VfQ.CKCqm7jr1kEXDUTzSKsavrhlJ.3Q9gu.CvUxxYD2dCnZM0RnHJy
 czwiEBQKrmDkrMuXOQJwnDmo492wcjXxNFkZbN5l8kaMrd7Td2AdT6sCHxhU70S0Mixz6Z1lMgCR
 Swzs4eRL_eIrT.UdMd6KNQlqyKgUXjoEeXwznCnX9nHJo2d8pCwyauS7Lsb_4vDvfZHbutnQ17uT
 TmfVP973oekJ72IqJncPQMsKS6HA9pZJnxxhl0PCD30ms6xZlgG0.ovwuy3YZTnCqSgAEtsWj90Q
 laFeWoh1lvT26hEdrIJ6VvheJAtiJSPYl_Fiol.qy4iYt942iAWcms9hL5FxObgPzyYvopo_QARA
 1GD6DlG3kj3n6vftBR_SMeKbCcNvnJd8EfOT686ASn_nZv9SYP6Gc.dCJLKFd8UXpcensBI9gHpL
 42tYknyXXpSmL0xXJ9g6TpHWIQlIBOHCsdSCegPnV0xL3wKuDo7JhS2.19huEzTCNGCws8bSH7OP
 jM_fgnmxmxgzWCENvtzAdIHB3SDLMWwE_KXnnzWoUK_qOx_avJnLlbCJdyxWAvPGn8bYs6Tzc.EA
 QlOSNhkI3o7Y1y.2s83TEtnHDp7srrlgwzbLAjsq4gFsQ6TtmOZVfHG_CJl5AsMFwkRrCFzvB6y_
 W5UQ_JwZKQww6RDGLZDeVldv_zIEwghG4aSfEKOHtDOtEfOg.kFcpwBtZe3EY0k63Ld3OQ.crG01
 Gqg00R0HgvH.urDcAOzUY8rG71.eR4nuB1DGaesquOMTbo6KG82UgMemeDEUd4Y74QrKiM7QiBvz
 JAmgiRl8c4OyAGCdbXGKQj3rynEtSDXOJRNipR0czG0LPvcJOxrMINpBMlnWuB2PDg5Ftoqq8lYk
 i12Jj3JkqPAOtM6Vuf.Ebqjl3r5uB7fMN6ABFwHTjnizJ9.KgM1b6WNfcADEkUFTMlFkIf4pvtg1
 g2u.hckniDFtlfOFvbScViO_kpI4adfue.fO.OFs6WU.OajWK9VnoI2Pk9sD9ERpz5CRJTCgkF7M
 8fbA0mCUNiN.v424Enz9cAZdVy2pkkIoA6CE7bf4nOR7hHb.qeKuzo9sx82nUlXiPV8u_
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic312.consmr.mail.gq1.yahoo.com with HTTP; Tue, 16 Jun 2020 17:28:54 +0000
Date: Tue, 16 Jun 2020 17:28:50 +0000 (UTC)
From: David Arledge <wdarledge@yahoo.com>
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Message-ID: <1107345351.1422205.1592328530239@mail.yahoo.com>
MIME-Version: 1.0
References: <1107345351.1422205.1592328530239.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16119 YMailNorrin Mozilla/5.0 (X11; Linux i686;
 rv:68.0) Gecko/20100101 Firefox/68.0
X-Mailman-Approved-At: Wed, 17 Jun 2020 07:03:26 +0000
Subject: [Spice-devel] HELP for install of spice-gtk on Slackware
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
Cc: David Arledge <wdarledge@yahoo.com>
Content-Type: multipart/mixed; boundary="===============0505289851=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0505289851==
Content-Type: multipart/alternative; 
	boundary="----=_Part_1422204_567398852.1592328530238"

------=_Part_1422204_567398852.1592328530238
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Sirs;
I have had a problem installing "spice-gtk". I have installed without probl=
em - opus, vala, spice, opus, spice-protocol,=20
six & pyparsing.=C2=A0=C2=A0 Attached is a screenshot of the error while ru=
nning -

./# installpkg=C2=A0 spice-gtk.SlackBuild=C2=A0=C2=A0=C2=A0=C2=A0=20

Did the programmer fail to "end the file" properly or did I make a mistake.
You are my only hope of settling this question.=C2=A0 Without your amicable=
 help, I will fail to installSpice-gtk then fail to install Remmina, then f=
ail at preforming the task required of me to "adda folder in Windows to the=
 Desktop" on my Linux (Slackware) box for the "IT Support Pro"=20
Certification by Google/Coursera.=C2=A0 This RDP - Remmina is mandated by C=
oursera to accomplishthis simple task.=C2=A0 The part of this that has been=
 a real challenge is the installing of .tar.gz on=20
Slackware.=C2=A0 If you use Slack, then you know how difficult this can be =
for a Novice.=C2=A0 I have=20
accomplished this - as you can obviously see - but, I am having trouble wit=
h your package.
Could you take a look and tell me if this is a fatal error or can I just - =
"Ctrl-C" out and move on to=20
the other dependencies for Remmina - vte3 and json-glib and libsodium and f=
reerdp withoutany consequences?
Thank you ever so much for your Reply.
W David Arledgewdarledge@yahoo.com



------=_Part_1422204_567398852.1592328530238
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"yahoo-style-wrap" style=3D"font-fami=
ly:times new roman, new york, times, serif;font-size:16px;"><div dir=3D"ltr=
" data-setdir=3D"false">Sirs;</div><div dir=3D"ltr" data-setdir=3D"false"><=
br></div><div dir=3D"ltr" data-setdir=3D"false">I have had a problem instal=
ling "spice-gtk". I have installed without problem - opus, vala, spice, opu=
s, spice-protocol, <br></div><div dir=3D"ltr" data-setdir=3D"false">six &am=
p; pyparsing.&nbsp;&nbsp; Attached is a screenshot of the error while runni=
ng -<br></div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"=
ltr" data-setdir=3D"false">./# installpkg&nbsp; spice-gtk.SlackBuild&nbsp;&=
nbsp;&nbsp;&nbsp; <br></div><div dir=3D"ltr" data-setdir=3D"false"><br></di=
v><div dir=3D"ltr" data-setdir=3D"false">Did the programmer fail to "end th=
e file" properly or did I make a mistake.</div><div dir=3D"ltr" data-setdir=
=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">You are my only=
 hope of settling this question.&nbsp; Without your amicable help, I will f=
ail to install</div><div dir=3D"ltr" data-setdir=3D"false">Spice-gtk then f=
ail to install Remmina, then fail at preforming the task required of me to =
"add</div><div dir=3D"ltr" data-setdir=3D"false">a folder in Windows to the=
 Desktop" on my Linux (Slackware) box for the "IT Support Pro" <br></div><d=
iv dir=3D"ltr" data-setdir=3D"false">Certification by Google/Coursera.&nbsp=
; This RDP - Remmina is mandated by Coursera to accomplish</div><div dir=3D=
"ltr" data-setdir=3D"false">this simple task.&nbsp; The part of this that h=
as been a real challenge is the installing of .tar.gz on <br></div><div dir=
=3D"ltr" data-setdir=3D"false">Slackware.&nbsp; If you use Slack, then you =
know how difficult this can be for a Novice.&nbsp; I have <br></div><div di=
r=3D"ltr" data-setdir=3D"false">accomplished this - as you can obviously se=
e - but, I am having trouble with your package.</div><div dir=3D"ltr" data-=
setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">Could you=
 take a look and tell me if this is a fatal error or can I just - "Ctrl-C" =
out and move on to <br></div><div dir=3D"ltr" data-setdir=3D"false">the oth=
er dependencies for Remmina - vte3 and json-glib and libsodium and freerdp =
without</div><div dir=3D"ltr" data-setdir=3D"false">any consequences?</div>=
<div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setd=
ir=3D"false">Thank you ever so much for your Reply.</div><div dir=3D"ltr" d=
ata-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">W Dav=
id Arledge</div><div dir=3D"ltr" data-setdir=3D"false">wdarledge@yahoo.com<=
/div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data=
-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false"><br></di=
v></div></body></html>
------=_Part_1422204_567398852.1592328530238--

--===============0505289851==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0505289851==--
