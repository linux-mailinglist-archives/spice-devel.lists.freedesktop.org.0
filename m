Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B22FF1D35A1
	for <lists+spice-devel@lfdr.de>; Thu, 14 May 2020 17:53:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB5416EB7A;
	Thu, 14 May 2020 15:53:19 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from relay-1.mailobj.net (relay-1.mailobj.net [213.182.54.6])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F7066EB7A
 for <spice-devel@lists.freedesktop.org>; Thu, 14 May 2020 15:53:18 +0000 (UTC)
Received: from www-1.localdomain (www-1.in.mailobj.net [192.168.90.193])
 by relay-1.mailobj.net (Postfix) with SMTP id AB7C91460;
 Thu, 14 May 2020 17:53:16 +0200 (CEST)
Received: by www-1.mailo.com with http webmail; Thu, 14 May 2020
 17:53:16 +0200 (CEST)
X-EA-Auth: 9MN2DiWma8N7ILz8wLfZu1i2oCB3RJJZJo4FnbXWxp+GXJUjnt4KUTeZalukgG1Z6gj54Kaarc1HwekHDki6GQ==
From: bruts@netc.fr
To: "Frediano Ziglio" <fziglio@redhat.com>, "Kevin Pouget" <kpouget@redhat.com>
Date: Thu, 14 May 2020 17:53:16 +0200 (CEST)
X-Priority: 3
MIME-Version: 1.0
X-Mailer: COMS/EA19.11/r20200424
Message-ID: <ea-mime-5ebd696c-ba6-1bfbfbc6@www-1.mailo.com>
In-Reply-To: <1179901412.26985815.1589469121636.JavaMail.zimbra@redhat.com>
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
Content-Type: multipart/mixed; boundary="===============0186132803=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0186132803==
Content-Type: multipart/alternative;
 boundary="----=_NextPart_001_5ebd696c_ba6_5b0dec14"

------=_NextPart_001_5ebd696c_ba6_5b0dec14
Content-Type: text/plain;
 charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Frediano,



Yes it's quite a bit incoherent, having said that, i just saw a picture of=
 a mouse with like 30 buttons on it :-)

Didn't have time yet to test your patches Kevin, will do so in evening hou=
rs, I will update you after.



From the bottom of my thumb, i thank you :-)



Roger



De : Frediano Ziglio <fziglio@redhat.com>
=C3=80 : Kevin Pouget <kpouget@redhat.com>
Sujet : Re: [Spice-devel] spice-vdagent: how to enable additional mouse bu=
ttons?
Date : 14/05/2020 17:12:01 Europe/Paris
Copie =C3=A0 : bruts@netc.fr;
=C2=A0=C2=A0=C2=A0Spice devel <spice-devel@lists.freedesktop.org>

> Hello,

> I've pushed some commits to get the mouse buttons working with the VDAge=
nt
> (and only it, some bits are missing in spice-server to handle the other
> types I think):

> https://gitlab.freedesktop.org/kpouget/spice/-/commits/exp/mouse-bt
> https://gitlab.freedesktop.org/kpouget/spice-gtk/-/commits/exp/mouse-bt
> https://gitlab.freedesktop.org/kpouget/spice-protocol/-/commits/exp/mous=
e-bt
> https://gitlab.freedesktop.org/kpouget/vd_agent/-/tree/exp/mouse-bt

Nine and simple! Thanks!

Wondering why there's no SPICE_MOUSE_BUTTON_MASK_UP and SPICE_MOUSE_BUTTON=
_MASK_DOWN.
It looks a bit incoherent.
Not a regression of your patches. Maybe they don't change some internal st=
atus

> and I uploaded a small demo of the way it works in my workstation: my mo=
use
> has 2 extra buttons (8 and 9) that are properly forwarded
> > http://people.redhat.com/~kpouget/20-05-14/mouse-bt.mkv

> I hope it will work the same on your side!

> On Wed, May 13, 2020 at 11:20 AM < bruts@netc.fr > wrote:

> > Hi Kevin and Frediano,
>=20

> > Yes there might be issues like Frediano is pointing out, probably they=
 are
