Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D6F0551D76
	for <lists+spice-devel@lfdr.de>; Mon, 20 Jun 2022 16:08:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D915B10E2FC;
	Mon, 20 Jun 2022 14:08:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 552 seconds by postgrey-1.36 at gabe;
 Mon, 20 Jun 2022 14:08:53 UTC
Received: from mxout1-ec2-va.apache.org (mxout1-ec2-va.apache.org
 [3.227.148.255])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C37810E13C
 for <spice-devel@lists.freedesktop.org>; Mon, 20 Jun 2022 14:08:53 +0000 (UTC)
Received: from mail.apache.org (mailroute1-lw-us.apache.org [207.244.88.153])
 by mxout1-ec2-va.apache.org (ASF Mail Server at
 mxout1-ec2-va.apache.org) with SMTP id 9A2C43E991
 for <spice-devel@lists.freedesktop.org>; Mon, 20 Jun 2022 13:59:34 +0000 (UTC)
Received: (qmail 48324 invoked by uid 99); 20 Jun 2022 13:59:34 -0000
Received: from ec2-52-204-25-47.compute-1.amazonaws.com (HELO
 mailrelay1-ec2-va.apache.org) (52.204.25.47)
 by apache.org (qpsmtpd/0.29) with ESMTP; Mon, 20 Jun 2022 13:59:34 +0000
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com
 [209.85.217.50]) by mailrelay1-ec2-va.apache.org (ASF Mail Server at
 mailrelay1-ec2-va.apache.org) with ESMTPSA id 68F4A3E8F1
 for <spice-devel@lists.freedesktop.org>; Mon, 20 Jun 2022 13:59:34 +0000 (UTC)
Received: by mail-vs1-f50.google.com with SMTP id k25so2967203vso.6
 for <spice-devel@lists.freedesktop.org>; Mon, 20 Jun 2022 06:59:34 -0700 (PDT)
X-Gm-Message-State: AJIora+n8tLjttRbChg8mOVcCnP9fUjohnx2TvRP/elO4NJFci4TH/Pv
 YYUjJXjxOQit6MQvmoIRASiEEZJkIXQoEqqG4z0=
X-Google-Smtp-Source: AGRyM1u6IDdd5iY/LAYU4mnc31k3RJgKlmOk+C0HPzMq+EQHijA+AUMRS8fNjvZRPc3VEMKb1dYq92MrTOZLbcsM1yY=
X-Received: by 2002:a05:6102:30a8:b0:34b:95a7:6feb with SMTP id
 y8-20020a05610230a800b0034b95a76febmr8400067vsd.32.1655733573948; Mon, 20 Jun
 2022 06:59:33 -0700 (PDT)
MIME-Version: 1.0
From: Nick Couchman <vnick@apache.org>
Date: Mon, 20 Jun 2022 09:59:23 -0400
X-Gmail-Original-Message-ID: <CAFjj602+NQwJF-QB6V=9ELfc9qgqBdvhSr5_VSAdy6-LZCoPbA@mail.gmail.com>
Message-ID: <CAFjj602+NQwJF-QB6V=9ELfc9qgqBdvhSr5_VSAdy6-LZCoPbA@mail.gmail.com>
To: spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: multipart/alternative; boundary="000000000000849e3605e1e1837d"
Subject: [Spice-devel] Issues with Clipboard Grab/Release Callbacks
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

--000000000000849e3605e1e1837d
Content-Type: text/plain; charset="UTF-8"

Hello, everyone,
I've posted here, before, with some questions during my journey of trying
to add support for the SPICE protocol to the Guacamole project. The good
news is that I've actually made measurable progress in the implementation -
I can now connect to a SPICE server, and the basics work (mouse and
keyboard - mostly anyway), so I'm moving on to the extra stuff - clipboard,
audio, file transfer, etc.

