Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F357E1CDBEF
	for <lists+spice-devel@lfdr.de>; Mon, 11 May 2020 15:53:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 792BC89951;
	Mon, 11 May 2020 13:53:30 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from relay-2.mailobj.net (relay-2.mailobj.net [213.182.54.5])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED57A6E47A
 for <spice-devel@lists.freedesktop.org>; Mon, 11 May 2020 13:47:42 +0000 (UTC)
Received: from www-2.localdomain (www-2.in.mailobj.net [192.168.90.194])
 by relay-2.mailobj.net (Postfix) with SMTP id 7B3C51333;
 Mon, 11 May 2020 15:47:41 +0200 (CEST)
Received: by www-2.mailo.com with http webmail; Mon, 11 May 2020
 15:47:41 +0200 (CEST)
X-EA-Auth: ln5ZAamCMzuokptHDIASA+qOE3p2sei+JEZXpeUaXcMN7VH/87UXJQ8jT7w8ScEIEdHa6Daee0GL6x9Y24+wVg==
From: bruts@netc.fr
To: uril@redhat.com,
 spice-devel@lists.freedesktop.org
Date: Mon, 11 May 2020 15:47:41 +0200 (CEST)
X-Priority: 3
MIME-Version: 1.0
X-Mailer: COMS/EA19.11/r20200424
Message-ID: <ea-mime-5eb9577d-38b6-56ab01e2@www-2.mailo.com>
In-Reply-To: <8d345dc9-b878-0d67-4bf8-1292aaf8c303@redhat.com>
X-Mailman-Approved-At: Mon, 11 May 2020 13:53:29 +0000
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
Content-Type: multipart/mixed; boundary="===============1421521457=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1421521457==
Content-Type: multipart/alternative;
 boundary="----=_NextPart_001_5eb9577d_38b6_7edc156d"

------=_NextPart_001_5eb9577d_38b6_7edc156d
Content-Type: text/plain;
 charset="UTF-8"
Content-Transfer-Encoding: quoted-printable



Uri,



Would it be as simple as adding:



ioctl(uinput->fd, UI_SET_KEYBIT,=C2=A0 BTN_BACK);

ioctl(uinput->fd, UI_SET_KEYBIT,=C2=A0 BTN_FORWARD);



and re-compiling / testing?



I am not an experienced coder and have not had the time yet to get a good =
overview of the spice-vdagent code, so this might be a too simple approach.



I guess all of these values might be tested:



#define BTN_MISC=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x100
#define BTN_0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x10=
0
#define BTN_1=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x10=
1
#define BTN_2=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x10=
2
#define BTN_3=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x10=
3
#define BTN_4=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x10=
4
#define BTN_5=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x10=
5
#define BTN_6=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x10=
6
#define BTN_7=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x10=
7
#define BTN_8=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x10=
8
#define BTN_9=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x10=
9

#define BTN_MOUSE=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x110
#define BTN_LEFT=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x110
#define BTN_RIGHT=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x111
#define BTN_MIDDLE=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x112
#define BTN_SIDE=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x113
#define BTN_EXTRA=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x114
#define BTN_FORWARD=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x115
#define BTN_BACK=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x116
#define BTN_TASK=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x117



Is there any way to test the btn value? Like xev is not showing me anythin=
g related to this value?



Your input is appreciated!



Thanks





De : Uri Lublin <uril@redhat.com>
=C3=80 : bruts@netc.fr;
=C2=A0=C2=A0=C2=A0spice-devel@lists.freedesktop.org
Sujet : Re: [Spice-devel] spice-vdagent: how to enable additional mouse bu=
ttons?
Date : 11/05/2020 15:23:30 Europe/Paris

On 5/11/20 4:08 PM, bruts@netc.fr wrote:
> Hi,
>=20
>=20
>=20
> Yes most likely.
>=20
> I find these lines of code:
>=20
>=20
>=20
> /* buttons */
> =C2=A0=C2=A0=C2=A0 ioctl(uinput->fd, UI_SET_EVBIT, EV_KEY);
> =C2=A0=C2=A0=C2=A0 ioctl(uinput->fd, UI_SET_KEYBIT, BTN_LEFT);
> =C2=A0=C2=A0=C2=A0 ioctl(uinput->fd, UI_SET_KEYBIT, BTN_MIDDLE);
> =C2=A0=C2=A0=C2=A0 ioctl(uinput->fd, UI_SET_KEYBIT, BTN_RIGHT);
>=20
> =C2=A0=C2=A0=C2=A0 /* wheel */
> =C2=A0=C2=A0=C2=A0 ioctl(uinput->fd, UI_SET_EVBIT, EV_REL);
> =C2=A0=C2=A0=C2=A0 ioctl(uinput->fd, UI_SET_RELBIT, REL_WHEEL);
>=20
>=20
> I will probably need to declare the additional mouse buttons of my mouse=
 (Logitech G403), so I run xev to find some information:
