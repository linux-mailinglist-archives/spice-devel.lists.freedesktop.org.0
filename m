Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D49213496
	for <lists+spice-devel@lfdr.de>; Fri,  3 Jul 2020 09:03:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 526E86E8D3;
	Fri,  3 Jul 2020 07:03:26 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B047E6E8D3
 for <spice-devel@lists.freedesktop.org>; Fri,  3 Jul 2020 07:03:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1593759803;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ndGn0ixnwTx0Nrv0bIwaCM2U1k7u+Wk1R/KkbTPBzNM=;
 b=IukS5evuNZ6gpZg7Odm8GSJbw4d2ULaJWCJclgXX82DiPmFdbqB9jby4ckePaXzM33GQ4O
 iRmre4RO4UoqDG2OE+5piH2an5GMeLY8fSvTQ0K4N3WjhNM3g/61vatcbXPb+ff3+te2go
 3Hk0tMkZkCO8e7SGBcSTN3kpWk6yzhM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-265-0chp0wgqNES6UiJlZ4Jyiw-1; Fri, 03 Jul 2020 03:03:15 -0400
X-MC-Unique: 0chp0wgqNES6UiJlZ4Jyiw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4F1557BBA
 for <spice-devel@lists.freedesktop.org>; Fri,  3 Jul 2020 07:03:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4360B2B4C8
 for <spice-devel@lists.freedesktop.org>; Fri,  3 Jul 2020 07:03:14 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3A9B76C9C4;
 Fri,  3 Jul 2020 07:03:14 +0000 (UTC)
Date: Fri, 3 Jul 2020 03:03:13 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Julien Rope <jrope@redhat.com>
Message-ID: <2041603877.33468028.1593759793858.JavaMail.zimbra@redhat.com>
In-Reply-To: <CAD5yKqxLyUhX0Eq9XffjeEHOjY5yVWxH-5rg2=7oZTuLfrGVEQ@mail.gmail.com>
References: <CADJ1XR2+S76nWdj4ahYQxtw5PkR3cTwz+MrP5Q=7LktvL611jQ@mail.gmail.com>
 <20200701141507.oljra4ncxridh6kl@wingsuit>
 <20200702101045.GG1888119@redhat.com>
 <231701763.32923904.1593698964424.JavaMail.zimbra@redhat.com>
 <CAD5yKqxLyUhX0Eq9XffjeEHOjY5yVWxH-5rg2=7oZTuLfrGVEQ@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.193.100, 10.4.195.25]
Thread-Topic: Identifying and removing potentially divisive language
Thread-Index: W3I3g3q3V/+uVCYrEyWP/pqc7tOolQ==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=fziglio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] Identifying and removing potentially divisive
 language
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
Content-Type: multipart/mixed; boundary="===============0821383999=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0821383999==
Content-Type: multipart/alternative; 
	boundary="----=_Part_33468027_682813514.1593759793857"

------=_Part_33468027_682813514.1593759793857
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

> Well... Your examples are contradicting: the "master/slave" relation used=
 in
> electronics or psychology are re-using the slavery concepts too... This
> doesn't make it right :-)

That depends on the etymology and history, not an expert on this.=20
I think there's a mild root, but still this require some technical language=
 explanation.=20
They can contradict only if they came from 2 separate roots, if this is tru=
e is means the there are multiple concepts involved not only one.=20

> Now I'm not working in electronics or psychology, so I'm not going to try=
 and
> change their wording.

> Regarding changing it now rather than waiting: Daniel is mentioning two h=
ints
> - git, or github. As our code is hosted in gitlab, I would add that one t=
oo
> :)
> The idea being that if they choose a new word, it will become the new
> default, and we could align with them for consistency, rather than arguin=
g
> among us and picking a potentially different name

It makes sense, but more at Gitlab level, not a world global de-facto for m=
e=20

> This doesn't prevent us from changing words that are in our code (like
> blacklist/whitelist?). I think there's not a lot of them.

> Regards,
> Julien

> Le jeu. 2 juil. 2020 =C3=A0 16:09, Frediano Ziglio < fziglio@redhat.com >=
 a =C3=A9crit
> :

