Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD4F1D332E
	for <lists+spice-devel@lfdr.de>; Thu, 14 May 2020 16:38:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44B0A89FEA;
	Thu, 14 May 2020 14:38:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 163E089FEA
 for <spice-devel@lists.freedesktop.org>; Thu, 14 May 2020 14:38:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589467081;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=aL/Pt0tz6SS00kfbs3p8WFCquSv9t8U53F8heyNGcW8=;
 b=Sv61yCA+7IHSZC72vGH86x2aXiKQxUpQKcra4YhnT5X9/FVuaDOfeu24cyyvff3630qGe+
 oxHsnoYYOY6IiSezWy2P+e1s8XO95lkOA8FyjhuQtNw2Y2YesFgmHyQXQAasDQfT1pG2Uo
 5iSi1UxIYSnysGnwlBEo1TdS3Tjf1KQ=
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com
 [209.85.161.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-452-F0FUuDoQPzCbYbEYCKDhCg-1; Thu, 14 May 2020 10:37:49 -0400
X-MC-Unique: F0FUuDoQPzCbYbEYCKDhCg-1
Received: by mail-oo1-f70.google.com with SMTP id t140so1723363oot.22
 for <spice-devel@lists.freedesktop.org>; Thu, 14 May 2020 07:37:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aL/Pt0tz6SS00kfbs3p8WFCquSv9t8U53F8heyNGcW8=;
 b=dSe2uaHap6b9weOn6VOxhDcC3lEVDfDGtxEj+xbwqE+6FrW+HvXKqe9Pb+npXr3xVR
 H+uIzKsaawVPDqz/G3d0pVGkZ2/8ABBNA7qNmg9LqiniI/5x8t8UU34UMyRGqqev+F+B
 rBNePFEGxZ08IF+27Dyy9fbLofuP2anvMwvpPfb3yQu4cHZ1TcPB1qWEYE6+aN+LrAnX
 obZWXgL+VOVDfs2SEzYi1yKak+zkRS3+32vzZhjgWqcIDqKttiPB4iJp8hhQk/2Migfl
 WVquVXu8T3xSRs+AiiTGiQByS0phRwC4CvWd/gU+AWJAfwXHrtkVKpWHi3PqhMPT6mvg
 qV9w==
X-Gm-Message-State: AOAM531Q+kVHrWoFdW+0YJ0lCT3Qe48JVy9LwTVxoAeI/MU66Ukia7aC
 Qcg6H69ZAuI4gkE3l5uBgXA6OK8eltITRTv+9f5+puKN3zTt9RplrOBcnASsOx9Qx3t7I3o4vfR
 wD5dTur0myFc1jpKgvPbN0sFz7y9QuSiN76SeVoqjAWzhvHc=
X-Received: by 2002:aca:210a:: with SMTP id 10mr5878965oiz.92.1589467068249;
 Thu, 14 May 2020 07:37:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxxmOKeyiaeGsi4bm0va65JJDJ3D7eonqLlxEjmqzkiHNWFlFBNQzjYX9VIru7s2QcrkXyEVyGbxHSiZzF/+cc=
X-Received: by 2002:aca:210a:: with SMTP id 10mr5878950oiz.92.1589467068012;
 Thu, 14 May 2020 07:37:48 -0700 (PDT)
MIME-Version: 1.0
References: <ea-mime-5ebbbbed-7a95-56c13533@www-1.mailo.com>
In-Reply-To: <ea-mime-5ebbbbed-7a95-56c13533@www-1.mailo.com>
From: Kevin Pouget <kpouget@redhat.com>
Date: Thu, 14 May 2020 16:37:36 +0200
Message-ID: <CADJ1XR06vjWyWmqSerAFHiaOZNN-YqrHMe2FVP5c2jxpZMA2DA@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============0600042796=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0600042796==
Content-Type: multipart/alternative; boundary="000000000000f8a73805a59ca3a2"

--000000000000f8a73805a59ca3a2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I've pushed some commits to get the mouse buttons working with the VDAgent
(and only it, some bits are missing in spice-server to handle the other
types I think):

https://gitlab.freedesktop.org/kpouget/spice/-/commits/exp/mouse-bt
https://gitlab.freedesktop.org/kpouget/spice-gtk/-/commits/exp/mouse-bt
https://gitlab.freedesktop.org/kpouget/spice-protocol/-/commits/exp/mouse-b=
t
https://gitlab.freedesktop.org/kpouget/vd_agent/-/tree/exp/mouse-bt

and I uploaded a small demo of the way it works in my workstation: my mouse
has 2 extra buttons (8 and 9) that are properly forwarded
> http://people.redhat.com/~kpouget/20-05-14/mouse-bt.mkv

I hope it will work the same on your side!

On Wed, May 13, 2020 at 11:20 AM <bruts@netc.fr> wrote:

> Hi Kevin and Frediano,
>
> Yes there might be issues like Frediano is pointing out, probably they ar=
e
> not well defined, so it might be not trivial to create something for the
> public out of this.
> Still I wonder why there are these entries in
> /usr/include/linux/input-event-codes.h:
> #define BTN_MOUSE               0x110
> #define BTN_LEFT                0x110
> #define BTN_RIGHT               0x111
> #define BTN_MIDDLE              0x112
> #define BTN_SIDE                0x113
> #define BTN_EXTRA               0x114
> #define BTN_FORWARD             0x115
> #define BTN_BACK                0x116
> #define BTN_TASK                0x117
>
> They must have some meaning no? Perhaps they are matched to different
> mouse buttons, like one time to button 8, the other mouse declares it as
> button 10, that is what you mean?
>
> Still I would be very happy if Kevin would have the time to make a little
> patch, or an approach to that little patch, so I could use it for my
> individual mouse buttons, I understand it is not easy to get this out to
> the public, still if there is a patch available in the mailing list, then
> at least people can grab that and change it to their liking, right?
>
> Anyway, all the replies and help is appreciated! Let's get my thumb happy
> and give him that mouse button ;)
>
>
> De : Frediano Ziglio <fziglio@redhat.com>
> =C3=80 : Kevin Pouget <kpouget@redhat.com>
> Sujet : Re: [Spice-devel] spice-vdagent: how to enable additional mouse
> buttons?
> Date : 13/05/2020 09:49:45 Europe/Paris
> Copie =C3=A0 : bruts@netc.fr;
>    Spice devel <spice-devel@lists.freedesktop.org>
>
> Hi,
>   if I remember I think the main issue is that these buttons are kind of
> wild west.
> Basically what is button 6 (first 5 are well defined) ? It can be anythin=
g
> so it could
> be that for instance my client left becomes right on the guest.
> Maybe just changing mouse model the semantic of the buttons on the guest
> change.
> Also I remember that GTK had some problems, these buttons are not defined=
,
> I think
> they are passed from the underlying system (Windows, X11, Wayland).
>
> However I see two "workaround":
> 1- let the users take care of the mismatch. Either getting used to use a
> button
>    instead of the other or using some tools;
> 2- add a message to communicate the meaning of the various buttons (which
> can
>    change for instance changing mouse).
>
> I think 1 is what was implemented by the patches, I'd go for this way.
> I hope softwares are not associating button semantics to computer shutdow=
n
> or something "dangerous" like this.
>
> Frediano
>
>
>
>
> On Tue, May 12, 2020 at 11:58 PM <bruts@netc.fr> wrote:
>
>> Hi Victor,
>>
>> Yes it was certainly a good read and i got some ideas from it, but the
>> code has changed quite a lot since 2017 and the patches correspond to th=
e
>> current code only for about 10-15%.
>> Maybe someone from the Spice team can suggest a patch to add additional
>> mouse buttons - i am sure that it would be a matter of minutes to an hou=
r
>> for anyone who is involved with coding the spice-vdagent project to crea=
te
>> a general patch idea to add additional mouse buttons
>>
>
> Hello,
>
> I'll give it a try this morning, indeed it shouldn't require (much|any)
> new code, only flags here and there. Let's see
>
> Kevin
>
>
>>
>> It is just a matter of forwarding them to the guest - for some reason it
>> was decided not to add them.
>>
>> thanks!
>>
>>
>>
>> De : Victor Toso <victortoso@redhat.com>
>> =C3=80 : bruts@netc.fr
>> Sujet : Re: [Spice-devel] spice-vdagent: how to enable additional mouse
>> buttons?
>> Date : 12/05/2020 07:25:59 Europe/Paris
>> Copie =C3=A0 : uril@redhat.com;
>>    spice-devel@lists.freedesktop.org
>>
>> Hi,
>>
>> On Tue, May 12, 2020 at 12:53:02AM +0200, bruts@netc.fr wrote:
>> >
>> >
>> > Uri (and others),
>> >
>> > I found the similar question in a few corners of the internet
>> > and I think adding at least the additional default mouse
>> > buttons should not be all that much work.
>>
>> You can take a look at this proposal to adding horizontal wheel
>> support to Spice
>>
>>
>> https://lists.freedesktop.org/archives/spice-devel/2017-October/040558.h=
tml
>>
>> > With some guidance I could probably do it myself, though the
>> > guidance would need to be quite substantial :)
>> >
>> > The mouse and the main buttons is already forwarded and that is
>> > the main part.
>> >
>> > with xev it is clear to see which buttons work on the host, but
>> > not on the guest.
>> >
>> > Anyone with some spare time (which I know is always limited for
>> > everyone), but help me where to fix this in the code and i will
>> > write a patch - or give me a good start - or start yourself.
>> >
>> > a semi working mouse in the guest is very annoying and can be
>> > one of the critical points why to use spice (or not) - at least
>> > i know it is in my case.
>> >
>> > Thanks!!
>>
>> Cheers,
>> Victor
>>
>> _______________________________________________
>> Spice-devel mailing list
>> Spice-devel@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/spice-devel
>>
>
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel
>
>
>

