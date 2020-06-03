Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8445E1ECC11
	for <lists+spice-devel@lfdr.de>; Wed,  3 Jun 2020 10:59:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC5C789CDF;
	Wed,  3 Jun 2020 08:59:45 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C04F89CDF
 for <spice-devel@lists.freedesktop.org>; Wed,  3 Jun 2020 08:59:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591174783;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=6IWPNTwiPD4H3YZQy+35M2Qx6HaXhUXQ7sKUFwvMeMI=;
 b=CwXOorlXmrejjpRQoTgtpEPu+ybZAjQpD6Tcwi1URAGMHTDDffkM/i3u6CSm02WKojaMk6
 +U796mUvMEZLW3576bxiaYJ1QhI1kHfAWlxH92vPgfbd0RL3Zh+WUjbofC6/pxbhu7oqwS
 VLjrPLlH3OrpCWAh7L/YOkj+KG1I78o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-421-b8Q9Ad3QPBmaOdZ9lv5O1Q-1; Wed, 03 Jun 2020 04:59:33 -0400
X-MC-Unique: b8Q9Ad3QPBmaOdZ9lv5O1Q-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B26C6461;
 Wed,  3 Jun 2020 08:59:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id AB2D15D9CD;
 Wed,  3 Jun 2020 08:59:32 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id A1E611809542;
 Wed,  3 Jun 2020 08:59:32 +0000 (UTC)
Date: Wed, 3 Jun 2020 04:59:31 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: ole-krutov@yandex.ru
Message-ID: <1580811552.28905463.1591174771374.JavaMail.zimbra@redhat.com>
In-Reply-To: <130131591108845@mail.yandex.ru>
References: <2062121591020278@mail.yandex.ru>
 <191822355.28679337.1591021618597.JavaMail.zimbra@redhat.com>
 <1516151591025233@mail.yandex.ru>
 <c663aa55-9b44-6211-6898-e4930b8dae24@redhat.com>
 <118741591105408@mail.yandex.ru>
 <599d5340-6b36-36c3-7a4c-875ca16e3b0d@redhat.com>
 <130131591108845@mail.yandex.ru>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.3, 10.4.195.11]
Thread-Topic: No mouse under Win 10 when Nvidia drivers are active
Thread-Index: htPSIFMbZ+3oleMlCWaITtOK4H0BYA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] No mouse under Win 10 when Nvidia drivers are
 active
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
Content-Type: multipart/mixed; boundary="===============1669707529=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1669707529==
Content-Type: multipart/alternative; 
	boundary="----=_Part_28905462_2122789709.1591174771373"

------=_Part_28905462_2122789709.1591174771373
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi, 
I think the mouse issue are similar to https://gitlab.freedesktop.org/spice/win32/vd_agent/-/issues/13 and 
https://gitlab.freedesktop.org/spice/win32/vd_agent/-/issues/8 . 
In other word for some combination of displays the agent is not able to handle mouse events 
causing the events to get discarded. The solution would be for the agent to either handle all 
cases or being able to tell the server that is not capable to handle the mouse allowing 
the server to fall back to server mouse. 

I think you can see the display using the "console vnc" feature that allows Qemu 
to use spice to send "frames". 

Ole, what's your configuration for the guest/host or the mediated device? 
Software installed on the host? 
Type of Nvidia card/setup? 

Thanks, 
Frediano 

> Well, I just create a VM with a mediated device, run it, set up Nvidia
> drivers, and after VM reboot its window can be shown with remote-viewer.
> When display is set to "none", just nvidia window appears, when QXL display
> is set, two windows appear.

> 02.06.2020, 17:30, "Uri Lublin" <uril@redhat.com>:

> > On 6/2/20 4:50 PM, ole-krutov@yandex.ru wrote:
> 

> > > Hi,
> > 
> 
> > > No, I do not use spice-streaming-agent with windows VM at all.
> > 
> 

> > How do you see the NVIDIA window on the client ?
> 

> > > 01.06.2020, 22:24, "Uri Lublin" < uril@redhat.com >:
> > 
> 

> > > On 6/1/20 6:59 PM, ole-krutov@yandex.ru
> > 
> 
> > > <mailto: ole-krutov@yandex.ru > wrote:
> > 
> 

> > > Now I have tried different combinations of vd-agent state and
> > 
> 
> > > mouse
> > 
> 
> > > cursor type. In no case mouse cursor was visible on nvidia display
> > 
> 
> > > window. With dual display, qxl+nvidia, stopping vd-agent made
> > 
> 
> > > cursor
> > 
> 
> > > visible on qxl window. Reaction to mouse events was seen on nvidia
> > 
> 
> > > window too, but with invisible mouse cursor.
> > 
> 

> > > Hi,
> > 
> 

> > > I assume you have your own spice-streaming-agent plugin.
> > 
> 

> > > Does it support the display_info interface ?
> > 
> 

> > > Uri
> > 
> 

> > > 01.06.2020, 17:27, "Frediano Ziglio" < fziglio@redhat.com
> > 
> 
> > > <mailto: fziglio@redhat.com >>:
> > 
> 

