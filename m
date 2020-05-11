Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 744701CDACF
	for <lists+spice-devel@lfdr.de>; Mon, 11 May 2020 15:10:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FBAA6E461;
	Mon, 11 May 2020 13:10:40 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from relay-2.mailobj.net (relay-2.mailobj.net [213.182.54.5])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEA566E462
 for <spice-devel@lists.freedesktop.org>; Mon, 11 May 2020 13:08:04 +0000 (UTC)
Received: from www-2.localdomain (www-2.in.mailobj.net [192.168.90.194])
 by relay-2.mailobj.net (Postfix) with SMTP id E9B6E12DD;
 Mon, 11 May 2020 15:08:01 +0200 (CEST)
Received: by www-2.mailo.com with http webmail; Mon, 11 May 2020
 15:08:01 +0200 (CEST)
X-EA-Auth: 4S5KhNUL7kybN7xGhf3bjEt7tx17Fhm+UaJTU8v8guqLS8aFTDfwrJnMsA5HDv/nitzwShVRKgRkpOnC7lHjrQ==
From: bruts@netc.fr
To: uril@redhat.com,
 spice-devel@lists.freedesktop.org
Date: Mon, 11 May 2020 15:08:01 +0200 (CEST)
X-Priority: 3
MIME-Version: 1.0
X-Mailer: COMS/EA19.11/r20200424
Message-ID: <ea-mime-5eb94e31-6c8d-6a040cb3@www-2.mailo.com>
In-Reply-To: <2a20aee3-9416-c0aa-1f89-3d450fd0e424@redhat.com>
X-Mailman-Approved-At: Mon, 11 May 2020 13:10:39 +0000
Subject: Re: [Spice-devel] spice-vdagent: how to enable additional mouse
 buttons?
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
Content-Type: multipart/mixed; boundary="===============1134739342=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1134739342==
Content-Type: multipart/alternative;
 boundary="----=_NextPart_001_5eb94e31_6c8d_34ba85b2"

------=_NextPart_001_5eb94e31_6c8d_34ba85b2
Content-Type: text/plain;
 charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,



Yes most likely.=20

I find these lines of code:



/* buttons */
=C2=A0=C2=A0=C2=A0 ioctl(uinput->fd, UI_SET_EVBIT, EV_KEY);
=C2=A0=C2=A0=C2=A0 ioctl(uinput->fd, UI_SET_KEYBIT, BTN_LEFT);
=C2=A0=C2=A0=C2=A0 ioctl(uinput->fd, UI_SET_KEYBIT, BTN_MIDDLE);
=C2=A0=C2=A0=C2=A0 ioctl(uinput->fd, UI_SET_KEYBIT, BTN_RIGHT);

=C2=A0=C2=A0=C2=A0 /* wheel */
=C2=A0=C2=A0=C2=A0 ioctl(uinput->fd, UI_SET_EVBIT, EV_REL);
=C2=A0=C2=A0=C2=A0 ioctl(uinput->fd, UI_SET_RELBIT, REL_WHEEL);


I will probably need to declare the additional mouse buttons of my mouse (=
Logitech G403), so I run xev to find some information:



(BTN_LEFT, BTN_RIGHT, button 8, button 9)



ButtonPress event, serial 48, synthetic NO, window 0x3000001,
=C2=A0=C2=A0=C2=A0 root 0x3ad, subw 0x0, time 361327, (127,94), root:(128,=
144),
=C2=A0=C2=A0=C2=A0 state 0x0, button 1, same_screen YES

ButtonRelease event, serial 48, synthetic NO, window 0x3000001,
=C2=A0=C2=A0=C2=A0 root 0x3ad, subw 0x0, time 361426, (127,94), root:(128,=
144),
=C2=A0=C2=A0=C2=A0 state 0x100, button 1, same_screen YES

ButtonPress event, serial 48, synthetic NO, window 0x3000001,
=C2=A0=C2=A0=C2=A0 root 0x3ad, subw 0x0, time 362448, (127,94), root:(128,=
144),
=C2=A0=C2=A0=C2=A0 state 0x0, button 3, same_screen YES

ButtonRelease event, serial 48, synthetic NO, window 0x3000001,
=C2=A0=C2=A0=C2=A0 root 0x3ad, subw 0x0, time 362556, (127,94), root:(128,=
144),
=C2=A0=C2=A0=C2=A0 state 0x400, button 3, same_screen YES