In working on the clipboard integration, I'm currently running into an
issue with a couple of the callback functions, specifically the clipboard
grab/release functions, where the number of arguments seems to be
mismatched. According to the documentation, these callbacks should be
called with the following arguments:

gboolean
user_function (SpiceMainChannel *main,
               guint             selection,
               gpointer          types,
               guint             ntypes,
               gpointer          user_data)

void
user_function (SpiceMainChannel *main,
               guint             selection,
               gpointer          user_data)

I've implemented the callbacks with those arguments, as follows:

void guac_spice_clipboard_selection_grab_handler(SpiceMainChannel channel,
        guint selection, gpointer types, guint ntypes, guac_client* client)

void guac_spice_clipboard_selection_release_handler(SpiceMainChannel
channel,
        guint selection, guac_client* client)

and registered them appropriately. However, if I use them as implemented
above, when the callbacks are triggered, the application segfaults when I
try to access the "guac_client* client" data structure. I used GDB to try
to help track this down, and I noticed that the value of "client" was 0x1,
which looks less like a pointer to a memory location and more like the
number 1.

So, I decided to add another argument to the callback functions, just
before the client argument:

void guac_spice_clipboard_selection_grab_handler(SpiceMainChannel channel,
        guint selection, gpointer types, guint ntypes, guint extra,
guac_client* client)

void guac_spice_clipboard_selection_release_handler(SpiceMainChannel
channel,
        guint selection, guint extra, guac_client* client)

Strangely, this works - the client data structure can be referenced, there
are no segfaults (yet), etc. So, I decided to print the values that are
being passed for all of these parameters, and I get the following:

guacd[100252]: DEBUG: Notifying client of clipboard grab in the guest.
guacd[100252]: DEBUG: Arg: channel: 0x00000000
guacd[100252]: DEBUG: Arg: selection: 1275303536
guacd[100252]: DEBUG: Arg: types: 0x00000001
guacd[100252]: DEBUG: Arg: ntypes: 1276022924
guacd[100252]: DEBUG: Arg: extra: 1

I printed them in the format I thought they should be in based on what the
arguments are supposed to be - I probably should have just done all hex.
But, it seems like maybe the "extra" parameter being passed is in front of
the channel, since the channel is showing up as all zeros?

I was trying to find the code where the callbacks are actually called - I'm
guessing, since this is clipboard integration, it'll be in the vdagent code
somewhere - but I was having trouble tracking that down.

If anyone has any ideas, I'd appreciate the insight into this - I'm puzzled
by this apparent mismatch in the number of arguments. Also, if it matters,
I'm running CentOS 8 Stream, using Xspice to provide a test SPICE server,
and running spice-vdagentd/spice-vdagent within my X session. Yes, I know
Xspice is unmaintained, but I just needed something simple and that I
didn't have to spend a bunch of time building in order to give me a spice
server to point at, and, so far, this has been pretty reliable. Also, at
its core, it appears to use the same spice-qxl X driver that x11spice uses,
just with a simple Python wrapper script for generating an X config file
and starting the X server/display. So, I think it's still pretty "safe" for
attempting to develop this Guacamole integration - if for some reason you
believe me to be wrong about that, please let me know.

Thanks,
Nick

--000000000000849e3605e1e1837d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello, everyone,<div>I&#39;ve posted here, before, with so=
me questions during my journey of trying to add support for the SPICE proto=
col to the Guacamole project. The good news is that I&#39;ve actually made =
measurable progress in the implementation - I can now connect to a SPICE se=
rver, and the basics work (mouse and keyboard - mostly anyway), so I&#39;m =
moving on to the extra stuff - clipboard, audio, file transfer, etc.</div><=
div><br></div><div>In working on the clipboard integration, I&#39;m current=
ly running into an issue with a couple of the callback=C2=A0functions, spec=
ifically the clipboard grab/release functions, where the number of argument=
s seems to be mismatched. According to the documentation, these callbacks s=
hould be called with the following arguments:</div><div><br></div><div>gboo=
lean<br>user_function (SpiceMainChannel *main,<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0guint =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 selection,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gp=
ointer =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0types,<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0guint =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 ntypes,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gpoin=
ter =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0user_data)<br></div><div><br></div><d=
iv>void<br>user_function (SpiceMainChannel *main,<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0guint =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 selection,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0gpointer =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0user_data)<br></div><div><br>=
</div><div>I&#39;ve implemented the callbacks with those arguments, as foll=
ows:<br><br>void guac_spice_clipboard_selection_grab_handler(SpiceMainChann=
el channel,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 guint selection, gpointer types,=
 guint ntypes, guac_client* client)<br></div><div><br></div><div>void guac_=