> > > Hi all,
> > 
> 
> > > when just qxl adapter is attached to VM all works
> > 
> 
> > > well. But
> > 
> 
> > > when Nvidia GRID
> > 
> 
> > > instance is attached and its drivers are running,
> > 
> 
> > > mouse cursor
> > 
> 
> > > is never
> > 
> 
> > > shown on its display window. Sometimes it's just
> > 
> 
> > > invisible but
> > 
> 
> > > active and
> > 
> 
> > > reacting to mouse movements, clicks and wheel scrolling,
> > 
> 
> > > sometimes it's
> > 
> 
> > > totally missing. This behaviour is a bit dependent of is
> > 
> 
> > > Nvidia adapter
> > 
> 
> > > alone or together with qxl. Just sometimes mouse
> > 
> 
> > > cursor is
> > 
> 
> > > visible on qxl
> > 
> 
> > > display but it's very unstable and totally unusable.
> > 
> 
> > > Similar
> > 
> 
> > > behaviour is
> > 
> 
> > > under linux VM too. Is it normal "won't fix" state,
> > 
> 
> > > or can I
> > 
> 
> > > provide some
> > 
> 
> > > additional info? Windows has latest vd-agent and
> > 
> 
> > > spice-agent
> > 
> 
> > > installed.
> > 
> 

> > > Hi,
> > 
> 
> > > recently we got similar reports. Can you try to see
> > 
> 
> > > what's happen if
> > 
> 
> > > you disable the agent?
> > 
> 

> > > It seems that in these conditions the agent is not able to
> > 
> 
> > > handle
> > 
> 
> > > the mouse
> > 
> 
> > > so mouse events are "lost".
> > 
> 

> > > Another test would you could do is to use the "spicy"
> > 
> 
> > > utility. This
> > 
> 
> > > utility
> > 
> 
> > > has an option to switch manually the mouse mode
> > 
> 
> > > (server/client). It
> > 
> 
> > > would be
> > 
> 
> > > helpful to understand different behaviour using the 2 modes.
> > 
> 

> > > Frediano
> > 
> 

> > > _______________________________________________
> > 
> 
> > > Spice-devel mailing list
> > 
> 
> > > Spice-devel@lists.freedesktop.org
> > 
> 
> > > <mailto: Spice-devel@lists.freedesktop.org >
> > 
> 
> > > https://lists.freedesktop.org/mailman/listinfo/spice-devel
> > 
> 

------=_Part_28905462_2122789709.1591174771373
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"font-family: courier new,courier,monaco,monospace=
,sans-serif; font-size: 12pt; color: #000000"><div>Hi,<br></div><div>&nbsp;=
 I think the mouse issue are similar to <a href=3D"https://gitlab.freedeskt=
op.org/spice/win32/vd_agent/-/issues/13">https://gitlab.freedesktop.org/spi=
ce/win32/vd_agent/-/issues/13</a> and<br></div><div><a href=3D"https://gitl=
ab.freedesktop.org/spice/win32/vd_agent/-/issues/8">https://gitlab.freedesk=
top.org/spice/win32/vd_agent/-/issues/8</a>.<br></div><div>In other word fo=
r some combination of displays the agent is not able to handle mouse events=
<br></div><div>causing the events to get discarded. The solution would be f=
or the agent to either handle all<br></div><div>cases or being able to tell=
 the server that is not capable to handle the mouse allowing<br></div><div>=
the server to fall back to server mouse.<br></div><div><br></div><div>I thi=
nk you can see the display using the "console vnc" feature that allows Qemu=
<br></div><div>to use spice to send "frames".<br></div><div><br></div><div>=
Ole, what's your configuration for the guest/host or the mediated device?<b=
r></div><div>Software installed on the host?<br></div><div>Type of Nvidia c=
ard/setup?<br></div><div><br></div><div>Thanks,<br></div><div>&nbsp; Fredia=
no<br></div><div><br></div><div><br></div><blockquote style=3D"border-left:=
2px solid #1010FF;margin-left:5px;padding-left:5px;color:#000;font-weight:n=
ormal;font-style:normal;text-decoration:none;font-family:Helvetica,Arial,sa=
ns-serif;font-size:12pt;" data-mce-style=3D"border-left: 2px solid #1010FF;=
 margin-left: 5px; padding-left: 5px; color: #000; font-weight: normal; fon=
t-style: normal; text-decoration: none; font-family: Helvetica,Arial,sans-s=
erif; font-size: 12pt;"><div><br></div><div>Well, I just create a VM with a=
 mediated device, run it, set up Nvidia drivers, and after VM reboot its wi=
