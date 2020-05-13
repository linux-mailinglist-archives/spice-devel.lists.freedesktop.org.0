Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D481D0A42
	for <lists+spice-devel@lfdr.de>; Wed, 13 May 2020 09:49:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 322836E99C;
	Wed, 13 May 2020 07:49:57 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4B736E99C
 for <spice-devel@lists.freedesktop.org>; Wed, 13 May 2020 07:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589356194;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=fxHdbW3pdtlD22Ha2/stb+B0M4/6rBn4VY0BJR5poJg=;
 b=MM7QtviO4eEoDzgZST7bUPvsBFXeoxi4gqmw/xQwPmbr83XhNWJvmW6sWEyQm5zULXqo1s
 NK0t81j3IDILVfOXoliSYGQ1DazJsE1DQO9BgunH7ETllTnPj+vSj9t7Idzq0ar5W6T4Cu
 1mJypi7ip5Z7me5GZphp0eW/0AcTIR4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-311-izAlmrYdPhSgOGBZqoNe_g-1; Wed, 13 May 2020 03:49:47 -0400
X-MC-Unique: izAlmrYdPhSgOGBZqoNe_g-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B185E802EAD;
 Wed, 13 May 2020 07:49:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3D98053E3B;
 Wed, 13 May 2020 07:49:46 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 15E961809542;
 Wed, 13 May 2020 07:49:46 +0000 (UTC)
Date: Wed, 13 May 2020 03:49:45 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Kevin Pouget <kpouget@redhat.com>
Message-ID: <1206718564.26753416.1589356185489.JavaMail.zimbra@redhat.com>
In-Reply-To: <CADJ1XR2W8G6xDTELsTJB55q+eAG_7iCbS5Dukfz2HXtaxpOP2Q@mail.gmail.com>
References: <20200512052559.3cqwgmrlugzqdbld@wingsuit>
 <ea-mime-5ebb1c02-6f46-557ff269@www-1.mailo.com>
 <CADJ1XR2W8G6xDTELsTJB55q+eAG_7iCbS5Dukfz2HXtaxpOP2Q@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.15, 10.4.195.30]
Thread-Topic: spice-vdagent: how to enable additional mouse buttons?
Thread-Index: sgwhnvKPmfqxKx3UX/q/kUK5zRhQWQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
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
Cc: Spice devel <spice-devel@lists.freedesktop.org>, bruts@netc.fr
Content-Type: multipart/mixed; boundary="===============1637999328=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1637999328==
Content-Type: multipart/alternative; 
	boundary="----=_Part_26753415_828041932.1589356185489"

------=_Part_26753415_828041932.1589356185489
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,=20
if I remember I think the main issue is that these buttons are kind of wild=
 west.=20
Basically what is button 6 (first 5 are well defined) ? It can be anything =
so it could=20
be that for instance my client left becomes right on the guest.=20
Maybe just changing mouse model the semantic of the buttons on the guest ch=
ange.=20
Also I remember that GTK had some problems, these buttons are not defined, =
I think=20
they are passed from the underlying system (Windows, X11, Wayland).=20

However I see two "workaround":=20
1- let the users take care of the mismatch. Either getting used to use a bu=
tton=20
instead of the other or using some tools;=20
2- add a message to communicate the meaning of the various buttons (which c=
an=20
change for instance changing mouse).=20

I think 1 is what was implemented by the patches, I'd go for this way.=20
I hope softwares are not associating button semantics to computer shutdown=
=20
or something "dangerous" like this.=20

Frediano=20

> On Tue, May 12, 2020 at 11:58 PM < bruts@netc.fr > wrote:

> > Hi Victor,
>=20

> > Yes it was certainly a good read and i got some ideas from it, but the =
code
> > has changed quite a lot since 2017 and the patches correspond to the
> > current
> > code only for about 10-15%.
>=20
> > Maybe someone from the Spice team can suggest a patch to add additional
> > mouse
> > buttons - i am sure that it would be a matter of minutes to an hour for
> > anyone who is involved with coding the spice-vdagent project to create =
a
> > general patch idea to add additional mouse buttons
>=20

> Hello,

> I'll give it a try this morning, indeed it shouldn't require (much|any) n=
ew
> code, only flags here and there. Let's see

> Kevin

> > It is just a matter of forwarding them to the guest - for some reason i=
t
> > was
> > decided not to add them.
>=20

> > thanks!
>=20

> > > De : Victor Toso < victortoso@redhat.com >
> >=20
>=20
> > > =C3=80 : bruts@netc.fr
> >=20
>=20
> > > Sujet : Re: [Spice-devel] spice-vdagent: how to enable additional mou=
se
> > > buttons?
> >=20
>=20
> > > Date : 12/05/2020 07:25:59 Europe/Paris
> >=20
>=20
> > > Copie =C3=A0 : uril@redhat.com ;
> >=20
>=20
> > > spice-devel@lists.freedesktop.org
> >=20
>=20