> > not well defined, so it might be not trivial to create something for t=
he
> > public out of this.
>=20
> > Still I wonder why there are these entries in
> > /usr/include/linux/input-event-codes.h:
>=20
> > #define BTN_MOUSE 0x110
>=20
> > #define BTN_LEFT 0x110
>=20
> > #define BTN_RIGHT 0x111
>=20
> > #define BTN_MIDDLE 0x112
>=20
> > #define BTN_SIDE 0x113
>=20
> > #define BTN_EXTRA 0x114
>=20
> > #define BTN_FORWARD 0x115
>=20
> > #define BTN_BACK 0x116
>=20
> > #define BTN_TASK 0x117
>=20

> > They must have some meaning no? Perhaps they are matched to different =
mouse
> > buttons, like one time to button 8, the other mouse declares it as but=
ton
> > 10, that is what you mean?
>=20

> > Still I would be very happy if Kevin would have the time to make a lit=
tle
> > patch, or an approach to that little patch, so I could use it for my
> > individual mouse buttons, I understand it is not easy to get this out =
to
> > the
> > public, still if there is a patch available in the mailing list, then =
at
> > least people can grab that and change it to their liking, right?
>=20

> > Anyway, all the replies and help is appreciated! Let's get my thumb ha=
ppy
> > and
> > give him that mouse button ;)
>=20

> > > De : Frediano Ziglio < fziglio@redhat.com >
> >=20
>=20
> > > =C3=80 : Kevin Pouget < kpouget@redhat.com >
> >=20
>=20
> > > Sujet : Re: [Spice-devel] spice-vdagent: how to enable additional mo=
use
> > > buttons?
> >=20
>=20
> > > Date : 13/05/2020 09:49:45 Europe/Paris
> >=20
>=20
> > > Copie =C3=A0 : bruts@netc.fr ;
> >=20
>=20
> > > Spice devel < spice-devel@lists.freedesktop.org >
> >=20
>=20

> > > Hi,
> >=20
>=20
> > > if I remember I think the main issue is that these buttons are kind =
of
> > > wild
> > > west.
> >=20
>=20
> > > Basically what is button 6 (first 5 are well defined) ? It can be
> > > anything
> > > so
> > > it could
> >=20
>=20
> > > be that for instance my client left becomes right on the guest.
> >=20
>=20
> > > Maybe just changing mouse model the semantic of the buttons on the g=
uest
> > > change.
> >=20
>=20
> > > Also I remember that GTK had some problems, these buttons are not
> > > defined,
> > > I
> > > think
> >=20
>=20
> > > they are passed from the underlying system (Windows, X11, Wayland).
> >=20
>=20

> > > However I see two "workaround":
> >=20
>=20
> > > 1- let the users take care of the mismatch. Either getting used to u=
se a
> > > button
> >=20
>=20
> > > instead of the other or using some tools;
> >=20
>=20
> > > 2- add a message to communicate the meaning of the various buttons (=
which
> > > can
> >=20
>=20
> > > change for instance changing mouse).
> >=20
>=20

> > > I think 1 is what was implemented by the patches, I'd go for this wa=
y.
> >=20
>=20
> > > I hope softwares are not associating button semantics to computer
> > > shutdown
> >=20
>=20
> > > or something "dangerous" like this.
> >=20
>=20

> > > Frediano
> >=20
>=20

> > > > On Tue, May 12, 2020 at 11:58 PM < bruts@netc.fr > wrote:
> > >=20
> >=20
>=20

> > > > > Hi Victor,
> > > >=20
> > >=20
> >=20
>=20

> > > > > Yes it was certainly a good read and i got some ideas from it, b=
ut
> > > > > the
> > > > > code
> > > > > has changed quite a lot since 2017 and the patches correspond to=
 the
> > > > > current
> > > > > code only for about 10-15%.
> > > >=20
> > >=20
> >=20
>=20
> > > > > Maybe someone from the Spice team can suggest a patch to add
> > > > > additional
> > > > > mouse
> > > > > buttons - i am sure that it would be a matter of minutes to an h=
our
> > > > > for
> > > > > anyone who is involved with coding the spice-vdagent project to
> > > > > create
> > > > > a
> > > > > general patch idea to add additional mouse buttons
> > > >=20
> > >=20
> >=20
>=20

