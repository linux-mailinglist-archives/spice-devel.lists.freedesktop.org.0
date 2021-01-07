Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F722EE711
	for <lists+spice-devel@lfdr.de>; Thu,  7 Jan 2021 21:41:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36E1989939;
	Thu,  7 Jan 2021 20:41:51 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mxout1-ec2-va.apache.org (mxout1-ec2-va.apache.org
 [3.227.148.255])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B99189939
 for <spice-devel@lists.freedesktop.org>; Thu,  7 Jan 2021 20:41:50 +0000 (UTC)
Received: from mail.apache.org (mailroute1-lw-us.apache.org [207.244.88.153])
 by mxout1-ec2-va.apache.org (ASF Mail Server at
 mxout1-ec2-va.apache.org) with SMTP id 379364167C
 for <spice-devel@lists.freedesktop.org>; Thu,  7 Jan 2021 20:41:49 +0000 (UTC)
Received: (qmail 92865 invoked by uid 99); 7 Jan 2021 20:41:49 -0000
Received: from mailrelay1-he-de.apache.org (HELO mailrelay1-he-de.apache.org)
 (116.203.21.61)
 by apache.org (qpsmtpd/0.29) with ESMTP; Thu, 07 Jan 2021 20:41:49 +0000
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com
 [209.85.166.49]) by mailrelay1-he-de.apache.org (ASF Mail Server at
 mailrelay1-he-de.apache.org) with ESMTPSA id 1BD893E856
 for <spice-devel@lists.freedesktop.org>; Thu,  7 Jan 2021 20:41:48 +0000 (UTC)
Received: by mail-io1-f49.google.com with SMTP id i18so7510534ioa.1
 for <spice-devel@lists.freedesktop.org>; Thu, 07 Jan 2021 12:41:48 -0800 (PST)
X-Gm-Message-State: AOAM531bIx3Kt0wPJbJ6DAZ5bVrIIQGIeSG12EDB7FdEyYAfKEeXPs5y
 pq5v5Nr1cFN0WvJKsIPx5EG2EsaGaes39YfaTk4=
X-Google-Smtp-Source: ABdhPJyPHAAkdDu1mqJa/tmslUAvZPi9XPFFkw3BYK2ExrD6VmvfEu3boYNF8yaKgwow9PVZr4i0USfqPbNDp3QsLKU=
X-Received: by 2002:a02:b011:: with SMTP id p17mr311163jah.55.1610052106929;
 Thu, 07 Jan 2021 12:41:46 -0800 (PST)
MIME-Version: 1.0
References: <CAFjj602bWQ7G5Hkn68+TvpF2JSDhiwMhZ5LzCEaMp93FAZvU+Q@mail.gmail.com>
 <CAJ+F1C+WxEeaNTD63CZujcQ5z7Ak4oFYoRgvZb0r_UnqsD-KOA@mail.gmail.com>
In-Reply-To: <CAJ+F1C+WxEeaNTD63CZujcQ5z7Ak4oFYoRgvZb0r_UnqsD-KOA@mail.gmail.com>
From: Nick Couchman <vnick@apache.org>
Date: Thu, 7 Jan 2021 15:41:36 -0500
X-Gmail-Original-Message-ID: <CAFjj601Uzx9AP2wEWrqCCfZKEjy4be727QCt4zN_XRy2qYweNA@mail.gmail.com>
Message-ID: <CAFjj601Uzx9AP2wEWrqCCfZKEjy4be727QCt4zN_XRy2qYweNA@mail.gmail.com>
To: =?UTF-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?= <marcandre.lureau@gmail.com>
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
Content-Type: multipart/mixed; boundary="===============0911096082=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0911096082==
Content-Type: multipart/alternative; boundary="000000000000e74ed405b85577b5"

--000000000000e74ed405b85577b5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 7, 2021 at 3:21 PM Marc-Andr=C3=A9 Lureau <marcandre.lureau@gma=
il.com>
wrote:

> Hi
>
> On Fri, Jan 8, 2021 at 12:07 AM Nick Couchman <vnick@apache.org> wrote:
>
>> Hey, everyone,
>> I'm a contributor to the Guacamole project, and am currently working on
>> adding support for the SPICE protocol to Guacamole. If you haven't heard=
 of
>> Guacamole, it is a protocol and associated software components for makin=
g
>> various remote desktop interfaces available via native HTML5 in browsers=
. I
>> realize that there is already a spice-html5 client, but, for various
>> reasons, we'd like to add the SPICE support to Guacamole, as well.
>>
>> Within Guacamole, the clients for the individual protocols are
>> implemented in a daemon - guacd - that is written in C. It accesses the
>> various remote desktop protocols that we support (VNC, RDP, SSH, and
>> Telnet, today) and does the translation to the Guacamole protocol. So, I=
 am
>> attempting to write the SPICE client for this using the spice-glib libra=
ry.
>>
>> I'm running into an issue with the code I've written thus far. I've
>> followed API documentation and some code examples, and I have it to wher=
e
>> I'm configuring all of the required pieces - hostname/IP, tls-port,
>> password, etc. I've set up the handlers for the session (channel-event) =
and
>> for the channels. When I attempt to connect, the SPICE client starts up,
>> the session starts/connects, and I see the main channel get created, but
>> the connection never progresses after that. As far as I can tell, it
>> doesn't even try any sort of connection to the SPICE server - I don't se=
e
>> any network traffic going to the SPICE server, and it never progresses p=
ast
>> that point. I'm not seeing any errors - nothing that indicates it's trie=
d
>> and failed, or is expecting additional input, or anything like that.
>>
>> I'm happy to share code if anyone is interested in looking at what I've
>> done so far, or if anyone has any generic hints as to what I might check=
 or
