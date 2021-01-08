Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 648592EEBD6
	for <lists+spice-devel@lfdr.de>; Fri,  8 Jan 2021 04:23:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 408506E5C0;
	Fri,  8 Jan 2021 03:23:30 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mxout1-ec2-va.apache.org (mxout1-ec2-va.apache.org
 [3.227.148.255])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 605396E5C0
 for <spice-devel@lists.freedesktop.org>; Fri,  8 Jan 2021 03:23:28 +0000 (UTC)
Received: from mail.apache.org (mailroute1-lw-us.apache.org [207.244.88.153])
 by mxout1-ec2-va.apache.org (ASF Mail Server at
 mxout1-ec2-va.apache.org) with SMTP id 1C1AA45F56
 for <spice-devel@lists.freedesktop.org>; Fri,  8 Jan 2021 03:23:08 +0000 (UTC)
Received: (qmail 57971 invoked by uid 99); 8 Jan 2021 03:23:08 -0000
Received: from mailrelay1-he-de.apache.org (HELO mailrelay1-he-de.apache.org)
 (116.203.21.61)
 by apache.org (qpsmtpd/0.29) with ESMTP; Fri, 08 Jan 2021 03:23:08 +0000
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com
 [209.85.166.54]) by mailrelay1-he-de.apache.org (ASF Mail Server at
 mailrelay1-he-de.apache.org) with ESMTPSA id E232D3E8A5
 for <spice-devel@lists.freedesktop.org>; Fri,  8 Jan 2021 03:23:06 +0000 (UTC)
Received: by mail-io1-f54.google.com with SMTP id w18so8446178iot.0
 for <spice-devel@lists.freedesktop.org>; Thu, 07 Jan 2021 19:23:06 -0800 (PST)
X-Gm-Message-State: AOAM5324Za/IZb3aIbrJqIWfSK79QRQtjNcMhPOJjDVmtR1Y0KBFpdab
 j400bzbNY38MvRdK47SRkyREKteEg31lLIcxPTY=
X-Google-Smtp-Source: ABdhPJwF+ELV9NHcgcwtmfOAVriBSVgr1SELn7zi/1fF5AsrG/1sH0F11/cQOi+5EWmTiuflcms3hlADeSxCfg76qpI=
X-Received: by 2002:a05:6638:2243:: with SMTP id
 m3mr1540816jas.115.1610076185690; 
 Thu, 07 Jan 2021 19:23:05 -0800 (PST)
MIME-Version: 1.0
References: <CAFjj602bWQ7G5Hkn68+TvpF2JSDhiwMhZ5LzCEaMp93FAZvU+Q@mail.gmail.com>
 <CAJ+F1C+WxEeaNTD63CZujcQ5z7Ak4oFYoRgvZb0r_UnqsD-KOA@mail.gmail.com>
 <CAFjj601Uzx9AP2wEWrqCCfZKEjy4be727QCt4zN_XRy2qYweNA@mail.gmail.com>
In-Reply-To: <CAFjj601Uzx9AP2wEWrqCCfZKEjy4be727QCt4zN_XRy2qYweNA@mail.gmail.com>
From: Nick Couchman <vnick@apache.org>
Date: Thu, 7 Jan 2021 22:22:54 -0500
X-Gmail-Original-Message-ID: <CAFjj6018BVF2EMqJYMwj8fCdiTiSwL==pkb-EYY116QWFjSGaw@mail.gmail.com>
Message-ID: <CAFjj6018BVF2EMqJYMwj8fCdiTiSwL==pkb-EYY116QWFjSGaw@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============1744176649=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1744176649==
Content-Type: multipart/alternative; boundary="0000000000001c09c305b85b1316"

--0000000000001c09c305b85b1316
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 7, 2021 at 3:41 PM Nick Couchman <vnick@apache.org> wrote:

> On Thu, Jan 7, 2021 at 3:21 PM Marc-Andr=C3=A9 Lureau <
> marcandre.lureau@gmail.com> wrote:
>
>> Hi
>>
>> On Fri, Jan 8, 2021 at 12:07 AM Nick Couchman <vnick@apache.org> wrote:
>>
>>> Hey, everyone,
>>> I'm a contributor to the Guacamole project, and am currently working on
>>> adding support for the SPICE protocol to Guacamole. If you haven't hear=
d of
>>> Guacamole, it is a protocol and associated software components for maki=
ng
>>> various remote desktop interfaces available via native HTML5 in browser=
s. I
>>> realize that there is already a spice-html5 client, but, for various
>>> reasons, we'd like to add the SPICE support to Guacamole, as well.
>>>
>>> Within Guacamole, the clients for the individual protocols are
>>> implemented in a daemon - guacd - that is written in C. It accesses the
>>> various remote desktop protocols that we support (VNC, RDP, SSH, and
>>> Telnet, today) and does the translation to the Guacamole protocol. So, =
I am
>>> attempting to write the SPICE client for this using the spice-glib libr=
ary.
>>>
>>> I'm running into an issue with the code I've written thus far. I've
>>> followed API documentation and some code examples, and I have it to whe=
re
>>> I'm configuring all of the required pieces - hostname/IP, tls-port,
>>> password, etc. I've set up the handlers for the session (channel-event)=
 and
>>> for the channels. When I attempt to connect, the SPICE client starts up=
,
>>> the session starts/connects, and I see the main channel get created, bu=
t
>>> the connection never progresses after that. As far as I can tell, it
>>> doesn't even try any sort of connection to the SPICE server - I don't s=
ee
>>> any network traffic going to the SPICE server, and it never progresses =
past
>>> that point. I'm not seeing any errors - nothing that indicates it's tri=
ed
>>> and failed, or is expecting additional input, or anything like that.
>>>
>>> I'm happy to share code if anyone is interested in looking at what I've
>>> done so far, or if anyone has any generic hints as to what I might chec=
k or
>>> resources that are helpful in writing a C-based client for SPICE, I'd
>>> greatly appreciate the insight and help. I'm sure there's something
>>> reasonably simple that I'm not doing, or doing out of order, but I'm a =
bit
>>> stumped at the moment.
>>>
>>
>> Spice uses multiple connections which are called channels for the variou=
s
>> streams. You need to get and listen for available channels on the
>> SpiceSession.
>>
>>
> Thanks for the quick response, Marc-Andre. Yes, I've got a handler that i=
s
> supposed to listen for each of the channels to be created and then add th=
e
> signal handlers for each of those channels (and connect to them, where
> applicable). The main channel is the only one that I ever see get created=
,
> after running "spice_session_connect(session)" on the SpiceSession that
> gets started. I never see the Display, Cursor, Input, Playback, Record, o=
r
> WebDav channels get created.
>
>

Just to add to this - I set the "SPICE_DEBUG" environment variable to get a
little more debugging, and these are the debug messages I get:

(process:129359): GSpice-DEBUG: 22:02:18.289: spice-session.c:289 New
session (compiled from package spice-gtk 0.35)
(process:129359): GSpice-DEBUG: 22:02:18.289: spice-session.c:293 Supported
channels: main, display, inputs, cursor, playback, record, smartcard,
usbredir
(process:129359): GSpice-DEBUG: 22:02:18.291: spice-session.c:1774 no
migration in progress
(process:129359): GSpice-DEBUG: 22:02:18.291: spice-channel.c:141 main-1:0:
spice_channel_constructed
(process:129359): GSpice-DEBUG: 22:02:18.291: spice-session.c:2294
main-1:0: new main channel, switching

And that's the last of the debug I get from SPICE - nothing more after
that. I'm wading through the spice-gtk code trying to figure out the code
flow there to see where it might be hanging/stopping, and what it's waiting
for.

-Nick

>

--0000000000001c09c305b85b1316
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, Jan 7, 2021 at 3:41 PM Nick Couch=
man &lt;<a href=3D"mailto:vnick@apache.org">vnick@apache.org</a>&gt; wrote:=
<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">On Thu, Jan 7, 2021 at 3:21 P=
M Marc-Andr=C3=A9 Lureau &lt;<a href=3D"mailto:marcandre.lureau@gmail.com" =
target=3D"_blank">marcandre.lureau@gmail.com</a>&gt; wrote:<br></div><div c=
lass=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
 dir=3D"ltr"><div dir=3D"ltr">Hi<br></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Fri, Jan 8, 2021 at 12:07 AM Nick Co=