> > > Hi,
> >=20
>=20

> > > On Tue, May 12, 2020 at 12:53:02AM +0200, bruts@netc.fr wrote:
> >=20
>=20
> > > >
> >=20
>=20
> > > >
> >=20
>=20
> > > > Uri (and others),
> >=20
>=20
> > > >
> >=20
>=20
> > > > I found the similar question in a few corners of the internet
> >=20
>=20
> > > > and I think adding at least the additional default mouse
> >=20
>=20
> > > > buttons should not be all that much work.
> >=20
>=20

> > > You can take a look at this proposal to adding horizontal wheel
> >=20
>=20
> > > support to Spice
> >=20
>=20

> > > https://lists.freedesktop.org/archives/spice-devel/2017-October/04055=
8.html
> >=20
>=20

> > > > With some guidance I could probably do it myself, though the
> >=20
>=20
> > > > guidance would need to be quite substantial :)
> >=20
>=20
> > > >
> >=20
>=20
> > > > The mouse and the main buttons is already forwarded and that is
> >=20
>=20
> > > > the main part.
> >=20
>=20
> > > >
> >=20
>=20
> > > > with xev it is clear to see which buttons work on the host, but
> >=20
>=20
> > > > not on the guest.
> >=20
>=20
> > > >
> >=20
>=20
> > > > Anyone with some spare time (which I know is always limited for
> >=20
>=20
> > > > everyone), but help me where to fix this in the code and i will
> >=20
>=20
> > > > write a patch - or give me a good start - or start yourself.
> >=20
>=20
> > > >
> >=20
>=20
> > > > a semi working mouse in the guest is very annoying and can be
> >=20
>=20
> > > > one of the critical points why to use spice (or not) - at least
> >=20
>=20
> > > > i know it is in my case.
> >=20
>=20
> > > >
> >=20
>=20
> > > > Thanks!!
> >=20
>=20

> > > Cheers,
> >=20
>=20
> > > Victor
> >=20
>=20

> > _______________________________________________
>=20
> > Spice-devel mailing list
>=20
> > Spice-devel@lists.freedesktop.org
>=20
> > https://lists.freedesktop.org/mailman/listinfo/spice-devel
>=20

> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

------=_Part_26753415_828041932.1589356185489
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"font-family: courier new,courier,monaco,monospace=
,sans-serif; font-size: 12pt; color: #000000"><div>Hi,<br></div><div>&nbsp;=
 if I remember I think the main issue is that these buttons are kind of wil=
d west.<br></div><div>Basically what is button 6 (first 5 are well defined)=
 ? It can be anything so it could<br></div><div>be that for instance my cli=
ent left becomes right on the guest.<br></div><div>Maybe just changing mous=
e model the semantic of the buttons on the guest change.<br></div><div>Also=
 I remember that GTK had some problems, these buttons are not defined, I th=
ink<br></div><div>they are passed from the underlying system (Windows, X11,=
 Wayland).<br></div><div><br></div><div>However I see two "workaround":<br>=
</div><div>1- let the users take care of the mismatch. Either getting used =
to use a button<br></div><div>&nbsp;&nbsp; instead of the other or using so=
me tools;<br></div><div>2- add a message to communicate the meaning of the =
various buttons (which can<br></div><div>&nbsp;&nbsp; change for instance c=
hanging mouse).<br></div><div><br></div><div>I think 1 is what was implemen=
ted by the patches, I'd go for this way.<br></div><div>I hope softwares are=
 not associating button semantics to computer shutdown<br></div><div>or som=
ething "dangerous" like this.<br></div><div><br></div><div>Frediano<br></di=
v><blockquote style=3D"border-left:2px solid #1010FF;margin-left:5px;paddin=
g-left:5px;color:#000;font-weight:normal;font-style:normal;text-decoration:=
none;font-family:Helvetica,Arial,sans-serif;font-size:12pt;" data-mce-style=
=3D"border-left: 2px solid #1010FF; margin-left: 5px; padding-left: 5px; co=
lor: #000; font-weight: normal; font-style: normal; text-decoration: none; =
font-family: Helvetica,Arial,sans-serif; font-size: 12pt;"><div><br></div><=
div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Tue, May 12, 2020 at 11:58 PM &lt;<=
a href=3D"mailto:bruts@netc.fr" target=3D"_blank" data-mce-href=3D"mailto:b=
ruts@netc.fr">bruts@netc.fr</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex" data-mce-style=3D"margin: 0px 0px 0px 0.8ex; bor=
der-left: 1px solid #cccccc; padding-left: 1ex;"><div>Hi Victor,</div><div>=
<br></div><div>Yes it was certainly a good read and i got some ideas from i=
t, but the code has changed quite a lot since 2017 and the patches correspo=
nd to the current code only for about 10-15%.</div><div>Maybe someone from =
the Spice team can suggest a patch to add additional mouse buttons - i am s=
ure that it would be a matter of minutes to an hour for anyone who is invol=
ved with coding the spice-vdagent project to create a general patch idea to=
 add additional mouse buttons</div></blockquote><div><br></div><div>Hello,<=