ButtonPress event, serial 48, synthetic NO, window 0x3000001,
=C2=A0=C2=A0=C2=A0 root 0x3ad, subw 0x0, time 366829, (127,94), root:(128,=
144),
=C2=A0=C2=A0=C2=A0 state 0x0, button 8, same_screen YES

ButtonRelease event, serial 48, synthetic NO, window 0x3000001,
=C2=A0=C2=A0=C2=A0 root 0x3ad, subw 0x0, time 366949, (127,94), root:(128,=
144),
=C2=A0=C2=A0=C2=A0 state 0x0, button 8, same_screen YES

ButtonPress event, serial 48, synthetic NO, window 0x3000001,
=C2=A0=C2=A0=C2=A0 root 0x3ad, subw 0x0, time 368093, (127,94), root:(128,=
144),
=C2=A0=C2=A0=C2=A0 state 0x0, button 9, same_screen YES

ButtonRelease event, serial 48, synthetic NO, window 0x3000001,
=C2=A0=C2=A0=C2=A0 root 0x3ad, subw 0x0, time 368250, (127,94), root:(128,=
144),
=C2=A0=C2=A0=C2=A0 state 0x0, button 9, same_screen YES



Now the next question is obvious: how do I adjust the code to add support =
for button 8,9 ?



I thought BTN_LEFT and BTN_RIGHT would be declared in uinput.h but they ar=
e global variables? or where are they declared?



Any help with adding support for these buttons would be very appreciated a=
nd finally make me stop using virtualbox lol.



Thanks!







De : Uri Lublin <uril@redhat.com>
=C3=80 : bruts@netc.fr;
=C2=A0=C2=A0=C2=A0spice-devel@lists.freedesktop.org
Sujet : Re: [Spice-devel] spice-vdagent: how to enable additional mouse bu=
ttons?
Date : 03/05/2020 17:33:55 Europe/Paris

On 5/1/20 3:51 PM, bruts@netc.fr wrote:
>=20
> I am using spice-vdagent on most of my qemu-kvm vm's, while this is very=
=20
> convenient, mouse button 8 and 9 are not working (those are the side=20
> buttons of the mouse, one is often used for BACK function of the=20
> browser, which my thumb is actually addicted to).
> How could i make these buttons work with spice-vdagent?

Hi,

Currently 5 mouse buttons are supported. I think some code is needed to=20
be added in order to support more buttons.

Uri.

>=20
> Thanks for the suggestions,
>=20
> Bruts



------=_NextPart_001_5eb94e31_6c8d_34ba85b2
Content-Type: text/html;
 charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi,</div><div><br></div><div>Yes most likely. <br></div><div>I find th=
ese lines of code:</div><div><br></div><div>/* buttons */<br>=C2=A0=C2=A0=
=C2=A0 ioctl(uinput-&gt;fd, UI_SET_EVBIT, EV_KEY);<br>=C2=A0=C2=A0=C2=A0 io=
ctl(uinput-&gt;fd, UI_SET_KEYBIT, BTN_LEFT);<br>=C2=A0=C2=A0=C2=A0 ioctl(ui=
nput-&gt;fd, UI_SET_KEYBIT, BTN_MIDDLE);<br>=C2=A0=C2=A0=C2=A0 ioctl(uinput=
-&gt;fd, UI_SET_KEYBIT, BTN_RIGHT);<br><br>=C2=A0=C2=A0=C2=A0 /* wheel */<b=
r>=C2=A0=C2=A0=C2=A0 ioctl(uinput-&gt;fd, UI_SET_EVBIT, EV_REL);<br>=C2=A0=
=C2=A0=C2=A0 ioctl(uinput-&gt;fd, UI_SET_RELBIT, REL_WHEEL);<br><br></div><=
div>I will probably need to declare the additional mouse buttons of my mous=
e (Logitech G403), so I run xev to find some information:</div><div><br></d=
iv><div>(BTN_LEFT, BTN_RIGHT, button 8, button 9)<br></div><div><br></div><=
div>ButtonPress event, serial 48, synthetic NO, window 0x3000001,<br>=C2=A0=
=C2=A0=C2=A0 root 0x3ad, subw 0x0, time 361327, (127,94), root:(128,144),<b=
r>=C2=A0=C2=A0=C2=A0 state 0x0, button 1, same_screen YES<br><br>ButtonRele=
ase event, serial 48, synthetic NO, window 0x3000001,<br>=C2=A0=C2=A0=C2=A0=
 root 0x3ad, subw 0x0, time 361426, (127,94), root:(128,144),<br>=C2=A0=C2=
