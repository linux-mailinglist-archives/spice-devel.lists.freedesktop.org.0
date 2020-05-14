Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 517041D3352
	for <lists+spice-devel@lfdr.de>; Thu, 14 May 2020 16:45:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA4D16E065;
	Thu, 14 May 2020 14:45:05 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from relay-2.mailobj.net (relay-2.mailobj.net [213.182.54.5])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AC1E6E065
 for <spice-devel@lists.freedesktop.org>; Thu, 14 May 2020 14:45:03 +0000 (UTC)
Received: from www-1.localdomain (www-1.in.mailobj.net [192.168.90.193])
 by relay-2.mailobj.net (Postfix) with SMTP id F316E20AE;
 Thu, 14 May 2020 16:45:00 +0200 (CEST)
Received: by www-1.mailo.com with http webmail; Thu, 14 May 2020
 16:45:00 +0200 (CEST)
X-EA-Auth: cej+j00Fflmfsu8SKzPoq/YUo7hJHJlETS/RLz5GaJuByIPLXySUPFopaB1x8JjO6+lCK0Gpe448XncqqjIJIQ==
From: bruts@netc.fr
To: "Kevin Pouget" <kpouget@redhat.com>
Date: Thu, 14 May 2020 16:45:00 +0200 (CEST)
X-Priority: 3
MIME-Version: 1.0
X-Mailer: COMS/EA19.11/r20200424
Message-ID: <ea-mime-5ebd596c-1b30-22791b8c@www-1.mailo.com>
In-Reply-To: <CADJ1XR06vjWyWmqSerAFHiaOZNN-YqrHMe2FVP5c2jxpZMA2DA@mail.gmail.com>
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
Cc: Spice devel <spice-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============1440282167=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1440282167==
Content-Type: multipart/alternative;
 boundary="----=_NextPart_001_5ebd596c_1b30_506d66a9"

------=_NextPart_001_5ebd596c_1b30_506d66a9
Content-Type: text/plain;
 charset="UTF-8"
Content-Transfer-Encoding: quoted-printable


Good afternoon Kevin,



That is some great news! Let me get to testing this on my side and give yo=
u feedback on it.

It makes sense people want their other mouse buttons to work on a guest sy=
stem, so your work on this will for sure be worth the time and will make ma=
ny people happy I am sure.

I will get back to you asap, thanks so much!



Roger


De : Kevin Pouget <kpouget@redhat.com>
=C3=80 : bruts@netc.fr
Sujet : Re: [Spice-devel] spice-vdagent: how to enable additional mouse bu=
ttons?
Date : 14/05/2020 16:37:36 Europe/Paris
Copie =C3=A0 : Frediano Ziglio <fziglio@redhat.com>;
=C2=A0=C2=A0=C2=A0Spice devel <spice-devel@lists.freedesktop.org>

Hello,



I've pushed some commits to get the mouse buttons working with the VDAgent=
 (and only it, some bits are missing in spice-server to handle the other ty=
pes I think):



https://gitlab.freedesktop.org/kpouget/spice/-/commits/exp/mouse-bt

https://gitlab.freedesktop.org/kpouget/spice-gtk/-/commits/exp/mouse-bt

https://gitlab.freedesktop.org/kpouget/spice-protocol/-/commits/exp/mouse-=
bt

https://gitlab.freedesktop.org/kpouget/vd_agent/-/tree/exp/mouse-bt



and I uploaded a small demo of the way it works in my workstation: my mous=
e has 2 extra buttons (8 and 9) that are properly forwarded

> http://people.redhat.com/~kpouget/20-05-14/mouse-bt.mkv=20



I hope it will work the same on your side!



On Wed, May 13, 2020 at 11:20 AM <bruts@netc.fr> wrote:

Hi Kevin and Frediano,



Yes there might be issues like Frediano is pointing out, probably they are=
 not well defined, so it might be not trivial to create something for the p=
ublic out of this.

