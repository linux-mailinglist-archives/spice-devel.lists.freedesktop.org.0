Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 085D2A0037
	for <lists+spice-devel@lfdr.de>; Wed, 28 Aug 2019 12:50:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37ADC899E6;
	Wed, 28 Aug 2019 10:50:38 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0295899E6
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 10:50:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0351981F18;
 Wed, 28 Aug 2019 10:50:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id EAE7E19D7A;
 Wed, 28 Aug 2019 10:50:35 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id E12151802216;
 Wed, 28 Aug 2019 10:50:35 +0000 (UTC)
Date: Wed, 28 Aug 2019 06:50:35 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Christophe de Dinechin <christophe.de.dinechin@gmail.com>
Message-ID: <2017793062.9844654.1566989435727.JavaMail.zimbra@redhat.com>
In-Reply-To: <93472670-4B4A-41ED-80F2-F155AC635E8C@dinechin.org>
References: <20190827092246.10276-1-fziglio@redhat.com>
 <20190827092246.10276-25-fziglio@redhat.com> <m1tva2evs4.fsf@dinechin.org>
 <711781474.9841323.1566987366292.JavaMail.zimbra@redhat.com>
 <93472670-4B4A-41ED-80F2-F155AC635E8C@dinechin.org>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.21, 10.4.195.16]
Thread-Topic: usb-backend: Rewrite USB emulation support
Thread-Index: 06uh9xMjOm8+oVz2o9WllDmeWdPjrA==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Wed, 28 Aug 2019 10:50:36 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk v4 24/29] usb-backend: Rewrite
 USB emulation support
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
Content-Type: multipart/mixed; boundary="===============0351017046=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0351017046==
Content-Type: multipart/alternative; 
	boundary="----=_Part_9844653_1703336396.1566989435726"

------=_Part_9844653_1703336396.1566989435726
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

> On 28 Aug 2019, at 12:16, Frediano Ziglio < fziglio@redhat.com > wrote:

> > > Side comment: usbredir_write_callback used to be a mere wrapper aroun=
d
> >=20
>=20
> > > spice_usbredir_write_callback. Now, it has a whole lot of logic in it=
.
> >=20
>=20
> > > Is it intentional, or should some of that logic be moved to shared co=
de?
> >=20
>=20

> > Yes, intentional (otherwise why changing the code?).
>=20
> > This code is not shared with anything. The only reason to put in a sepa=
rate
>=20
> > function is separation, not sharing.
>=20
> > I have the feeling I didn't get what you wanted to say.
>=20

> I meant: what is the separation of concerns between
> usbredir_write_callback and spice_usbredir_write_callback?

ABI. usbredir_write_callback is a callback for usbredir layer, spice_usbred=
ir_write_callback=20
expects a SpiceUsbredirChannel.=20

> In what context would spice_usbredir_write_callback be used
> where the new logic in usbredir_write_callback is not necessary?

You need to adjust to the ABI of the two. spice_usbredir_write_callback is =
supposed=20
to write the packet to the guest (or handle the packet anyway).=20
The new logic (added by Yuri patch, not changed here by this patch) is here=
 to handle=20
the initial HELLO packet.=20

> If the way you organized the code is somehow better, given that
> usbredir_write_callback is no longer a simple wrapper, it may
> indicate that additional comments are required to explain what
> each does. Or maybe it=E2=80=99s perfectly clear to everyone but me ;-)

I suppose the "handle first packet (HELLO) creating parser from capabilitie=
s"=20
is not enough. Would:=20

// Handle first packet (HELLO) creating parser from capabilities.=20
// If we are initializing and we don't have the parser we get the=20
// capabilities from the usbredirhost and use them to initialize=20
// the parser.=20

be better?=20

> This may also be intended for some follow-up patches?

> [=E2=80=A6]

> > There are still some minor weirdness in the initial patch.
>=20
> > Like why usbredir_hello is called with a NULL parameter instead of havi=
ng
>=20
> > a separate "initialize_edev" or similar.
>=20
> > Or why parser code calls a lot usbredir_write_flush_callback which was
>=20
> > previously called only by usbredirhost and is supposed to dispatch betw=
een
>=20
> > usbredirhost or parser why from the parser is called only to flush from
>=20
> > parser if channel is ready.
>=20