> > > > Hello,
> > >=20
> >=20
>=20

> > > > I'll give it a try this morning, indeed it shouldn't require (much=
|any)
> > > > new
> > > > code, only flags here and there. Let's see
> > >=20
> >=20
>=20

> > > > Kevin
> > >=20
> >=20
>=20

> > > > > It is just a matter of forwarding them to the guest - for some r=
eason
> > > > > it
> > > > > was
> > > > > decided not to add them.
> > > >=20
> > >=20
> >=20
>=20

> > > > > thanks!
> > > >=20
> > >=20
> >=20
>=20

> > > > > > De : Victor Toso < victortoso@redhat.com >
> > > > >=20
> > > >=20
> > >=20
> >=20
>=20
> > > > > > =C3=80 : bruts@netc.fr
> > > > >=20
> > > >=20
> > >=20
> >=20
>=20
> > > > > > Sujet : Re: [Spice-devel] spice-vdagent: how to enable additio=
nal
> > > > > > mouse
> > > > > > buttons?
> > > > >=20
> > > >=20
> > >=20
> >=20
>=20
> > > > > > Date : 12/05/2020 07:25:59 Europe/Paris
> > > > >=20
> > > >=20
> > >=20
> >=20
>=20
> > > > > > Copie =C3=A0 : uril@redhat.com ;
> > > > >=20
> > > >=20
> > >=20
> >=20
>=20
> > > > > > spice-devel@lists.freedesktop.org
> > > > >=20
> > > >=20
> > >=20
> >=20
>=20

> > > > > > Hi,
> > > > >=20
> > > >=20
> > >=20
> >=20
>=20

> > > > > > On Tue, May 12, 2020 at 12:53:02AM +0200, bruts@netc.fr wrote:
> > > > >=20
> > > >=20
> > >=20
> >=20
>=20
> > > > > > >
> > > > >=20
> > > >=20
> > >=20
> >=20
>=20
> > > > > > >
> > > > >=20
> > > >=20
> > >=20
> >=20
>=20
> > > > > > > Uri (and others),
> > > > >=20
> > > >=20
> > >=20
> >=20
>=20
> > > > > > >
> > > > >=20
> > > >=20
> > >=20
> >=20
>=20
> > > > > > > I found the similar question in a few corners of the interne=
t
> > > > >=20
> > > >=20
> > >=20
> >=20
>=20
> > > > > > > and I think adding at least the additional default mouse
> > > > >=20
> > > >=20
> > >=20
> >=20
>=20
> > > > > > > buttons should not be all that much work.
> > > > >=20
> > > >=20
> > >=20
> >=20
>=20

> > > > > > You can take a look at this proposal to adding horizontal whee=
l
> > > > >=20
> > > >=20
> > >=20
> >=20
>=20
> > > > > > support to Spice
> > > > >=20
> > > >=20
> > >=20
> >=20
>=20

> > > > > > https://lists.freedesktop.org/archives/spice-devel/2017-Octobe=
r/040558.html
> > > > >=20
> > > >=20
> > >=20
> >=20
>=20

> > > > > > > With some guidance I could probably do it myself, though the
> > > > >=20
> > > >=20
> > >=20
> >=20
>=20
> > > > > > > guidance would need to be quite substantial :)
> > > > >=20
> > > >=20
> > >=20
> >=20
>=20
> > > > > > >
> > > > >=20
> > > >=20
> > >=20
> >=20
>=20
> > > > > > > The mouse and the main buttons is already forwarded and that=
 is