> > > On Wed, Jul 01, 2020 at 04:15:07PM +0200, Victor Toso wrote:
>=20
> > > > Hi,
>=20
> > > >
>=20
> > > > On Wed, Jul 01, 2020 at 10:03:10AM +0200, Kevin Pouget wrote:
>=20
> > > > > Hello SPICE community,
>=20
> > > > >
>=20
> > > > > following Chris Wright (Red Hat CTO) blog post on "Making open
>=20
> > > > > source more inclusive by eradicating problematic language" [1],
>=20
> > > > > I would like to suggest that we have a look at SPICE source
>=20
> > > > > code to find out if/where such language is used and how to
>=20
> > > > > remove it.
>=20
> > > > >
>=20
> > > > > To illustrate the motivations of this move, consider the phrase
>=20
> > > > > "the final solution". I am quite sure you would agree that
>=20
> > > > > these words cannot be used inside a project. You would agree
>=20
> > > > > because the WWII events are still in minds and not so ancient
>=20
> > > > > yet. Git "master", or the "master/slave" pattern may not
>=20
> > > > > trigger similar thoughts if your ancestors didn't suffer
>=20
> > > > > slavery; "whitelist/blacklist" neither, if the color of your
>=20
> > > > > skin doesn't get you into trouble (white=3Dallow, black=3Ddeny).
>=20
> > > > > Overall, I would advise, when thinking about these questions,
>=20
> > > > > not to forget on which side your history/country/skin
>=20
> > > > > color/sexual orientation sits you. If it's the oppressor side,
>=20
> > > > > you're not at the right place to say it's not relevant.
>=20
> > > > >
>=20
> > > > > ---
>=20
> > > > >
>=20
> > > > > I had a quick `grep` look at SPICE code base, searching for
>=20
> > > > > `blacklist/whitelist/slave` and I could only find very few
>=20
> > > > > occurrences of these words, which is nice. Can you find other
>=20
> > > > > problem words?
>=20
> > > > >
>=20
> > > > > `master` is used for git default's branch, but not much
>=20
> > > > > elsewhere. Let's discuss if we could get rid of this one, for
>=20
> > > > > instance changing it to `main` (just a suggestion). I don't
>=20
> > > > > think that it can break that many things (only the CI comes to
>=20
> > > > > my mind, where the `master` branch may be treated differently)
>=20
> > > > > as git name default branch's name is often omitted in the usual
>=20
> > > > > workflows.
>=20
> > > > >
>=20
> > > > > Please share your thoughts about this
>=20
> > > >
>=20
> > > > Not a native english speaker but I've read a few discussions
>=20
> > > > around the user of master as git as in master copy instead of
>=20
> > > > master/slave. Another examples of the use of master from native
>=20
> > > > speakers included master as in school teacher or someone that is
>=20
> > > > in charge of something (the offense being where the subject of
>=20
> > > > control is the slave).
>=20
> > > >
>=20
> > > > Still, I don't really mind to changing it to main, even more if
>=20
> > > > there are people that feel this can really be offensive in some
>=20
> > > > way..
>=20
> > >
>=20
> > > I think the primary downside in changing the branch name is if we
>=20
> > > end up with different branch names chosen by each project. There is
>=20
> > > value in the fact that essentially every project uses the same
>=20
> > > branch name for their latest development branch, as it gives end
>=20
> > > users consistent expectations.
>=20
> > >
>=20
> > > I'm in favour of changing the branch name, but my inclination is
>=20
> > > to wait and see a little longer, in order to identify what the
>=20
> > > new defacto standard ends up being. "main" is a good bet as a new
>=20
> > > standard, but it would be nice to see it "in action".
>=20
> > >
>=20
> > > I'd be looking for two possible signs
>=20
> > >
>=20
> > > Whether the Git maintainers themselves decide to standardize
>=20
> > > on a new term.
>=20
> > >
>=20
> > > What GitHub actually decide upon & roll out.
>=20
> > >
>=20
> > > Either of those two decisions will set a defacto standard across a
>=20
> > > vast number of projects, and thus it will be beneficial to have
>=20
> > > alignment with those decisisons.
>=20
> > >
>=20
> > > Regards,
>=20
> > > Daniel
>=20

> > Hi,
>=20
> > I have different feeling about these changes. On one side I agree with
>=20
> > Michal that these changes appears positive but they are potentially
>=20
> > aggravating the real issue just hiding the problem.
>=20
> > About the words I think "master" have multiple meaning, removing blindl=
y
>=20
> > because some meaning could remember some bad memories looks excessive.
>=20
> > And even if this word is used in the "master&slave" reference hinting
>=20
> > human slavery there are on the other side many uses (like master&slave
>=20
> > relationship in electronic circuit or master&slave used in communicatio=
n
>=20
> > or in psychology) were this is far from human slavery.
>=20
> > "blacklist" is very similar, it's used in a lot of places without negat=
ive
>=20
> > references, "black" is simply a color which, being usually associated
>=20
> > with no light is seen negative, not for race discrimination (like yin
>=20
> > and yang concept). I checked multiple dictionaries and hardly find
>=20
> > races references for "blacklist". For the same reasons we should remove
>=20
> > wording like "dark", "white", "yellow", "black".
>=20