>=20
>=20
>=20
> (BTN_LEFT, BTN_RIGHT, button 8, button 9)
>=20
>=20
>=20
> ButtonPress event, serial 48, synthetic NO, window 0x3000001,
> =C2=A0=C2=A0=C2=A0 root 0x3ad, subw 0x0, time 361327, (127,94), root:(12=
8,144),
> =C2=A0=C2=A0=C2=A0 state 0x0, button 1, same_screen YES
>=20
> ButtonRelease event, serial 48, synthetic NO, window 0x3000001,
> =C2=A0=C2=A0=C2=A0 root 0x3ad, subw 0x0, time 361426, (127,94), root:(12=
8,144),
> =C2=A0=C2=A0=C2=A0 state 0x100, button 1, same_screen YES
>=20
> ButtonPress event, serial 48, synthetic NO, window 0x3000001,
> =C2=A0=C2=A0=C2=A0 root 0x3ad, subw 0x0, time 362448, (127,94), root:(12=
8,144),
> =C2=A0=C2=A0=C2=A0 state 0x0, button 3, same_screen YES
>=20
> ButtonRelease event, serial 48, synthetic NO, window 0x3000001,
> =C2=A0=C2=A0=C2=A0 root 0x3ad, subw 0x0, time 362556, (127,94), root:(12=
8,144),
> =C2=A0=C2=A0=C2=A0 state 0x400, button 3, same_screen YES
>=20
> ButtonPress event, serial 48, synthetic NO, window 0x3000001,
> =C2=A0=C2=A0=C2=A0 root 0x3ad, subw 0x0, time 366829, (127,94), root:(12=
8,144),
> =C2=A0=C2=A0=C2=A0 state 0x0, button 8, same_screen YES
>=20
> ButtonRelease event, serial 48, synthetic NO, window 0x3000001,
> =C2=A0=C2=A0=C2=A0 root 0x3ad, subw 0x0, time 366949, (127,94), root:(12=
8,144),
> =C2=A0=C2=A0=C2=A0 state 0x0, button 8, same_screen YES
>=20
> ButtonPress event, serial 48, synthetic NO, window 0x3000001,
> =C2=A0=C2=A0=C2=A0 root 0x3ad, subw 0x0, time 368093, (127,94), root:(12=
8,144),
> =C2=A0=C2=A0=C2=A0 state 0x0, button 9, same_screen YES
>=20
> ButtonRelease event, serial 48, synthetic NO, window 0x3000001,
> =C2=A0=C2=A0=C2=A0 root 0x3ad, subw 0x0, time 368250, (127,94), root:(12=
8,144),
> =C2=A0=C2=A0=C2=A0 state 0x0, button 9, same_screen YES
>=20
>=20
>=20
> Now the next question is obvious: how do I adjust the code to add suppor=
t for button 8,9 ?
>=20
>=20
>=20
> I thought BTN_LEFT and BTN_RIGHT would be declared in uinput.h but they =
are global variables? or where are they declared?

I found them in
/usr/include/linux/input-event-codes.h.
There is also BTN_BACK but I'm not sure it's mapped to any of button-8=20
or 9.

Uri.

>=20
> Any help with adding support for these buttons would be very appreciated=
 and finally make me stop using virtualbox lol.
>=20
> Thanks!
>=20
>=20
>=20
>=20
>=20
>=20
>=20
> De : Uri Lublin <uril@redhat.com>
> =C3=80 : bruts@netc.fr;
> =C2=A0=C2=A0=C2=A0spice-devel@lists.freedesktop.org
> Sujet : Re: [Spice-devel] spice-vdagent: how to enable additional mouse =
buttons?
> Date : 03/05/2020 17:33:55 Europe/Paris
>=20
> On 5/1/20 3:51 PM, bruts@netc.fr wrote:
>>
>> I am using spice-vdagent on most of my qemu-kvm vm's, while this is ver=
y
>> convenient, mouse button 8 and 9 are not working (those are the side
>> buttons of the mouse, one is often used for BACK function of the
>> browser, which my thumb is actually addicted to).
>> How could i make these buttons work with spice-vdagent?
>=20
> Hi,
>=20
> Currently 5 mouse buttons are supported. I think some code is needed to
> be added in order to support more buttons.
>=20
> Uri.
>=20
>>
>> Thanks for the suggestions,
>>
>> Bruts
>=20
>=20
>=20



------=_NextPart_001_5eb9577d_38b6_7edc156d
Content-Type: text/html;
 charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div>Uri,</div><div><br></div><div>Would it be as simple as =
