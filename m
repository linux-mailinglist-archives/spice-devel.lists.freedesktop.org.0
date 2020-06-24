Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD55207165
	for <lists+spice-devel@lfdr.de>; Wed, 24 Jun 2020 12:44:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D18D89973;
	Wed, 24 Jun 2020 10:44:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DD7289973
 for <spice-devel@lists.freedesktop.org>; Wed, 24 Jun 2020 10:44:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592995474;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=RvwEm7wCtYuG25QrGvdvB4PUnQ3DWLREfBYQTHFmcc0=;
 b=AY+eBJNuW69OQzkIDyKRthjR2S6DuDUsNLkoBb0vCtVnutY6pneyb3NxpkDsbyg76gb4vw
 WuOZYNqZNtFxomGT4AdkCnK/wbmSRwMARnDH+VJJw/3KMS0Ok8UqUoZ1Po5NOZoWAZRy/z
 OZrq1jLlUA8g0RwNe+oVJv+Gh0k1+cQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-333-jiAHROOgO2W3qLEXS0j0yQ-1; Wed, 24 Jun 2020 06:44:28 -0400
X-MC-Unique: jiAHROOgO2W3qLEXS0j0yQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C50E818A8220;
 Wed, 24 Jun 2020 10:44:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id BE18F7168B;
 Wed, 24 Jun 2020 10:44:26 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id B74A61809542;
 Wed, 24 Jun 2020 10:44:26 +0000 (UTC)
Date: Wed, 24 Jun 2020 06:44:26 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: =?utf-8?B?0JjQu9GM0Y8=?= <iliya@i-terezie.ru>
Message-ID: <1488099922.32049778.1592995466160.JavaMail.zimbra@redhat.com>
In-Reply-To: <ad17c1a3c6cd6c7d6699902b6b2f42db@i-terezie.ru>
References: <5f8d4665157ae5fc7b8e2c27f5d81b14@i-terezie.ru>
 <1317899397.28040740.1590391164979.JavaMail.zimbra@redhat.com>
 <cab6379851a0d06205ad2e000a9db034@i-terezie.ru>
 <988568512.31925799.1592924484392.JavaMail.zimbra@redhat.com>
 <ad17c1a3c6cd6c7d6699902b6b2f42db@i-terezie.ru>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.18, 10.4.195.20]
Thread-Topic: Work via slow networks
Thread-Index: znBYGY8ZxncHbFdAhllNUqFk7NDCGg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
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
Content-Type: multipart/mixed; boundary="===============1910608852=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1910608852==
Content-Type: multipart/alternative; 
	boundary="----=_Part_32049777_185998501.1592995466159"

------=_Part_32049777_185998501.1592995466159
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

> Frediano Ziglio =D0=BF=D0=B8=D1=81=D0=B0=D0=BB 2020-06-23 18:01:
> > > Frediano Ziglio =D0=BF=D0=B8=D1=81=D0=B0=D0=BB 2020-05-25 10:19:
> >=20
>=20
> > > > > I have a problem with slow rendering of a changing desktop via a =
slow
> > > >=20
> > >=20
> >=20
>=20
> > > > > network. SPICE tries to render all the states of the screen
> > > >=20
> > >=20
> >=20
>=20
> > > > > sequentially, instead of immediately drawing the final state.
> > > >=20
> > >=20
> >=20
>=20

> > > > > What settings can you remove this behavior?
> > > >=20
> > >=20
> >=20
>=20
> > > > Hi,
> > >=20
> >=20
>=20
> > > > I'm not sure, unfortunately, there's a way to entirely remove this
> > >=20
> >=20
>=20
> > > > behavior,
> > >=20
> >=20
>=20
> > > > at least with current optimizations.
> > >=20
> >=20
>=20
> > > > Can you describe better your case?
> > >=20
> >=20
>=20
> > > > What's slow mean, I mean, speed? 10Mbit? Less? More?
> > >=20
> >=20
>=20
> > > > Do you know the latency of the connection?
> > >=20
> >=20
>=20
> > > > What type (mobile/wifi/cabled/lan/wan) ?
> > >=20
> >=20
>=20
> > > > Which kind of guest (OS/configuration/use case) are you using?
> > >=20
> >=20
>=20
> > > > In the subject you state a "slow network" in the message you speak
> > >=20
> >=20
>=20
> > > > about "slow rendering", that's quite different from the way I see i=
t,
> > >=20
> >=20
>=20
> > > > what specific issues are you noting?
> > >=20
> >=20
>=20

> > > > Frediano
> > >=20
> >=20
>=20
> > > The channel is UDP OpenVPN via the Internet. The total load from
> >=20
>=20
> > > everything turns out to be about 100Kib. But this is not a direct
> >=20
>=20
> > > channel limitation. The channel may be larger. If you use the TCP
> >=20
>=20
> > > version of OpenVPN, then it will be displayed even more slowly. It se=
ems
> >=20
>=20
> > > that the server is waiting for some confirmation from the client.
> >=20
>=20

> > > Client and server Ubuntu 18.04.
> >=20
>=20