spice_clipboard_selection_release_handler(SpiceMainChannel channel,<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 guint selection, guac_client* client)<br></div><di=
v><br></div><div>and registered them appropriately. However, if I use them =
as implemented above, when the callbacks are triggered, the application seg=
faults when I try to access the &quot;guac_client* client&quot; data struct=
ure. I used GDB to try to help track this down, and I noticed that the valu=
e of &quot;client&quot; was 0x1, which looks less like a pointer to a memor=
y location and more like the number 1.</div><div><br></div><div>So, I decid=
ed to add another argument to the callback functions, just before the clien=
t argument:</div><div><br></div><div>void guac_spice_clipboard_selection_gr=
ab_handler(SpiceMainChannel channel,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 guint s=
election, gpointer types, guint ntypes, guint extra, guac_client* client)<b=
r></div><div><br></div><div>void guac_spice_clipboard_selection_release_han=
dler(SpiceMainChannel channel,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 guint selecti=
on, guint extra, guac_client* client)<br></div><div><br></div><div>Strangel=
y, this works - the client data structure can be referenced, there are no s=
egfaults (yet), etc. So, I decided to print the values that are being passe=
d for all of these parameters, and I get the following:</div><div><br></div=
><div>guacd[100252]: DEBUG:	Notifying client of clipboard grab in the guest=
.<br>guacd[100252]: DEBUG:	Arg: channel: 0x00000000<br>guacd[100252]: DEBUG=
:	Arg: selection: 1275303536<br>guacd[100252]: DEBUG:	Arg: types: 0x0000000=
1<br>guacd[100252]: DEBUG:	Arg: ntypes: 1276022924<br>guacd[100252]: DEBUG:=
	Arg: extra: 1<br></div><div><br></div><div>I printed them in the format I =
thought they should be in based on what the arguments are supposed to be - =
I probably should have just done all hex. But, it seems like maybe the &quo=
t;extra&quot; parameter being passed is in front of the channel, since the =
channel is showing up as all zeros?</div><div><br></div><div>I was trying t=
o find the code where the callbacks are actually called - I&#39;m guessing,=
 since this is clipboard integration, it&#39;ll be in the vdagent code some=
where - but I was having trouble tracking that down.</div><div><br></div><d=
iv>If anyone has any ideas, I&#39;d appreciate the insight into this - I&#3=
9;m puzzled by this apparent mismatch in the number of arguments. Also, if =
it matters, I&#39;m running CentOS 8 Stream, using Xspice to provide a test=
 SPICE server, and running spice-vdagentd/spice-vdagent within my X session=
. Yes, I know Xspice is unmaintained, but I just needed something simple an=
d that I didn&#39;t have to spend a bunch of time building in order to give=
 me a spice server to point at, and, so far, this has been pretty reliable.=
 Also, at its core, it appears to use the same spice-qxl X driver that x11s=
pice=C2=A0uses, just with a simple Python wrapper script for generating an =
X config file and starting the X server/display. So, I think it&#39;s still=
 pretty &quot;safe&quot; for attempting to develop this Guacamole integrati=
on - if for some reason you believe me to be wrong about that, please let m=
e know.</div><div><br></div><div>Thanks,</div><div>Nick</div></div>

--000000000000849e3605e1e1837d--
