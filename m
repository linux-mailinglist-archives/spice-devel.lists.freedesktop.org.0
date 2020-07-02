Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B2B4212616
	for <lists+spice-devel@lfdr.de>; Thu,  2 Jul 2020 16:22:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A8A96E2F3;
	Thu,  2 Jul 2020 14:22:11 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E3866E2F3
 for <spice-devel@lists.freedesktop.org>; Thu,  2 Jul 2020 14:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1593699727;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=UdEHRuApk8KeqcAEwfV5avAt6+peSOet5AOjsjr5wFE=;
 b=gm7LW0DV4ueJhnX6T925P9b9JkOT6kNLUs/K+6LH/4woY8OPjXPOc7H2W3chh/4wVdW3l7
 vUJjNnovAJEo+heAaTkPnFrLsfQnvq2X56WVs1ui1Z6ryufremxkeU6OpXRYui1hjoFgui
 2uSEWp9DpG+KvgB28soYrXUOwY9SeHI=
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
 [209.85.166.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-186-llrHdIrvMXGBJu6IffKRtg-1; Thu, 02 Jul 2020 10:21:59 -0400
X-MC-Unique: llrHdIrvMXGBJu6IffKRtg-1
Received: by mail-io1-f72.google.com with SMTP id k12so7599780iom.19
 for <spice-devel@lists.freedesktop.org>; Thu, 02 Jul 2020 07:21:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UdEHRuApk8KeqcAEwfV5avAt6+peSOet5AOjsjr5wFE=;
 b=bKBSytSmJk76OL8BhedQ+GnPGZvWGjxtHTOgCOLs7HzPJWnQvn1RPwb+j1Y7CFCs0A
 YnphXJKiaMXzcheQgRmkdnrNKvBTia8tCYtNFRiCHiguWtQ60lGlPVMA2QkUygjy53Uc
 lFQSUQYFiyD9woZKE4hiJNy8971mmd5mitrPbZ/ms+j1rkjoRr6A9ccYRsNMPytXo/DU
 jwGEidwJV6kiptofD8ZWZq4h2gIl3eDAWyfNcr0pjpy0vKGCj3n4dqdXE20GN1n77Hbt
 CkRpT2NBcatA+lPzEQQ9BdXXRTCSjyGeTxn2dcp2DsnGLEe9mIVaQACnjwtQyuFaFiqv
 xN2w==
X-Gm-Message-State: AOAM531i9e0RObmKmrr7ZmmJvZxgDcQdSye0zS3o53Mywa+IgBCwzqfb
 wHWa8wEZcWm9RnOiCvVg/93AAbCc281FJiNDG5pVw6J8d8HreyKglTQxTrwxcXZnTWqVRUn9Gx+
 GvNKigLvBZLaEZ4H6bxarLwzYdrB1+XYkvtbFlalLRODpRKE=
X-Received: by 2002:a92:c502:: with SMTP id r2mr13550204ilg.78.1593699718944; 
 Thu, 02 Jul 2020 07:21:58 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxVVQoRm8Rq7NFm4o6Gg7NEi7xHq8/vl0/I+x0vouaFG6ZfM3cFzZfRYhu5Z5j2O6tU3QRSOVSnUrs75XEsp+o=
X-Received: by 2002:a92:c502:: with SMTP id r2mr13550178ilg.78.1593699718625; 
 Thu, 02 Jul 2020 07:21:58 -0700 (PDT)
MIME-Version: 1.0
References: <CADJ1XR2+S76nWdj4ahYQxtw5PkR3cTwz+MrP5Q=7LktvL611jQ@mail.gmail.com>
 <20200701141507.oljra4ncxridh6kl@wingsuit>
 <20200702101045.GG1888119@redhat.com>
 <231701763.32923904.1593698964424.JavaMail.zimbra@redhat.com>
In-Reply-To: <231701763.32923904.1593698964424.JavaMail.zimbra@redhat.com>
From: Julien Rope <jrope@redhat.com>
Date: Thu, 2 Jul 2020 16:21:47 +0200
Message-ID: <CAD5yKqxLyUhX0Eq9XffjeEHOjY5yVWxH-5rg2=7oZTuLfrGVEQ@mail.gmail.com>
To: Frediano Ziglio <fziglio@redhat.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jrope@redhat.com
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
Content-Type: multipart/mixed; boundary="===============1683549412=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1683549412==
Content-Type: multipart/alternative; boundary="0000000000009b939d05a976211d"

--0000000000009b939d05a976211d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Well... Your examples are contradicting: the "master/slave" relation used
in electronics or psychology are re-using the slavery concepts too... This
doesn't make it right :-)
Now I'm not working in electronics or psychology, so I'm not going to try
and change their wording.

Regarding changing it now rather than waiting: Daniel is mentioning two
hints - git, or github. As our code is hosted in gitlab, I would add that
one too :)
The idea being that if they choose a new word, it will become the new
default, and we could align with them for consistency, rather than arguing
among us and picking a potentially different name

