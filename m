Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 414E11D5C01
	for <lists+spice-devel@lfdr.de>; Fri, 15 May 2020 23:58:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD0626ED5F;
	Fri, 15 May 2020 21:58:32 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E0836ED5F
 for <spice-devel@lists.freedesktop.org>; Fri, 15 May 2020 21:58:31 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id w64so4119711wmg.4
 for <spice-devel@lists.freedesktop.org>; Fri, 15 May 2020 14:58:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VofX1xW9IYwfhrvF+lKacmx0lLH6nbLTeeOWh8Fllzk=;
 b=nQ3CM/Mav7y3eJJYUjH1f3aumRUZAQv+/r0wdXlrTRm17U5DqmJf1599GcCkpInyXo
 gbA2UmTTPQAqk3GuaWxAPGwForDLO4R7QS03XnHzHaveDo6VXGAUFBF6N6QcBV0cXcyu
 Ok+EGUKC/u1Gw2oh1rXFrry4uNDwf33JnF+5Jk5+KpjF22S0QtQ5vzTTlsXxh7/bumXd
 yJuSD9rGb5mRYwrBqg47T8flnoOPCuRfKeKyJX3l8/M8gJ67mncbx8Q6I80JDyOfiom2
 n6KH1jOibYdwH6VG3eHL/nS1MzyC5RrQjPmsgNe5VJULXWlWzQZc5IX3i4kmC24xVvKQ
 ArZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VofX1xW9IYwfhrvF+lKacmx0lLH6nbLTeeOWh8Fllzk=;
 b=AEROsM/EzoMnNEQJmUr6XicMH/xdiho9w+P8+bbRaudGe67CiZFLacwoZuIKdmQtbL
 i8UVPe0WWZ/yx8xR+LSVKad9nhCgrOijg8ClvJjyHXEXUm846NsuA6hvPZIEBF58dQ5B
 CkbkFAZuYfd6bqrBriEgt0P+DhBzuhIfN1zW3DGP6+GYrOSypoFUmYFLZa9W798NHycg
 mbPP8dHqRFUb/eIJymMMiYEnG4sX3llibb1Ynjsk9aic/2Q4R1RkC0cUnIkCqbMeQSlJ
 U/tDxEN1CjBoqMb3B5PrrWY2uJeYFLo9h3DulICNlaq9Zlwl2pdg9CL3yzabMUNTxolD
 gq1w==
X-Gm-Message-State: AOAM533fYtygwoDGq5xyWKve9m+EmAcbhQ8XR/wn0TeltsWWuGbOWLjF
 rQG4E96QGa5S44qIhhX1qvlkrWCFcIlN7PzDa5I=
X-Google-Smtp-Source: ABdhPJxkFwjk332qa+KOKXtRxwWVMNWG533QS6nw0ASzpRAqpyKJMDY+RJ+m+ULkwxaGWVn4fq4M/xP2AWmlISUiu6s=
X-Received: by 2002:a1c:a595:: with SMTP id o143mr6374920wme.32.1589579909957; 
 Fri, 15 May 2020 14:58:29 -0700 (PDT)
MIME-Version: 1.0
References: <63b7a25f-0f32-1626-5c1b-3811a4f0467f@redhat.com>
In-Reply-To: <63b7a25f-0f32-1626-5c1b-3811a4f0467f@redhat.com>
From: =?UTF-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?= <marcandre.lureau@gmail.com>
Date: Fri, 15 May 2020 23:58:17 +0200
Message-ID: <CAJ+F1CLMA99GrML-19GB4bzB+MSzJZw8gA+Vtdf7Siv6RAyC3Q@mail.gmail.com>
To: Francesco Giudici <fgiudici@redhat.com>
Subject: Re: [Spice-devel] SPICE: changing the merge rules - a proposal
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============0709177410=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0709177410==
Content-Type: multipart/alternative; boundary="000000000000e00f2a05a5b6e902"

--000000000000e00f2a05a5b6e902
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi

On Fri, May 15, 2020 at 7:06 PM Francesco Giudici <fgiudici@redhat.com>
wrote:

> Hi,
>    the community around the SPICE project always tried to follow one
> fundamental, implicit rule for accepting code contributions to the
> project: every merge request (beside trivial patches) should be reviewed
> and acked at least by one before getting merged.
> While everyone agrees with this fundamental rule, the actual status of
> some SPICE projects makes the rule impractical to let the project move
> forward.
>

I wasn't aware of a maintenance problem. Perhaps we should first list the
projects that have maintenance issues & discuss our options, before
changing the common rule.

Let's consider the spice/spice project as an example: the number of
> contributions is very low, both on the commit side (only 4 different
> contributors with more than 1 commit from the beginning of the year, and
> a single contributor with 90% of commits) and on the review side (in the
> last 40 merge requests before the C++ switch one, 21 had no comments).
>

You are omitting the passive reviewers. I consider myself as one of them.
If you need people to be more proactive, you could at least reach me &
probably others past contributors.

The x11spice project is another example: we have only 4 contributors
> from the beginning of the year (and a single contributor holding 70% of
> the commits) and the reviews on the gitlab merge requests have been
> provided by two people only, each one reviewing the merge requests of
> the other.
>

As projects become more specific/marginal, it's clear that the number of
maintainers is lower. Yet, we have those projects under the same umbrella,
and I don't think they should be treated differently. 2 active
developers/maintainers can be very healthy, I would say. So do we have a
maintenance issue with x11spice? Do we want to move the project out of the
"Spice-space" projects for ex? What is the problem exactly?

For the sake of having the projects being able to move forward with a
> reduced number of contributors/reviewers, the proposal is to *allow* a
> maintainer to merge a Merge Request without an explicit ack if the three
> following conditions are met:
> 1) The Merge Request has been pending for at least 3 weeks without
> getting new comments
> 2) The Merge Request submitter has kept asking a review on a weekly basis
> 3) There are no pending nacks on the Merge Request
>
>
It's hard to define a delay to bypass a reviewing & consensus rule. In
general, it should really be frowned upon. There is clearly more than one
person interested and using Spice. If the issue is important, it should be
fairly easy to get someone else to look at the issue in a timely manner. If
not, there are probably more important/interesting things to do to get
other interested.

If Spice is good enough for our users and interested parties, then it may
be risky to change it in wild directions without their approval.

But 3 weeks is way too short. You could have more important work, family
issue, get sick and go on holiday, all happening each after the other. If
we need you to review some code, because you have the best experience, we
should wait. If really we want a delay, I would argue waiting 3 months
minimum (there might be exceptional circumstances, but they are exception,
not the rule). And during that time, the contributor should have attempted
multiple time to involve people, by different means (at least ML, irc and
gitlab issue+MR - eventually try a conf call to explain the motivation,
present the work differently etc, complain about the Spice project laziness
on public blog if need be etc).


Note that having patches reviewed would still be the preferred way. If
> at any time the number of contributors would raise again, we can switch
> back to the mandatory review rule. Until then the priority is to allow
> the project to move forward.
>
> What do you think? Please share your thoughts and/or contribute with
> your own ideas.
>

Thanks, but I think the trivial rule is already very subtle and generally
disapproved (fwiw, I am still in favor of a subjective trivial rule), so I
don't think this proposal would work.

We have to grow a community, by convincing people and doing interesting
work. Not by doing personal thing, and then leave the pieces behind,
because we did it alone and didn't gather others.

Perhaps Spice is doing the job. Perhaps Spice needs to define new
objectives. These are interesting topics that I believe people would want
to discuss and participate. If not, we are doing it wrong.

thanks

--=20
Marc-Andr=C3=A9 Lureau

--000000000000e00f2a05a5b6e902
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi<br></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, May 15, 2020 at 7:06 PM Francesco Giu=
dici &lt;<a href=3D"mailto:fgiudici@redhat.com">fgiudici@redhat.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
=C2=A0 =C2=A0the community around the SPICE project always tried to follow =
one <br>
fundamental, implicit rule for accepting code contributions to the <br>
project: every merge request (beside trivial patches) should be reviewed <b=
r>
and acked at least by one before getting merged.<br>
While everyone agrees with this fundamental rule, the actual status of <br>
some SPICE projects makes the rule impractical to let the project move <br>
forward.<br></blockquote><div><br></div><div>I wasn&#39;t aware of a mainte=
nance problem. Perhaps we should first list the projects that have maintena=
nce issues &amp; discuss our options, before changing the common rule.</div=
><div> <br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
Let&#39;s consider the spice/spice project as an example: the number of <br=
>
contributions is very low, both on the commit side (only 4 different <br>
contributors with more than 1 commit from the beginning of the year, and <b=
r>
a single contributor with 90% of commits) and on the review side (in the <b=
r>
last 40 merge requests before the C++ switch one, 21 had no comments).<br><=
/blockquote><div><br></div><div>You are omitting the passive reviewers. I c=
onsider myself as one of them. If you need people to be more proactive, you=
 could at least reach me &amp; probably others past contributors.</div><div=