> > > With a smooth fading or brightening of the Windows screen on a virtua=
l
> >=20
>=20
> > > machine on the client, I see all the successively changing brightness=
.
> >=20
>=20
> > > The same thing happens when a video or something changes is drawn in =
the
> >=20
>=20
> > > browser.
> >=20
>=20

> > Hi,
>=20
> > not much to recommend with these conditions. I think quite out of SPICE
>=20
> > can handle.
>=20

> > The original design was more about sending rendering commands to client=
s
>=20
> > which does not help much with so slow bandwidth.
>=20

> > One of the 2 options to try is to force "wan optimization" setting it t=
o
>=20
> > "always". This will use more JPEG for compression. Another would be to
>=20
> > reduce "jpeg_quality" setting (dcc.cpp) to a lower value (currently fix=
ed
>=20
> > to 85).
>=20

> > An unfortunately VPN and queueing does not help, especially if TCP.
>=20
> > The reason is that while the server (which mainly send data) has a fast
>=20
> > connection to the VPN gateway the client doesn't so the server probably
>=20
> > will use a large queue causing latency issues. I have a quite dirty and
>=20
> > experimental patch to limit the queue but it won't help with other issu=
es.
>=20

> > I think (it could be I'm wrong) that an approach more VNC like (drawing
>=20
> > all at host/guest level then send the collapsed changes to client) woul=
d
>=20
> > be better. I have another dirty patch but at the moment is even worse
>=20
> > at the optimization level so won't help too.
>=20

> > Regards,
>=20
> > Frediano
>=20

> Indeed, the VSC works better under such conditions. But unfortunately it
> doesn=E2=80=99t have some very convenient functions, for example, auto-ad=
justment of
> the server size for the client.

> As I understand from your letter, sending data for rendering occurs throu=
gh
> the queue. As an idea, I can offer to combine packages for rendering if t=
hey
> have not had time to leave yet. Or monitor the queue overflow and, in cas=
e
> of overflow, clear it and send the entire screen in one packet. This will
> give the desired effect for channels with minimal performance.

Hi,=20
I was more speaking at queue in general, but I think part of the issue=20
are the network buffers in this case beside client queue.=20

I prepare a small experimental branch at https://gitlab.freedesktop.org/fzi=
glio/spice/-/tree/wan_experiments=20
if you want to try, it allows to define SPICE_DEBUG_SNDBUF and SPICE_DEBUG_=
JPEG_QUALITY=20
(see https://gitlab.freedesktop.org/fziglio/spice/-/commit/2d3939a424284e44=
203bd5ed25cd37dbb9e66623=20
and https://gitlab.freedesktop.org/fziglio/spice/-/commit/ba64ca4ef02ee2aa4=
9401f199aebff6ef6f93d63 ),=20
they should help a bit.=20

I tried to limit my network to 100KB/s and it was less terrible than I thou=
gh,=20
beside an initial pretty large time to start.=20

Regards,=20
Frediano=20

------=_Part_32049777_185998501.1592995466159
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"font-family: courier new,courier,monaco,monospace=
,sans-serif; font-size: 12pt; color: #000000"><blockquote style=3D"border-l=
eft:2px solid #1010FF;margin-left:5px;padding-left:5px;color:#000;font-weig=
ht:normal;font-style:normal;text-decoration:none;font-family:Helvetica,Aria=
l,sans-serif;font-size:12pt;" data-mce-style=3D"border-left: 2px solid #101=
0FF; margin-left: 5px; padding-left: 5px; color: #000; font-weight: normal;=
 font-style: normal; text-decoration: none; font-family: Helvetica,Arial,sa=
ns-serif; font-size: 12pt;"><div><br></div><p>Frediano Ziglio =D0=BF=D0=B8=
=D1=81=D0=B0=D0=BB 2020-06-23 18:01:</p><blockquote style=3D"padding: 0 0.4=
em; border-left: #1010ff 2px solid; margin: 0" data-mce-style=3D"padding: 0=
 0.4em; border-left: #1010ff 2px solid; margin: 0;"><div class=3D"pre" styl=
