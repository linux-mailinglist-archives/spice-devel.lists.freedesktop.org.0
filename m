Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F591D08D8
	for <lists+spice-devel@lfdr.de>; Wed, 13 May 2020 08:43:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DB6A88E40;
	Wed, 13 May 2020 06:43:49 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C78FD88E40
 for <spice-devel@lists.freedesktop.org>; Wed, 13 May 2020 06:43:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589352226;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ph24lUCtmTXMugYg0YJDg81p3RqGwxLUsXsmYjly+CI=;
 b=N5VYR0paRFA50uNbjDSkDtLT8NNJo+/BVmgHdfX0+USQkd0eomQljPpOH2n4bg5TFL9ipV
 /vpnzFg1uQoHg61AW9uCnmg+jqZPPrH0YysapO0WV9wNGQbNC3oNmELWtJexinSmwfQlF9
 VKuoMt2/AD4+o/c5wbqk6+ueXa326OU=
Received: from mail-oi1-f199.google.com (mail-oi1-f199.google.com
 [209.85.167.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-58-w1CjY3S2N-utWHUfzlX75w-1; Wed, 13 May 2020 02:43:41 -0400
X-MC-Unique: w1CjY3S2N-utWHUfzlX75w-1
Received: by mail-oi1-f199.google.com with SMTP id u204so15950012oia.4
 for <spice-devel@lists.freedesktop.org>; Tue, 12 May 2020 23:43:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yquoDeKyio/cXNRMdAbM8wpfk5ThO1HuSMIt24KPuns=;
 b=J+lHrrrqQwzfEe8GqBl8HjQGUtjNmlBoa9K3X88OdcwNub1y9jILOpRAVlYkmrb26k
 g89mZuoRfO9BkrBX86L3ScMfynIOzABIlwb9sqk1KjUCcFMqWMrf7z7XtqJjtXz51sbO
 2Y6VTjtf1NiHbl3vDW/ZEOv9/a/ycPqSMHzOPAW7C2GUUpdDUbvilD3Mz45zz7RkTKnh
 ypaIVDacdWwy+pOGMz6DVUbv7aYxxFQgprmPAyW1PBwpONBvjeFLKIRoqGRjsUvosZj2
 FV8QXSVVp+iyu6Xf96oG1y+uRpgDdq/ZmYX2ruUTt4hiHv+Ufrn/SV4jEmy5OzogBF5Y
 197A==
X-Gm-Message-State: AGi0PuaYPsybj3eob1s4Yi/8RFnjjfI6V/Qo+LMB9RYFyhKp/x+AlYD9
 xQx/IKWvzys+riGPYaQ22VepQXPIPb/lhrpsP8hwqD+LS1BUQ3sEyLLNIy3eF3exdfzAAA1u8Be
 GxBeRZ0hsjdXLxKe2OKK4Ydw5gko1wMMxiBgTQjY2PDicAR0=
X-Received: by 2002:a05:6830:2421:: with SMTP id
 k1mr18397174ots.279.1589352220228; 
 Tue, 12 May 2020 23:43:40 -0700 (PDT)
X-Google-Smtp-Source: APiQypKfSGNNvWoAwNIDwCszNM71WGG/2lMOKilAm7UBVmc3It2SPONoqyP86een73WqfVQqi6qku2CJyKLWwMF3fak=
X-Received: by 2002:a05:6830:2421:: with SMTP id
 k1mr18397159ots.279.1589352219978; 
 Tue, 12 May 2020 23:43:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200512052559.3cqwgmrlugzqdbld@wingsuit>
 <ea-mime-5ebb1c02-6f46-557ff269@www-1.mailo.com>
In-Reply-To: <ea-mime-5ebb1c02-6f46-557ff269@www-1.mailo.com>
From: Kevin Pouget <kpouget@redhat.com>
Date: Wed, 13 May 2020 08:43:28 +0200
Message-ID: <CADJ1XR2W8G6xDTELsTJB55q+eAG_7iCbS5Dukfz2HXtaxpOP2Q@mail.gmail.com>
To: bruts@netc.fr
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
Cc: Spice devel <spice-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============1881185594=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1881185594==
Content-Type: multipart/alternative; boundary="0000000000007ec94805a581e66a"

--0000000000007ec94805a581e66a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 12, 2020 at 11:58 PM <bruts@netc.fr> wrote:

> Hi Victor,
>
> Yes it was certainly a good read and i got some ideas from it, but the
> code has changed quite a lot since 2017 and the patches correspond to the
> current code only for about 10-15%.
> Maybe someone from the Spice team can suggest a patch to add additional
> mouse buttons - i am sure that it would be a matter of minutes to an hour
> for anyone who is involved with coding the spice-vdagent project to creat=
e
> a general patch idea to add additional mouse buttons
>

Hello,

I'll give it a try this morning, indeed it shouldn't require (much|any) new
code, only flags here and there. Let's see

Kevin


> It is just a matter of forwarding them to the guest - for some reason it
> was decided not to add them.
>
> thanks!
>
>
>
> De : Victor Toso <victortoso@redhat.com>
> =C3=80 : bruts@netc.fr
> Sujet : Re: [Spice-devel] spice-vdagent: how to enable additional mouse
> buttons?
> Date : 12/05/2020 07:25:59 Europe/Paris
> Copie =C3=A0 : uril@redhat.com;
>    spice-devel@lists.freedesktop.org
>
> Hi,
>
> On Tue, May 12, 2020 at 12:53:02AM +0200, bruts@netc.fr wrote:
> >
> >
> > Uri (and others),
> >
> > I found the similar question in a few corners of the internet
> > and I think adding at least the additional default mouse
> > buttons should not be all that much work.
>
> You can take a look at this proposal to adding horizontal wheel
> support to Spice
>
> https://lists.freedesktop.org/archives/spice-devel/2017-October/040558.ht=
ml
>
> > With some guidance I could probably do it myself, though the
> > guidance would need to be quite substantial :)
> >
> > The mouse and the main buttons is already forwarded and that is
> > the main part.
> >
> > with xev it is clear to see which buttons work on the host, but
> > not on the guest.
> >
> > Anyone with some spare time (which I know is always limited for
> > everyone), but help me where to fix this in the code and i will
> > write a patch - or give me a good start - or start yourself.
> >
> > a semi working mouse in the guest is very annoying and can be
> > one of the critical points why to use spice (or not) - at least
> > i know it is in my case.
> >
> > Thanks!!
>
> Cheers,
> Victor
>
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel
>

--0000000000007ec94805a581e66a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, May 12, 2020 at 11:58 PM &lt;=
<a href=3D"mailto:bruts@netc.fr">bruts@netc.fr</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div>Hi Victor,</div><div><br=
></div><div>Yes it was certainly a good read and i got some ideas from it, =
but the code has changed quite a lot since 2017 and the patches correspond =
to the current code only for about 10-15%.</div><div>Maybe someone from the=
 Spice team can suggest a patch to add additional mouse buttons - i am sure=
 that it would be a matter of minutes to an hour for anyone who is involved=
 with coding the spice-vdagent project to create a general patch idea to ad=
d additional mouse buttons</div></blockquote><div><br></div><div>Hello,</di=
v><div><br></div><div>I&#39;ll give it a try this morning, indeed it should=
n&#39;t require (much|any) new code, only flags here and there. Let&#39;s s=
ee</div><div><br></div><div>Kevin<br></div><div>=C2=A0</div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div></div><div>It is just a matter of f=
orwarding them to the guest - for some reason it was decided not to add the=
m.</div><div><br></div><div>thanks!<br></div><div><br></div><br><br><blockq=
uote type=3D"cite" style=3D"margin:0px 0px 0px 0.5em;border-left:1px solid =
rgb(0,0,255);padding-left:1em">De : Victor Toso &lt;<a href=3D"mailto:victo=
rtoso@redhat.com" target=3D"_blank">victortoso@redhat.com</a>&gt;<br>
=C3=80 : <a href=3D"mailto:bruts@netc.fr" target=3D"_blank">bruts@netc.fr</=
a><br>
Sujet : Re: [Spice-devel] spice-vdagent: how to enable additional mouse but=
tons?<br>
Date : 12/05/2020 07:25:59 Europe/Paris<br>
Copie =C3=A0 : <a href=3D"mailto:uril@redhat.com" target=3D"_blank">uril@re=
dhat.com</a>;<br>
=C2=A0=C2=A0=C2=A0<a href=3D"mailto:spice-devel@lists.freedesktop.org" targ=
et=3D"_blank">spice-devel@lists.freedesktop.org</a><br>
<br>
Hi,<br>
<br>
On Tue, May 12, 2020 at 12:53:02AM +0200, <a href=3D"mailto:bruts@netc.fr" =
target=3D"_blank">bruts@netc.fr</a> wrote:<br>
&gt; <br>
&gt; <br>
&gt; Uri (and others),<br>
&gt; <br>
&gt; I found the similar question in a few corners of the internet<br>
&gt; and I think adding at least the additional default mouse<br>
&gt; buttons should not be all that much work.<br>
<br>
You can take a look at this proposal to adding horizontal wheel<br>
support to Spice<br>
<br>
=09<a href=3D"https://lists.freedesktop.org/archives/spice-devel/2017-Octob=
er/040558.html" rel=3D"noreferrer" target=3D"_blank">https://lists.freedesk=
top.org/archives/spice-devel/2017-October/040558.html</a><br>
<br>
&gt; With some guidance I could probably do it myself, though the<br>
&gt; guidance would need to be quite substantial :)<br>
&gt; <br>
&gt; The mouse and the main buttons is already forwarded and that is<br>
&gt; the main part.<br>
&gt; <br>
&gt; with xev it is clear to see which buttons work on the host, but<br>
&gt; not on the guest.<br>
&gt; <br>
&gt; Anyone with some spare time (which I know is always limited for<br>
&gt; everyone), but help me where to fix this in the code and i will<br>
&gt; write a patch - or give me a good start - or start yourself.<br>
&gt; <br>
&gt; a semi working mouse in the guest is very annoying and can be<br>
&gt; one of the critical points why to use spice (or not) - at least<br>
&gt; i know it is in my case.<br>
&gt; <br>
&gt; Thanks!!<br>
<br>
Cheers,<br>
Victor<br>
<br></blockquote>
_______________________________________________<br>
Spice-devel mailing list<br>
<a href=3D"mailto:Spice-devel@lists.freedesktop.org" target=3D"_blank">Spic=
e-devel@lists.freedesktop.org</a><br>
<a href=3D"https://lists.freedesktop.org/mailman/listinfo/spice-devel" rel=
=3D"noreferrer" target=3D"_blank">https://lists.freedesktop.org/mailman/lis=
tinfo/spice-devel</a><br>
</blockquote></div></div>

--0000000000007ec94805a581e66a--


--===============1881185594==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1881185594==--