adding:</div><div><br></div><div>ioctl(uinput-&gt;fd, UI_SET_KEYBIT,=C2=A0	=
BTN_BACK);</div><div>ioctl(uinput-&gt;fd, UI_SET_KEYBIT,=C2=A0	BTN_FORWARD)=
;</div><div><br></div><div>and re-compiling / testing?</div><div><br></div>=
<div>I am not an experienced coder and have not had the time yet to get a g=
ood overview of the spice-vdagent code, so this might be a too simple appro=
ach.</div><div><br></div><div>I guess all of these values might be tested:<=
/div><div><br></div><div>#define BTN_MISC=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=
=A0 0x100<br>#define BTN_0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=
=A0=C2=A0 0x100<br>#define BTN_1=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=
=A0=C2=A0=C2=A0 0x101<br>#define BTN_2=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=
 =C2=A0=C2=A0=C2=A0 0x102<br>#define BTN_3=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0 =C2=A0=C2=A0=C2=A0 0x103<br>#define BTN_4=C2=A0=C2=A0=C2=A0 =C2=A0=
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x104<br>#define BTN_5=C2=A0=C2=A0=C2=A0 =
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x105<br>#define BTN_6=C2=A0=C2=A0=C2=
=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x106<br>#define BTN_7=C2=A0=C2=
=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x107<br>#define BTN_8=C2=
=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x108<br>#define BTN_=
9=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x109<br><br>#def=
ine BTN_MOUSE=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x110<br>#define BTN_LEF=
T=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x110<br>#define BTN_RIGHT=C2=A0=C2=
=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x111<br>#define BTN_MIDDLE=C2=A0=C2=A0=C2=A0 =
=C2=A0=C2=A0=C2=A0 0x112<br>#define BTN_SIDE=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0 0x113<br>#define BTN_EXTRA=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x11=
4<br>#define BTN_FORWARD=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x115<br>#def=
ine BTN_BACK=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x116<br>#define BTN_TASK=
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x117</div><div><br></div><div>Is the=
re any way to test the btn value? Like xev is not showing me anything relat=
ed to this value?<br></div><div><br></div><div>Your input is appreciated!</=
div><div><br></div><div>Thanks<br></div><div><br></div><br><br><blockquote =
type=3D"cite" style=3D"margin:0 0 0 0.5em;border-left:1px #00f solid;paddin=
g-left:1em;">De : Uri Lublin &lt;uril@redhat.com&gt;<br>
=C3=80 : bruts@netc.fr;<br>
=C2=A0=C2=A0=C2=A0spice-devel@lists.freedesktop.org<br>
Sujet : Re: [Spice-devel] spice-vdagent: how to enable additional mouse bu=
ttons?<br>
Date : 11/05/2020 15:23:30 Europe/Paris<br>
<br>
On 5/11/20 4:08 PM, bruts@netc.fr wrote:<br>
&gt; Hi,<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; Yes most likely.<br>
&gt; <br>
&gt; I find these lines of code:<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; /* buttons */<br>
&gt;  =C2=A0=C2=A0=C2=A0 ioctl(uinput-&gt;fd, UI_SET_EVBIT, EV_KEY);<br>
&gt;  =C2=A0=C2=A0=C2=A0 ioctl(uinput-&gt;fd, UI_SET_KEYBIT, BTN_LEFT);<br=
>
&gt;  =C2=A0=C2=A0=C2=A0 ioctl(uinput-&gt;fd, UI_SET_KEYBIT, BTN_MIDDLE);<=
br>
&gt;  =C2=A0=C2=A0=C2=A0 ioctl(uinput-&gt;fd, UI_SET_KEYBIT, BTN_RIGHT);<b=
r>
&gt; <br>
&gt;  =C2=A0=C2=A0=C2=A0 /* wheel */<br>
&gt;  =C2=A0=C2=A0=C2=A0 ioctl(uinput-&gt;fd, UI_SET_EVBIT, EV_REL);<br>
&gt;  =C2=A0=C2=A0=C2=A0 ioctl(uinput-&gt;fd, UI_SET_RELBIT, REL_WHEEL);<b=
r>
&gt; <br>
&gt; <br>
&gt; I will probably need to declare the additional mouse buttons of my mo=
use (Logitech G403), so I run xev to find some information:<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; (BTN_LEFT, BTN_RIGHT, button 8, button 9)<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; ButtonPress event, serial 48, synthetic NO, window 0x3000001,<br>
&gt;  =C2=A0=C2=A0=C2=A0 root 0x3ad, subw 0x0, time 361327, (127,94), root=
:(128,144),<br>
&gt;  =C2=A0=C2=A0=C2=A0 state 0x0, button 1, same_screen YES<br>
&gt; <br>
&gt; ButtonRelease event, serial 48, synthetic NO, window 0x3000001,<br>
&gt;  =C2=A0=C2=A0=C2=A0 root 0x3ad, subw 0x0, time 361426, (127,94), root=
:(128,144),<br>
&gt;  =C2=A0=C2=A0=C2=A0 state 0x100, button 1, same_screen YES<br>
&gt; <br>
&gt; ButtonPress event, serial 48, synthetic NO, window 0x3000001,<br>
&gt;  =C2=A0=C2=A0=C2=A0 root 0x3ad, subw 0x0, time 362448, (127,94), root=
:(128,144),<br>
&gt;  =C2=A0=C2=A0=C2=A0 state 0x0, button 3, same_screen YES<br>
&gt; <br>
&gt; ButtonRelease event, serial 48, synthetic NO, window 0x3000001,<br>
&gt;  =C2=A0=C2=A0=C2=A0 root 0x3ad, subw 0x0, time 362556, (127,94), root=
:(128,144),<br>
&gt;  =C2=A0=C2=A0=C2=A0 state 0x400, button 3, same_screen YES<br>
&gt; <br>
&gt; ButtonPress event, serial 48, synthetic NO, window 0x3000001,<br>
&gt;  =C2=A0=C2=A0=C2=A0 root 0x3ad, subw 0x0, time 366829, (127,94), root=
:(128,144),<br>
&gt;  =C2=A0=C2=A0=C2=A0 state 0x0, button 8, same_screen YES<br>
&gt; <br>
&gt; ButtonRelease event, serial 48, synthetic NO, window 0x3000001,<br>
&gt;  =C2=A0=C2=A0=C2=A0 root 0x3ad, subw 0x0, time 366949, (127,94), root=
:(128,144),<br>
&gt;  =C2=A0=C2=A0=C2=A0 state 0x0, button 8, same_screen YES<br>
&gt; <br>
&gt; ButtonPress event, serial 48, synthetic NO, window 0x3000001,<br>
&gt;  =C2=A0=C2=A0=C2=A0 root 0x3ad, subw 0x0, time 368093, (127,94), root=
:(128,144),<br>
&gt;  =C2=A0=C2=A0=C2=A0 state 0x0, button 9, same_screen YES<br>
&gt; <br>
&gt; ButtonRelease event, serial 48, synthetic NO, window 0x3000001,<br>
&gt;  =C2=A0=C2=A0=C2=A0 root 0x3ad, subw 0x0, time 368250, (127,94), root=
:(128,144),<br>
&gt;  =C2=A0=C2=A0=C2=A0 state 0x0, button 9, same_screen YES<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; Now the next question is obvious: how do I adjust the code to add sup=
port for button 8,9 ?<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; I thought BTN_LEFT and BTN_RIGHT would be declared in uinput.h but th=
ey are global variables? or where are they declared?<br>
<br>
I found them in<br>
/usr/include/linux/input-event-codes.h.<br>
There is also 	BTN_BACK but I'm not sure it's mapped to any of button-8 <b=
r>
or 9.<br>
<br>
Uri.<br>
<br>
&gt; <br>
&gt; Any help with adding support for these buttons would be very apprecia=
ted and finally make me stop using virtualbox lol.<br>
&gt; <br>
&gt; Thanks!<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; De : Uri Lublin &lt;uril@redhat.com&gt;<br>
&gt; =C3=80 : bruts@netc.fr;<br>
&gt;  =C2=A0=C2=A0=C2=A0spice-devel@lists.freedesktop.org<br>
&gt; Sujet : Re: [Spice-devel] spice-vdagent: how to enable additional mou=
se buttons?<br>
&gt; Date : 03/05/2020 17:33:55 Europe/Paris<br>
&gt; <br>
&gt; On 5/1/20 3:51 PM, bruts@netc.fr wrote:<br>
&gt;&gt;<br>
&gt;&gt; I am using spice-vdagent on most of my qemu-kvm vm's, while this =
is very<br>
&gt;&gt; convenient, mouse button 8 and 9 are not working (those are the s=
ide<br>
&gt;&gt; buttons of the mouse, one is often used for BACK function of the<=
br>
&gt;&gt; browser, which my thumb is actually addicted to).<br>
&gt;&gt; How could i make these buttons work with spice-vdagent?<br>
&gt; <br>
&gt; Hi,<br>
&gt; <br>
&gt; Currently 5 mouse buttons are supported. I think some code is needed =
to<br>
&gt; be added in order to support more buttons.<br>
&gt; <br>
&gt; Uri.<br>
&gt; <br>
&gt;&gt;<br>
&gt;&gt; Thanks for the suggestions,<br>
&gt;&gt;<br>
&gt;&gt; Bruts<br>
&gt; <br>
&gt; <br>
&gt; <br>
<br></blockquote>

------=_NextPart_001_5eb9577d_38b6_7edc156d--


--===============1421521457==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1421521457==--

