Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE5A1CDED2
	for <lists+spice-devel@lfdr.de>; Mon, 11 May 2020 17:24:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD7AE6E4B6;
	Mon, 11 May 2020 15:24:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from relay-2.mailobj.net (relay-2.mailobj.net [213.182.54.5])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3B316E4B6
 for <spice-devel@lists.freedesktop.org>; Mon, 11 May 2020 15:24:45 +0000 (UTC)
Received: from www-2.localdomain (www-2.in.mailobj.net [192.168.90.194])
 by relay-2.mailobj.net (Postfix) with SMTP id 46491136B;
 Mon, 11 May 2020 17:24:44 +0200 (CEST)
Received: by www-2.mailo.com with http webmail; Mon, 11 May 2020
 17:24:44 +0200 (CEST)
X-EA-Auth: SFOEGurRWKeto7UxVvfeSgRVsuEYcZr2j/Eyh7Jb3U5lB5M2pA0zjijKLLQa6wSEGBAd+8zoyrRU23FOExA7Fg==
From: bruts@netc.fr
To: uril@redhat.com,
 spice-devel@lists.freedesktop.org
Date: Mon, 11 May 2020 17:24:44 +0200 (CEST)
X-Priority: 3
MIME-Version: 1.0
X-Mailer: COMS/EA19.11/r20200424
Message-ID: <ea-mime-5eb96e3c-6e49-693d35e9@www-2.mailo.com>
In-Reply-To: <9f3f0810-bc2f-50c6-d324-4c6cbd740200@redhat.com>
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
Content-Type: multipart/mixed; boundary="===============0803498814=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0803498814==
Content-Type: multipart/alternative;
 boundary="----=_NextPart_001_5eb96e3c_6e49_54d48866"

------=_NextPart_001_5eb96e3c_6e49_54d48866
Content-Type: text/plain;
 charset="UTF-8"
Content-Transfer-Encoding: quoted-printable



Hi Uri,



Ok that's probably a bridge too far for me without any help from a develop=
er...

Any chance I could get this help you think, or will I have to wait until f=
uture release when this might be implemented?

As I wrote in the first post, my thumb is kind of addicted to the BACK but=
ton (button 8) on my mouse and it gives just too much frustration

using Spice on qemu-kvm if I keep clicking that button in any guest withou=
t a result...

What help/advise could you give me on top of what you already did?



Your help is/has been appreciated!



Cheers!


De : Uri Lublin <uril@redhat.com>
=C3=80 : bruts@netc.fr;
=C2=A0=C2=A0=C2=A0spice-devel@lists.freedesktop.org
Sujet : Re: [Spice-devel] spice-vdagent: how to enable additional mouse bu=
ttons?
Date : 11/05/2020 17:15:31 Europe/Paris

On 5/11/20 4:47 PM, bruts@netc.fr wrote:
>=20
>=20
> Uri,
>=20
>=20
>=20
> Would it be as simple as adding:
>=20
>=20
>=20
> ioctl(uinput->fd, UI_SET_KEYBIT,=C2=A0 BTN_BACK);
>=20
> ioctl(uinput->fd, UI_SET_KEYBIT,=C2=A0 BTN_FORWARD);
>=20
>=20
>=20
> and re-compiling / testing?

I'm sorry, but it is not that simple.


That's the agent side.
You also need the client side, and
to add those buttons to the protocol (including client/server, possibly=20
with a proper capability).

Uri.