> Hmmm. That tends to confirm the impression above that some
> boundary is subtly moving between the components. But I=E2=80=99m not
> really familiar enough with usbredir to understand the intent just from
> the patches ;-)

Mainly before the flow was a single one (guest <-> usbredirhost), now data =
can flow=20
to/from the "parser" to support emulated devices.=20

> Thanks
> Christophe

------=_Part_9844653_1703336396.1566989435726
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"font-family: times new roman, new york, times, se=
rif; font-size: 12pt; color: #000000"><blockquote style=3D"border-left:2px =
solid #1010FF;margin-left:5px;padding-left:5px;color:#000;font-weight:norma=
l;font-style:normal;text-decoration:none;font-family:Helvetica,Arial,sans-s=
erif;font-size:12pt;">On 28 Aug 2019, at 12:16, Frediano Ziglio &lt;<a href=
=3D"mailto:fziglio@redhat.com" class=3D"" target=3D"_blank">fziglio@redhat.=
com</a>&gt; wrote:<div><blockquote class=3D""><br class=3D"Apple-interchang=
e-newline"><div class=3D""><blockquote style=3D"font-family: Helvetica; fon=
t-size: 18px; font-style: normal; font-variant-caps: normal; font-weight: n=
ormal; letter-spacing: normal; orphans: auto; text-align: start; text-inden=
t: 0px; text-transform: none; white-space: normal; widows: auto; word-spaci=
ng: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; te=
xt-decoration: none;" class=3D"">Side comment: usbredir_write_callback used=
 to be a mere wrapper around</blockquote><blockquote style=3D"font-family: =
Helvetica; font-size: 18px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: sta=
rt; text-indent: 0px; text-transform: none; white-space: normal; widows: au=
to; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-=
width: 0px; text-decoration: none;" class=3D"">spice_usbredir_write_callbac=
k. Now, it has a whole lot of logic in it.<br class=3D"">Is it intentional,=
 or should some of that logic be moved to shared code?<br class=3D""><br cl=
ass=3D""></blockquote><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 18px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; text-align: start; text-indent=
: 0px; text-transform: none; white-space: normal; word-spacing: 0px; -webki=
t-text-stroke-width: 0px; text-decoration: none;" class=3D""><span style=3D=
"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: 18px; font-s=
tyle: normal; font-variant-caps: normal; font-weight: normal; letter-spacin=
g: normal; text-align: start; text-indent: 0px; text-transform: none; white=
-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-dec=
oration: none; float: none; display: inline !important;" class=3D"">Yes, in=
tentional (otherwise why changing the code?).</span><br style=3D"caret-colo=
r: rgb(0, 0, 0); font-family: Helvetica; font-size: 18px; font-style: norma=
l; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: nor=
mal; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: no=
ne;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: Helv=
etica; font-size: 18px; font-style: normal; font-variant-caps: normal; font=
-weight: normal; letter-spacing: normal; text-align: start; text-indent: 0p=
x; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-te=
xt-stroke-width: 0px; text-decoration: none; float: none; display: inline !=
important;" class=3D"">This code is not shared with anything. The only reas=
on to put in a separate</span><br style=3D"caret-color: rgb(0, 0, 0); font-=
family: Helvetica; font-size: 18px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; tex=
t-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px=
; -webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: 18px=
; font-style: normal; font-variant-caps: normal; font-weight: normal; lette=
r-spacing: normal; text-align: start; text-indent: 0px; text-transform: non=
e; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" class=3D""=
>function is separation, not sharing.</span><br style=3D"caret-color: rgb(0=
, 0, 0); font-family: Helvetica; font-size: 18px; font-style: normal; font-=
variant-caps: normal; font-weight: normal; letter-spacing: normal; text-ali=
gn: start; text-indent: 0px; text-transform: none; white-space: normal; wor=
d-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none;" cla=
ss=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; f=
ont-size: 18px; font-style: normal; font-variant-caps: normal; font-weight:=
 normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-=