--000000000000f8a73805a59ca3a2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I&#39;ve pushed some =
commits to get the mouse buttons working with the VDAgent (and only it, som=
e bits are missing in spice-server to handle the other types I think):</div=
><div><br></div><div><a href=3D"https://gitlab.freedesktop.org/kpouget/spic=
e/-/commits/exp/mouse-bt">https://gitlab.freedesktop.org/kpouget/spice/-/co=
mmits/exp/mouse-bt</a></div><div><a href=3D"https://gitlab.freedesktop.org/=
kpouget/spice-gtk/-/commits/exp/mouse-bt">https://gitlab.freedesktop.org/kp=
ouget/spice-gtk/-/commits/exp/mouse-bt</a></div><div><a href=3D"https://git=
lab.freedesktop.org/kpouget/spice-protocol/-/commits/exp/mouse-bt">https://=
gitlab.freedesktop.org/kpouget/spice-protocol/-/commits/exp/mouse-bt</a></d=
iv><div><a href=3D"https://gitlab.freedesktop.org/kpouget/vd_agent/-/tree/e=
xp/mouse-bt">https://gitlab.freedesktop.org/kpouget/vd_agent/-/tree/exp/mou=
se-bt</a></div><div><br></div><div>and I uploaded a small demo of the way i=
t works in my workstation: my mouse has 2 extra buttons (8 and 9) that are =
properly forwarded<br></div><div>&gt; <a href=3D"http://people.redhat.com/~=
kpouget/20-05-14/mouse-bt.mkv">http://people.redhat.com/~kpouget/20-05-14/m=
ouse-bt.mkv</a> <br></div><div><br></div><div>I hope it will work the same =
on your side!<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Wed, May 13, 2020 at 11:20 AM &lt;<a href=3D"mail=
to:bruts@netc.fr">bruts@netc.fr</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div>Hi Kevin and Frediano,</div><div><br>=
</div><div>Yes there might be issues like Frediano is pointing out, probabl=
y they are not well defined, so it might be not trivial to create something=
 for the public out of this.</div><div>Still I wonder why there are these e=