>> resources that are helpful in writing a C-based client for SPICE, I'd
>> greatly appreciate the insight and help. I'm sure there's something
>> reasonably simple that I'm not doing, or doing out of order, but I'm a b=
it
>> stumped at the moment.
>>
>
> Spice uses multiple connections which are called channels for the various
> streams. You need to get and listen for available channels on the
> SpiceSession.
>
>
Thanks for the quick response, Marc-Andre. Yes, I've got a handler that is
supposed to listen for each of the channels to be created and then add the
signal handlers for each of those channels (and connect to them, where
applicable). The main channel is the only one that I ever see get created,
after running "spice_session_connect(session)" on the SpiceSession that
gets started. I never see the Display, Cursor, Input, Playback, Record, or
WebDav channels get created.


> Have you looked at some of the tools in spice-gtk source tree, for exampl=
e
> spicy-screenshot.c ?
> https://gitlab.freedesktop.org/spice/spice-gtk/-/blob/master/tools/spicy-=
screenshot.c,
> this should give you a simple way to get started. You will need to handle
> the SpiceDisplayChannel, SpiceCursorChannel and SpiceInputsChannel to hav=
e
> basic UI remoting iirc.
>
>
Yeah, I've got tabs opened for the GitLab repo for spice-gtk, and I did
take a look at that. I'll take another, closer look and see if I can track
down what's different there from what I'm doing.

Again, appreciate the quick response and hints!

-Nick

--000000000000e74ed405b85577b5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, Jan 7, 2021 at 3:21 PM Marc-Andr=
=C3=A9 Lureau &lt;<a href=3D"mailto:marcandre.lureau@gmail.com">marcandre.l=
ureau@gmail.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"=
>Hi<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Fri, Jan 8, 2021 at 12:07 AM Nick Couchman &lt;<a href=3D"mailto:=
vnick@apache.org" target=3D"_blank">vnick@apache.org</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hey, e=
veryone,<div>I&#39;m a contributor to the Guacamole project, and am current=
ly working on adding support for the SPICE protocol to Guacamole. If you ha=
ven&#39;t heard of Guacamole, it is a protocol and associated software comp=
onents for making various remote desktop interfaces available via native HT=
ML5 in browsers. I realize that there is already a spice-html5 client, but,=
 for various reasons, we&#39;d like to add the SPICE support to Guacamole, =
as well.</div><div><br></div><div>Within Guacamole, the clients for the ind=
ividual protocols are implemented in a daemon - guacd - that is written in =
C. It accesses the various remote desktop protocols=C2=A0that we support (V=
NC, RDP, SSH, and Telnet, today) and does the translation to the Guacamole =
protocol. So, I am attempting to write the SPICE client for this using the =
spice-glib library.</div><div><br></div><div>I&#39;m running into an issue =
with the code I&#39;ve written thus far. I&#39;ve followed API documentatio=
n and some code examples, and I have it to where I&#39;m configuring all of=
 the required pieces - hostname/IP, tls-port, password, etc. I&#39;ve set u=
p the handlers for the session (channel-event) and for the channels. When I=
 attempt to connect, the SPICE client starts up, the session starts/connect=
s, and I see the main channel get created, but the connection never progres=
ses after that. As far as I can tell, it doesn&#39;t even try any sort of c=
onnection to the SPICE server - I don&#39;t see any network traffic going t=
o the SPICE server, and it never progresses past that point. I&#39;m not se=
eing any errors - nothing that indicates it&#39;s tried and failed, or is e=
xpecting additional input, or anything like that.</div><div><br></div><div>=
I&#39;m happy to share code if anyone is interested in looking at what I&#3=
9;ve done so far, or if anyone has any generic hints as to what I might che=
ck or resources that are helpful in writing a C-based client for SPICE, I&#=
39;d greatly appreciate the insight and help. I&#39;m sure there&#39;s some=
thing reasonably simple that I&#39;m not doing, or doing out of order, but =
I&#39;m a bit stumped at the moment.</div></div></blockquote><div><br></div=
><div>Spice uses multiple connections which are called channels for the var=
ious streams. You need to get and listen for available channels on the Spic=
eSession.<br></div><div><br></div></div></div></blockquote><div><br></div><=
div>Thanks for the quick response, Marc-Andre. Yes, I&#39;ve got a handler =
that is supposed to listen for each of the channels to be created and then =
add the signal handlers for each of those channels (and connect to them, wh=
ere applicable). The main channel is the only one that I ever see get creat=
ed, after running &quot;spice_session_connect(session)&quot; on the SpiceSe=
ssion that gets started. I never see the Display, Cursor, Input, Playback, =
Record, or WebDav channels get created.</div><div>=C2=A0</div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_q=
uote"><div></div><div>Have you looked at some of the tools in spice-gtk sou=
rce tree, for example spicy-screenshot.c ? <a href=3D"https://gitlab.freede=
sktop.org/spice/spice-gtk/-/blob/master/tools/spicy-screenshot.c" target=3D=
"_blank">https://gitlab.freedesktop.org/spice/spice-gtk/-/blob/master/tools=
/spicy-screenshot.c</a>, this should give you a simple way to get started. =
You will need to handle the SpiceDisplayChannel, SpiceCursorChannel and Spi=
ceInputsChannel to have basic UI remoting iirc.</div><div><br></div></div><=
/div></blockquote><div><br></div><div>Yeah, I&#39;ve got tabs opened for th=
e GitLab repo for spice-gtk, and I did take a look at that. I&#39;ll take a=
nother, closer look and see if I can track down what&#39;s different there =
from what I&#39;m doing.</div><div><br></div><div>Again, appreciate the qui=
ck response and hints!</div><div><br></div><div>-Nick</div></div></div>

--000000000000e74ed405b85577b5--

--===============0911096082==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0911096082==--