> > About the "master" branch technically can be changed easily. I won't
>=20
> > wait a "de-facto" change, if all project would wait a "de-facto" change
>=20
> > the only name would be "master"! So if most of the group agree to chang=
e
>=20
> > and like "main" I would just rename to "main".
>=20

> > Regards,
>=20
> > Frediano
>=20

> > _______________________________________________
>=20
> > Spice-devel mailing list
>=20
> > Spice-devel@lists.freedesktop.org
>=20
> > https://lists.freedesktop.org/mailman/listinfo/spice-devel
>=20

> --

> Julien ROP=C3=89

> Senior Software Engineer - SPICE

> jrope@redhat.com

------=_Part_33468027_682813514.1593759793857
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"font-family: courier new,courier,monaco,monospace=
,sans-serif; font-size: 12pt; color: #000000"><blockquote style=3D"border-l=
eft:2px solid #1010FF;margin-left:5px;padding-left:5px;color:#000;font-weig=
ht:normal;font-style:normal;text-decoration:none;font-family:Helvetica,Aria=
l,sans-serif;font-size:12pt;" data-mce-style=3D"border-left: 2px solid #101=
0FF; margin-left: 5px; padding-left: 5px; color: #000; font-weight: normal;=
 font-style: normal; text-decoration: none; font-family: Helvetica,Arial,sa=
ns-serif; font-size: 12pt;"><div dir=3D"ltr"><div><br></div><div>Well... Yo=
ur examples are contradicting: the "master/slave" relation used in electron=
ics or psychology are re-using the slavery concepts too... This doesn't mak=
e it right :-)</div></div></blockquote><div>That depends on the etymology a=
nd history, not an expert on this.<br></div><div>I think there's a mild roo=
t, but still this require some technical language explanation.<br></div><di=
v>They can contradict only if they came from 2 separate roots, if this is t=
rue is means the there are multiple concepts involved not only one.<br></di=
v><blockquote style=3D"border-left:2px solid #1010FF;margin-left:5px;paddin=
g-left:5px;color:#000;font-weight:normal;font-style:normal;text-decoration:=
none;font-family:Helvetica,Arial,sans-serif;font-size:12pt;" data-mce-style=
=3D"border-left: 2px solid #1010FF; margin-left: 5px; padding-left: 5px; co=
lor: #000; font-weight: normal; font-style: normal; text-decoration: none; =
font-family: Helvetica,Arial,sans-serif; font-size: 12pt;"><div dir=3D"ltr"=
><div>Now I'm not working in electronics or psychology, so I'm not going to=
 try and change their wording. <br></div><div><br></div><div>Regarding chan=
ging it now rather than waiting: Daniel is mentioning two hints - git, or g=
ithub. As our code is hosted in gitlab, I would add that one too :)</div><d=
iv>The idea being that if they choose a new word, it will become the new de=
fault, and we could align with them for consistency, rather than arguing am=
ong us and picking a potentially different name<br></div></div></blockquote=
><div>It makes sense, but more at Gitlab level, not a world global de-facto=
 for me<br></div><blockquote style=3D"border-left:2px solid #1010FF;margin-=
left:5px;padding-left:5px;color:#000;font-weight:normal;font-style:normal;t=
ext-decoration:none;font-family:Helvetica,Arial,sans-serif;font-size:12pt;"=
 data-mce-style=3D"border-left: 2px solid #1010FF; margin-left: 5px; paddin=
g-left: 5px; color: #000; font-weight: normal; font-style: normal; text-dec=
oration: none; font-family: Helvetica,Arial,sans-serif; font-size: 12pt;"><=
div dir=3D"ltr"><div>This doesn't prevent us from changing words that are i=
n our code (like blacklist/whitelist?). I think there's not a lot of them.<=
/div><div><br></div><div>Regards,</div><div>Julien<br></div><div><br></div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
Le&nbsp;jeu. 2 juil. 2020 =C3=A0&nbsp;16:09, Frediano Ziglio &lt;<a href=3D=
"mailto:fziglio@redhat.com" target=3D"_blank" data-mce-href=3D"mailto:fzigl=
io@redhat.com">fziglio@redhat.com</a>&gt; a =C3=A9crit&nbsp;:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex" data-mce-style=3D"margin: 0px=
 0px 0px 0.8ex; border-left: 1px solid #cccccc; padding-left: 1ex;"><br> &g=