>=20
>=20
>=20
> I am not an experienced coder and have not had the time yet to get a goo=
d overview of the spice-vdagent code, so this might be a too simple approac=
h.
>=20
>=20
>=20
> I guess all of these values might be tested:
>=20
>=20
>=20
> #define BTN_MISC=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x100
> #define BTN_0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x=
100
> #define BTN_1=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x=
101
> #define BTN_2=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x=
102
> #define BTN_3=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x=
103
> #define BTN_4=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x=
104
> #define BTN_5=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x=
105
> #define BTN_6=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x=
106
> #define BTN_7=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x=
107
> #define BTN_8=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x=
108
> #define BTN_9=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x=
109
>=20
> #define BTN_MOUSE=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x110
> #define BTN_LEFT=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x110
> #define BTN_RIGHT=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x111
> #define BTN_MIDDLE=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x112
> #define BTN_SIDE=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x113
> #define BTN_EXTRA=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x114
> #define BTN_FORWARD=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x115
> #define BTN_BACK=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x116
> #define BTN_TASK=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x117
>=20
>=20
>=20
> Is there any way to test the btn value? Like xev is not showing me anyth=
ing related to this value?
>=20
>=20
>=20
> Your input is appreciated!
>=20
>=20
>=20
> Thanks
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
> Date : 11/05/2020 15:23:30 Europe/Paris
>=20
> On 5/11/20 4:08 PM, bruts@netc.fr wrote:
>> Hi,
>>
>>
>>
>> Yes most likely.
>>
>> I find these lines of code:
>>
>>
>>
>> /* buttons */
>> =C2=A0=C2=A0=C2=A0 ioctl(uinput->fd, UI_SET_EVBIT, EV_KEY);
>> =C2=A0=C2=A0=C2=A0 ioctl(uinput->fd, UI_SET_KEYBIT, BTN_LEFT);
>> =C2=A0=C2=A0=C2=A0 ioctl(uinput->fd, UI_SET_KEYBIT, BTN_MIDDLE);
>> =C2=A0=C2=A0=C2=A0 ioctl(uinput->fd, UI_SET_KEYBIT, BTN_RIGHT);
>>
>> =C2=A0=C2=A0=C2=A0 /* wheel */
>> =C2=A0=C2=A0=C2=A0 ioctl(uinput->fd, UI_SET_EVBIT, EV_REL);
>> =C2=A0=C2=A0=C2=A0 ioctl(uinput->fd, UI_SET_RELBIT, REL_WHEEL);
>>
>>
>> I will probably need to declare the additional mouse buttons of my mous=
e (Logitech G403), so I run xev to find some information:
>>
>>
>>
>> (BTN_LEFT, BTN_RIGHT, button 8, button 9)
>>
>>
>>
>> ButtonPress event, serial 48, synthetic NO, window 0x3000001,
>> =C2=A0=C2=A0=C2=A0 root 0x3ad, subw 0x0, time 361327, (127,94), root:(1=
28,144),
>> =C2=A0=C2=A0=C2=A0 state 0x0, button 1, same_screen YES
>>
>> ButtonRelease event, serial 48, synthetic NO, window 0x3000001,
>> =C2=A0=C2=A0=C2=A0 root 0x3ad, subw 0x0, time 361426, (127,94), root:(1=
28,144),
>> =C2=A0=C2=A0=C2=A0 state 0x100, button 1, same_screen YES
>>
>> ButtonPress event, serial 48, synthetic NO, window 0x3000001,
>> =C2=A0=C2=A0=C2=A0 root 0x3ad, subw 0x0, time 362448, (127,94), root:(1=
28,144),
>> =C2=A0=C2=A0=C2=A0 state 0x0, button 3, same_screen YES
>>
>> ButtonRelease event, serial 48, synthetic NO, window 0x3000001,
>> =C2=A0=C2=A0=C2=A0 root 0x3ad, subw 0x0, time 362556, (127,94), root:(1=
28,144),
>> =C2=A0=C2=A0=C2=A0 state 0x400, button 3, same_screen YES
>>
>> ButtonPress event, serial 48, synthetic NO, window 0x3000001,
>> =C2=A0=C2=A0=C2=A0 root 0x3ad, subw 0x0, time 366829, (127,94), root:(1=
28,144),
>> =C2=A0=C2=A0=C2=A0 state 0x0, button 8, same_screen YES
>>
>> ButtonRelease event, serial 48, synthetic NO, window 0x3000001,
>> =C2=A0=C2=A0=C2=A0 root 0x3ad, subw 0x0, time 366949, (127,94), root:(1=
28,144),
>> =C2=A0=C2=A0=C2=A0 state 0x0, button 8, same_screen YES
>>
>> ButtonPress event, serial 48, synthetic NO, window 0x3000001,
>> =C2=A0=C2=A0=C2=A0 root 0x3ad, subw 0x0, time 368093, (127,94), root:(1=
28,144),
>> =C2=A0=C2=A0=C2=A0 state 0x0, button 9, same_screen YES
>>
>> ButtonRelease event, serial 48, synthetic NO, window 0x3000001,
>> =C2=A0=C2=A0=C2=A0 root 0x3ad, subw 0x0, time 368250, (127,94), root:(1=
28,144),
>> =C2=A0=C2=A0=C2=A0 state 0x0, button 9, same_screen YES
>>
>>
>>
>> Now the next question is obvious: how do I adjust the code to add suppo=
rt for button 8,9 ?
>>
>>
>>
>> I thought BTN_LEFT and BTN_RIGHT would be declared in uinput.h but they=
 are global variables? or where are they declared?