Still I wonder why there are these entries in /usr/include/linux/input-eve=
nt-codes.h:
#define BTN_MOUSE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x110
#define BTN_LEFT=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x110
#define BTN_RIGHT=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x111
#define BTN_MIDDLE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 0x112
#define BTN_SIDE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x113
#define BTN_EXTRA=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x114
#define BTN_FORWARD=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 0x115
#define BTN_BACK=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x116
#define BTN_TASK=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x117



They must have some meaning no? Perhaps they are matched to different mous=
e buttons, like one time to button 8, the other mouse declares it as button=
 10, that is what you mean?



Still I would be very happy if Kevin would have the time to make a little =
patch, or an approach to that little patch, so I could use it for my indivi=
dual mouse buttons, I understand it is not easy to get this out to the publ=
ic, still if there is a patch available in the mailing list, then at least =
people can grab that and change it to their liking, right?



Anyway, all the replies and help is appreciated! Let's get my thumb happy =
and give him that mouse button ;)




De : Frediano Ziglio <fziglio@redhat.com>
=C3=80 : Kevin Pouget <kpouget@redhat.com>
Sujet : Re: [Spice-devel] spice-vdagent: how to enable additional mouse bu=
ttons?
Date : 13/05/2020 09:49:45 Europe/Paris
Copie =C3=A0 : bruts@netc.fr;
=C2=A0=C2=A0=C2=A0Spice devel <spice-devel@lists.freedesktop.org>

Hi,

=C2=A0 if I remember I think the main issue is that these buttons are kind=
 of wild west.

Basically what is button 6 (first 5 are well defined) ? It can be anything=
 so it could

be that for instance my client left becomes right on the guest.

Maybe just changing mouse model the semantic of the buttons on the guest c=
hange.

Also I remember that GTK had some problems, these buttons are not defined,=
 I think

they are passed from the underlying system (Windows, X11, Wayland).



However I see two "workaround":

1- let the users take care of the mismatch. Either getting used to use a b=
utton

=C2=A0=C2=A0 instead of the other or using some tools;

2- add a message to communicate the meaning of the various buttons (which =
can

=C2=A0=C2=A0 change for instance changing mouse).



I think 1 is what was implemented by the patches, I'd go for this way.

I hope softwares are not associating button semantics to computer shutdown

or something "dangerous" like this.



Frediano






On Tue, May 12, 2020 at 11:58 PM <bruts@netc.fr> wrote:

Hi Victor,



Yes it was certainly a good read and i got some ideas from it, but the cod=
e has changed quite a lot since 2017 and the patches correspond to the curr=
ent code only for about 10-15%.

Maybe someone from the Spice team can suggest a patch to add additional mo=
use buttons - i am sure that it would be a matter of minutes to an hour for=
 anyone who is involved with coding the spice-vdagent project to create a g=
eneral patch idea to add additional mouse buttons



Hello,



I'll give it a try this morning, indeed it shouldn't require (much|any) ne=
w code, only flags here and there. Let's see



Kevin

=C2=A0



It is just a matter of forwarding them to the guest - for some reason it w=
as decided not to add them.



thanks!






De : Victor Toso <victortoso@redhat.com>
=C3=80 : bruts@netc.fr
Sujet : Re: [Spice-devel] spice-vdagent: how to enable additional mouse bu=
ttons?
Date : 12/05/2020 07:25:59 Europe/Paris
Copie =C3=A0 : uril@redhat.com;
=C2=A0=C2=A0=C2=A0spice-devel@lists.freedesktop.org

Hi,

On Tue, May 12, 2020 at 12:53:02AM +0200, bruts@netc.fr wrote:
>=20
>=20
> Uri (and others),
>=20
> I found the similar question in a few corners of the internet
> and I think adding at least the additional default mouse
> buttons should not be all that much work.

You can take a look at this proposal to adding horizontal wheel
support to Spice

https://lists.freedesktop.org/archives/spice-devel/2017-October/040558.htm=
l

