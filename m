Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 839941D0BD7
	for <lists+spice-devel@lfdr.de>; Wed, 13 May 2020 11:20:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F32A86E9DE;
	Wed, 13 May 2020 09:20:49 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from relay-2.mailobj.net (relay-2.mailobj.net [213.182.54.5])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E07036E9DE
 for <spice-devel@lists.freedesktop.org>; Wed, 13 May 2020 09:20:48 +0000 (UTC)
Received: from www-1.localdomain (www-1.in.mailobj.net [192.168.90.193])
 by relay-2.mailobj.net (Postfix) with SMTP id F1F6E13DF;
 Wed, 13 May 2020 11:20:45 +0200 (CEST)
Received: by www-1.mailo.com with http webmail; Wed, 13 May 2020
 11:20:45 +0200 (CEST)
X-EA-Auth: 91sD6Vx/fmymqU6OyytxlSSmBA9HxT9xr57XohzbHXax3674vBCDu6bIh7PeYDqZ4hMoe3BEaeoDZ4bU2qntrQ==
From: bruts@netc.fr
To: "Frediano Ziglio" <fziglio@redhat.com>, "Kevin Pouget" <kpouget@redhat.com>
Date: Wed, 13 May 2020 11:20:45 +0200 (CEST)
X-Priority: 3
MIME-Version: 1.0
X-Mailer: COMS/EA19.11/r20200424
Message-ID: <ea-mime-5ebbbbed-7a95-56c13533@www-1.mailo.com>
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
Content-Type: multipart/mixed; boundary="===============2018092174=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============2018092174==
Content-Type: multipart/alternative;
 boundary="----=_NextPart_001_5ebbbbed_7a95_12d80b1a"

------=_NextPart_001_5ebbbbed_7a95_12d80b1a
Content-Type: text/plain;
 charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

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






------=_NextPart_001_5ebbbbed_7a95_12d80b1a
Content-Type: text/html;
 charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Kevin and Frediano,</div><div><br></div><div>Yes there might be iss=
ues like Frediano is pointing out, probably they are not well defined, so i=
t might be not trivial to create something for the public out of this.</div=
><div>Still I wonder why there are these entries in /usr/include/linux/inpu=
t-event-codes.h:<br>#define BTN_MOUSE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x110<br>#define BTN_LEFT=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 0x110<br>#define BTN_RIGHT=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x111<br>#define BTN_MI=
DDLE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 0x112<br>#define BTN_SIDE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x113<br>#define BTN_EX=
TRA=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 0x114<br>#define BTN_FORWARD=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x115<br>#define BTN_BACK=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 0x116<br>#define BTN_TASK=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x117<br></div><div><br></=
div><div>They must have some meaning no? Perhaps they are matched to differ=
ent mouse buttons, like one time to button 8, the other mouse declares it a=
s button 10, that is what you mean?</div><div><br></div><div>Still I would =
be very happy if Kevin would have the time to make a little patch, or an ap=
proach to that little patch, so I could use it for my individual mouse butt=
ons, I understand it is not easy to get this out to the public, still if th=
ere is a patch available in the mailing list, then at least people can grab=
 that and change it to their liking, right?</div><div><br></div><div>Anyway=
, all the replies and help is appreciated! Let's get my thumb happy and giv=
e him that mouse button ;)<br></div><div><br></div><br><blockquote type=3D"=
cite" style=3D"margin:0 0 0 0.5em;border-left:1px #00f solid;padding-left:1=
em;">De : Frediano Ziglio &lt;fziglio@redhat.com&gt;<br>
=C3=80 : Kevin Pouget &lt;kpouget@redhat.com&gt;<br>
Sujet : Re: [Spice-devel] spice-vdagent: how to enable additional mouse bu=
ttons?<br>
Date : 13/05/2020 09:49:45 Europe/Paris<br>
Copie =C3=A0 : bruts@netc.fr;<br>
=C2=A0=C2=A0=C2=A0Spice devel &lt;spice-devel@lists.freedesktop.org&gt;<br=
>
<br>
<div style=3D"font-family:courier new,courier,monaco,monospace,sans-serif;=
font-size:12pt;color:#000000;"><div>Hi,<br></div><div>=C2=A0 if I remember =
I think the main issue is that these buttons are kind of wild west.<br></di=
v><div>Basically what is button 6 (first 5 are well defined) ? It can be an=
ything so it could<br></div><div>be that for instance my client left become=
s right on the guest.<br></div><div>Maybe just changing mouse model the sem=
antic of the buttons on the guest change.<br></div><div>Also I remember tha=
t GTK had some problems, these buttons are not defined, I think<br></div><d=
iv>they are passed from the underlying system (Windows, X11, Wayland).<br><=
/div><div><br></div><div>However I see two &quot;workaround&quot;:<br></div=
><div>1- let the users take care of the mismatch. Either getting used to us=
e a button<br></div><div>=C2=A0=C2=A0 instead of the other or using some to=
ols;<br></div><div>2- add a message to communicate the meaning of the vario=
us buttons (which can<br></div><div>=C2=A0=C2=A0 change for instance changi=
ng mouse).<br></div><div><br></div><div>I think 1 is what was implemented b=
y the patches, I'd go for this way.<br></div><div>I hope softwares are not =
associating button semantics to computer shutdown<br></div><div>or somethin=
g &quot;dangerous&quot; like this.<br></div><div><br></div><div>Frediano<br=
></div><blockquote style=3D"border-left:2px solid #1010FF;margin-left:5px;p=
adding-left:5px;color:#000;font-weight:normal;font-style:normal;text-decora=
tion:none;font-family:Helvetica,Arial,sans-serif;font-size:12pt;"><div><br>=
</div><div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, May 12, 2020 at 11:58 P=
M &lt;<a>bruts@netc.fr</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex;"><div>Hi Victor,</div><div><br></div><div>Yes it was =
certainly a good read and i got some ideas from it, but the code has change=
d quite a lot since 2017 and the patches correspond to the current code onl=
y for about 10-15%.</div><div>Maybe someone from the Spice team can suggest=
 a patch to add additional mouse buttons - i am sure that it would be a mat=
