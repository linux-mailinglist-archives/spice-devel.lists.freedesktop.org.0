Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91DF0976C28
	for <lists+spice-devel@lfdr.de>; Thu, 12 Sep 2024 16:31:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F65610EB85;
	Thu, 12 Sep 2024 14:31:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Yaiji+gc";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com
 [209.85.218.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5310510E351
 for <spice-devel@lists.freedesktop.org>; Mon,  9 Sep 2024 09:22:00 +0000 (UTC)
Received: by mail-ej1-f46.google.com with SMTP id
 a640c23a62f3a-a8d60e23b33so63089766b.0
 for <spice-devel@lists.freedesktop.org>; Mon, 09 Sep 2024 02:22:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1725873718; x=1726478518; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=bMuPHsjMKQepFZRfBo+hIpRNIfPKQoY/5szAGidG/Ro=;
 b=Yaiji+gcLEB9zdiwDL6nsyuLxB1zwFBxTIwRXvoxhYxYqEwnZyg4qC7R4HdsPSlVJM
 Ynf3smJHCZnteevzY92FsmSdO8dC2eOZ3Ivj2XUP1UGlQvSEg5XmSJqkrwgxwo/mwVRM
 rJf7zELYmJAqzny3RcPYKcyd21mB/rfR6VkkjsfKQghAPpYupg2oIMVu1TJ/lODrhpkB
 u9NpS8a/d3wmLnFl/k3W+HnsRld7Q4i5rs3ByTF9ETWXHh+DN4j/l5NUXHTNeCIUaBUk
 BtbTrf3FJ/fl0lDipfZbeMasQNknQVk4sC0sTFk+oOxhjEqGzzfDLeM7zZ/cH8356k7x
 6BHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725873718; x=1726478518;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=bMuPHsjMKQepFZRfBo+hIpRNIfPKQoY/5szAGidG/Ro=;
 b=wdD+KbzCQPNZZL1wtRMWAiPoHVXH9ZgHCTtrRU2j0oKXMvbJF3g7y+LdPjhCWnuOsQ
 b1rHwxza9m6JzYrxOWBVqTv34WrlUa1btHDYcZcN2NIYotv7iR8FACVMJkMMjJKrUwDB
 wNTSZM+/L0X9vGucHVwfgEG9rQSWd7zzO6AWMX/ZJmuuoDPUDzJcvovz6twPeJ5wrqs9
 09ETiSZIfDHqkhdhzHUV8sVLlpfaR2nwSxXCn0ZfSdon4ArPPKkjcE+Luods+WKRh1hy
 X21FTRDRamo2cywfoPf5ROwNQcQxh7BGt0K+kCySWAx/wDdauMzwUzRvXCBlDpl19bAy
 vzjQ==
X-Gm-Message-State: AOJu0Yw06ctrZKBm+wHEWfMYUMG+z35Ef2r/Hfe1PzHXigU3dRUzpQ8j
 3wvaJEY/NGW4ihY5gV5bM8uSYlooa5wLWUSWf3K4N8321tJBudJVL/D9LdX+gtiNhwdo1zHsy/b
 jj8imuuZFP6KlRmB1bgumNapScPI=
X-Google-Smtp-Source: AGHT+IEAYkdn5bL3JzDZSzy+WzPPW4jIxO6hNhpVbtKNyigSsgLFbO3EFKBgoUkXgc7VdWzZRki7QTnfm6te7OGvcI8=
X-Received: by 2002:a17:907:801:b0:a77:b4e3:4fca with SMTP id
 a640c23a62f3a-a8a885bfbe1mr1118519166b.9.1725873717580; Mon, 09 Sep 2024
 02:21:57 -0700 (PDT)
MIME-Version: 1.0
References: <CA+mZ-_JE5f7qdNFyS-zKzYwx8e22xyzNG9oU4B7cNOyCUFAENQ@mail.gmail.com>
 <CAHt6W4eAR8gN6=d9LWH4EOukuWgx76UfBj0QGT0ctdr=UbWF_Q@mail.gmail.com>
 <CA+mZ-_LwGmvUhFDjqgLzfkc0aMy0SsWXH9U_Ekdsg0rLZKZQdA@mail.gmail.com>
 <CAHt6W4egOb+jX=LDLmpTnQ4n1ujkCMF=4e2H+hs+mOPufYXUwQ@mail.gmail.com>
 <CA+mZ-_+Q7W3zJoyuSX49uxOWq2rpJ81FYndYDeiQG=EfhOPisQ@mail.gmail.com>
 <CAHt6W4dQT1M-rbtq=Ku8O=1rVjBWToHnww5MyfM-pHA5PTPOWA@mail.gmail.com>
In-Reply-To: <CAHt6W4dQT1M-rbtq=Ku8O=1rVjBWToHnww5MyfM-pHA5PTPOWA@mail.gmail.com>
From: Randall Suter <randallsuter@gmail.com>
Date: Mon, 9 Sep 2024 12:21:45 +0300
Message-ID: <CA+mZ-_Jd8i6u346W=Ymh47ELoqHhEBuDUz++GUOL9ht4Fc8mFg@mail.gmail.com>
Subject: Re: Guest Post Request
To: Frediano Ziglio <freddy77@gmail.com>
Cc: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="000000000000dd192b0621ac4974"
X-Mailman-Approved-At: Thu, 12 Sep 2024 14:30:59 +0000
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--000000000000dd192b0621ac4974
Content-Type: text/plain; charset="UTF-8"

I didn't understand your answer.

Best Regards,
Randall Suter


On Sun, 8 Sept 2024 at 13:41, Frediano Ziglio <freddy77@gmail.com> wrote:

> Il giorno gio 5 set 2024 alle ore 18:56 Randall Suter
> <randallsuter@gmail.com> ha scritto:
> >
> > Hello,
> >
> > My clients are willing to pay you to place an advertising article on
> your site. That's what I'm asking you. Do you accept this or not?
> >
> > Best Regards,
> > Randall Suter
> >
> >
> > On Thu, 5 Sept 2024 at 09:39, Frediano Ziglio <freddy77@gmail.com>
> wrote:
> >>
> >> Hi,
> >>    it's not clear what you are trying to achieve.
> >>
> >> Do you want to sponsor our project? Like paying for a developer? Or
> >> donate some money (I don't think we'll have a nice usage at the moment
> >> but I may be wrong) ?
> >>
> >> Regards,
> >>    Frediano
> >>
> >> Il giorno ven 19 lug 2024 alle ore 23:14 Randall Suter
> >> <randallsuter@gmail.com> ha scritto:
> >> >
> >> > Hi! Thank you for your reply! I'm interested in sponsored posts with
> a do-follow link. I have several projects on different topics. I would like
> to know the terms of publication and prices on your site to begin with.
> Please give me more details about it if you accept such posts.
> >> >
> >> > Best Regards,
> >> > Randall Suter
> >> >
> >> >
> >> > On Fri, 19 Jul 2024 at 13:47, Frediano Ziglio <freddy77@gmail.com>
> wrote:
> >> >>
> >> >> Il giorno ven 19 lug 2024 alle ore 11:20 Randall Suter
> >> >> <randallsuter@gmail.com> ha scritto:
> >> >> >
> >> >> > Good day! My name is Randall. I would like to contribute to your
> website (spice-space.org) by submitting a guest post. Are there any
> specific requirements that I need to follow?
> >> >> >
> >> >> > Best Regards,
> >> >> > Randall Suter
> >> >>
> >> >> Hi Randall,
> >> >>    pages are generated from
> >> >> https://gitlab.freedesktop.org/spice/spice-space-pages.
> >> >> What'a a "guest post" ?
> >> >>
> >> >> Frediano
>
> Hi,
>    I don't own the website but I think the reply is no.
> It's an Open Source project webpage.
>
> Regards,
>    Frediano
>

--000000000000dd192b0621ac4974
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">I didn&#39;t understand your answer.<br c=
lear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"lt=
r"><div><br></div><div><font face=3D"arial, sans-serif">Best Regards,<br></=
font></div><div><span style=3D"color:rgb(0,0,0);white-space:pre-wrap"><font=
 face=3D"arial, sans-serif">Randall Suter</font></span><br></div></div></di=
v></div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Sun, 8 Sept 2024 at 13:41, Frediano Ziglio &lt;<a href=
=3D"mailto:freddy77@gmail.com">freddy77@gmail.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">Il giorno gio 5 set 2024 a=
lle ore 18:56 Randall Suter<br>
&lt;<a href=3D"mailto:randallsuter@gmail.com" target=3D"_blank">randallsute=
r@gmail.com</a>&gt; ha scritto:<br>
&gt;<br>
&gt; Hello,<br>
&gt;<br>
&gt; My clients are willing to pay you to place an advertising article on y=
our site. That&#39;s what I&#39;m asking you. Do you accept this or not?<br=
>
&gt;<br>
&gt; Best Regards,<br>
&gt; Randall Suter<br>
&gt;<br>
&gt;<br>
&gt; On Thu, 5 Sept 2024 at 09:39, Frediano Ziglio &lt;<a href=3D"mailto:fr=
eddy77@gmail.com" target=3D"_blank">freddy77@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Hi,<br>
&gt;&gt;=C2=A0 =C2=A0 it&#39;s not clear what you are trying to achieve.<br=
>
&gt;&gt;<br>
&gt;&gt; Do you want to sponsor our project? Like paying for a developer? O=
r<br>
&gt;&gt; donate some money (I don&#39;t think we&#39;ll have a nice usage a=
t the moment<br>
&gt;&gt; but I may be wrong) ?<br>
&gt;&gt;<br>
&gt;&gt; Regards,<br>
&gt;&gt;=C2=A0 =C2=A0 Frediano<br>
&gt;&gt;<br>
&gt;&gt; Il giorno ven 19 lug 2024 alle ore 23:14 Randall Suter<br>
&gt;&gt; &lt;<a href=3D"mailto:randallsuter@gmail.com" target=3D"_blank">ra=
ndallsuter@gmail.com</a>&gt; ha scritto:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Hi! Thank you for your reply! I&#39;m interested in sponsored=
 posts with a do-follow link. I have several projects on different topics. =
I would like to know the terms of publication and prices on your site to be=
gin with. Please give me more details about it if you accept such posts.<br=
>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Best Regards,<br>
&gt;&gt; &gt; Randall Suter<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; On Fri, 19 Jul 2024 at 13:47, Frediano Ziglio &lt;<a href=3D"=
mailto:freddy77@gmail.com" target=3D"_blank">freddy77@gmail.com</a>&gt; wro=
te:<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Il giorno ven 19 lug 2024 alle ore 11:20 Randall Suter<br=
>
&gt;&gt; &gt;&gt; &lt;<a href=3D"mailto:randallsuter@gmail.com" target=3D"_=
blank">randallsuter@gmail.com</a>&gt; ha scritto:<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Good day! My name is Randall. I would like to contri=
bute to your website (<a href=3D"http://spice-space.org" rel=3D"noreferrer"=
 target=3D"_blank">spice-space.org</a>) by submitting a guest post. Are the=
re any specific requirements that I need to follow?<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Best Regards,<br>
&gt;&gt; &gt;&gt; &gt; Randall Suter<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Hi Randall,<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 pages are generated from<br>
&gt;&gt; &gt;&gt; <a href=3D"https://gitlab.freedesktop.org/spice/spice-spa=
ce-pages" rel=3D"noreferrer" target=3D"_blank">https://gitlab.freedesktop.o=
rg/spice/spice-space-pages</a>.<br>
&gt;&gt; &gt;&gt; What&#39;a a &quot;guest post&quot; ?<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Frediano<br>
<br>
Hi,<br>
=C2=A0 =C2=A0I don&#39;t own the website but I think the reply is no.<br>
It&#39;s an Open Source project webpage.<br>
<br>
Regards,<br>
=C2=A0 =C2=A0Frediano<br>
</blockquote></div>

--000000000000dd192b0621ac4974--