>=20
> I found them in
> /usr/include/linux/input-event-codes.h.
> There is also BTN_BACK but I'm not sure it's mapped to any of button-8
> or 9.
>=20
> Uri.
>=20
>>
>> Any help with adding support for these buttons would be very appreciate=
d and finally make me stop using virtualbox lol.
>>
>> Thanks!
>>
>>
>>
>>
>>
>>
>>
>> De : Uri Lublin <uril@redhat.com>
>> =C3=80 : bruts@netc.fr;
>> =C2=A0=C2=A0=C2=A0spice-devel@lists.freedesktop.org
>> Sujet : Re: [Spice-devel] spice-vdagent: how to enable additional mouse=
 buttons?
>> Date : 03/05/2020 17:33:55 Europe/Paris
>>
>> On 5/1/20 3:51 PM, bruts@netc.fr wrote:
>>>
>>> I am using spice-vdagent on most of my qemu-kvm vm's, while this is ve=
ry
>>> convenient, mouse button 8 and 9 are not working (those are the side
>>> buttons of the mouse, one is often used for BACK function of the
>>> browser, which my thumb is actually addicted to).
>>> How could i make these buttons work with spice-vdagent?
>>
>> Hi,
>>
>> Currently 5 mouse buttons are supported. I think some code is needed to
>> be added in order to support more buttons.
>>
>> Uri.
>>
>>>
>>> Thanks for the suggestions,
>>>
>>> Bruts
>>
>>
>>
>=20
>=20
>=20



------=_NextPart_001_5eb96e3c_6e49_54d48866
Content-Type: text/html;
 charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div>Hi Uri,</div><div><br></div><div>Ok that's probably a b=
ridge too far for me without any help from a developer...</div><div>Any cha=
nce I could get this help you think, or will I have to wait until future re=
lease when this might be implemented?</div><div>As I wrote in the first pos=
t, my thumb is kind of addicted to the BACK button (button 8) on my mouse a=
nd it gives just too much frustration</div><div>using Spice on qemu-kvm if =
I keep clicking that button in any guest without a result...</div><div>What=
 help/advise could you give me on top of what you already did?</div><div><b=
r></div><div>Your help is/has been appreciated!</div><div><br></div><div>Ch=
eers!<br></div><br><blockquote type=3D"cite" style=3D"margin:0 0 0 0.5em;bo=
rder-left:1px #00f solid;padding-left:1em;">De : Uri Lublin &lt;uril@redhat=
.com&gt;<br>
=C3=80 : bruts@netc.fr;<br>
=C2=A0=C2=A0=C2=A0spice-devel@lists.freedesktop.org<br>
Sujet : Re: [Spice-devel] spice-vdagent: how to enable additional mouse bu=
ttons?<br>
Date : 11/05/2020 17:15:31 Europe/Paris<br>
<br>
On 5/11/20 4:47 PM, bruts@netc.fr wrote:<br>
&gt; <br>
&gt; <br>
&gt; Uri,<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; Would it be as simple as adding:<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; ioctl(uinput-&gt;fd, UI_SET_KEYBIT,=C2=A0 BTN_BACK);<br>
&gt; <br>
&gt; ioctl(uinput-&gt;fd, UI_SET_KEYBIT,=C2=A0 BTN_FORWARD);<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; and re-compiling / testing?<br>
<br>
I'm sorry, but it is not that simple.<br>
<br>
<br>
That's the agent side.<br>
You also need the client side, and<br>
to add those buttons to the protocol (including client/server, possibly <b=
r>
with a proper capability).<br>
<br>
Uri.<br>
<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; I am not an experienced coder and have not had the time yet to get a =
good overview of the spice-vdagent code, so this might be a too simple appr=
oach.<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; I guess all of these values might be tested:<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; #define BTN_MISC=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x100<br>
&gt; #define BTN_0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=
 0x100<br>
&gt; #define BTN_1=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=
 0x101<br>