ter of minutes to an hour for anyone who is involved with coding the spice-=
vdagent project to create a general patch idea to add additional mouse butt=
ons</div></blockquote><div><br></div><div>Hello,</div><div><br></div><div>I=
'll give it a try this morning, indeed it shouldn't require (much|any) new =
code, only flags here and there. Let's see</div><div><br></div><div>Kevin<b=
r></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex;"=
><div><br></div><div>It is just a matter of forwarding them to the guest - =
for some reason it was decided not to add them.</div><div><br></div><div>th=
anks!<br></div><div><br></div><br><div><br></div><blockquote style=3D"margi=
n:0px 0px 0px 0.5em;border-left:1px solid rgb(0,0,255);padding-left:1em;">D=
e : Victor Toso &lt;<a>victortoso@redhat.com</a>&gt;<br> =C3=80 : <a>bruts@=
netc.fr</a><br> Sujet : Re: [Spice-devel] spice-vdagent: how to enable addi=
tional mouse buttons?<br> Date : 12/05/2020 07:25:59 Europe/Paris<br> Copie=
 =C3=A0 : <a>uril@redhat.com</a>;<br> =C2=A0=C2=A0=C2=A0<a>spice-devel@list=
s.freedesktop.org</a><br> <br> Hi,<br> <br> On Tue, May 12, 2020 at 12:53:0=
2AM +0200, <a>bruts@netc.fr</a> wrote:<br> &gt; <br> &gt; <br> &gt; Uri (an=
d others),<br> &gt; <br> &gt; I found the similar question in a few corners=
 of the internet<br> &gt; and I think adding at least the additional defaul=
t mouse<br> &gt; buttons should not be all that much work.<br> <br> You can=
 take a look at this proposal to adding horizontal wheel<br> support to Spi=
ce<br> <br> <a href=3D"https://lists.freedesktop.org/archives/spice-devel/2=
017-October/040558.html" rel=3D"noreferrer">https://lists.freedesktop.org/a=
rchives/spice-devel/2017-October/040558.html</a><br> <br> &gt; With some gu=
idance I could probably do it myself, though the<br> &gt; guidance would ne=
ed to be quite substantial :)<br> &gt; <br> &gt; The mouse and the main but=
tons is already forwarded and that is<br> &gt; the main part.<br> &gt; <br>=
 &gt; with xev it is clear to see which buttons work on the host, but<br> &=
gt; not on the guest.<br> &gt; <br> &gt; Anyone with some spare time (which=
 I know is always limited for<br> &gt; everyone), but help me where to fix =
this in the code and i will<br> &gt; write a patch - or give me a good star=
t - or start yourself.<br> &gt; <br> &gt; a semi working mouse in the guest=
 is very annoying and can be<br> &gt; one of the critical points why to use=
 spice (or not) - at least<br> &gt; i know it is in my case.<br> &gt; <br> =
&gt; Thanks!!<br> <br> Cheers,<br> Victor<br> <br></blockquote>____________=
___________________________________<br> Spice-devel mailing list<br> <a>Spi=
ce-devel@lists.freedesktop.org</a><br> <a href=3D"https://lists.freedesktop=
.org/mailman/listinfo/spice-devel" rel=3D"noreferrer">https://lists.freedes=
ktop.org/mailman/listinfo/spice-devel</a><br></blockquote></div></div><br>_=
______________________________________________<br>Spice-devel mailing list<=
br>Spice-devel@lists.freedesktop.org<br><a href=3D"https://lists.freedeskto=
p.org/mailman/listinfo/spice-devel" rel=3D"noreferrer">https://lists.freede=
sktop.org/mailman/listinfo/spice-devel</a><br></blockquote><div><br></div><=
/div></blockquote>

------=_NextPart_001_5ebbbbed_7a95_12d80b1a--


--===============2018092174==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============2018092174==--