ntries in /usr/include/linux/input-event-codes.h:<br>#define BTN_MOUSE=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 0x110<br>#define BTN_LEFT=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x110<br>#define BTN_RIGHT=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 0x111<br>#define BTN_MIDDLE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x112<br>#define BTN_SIDE=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 0x113<br>#define BTN_EXTRA=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x114<br>#define BTN_FORWARD=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x=
115<br>#define BTN_BACK=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x116<br>#define BTN_TASK=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 0x117<br></div><div><br></div><div>They must have some meaning no? P=
erhaps they are matched to different mouse buttons, like one time to button=
 8, the other mouse declares it as button 10, that is what you mean?</div><=
div><br></div><div>Still I would be very happy if Kevin would have the time=
 to make a little patch, or an approach to that little patch, so I could us=
e it for my individual mouse buttons, I understand it is not easy to get th=
is out to the public, still if there is a patch available in the mailing li=
st, then at least people can grab that and change it to their liking, right=
?</div><div><br></div><div>Anyway, all the replies and help is appreciated!=
 Let&#39;s get my thumb happy and give him that mouse button ;)<br></div><d=
iv><br></div><br><blockquote type=3D"cite" style=3D"margin:0px 0px 0px 0.5e=
m;border-left:1px solid rgb(0,0,255);padding-left:1em">De : Frediano Ziglio=
 &lt;<a href=3D"mailto:fziglio@redhat.com" target=3D"_blank">fziglio@redhat=
