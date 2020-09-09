Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89651262FFB
	for <lists+spice-devel@lfdr.de>; Wed,  9 Sep 2020 16:49:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C5286E2F2;
	Wed,  9 Sep 2020 14:49:03 +0000 (UTC)
X-Original-To: spice-devel@freedesktop.org
Delivered-To: spice-devel@freedesktop.org
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A173D6E30F
 for <spice-devel@freedesktop.org>; Wed,  9 Sep 2020 14:49:02 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id z23so3914121ejr.13
 for <spice-devel@freedesktop.org>; Wed, 09 Sep 2020 07:49:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ot+lqKal94YoVkO5LMKn09ESCVr7d+P7NQBh0GI30+E=;
 b=K7syHENUaObbzf5C9KII+UM66kxa2sJzZBMlwgdqcXrQPCrqOvNxaEp2mb7C2HHUiU
 eYYFV9zI39HHuZ5h62UlMEJC15zAmD1NeOFoODG7T4AnzP4eZsaShoNVnIkddf2hACzn
 dqQksAs4zR2rgGeIVEaoXucQurO3KRRQAl1O+8+DFOw0NHQtVhkygHapzeUbPSlkMtMM
 7rwt42dVr7agCwV+1jo7a0DCciA3VDM+F2SG90pbukvBqNzYWsHdHVrR4A7aWqJVDsIc
 mqDOZ1wr7fMJmN3ZK3T4WWQ3FHuCXmmHwOkSMzhF/qwNMZxZ8ha4ur9IS/5V/HpQzdi2
 C7RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ot+lqKal94YoVkO5LMKn09ESCVr7d+P7NQBh0GI30+E=;
 b=NOqwH+HllnPvd1q3CA5TN6X8RQGFuoanlsbgkUyIoDdciqFsgLZ33sH+djd0XRXgVx
 XKw9CjbmAG9/4WSTlJEFf4ijqlXIW/mwmdemTxYciX7Swayc0OA444fozfDNes37JuYD
 wK0kPSQbyaHpGdWCIr7dj07eIMy1Ba2OAGka7YYYL8hNcFmYiqG7IfCgG+U48Opu8iCJ
 4z8+A0YYxcEcbj8gdwMmeLERGOf6Fu4I7C/PxpYIhPLCMEO0yPnZJCSPPz62ccj646ks
 KOCBf0T7J3rcKHbjVvNkQQNKLfsjdLWEPA3/tBcOLp4pcZugjhSbZFLU33Nmpc6G2Mcj
 IzTA==
X-Gm-Message-State: AOAM532y+ZXluzczT1L8EQX/sWeLh5LcKEWSOM4tAvdOH7psmo/HthbL
 cWUGcGh+rZTzBmDz25y03e5B3U4D7YfC+5UqgVM=
X-Google-Smtp-Source: ABdhPJyn5C43kCSQTwYiU014Z/xjpHXDmxyOBvA+mNmYTdW5L0HvDe/lHhCzpzHSg9NlM6WvTqW9lTiSvwtz6/u3KZY=
X-Received: by 2002:a17:906:4bd7:: with SMTP id
 x23mr3933974ejv.92.1599662941201; 
 Wed, 09 Sep 2020 07:49:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200909135044.0B7FA76130@kemper.freedesktop.org>
 <CAJ+F1CJr=UC8H4CdpsTkv1yHPJh-yF85MDYkA-A4y6jtO5sf0Q@mail.gmail.com>
 <1746534140.655311.1599661009588.JavaMail.zimbra@redhat.com>
 <CAH=CeiBb4eUew8i0MjNnLdvi3Z8HG6bgXGQVedGcFtJtChpZUQ@mail.gmail.com>
 <28522181.657126.1599662196864.JavaMail.zimbra@redhat.com>
 <CAH=CeiB+89q6C6fSu-814jaN98_eCGe72qkwZTFp7V7OXnehLw@mail.gmail.com>
In-Reply-To: <CAH=CeiB+89q6C6fSu-814jaN98_eCGe72qkwZTFp7V7OXnehLw@mail.gmail.com>
From: =?UTF-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?= <marcandre.lureau@gmail.com>
Date: Wed, 9 Sep 2020 18:48:49 +0400
Message-ID: <CAJ+F1CLVPu1UDBubZinJCMNuY8BX_vbdFOjE8pvWquA-id-27w@mail.gmail.com>
To: Jakub Janku <jjanku@redhat.com>
Subject: Re: [Spice-devel] [Spice-commits] 6 commits - meson.build
 src/map-file src/spice-glib-sym-file src/spice-gtk-session.c
 src/spice-session.c src/spice-session.h src/spice-session-priv.h
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
Cc: spice-commits@lists.freedesktop.org, spice-devel@freedesktop.org
Content-Type: multipart/mixed; boundary="===============0640069601=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0640069601==
Content-Type: multipart/alternative; boundary="0000000000005ee6aa05aee28df8"

