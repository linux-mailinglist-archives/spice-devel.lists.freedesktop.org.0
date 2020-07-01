Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B377210F97
	for <lists+spice-devel@lfdr.de>; Wed,  1 Jul 2020 17:43:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF2746E2EA;
	Wed,  1 Jul 2020 15:43:35 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A06856E2EA
 for <spice-devel@lists.freedesktop.org>; Wed,  1 Jul 2020 15:43:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1593618213;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=cQkCvXgCDVMdxxiIbnSQLqZRppExzthjQw/asg7LQ0Y=;
 b=H52v539SNmcicBl39/Qqq/RGHt7pRUXJxqj1SZWAf2UtkMuRXze1N3D0EqPTs56ZOC6H0G
 vVqe84b9h0ffrnSCKhg/qtzwJQC54lRv6yKMnh4g5eJK37Oc2B5y93WiYFJ2vR23FEKsbT
 votMYT2D9wJnvRQ6DJe+JkkhO0qLs3w=
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com
 [209.85.166.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-395-AndOsbKeOxO-PPP21yMCHw-1; Wed, 01 Jul 2020 11:43:15 -0400
X-MC-Unique: AndOsbKeOxO-PPP21yMCHw-1
Received: by mail-il1-f198.google.com with SMTP id c1so17246338ilk.12
 for <spice-devel@lists.freedesktop.org>; Wed, 01 Jul 2020 08:43:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cQkCvXgCDVMdxxiIbnSQLqZRppExzthjQw/asg7LQ0Y=;
 b=b2XNm3dXO16RHocurtXvx6P9o4APzBNXhjYSJe197+symPDB5ysLjk9X53jFTWo7eT
 v3iHtYUzk0XlnkLfew563LYboofjhOlb/QnbAWZ7hIY7BM9JRaKSG5MRR7NPRUA2Ay7w
 RJ9/pftch+wBkq1HQKr60d7ZnxQBIerZY1P0eys/hlsMJJFZlbJEE0tUImqYbvRjT1TG
 I+FW0jmzZTOdzLe+JPHLsI+xwmCxznsvkXlXxfgS1dEJeh5CwTMhiF7cnBVyFCEtcbOR
 pldGylQhTpfIYBO4YUJM51ewmsRcqoH5GgvJ5hXg8h81F5abnUy1/g5DE6ILeTu32u2d
 plLQ==
X-Gm-Message-State: AOAM5308g8q1LVAJt/mMmxNf77PmxIR+WxCbVFSrL46MTDMMI+pkBIqm
 WHhSj4FxTVBdG3UHBJNkM3lBGcmrwVtjSDPIiJ2jpYagUPCTxjNixn3ica48uOvQ5ao+27xLtYo
 fIVI89zDBNLTPe+nPObPvGFlE8UzybbmbcNrfhxdf8Te93Go=
X-Received: by 2002:a02:5e88:: with SMTP id
 h130mr29869945jab.116.1593618195243; 
 Wed, 01 Jul 2020 08:43:15 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwDfqnkN80g39uGFyRkY0pcZ72861I/E0TJNMqGtwOUmM5we+wCUj/+7xQ167AN52qZ5z0A8eM1A0YhwO2r20Y=
X-Received: by 2002:a02:5e88:: with SMTP id
 h130mr29869925jab.116.1593618194964; 
 Wed, 01 Jul 2020 08:43:14 -0700 (PDT)
MIME-Version: 1.0
References: <CADJ1XR2+S76nWdj4ahYQxtw5PkR3cTwz+MrP5Q=7LktvL611jQ@mail.gmail.com>
 <20200701141507.oljra4ncxridh6kl@wingsuit>
In-Reply-To: <20200701141507.oljra4ncxridh6kl@wingsuit>
From: Julien Rope <jrope@redhat.com>
Date: Wed, 1 Jul 2020 17:43:03 +0200
Message-ID: <CAD5yKqwxJvJ4Z-Nbfdbf6tmF=SaUSE9qeaESmoSrVzVeC2+Faw@mail.gmail.com>
To: Victor Toso <victortoso@redhat.com>
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
Content-Type: multipart/mixed; boundary="===============2133010555=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============2133010555==
Content-Type: multipart/alternative; boundary="0000000000006b545e05a96326ba"

--0000000000006b545e05a96326ba
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I agree with the approach.
I actually ran the same "grep" command after the talk and was happy to find
there should not be too much work involved to do it :-)


Side note : I've always thought SVN's "trunk" was nice as it fits with the
idea of "branches" growing out of it. But there is a discussion going on at
Gitlab [1] that shows "main" is probably better.


[1] https://gitlab.com/gitlab-org/gitlab/-/issues/221164





Le mer. 1 juil. 2020 =C3=A0 16:15, Victor Toso <victortoso@redhat.com> a =
=C3=A9crit :