.com</a>&gt;<br>
=C3=80 : Kevin Pouget &lt;<a href=3D"mailto:kpouget@redhat.com" target=3D"_=
blank">kpouget@redhat.com</a>&gt;<br>
Sujet : Re: [Spice-devel] spice-vdagent: how to enable additional mouse but=
tons?<br>
Date : 13/05/2020 09:49:45 Europe/Paris<br>
Copie =C3=A0 : <a href=3D"mailto:bruts@netc.fr" target=3D"_blank">bruts@net=
c.fr</a>;<br>
=C2=A0=C2=A0=C2=A0Spice devel &lt;<a href=3D"mailto:spice-devel@lists.freed=
esktop.org" target=3D"_blank">spice-devel@lists.freedesktop.org</a>&gt;<br>
<br>
<div style=3D"font-family:courier new,courier,monaco,monospace,sans-serif;f=
ont-size:12pt;color:rgb(0,0,0)"><div>Hi,<br></div><div>=C2=A0 if I remember=
 I think the main issue is that these buttons are kind of wild west.<br></d=
iv><div>Basically what is button 6 (first 5 are well defined) ? It can be a=
nything so it could<br></div><div>be that for instance my client left becom=
es right on the guest.<br></div><div>Maybe just changing mouse model the se=
mantic of the buttons on the guest change.<br></div><div>Also I remember th=
at GTK had some problems, these buttons are not defined, I think<br></div><=
div>they are passed from the underlying system (Windows, X11, Wayland).<br>=
</div><div><br></div><div>However I see two &quot;workaround&quot;:<br></di=
v><div>1- let the users take care of the mismatch. Either getting used to u=
se a button<br></div><div>=C2=A0=C2=A0 instead of the other or using some t=
ools;<br></div><div>2- add a message to communicate the meaning of the vari=
ous buttons (which can<br></div><div>=C2=A0=C2=A0 change for instance chang=
ing mouse).<br></div><div><br></div><div>I think 1 is what was implemented =
by the patches, I&#39;d go for this way.<br></div><div>I hope softwares are=
 not associating button semantics to computer shutdown<br></div><div>or som=
ething &quot;dangerous&quot; like this.<br></div><div><br></div><div>Fredia=
no<br></div><blockquote style=3D"border-left:2px solid rgb(16,16,255);margi=
n-left:5px;padding-left:5px;color:rgb(0,0,0);font-weight:normal;font-style:=
normal;text-decoration:none;font-family:Helvetica,Arial,sans-serif;font-siz=
e:12pt"><div><br></div><div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, May 12=
, 2020 at 11:58 PM &lt;<a>bruts@netc.fr</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div>Hi Victor,</div><div><br></div>=
<div>Yes it was certainly a good read and i got some ideas from it, but the=
 code has changed quite a lot since 2017 and the patches correspond to the =