> With some guidance I could probably do it myself, though the
> guidance would need to be quite substantial :)
>=20
> The mouse and the main buttons is already forwarded and that is
> the main part.
>=20
> with xev it is clear to see which buttons work on the host, but
> not on the guest.
>=20
> Anyone with some spare time (which I know is always limited for
> everyone), but help me where to fix this in the code and i will
> write a patch - or give me a good start - or start yourself.
>=20
> a semi working mouse in the guest is very annoying and can be
> one of the critical points why to use spice (or not) - at least
> i know it is in my case.
>=20
> Thanks!!

Cheers,
Victor

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel



_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel







------=_NextPart_001_5ebd596c_1b30_506d66a9
Content-Type: text/html;
 charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<br><div>Good afternoon Kevin,</div><div><br></div><div>That is some great =
news! Let me get to testing this on my side and give you feedback on it.</d=
iv><div>It makes sense people want their other mouse buttons to work on a g=
uest system, so your work on this will for sure be worth the time and will =
make many people happy I am sure.</div><div>I will get back to you asap, th=
anks so much!</div><div><br></div><div>Roger<br></div><br><blockquote type=
=3D"cite" style=3D"margin:0 0 0 0.5em;border-left:1px #00f solid;padding-le=
ft:1em;">De : Kevin Pouget &lt;kpouget@redhat.com&gt;<br>
=C3=80 : bruts@netc.fr<br>
Sujet : Re: [Spice-devel] spice-vdagent: how to enable additional mouse bu=
ttons?<br>
Date : 14/05/2020 16:37:36 Europe/Paris<br>
Copie =C3=A0 : Frediano Ziglio &lt;fziglio@redhat.com&gt;;<br>
=C2=A0=C2=A0=C2=A0Spice devel &lt;spice-devel@lists.freedesktop.org&gt;<br=
>
<br>
<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I've pushed some com=
mits to get the mouse buttons working with the VDAgent (and only it, some b=
its are missing in spice-server to handle the other types I think):</div><d=
iv><br></div><div><a href=3D"https://gitlab.freedesktop.org/kpouget/spice/-=
/commits/exp/mouse-bt" rel=3D"noreferrer">https://gitlab.freedesktop.org/kp=
ouget/spice/-/commits/exp/mouse-bt</a></div><div><a href=3D"https://gitlab.=
freedesktop.org/kpouget/spice-gtk/-/commits/exp/mouse-bt" rel=3D"noreferrer=
">https://gitlab.freedesktop.org/kpouget/spice-gtk/-/commits/exp/mouse-bt</=
a></div><div><a href=3D"https://gitlab.freedesktop.org/kpouget/spice-protoc=
ol/-/commits/exp/mouse-bt" rel=3D"noreferrer">https://gitlab.freedesktop.or=
g/kpouget/spice-protocol/-/commits/exp/mouse-bt</a></div><div><a href=3D"ht=
tps://gitlab.freedesktop.org/kpouget/vd_agent/-/tree/exp/mouse-bt" rel=3D"n=
oreferrer">https://gitlab.freedesktop.org/kpouget/vd_agent/-/tree/exp/mouse=
-bt</a></div><div><br></div><div>and I uploaded a small demo of the way it =
works in my workstation: my mouse has 2 extra buttons (8 and 9) that are pr=
operly forwarded<br></div><div>&gt; <a href=3D"http://people.redhat.com/~kp=
ouget/20-05-14/mouse-bt.mkv" rel=3D"noreferrer">http://people.redhat.com/~k=
pouget/20-05-14/mouse-bt.mkv</a> <br></div><div><br></div><div>I hope it wi=
ll work the same on your side!<br></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 13, 2020 at 11:20 AM &l=
t;<a>bruts@netc.fr</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex;"><div>Hi Kevin and Frediano,</div><div><br></div><div>Yes=
 there might be issues like Frediano is pointing out, probably they are not=
 well defined, so it might be not trivial to create something for the publi=