> <br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
The x11spice project is another example: we have only 4 contributors <br>
from the beginning of the year (and a single contributor holding 70% of <br=
>
the commits) and the reviews on the gitlab merge requests have been <br>
provided by two people only, each one reviewing the merge requests of <br>
the other.<br></blockquote><div><br></div><div>As projects become more spec=
ific/marginal, it&#39;s clear that the number of maintainers is lower. Yet,=
 we have those projects under the same umbrella, and I don&#39;t think they=
 should be treated differently. 2 active developers/maintainers can be very=
 healthy, I would say. So do we have a maintenance issue with x11spice? Do =
we want to move the project out of the &quot;Spice-space&quot; projects for=
 ex? What is the problem exactly?<br></div><div> <br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">
For the sake of having the projects being able to move forward with a <br>
reduced number of contributors/reviewers, the proposal is to *allow* a <br>
maintainer to merge a Merge Request without an explicit ack if the three <b=
r>
following conditions are met:<br>
1) The Merge Request has been pending for at least 3 weeks without <br>
getting new comments<br>
2) The Merge Request submitter has kept asking a review on a weekly basis<b=
r>
3) There are no pending nacks on the Merge Request<br>
<br></blockquote><div><br></div><div>It&#39;s hard to define a delay to byp=
ass a reviewing &amp; consensus rule. In general, it should really be frown=
ed upon. There is clearly more than one person interested and using Spice. =
If the issue is important, it should be fairly easy to get someone else to =
look at the issue in a timely manner. If not, there are probably more impor=
tant/interesting things to do to get other interested.</div><div><br></div>=
<div>If Spice is good enough for our users and interested parties, then it =
may be risky to change it in wild directions without their approval.<br><br=
>But 3 weeks is way too short. You could have more important work, family i=
ssue, get sick and go on holiday, all happening each after the other. If we=
 need you to review some code, because you have the best experience, we sho=
uld wait. If really we want a delay, I would argue waiting 3 months minimum=
 (there might be exceptional circumstances, but they are exception, not the=
 rule). And during that time, the contributor should have attempted multipl=
e time to involve people, by different means (at least ML, irc and gitlab i=
ssue+MR - eventually try a conf call to explain the motivation, present the=
 work differently etc, complain about the Spice project laziness on public =
blog if need be etc).<br><br><br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">
Note that having patches reviewed would still be the preferred way. If <br>
at any time the number of contributors would raise again, we can switch <br=
>
back to the mandatory review rule. Until then the priority is to allow <br>
the project to move forward.<br>
<br>
What do you think? Please share your thoughts and/or contribute with <br>
your own ideas.<br></blockquote><div><br></div><div>Thanks, but I think the=
 trivial rule is already very subtle and generally disapproved (fwiw, I am =
still in favor of a subjective trivial rule), so I don&#39;t think this pro=
posal would work.</div><div><br></div><div>We have to grow a community, by =
convincing people and doing interesting work. Not by doing personal thing, =
and then leave the pieces behind, because we did it alone and didn&#39;t ga=
ther others.</div><div><br></div><div>Perhaps Spice is doing the job. Perha=
ps Spice needs to define new objectives. These are interesting topics that =
I believe people would want to discuss and participate. If not, we are doin=
g it wrong.<br></div><div><br></div><div>thanks</div><div><br></div></div>-=
- <br><div dir=3D"ltr" class=3D"gmail_signature">Marc-Andr=C3=A9 Lureau<br>=
</div></div>

--000000000000e00f2a05a5b6e902--

--===============0709177410==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0709177410==--