e=3D"margin: 0; padding: 0; font-family: monospace" data-mce-style=3D"margi=
n: 0; padding: 0; font-family: monospace;"><blockquote style=3D"padding: 0 =
0.4em; border-left: #1010ff 2px solid; margin: 0" data-mce-style=3D"padding=
: 0 0.4em; border-left: #1010ff 2px solid; margin: 0;">Frediano Ziglio =D0=
=BF=D0=B8=D1=81=D0=B0=D0=BB 2020-05-25 10:19:<blockquote style=3D"padding: =
0 0.4em; border-left: #1010ff 2px solid; margin: 0" data-mce-style=3D"paddi=
ng: 0 0.4em; border-left: #1010ff 2px solid; margin: 0;"><blockquote style=
=3D"padding: 0 0.4em; border-left: #1010ff 2px solid; margin: 0" data-mce-s=
tyle=3D"padding: 0 0.4em; border-left: #1010ff 2px solid; margin: 0;"><br> =
I have a problem with slow rendering of a changing desktop via a slow<br> n=
etwork. SPICE tries to render all the states of the screen<br> sequentially=
, instead of immediately drawing the final state.<br> <br> What settings ca=
n you remove this behavior?</blockquote><br> Hi,<br> &nbsp;&nbsp;I'm not su=
re, unfortunately, there's a way to entirely remove this<br> behavior,<br> =
at least with current optimizations.<br> Can you describe better your case?=
<br> What's slow mean, I mean, speed? 10Mbit? Less? More?<br> Do you know t=
he latency of the connection?<br> What type (mobile/wifi/cabled/lan/wan) ?<=
br> Which kind of guest (OS/configuration/use case) are you using?<br> In t=
he subject you state a "slow network" in the message you speak<br> about "s=
low rendering", that's quite different from the way I see it,<br> what spec=
ific issues are you noting?<br> <br> Frediano</blockquote><br> The channel =
is UDP OpenVPN via the Internet. The total load from<br> everything turns o=
ut to be about 100Kib. But this is not a direct<br> channel limitation. The=
 channel may be larger. If you use the TCP<br> version of OpenVPN, then it =
will be displayed even more slowly. It seems<br> that the server is waiting=
 for some confirmation from the client.<br> <br> Client and server Ubuntu 1=
8.04.<br> <br> With a smooth fading or brightening of the Windows screen on=
 a virtual<br> machine on the client, I see all the successively changing b=
rightness.<br> The same thing happens when a video or something changes is =
drawn in the<br> browser.<br> <br></blockquote>Hi,<br> &nbsp;&nbsp;not much=
 to recommend with these conditions. I think quite out of SPICE<br> can han=
dle.<br> <br> The original design was more about sending rendering commands=
 to clients<br> which does not help much with so slow bandwidth.<br> <br> O=
ne of the 2 options to try is to force "wan optimization" setting it to<br>=
 "always". This will use more JPEG for compression. Another would be to<br>=
 reduce "jpeg_quality" setting (dcc.cpp) to a lower value (currently fixed<=
br> to 85).<br> <br> An unfortunately VPN and queueing does not help, espec=
ially if TCP.<br> The reason is that while the server (which mainly send da=
ta) has a fast<br> connection to the VPN gateway the client doesn't so the =
server probably<br> will use a large queue causing latency issues. I have a=
 quite dirty and<br> experimental patch to limit the queue but it won't hel=
p with other issues.<br> <br> I think (it could be I'm wrong) that an appro=
ach more VNC like (drawing<br> all at host/guest level then send the collap=
sed changes to client) would<br> be better. I have another dirty patch but =
at the moment is even worse<br> at the optimization level so won't help too=
.<br> <br> Regards,<br> &nbsp;&nbsp;Frediano<br> <br></div></blockquote><p>=
&nbsp;</p><p>Indeed, the VSC works better under such conditions. But unfort=
unately it doesn=E2=80=99t have some very convenient functions, for example=
, auto-adjustment of the server size for the client.</p><p>As I understand =
from your letter, sending data for rendering occurs through the queue. As a=
n idea, I can offer to combine packages for rendering if they have not had =
time to leave yet. Or monitor the queue overflow and, in case of overflow, =
clear it and send the entire screen in one packet. This will give the desir=
ed effect for channels with minimal performance.</p><div>&nbsp;</div></bloc=
kquote><div>Hi,<br></div><div>&nbsp; I was more speaking at queue in genera=
l, but I think part of the issue<br></div><div>are the network buffers in t=
his case beside client queue.<br></div><div><br></div><div>I prepare a smal=
l experimental branch at <a href=3D"https://gitlab.freedesktop.org/fziglio/=
spice/-/tree/wan_experiments">https://gitlab.freedesktop.org/fziglio/spice/=
-/tree/wan_experiments</a><br></div><div>if you want to try, it allows to d=
efine SPICE_DEBUG_SNDBUF and <code>SPICE_DEBUG_JPEG_QUALITY</code><br></div=
><div>(see <a href=3D"https://gitlab.freedesktop.org/fziglio/spice/-/commit=
/2d3939a424284e44203bd5ed25cd37dbb9e66623">https://gitlab.freedesktop.org/f=
ziglio/spice/-/commit/2d3939a424284e44203bd5ed25cd37dbb9e66623</a><br></div=
><div>and <a href=3D"https://gitlab.freedesktop.org/fziglio/spice/-/commit/=
ba64ca4ef02ee2aa49401f199aebff6ef6f93d63">https://gitlab.freedesktop.org/fz=
iglio/spice/-/commit/ba64ca4ef02ee2aa49401f199aebff6ef6f93d63</a>),<br></di=
v><div>they should help a bit.<br></div><div><br></div><div>I tried to limi=
t my network to 100KB/s and it was less terrible than I though,<br></div><d=
iv>beside an initial pretty large time to start.<br></div><div><br></div><d=
iv>Regards,<br></div><div>&nbsp; Frediano<br></div><div><br></div></div></b=
ody></html>
------=_Part_32049777_185998501.1592995466159--


--===============1910608852==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1910608852==--