c out of this.</div><div>Still I wonder why there are these entries in /usr=
/include/linux/input-event-codes.h:<br>#define BTN_MOUSE=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x110<br=
>#define BTN_LEFT=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x110<br>#define BTN_RIGHT=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x111=
<br>#define BTN_MIDDLE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x112<br>#define BTN_SIDE=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x113=
<br>#define BTN_EXTRA=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x114<br>#define BTN_FORWARD=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x115<br>#define =
BTN_BACK=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 0x116<br>#define BTN_TASK=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x117<br=
></div><div><br></div><div>They must have some meaning no? Perhaps they are=
 matched to different mouse buttons, like one time to button 8, the other m=
ouse declares it as button 10, that is what you mean?</div><div><br></div><=
div>Still I would be very happy if Kevin would have the time to make a litt=
le patch, or an approach to that little patch, so I could use it for my ind=
ividual mouse buttons, I understand it is not easy to get this out to the p=
ublic, still if there is a patch available in the mailing list, then at lea=
st people can grab that and change it to their liking, right?</div><div><br=
></div><div>Anyway, all the replies and help is appreciated! Let's get my t=
humb happy and give him that mouse button ;)<br></div><div><br></div><br><b=
lockquote type=3D"cite" style=3D"margin:0px 0px 0px 0.5em;border-left:1px s=
olid rgb(0,0,255);padding-left:1em;">De : Frediano Ziglio &lt;<a>fziglio@re=
dhat.com</a>&gt;<br>
=C3=80 : Kevin Pouget &lt;<a>kpouget@redhat.com</a>&gt;<br>
Sujet : Re: [Spice-devel] spice-vdagent: how to enable additional mouse bu=
ttons?<br>
Date : 13/05/2020 09:49:45 Europe/Paris<br>
Copie =C3=A0 : <a>bruts@netc.fr</a>;<br>
=C2=A0=C2=A0=C2=A0Spice devel &lt;<a>spice-devel@lists.freedesktop.org</a>=
&gt;<br>
<br>
<div style=3D"font-family:courier new,courier,monaco,monospace,sans-serif;=
font-size:12pt;color:rgb(0,0,0);"><div>Hi,<br></div><div>=C2=A0 if I rememb=
er I think the main issue is that these buttons are kind of wild west.<br><=
/div><div>Basically what is button 6 (first 5 are well defined) ? It can be=
 anything so it could<br></div><div>be that for instance my client left bec=
omes right on the guest.<br></div><div>Maybe just changing mouse model the =
semantic of the buttons on the guest change.<br></div><div>Also I remember =
that GTK had some problems, these buttons are not defined, I think<br></div=
><div>they are passed from the underlying system (Windows, X11, Wayland).<b=
r></div><div><br></div><div>However I see two &quot;workaround&quot;:<br></=
div><div>1- let the users take care of the mismatch. Either getting used to=
 use a button<br></div><div>=C2=A0=C2=A0 instead of the other or using some=
 tools;<br></div><div>2- add a message to communicate the meaning of the va=
rious buttons (which can<br></div><div>=C2=A0=C2=A0 change for instance cha=
nging mouse).<br></div><div><br></div><div>I think 1 is what was implemente=
d by the patches, I'd go for this way.<br></div><div>I hope softwares are n=
ot associating button semantics to computer shutdown<br></div><div>or somet=
hing &quot;dangerous&quot; like this.<br></div><div><br></div><div>Frediano=
<br></div><blockquote style=3D"border-left:2px solid rgb(16,16,255);margin-=
left:5px;padding-left:5px;color:rgb(0,0,0);font-weight:normal;font-style:no=
rmal;text-decoration:none;font-family:Helvetica,Arial,sans-serif;font-size:=
12pt;"><div><br></div><div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, May 12,=
 2020 at 11:58 PM &lt;<a>bruts@netc.fr</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex;"><div>Hi Victor,</div><div><br></div>=
<div>Yes it was certainly a good read and i got some ideas from it, but the=
 code has changed quite a lot since 2017 and the patches correspond to the =