&gt; #define BTN_2=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=
 0x102<br>
&gt; #define BTN_3=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=
 0x103<br>
&gt; #define BTN_4=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=
 0x104<br>
&gt; #define BTN_5=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=
 0x105<br>
&gt; #define BTN_6=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=
 0x106<br>
&gt; #define BTN_7=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=
 0x107<br>
&gt; #define BTN_8=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=
 0x108<br>
&gt; #define BTN_9=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=
 0x109<br>
&gt; <br>
&gt; #define BTN_MOUSE=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x110<br>
&gt; #define BTN_LEFT=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x110<br>
&gt; #define BTN_RIGHT=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x111<br>
&gt; #define BTN_MIDDLE=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x112<br>
&gt; #define BTN_SIDE=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x113<br>
&gt; #define BTN_EXTRA=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x114<br>
&gt; #define BTN_FORWARD=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x115<br>
&gt; #define BTN_BACK=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x116<br>
&gt; #define BTN_TASK=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 0x117<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; Is there any way to test the btn value? Like xev is not showing me an=
ything related to this value?<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; Your input is appreciated!<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; Thanks<br>
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
&gt; Date : 11/05/2020 15:23:30 Europe/Paris<br>
&gt; <br>
&gt; On 5/11/20 4:08 PM, bruts@netc.fr wrote:<br>
&gt;&gt; Hi,<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Yes most likely.<br>
&gt;&gt;<br>
&gt;&gt; I find these lines of code:<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; /* buttons */<br>
&gt;&gt;  =C2=A0=C2=A0=C2=A0 ioctl(uinput-&gt;fd, UI_SET_EVBIT, EV_KEY);<b=
r>
&gt;&gt;  =C2=A0=C2=A0=C2=A0 ioctl(uinput-&gt;fd, UI_SET_KEYBIT, BTN_LEFT)=
;<br>
&gt;&gt;  =C2=A0=C2=A0=C2=A0 ioctl(uinput-&gt;fd, UI_SET_KEYBIT, BTN_MIDDL=
E);<br>
&gt;&gt;  =C2=A0=C2=A0=C2=A0 ioctl(uinput-&gt;fd, UI_SET_KEYBIT, BTN_RIGHT=
);<br>
&gt;&gt;<br>
&gt;&gt;  =C2=A0=C2=A0=C2=A0 /* wheel */<br>
&gt;&gt;  =C2=A0=C2=A0=C2=A0 ioctl(uinput-&gt;fd, UI_SET_EVBIT, EV_REL);<b=
r>
&gt;&gt;  =C2=A0=C2=A0=C2=A0 ioctl(uinput-&gt;fd, UI_SET_RELBIT, REL_WHEEL=
);<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; I will probably need to declare the additional mouse buttons of m=
y mouse (Logitech G403), so I run xev to find some information:<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; (BTN_LEFT, BTN_RIGHT, button 8, button 9)<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; ButtonPress event, serial 48, synthetic NO, window 0x3000001,<br>=

&gt;&gt;  =C2=A0=C2=A0=C2=A0 root 0x3ad, subw 0x0, time 361327, (127,94), =
root:(128,144),<br>
&gt;&gt;  =C2=A0=C2=A0=C2=A0 state 0x0, button 1, same_screen YES<br>
&gt;&gt;<br>
&gt;&gt; ButtonRelease event, serial 48, synthetic NO, window 0x3000001,<b=
r>
&gt;&gt;  =C2=A0=C2=A0=C2=A0 root 0x3ad, subw 0x0, time 361426, (127,94), =
root:(128,144),<br>
&gt;&gt;  =C2=A0=C2=A0=C2=A0 state 0x100, button 1, same_screen YES<br>
&gt;&gt;<br>
&gt;&gt; ButtonPress event, serial 48, synthetic NO, window 0x3000001,<br>=

&gt;&gt;  =C2=A0=C2=A0=C2=A0 root 0x3ad, subw 0x0, time 362448, (127,94), =
root:(128,144),<br>
&gt;&gt;  =C2=A0=C2=A0=C2=A0 state 0x0, button 3, same_screen YES<br>
&gt;&gt;<br>
&gt;&gt; ButtonRelease event, serial 48, synthetic NO, window 0x3000001,<b=
r>
&gt;&gt;  =C2=A0=C2=A0=C2=A0 root 0x3ad, subw 0x0, time 362556, (127,94), =
root:(128,144),<br>
&gt;&gt;  =C2=A0=C2=A0=C2=A0 state 0x400, button 3, same_screen YES<br>
&gt;&gt;<br>
&gt;&gt; ButtonPress event, serial 48, synthetic NO, window 0x3000001,<br>=