> > > > >=20
> > > >=20
> > >=20
> >=20
>=20
> > > > > > > the main part.
> > > > >=20
> > > >=20
> > >=20
> >=20
>=20
> > > > > > >
> > > > >=20
> > > >=20
> > >=20
> >=20
>=20
> > > > > > > with xev it is clear to see which buttons work on the host, =
but
> > > > >=20
> > > >=20
> > >=20
> >=20
>=20
> > > > > > > not on the guest.
> > > > >=20
> > > >=20
> > >=20
> >=20
>=20
> > > > > > >
> > > > >=20
> > > >=20
> > >=20
> >=20
>=20
> > > > > > > Anyone with some spare time (which I know is always limited =
for
> > > > >=20
> > > >=20
> > >=20
> >=20
>=20
> > > > > > > everyone), but help me where to fix this in the code and i w=
ill
> > > > >=20
> > > >=20
> > >=20
> >=20
>=20
> > > > > > > write a patch - or give me a good start - or start yourself.
> > > > >=20
> > > >=20
> > >=20
> >=20
>=20
> > > > > > >
> > > > >=20
> > > >=20
> > >=20
> >=20
>=20
> > > > > > > a semi working mouse in the guest is very annoying and can b=
e
> > > > >=20
> > > >=20
> > >=20
> >=20
>=20
> > > > > > > one of the critical points why to use spice (or not) - at le=
ast
> > > > >=20
> > > >=20
> > >=20
> >=20
>=20
> > > > > > > i know it is in my case.
> > > > >=20
> > > >=20
> > >=20
> >=20
>=20
> > > > > > >
> > > > >=20
> > > >=20
> > >=20
> >=20
>=20
> > > > > > > Thanks!!
> > > > >=20
> > > >=20
> > >=20
> >=20
>=20

> > > > > > Cheers,
> > > > >=20
> > > >=20
> > >=20
> >=20
>=20
> > > > > > Victor
> > > > >=20
> > > >=20
> > >=20
> >=20
>=20

> > > > > _______________________________________________
> > > >=20
> > >=20
> >=20
>=20
> > > > > Spice-devel mailing list
> > > >=20
> > >=20
> >=20
>=20
> > > > > Spice-devel@lists.freedesktop.org
> > > >=20
> > >=20
> >=20
>=20
> > > > > https://lists.freedesktop.org/mailman/listinfo/spice-devel
> > > >=20
> > >=20
> >=20
>=20

> > > > _______________________________________________
> > >=20
> >=20
>=20
> > > > Spice-devel mailing list
> > >=20
> >=20
>=20
> > > > Spice-devel@lists.freedesktop.org
> > >=20
> >=20
>=20
> > > > https://lists.freedesktop.org/mailman/listinfo/spice-devel
> > >=20
> >=20
>=20



------=_NextPart_001_5ebd696c_ba6_5b0dec14
Content-Type: text/html;
 charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Frediano,</div><div><br></div><div>Yes it's quite a bit incoherent,=
 having said that, i just saw a picture of a mouse with like 30 buttons on =
it :-)</div><div>Didn't have time yet to test your patches Kevin, will do s=
o in evening hours, I will update you after.</div><div><br></div><div>From =
the bottom of my thumb, i thank you :-)</div><div><br></div><div>Roger<br><=
/div><br><br><blockquote type=3D"cite" style=3D"margin:0 0 0 0.5em;border-l=
eft:1px #00f solid;padding-left:1em;">De : Frediano Ziglio &lt;fziglio@redh=
at.com&gt;<br>
=C3=80 : Kevin Pouget &lt;kpouget@redhat.com&gt;<br>
Sujet : Re: [Spice-devel] spice-vdagent: how to enable additional mouse bu=
ttons?<br>
Date : 14/05/2020 17:12:01 Europe/Paris<br>
Copie =C3=A0 : bruts@netc.fr;<br>
=C2=A0=C2=A0=C2=A0Spice devel &lt;spice-devel@lists.freedesktop.org&gt;<br=
>
<br>
&gt; Hello,<br>
<br>
&gt; I've pushed some commits to get the mouse buttons working with the VD=
Agent<br>
&gt; (and only it, some bits are missing in spice-server to handle the oth=
er<br>
&gt; types I think):<br>
<br>
&gt; <a href=3D"https://gitlab.freedesktop.org/kpouget/spice/-/commits/exp=
/mouse-bt" rel=3D"noreferrer">https://gitlab.freedesktop.org/kpouget/spice/=
-/commits/exp/mouse-bt</a><br>
&gt; <a href=3D"https://gitlab.freedesktop.org/kpouget/spice-gtk/-/commits=
/exp/mouse-bt" rel=3D"noreferrer">https://gitlab.freedesktop.org/kpouget/sp=
ice-gtk/-/commits/exp/mouse-bt</a><br>
&gt; <a href=3D"https://gitlab.freedesktop.org/kpouget/spice-protocol/-/co=
mmits/exp/mouse-bt" rel=3D"noreferrer">https://gitlab.freedesktop.org/kpoug=
et/spice-protocol/-/commits/exp/mouse-bt</a><br>
&gt; <a href=3D"https://gitlab.freedesktop.org/kpouget/vd_agent/-/tree/exp=
/mouse-bt" rel=3D"noreferrer">https://gitlab.freedesktop.org/kpouget/vd_age=
nt/-/tree/exp/mouse-bt</a><br>
<br>
Nine and simple! Thanks!<br>
<br>
Wondering why there's no SPICE_MOUSE_BUTTON_MASK_UP and SPICE_MOUSE_BUTTON=
_MASK_DOWN.<br>
It looks a bit incoherent.<br>
Not a regression of your patches. Maybe they don't change some internal st=
atus<br>
<br>
&gt; and I uploaded a small demo of the way it works in my workstation: my=
 mouse<br>