transform: none; white-space: normal; word-spacing: 0px; -webkit-text-strok=
e-width: 0px; text-decoration: none; float: none; display: inline !importan=
t;" class=3D"">I have the feeling I didn't get what you wanted to say.</spa=
n><br style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size=
: 18px; font-style: normal; font-variant-caps: normal; font-weight: normal;=
 letter-spacing: normal; text-align: start; text-indent: 0px; text-transfor=
m: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width:=
 0px; text-decoration: none;" class=3D""></div></blockquote><div><br class=
=3D""></div><div>I meant: what is the separation of concerns between</div><=
div>usbredir_write_callback and spice_usbredir_write_callback?</div></div><=
/blockquote><div>ABI. usbredir_write_callback is a callback for usbredir la=
yer, spice_usbredir_write_callback<br></div><div>expects a SpiceUsbredirCha=
nnel.<br></div><blockquote style=3D"border-left:2px solid #1010FF;margin-le=
ft:5px;padding-left:5px;color:#000;font-weight:normal;font-style:normal;tex=
t-decoration:none;font-family:Helvetica,Arial,sans-serif;font-size:12pt;"><=
div><div>In what context would spice_usbredir_write_callback be used</div><=
div>where the new logic in usbredir_write_callback is not necessary?</div><=
/div></blockquote><div>You need to adjust to the ABI of the two. spice_usbr=
edir_write_callback is supposed<br></div><div>to write the packet to the gu=
est (or handle the packet anyway).<br></div><div>The new logic (added by Yu=
ri patch, not changed here by this patch) is here to handle</div><div>the i=
nitial HELLO packet.<br></div><blockquote style=3D"border-left:2px solid #1=
010FF;margin-left:5px;padding-left:5px;color:#000;font-weight:normal;font-s=
tyle:normal;text-decoration:none;font-family:Helvetica,Arial,sans-serif;fon=
t-size:12pt;"><div><div>If the way you organized the code is somehow better=
, given that</div><div>usbredir_write_callback is no longer a simple wrappe=
r, it may</div><div>indicate that additional comments are required to expla=
in what</div><div>each does. Or maybe it=E2=80=99s perfectly clear to every=
one but me ;-)</div></div></blockquote><div>I suppose the "handle first pac=
ket (HELLO) creating parser from capabilities"<br></div><div>is not enough.=
 Would:<br></div><div><br></div><div>&nbsp;&nbsp;&nbsp; // Handle first pac=
ket (HELLO) creating parser from capabilities.<br>&nbsp;&nbsp;&nbsp; // If =
we are initializing and we don't have the parser we get the<br>&nbsp;&nbsp;=
&nbsp; // capabilities from the usbredirhost and use them to initialize<br>=
&nbsp;&nbsp;&nbsp; // the parser.<br><br></div><div>be better?<br></div><bl=
ockquote style=3D"border-left:2px solid #1010FF;margin-left:5px;padding-lef=
t:5px;color:#000;font-weight:normal;font-style:normal;text-decoration:none;=
font-family:Helvetica,Arial,sans-serif;font-size:12pt;"><div><div>This may =
also be intended for some follow-up patches?</div><div><br class=3D""></div=
><div>[=E2=80=A6]</div><blockquote class=3D""><div class=3D""><br style=3D"=
caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: 18px; font-st=
yle: normal; font-variant-caps: normal; font-weight: normal; letter-spacing=
: normal; text-align: start; text-indent: 0px; text-transform: none; white-=
space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-deco=
ration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-fa=
mily: Helvetica; font-size: 18px; font-style: normal; font-variant-caps: no=
rmal; font-weight: normal; letter-spacing: normal; text-align: start; text-=
indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; display=
: inline !important;" class=3D"">There are still some minor weirdness in th=
e initial patch.</span><br style=3D"caret-color: rgb(0, 0, 0); font-family:=
 Helvetica; font-size: 18px; font-style: normal; font-variant-caps: normal;=
 font-weight: normal; letter-spacing: normal; text-align: start; text-inden=