&gt;&gt;  =C2=A0=C2=A0=C2=A0 root 0x3ad, subw 0x0, time 366829, (127,94), =
root:(128,144),<br>
&gt;&gt;  =C2=A0=C2=A0=C2=A0 state 0x0, button 8, same_screen YES<br>
&gt;&gt;<br>
&gt;&gt; ButtonRelease event, serial 48, synthetic NO, window 0x3000001,<b=
r>
&gt;&gt;  =C2=A0=C2=A0=C2=A0 root 0x3ad, subw 0x0, time 366949, (127,94), =
root:(128,144),<br>
&gt;&gt;  =C2=A0=C2=A0=C2=A0 state 0x0, button 8, same_screen YES<br>
&gt;&gt;<br>
&gt;&gt; ButtonPress event, serial 48, synthetic NO, window 0x3000001,<br>=

&gt;&gt;  =C2=A0=C2=A0=C2=A0 root 0x3ad, subw 0x0, time 368093, (127,94), =
root:(128,144),<br>
&gt;&gt;  =C2=A0=C2=A0=C2=A0 state 0x0, button 9, same_screen YES<br>
&gt;&gt;<br>
&gt;&gt; ButtonRelease event, serial 48, synthetic NO, window 0x3000001,<b=
r>
&gt;&gt;  =C2=A0=C2=A0=C2=A0 root 0x3ad, subw 0x0, time 368250, (127,94), =
root:(128,144),<br>
&gt;&gt;  =C2=A0=C2=A0=C2=A0 state 0x0, button 9, same_screen YES<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Now the next question is obvious: how do I adjust the code to add=
 support for button 8,9 ?<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; I thought BTN_LEFT and BTN_RIGHT would be declared in uinput.h bu=
t they are global variables? or where are they declared?<br>
&gt; <br>
&gt; I found them in<br>
&gt; /usr/include/linux/input-event-codes.h.<br>
&gt; There is also BTN_BACK but I'm not sure it's mapped to any of button-=
8<br>
&gt; or 9.<br>
&gt; <br>
&gt; Uri.<br>
&gt; <br>
&gt;&gt;<br>
&gt;&gt; Any help with adding support for these buttons would be very appr=
eciated and finally make me stop using virtualbox lol.<br>
&gt;&gt;<br>
&gt;&gt; Thanks!<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; De : Uri Lublin &lt;uril@redhat.com&gt;<br>
&gt;&gt; =C3=80 : bruts@netc.fr;<br>
&gt;&gt;  =C2=A0=C2=A0=C2=A0spice-devel@lists.freedesktop.org<br>
&gt;&gt; Sujet : Re: [Spice-devel] spice-vdagent: how to enable additional=
 mouse buttons?<br>
&gt;&gt; Date : 03/05/2020 17:33:55 Europe/Paris<br>
&gt;&gt;<br>
&gt;&gt; On 5/1/20 3:51 PM, bruts@netc.fr wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I am using spice-vdagent on most of my qemu-kvm vm's, while t=
his is very<br>
&gt;&gt;&gt; convenient, mouse button 8 and 9 are not working (those are t=
he side<br>
&gt;&gt;&gt; buttons of the mouse, one is often used for BACK function of =
the<br>
&gt;&gt;&gt; browser, which my thumb is actually addicted to).<br>
&gt;&gt;&gt; How could i make these buttons work with spice-vdagent?<br>
&gt;&gt;<br>
&gt;&gt; Hi,<br>
&gt;&gt;<br>
&gt;&gt; Currently 5 mouse buttons are supported. I think some code is nee=
ded to<br>
&gt;&gt; be added in order to support more buttons.<br>
&gt;&gt;<br>
&gt;&gt; Uri.<br>
&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Thanks for the suggestions,<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Bruts<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt; <br>
&gt; <br>
&gt; <br>
<br></blockquote>

------=_NextPart_001_5eb96e3c_6e49_54d48866--


--===============0803498814==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0803498814==--