current code only for about 10-15%.</div><div>Maybe someone from the Spice =
team can suggest a patch to add additional mouse buttons - i am sure that i=
t would be a matter of minutes to an hour for anyone who is involved with c=
oding the spice-vdagent project to create a general patch idea to add addit=
ional mouse buttons</div></blockquote><div><br></div><div>Hello,</div><div>=
<br></div><div>I&#39;ll give it a try this morning, indeed it shouldn&#39;t=
 require (much|any) new code, only flags here and there. Let&#39;s see</div=
><div><br></div><div>Kevin<br></div><div>=C2=A0</div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div><br></div><div>It is just a matter of forw=
arding them to the guest - for some reason it was decided not to add them.<=
/div><div><br></div><div>thanks!<br></div><div><br></div><br><div><br></div=
><blockquote style=3D"margin:0px 0px 0px 0.5em;border-left:1px solid rgb(0,=
0,255);padding-left:1em">De : Victor Toso &lt;<a>victortoso@redhat.com</a>&=
gt;<br> =C3=80 : <a>bruts@netc.fr</a><br> Sujet : Re: [Spice-devel] spice-v=
dagent: how to enable additional mouse buttons?<br> Date : 12/05/2020 07:25=
:59 Europe/Paris<br> Copie =C3=A0 : <a>uril@redhat.com</a>;<br> =C2=A0=C2=
=A0=C2=A0<a>spice-devel@lists.freedesktop.org</a><br> <br> Hi,<br> <br> On =
Tue, May 12, 2020 at 12:53:02AM +0200, <a>bruts@netc.fr</a> wrote:<br> &gt;=
 <br> &gt; <br> &gt; Uri (and others),<br> &gt; <br> &gt; I found the simil=
ar question in a few corners of the internet<br> &gt; and I think adding at=
 least the additional default mouse<br> &gt; buttons should not be all that=
 much work.<br> <br> You can take a look at this proposal to adding horizon=
tal wheel<br> support to Spice<br> <br> <a href=3D"https://lists.freedeskto=
p.org/archives/spice-devel/2017-October/040558.html" rel=3D"noreferrer" tar=
get=3D"_blank">https://lists.freedesktop.org/archives/spice-devel/2017-Octo=
ber/040558.html</a><br> <br> &gt; With some guidance I could probably do it=
 myself, though the<br> &gt; guidance would need to be quite substantial :)=
<br> &gt; <br> &gt; The mouse and the main buttons is already forwarded and=
 that is<br> &gt; the main part.<br> &gt; <br> &gt; with xev it is clear to=
 see which buttons work on the host, but<br> &gt; not on the guest.<br> &gt=
; <br> &gt; Anyone with some spare time (which I know is always limited for=
<br> &gt; everyone), but help me where to fix this in the code and i will<b=
r> &gt; write a patch - or give me a good start - or start yourself.<br> &g=
t; <br> &gt; a semi working mouse in the guest is very annoying and can be<=
br> &gt; one of the critical points why to use spice (or not) - at least<br=
> &gt; i know it is in my case.<br> &gt; <br> &gt; Thanks!!<br> <br> Cheers=
,<br> Victor<br> <br></blockquote>_________________________________________=
______<br> Spice-devel mailing list<br> <a>Spice-devel@lists.freedesktop.or=
g</a><br> <a href=3D"https://lists.freedesktop.org/mailman/listinfo/spice-d=
evel" rel=3D"noreferrer" target=3D"_blank">https://lists.freedesktop.org/ma=
ilman/listinfo/spice-devel</a><br></blockquote></div></div><br>____________=
___________________________________<br>Spice-devel mailing list<br><a href=
=3D"mailto:Spice-devel@lists.freedesktop.org" target=3D"_blank">Spice-devel=
@lists.freedesktop.org</a><br><a href=3D"https://lists.freedesktop.org/mail=
man/listinfo/spice-devel" rel=3D"noreferrer" target=3D"_blank">https://list=
s.freedesktop.org/mailman/listinfo/spice-devel</a><br></blockquote><div><br=
></div></div></blockquote>
</blockquote></div>

--000000000000f8a73805a59ca3a2--


--===============0600042796==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0600042796==--