t; On Wed, Jul 01, 2020 at 04:15:07PM +0200, Victor Toso wrote:<br> &gt; &g=
t; Hi,<br> &gt; &gt; <br> &gt; &gt; On Wed, Jul 01, 2020 at 10:03:10AM +020=
0, Kevin Pouget wrote:<br> &gt; &gt; &gt; Hello SPICE community,<br> &gt; &=
gt; &gt; <br> &gt; &gt; &gt; following Chris Wright (Red Hat CTO) blog post=
 on "Making open<br> &gt; &gt; &gt; source more inclusive by eradicating pr=
oblematic language" [1],<br> &gt; &gt; &gt; I would like to suggest that we=
 have a look at SPICE source<br> &gt; &gt; &gt; code to find out if/where s=
uch language is used and how to<br> &gt; &gt; &gt; remove it.<br> &gt; &gt;=
 &gt; <br> &gt; &gt; &gt; To illustrate the motivations of this move, consi=
der the phrase<br> &gt; &gt; &gt; "the final solution". I am quite sure you=
 would agree that<br> &gt; &gt; &gt; these words cannot be used inside a pr=
oject. You would agree<br> &gt; &gt; &gt; because the WWII events are still=
 in minds and not so ancient<br> &gt; &gt; &gt; yet.&nbsp; Git "master", or=
 the "master/slave" pattern may not<br> &gt; &gt; &gt; trigger similar thou=
ghts if your ancestors didn't suffer<br> &gt; &gt; &gt; slavery; "whitelist=
/blacklist" neither, if the color of your<br> &gt; &gt; &gt; skin doesn't g=
et you into trouble (white=3Dallow, black=3Ddeny).<br> &gt; &gt; &gt; Overa=
ll, I would advise, when thinking about these questions,<br> &gt; &gt; &gt;=
 not to forget on which side your history/country/skin<br> &gt; &gt; &gt; c=
olor/sexual orientation sits you. If it's the oppressor side,<br> &gt; &gt;=
 &gt; you're not at the right place to say it's not relevant.<br> &gt; &gt;=
 &gt; <br> &gt; &gt; &gt; ---<br> &gt; &gt; &gt; <br> &gt; &gt; &gt; I had =
a quick `grep` look at SPICE code base, searching for<br> &gt; &gt; &gt; `b=
lacklist/whitelist/slave` and I could only find very few<br> &gt; &gt; &gt;=
 occurrences of these words, which is nice. Can you find other<br> &gt; &gt=
; &gt; problem words?<br> &gt; &gt; &gt; <br> &gt; &gt; &gt; `master` is us=
ed for git default's branch, but not much<br> &gt; &gt; &gt; elsewhere. Let=
's discuss if we could get rid of this one, for<br> &gt; &gt; &gt; instance=
 changing it to `main` (just a suggestion). I don't<br> &gt; &gt; &gt; thin=
k that it can break that many things (only the CI comes to<br> &gt; &gt; &g=
t; my mind, where the `master` branch may be treated differently)<br> &gt; =
&gt; &gt; as git name default branch's name is often omitted in the usual<b=
r> &gt; &gt; &gt; workflows.<br> &gt; &gt; &gt; <br> &gt; &gt; &gt; Please =
share your thoughts about this<br> &gt; &gt; <br> &gt; &gt; Not a native en=
glish speaker but I've read a few discussions<br> &gt; &gt; around the user=
 of master as git as in master copy instead of<br> &gt; &gt; master/slave. =
Another examples of the use of master from native<br> &gt; &gt; speakers in=
cluded master as in school teacher or someone that is<br> &gt; &gt; in char=
ge of something (the offense being where the subject of<br> &gt; &gt; contr=
ol is the slave).<br> &gt; &gt; <br> &gt; &gt; Still, I don't really mind t=
o changing it to main, even more if<br> &gt; &gt; there are people that fee=
l this can really be offensive in some<br> &gt; &gt; way..<br> &gt; <br> &g=
t; I think the primary downside in changing the branch name is if we<br> &g=
t; end up with different branch names chosen by each project. There is<br> =
&gt; value in the fact that essentially every project uses the same<br> &gt=
; branch name for their latest development branch, as it gives end<br> &gt;=
 users consistent expectations.<br> &gt; <br> &gt; I'm in favour of changin=
g the branch name, but my inclination is<br> &gt; to wait and see a little =
longer, in order to identify what the<br> &gt; new defacto standard ends up=
 being. "main" is a good bet as a new<br> &gt; standard, but it would be ni=