uchman &lt;<a href=3D"mailto:vnick@apache.org" target=3D"_blank">vnick@apac=
he.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div dir=3D"ltr">Hey, everyone,<div>I&#39;m a contributor to the Guac=
amole project, and am currently working on adding support for the SPICE pro=
tocol to Guacamole. If you haven&#39;t heard of Guacamole, it is a protocol=
 and associated software components for making various remote desktop inter=
faces available via native HTML5 in browsers. I realize that there is alrea=
dy a spice-html5 client, but, for various reasons, we&#39;d like to add the=
 SPICE support to Guacamole, as well.</div><div><br></div><div>Within Guaca=
mole, the clients for the individual protocols are implemented in a daemon =
- guacd - that is written in C. It accesses the various remote desktop prot=
ocols=C2=A0that we support (VNC, RDP, SSH, and Telnet, today) and does the =
translation to the Guacamole protocol. So, I am attempting to write the SPI=
CE client for this using the spice-glib library.</div><div><br></div><div>I=
&#39;m running into an issue with the code I&#39;ve written thus far. I&#39=
;ve followed API documentation and some code examples, and I have it to whe=
re I&#39;m configuring all of the required pieces - hostname/IP, tls-port, =
password, etc. I&#39;ve set up the handlers for the session (channel-event)=
 and for the channels. When I attempt to connect, the SPICE client starts u=
p, the session starts/connects, and I see the main channel get created, but=
 the connection never progresses after that. As far as I can tell, it doesn=
&#39;t even try any sort of connection to the SPICE server - I don&#39;t se=
e any network traffic going to the SPICE server, and it never progresses pa=
st that point. I&#39;m not seeing any errors - nothing that indicates it&#3=
9;s tried and failed, or is expecting additional input, or anything like th=
at.</div><div><br></div><div>I&#39;m happy to share code if anyone is inter=
ested in looking at what I&#39;ve done so far, or if anyone has any generic=
 hints as to what I might check or resources that are helpful in writing a =
C-based client for SPICE, I&#39;d greatly appreciate the insight and help. =
I&#39;m sure there&#39;s something reasonably simple that I&#39;m not doing=
, or doing out of order, but I&#39;m a bit stumped at the moment.</div></di=
v></blockquote><div><br></div><div>Spice uses multiple connections which ar=
e called channels for the various streams. You need to get and listen for a=
vailable channels on the SpiceSession.<br></div><div><br></div></div></div>=
</blockquote><div><br></div><div>Thanks for the quick response, Marc-Andre.=
 Yes, I&#39;ve got a handler that is supposed to listen for each of the cha=
nnels to be created and then add the signal handlers for each of those chan=
nels (and connect to them, where applicable). The main channel is the only =
one that I ever see get created, after running &quot;spice_session_connect(=
session)&quot; on the SpiceSession that gets started. I never see the Displ=
ay, Cursor, Input, Playback, Record, or WebDav channels get created.</div><=
div>=C2=A0</div></div></div></blockquote><div><br></div><div>Just to add to=
 this - I set the &quot;SPICE_DEBUG&quot; environment variable to get a lit=
tle more debugging, and these are the debug messages I get:</div><div><br><=
/div><div>(process:129359): GSpice-DEBUG: 22:02:18.289: spice-session.c:289=
 New session (compiled from package spice-gtk 0.35)<br>(process:129359): GS=
pice-DEBUG: 22:02:18.289: spice-session.c:293 Supported channels: main, dis=
play, inputs, cursor, playback, record, smartcard, usbredir<br></div><div>(=
process:129359): GSpice-DEBUG: 22:02:18.291: spice-session.c:1774 no migrat=
ion in progress<br>(process:129359): GSpice-DEBUG: 22:02:18.291: spice-chan=
nel.c:141 main-1:0: spice_channel_constructed<br>(process:129359): GSpice-D=
EBUG: 22:02:18.291: spice-session.c:2294 main-1:0: new main channel, switch=
ing<br></div><div><br></div><div>And that&#39;s the last of the debug I get=
 from SPICE - nothing more after that. I&#39;m wading through the spice-gtk=
 code trying to figure out the code flow there to see where it might be han=
ging/stopping, and what it&#39;s waiting for.</div><div><br></div><div>-Nic=
k</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">
</blockquote></div></div>

--0000000000001c09c305b85b1316--

--===============1744176649==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1744176649==--