> Hi,
>
> On Wed, Jul 01, 2020 at 10:03:10AM +0200, Kevin Pouget wrote:
> > Hello SPICE community,
> >
> > following Chris Wright (Red Hat CTO) blog post on "Making open
> > source more inclusive by eradicating problematic language" [1],
> > I would like to suggest that we have a look at SPICE source
> > code to find out if/where such language is used and how to
> > remove it.
> >
> > To illustrate the motivations of this move, consider the phrase
> > "the final solution". I am quite sure you would agree that
> > these words cannot be used inside a project. You would agree
> > because the WWII events are still in minds and not so ancient
> > yet.  Git "master", or the "master/slave" pattern may not
> > trigger similar thoughts if your ancestors didn't suffer
> > slavery; "whitelist/blacklist" neither, if the color of your
> > skin doesn't get you into trouble (white=3Dallow, black=3Ddeny).
> > Overall, I would advise, when thinking about these questions,
> > not to forget on which side your history/country/skin
> > color/sexual orientation sits you. If it's the oppressor side,
> > you're not at the right place to say it's not relevant.
> >
> > ---
> >
> > I had a quick `grep` look at SPICE code base, searching for
> > `blacklist/whitelist/slave` and I could only find very few
> > occurrences of these words, which is nice. Can you find other
> > problem words?
> >
> > `master` is used for git default's branch, but not much
> > elsewhere. Let's discuss if we could get rid of this one, for
> > instance changing it to `main` (just a suggestion). I don't
> > think that it can break that many things (only the CI comes to
> > my mind, where the `master` branch may be treated differently)
> > as git name default branch's name is often omitted in the usual
> > workflows.
> >
> > Please share your thoughts about this
>
> Not a native english speaker but I've read a few discussions
> around the user of master as git as in master copy instead of
> master/slave. Another examples of the use of master from native
> speakers included master as in school teacher or someone that is
> in charge of something (the offense being where the subject of
> control is the slave).
>
> Still, I don't really mind to changing it to main, even more if
> there are people that feel this can really be offensive in some
> way..
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel
>


--=20

Julien ROP=C3=89

Senior Software Engineer - SPICE

jrope@redhat.com
<https://www.redhat.com/>

--0000000000006b545e05a96326ba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I agree with the approach.</div><div>I actually ran t=
he same &quot;grep&quot; command after the talk and was happy to find there=
 should not be too much work involved to do it :-)<br></div><div><br></div>=
<div></div><div><br></div><div>Side note : I&#39;ve always thought SVN&#39;=
s &quot;trunk&quot; was nice as it fits with the idea of &quot;branches&quo=
t; growing out of it. But there is a discussion going on at Gitlab [1] that=
 shows &quot;main&quot; is probably better.</div><br><div><br></div><div>[1=
] <a href=3D"https://gitlab.com/gitlab-org/gitlab/-/issues/221164">https://=
gitlab.com/gitlab-org/gitlab/-/issues/221164</a></div><div><br></div><div><=
div><br></div><div><br></div><div><br></div></div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0mer. 1 juil. 2020=
 =C3=A0=C2=A016:15, Victor Toso &lt;<a href=3D"mailto:victortoso@redhat.com=
">victortoso@redhat.com</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
On Wed, Jul 01, 2020 at 10:03:10AM +0200, Kevin Pouget wrote:<br>
&gt; Hello SPICE community,<br>
&gt; <br>
&gt; following Chris Wright (Red Hat CTO) blog post on &quot;Making open<br=
>
&gt; source more inclusive by eradicating problematic language&quot; [1],<b=
r>
&gt; I would like to suggest that we have a look at SPICE source<br>
&gt; code to find out if/where such language is used and how to<br>
&gt; remove it.<br>
&gt; <br>
&gt; To illustrate the motivations of this move, consider the phrase<br>
&gt; &quot;the final solution&quot;. I am quite sure you would agree that<b=
r>
&gt; these words cannot be used inside a project. You would agree<br>
&gt; because the WWII events are still in minds and not so ancient<br>
&gt; yet.=C2=A0 Git &quot;master&quot;, or the &quot;master/slave&quot; pat=
tern may not<br>
&gt; trigger similar thoughts if your ancestors didn&#39;t suffer<br>
&gt; slavery; &quot;whitelist/blacklist&quot; neither, if the color of your=
<br>
&gt; skin doesn&#39;t get you into trouble (white=3Dallow, black=3Ddeny).<b=
r>
&gt; Overall, I would advise, when thinking about these questions,<br>
&gt; not to forget on which side your history/country/skin<br>
&gt; color/sexual orientation sits you. If it&#39;s the oppressor side,<br>
&gt; you&#39;re not at the right place to say it&#39;s not relevant.<br>
&gt; <br>
&gt; ---<br>
&gt; <br>
&gt; I had a quick `grep` look at SPICE code base, searching for<br>
&gt; `blacklist/whitelist/slave` and I could only find very few<br>
&gt; occurrences of these words, which is nice. Can you find other<br>
&gt; problem words?<br>
&gt; <br>
&gt; `master` is used for git default&#39;s branch, but not much<br>
&gt; elsewhere. Let&#39;s discuss if we could get rid of this one, for<br>
&gt; instance changing it to `main` (just a suggestion). I don&#39;t<br>
&gt; think that it can break that many things (only the CI comes to<br>
&gt; my mind, where the `master` branch may be treated differently)<br>
&gt; as git name default branch&#39;s name is often omitted in the usual<br=
>
&gt; workflows.<br>
&gt; <br>
&gt; Please share your thoughts about this<br>
<br>
Not a native english speaker but I&#39;ve read a few discussions<br>
around the user of master as git as in master copy instead of<br>
master/slave. Another examples of the use of master from native<br>
speakers included master as in school teacher or someone that is<br>
in charge of something (the offense being where the subject of<br>
control is the slave).<br>
<br>
Still, I don&#39;t really mind to changing it to main, even more if<br>
there are people that feel this can really be offensive in some<br>
way..<br>
_______________________________________________<br>
Spice-devel mailing list<br>
<a href=3D"mailto:Spice-devel@lists.freedesktop.org" target=3D"_blank">Spic=
e-devel@lists.freedesktop.org</a><br>
<a href=3D"https://lists.freedesktop.org/mailman/listinfo/spice-devel" rel=
=3D"noreferrer" target=3D"_blank">https://lists.freedesktop.org/mailman/lis=
tinfo/spice-devel</a><br>
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

--0000000000006b545e05a96326ba--


--===============2133010555==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============2133010555==--

