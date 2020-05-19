Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 814891D9B99
	for <lists+spice-devel@lfdr.de>; Tue, 19 May 2020 17:48:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8C696E354;
	Tue, 19 May 2020 15:47:57 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 256306E354
 for <spice-devel@lists.freedesktop.org>; Tue, 19 May 2020 15:47:57 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id w7so16408793wre.13
 for <spice-devel@lists.freedesktop.org>; Tue, 19 May 2020 08:47:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kRsV2LGgYwnAVUPawAUiEY9mQ7995yqSyWaGmw+qLY8=;
 b=FzQuKJkKXs3Vd1Rlg8r785gr41J6UiM3K7MVCDLT2sJOOmWrhjzh4IDYDGK+b5FgMo
 sTfQQ8jEV/dTv03z2qgSwCCZUabeMGSf3ren1IBUVKYf+JhwEnkYnuyuioTGMv0hFCIx
 R9vedSmn8zW7+NaSaxwwnsuiq1C9AsjmISSs2SRrUXWsPGuO8cCHt/djxVchj+Itq6Tb
 Y7wHECFvHZdwUNdyRIh5pJNfW5+6GnzMgO9w2nk95lpYRJPMR4N9iuJAnGgRj4JhHr+Z
 5Yy0QDzZ7/ILi6hfI3CTVm+cswaLW/X4JH8zu3axeTFTmDe/GtbOXRxf109UBQhxgujV
 3ObQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kRsV2LGgYwnAVUPawAUiEY9mQ7995yqSyWaGmw+qLY8=;
 b=azRg/+gmLEYS2NU/iguvHTGfsjkLOwF3wMyCnNC4uwaBBedBUhyrkuNNY1NBbvcj0H
 bQjZ9c+bvkyCEd4XN5i3gRtZTJwe1BrLcn0fnW2aYoH1zy/d1qMw0zVSmcVNe22BMeGH
 X/BT8nqTm/f4yVmuiqV0xNmzxlA7wEMGCDJizO4gq7htXdLsQRzqh6Fa1+65/wCMJORg
 1USBNXcD0okZzEh6cF1mOnscvSYtrzpM1NPBsIK8fYKALWzVF+sdGSY/RMdku1l/XKOs
 cdsBs7B0WvN+DqSYrsdyh7VVHByevr2cuDvf6SA1hRrtHQb/ACeaA+y9AVVg1WDoLAMM
 SQuA==
X-Gm-Message-State: AOAM533JN9gqoNDcCf998rFbLAPsXXt1oIL5ZS+WKBIaXGoV33c2HE4N
 0QL4ARqAcinBB0HkvmeW6TDHAu9+M2LXS4UuQr0=
X-Google-Smtp-Source: ABdhPJwYHdzW/93vnuePYbf/g5n4CAfASUcdSmtOTPcI6YF04u2naqxx6Ny0RYBlyQ4zWaz0CQzmSzoLqLLPGDCuDbQ=
X-Received: by 2002:adf:ef8b:: with SMTP id d11mr24917289wro.196.1589903275658; 
 Tue, 19 May 2020 08:47:55 -0700 (PDT)
MIME-Version: 1.0
References: <63b7a25f-0f32-1626-5c1b-3811a4f0467f@redhat.com>
 <1774733971.27477007.1589879399793.JavaMail.zimbra@redhat.com>
In-Reply-To: <1774733971.27477007.1589879399793.JavaMail.zimbra@redhat.com>
From: =?UTF-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?= <marcandre.lureau@gmail.com>
Date: Tue, 19 May 2020 17:47:42 +0200
Message-ID: <CAJ+F1CJZe6F4UQbLqvDACg6XRmnD0xw6z1OkWWNwE=p9wXNYCQ@mail.gmail.com>
To: Frediano Ziglio <fziglio@redhat.com>
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
Content-Type: multipart/mixed; boundary="===============0485603379=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0485603379==
Content-Type: multipart/alternative; boundary="000000000000f9115c05a602335b"

--000000000000f9115c05a602335b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi

On Tue, May 19, 2020 at 11:10 AM Frediano Ziglio <fziglio@redhat.com> wrote=
:

> >
> > Hi,
> >    the community around the SPICE project always tried to follow one
> > fundamental, implicit rule for accepting code contributions to the
> > project: every merge request (beside trivial patches) should be reviewe=
d
> > and acked at least by one before getting merged.
> > While everyone agrees with this fundamental rule, the actual status of
> > some SPICE projects makes the rule impractical to let the project move
> > forward.
> > Let's consider the spice/spice project as an example: the number of
> > contributions is very low, both on the commit side (only 4 different
> > contributors with more than 1 commit from the beginning of the year, an=
d
> > a single contributor with 90% of commits) and on the review side (in th=
e
> > last 40 merge requests before the C++ switch one, 21 had no comments).
> > The x11spice project is another example: we have only 4 contributors
> > from the beginning of the year (and a single contributor holding 70% of
> > the commits) and the reviews on the gitlab merge requests have been
> > provided by two people only, each one reviewing the merge requests of
> > the other.
> > For the sake of having the projects being able to move forward with a
> > reduced number of contributors/reviewers, the proposal is to *allow* a
> > maintainer to merge a Merge Request without an explicit ack if the thre=
e
> > following conditions are met:
> > 1) The Merge Request has been pending for at least 3 weeks without
> > getting new comments
> > 2) The Merge Request submitter has kept asking a review on a weekly bas=
is
> > 3) There are no pending nacks on the Merge Request
> >
> > Note that having patches reviewed would still be the preferred way. If
> > at any time the number of contributors would raise again, we can switch
> > back to the mandatory review rule. Until then the priority is to allow
> > the project to move forward.
> >
> > What do you think? Please share your thoughts and/or contribute with
> > your own ideas.
> >
> > Thanks
> >
> > Francesco
> >
>
> Hi,
>    I agree on the proposal. This problem has been going on for years now.
> The issue involve all repositories. The active part of community dealing
> with code review is very low.
>

