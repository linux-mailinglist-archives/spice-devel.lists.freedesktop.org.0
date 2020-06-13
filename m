Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73BC11F8157
	for <lists+spice-devel@lfdr.de>; Sat, 13 Jun 2020 08:40:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45ABA6E093;
	Sat, 13 Jun 2020 06:40:12 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D5B26E093
 for <spice-devel@lists.freedesktop.org>; Sat, 13 Jun 2020 06:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592030410;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=r5DZWmtroiR3tyMt4Ac+V1WMQF67HUCeaUhDK/Jk0Bc=;
 b=PDZ8s5iSdR5KSHSJwHMWeiXLYWaguyuICC9LIrFOdxRCGM0QDTz6QVz/sRDeExwroZXRhE
 jNv58qo5S4EXbAjsn7rIevg77t8DFpG3oUJ2O8gLcxI66nGeGPA/lTL1m+ryIn4NUr6yyo
 eYsyAt+Ow9PJ+nX7BecV6oRZ/sl3fOg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-297-MGDueMU2O76MqCXK1XjJYg-1; Sat, 13 Jun 2020 02:40:04 -0400
X-MC-Unique: MGDueMU2O76MqCXK1XjJYg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A2F42185696E;
 Sat, 13 Jun 2020 06:40:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 984BF8205B;
 Sat, 13 Jun 2020 06:40:03 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4F0811809543;
 Sat, 13 Jun 2020 06:40:03 +0000 (UTC)
Date: Sat, 13 Jun 2020 02:40:02 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: =?utf-8?B?6ZmI54Kk?= <qishiyexu2@126.com>
Message-ID: <1346340456.30483558.1592030402447.JavaMail.zimbra@redhat.com>
In-Reply-To: <2bd8d90a.9bae.172a91d8976.Coremail.qishiyexu2@126.com>
References: <16656b4b.5cd5.172a7a33052.Coremail.qishiyexu2@126.com>
 <CAJ+F1CLYf0xoQ-UraTQzPoGk9Vpvt_=yoyW+ENZHdznf3kmLqA@mail.gmail.com>
 <2bd8d90a.9bae.172a91d8976.Coremail.qishiyexu2@126.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.3, 10.4.195.5]
Thread-Topic: Is it possible to put spice channels into different threads?
Thread-Index: +YwngkuvkrRXeHEFsQbF4qElGuYzyg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] Is it possible to put spice channels into
 different threads?
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
Content-Type: multipart/mixed; boundary="===============0995942838=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0995942838==
Content-Type: multipart/alternative; 
	boundary="----=_Part_30483557_271214770.1592030402446"