This doesn't prevent us from changing words that are in our code (like
blacklist/whitelist?). I think there's not a lot of them.

Regards,
Julien


Le jeu. 2 juil. 2020 =C3=A0 16:09, Frediano Ziglio <fziglio@redhat.com> a =
=C3=A9crit :

>
> > On Wed, Jul 01, 2020 at 04:15:07PM +0200, Victor Toso wrote:
> > > Hi,
> > >
> > > On Wed, Jul 01, 2020 at 10:03:10AM +0200, Kevin Pouget wrote:
> > > > Hello SPICE community,
> > > >
> > > > following Chris Wright (Red Hat CTO) blog post on "Making open
> > > > source more inclusive by eradicating problematic language" [1],
> > > > I would like to suggest that we have a look at SPICE source
> > > > code to find out if/where such language is used and how to
> > > > remove it.
> > > >
> > > > To illustrate the motivations of this move, consider the phrase
> > > > "the final solution". I am quite sure you would agree that
> > > > these words cannot be used inside a project. You would agree
> > > > because the WWII events are still in minds and not so ancient
> > > > yet.  Git "master", or the "master/slave" pattern may not
> > > > trigger similar thoughts if your ancestors didn't suffer
> > > > slavery; "whitelist/blacklist" neither, if the color of your
> > > > skin doesn't get you into trouble (white=3Dallow, black=3Ddeny).
> > > > Overall, I would advise, when thinking about these questions,
> > > > not to forget on which side your history/country/skin
> > > > color/sexual orientation sits you. If it's the oppressor side,
> > > > you're not at the right place to say it's not relevant.
> > > >
> > > > ---
> > > >
> > > > I had a quick `grep` look at SPICE code base, searching for
> > > > `blacklist/whitelist/slave` and I could only find very few
> > > > occurrences of these words, which is nice. Can you find other
> > > > problem words?
> > > >
> > > > `master` is used for git default's branch, but not much
> > > > elsewhere. Let's discuss if we could get rid of this one, for
> > > > instance changing it to `main` (just a suggestion). I don't
> > > > think that it can break that many things (only the CI comes to
> > > > my mind, where the `master` branch may be treated differently)
> > > > as git name default branch's name is often omitted in the usual
> > > > workflows.
> > > >
> > > > Please share your thoughts about this
> > >
> > > Not a native english speaker but I've read a few discussions
> > > around the user of master as git as in master copy instead of
> > > master/slave. Another examples of the use of master from native
> > > speakers included master as in school teacher or someone that is
> > > in charge of something (the offense being where the subject of
> > > control is the slave).
> > >
> > > Still, I don't really mind to changing it to main, even more if
> > > there are people that feel this can really be offensive in some
> > > way..
> >
> > I think the primary downside in changing the branch name is if we
> > end up with different branch names chosen by each project. There is
> > value in the fact that essentially every project uses the same
> > branch name for their latest development branch, as it gives end
> > users consistent expectations.
> >
> > I'm in favour of changing the branch name, but my inclination is
> > to wait and see a little longer, in order to identify what the
> > new defacto standard ends up being. "main" is a good bet as a new
> > standard, but it would be nice to see it "in action".
> >
> > I'd be looking for two possible signs
> >
> > Whether the Git maintainers themselves decide to standardize
> > on a new term.
> >
> > What GitHub actually decide upon & roll out.
> >
> > Either of those two decisions will set a defacto standard across a
> > vast number of projects, and thus it will be beneficial to have
> > alignment with those decisisons.
> >
> > Regards,
> > Daniel
>
> Hi,
>    I have different feeling about these changes. On one side I agree with
> Michal that these changes appears positive but they are potentially
> aggravating the real issue just hiding the problem.
> About the words I think "master" have multiple meaning, removing blindly
> because some meaning could remember some bad memories looks excessive.
> And even if this word is used in the "master&slave" reference hinting
> human slavery there are on the other side many uses (like master&slave
> relationship in electronic circuit or master&slave used in communication
> or in psychology) were this is far from human slavery.
> "blacklist" is very similar, it's used in a lot of places without negativ=
e
> references, "black" is simply a color which, being usually associated
> with no light is seen negative, not for race discrimination (like yin
> and yang concept). I checked multiple dictionaries and hardly find
> races references for "blacklist". For the same reasons we should remove
> wording like "dark", "white", "yellow", "black".
>
> About the "master" branch technically can be changed easily. I won't
> wait a "de-facto" change, if all project would wait a "de-facto" change
> the only name would be "master"! So if most of the group agree to change
> and like "main" I would just rename to "main".
>
> Regards,
>   Frediano
>
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel
>
>

--=20