ndow can be shown with remote-viewer. When display is set to "none", just n=
vidia window appears, when QXL display is set, two windows appear.</div><di=
v><br></div><div><br></div><div>02.06.2020, 17:30, "Uri Lublin" &lt;uril@re=
dhat.com&gt;:</div><blockquote><p>On 6/2/20 4:50 PM, <a href=3D"mailto:ole-=
krutov@yandex.ru" target=3D"_blank" data-mce-href=3D"mailto:ole-krutov@yand=
ex.ru">ole-krutov@yandex.ru</a> wrote:<br></p><blockquote class=3D"210e7a84=
8e8fcb45wmi-quote">&nbsp;Hi,<br>&nbsp;No, I do not use spice-streaming-agen=
t with windows VM at all.<br></blockquote><p><br>How do you see the NVIDIA =
window on the client ?<br></p><div><br></div><blockquote class=3D"210e7a848=
e8fcb45wmi-quote">&nbsp;01.06.2020, 22:24, "Uri Lublin" &lt;<a href=3D"mail=
to:uril@redhat.com" target=3D"_blank" data-mce-href=3D"mailto:uril@redhat.c=
om">uril@redhat.com</a>&gt;:<br><div><br></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;On 6/1/20 6:59 PM, <a href=3D"mailto:ole-krutov@yandex.ru" target=3D"_bla=
nk" data-mce-href=3D"mailto:ole-krutov@yandex.ru">ole-krutov@yandex.ru</a><=
br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;mailto:<a href=3D"mailto:ole-krutov@ya=
ndex.ru" target=3D"_blank" data-mce-href=3D"mailto:ole-krutov@yandex.ru">ol=
e-krutov@yandex.ru</a>&gt; wrote:<br><div><br></div>&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Now I have tried different combi=
nations of vd-agent state and<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;mouse<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;cursor type. In no case mouse cursor was visible on nvidia disp=
lay<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;wi=
ndow. With dual display, qxl+nvidia, stopping vd-agent made<br>&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cursor<br>&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;visible on qxl window. Reaction =
to mouse events was seen on nvidia<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;window too, but with invisible mouse cursor.<b=
r><div><br></div><br><div><br></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hi,<br><d=
iv><br></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;I assume you have your own spice=
-streaming-agent plugin.<br><div><br></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Do=
es it support the display_info interface ?<br><div><br></div>&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;Uri<br><div><br></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;01.06.2020, 17:27, "Frediano Ziglio" &lt;<a hr=
ef=3D"mailto:fziglio@redhat.com" target=3D"_blank" data-mce-href=3D"mailto:=
fziglio@redhat.com">fziglio@redhat.com</a><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&lt;mailto:<a href=3D"mailto:fziglio@redhat.com" t=
arget=3D"_blank" data-mce-href=3D"mailto:fziglio@redhat.com">fziglio@redhat=
.com</a>&gt;&gt;:<br><div><br></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;Hi all,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;w=
hen just qxl adapter is attached to VM all works<br>&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;well. But<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;when Nvidia GRID<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;instance is attached and its drivers are running,<br>&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mouse cursor<br>&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;is never<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;shown on its display window. Sometimes it's just<br>&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;invisible but<br>&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;active and<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;reacting to mouse movements, clicks and wheel scrolling,<br>&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sometimes it's<br>&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;totally missing. This behaviour is a bit dependent =
of is<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Nvidia adapter<br>&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;alone or together with qxl. Just =
sometimes mouse<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cu=
rsor is<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;visible on qxl<br>&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;display but it's very unstable =
and totally unusable.<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;Similar<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;behaviour is<br>&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;under linux VM too. Is it nor=
mal "won't fix" state,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;or can I<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;provide some<br>&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;additional info? Windows ha=
s latest vd-agent and<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;spice-agent<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;installed.<br><di=
v><br></div><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hi,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rece=
ntly we got similar reports. Can you try to see<br>&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;what's happen if<br>&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;you disabl=
e the agent?<br><div><br></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;It seems that in these condit=
ions the agent is not able to<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;handle<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;the mouse<br>&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;so mouse e=
vents are "lost".<br><div><br></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Another test would you c=
ould do is to use the "spicy"<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;utility. This<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;utility<br>&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;has a=
n option to switch manually the mouse mode<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;(server/client). It<br>&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;would be<br>=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;helpful to understand different behaviour using the 2 modes.=
<br><div><br></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Frediano<br><div><br></div><br>&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;___________________=
____________________________<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;Spice-devel mailing list<br>&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=3D"mailto:Spice-devel@lists.freedeskt=
op.org" target=3D"_blank" data-mce-href=3D"mailto:Spice-devel@lists.freedes=
ktop.org">Spice-devel@lists.freedesktop.org</a><br>&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;mailto:<a href=3D"mailto:Spice-devel@list=
s.freedesktop.org" target=3D"_blank" data-mce-href=3D"mailto:Spice-devel@li=
sts.freedesktop.org">Spice-devel@lists.freedesktop.org</a>&gt;<br>&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=3D"https://lists.freed=
esktop.org/mailman/listinfo/spice-devel" target=3D"_blank" data-mce-href=3D=
"https://lists.freedesktop.org/mailman/listinfo/spice-devel">https://lists.=
freedesktop.org/mailman/listinfo/spice-devel</a><br><div><br></div></blockq=
uote><p><br></p></blockquote></blockquote><div><br></div></div></body></htm=
l>
------=_Part_28905462_2122789709.1591174771373--


--===============1669707529==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1669707529==--