&gt; has 2 extra buttons (8 and 9) that are properly forwarded<br>
&gt; &gt; <a href=3D"http://people.redhat.com/~kpouget/20-05-14/mouse-bt.m=
kv" rel=3D"noreferrer">http://people.redhat.com/~kpouget/20-05-14/mouse-bt.=
mkv</a><br>
<br>
&gt; I hope it will work the same on your side!<br>
<br>
&gt; On Wed, May 13, 2020 at 11:20 AM &lt; bruts@netc.fr &gt; wrote:<br>
<br>
&gt; &gt; Hi Kevin and Frediano,<br>
&gt; <br>
<br>
&gt; &gt; Yes there might be issues like Frediano is pointing out, probabl=
y they are<br>
&gt; &gt; not well defined, so it might be not trivial to create something=
 for the<br>
&gt; &gt; public out of this.<br>
&gt; <br>
&gt; &gt; Still I wonder why there are these entries in<br>
&gt; &gt; /usr/include/linux/input-event-codes.h:<br>
&gt; <br>
&gt; &gt; #define BTN_MOUSE 0x110<br>
&gt; <br>
&gt; &gt; #define BTN_LEFT 0x110<br>
&gt; <br>
&gt; &gt; #define BTN_RIGHT 0x111<br>
&gt; <br>
&gt; &gt; #define BTN_MIDDLE 0x112<br>
&gt; <br>
&gt; &gt; #define BTN_SIDE 0x113<br>
&gt; <br>
&gt; &gt; #define BTN_EXTRA 0x114<br>
&gt; <br>
&gt; &gt; #define BTN_FORWARD 0x115<br>
&gt; <br>
&gt; &gt; #define BTN_BACK 0x116<br>
&gt; <br>
&gt; &gt; #define BTN_TASK 0x117<br>
&gt; <br>
<br>
&gt; &gt; They must have some meaning no? Perhaps they are matched to diff=
erent mouse<br>
&gt; &gt; buttons, like one time to button 8, the other mouse declares it =
as button<br>
&gt; &gt; 10, that is what you mean?<br>
&gt; <br>
<br>
&gt; &gt; Still I would be very happy if Kevin would have the time to make=
 a little<br>
&gt; &gt; patch, or an approach to that little patch, so I could use it fo=
r my<br>
&gt; &gt; individual mouse buttons, I understand it is not easy to get thi=
s out to<br>
&gt; &gt; the<br>
&gt; &gt; public, still if there is a patch available in the mailing list,=
 then at<br>