All open-source projects are under-staffed. Spice has had a number of paid
developpers, and a number of paid developpers who can help when it is
needed. This is better than a lot of projects.

I think 3 weeks are perfectly fine. We should be in a trustful community,
>

I expressed my anxiousness about that short period. This is not going to be
healthy to put such constrain. If we were unhappy about the time it took to
review a MR, we would need first to prioritize our work better, and
reaching out for help. Not rush the changes, please.

if somebody is very busy in daily activity or on holidays whomever remains
> should be in charge. Is not that is a person in a team goes on holiday al=
l
> the work of the team is impeded.
>

I don't think such "blocking" factor exist, because the Spice code base is
large, and the domain as well. But in such exceptional circonstances, we
can easily either find a consensus for an exception, or help each other to
unblock the situation.

thanks

--=20
Marc-Andr=C3=A9 Lureau

--000000000000f9115c05a602335b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi<br></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, May 19, 2020 at 11:10 AM Frediano Zig=
lio &lt;<a href=3D"mailto:fziglio@redhat.com">fziglio@redhat.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">&gt; <br>
&gt; Hi,<br>
&gt;=C2=A0 =C2=A0 the community around the SPICE project always tried to fo=
llow one<br>
&gt; fundamental, implicit rule for accepting code contributions to the<br>
&gt; project: every merge request (beside trivial patches) should be review=
ed<br>
&gt; and acked at least by one before getting merged.<br>
&gt; While everyone agrees with this fundamental rule, the actual status of=
<br>
&gt; some SPICE projects makes the rule impractical to let the project move=
<br>
&gt; forward.<br>
&gt; Let&#39;s consider the spice/spice project as an example: the number o=
f<br>
&gt; contributions is very low, both on the commit side (only 4 different<b=
r>
&gt; contributors with more than 1 commit from the beginning of the year, a=
nd<br>
&gt; a single contributor with 90% of commits) and on the review side (in t=
he<br>
&gt; last 40 merge requests before the C++ switch one, 21 had no comments).=
<br>
&gt; The x11spice project is another example: we have only 4 contributors<b=
r>
&gt; from the beginning of the year (and a single contributor holding 70% o=
f<br>
&gt; the commits) and the reviews on the gitlab merge requests have been<br=
>
&gt; provided by two people only, each one reviewing the merge requests of<=
br>
&gt; the other.<br>
&gt; For the sake of having the projects being able to move forward with a<=
br>
&gt; reduced number of contributors/reviewers, the proposal is to *allow* a=
<br>
&gt; maintainer to merge a Merge Request without an explicit ack if the thr=
ee<br>
&gt; following conditions are met:<br>
&gt; 1) The Merge Request has been pending for at least 3 weeks without<br>
&gt; getting new comments<br>
&gt; 2) The Merge Request submitter has kept asking a review on a weekly ba=
sis<br>
&gt; 3) There are no pending nacks on the Merge Request<br>
&gt; <br>
&gt; Note that having patches reviewed would still be the preferred way. If=
<br>
&gt; at any time the number of contributors would raise again, we can switc=
h<br>
&gt; back to the mandatory review rule. Until then the priority is to allow=
<br>
&gt; the project to move forward.<br>
&gt; <br>
&gt; What do you think? Please share your thoughts and/or contribute with<b=
r>
&gt; your own ideas.<br>
&gt; <br>
&gt; Thanks<br>
&gt; <br>
&gt; Francesco<br>
&gt; <br>
<br>
Hi,<br>
=C2=A0 =C2=A0I agree on the proposal. This problem has been going on for ye=
ars now.<br>
The issue involve all repositories. The active part of community dealing<br=
>
with code review is very low.<br></blockquote><div><br></div><div>All open-=
source projects are under-staffed. Spice has had a number of paid developpe=
rs, and a number of paid developpers who can help when it is needed. This i=
s better than a lot of projects.</div><div><br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
I think 3 weeks are perfectly fine. We should be in a trustful community,<b=
r></blockquote></div><div><br></div><div>I expressed my <span><span>anxious=
ness about that short period. This is not going to be healthy to put such c=
onstrain. If we were unhappy about the time it took to review a MR, we woul=
d need first to prioritize our work better, and reaching out for help. Not =
rush the changes, please.<br></span></span></div><div><br></div><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
if somebody is very busy in daily activity or on holidays whomever remains<=
br>
should be in charge. Is not that is a person in a team goes on holiday all<=
br>
the work of the team is impeded.<br></blockquote><div><br></div><div>I don&=
#39;t think such &quot;blocking&quot; factor exist, because the Spice code =
base is large, and the domain as well. But in such exceptional circonstance=
s, we can easily either find a consensus for an exception, or help each oth=
er to unblock the situation.<br></div></div><div><br></div><div>thanks<br><=
/div><br>-- <br><div dir=3D"ltr" class=3D"gmail_signature">Marc-Andr=C3=A9 =
Lureau<br></div></div>

--000000000000f9115c05a602335b--

--===============0485603379==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0485603379==--
