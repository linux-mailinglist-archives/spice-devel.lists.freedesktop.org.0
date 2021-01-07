Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B8DD2EE6AB
	for <lists+spice-devel@lfdr.de>; Thu,  7 Jan 2021 21:21:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7ED196E48B;
	Thu,  7 Jan 2021 20:21:57 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD0966E48B
 for <spice-devel@lists.freedesktop.org>; Thu,  7 Jan 2021 20:21:55 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id ce23so11467387ejb.8
 for <spice-devel@lists.freedesktop.org>; Thu, 07 Jan 2021 12:21:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9VDsD3kf4/AuAafORD3pBhlrjH7Z2jbg2uhHfSzqyec=;
 b=rFLJMu6uKEEXowEDrWkKPR4fYNGthgvT6uJcb7h62GreHvsU4H1mbdXsu6C9VVghc5
 P5VJ1EuD3VA8euQ4suf4TlsMZz2oJCFWZyv3EORShFvSw8DzifEoldEW3YHbIpnNRH77
 2AAY2ELHaJgsBdOmXSoWUpRdnFaXWbdRteL8Ya9sD6N540H1o+Hm7OpcIvFyvqRuxmLR
 a5bU49GAzo2g79RacimR9y6yMcN56Cyt9rWz0/t8wa4S+M6tqp/4Z8dcKTVcn9voMQOb
 Teyfu1dGHjEA0Qqo+Bosq/5K+MTgQ+6+0EDqr91MotbEC1MChO/2X6S25l2blh8IrT+l
 ayeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9VDsD3kf4/AuAafORD3pBhlrjH7Z2jbg2uhHfSzqyec=;
 b=j7bHLWxWzwnrc2mH1UH7m1R3O3KJCN2HPVcbE4jLg8OjBP7c7eU6FYmEFHTrZJOkUW
 jPhoLKergFZyhOj6C1Hpk3is4QYvpRqPE0XW023j/Ec7GUmo+wpJ7BEQwWYnqX2BCPdI
 cm+JPYBWLffCgJgjFJx3RfvJUeg6OxigxSqW9lh22npBvoeNA40jfNrcN1SBb8oIXu59
 OOZXvjCamiYBKHJ3NzON8usWhojupmpSAok0iO8dC1gyTPYQPDK3tLgh87faHhnJCBH/
 Qr7gHDAjv4p4Z7YpNYVysK7hHyQMPYo3ZYboQZiCj7Q2V3lPNYjxz9daCsWcz4ddM3CJ
 VIPA==
X-Gm-Message-State: AOAM533KgvGdOQJGrp939Zb+rKeDzylQvkioflExtomfGI/gC54vka/5
 HNjiW0ottfIvEJZTdCgMudjDeea1GGST3wcsG28=
X-Google-Smtp-Source: ABdhPJwYjtNM0wO8A8gYcX6Nd+LI5DPlpwMugbY6/InyBUlsCTKNJYjJFQU/dox/jIeT8U6asW1nz7VAGExRZ/VeXH8=
X-Received: by 2002:a17:906:f85:: with SMTP id q5mr384778ejj.105.1610050914275; 
 Thu, 07 Jan 2021 12:21:54 -0800 (PST)
MIME-Version: 1.0
References: <CAFjj602bWQ7G5Hkn68+TvpF2JSDhiwMhZ5LzCEaMp93FAZvU+Q@mail.gmail.com>
In-Reply-To: <CAFjj602bWQ7G5Hkn68+TvpF2JSDhiwMhZ5LzCEaMp93FAZvU+Q@mail.gmail.com>
From: =?UTF-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?= <marcandre.lureau@gmail.com>
Date: Fri, 8 Jan 2021 00:21:42 +0400
Message-ID: <CAJ+F1C+WxEeaNTD63CZujcQ5z7Ak4oFYoRgvZb0r_UnqsD-KOA@mail.gmail.com>
To: Nick Couchman <vnick@apache.org>
Subject: Re: [Spice-devel] Adding SPICE support to Guacamole - spice-glib
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
Content-Type: multipart/mixed; boundary="===============1460584038=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1460584038==
Content-Type: multipart/alternative; boundary="000000000000d0d68705b8553055"

--000000000000d0d68705b8553055
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi

On Fri, Jan 8, 2021 at 12:07 AM Nick Couchman <vnick@apache.org> wrote:

> Hey, everyone,
> I'm a contributor to the Guacamole project, and am currently working on
> adding support for the SPICE protocol to Guacamole. If you haven't heard =
of
> Guacamole, it is a protocol and associated software components for making
> various remote desktop interfaces available via native HTML5 in browsers.=
 I