Julien ROP=C3=89

Senior Software Engineer - SPICE

jrope@redhat.com
<https://www.redhat.com/>

--0000000000009b939d05a976211d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div>Well... Your examples are contradictin=
g: the &quot;master/slave&quot; relation used in electronics or psychology =
are re-using the slavery concepts too... This doesn&#39;t make it right :-)=
</div><div>Now I&#39;m not working in electronics or psychology, so I&#39;m=
 not going to try and change their wording. <br></div><div><br></div><div>R=
egarding changing it now rather than waiting: Daniel is mentioning two hint=
s - git, or github. As our code is hosted in gitlab, I would add that one t=
oo :)</div><div>The idea being that if they choose a new word, it will beco=
me the new default, and we could align with them for consistency, rather th=
an arguing among us and picking a potentially different name<br></div><div>=
<br></div><div>This doesn&#39;t prevent us from changing words that are in =
our code (like blacklist/whitelist?). I think there&#39;s not a lot of them=
.</div><div><br></div><div>Regards,</div><div>Julien<br></div><div><br></di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">Le=C2=A0jeu. 2 juil. 2020 =C3=A0=C2=A016:09, Frediano Ziglio &lt;<a href=
=3D"mailto:fziglio@redhat.com">fziglio@redhat.com</a>&gt; a =C3=A9crit=C2=
=A0:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
&gt; On Wed, Jul 01, 2020 at 04:15:07PM +0200, Victor Toso wrote:<br>
&gt; &gt; Hi,<br>
&gt; &gt; <br>
&gt; &gt; On Wed, Jul 01, 2020 at 10:03:10AM +0200, Kevin Pouget wrote:<br>
&gt; &gt; &gt; Hello SPICE community,<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; following Chris Wright (Red Hat CTO) blog post on &quot;Maki=
ng open<br>
&gt; &gt; &gt; source more inclusive by eradicating problematic language&qu=
ot; [1],<br>
&gt; &gt; &gt; I would like to suggest that we have a look at SPICE source<=
br>
&gt; &gt; &gt; code to find out if/where such language is used and how to<b=
r>
&gt; &gt; &gt; remove it.<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; To illustrate the motivations of this move, consider the phr=
ase<br>
&gt; &gt; &gt; &quot;the final solution&quot;. I am quite sure you would ag=
ree that<br>
&gt; &gt; &gt; these words cannot be used inside a project. You would agree=
<br>
&gt; &gt; &gt; because the WWII events are still in minds and not so ancien=
t<br>
&gt; &gt; &gt; yet.=C2=A0 Git &quot;master&quot;, or the &quot;master/slave=
&quot; pattern may not<br>
&gt; &gt; &gt; trigger similar thoughts if your ancestors didn&#39;t suffer=
<br>
&gt; &gt; &gt; slavery; &quot;whitelist/blacklist&quot; neither, if the col=
or of your<br>
&gt; &gt; &gt; skin doesn&#39;t get you into trouble (white=3Dallow, black=
=3Ddeny).<br>
&gt; &gt; &gt; Overall, I would advise, when thinking about these questions=
,<br>
&gt; &gt; &gt; not to forget on which side your history/country/skin<br>
&gt; &gt; &gt; color/sexual orientation sits you. If it&#39;s the oppressor=
 side,<br>