t: 0px; text-transform: none; white-space: normal; word-spacing: 0px; -webk=
it-text-stroke-width: 0px; text-decoration: none;" class=3D""><span style=
=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: 18px; fon=
t-style: normal; font-variant-caps: normal; font-weight: normal; letter-spa=
cing: normal; text-align: start; text-indent: 0px; text-transform: none; wh=
ite-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-=
decoration: none; float: none; display: inline !important;" class=3D"">Like=
 why usbredir_hello is called with a NULL parameter instead of having</span=
><br style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size:=
 18px; font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; text-align: start; text-indent: 0px; text-transform=
: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: =
0px; text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, =
0, 0); font-family: Helvetica; font-size: 18px; font-style: normal; font-va=
riant-caps: normal; font-weight: normal; letter-spacing: normal; text-align=
: start; text-indent: 0px; text-transform: none; white-space: normal; word-=
spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none; float:=
 none; display: inline !important;" class=3D"">a separate "initialize_edev"=
 or similar.</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Hel=
vetica; font-size: 18px; font-style: normal; font-variant-caps: normal; fon=
t-weight: normal; letter-spacing: normal; text-align: start; text-indent: 0=
px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-t=
ext-stroke-width: 0px; text-decoration: none;" class=3D""><span style=3D"ca=
ret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: 18px; font-styl=
e: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: =
normal; text-align: start; text-indent: 0px; text-transform: none; white-sp=
ace: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decora=
tion: none; float: none; display: inline !important;" class=3D"">Or why par=
ser code calls a lot usbredir_write_flush_callback which was<span class=3D"=
Apple-converted-space">&nbsp;</span></span><br style=3D"caret-color: rgb(0,=
 0, 0); font-family: Helvetica; font-size: 18px; font-style: normal; font-v=
ariant-caps: normal; font-weight: normal; letter-spacing: normal; text-alig=
n: start; text-indent: 0px; text-transform: none; white-space: normal; word=
-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none;" clas=
s=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; fo=
nt-size: 18px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-t=
ransform: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke=
-width: 0px; text-decoration: none; float: none; display: inline !important=
;" class=3D"">previously called only by usbredirhost and is supposed to dis=
patch between</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: He=
lvetica; font-size: 18px; font-style: normal; font-variant-caps: normal; fo=
nt-weight: normal; letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; text-decoration: none;" class=3D""><span style=3D"c=
aret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: 18px; font-sty=
le: normal; font-variant-caps: normal; font-weight: normal; letter-spacing:=
 normal; text-align: start; text-indent: 0px; text-transform: none; white-s=
pace: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decor=
ation: none; float: none; display: inline !important;" class=3D"">usbredirh=
ost or parser why from the parser is called only to flush from</span><br st=
yle=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: 18px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; letter-=
spacing: normal; text-align: start; text-indent: 0px; text-transform: none;=
 white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; te=
xt-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 18px; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; text-align: start=
; text-indent: 0px; text-transform: none; white-space: normal; word-spacing=
: 0px; -webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">parser if channel is ready.</span><=
br style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: 1=
8px; font-style: normal; font-variant-caps: normal; font-weight: normal; le=
tter-spacing: normal; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0p=
x; text-decoration: none;" class=3D""></div></blockquote></div><br class=3D=
""><div class=3D"">Hmmm. That tends to confirm the impression above that so=
me</div><div class=3D"">boundary is subtly moving between the components. B=
ut I=E2=80=99m not</div><div class=3D"">really familiar enough with usbredi=
r to understand the intent just from</div><div class=3D"">the patches ;-)</=
div></blockquote><div>Mainly before the flow was a single one (guest &lt;-&=
gt; usbredirhost), now data can flow<br></div><div>to/from the "parser" to =
support emulated devices.<br></div><blockquote style=3D"border-left:2px sol=
id #1010FF;margin-left:5px;padding-left:5px;color:#000;font-weight:normal;f=
ont-style:normal;text-decoration:none;font-family:Helvetica,Arial,sans-seri=
f;font-size:12pt;"><div class=3D""><br class=3D""></div><div class=3D"">Tha=
nks</div><div class=3D"">Christophe</div></blockquote><div><br></div></div>=
</body></html>
------=_Part_9844653_1703336396.1566989435726--

--===============0351017046==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0351017046==--