/div><div><br></div><div>I'll give it a try this morning, indeed it shouldn=
't require (much|any) new code, only flags here and there. Let's see</div><=
div><br></div><div>Kevin<br></div><div>&nbsp;</div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex" data-mce-style=3D"margin: 0px 0px 0px 0.8ex; bord=
er-left: 1px solid #cccccc; padding-left: 1ex;"><div><br></div><div>It is j=
ust a matter of forwarding them to the guest - for some reason it was decid=
ed not to add them.</div><div><br></div><div>thanks!<br></div><div><br></di=
v><br><div><br></div><blockquote style=3D"margin:0px 0px 0px 0.5em;border-l=
eft:1px solid rgb(0,0,255);padding-left:1em" data-mce-style=3D"margin: 0px =
0px 0px 0.5em; border-left: 1px solid #0000ff; padding-left: 1em;">De : Vic=
tor Toso &lt;<a href=3D"mailto:victortoso@redhat.com" target=3D"_blank" dat=
a-mce-href=3D"mailto:victortoso@redhat.com">victortoso@redhat.com</a>&gt;<b=
r> =C3=80 : <a href=3D"mailto:bruts@netc.fr" target=3D"_blank" data-mce-hre=
f=3D"mailto:bruts@netc.fr">bruts@netc.fr</a><br> Sujet : Re: [Spice-devel] =
spice-vdagent: how to enable additional mouse buttons?<br> Date : 12/05/202=
0 07:25:59 Europe/Paris<br> Copie =C3=A0 : <a href=3D"mailto:uril@redhat.co=
m" target=3D"_blank" data-mce-href=3D"mailto:uril@redhat.com">uril@redhat.c=
om</a>;<br> &nbsp;&nbsp;&nbsp;<a href=3D"mailto:spice-devel@lists.freedeskt=
op.org" target=3D"_blank" data-mce-href=3D"mailto:spice-devel@lists.freedes=
ktop.org">spice-devel@lists.freedesktop.org</a><br> <br> Hi,<br> <br> On Tu=
e, May 12, 2020 at 12:53:02AM +0200, <a href=3D"mailto:bruts@netc.fr" targe=
t=3D"_blank" data-mce-href=3D"mailto:bruts@netc.fr">bruts@netc.fr</a> wrote=
:<br> &gt; <br> &gt; <br> &gt; Uri (and others),<br> &gt; <br> &gt; I found=
 the similar question in a few corners of the internet<br> &gt; and I think=
 adding at least the additional default mouse<br> &gt; buttons should not b=
e all that much work.<br> <br> You can take a look at this proposal to addi=
ng horizontal wheel<br> support to Spice<br> <br> <a href=3D"https://lists.=
freedesktop.org/archives/spice-devel/2017-October/040558.html" rel=3D"noref=
errer" target=3D"_blank" data-mce-href=3D"https://lists.freedesktop.org/arc=
hives/spice-devel/2017-October/040558.html">https://lists.freedesktop.org/a=
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
___________________________________<br> Spice-devel mailing list<br> <a hre=
f=3D"mailto:Spice-devel@lists.freedesktop.org" target=3D"_blank" data-mce-h=
ref=3D"mailto:Spice-devel@lists.freedesktop.org">Spice-devel@lists.freedesk=
top.org</a><br> <a href=3D"https://lists.freedesktop.org/mailman/listinfo/s=
pice-devel" rel=3D"noreferrer" target=3D"_blank" data-mce-href=3D"https://l=
ists.freedesktop.org/mailman/listinfo/spice-devel">https://lists.freedeskto=
p.org/mailman/listinfo/spice-devel</a><br></blockquote></div></div><br>____=
___________________________________________<br>Spice-devel mailing list<br>=
Spice-devel@lists.freedesktop.org<br>https://lists.freedesktop.org/mailman/=
listinfo/spice-devel<br></blockquote><div><br></div></div></body></html>
------=_Part_26753415_828041932.1589356185489--


--===============1637999328==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1637999328==--