&gt; &gt; &gt; you&#39;re not at the right place to say it&#39;s not releva=
nt.<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; ---<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; I had a quick `grep` look at SPICE code base, searching for<=
br>
&gt; &gt; &gt; `blacklist/whitelist/slave` and I could only find very few<b=
r>
&gt; &gt; &gt; occurrences of these words, which is nice. Can you find othe=
r<br>
&gt; &gt; &gt; problem words?<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; `master` is used for git default&#39;s branch, but not much<=
br>
&gt; &gt; &gt; elsewhere. Let&#39;s discuss if we could get rid of this one=
, for<br>
&gt; &gt; &gt; instance changing it to `main` (just a suggestion). I don&#3=
9;t<br>
&gt; &gt; &gt; think that it can break that many things (only the CI comes =
to<br>
&gt; &gt; &gt; my mind, where the `master` branch may be treated differentl=
y)<br>
&gt; &gt; &gt; as git name default branch&#39;s name is often omitted in th=
e usual<br>
&gt; &gt; &gt; workflows.<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; Please share your thoughts about this<br>
&gt; &gt; <br>
&gt; &gt; Not a native english speaker but I&#39;ve read a few discussions<=
br>
&gt; &gt; around the user of master as git as in master copy instead of<br>
&gt; &gt; master/slave. Another examples of the use of master from native<b=
r>
&gt; &gt; speakers included master as in school teacher or someone that is<=
br>
&gt; &gt; in charge of something (the offense being where the subject of<br=
>
&gt; &gt; control is the slave).<br>
&gt; &gt; <br>
&gt; &gt; Still, I don&#39;t really mind to changing it to main, even more =
if<br>
&gt; &gt; there are people that feel this can really be offensive in some<b=
r>
&gt; &gt; way..<br>
&gt; <br>
&gt; I think the primary downside in changing the branch name is if we<br>
&gt; end up with different branch names chosen by each project. There is<br=
>
&gt; value in the fact that essentially every project uses the same<br>
&gt; branch name for their latest development branch, as it gives end<br>
&gt; users consistent expectations.<br>
&gt; <br>
&gt; I&#39;m in favour of changing the branch name, but my inclination is<b=
r>
&gt; to wait and see a little longer, in order to identify what the<br>
&gt; new defacto standard ends up being. &quot;main&quot; is a good bet as =
a new<br>
&gt; standard, but it would be nice to see it &quot;in action&quot;.<br>
&gt; <br>
&gt; I&#39;d be looking for two possible signs<br>
&gt; <br>
&gt; Whether the Git maintainers themselves decide to standardize<br>
&gt; on a new term.<br>
&gt; <br>
&gt; What GitHub actually decide upon &amp; roll out.<br>
&gt; <br>
&gt; Either of those two decisions will set a defacto standard across a<br>
&gt; vast number of projects, and thus it will be beneficial to have<br>
&gt; alignment with those decisisons.<br>
&gt; <br>
&gt; Regards,<br>
&gt; Daniel<br>
<br>
Hi,<br>
=C2=A0 =C2=A0I have different feeling about these changes. On one side I ag=
ree with<br>
Michal that these changes appears positive but they are potentially<br>
aggravating the real issue just hiding the problem.<br>
About the words I think &quot;master&quot; have multiple meaning, removing =
blindly<br>
because some meaning could remember some bad memories looks excessive.<br>
And even if this word is used in the &quot;master&amp;slave&quot; reference=
 hinting<br>
human slavery there are on the other side many uses (like master&amp;slave<=
br>
relationship in electronic circuit or master&amp;slave used in communicatio=
n<br>
or in psychology) were this is far from human slavery.<br>
&quot;blacklist&quot; is very similar, it&#39;s used in a lot of places wit=
hout negative<br>
references, &quot;black&quot; is simply a color which, being usually associ=
ated<br>
with no light is seen negative, not for race discrimination (like yin<br>
and yang concept). I checked multiple dictionaries and hardly find<br>
races references for &quot;blacklist&quot;. For the same reasons we should =
remove<br>
wording like &quot;dark&quot;, &quot;white&quot;, &quot;yellow&quot;, &quot=
;black&quot;.<br>
<br>
About the &quot;master&quot; branch technically can be changed easily. I wo=
n&#39;t<br>
wait a &quot;de-facto&quot; change, if all project would wait a &quot;de-fa=
cto&quot; change<br>
the only name would be &quot;master&quot;! So if most of the group agree to=
 change<br>
and like &quot;main&quot; I would just rename to &quot;main&quot;.<br>
<br>
Regards,<br>
=C2=A0 Frediano<br>
<br>
_______________________________________________<br>
Spice-devel mailing list<br>
<a href=3D"mailto:Spice-devel@lists.freedesktop.org" target=3D"_blank">Spic=
e-devel@lists.freedesktop.org</a><br>
<a href=3D"https://lists.freedesktop.org/mailman/listinfo/spice-devel" rel=
=3D"noreferrer" target=3D"_blank">https://lists.freedesktop.org/mailman/lis=
tinfo/spice-devel</a><br>
<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr=
"><p style=3D"font-weight:bold;margin:0px;padding:0px;font-size:14px;text-t=
ransform:capitalize;font-family:RedHatText,sans-serif"><span>Julien ROP=C3=
=89</span><span style=3D"color:rgb(170,170,170);margin:0px"></span></p><p s=
tyle=3D"font-size:12px;margin:0px;text-transform:capitalize;font-family:Red=
HatText,sans-serif"><span>Senior Software Engineer - SPICE</span></p><p sty=
le=3D"margin:0px;font-size:12px;font-family:RedHatText,sans-serif"><span st=
yle=3D"margin:0px;padding:0px"><a href=3D"mailto:jrope@redhat.com" target=
=3D"_blank">jrope@redhat.com</a><br></span></p><a href=3D"https://www.redha=
t.com/" style=3D"color:rgb(17,85,204)" target=3D"_blank"><img src=3D"https:=
//marketing-outfit-prod-images.s3-us-west-2.amazonaws.com/f5445ae0c9ddafd5b=
2f1836854d7416a/Logo-RedHat-Email.png" width=3D"90" height=3D"auto"></a></d=
iv></div></div></div></div></div>

--0000000000009b939d05a976211d--


--===============1683549412==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1683549412==--