ce to see it "in action".<br> &gt; <br> &gt; I'd be looking for two possibl=
e signs<br> &gt; <br> &gt; Whether the Git maintainers themselves decide to=
 standardize<br> &gt; on a new term.<br> &gt; <br> &gt; What GitHub actuall=
y decide upon &amp; roll out.<br> &gt; <br> &gt; Either of those two decisi=
ons will set a defacto standard across a<br> &gt; vast number of projects, =
and thus it will be beneficial to have<br> &gt; alignment with those decisi=
sons.<br> &gt; <br> &gt; Regards,<br> &gt; Daniel<br><br> Hi,<br> &nbsp; &n=
bsp;I have different feeling about these changes. On one side I agree with<=
br> Michal that these changes appears positive but they are potentially<br>=
 aggravating the real issue just hiding the problem.<br> About the words I =
think "master" have multiple meaning, removing blindly<br> because some mea=
ning could remember some bad memories looks excessive.<br> And even if this=
 word is used in the "master&amp;slave" reference hinting<br> human slavery=
 there are on the other side many uses (like master&amp;slave<br> relations=
hip in electronic circuit or master&amp;slave used in communication<br> or =
in psychology) were this is far from human slavery.<br> "blacklist" is very=
 similar, it's used in a lot of places without negative<br> references, "bl=
ack" is simply a color which, being usually associated<br> with no light is=
 seen negative, not for race discrimination (like yin<br> and yang concept)=
. I checked multiple dictionaries and hardly find<br> races references for =
"blacklist". For the same reasons we should remove<br> wording like "dark",=
 "white", "yellow", "black".<br><br> About the "master" branch technically =
can be changed easily. I won't<br> wait a "de-facto" change, if all project=
 would wait a "de-facto" change<br> the only name would be "master"! So if =
most of the group agree to change<br> and like "main" I would just rename t=
o "main".<br><br> Regards,<br> &nbsp; Frediano<br><br> ____________________=
___________________________<br> Spice-devel mailing list<br><a href=3D"mail=
to:Spice-devel@lists.freedesktop.org" target=3D"_blank" data-mce-href=3D"ma=
ilto:Spice-devel@lists.freedesktop.org">Spice-devel@lists.freedesktop.org</=
a><br><a href=3D"https://lists.freedesktop.org/mailman/listinfo/spice-devel=
" rel=3D"noreferrer" target=3D"_blank" data-mce-href=3D"https://lists.freed=
esktop.org/mailman/listinfo/spice-devel">https://lists.freedesktop.org/mail=
man/listinfo/spice-devel</a><br><br></blockquote></div><br clear=3D"all"><b=
r>-- <br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><div><=
div dir=3D"ltr"><div><div dir=3D"ltr"><p style=3D"font-weight:bold;margin:0=
px;padding:0px;font-size:14px;text-transform:capitalize;font-family:RedHatT=
ext,sans-serif" data-mce-style=3D"font-weight: bold; margin: 0px; padding: =
0px; font-size: 14px; text-transform: capitalize; font-family: RedHatText,s=
ans-serif;"><span>Julien ROP=C3=89</span></p><p style=3D"font-size:12px;mar=
gin:0px;text-transform:capitalize;font-family:RedHatText,sans-serif" data-m=
ce-style=3D"font-size: 12px; margin: 0px; text-transform: capitalize; font-=
family: RedHatText,sans-serif;"><span>Senior Software Engineer - SPICE</spa=
n></p><p style=3D"margin:0px;font-size:12px;font-family:RedHatText,sans-ser=
if" data-mce-style=3D"margin: 0px; font-size: 12px; font-family: RedHatText=
,sans-serif;"><span style=3D"margin:0px;padding:0px" data-mce-style=3D"marg=
in: 0px; padding: 0px;"><a href=3D"mailto:jrope@redhat.com" target=3D"_blan=
k" data-mce-href=3D"mailto:jrope@redhat.com">jrope@redhat.com</a><br></span=
></p><a href=3D"https://www.redhat.com/" style=3D"color:rgb(17,85,204)" tar=
get=3D"_blank" data-mce-href=3D"https://www.redhat.com/" data-mce-style=3D"=
color: #1155cc;"><img src=3D"https://marketing-outfit-prod-images.s3-us-wes=
t-2.amazonaws.com/f5445ae0c9ddafd5b2f1836854d7416a/Logo-RedHat-Email.png" w=
idth=3D"90" height=3D"auto"></a><br data-mce-bogus=3D"1"></div></div></div>=
</div></div></div></blockquote><div><br></div></div></body></html>
------=_Part_33468027_682813514.1593759793857--


--===============0821383999==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0821383999==--

