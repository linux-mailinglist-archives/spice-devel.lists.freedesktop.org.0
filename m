Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 396452EE68F
	for <lists+spice-devel@lfdr.de>; Thu,  7 Jan 2021 21:07:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B05B46E50D;
	Thu,  7 Jan 2021 20:07:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 452 seconds by postgrey-1.36 at gabe;
 Thu, 07 Jan 2021 20:07:53 UTC
Received: from mxout1-ec2-va.apache.org (mxout1-ec2-va.apache.org
 [3.227.148.255])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E18F6E50D
 for <spice-devel@lists.freedesktop.org>; Thu,  7 Jan 2021 20:07:53 +0000 (UTC)
Received: from mail.apache.org (mailroute1-lw-us.apache.org [207.244.88.153])
 by mxout1-ec2-va.apache.org (ASF Mail Server at
 mxout1-ec2-va.apache.org) with SMTP id E8FA241DAD
 for <spice-devel@lists.freedesktop.org>; Thu,  7 Jan 2021 20:00:20 +0000 (UTC)
Received: (qmail 36715 invoked by uid 99); 7 Jan 2021 20:00:20 -0000
Received: from mailrelay1-he-de.apache.org (HELO mailrelay1-he-de.apache.org)
 (116.203.21.61)
 by apache.org (qpsmtpd/0.29) with ESMTP; Thu, 07 Jan 2021 20:00:20 +0000
Received: from mail-il1-f180.google.com (mail-il1-f180.google.com
 [209.85.166.180]) by mailrelay1-he-de.apache.org (ASF Mail Server at
 mailrelay1-he-de.apache.org) with ESMTPSA id CEA9C3E856
 for <spice-devel@lists.freedesktop.org>; Thu,  7 Jan 2021 20:00:19 +0000 (UTC)
Received: by mail-il1-f180.google.com with SMTP id q1so7938513ilt.6
 for <spice-devel@lists.freedesktop.org>; Thu, 07 Jan 2021 12:00:19 -0800 (PST)
X-Gm-Message-State: AOAM533Kq5hRSBgPFrq4Lfv5PkMNXWXSj4EHzOzCDwmMOMiJtb9Cr65q
 AaxM+QQx+vx+W53Kq7P6+IgLOhFq1yumEaikSxo=
X-Google-Smtp-Source: ABdhPJy0AlIxepm/Utr67UzQ/kg3YodkWwvnWnTCXS+5AfUHe9D7+6aEZGei5V3Xj8k402K/UaHl2SydQUd8CXbkBxo=
X-Received: by 2002:a92:dc8c:: with SMTP id c12mr535328iln.274.1610049618564; 
 Thu, 07 Jan 2021 12:00:18 -0800 (PST)
MIME-Version: 1.0
From: Nick Couchman <vnick@apache.org>
Date: Thu, 7 Jan 2021 15:00:07 -0500
X-Gmail-Original-Message-ID: <CAFjj602bWQ7G5Hkn68+TvpF2JSDhiwMhZ5LzCEaMp93FAZvU+Q@mail.gmail.com>
Message-ID: <CAFjj602bWQ7G5Hkn68+TvpF2JSDhiwMhZ5LzCEaMp93FAZvU+Q@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
Subject: [Spice-devel] Adding SPICE support to Guacamole - spice-glib
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
Content-Type: multipart/mixed; boundary="===============0654779867=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0654779867==
Content-Type: multipart/alternative; boundary="00000000000095dda705b854e31b"

--00000000000095dda705b854e31b
Content-Type: text/plain; charset="UTF-8"

Hey, everyone,
I'm a contributor to the Guacamole project, and am currently working on
adding support for the SPICE protocol to Guacamole. If you haven't heard of
Guacamole, it is a protocol and associated software components for making
various remote desktop interfaces available via native HTML5 in browsers. I
realize that there is already a spice-html5 client, but, for various
reasons, we'd like to add the SPICE support to Guacamole, as well.

Within Guacamole, the clients for the individual protocols are implemented
in a daemon - guacd - that is written in C. It accesses the various remote
desktop protocols that we support (VNC, RDP, SSH, and Telnet, today) and
does the translation to the Guacamole protocol. So, I am attempting to
write the SPICE client for this using the spice-glib library.

I'm running into an issue with the code I've written thus far. I've
followed API documentation and some code examples, and I have it to where
I'm configuring all of the required pieces - hostname/IP, tls-port,
password, etc. I've set up the handlers for the session (channel-event) and
for the channels. When I attempt to connect, the SPICE client starts up,
the session starts/connects, and I see the main channel get created, but
the connection never progresses after that. As far as I can tell, it
doesn't even try any sort of connection to the SPICE server - I don't see
any network traffic going to the SPICE server, and it never progresses past
that point. I'm not seeing any errors - nothing that indicates it's tried
and failed, or is expecting additional input, or anything like that.

I'm happy to share code if anyone is interested in looking at what I've
done so far, or if anyone has any generic hints as to what I might check or
resources that are helpful in writing a C-based client for SPICE, I'd
greatly appreciate the insight and help. I'm sure there's something
reasonably simple that I'm not doing, or doing out of order, but I'm a bit
stumped at the moment.

Regards,
Nick

--00000000000095dda705b854e31b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey, everyone,<div>I&#39;m a contributor to the Guacamole =
project, and am currently working on adding support for the SPICE protocol =
to Guacamole. If you haven&#39;t heard of Guacamole, it is a protocol and a=
ssociated software components for making various remote desktop interfaces =
available via native HTML5 in browsers. I realize that there is already a s=
pice-html5 client, but, for various reasons, we&#39;d like to add the SPICE=
 support to Guacamole, as well.</div><div><br></div><div>Within Guacamole, =
the clients for the individual protocols are implemented in a daemon - guac=
d - that is written in C. It accesses the various remote desktop protocols=
=C2=A0that we support (VNC, RDP, SSH, and Telnet, today) and does the trans=
lation to the Guacamole protocol. So, I am attempting to write the SPICE cl=
ient for this using the spice-glib library.</div><div><br></div><div>I&#39;=
m running into an issue with the code I&#39;ve written thus far. I&#39;ve f=
ollowed API documentation and some code examples, and I have it to where I&=
#39;m configuring all of the required pieces - hostname/IP, tls-port, passw=
ord, etc. I&#39;ve set up the handlers for the session (channel-event) and =
for the channels. When I attempt to connect, the SPICE client starts up, th=
e session starts/connects, and I see the main channel get created, but the =
connection never progresses after that. As far as I can tell, it doesn&#39;=
t even try any sort of connection to the SPICE server - I don&#39;t see any=
 network traffic going to the SPICE server, and it never progresses past th=
at point. I&#39;m not seeing any errors - nothing that indicates it&#39;s t=
ried and failed, or is expecting additional input, or anything like that.</=
div><div><br></div><div>I&#39;m happy to share code if anyone is interested=
 in looking at what I&#39;ve done so far, or if anyone has any generic hint=
s as to what I might check or resources that are helpful in writing a C-bas=
ed client for SPICE, I&#39;d greatly appreciate the insight and help. I&#39=
;m sure there&#39;s something reasonably simple that I&#39;m not doing, or =
doing out of order, but I&#39;m a bit stumped at the moment.</div><div><br>=
</div><div>Regards,</div><div>Nick</div></div>

--00000000000095dda705b854e31b--

--===============0654779867==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0654779867==--