> realize that there is already a spice-html5 client, but, for various
> reasons, we'd like to add the SPICE support to Guacamole, as well.
>
> Within Guacamole, the clients for the individual protocols are implemente=
d
> in a daemon - guacd - that is written in C. It accesses the various remot=
e
> desktop protocols that we support (VNC, RDP, SSH, and Telnet, today) and
> does the translation to the Guacamole protocol. So, I am attempting to
> write the SPICE client for this using the spice-glib library.
>
> I'm running into an issue with the code I've written thus far. I've
> followed API documentation and some code examples, and I have it to where
> I'm configuring all of the required pieces - hostname/IP, tls-port,
> password, etc. I've set up the handlers for the session (channel-event) a=
nd
> for the channels. When I attempt to connect, the SPICE client starts up,
> the session starts/connects, and I see the main channel get created, but
> the connection never progresses after that. As far as I can tell, it
> doesn't even try any sort of connection to the SPICE server - I don't see
> any network traffic going to the SPICE server, and it never progresses pa=
st
> that point. I'm not seeing any errors - nothing that indicates it's tried
> and failed, or is expecting additional input, or anything like that.
>
> I'm happy to share code if anyone is interested in looking at what I've
> done so far, or if anyone has any generic hints as to what I might check =
or
> resources that are helpful in writing a C-based client for SPICE, I'd
> greatly appreciate the insight and help. I'm sure there's something
> reasonably simple that I'm not doing, or doing out of order, but I'm a bi=
t
> stumped at the moment.
>

Spice uses multiple connections which are called channels for the various
streams. You need to get and listen for available channels on the
SpiceSession.

Have you looked at some of the tools in spice-gtk source tree, for example
spicy-screenshot.c ?
https://gitlab.freedesktop.org/spice/spice-gtk/-/blob/master/tools/spicy-sc=
reenshot.c,
this should give you a simple way to get started. You will need to handle
the SpiceDisplayChannel, SpiceCursorChannel and SpiceInputsChannel to have
basic UI remoting iirc.

Hope that helps

--=20
Marc-Andr=C3=A9 Lureau

--000000000000d0d68705b8553055
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi<br></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jan 8, 2021 at 12:07 AM Nic=
k Couchman &lt;<a href=3D"mailto:vnick@apache.org">vnick@apache.org</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">Hey, everyone,<div>I&#39;m a contributor to the Guacamole project,=
 and am currently working on adding support for the SPICE protocol to Guaca=
mole. If you haven&#39;t heard of Guacamole, it is a protocol and associate=
d software components for making various remote desktop interfaces availabl=
e via native HTML5 in browsers. I realize that there is already a spice-htm=
l5 client, but, for various reasons, we&#39;d like to add the SPICE support=
 to Guacamole, as well.</div><div><br></div><div>Within Guacamole, the clie=
nts for the individual protocols are implemented in a daemon - guacd - that=
 is written in C. It accesses the various remote desktop protocols=C2=A0tha=
t we support (VNC, RDP, SSH, and Telnet, today) and does the translation to=
 the Guacamole protocol. So, I am attempting to write the SPICE client for =
this using the spice-glib library.</div><div><br></div><div>I&#39;m running=
 into an issue with the code I&#39;ve written thus far. I&#39;ve followed A=
PI documentation and some code examples, and I have it to where I&#39;m con=
figuring all of the required pieces - hostname/IP, tls-port, password, etc.=
 I&#39;ve set up the handlers for the session (channel-event) and for the c=
hannels. When I attempt to connect, the SPICE client starts up, the session=
 starts/connects, and I see the main channel get created, but the connectio=
n never progresses after that. As far as I can tell, it doesn&#39;t even tr=
y any sort of connection to the SPICE server - I don&#39;t see any network =
traffic going to the SPICE server, and it never progresses past that point.=
 I&#39;m not seeing any errors - nothing that indicates it&#39;s tried and =
failed, or is expecting additional input, or anything like that.</div><div>=
<br></div><div>I&#39;m happy to share code if anyone is interested in looki=
ng at what I&#39;ve done so far, or if anyone has any generic hints as to w=
hat I might check or resources that are helpful in writing a C-based client=
 for SPICE, I&#39;d greatly appreciate the insight and help. I&#39;m sure t=
here&#39;s something reasonably simple that I&#39;m not doing, or doing out=
 of order, but I&#39;m a bit stumped at the moment.</div></div></blockquote=
><div><br></div><div>Spice uses multiple connections which are called chann=
els for the various streams. You need to get and listen for available chann=
els on the SpiceSession.<br></div><div><br></div><div>Have you looked at so=
me of the tools in spice-gtk source tree, for example spicy-screenshot.c ? =
<a href=3D"https://gitlab.freedesktop.org/spice/spice-gtk/-/blob/master/too=
ls/spicy-screenshot.c">https://gitlab.freedesktop.org/spice/spice-gtk/-/blo=
b/master/tools/spicy-screenshot.c</a>, this should give you a simple way to=
 get started. You will need to handle the SpiceDisplayChannel, SpiceCursorC=
hannel and SpiceInputsChannel to have basic UI remoting iirc.</div><div><br=
></div><div>Hope that helps<br></div></div><br>-- <br><div dir=3D"ltr" clas=
s=3D"gmail_signature">Marc-Andr=C3=A9 Lureau<br></div></div>

--000000000000d0d68705b8553055--

--===============1460584038==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1460584038==--