&gt; &gt; least people can grab that and change it to their liking, right?=
<br>
&gt; <br>
<br>
&gt; &gt; Anyway, all the replies and help is appreciated! Let's get my th=
umb happy<br>
&gt; &gt; and<br>
&gt; &gt; give him that mouse button ;)<br>
&gt; <br>
<br>
&gt; &gt; &gt; De : Frediano Ziglio &lt; fziglio@redhat.com &gt;<br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; =C3=80 : Kevin Pouget &lt; kpouget@redhat.com &gt;<br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; Sujet : Re: [Spice-devel] spice-vdagent: how to enable addi=
tional mouse<br>
&gt; &gt; &gt; buttons?<br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; Date : 13/05/2020 09:49:45 Europe/Paris<br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; Copie =C3=A0 : bruts@netc.fr ;<br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; Spice devel &lt; spice-devel@lists.freedesktop.org &gt;<br>=

&gt; &gt; <br>
&gt; <br>
<br>
&gt; &gt; &gt; Hi,<br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; if I remember I think the main issue is that these buttons =
are kind of<br>
&gt; &gt; &gt; wild<br>
&gt; &gt; &gt; west.<br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; Basically what is button 6 (first 5 are well defined) ? It =
can be<br>
&gt; &gt; &gt; anything<br>
&gt; &gt; &gt; so<br>
&gt; &gt; &gt; it could<br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; be that for instance my client left becomes right on the gu=
est.<br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; Maybe just changing mouse model the semantic of the buttons=
 on the guest<br>
&gt; &gt; &gt; change.<br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; Also I remember that GTK had some problems, these buttons a=
re not<br>
&gt; &gt; &gt; defined,<br>
&gt; &gt; &gt; I<br>
&gt; &gt; &gt; think<br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; they are passed from the underlying system (Windows, X11, W=
ayland).<br>
&gt; &gt; <br>
&gt; <br>
<br>
&gt; &gt; &gt; However I see two &quot;workaround&quot;:<br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; 1- let the users take care of the mismatch. Either getting =
used to use a<br>
&gt; &gt; &gt; button<br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; instead of the other or using some tools;<br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; 2- add a message to communicate the meaning of the various =
buttons (which<br>
&gt; &gt; &gt; can<br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; change for instance changing mouse).<br>
&gt; &gt; <br>
&gt; <br>
<br>
&gt; &gt; &gt; I think 1 is what was implemented by the patches, I'd go fo=
r this way.<br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; I hope softwares are not associating button semantics to co=
mputer<br>
&gt; &gt; &gt; shutdown<br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; or something &quot;dangerous&quot; like this.<br>
&gt; &gt; <br>
&gt; <br>
<br>
&gt; &gt; &gt; Frediano<br>
&gt; &gt; <br>
&gt; <br>
<br>
&gt; &gt; &gt; &gt; On Tue, May 12, 2020 at 11:58 PM &lt; bruts@netc.fr &g=
t; wrote:<br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
<br>
&gt; &gt; &gt; &gt; &gt; Hi Victor,<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
<br>
&gt; &gt; &gt; &gt; &gt; Yes it was certainly a good read and i got some i=
deas from it, but<br>
&gt; &gt; &gt; &gt; &gt; the<br>
&gt; &gt; &gt; &gt; &gt; code<br>
&gt; &gt; &gt; &gt; &gt; has changed quite a lot since 2017 and the patche=
s correspond to the<br>
&gt; &gt; &gt; &gt; &gt; current<br>
&gt; &gt; &gt; &gt; &gt; code only for about 10-15%.<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; &gt; &gt; Maybe someone from the Spice team can suggest a p=
atch to add<br>
&gt; &gt; &gt; &gt; &gt; additional<br>
&gt; &gt; &gt; &gt; &gt; mouse<br>
&gt; &gt; &gt; &gt; &gt; buttons - i am sure that it would be a matter of =
minutes to an hour<br>
&gt; &gt; &gt; &gt; &gt; for<br>
&gt; &gt; &gt; &gt; &gt; anyone who is involved with coding the spice-vdag=
ent project to<br>
&gt; &gt; &gt; &gt; &gt; create<br>
&gt; &gt; &gt; &gt; &gt; a<br>
&gt; &gt; &gt; &gt; &gt; general patch idea to add additional mouse button=
s<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
<br>
&gt; &gt; &gt; &gt; Hello,<br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
<br>
&gt; &gt; &gt; &gt; I'll give it a try this morning, indeed it shouldn't r=
equire (much|any)<br>
&gt; &gt; &gt; &gt; new<br>
&gt; &gt; &gt; &gt; code, only flags here and there. Let's see<br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
<br>
&gt; &gt; &gt; &gt; Kevin<br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
<br>
&gt; &gt; &gt; &gt; &gt; It is just a matter of forwarding them to the gue=
st - for some reason<br>
&gt; &gt; &gt; &gt; &gt; it<br>
&gt; &gt; &gt; &gt; &gt; was<br>
&gt; &gt; &gt; &gt; &gt; decided not to add them.<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
<br>
&gt; &gt; &gt; &gt; &gt; thanks!<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
<br>
&gt; &gt; &gt; &gt; &gt; &gt; De : Victor Toso &lt; victortoso@redhat.com =
&gt;<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; =C3=80 : bruts@netc.fr<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; Sujet : Re: [Spice-devel] spice-vdagent: how=
 to enable additional<br>