------=_Part_30483557_271214770.1592030402446
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,=20
the pattern used in spice-gtk is called cooperative multitasking (see https=
://en.wikipedia.org/wiki/Cooperative_multitasking ), if you add code that i=
s not cooperative you get what you described. Use coroutine functions to re=
ad remote data so the read won't stop other code. If you need to run expens=
ive or blocking code it's a good idea to run it in another thread removing =
the blockage.=20

Frediano=20

----- Original Message -----

> Hi

> Here is my experiment:
> I created a new port-channel to transfer data between vdagent and spice-g=
tk.
> I used a while loop to send 2kb data to gtk, gtk received and drop the da=
ta.
> In the mean time I used a timer(1ms) to send 2kb data to vdagent.
> Strange thing is that gtk will continually receive data for a while(10sec=
s -
> 70secs) then send a whole bunch of data to vdagent. When receiving data,
> send data will be added to tcp buffer but will not be sent out.

> So I think send event will be affected by receive event, then I guess usi=
ng
> different thread would help.
> Could you please correct me if I=E2=80=99m wrong?

> BR
> Don

> =E5=9C=A8 2020-06-12 20:03:30=EF=BC=8C"Marc-Andr=C3=A9 Lureau" <marcandre=
.lureau@gmail.com> =E5=86=99=E9=81=93=EF=BC=9A

> > Hi
>=20

> > On Fri, Jun 12, 2020 at 12:57 PM =E9=99=88=E7=82=A4 < qishiyexu2@126.co=
m > wrote:
>=20

> > > Hi,
> >=20
>=20

> > > Spice-gtk is now using co-routine to handle different channel
> > > connections.
> > > When a channel is handling data, other channels would have to wait,
> > > rather
> > > than handling synchronously. That would bring us following issues:
> >=20
>=20
> > > 1. If some less important channels (like usb channels) are transferin=
g
> > > big
> > > data, important channels (main-channel, display-channel,input-channel=
)
> > > will
> > > be affected.
> >=20
>=20
> > > 2. When receiving big data like file transfering(G_IO_IN), send event
> > > (G_IO_OUT) will not be triggered.
> >=20
>=20
> > > 3. Flow control between different channels will be hard to do.
> >=20
>=20

> > > Is is possible(and make sense) to put channels into different threads=
 so
> > > they
> > > can synchronously receive & send msg, without affect each other?
> >=20
>=20

> > Switching to threads would be possible, but that wouldn't help in the
> > situation you describe, as you are very likely bound on IO. Using sever=
al
> > threads would actually create more problems to synchronize and schedule=
 the
> > different channels.
>=20

> > Io operations in coroutines are non-blocking, so they shouldn't affect
> > other
> > spice-gtk task. If you however observe a blocking CPU-task in some chan=
nel,
> > this may affect the performance of other channels. But in general, exce=
pt
> > for video/image decoding which may be done in a separate thread, the cl=
ient
> > side doesn't do much work.
>=20

> > USB, clipboard and file sharing may use large amounts of data, and we r=
ely
> > on
> > the glib source and kernel to prioritize channels: this isn't great in =
some
> > cases and may receive improvements.
>=20

> > --
>=20
> > Marc-Andr=C3=A9 Lureau
>=20

> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

------=_Part_30483557_271214770.1592030402446
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"font-family: courier new,courier,monaco,monospace=
,sans-serif; font-size: 12pt; color: #000000"><div>Hi,</div><div>&nbsp; the=
 pattern used in spice-gtk is called cooperative multitasking (see <a href=
=3D"https://en.wikipedia.org/wiki/Cooperative_multitasking">https://en.wiki=
pedia.org/wiki/Cooperative_multitasking</a>), if you add code that is not c=
ooperative you get what you described. Use coroutine functions to read remo=
te data so the read won't stop other code. If you need to run expensive or =
blocking code it's a good idea to run it in another thread removing the blo=
ckage.<br></div><div><br></div><div>Frediano<br></div><div><br></div><hr id=
=3D"zwchr"><blockquote style=3D"border-left:2px solid #1010FF;margin-left:5=
px;padding-left:5px;color:#000;font-weight:normal;font-style:normal;text-de=
coration:none;font-family:Helvetica,Arial,sans-serif;font-size:12pt;" data-=
mce-style=3D"border-left: 2px solid #1010FF; margin-left: 5px; padding-left=
: 5px; color: #000; font-weight: normal; font-style: normal; text-decoratio=
n: none; font-family: Helvetica,Arial,sans-serif; font-size: 12pt;"><br><di=
v><br></div>Hi&nbsp;<div><br></div><div>Here is my experiment:</div><div>I =
created a new port-channel to transfer data between vdagent and spice-gtk. =
I used a while loop to send 2kb data to gtk, gtk received and drop the data=
. In the mean time I used a timer(1ms) to send 2kb data to vdagent.&nbsp;</=
div><div>Strange thing is that gtk will continually receive data for a whil=
e(10secs - 70secs) then send a whole bunch of data to vdagent. When receivi=
ng data, send data will be added to tcp buffer but will not be sent out.</d=
iv><div><br></div><div>So I think send event will be affected by receive ev=
ent, then I guess using different thread would help.&nbsp;</div><div>Could =
you please correct me if I=E2=80=99m wrong?</div><div><br></div><div>BR</di=
v><div>Don<br><div><br></div><br><div><br></div><br><div id=3D"spnEditorSig=
n_app"><br></div><br><div><br></div><br>=E5=9C=A8 2020-06-12 20:03:30=EF=BC=
=8C"Marc-Andr=C3=A9&nbsp;Lureau"&nbsp;&lt;marcandre.lureau@gmail.com&gt; =
=E5=86=99=E9=81=93=EF=BC=9A<br><blockquote id=3D"isReplyContent" style=3D"P=
ADDING-LEFT: 1ex; MARGIN: 0px 0px 0px 0.8ex; BORDER-LEFT: #ccc 1px solid" d=
ata-mce-style=3D"padding-left: 1ex; margin: 0px 0px 0px 0.8ex; border-left:=
 #ccc 1px solid;"><div dir=3D"ltr"><div dir=3D"ltr">Hi<br></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 12, 2=
020 at 12:57 PM =E9=99=88=E7=82=A4 &lt;<a href=3D"mailto:qishiyexu2@126.com=
" target=3D"_blank" data-mce-href=3D"mailto:qishiyexu2@126.com">qishiyexu2@=
126.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex" data-mce-style=3D"margin: 0px 0px 0px 0.8ex; border-left: 1px solid =
#cccccc; padding-left: 1ex;"><div style=3D"line-height:1.7;color:rgb(0,0,0)=
;font-size:14px;font-family:Arial" data-mce-style=3D"line-height: 1.7; colo=
r: #000000; font-size: 14px; font-family: Arial;"><div style=3D"margin:0px"=
 data-mce-style=3D"margin: 0px;">Hi,</div><div style=3D"margin:0px" data-mc=
e-style=3D"margin: 0px;"><br></div><div style=3D"margin:0px" data-mce-style=
=3D"margin: 0px;">Spice-gtk is now using co-routine to handle different cha=
nnel connections. When a channel is handling data, other channels would hav=
e to wait, rather than handling synchronously.&nbsp; That would bring us fo=
llowing issues:</div><div style=3D"margin:0px" data-mce-style=3D"margin: 0p=
x;">&nbsp;1. If some less important channels (like usb channels) are transf=
ering big data, important channels (main-channel, display-channel,input-cha=
nnel) will be affected.&nbsp;&nbsp;</div><div style=3D"margin:0px" data-mce=
-style=3D"margin: 0px;">&nbsp;2. When receiving big data like file transfer=
ing(G_IO_IN), send event (G_IO_OUT) will not be triggered.</div><div style=
=3D"margin:0px" data-mce-style=3D"margin: 0px;">&nbsp;3. Flow control betwe=
en different channels will be hard to do.&nbsp;</div><div style=3D"margin:0=
px" data-mce-style=3D"margin: 0px;"><br></div><div style=3D"margin:0px" dat=
a-mce-style=3D"margin: 0px;">Is is possible(and make sense) to put channels=
 into different threads so they can synchronously receive &amp; send msg, w=
ithout affect each other?</div><div style=3D"margin:0px" data-mce-style=3D"=
margin: 0px;"><br></div></div></blockquote><div><br></div><div>Switching to=
 threads would be possible, but that wouldn't help in the situation you des=
cribe, as you are very likely bound on IO. Using several threads would actu=
ally create more problems to synchronize and schedule the different channel=
s.</div><div><br></div><div>Io operations in coroutines are non-blocking, s=
o they shouldn't affect other spice-gtk task. If you however observe a bloc=
king CPU-task in some channel, this may affect the performance of other cha=
nnels. But in general, except for video/image decoding which may be done in=
 a separate thread, the client side doesn't do much work.</div><div><br></d=
iv><div>USB, clipboard and file sharing may use large amounts of data, and =
we rely on the glib source and kernel to prioritize channels: this isn't gr=
eat in some cases and may receive improvements.<br></div><div><br></div></d=
iv><br>-- <br><div dir=3D"ltr" class=3D"gmail_signature">Marc-Andr=C3=A9 Lu=
reau<br></div></div></blockquote></div><br><div><br></div><p>&nbsp;</p><br>=
_______________________________________________<br>Spice-devel mailing list=
<br>Spice-devel@lists.freedesktop.org<br>https://lists.freedesktop.org/mail=
man/listinfo/spice-devel<br></blockquote><div><br></div></div></body></html=
>
------=_Part_30483557_271214770.1592030402446--


--===============0995942838==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0995942838==--