current code only for about 10-15%.</div><div>Maybe someone from the Spice =
team can suggest a patch to add additional mouse buttons - i am sure that i=
t would be a matter of minutes to an hour for anyone who is involved with c=
oding the spice-vdagent project to create a general patch idea to add addit=
ional mouse buttons</div></blockquote><div><br></div><div>Hello,</div><div>=
<br></div><div>I'll give it a try this morning, indeed it shouldn't require=
 (much|any) new code, only flags here and there. Let's see</div><div><br></=
div><div>Kevin<br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex;"><div><br></div><div>It is just a matter of forwarding them=
 to the guest - for some reason it was decided not to add them.</div><div><=
br></div><div>thanks!<br></div><div><br></div><br><div><br></div><blockquot=
e style=3D"margin:0px 0px 0px 0.5em;border-left:1px solid rgb(0,0,255);padd=
ing-left:1em;">De : Victor Toso &lt;<a>victortoso@redhat.com</a>&gt;<br> =
=C3=80 : <a>bruts@netc.fr</a><br> Sujet : Re: [Spice-devel] spice-vdagent: =
how to enable additional mouse buttons?<br> Date : 12/05/2020 07:25:59 Euro=
pe/Paris<br> Copie =C3=A0 : <a>uril@redhat.com</a>;<br> =C2=A0=C2=A0=C2=A0<=
a>spice-devel@lists.freedesktop.org</a><br> <br> Hi,<br> <br> On Tue, May 1=
2, 2020 at 12:53:02AM +0200, <a>bruts@netc.fr</a> wrote:<br> &gt; <br> &gt;=
 <br> &gt; Uri (and others),<br> &gt; <br> &gt; I found the similar questio=
n in a few corners of the internet<br> &gt; and I think adding at least the=
 additional default mouse<br> &gt; buttons should not be all that much work=
.<br> <br> You can take a look at this proposal to adding horizontal wheel<=
br> support to Spice<br> <br> <a href=3D"https://lists.freedesktop.org/arch=
ives/spice-devel/2017-October/040558.html" rel=3D"noreferrer">https://lists=
.freedesktop.org/archives/spice-devel/2017-October/040558.html</a><br> <br>=
 &gt; With some guidance I could probably do it myself, though the<br> &gt;=
 guidance would need to be quite substantial :)<br> &gt; <br> &gt; The mous=
e and the main buttons is already forwarded and that is<br> &gt; the main p=
art.<br> &gt; <br> &gt; with xev it is clear to see which buttons work on t=
he host, but<br> &gt; not on the guest.<br> &gt; <br> &gt; Anyone with some=
 spare time (which I know is always limited for<br> &gt; everyone), but hel=
p me where to fix this in the code and i will<br> &gt; write a patch - or g=
ive me a good start - or start yourself.<br> &gt; <br> &gt; a semi working =
mouse in the guest is very annoying and can be<br> &gt; one of the critical=
 points why to use spice (or not) - at least<br> &gt; i know it is in my ca=
se.<br> &gt; <br> &gt; Thanks!!<br> <br> Cheers,<br> Victor<br> <br></block=
quote>_______________________________________________<br> Spice-devel maili=
ng list<br> <a>Spice-devel@lists.freedesktop.org</a><br> <a href=3D"https:/=
/lists.freedesktop.org/mailman/listinfo/spice-devel" rel=3D"noreferrer">htt=
ps://lists.freedesktop.org/mailman/listinfo/spice-devel</a><br></blockquote=
></div></div><br>_______________________________________________<br>Spice-d=
evel mailing list<br><a>Spice-devel@lists.freedesktop.org</a><br><a href=3D=
"https://lists.freedesktop.org/mailman/listinfo/spice-devel" rel=3D"norefer=
rer">https://lists.freedesktop.org/mailman/listinfo/spice-devel</a><br></bl=
ockquote><div><br></div></div></blockquote>
</blockquote></div></blockquote>

------=_NextPart_001_5ebd596c_1b30_506d66a9--


--===============1440282167==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1440282167==--

