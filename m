Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 925751D0160
	for <lists+spice-devel@lfdr.de>; Tue, 12 May 2020 23:58:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 172956E9E0;
	Tue, 12 May 2020 21:58:31 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from relay-1.mailobj.net (relay-1.mailobj.net [213.182.54.6])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CB886E9E0
 for <spice-devel@lists.freedesktop.org>; Tue, 12 May 2020 21:58:29 +0000 (UTC)
Received: from www-1.localdomain (www-1.in.mailobj.net [192.168.90.193])
 by relay-1.mailobj.net (Postfix) with SMTP id 1157311F4;
 Tue, 12 May 2020 23:58:27 +0200 (CEST)
Received: by www-1.mailo.com with http webmail; Tue, 12 May 2020
 23:58:26 +0200 (CEST)
X-EA-Auth: 0ydz7wwUHadoYbDRTNG4ZyJ9xwohor72lUdNL/wvEfDL+px5cSZvGaGD/MRHNeGnUOfjFY1o/9hre/k7SNA+zw==
From: bruts@netc.fr
To: "Victor Toso" <victortoso@redhat.com>
Date: Tue, 12 May 2020 23:58:26 +0200 (CEST)
X-Priority: 3
MIME-Version: 1.0
X-Mailer: COMS/EA19.11/r20200424
Message-ID: <ea-mime-5ebb1c02-6f46-557ff269@www-1.mailo.com>
In-Reply-To: <20200512052559.3cqwgmrlugzqdbld@wingsuit>
Subject: Re: [Spice-devel] spice-vdagent: how to enable additional mouse
 buttons?
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============0177412076=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0177412076==
Content-Type: multipart/alternative;
 boundary="----=_NextPart_001_5ebb1c02_6f46_35653b02"

------=_NextPart_001_5ebb1c02_6f46_35653b02
Content-Type: text/plain;
 charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Victor,



Yes it was certainly a good read and i got some ideas from it, but the cod=
e has changed quite a lot since 2017 and the patches correspond to the curr=
ent code only for about 10-15%.

Maybe someone from the Spice team can suggest a patch to add additional mo=
use buttons - i am sure that it would be a matter of minutes to an hour for=
 anyone who is involved with coding the spice-vdagent project to create a g=
eneral patch idea to add additional mouse buttons



It is just a matter of forwarding them to the guest - for some reason it w=
as decided not to add them.



thanks!





De : Victor Toso <victortoso@redhat.com>
=C3=80 : bruts@netc.fr
Sujet : Re: [Spice-devel] spice-vdagent: how to enable additional mouse bu=
ttons?
Date : 12/05/2020 07:25:59 Europe/Paris
Copie =C3=A0 : uril@redhat.com;
=C2=A0=C2=A0=C2=A0spice-devel@lists.freedesktop.org

Hi,

On Tue, May 12, 2020 at 12:53:02AM +0200, bruts@netc.fr wrote:
>=20
>=20
> Uri (and others),
>=20
> I found the similar question in a few corners of the internet
> and I think adding at least the additional default mouse
> buttons should not be all that much work.

You can take a look at this proposal to adding horizontal wheel
support to Spice

https://lists.freedesktop.org/archives/spice-devel/2017-October/040558.htm=
l

> With some guidance I could probably do it myself, though the
> guidance would need to be quite substantial :)
>=20
> The mouse and the main buttons is already forwarded and that is
> the main part.
>=20
> with xev it is clear to see which buttons work on the host, but
> not on the guest.
>=20
> Anyone with some spare time (which I know is always limited for
> everyone), but help me where to fix this in the code and i will
> write a patch - or give me a good start - or start yourself.
>=20
> a semi working mouse in the guest is very annoying and can be
> one of the critical points why to use spice (or not) - at least
> i know it is in my case.
>=20
> Thanks!!

Cheers,
Victor



------=_NextPart_001_5ebb1c02_6f46_35653b02
Content-Type: text/html;
 charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Victor,</div><div><br></div><div>Yes it was certainly a good read a=
nd i got some ideas from it, but the code has changed quite a lot since 201=
7 and the patches correspond to the current code only for about 10-15%.</di=
v><div>Maybe someone from the Spice team can suggest a patch to add additio=
nal mouse buttons - i am sure that it would be a matter of minutes to an ho=
ur for anyone who is involved with coding the spice-vdagent project to crea=
te a general patch idea to add additional mouse buttons</div><div><br></div=
><div>It is just a matter of forwarding them to the guest - for some reason=
 it was decided not to add them.</div><div><br></div><div>thanks!<br></div>=
<div><br></div><br><br><blockquote type=3D"cite" style=3D"margin:0 0 0 0.5e=
m;border-left:1px #00f solid;padding-left:1em;">De : Victor Toso &lt;victor=
toso@redhat.com&gt;<br>
=C3=80 : bruts@netc.fr<br>
Sujet : Re: [Spice-devel] spice-vdagent: how to enable additional mouse bu=
ttons?<br>
Date : 12/05/2020 07:25:59 Europe/Paris<br>
Copie =C3=A0 : uril@redhat.com;<br>
=C2=A0=C2=A0=C2=A0spice-devel@lists.freedesktop.org<br>
<br>
Hi,<br>
<br>
On Tue, May 12, 2020 at 12:53:02AM +0200, bruts@netc.fr wrote:<br>
&gt; <br>
&gt; <br>
&gt; Uri (and others),<br>
&gt; <br>
&gt; I found the similar question in a few corners of the internet<br>
&gt; and I think adding at least the additional default mouse<br>
&gt; buttons should not be all that much work.<br>
<br>
You can take a look at this proposal to adding horizontal wheel<br>
support to Spice<br>
<br>
	<a href=3D"https://lists.freedesktop.org/archives/spice-devel/2017-Octobe=
r/040558.html" rel=3D"noreferrer">https://lists.freedesktop.org/archives/sp=
ice-devel/2017-October/040558.html</a><br>
<br>
&gt; With some guidance I could probably do it myself, though the<br>
&gt; guidance would need to be quite substantial :)<br>
&gt; <br>
&gt; The mouse and the main buttons is already forwarded and that is<br>
&gt; the main part.<br>
&gt; <br>
&gt; with xev it is clear to see which buttons work on the host, but<br>
&gt; not on the guest.<br>
&gt; <br>
&gt; Anyone with some spare time (which I know is always limited for<br>
&gt; everyone), but help me where to fix this in the code and i will<br>
&gt; write a patch - or give me a good start - or start yourself.<br>
&gt; <br>
&gt; a semi working mouse in the guest is very annoying and can be<br>
&gt; one of the critical points why to use spice (or not) - at least<br>
&gt; i know it is in my case.<br>
&gt; <br>
&gt; Thanks!!<br>
<br>
Cheers,<br>
Victor<br>
<br></blockquote>

------=_NextPart_001_5ebb1c02_6f46_35653b02--


--===============0177412076==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0177412076==--

