Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB14320565D
	for <lists+spice-devel@lfdr.de>; Tue, 23 Jun 2020 17:53:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 067806E09E;
	Tue, 23 Jun 2020 15:53:35 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 1062 seconds by postgrey-1.36 at gabe;
 Tue, 23 Jun 2020 15:51:55 UTC
Received: from relay162.nicmail.ru (relay162.nicmail.ru [91.189.117.6])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F7366E45E
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jun 2020 15:51:55 +0000 (UTC)
Received: from [10.28.138.148] (port=40936 helo=mail.nic.ru)
 by relay.hosting.mail.nic.ru with esmtp (Exim 5.55)
 (envelope-from <iliya@i-terezie.ru>)
 id 1jnkw4-0002HR-79; Tue, 23 Jun 2020 18:34:08 +0300
Received: from [10.28.137.99] (account iliya@i-terezie.ru HELO mail.nic.ru)
 by incarp1101.int.hosting.nic.ru (Exim 5.55)
 with id 1jnkw4-0007Yz-4K; Tue, 23 Jun 2020 18:34:08 +0300
MIME-Version: 1.0
Date: Tue, 23 Jun 2020 18:34:07 +0300
From: =?UTF-8?Q?=D0=98=D0=BB=D1=8C=D1=8F?= <iliya@i-terezie.ru>
To: Frediano Ziglio <fziglio@redhat.com>
In-Reply-To: <988568512.31925799.1592924484392.JavaMail.zimbra@redhat.com>
References: <5f8d4665157ae5fc7b8e2c27f5d81b14@i-terezie.ru>
 <1317899397.28040740.1590391164979.JavaMail.zimbra@redhat.com>
 <cab6379851a0d06205ad2e000a9db034@i-terezie.ru>
 <988568512.31925799.1592924484392.JavaMail.zimbra@redhat.com>
Message-ID: <ad17c1a3c6cd6c7d6699902b6b2f42db@i-terezie.ru>
X-Sender: iliya@i-terezie.ru
User-Agent: Roundcube Webmail/1.1.12
X-Mailman-Approved-At: Tue, 23 Jun 2020 15:53:34 +0000
Subject: Re: [Spice-devel] Work via slow networks
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
Content-Type: multipart/mixed; boundary="===============0684480217=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0684480217==
Content-Type: multipart/alternative;
 boundary="=_56f6476d3424b2257c4aadefa8f4bf35"

--=_56f6476d3424b2257c4aadefa8f4bf35
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8

Frediano Ziglio писал 2020-06-23 18:01:

> Frediano Ziglio писал 2020-05-25 10:19: 
> I have a problem with slow rendering of a changing desktop via a slow
> network. SPICE tries to render all the states of the screen
> sequentially, instead of immediately drawing the final state.
> 
> What settings can you remove this behavior? 
> Hi,
> I'm not sure, unfortunately, there's a way to entirely remove this
> behavior,
> at least with current optimizations.
> Can you describe better your case?
> What's slow mean, I mean, speed? 10Mbit? Less? More?
> Do you know the latency of the connection?
> What type (mobile/wifi/cabled/lan/wan) ?
> Which kind of guest (OS/configuration/use case) are you using?
> In the subject you state a "slow network" in the message you speak
> about "slow rendering", that's quite different from the way I see it,
> what specific issues are you noting?
> 
> Frediano

The channel is UDP OpenVPN via the Internet. The total load from
everything turns out to be about 100Kib. But this is not a direct
channel limitation. The channel may be larger. If you use the TCP
version of OpenVPN, then it will be displayed even more slowly. It seems
that the server is waiting for some confirmation from the client.

Client and server Ubuntu 18.04.

With a smooth fading or brightening of the Windows screen on a virtual
machine on the client, I see all the successively changing brightness.
The same thing happens when a video or something changes is drawn in the
browser.

 Hi,
  not much to recommend with these conditions. I think quite out of
SPICE
can handle.

The original design was more about sending rendering commands to clients
which does not help much with so slow bandwidth.

One of the 2 options to try is to force "wan optimization" setting it to
"always". This will use more JPEG for compression. Another would be to
reduce "jpeg_quality" setting (dcc.cpp) to a lower value (currently
fixed
to 85).

An unfortunately VPN and queueing does not help, especially if TCP.
The reason is that while the server (which mainly send data) has a fast
connection to the VPN gateway the client doesn't so the server probably
will use a large queue causing latency issues. I have a quite dirty and
experimental patch to limit the queue but it won't help with other
issues.

I think (it could be I'm wrong) that an approach more VNC like (drawing
all at host/guest level then send the collapsed changes to client) would
be better. I have another dirty patch but at the moment is even worse
at the optimization level so won't help too.