=A0=C2=A0 state 0x100, button 1, same_screen YES<br><br>ButtonPress event, =
serial 48, synthetic NO, window 0x3000001,<br>=C2=A0=C2=A0=C2=A0 root 0x3ad=
, subw 0x0, time 362448, (127,94), root:(128,144),<br>=C2=A0=C2=A0=C2=A0 st=
ate 0x0, button 3, same_screen YES<br><br>ButtonRelease event, serial 48, s=
ynthetic NO, window 0x3000001,<br>=C2=A0=C2=A0=C2=A0 root 0x3ad, subw 0x0, =
time 362556, (127,94), root:(128,144),<br>=C2=A0=C2=A0=C2=A0 state 0x400, b=
utton 3, same_screen YES<br><br>ButtonPress event, serial 48, synthetic NO,=
 window 0x3000001,<br>=C2=A0=C2=A0=C2=A0 root 0x3ad, subw 0x0, time 366829,=
 (127,94), root:(128,144),<br>=C2=A0=C2=A0=C2=A0 state 0x0, button 8, same_=
screen YES<br><br>ButtonRelease event, serial 48, synthetic NO, window 0x30=
00001,<br>=C2=A0=C2=A0=C2=A0 root 0x3ad, subw 0x0, time 366949, (127,94), r=
oot:(128,144),<br>=C2=A0=C2=A0=C2=A0 state 0x0, button 8, same_screen YES<b=
r><br>ButtonPress event, serial 48, synthetic NO, window 0x3000001,<br>=C2=
=A0=C2=A0=C2=A0 root 0x3ad, subw 0x0, time 368093, (127,94), root:(128,144)=
,<br>=C2=A0=C2=A0=C2=A0 state 0x0, button 9, same_screen YES<br><br>ButtonR=
elease event, serial 48, synthetic NO, window 0x3000001,<br>=C2=A0=C2=A0=C2=
=A0 root 0x3ad, subw 0x0, time 368250, (127,94), root:(128,144),<br>=C2=A0=
=C2=A0=C2=A0 state 0x0, button 9, same_screen YES</div><div><br></div><div>=
Now the next question is obvious: how do I adjust the code to add support f=
or button 8,9 ?</div><div><br></div><div>I thought BTN_LEFT and BTN_RIGHT w=
ould be declared in uinput.h but they are global variables? or where are th=
ey declared?</div><div><br></div><div>Any help with adding support for thes=
e buttons would be very appreciated and finally make me stop using virtualb=
ox lol.</div><div><br></div><div>Thanks!<br></div><div><br></div><div><br><=
/div><div><br></div><blockquote type=3D"cite" style=3D"margin:0 0 0 0.5em;b=
order-left:1px #00f solid;padding-left:1em;">De : Uri Lublin &lt;uril@redha=
t.com&gt;<br>
=C3=80 : bruts@netc.fr;<br>
=C2=A0=C2=A0=C2=A0spice-devel@lists.freedesktop.org<br>
Sujet : Re: [Spice-devel] spice-vdagent: how to enable additional mouse bu=
ttons?<br>
Date : 03/05/2020 17:33:55 Europe/Paris<br>
<br>
On 5/1/20 3:51 PM, bruts@netc.fr wrote:<br>
&gt; <br>
&gt; I am using spice-vdagent on most of my qemu-kvm vm's, while this is v=
ery <br>
&gt; convenient, mouse button 8 and 9 are not working (those are the side =
<br>
&gt; buttons of the mouse, one is often used for BACK function of the <br>=

&gt; browser, which my thumb is actually addicted to).<br>
&gt; How could i make these buttons work with spice-vdagent?<br>
<br>
Hi,<br>
<br>
Currently 5 mouse buttons are supported. I think some code is needed to <b=
r>
be added in order to support more buttons.<br>
<br>
Uri.<br>
<br>
&gt; <br>
&gt; Thanks for the suggestions,<br>
&gt; <br>
&gt; Bruts<br>
<br></blockquote>

------=_NextPart_001_5eb94e31_6c8d_34ba85b2--


--===============1134739342==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1134739342==--