--0000000000005ee6aa05aee28df8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi

On Wed, Sep 9, 2020 at 6:45 PM Jakub Janku <jjanku@redhat.com> wrote:

> On Wed, Sep 9, 2020 at 4:36 PM Frediano Ziglio <fziglio@redhat.com> wrote=
:
> >
> > > On Wed, Sep 9, 2020 at 4:16 PM Frediano Ziglio <fziglio@redhat.com>
> wrote:
> > > >
> > > > > > commit 4b9092b96b8da946ff3d17922b0fcf225c5dc81f
> > > > >
> > > > > > Author: Jakub Jank=C5=AF < jjanku@redhat.com >
> > > > >
> > > > > > Date: Sat May 23 16:28:52 2020 +0200
> > > > >
> > > >
> > > > > > session: make spice_session_get_webdav_server() public
> > > > >
> > > >
> > > > > > It will be necessary to access the webdav server from
> > > > > > spice-gtk-session.c
> > > > >
> > > > > > which isn't compiled with spice-session-priv.h, so make
> > > > >
> > > > > > spice_session_get_webdav_server() public.
> > > > >
> > > >
> > > > > I haven't looked at the whole series. Wouldn't it make sense to
> make it a
> > > > > read-only property instead?
> > > >
> > > > It sounds reasonable for me.
> > > > Jakub ?
> > > >
> > >
> > > I agree.
> > >
> > > Revert the commits please. I'll reopen the merge request once I have =
it
> > > ready.
> > >
> > > Cheers,
> > > Jakub
> > >
> >
> > To be honest I don't see the need to revert commits, it's just a change
> > from public to private.
>
> Ok, so should I open a separate MR?
>
> To make sure that I didn't misunderstand it: the suggestion is to keep
> spice_session_get_webdav_server() private and install a new
> SpiceSession read-only property "webdav", correct?
>
>
yes (the main motivation is to avoid adding new library symbols, and
properties can be looked up at runtime, which may avoid bumping
dependencies in some cases)


--=20
Marc-Andr=C3=A9 Lureau

--0000000000005ee6aa05aee28df8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi<br></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Sep 9, 2020 at 6:45 PM Jaku=
b Janku &lt;<a href=3D"mailto:jjanku@redhat.com">jjanku@redhat.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Wed, S=
ep 9, 2020 at 4:36 PM Frediano Ziglio &lt;<a href=3D"mailto:fziglio@redhat.=
com" target=3D"_blank">fziglio@redhat.com</a>&gt; wrote:<br>
&gt;<br>
&gt; &gt; On Wed, Sep 9, 2020 at 4:16 PM Frediano Ziglio &lt;<a href=3D"mai=
lto:fziglio@redhat.com" target=3D"_blank">fziglio@redhat.com</a>&gt; wrote:=
<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; commit 4b9092b96b8da946ff3d17922b0fcf225c5dc81f<br=
>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; Author: Jakub Jank=C5=AF &lt; <a href=3D"mailto:jj=
anku@redhat.com" target=3D"_blank">jjanku@redhat.com</a> &gt;<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; Date: Sat May 23 16:28:52 2020 +0200<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; session: make spice_session_get_webdav_server() pu=
blic<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; It will be necessary to access the webdav server f=
rom<br>
&gt; &gt; &gt; &gt; &gt; spice-gtk-session.c<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; which isn&#39;t compiled with spice-session-priv.h=
, so make<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; spice_session_get_webdav_server() public.<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; I haven&#39;t looked at the whole series. Wouldn&#39;t =
it make sense to make it a<br>
&gt; &gt; &gt; &gt; read-only property instead?<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; It sounds reasonable for me.<br>
&gt; &gt; &gt; Jakub ?<br>
&gt; &gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; I agree.<br>
&gt; &gt;<br>
&gt; &gt; Revert the commits please. I&#39;ll reopen the merge request once=
 I have it<br>
&gt; &gt; ready.<br>
&gt; &gt;<br>
&gt; &gt; Cheers,<br>
&gt; &gt; Jakub<br>
&gt; &gt;<br>
&gt;<br>
&gt; To be honest I don&#39;t see the need to revert commits, it&#39;s just=
 a change<br>
&gt; from public to private.<br>
<br>
Ok, so should I open a separate MR?<br>
<br>
To make sure that I didn&#39;t misunderstand it: the suggestion is to keep<=
br>
spice_session_get_webdav_server() private and install a new<br>
SpiceSession read-only property &quot;webdav&quot;, correct?<br><br></block=
quote><div><br></div><div>yes (the main motivation is to avoid adding new l=
ibrary symbols, and properties can be looked up at runtime, which may avoid=
 bumping dependencies in some cases)<br></div></div><br clear=3D"all"><br>-=
- <br><div dir=3D"ltr" class=3D"gmail_signature">Marc-Andr=C3=A9 Lureau<br>=
</div></div>

--0000000000005ee6aa05aee28df8--

--===============0640069601==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0640069601==--