Regards,
  Frediano

Indeed, the VSC works better under such conditions. But unfortunately it
doesn't have some very convenient functions, for example,
auto-adjustment of the server size for the client. 

As I understand from your letter, sending data for rendering occurs
through the queue. As an idea, I can offer to combine packages for
rendering if they have not had time to leave yet. Or monitor the queue
overflow and, in case of overflow, clear it and send the entire screen
in one packet. This will give the desired effect for channels with
minimal performance.
--=_56f6476d3424b2257c4aadefa8f4bf35
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3DUTF-8" /></head><body style=3D'font-size: 10pt; font-family: Verdana,Gen=
eva,sans-serif'>
<p>Frediano Ziglio =D0=BF=D0=B8=D1=81=D0=B0=D0=BB 2020-06-23 18:01:</p>
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0"><!-- html ignored --><!-- head ignored --><!-- meta ig=
nored -->
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0">Frediano Ziglio =D0=BF=D0=B8=D1=81=D0=B0=D0=BB 2020-05=
-25 10:19:
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0">
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0"><br /> I have a problem with slow rendering of a chang=
ing desktop via a slow<br /> network. SPICE tries to render all the states =
of the screen<br /> sequentially, instead of immediately drawing the final =
state.<br /> <br /> What settings can you remove this behavior?</blockquote=
>
<br /> Hi,<br /> &nbsp;&nbsp;I'm not sure, unfortunately, there's a way to =
entirely remove this<br /> behavior,<br /> at least with current optimizati=
ons.<br /> Can you describe better your case?<br /> What's slow mean, I mea=
n, speed? 10Mbit? Less? More?<br /> Do you know the latency of the connecti=
on?<br /> What type (mobile/wifi/cabled/lan/wan) ?<br /> Which kind of gues=
t (OS/configuration/use case) are you using?<br /> In the subject you state=
 a "slow network" in the message you speak<br /> about "slow rendering", th=
at's quite different from the way I see it,<br /> what specific issues are =
you noting?<br /> <br /> Frediano</blockquote>
<br /> The channel is UDP OpenVPN via the Internet. The total load from<br =
/> everything turns out to be about 100Kib. But this is not a direct<br /> =
channel limitation. The channel may be larger. If you use the TCP<br /> ver=
sion of OpenVPN, then it will be displayed even more slowly. It seems<br />=
 that the server is waiting for some confirmation from the client.<br /> <b=
r /> Client and server Ubuntu 18.04.<br /> <br /> With a smooth fading or b=
rightening of the Windows screen on a virtual<br /> machine on the client, =
I see all the successively changing brightness.<br /> The same thing happen=
s when a video or something changes is drawn in the<br /> browser.<br /> <b=
r /> </blockquote>
Hi,<br /> &nbsp;&nbsp;not much to recommend with these conditions. I think =
quite out of SPICE<br /> can handle.<br /> <br /> The original design was m=
ore about sending rendering commands to clients<br /> which does not help m=
uch with so slow bandwidth.<br /> <br /> One of the 2 options to try is to =
force "wan optimization" setting it to<br /> "always". This will use more J=
PEG for compression. Another would be to<br /> reduce "jpeg_quality" settin=
g (dcc.cpp) to a lower value (currently fixed<br /> to 85).<br /> <br /> An=
 unfortunately VPN and queueing does not help, especially if TCP.<br /> The=
 reason is that while the server (which mainly send data) has a fast<br /> =
connection to the VPN gateway the client doesn't so the server probably<br =
/> will use a large queue causing latency issues. I have a quite dirty and<=
br /> experimental patch to limit the queue but it won't help with other is=
sues.<br /> <br /> I think (it could be I'm wrong) that an approach more VN=
C like (drawing<br /> all at host/guest level then send the collapsed chang=
es to client) would<br /> be better. I have another dirty patch but at the =
moment is even worse<br /> at the optimization level so won't help too.<br =
/> <br /> Regards,<br /> &nbsp;&nbsp;Frediano<br /> <br /> </div>
</blockquote>
<p>&nbsp;</p>
<p>Indeed, the VSC works better under such conditions. But unfortunately it=
 doesn&rsquo;t have some very convenient functions, for example, auto-adjus=
tment of the server size for the client.</p>
<p>As I understand from your letter, sending data for rendering occurs thro=
ugh the queue. As an idea, I can offer to combine packages for rendering if=
 they have not had time to leave yet. Or monitor the queue overflow and, in=
 case of overflow, clear it and send the entire screen in one packet. This =
will give the desired effect for channels with minimal performance.</p>
<div>&nbsp;</div>
</body></html>

--=_56f6476d3424b2257c4aadefa8f4bf35--

--===============0684480217==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0684480217==--