&gt; &gt; &gt; &gt; &gt; &gt; mouse<br>
&gt; &gt; &gt; &gt; &gt; &gt; buttons?<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; Date : 12/05/2020 07:25:59 Europe/Paris<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; Copie =C3=A0 : uril@redhat.com ;<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; spice-devel@lists.freedesktop.org<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
<br>
&gt; &gt; &gt; &gt; &gt; &gt; Hi,<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
<br>
&gt; &gt; &gt; &gt; &gt; &gt; On Tue, May 12, 2020 at 12:53:02AM +0200, br=
uts@netc.fr wrote:<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; Uri (and others),<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; I found the similar question in a few c=
orners of the internet<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; and I think adding at least the additio=
nal default mouse<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; buttons should not be all that much wor=
k.<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
<br>
&gt; &gt; &gt; &gt; &gt; &gt; You can take a look at this proposal to addi=
ng horizontal wheel<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; support to Spice<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
<br>
&gt; &gt; &gt; &gt; &gt; &gt; <a href=3D"https://lists.freedesktop.org/arc=
hives/spice-devel/2017-October/040558.html" rel=3D"noreferrer">https://list=
s.freedesktop.org/archives/spice-devel/2017-October/040558.html</a><br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; With some guidance I could probably do =
it myself, though the<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; guidance would need to be quite substan=
tial :)<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; The mouse and the main buttons is alrea=
dy forwarded and that is<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; the main part.<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; with xev it is clear to see which butto=
ns work on the host, but<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; not on the guest.<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; Anyone with some spare time (which I kn=
ow is always limited for<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; everyone), but help me where to fix thi=
s in the code and i will<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; write a patch - or give me a good start=
 - or start yourself.<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; a semi working mouse in the guest is ve=
ry annoying and can be<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; one of the critical points why to use s=
pice (or not) - at least<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; i know it is in my case.<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; Thanks!!<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
<br>
&gt; &gt; &gt; &gt; &gt; &gt; Cheers,<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; Victor<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
<br>
&gt; &gt; &gt; &gt; &gt; _______________________________________________<b=
r>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; &gt; &gt; Spice-devel mailing list<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; &gt; &gt; Spice-devel@lists.freedesktop.org<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; &gt; &gt; <a href=3D"https://lists.freedesktop.org/mailman/=
listinfo/spice-devel" rel=3D"noreferrer">https://lists.freedesktop.org/mail=
man/listinfo/spice-devel</a><br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
<br>
&gt; &gt; &gt; &gt; _______________________________________________<br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; &gt; Spice-devel mailing list<br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; &gt; Spice-devel@lists.freedesktop.org<br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
&gt; &gt; &gt; &gt; <a href=3D"https://lists.freedesktop.org/mailman/listi=
nfo/spice-devel" rel=3D"noreferrer">https://lists.freedesktop.org/mailman/l=
istinfo/spice-devel</a><br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
&gt; <br>
<br></blockquote>

------=_NextPart_001_5ebd696c_ba6_5b0dec14--


--===============0186132803==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0186132803==--

