Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D72071FB26F
	for <lists+spice-devel@lfdr.de>; Tue, 16 Jun 2020 15:46:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55B0D6E16B;
	Tue, 16 Jun 2020 13:46:15 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 218E86E16B
 for <spice-devel@lists.freedesktop.org>; Tue, 16 Jun 2020 13:46:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592315172;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=PC1htiPnRwDMolorlSyojf9i+SQp+TvBErIxQwbR7FU=;
 b=Y5RHQlt0izIW0I81JmgTtgwj3H6mRrJp4FtYz3tr5cjot0od5ZSUq/342pBQDsE4CxugI7
 uCxUSSBMpfl083Om7dFX/bqVezK5FPmH3ddRhPiLXFwq9/NljMxjz0g/CoYdT9wfHD1s+F
 +CZ8MRlIa/nToIqmONGn9YI9IYpz1wg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-439-TBhWM11-MAGwu0LBKyR9BQ-1; Tue, 16 Jun 2020 09:46:04 -0400
X-MC-Unique: TBhWM11-MAGwu0LBKyR9BQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5F7831512EC;
 Tue, 16 Jun 2020 13:46:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 522BE5D965;
 Tue, 16 Jun 2020 13:46:03 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3CCE01048F9;
 Tue, 16 Jun 2020 13:46:03 +0000 (UTC)
Date: Tue, 16 Jun 2020 09:46:02 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: =?utf-8?B?6ZmI54Kk?= <qishiyexu2@126.com>
Message-ID: <383099151.30745646.1592315162623.JavaMail.zimbra@redhat.com>
In-Reply-To: <31d3c6e7.2079.172bafe3abf.Coremail.qishiyexu2@126.com>
References: <16656b4b.5cd5.172a7a33052.Coremail.qishiyexu2@126.com>
 <CAJ+F1CLYf0xoQ-UraTQzPoGk9Vpvt_=yoyW+ENZHdznf3kmLqA@mail.gmail.com>
 <2bd8d90a.9bae.172a91d8976.Coremail.qishiyexu2@126.com>
 <1346340456.30483558.1592030402447.JavaMail.zimbra@redhat.com>
 <4f7d70eb.7593.172b79b8cc5.Coremail.qishiyexu2@126.com>
 <CAH=CeiCKL2PinjiCXPBeo=gUacADMLhVJ72qGm9H2JY94jLY+g@mail.gmail.com>
 <31d3c6e7.2079.172bafe3abf.Coremail.qishiyexu2@126.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.4, 10.4.195.6]
Thread-Topic: Is it possible to put spice channels into different threads?
Thread-Index: COhTf8HqmcWMrm+R76lDm/361+gRDg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
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
Content-Type: multipart/mixed; boundary="===============0753705903=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0753705903==
Content-Type: multipart/alternative; 
	boundary="----=_Part_30745645_1313786515.1592315162622"

------=_Part_30745645_1313786515.1592315162622
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,=20
I have an old patch on that code that instead checks if there are pending=
=20
data to send and exit the loop instead of a simple counter.=20

But I think that both solutions are not perfect. The reason is that a chann=
el=20
is either reading or writing. If there's for instance a very big message to=
 read=20
the code will be stuck on reading until all message is received. For the sa=
me=20
reason if network buffer on the socket is pretty full writing a big message=
=20
will avoid receiving data till the server will read some data decreasing ou=
r=20
socket send buffer. So a read could block writes while a write could block =
reads=20
(note that other channels are not blocked, we are speaking about reads/writ=
es=20
on a single channel).=20

Maybe would be good if the socket polling code would poll both read and wri=
te=20
so to avoid one blocking the other.=20

One issue of the loop (current code) on read is that if you manage to get=
=20
stuck on it and the read messages cause messages to be queued for writing=
=20
the queue can grow indefinitely.=20

Frediano=20

----- Original Message -----

> Hi,

> For now I simply used a counter to work around this issue.

> while (... g_pollable_input_stream_is_readable ) {
> if (loop > 10)
> break;
> }

> Ugly but seems useful.

> BR
> Don

> At 2020-06-15 20:59:00, "Jakub Janku" <jjanku@redhat.com> wrote:
> >Hi,
> >
> >yes, I think this is a real issue. I feel like I've stumbled across
> >something similar in the past when working on webdav.
> >
> >So yeah, it seems like the channel might get blocked in one direction
> >-- meaning data isn't sent until you read all available data.
> >
> >However, that doesn't mean that other channels won't work imho. In a
> >more realistic scenario, you wold read the data from vdagent in chunks
> >and actually do something with it. Webdav uses the code in vmcstream.c
> >to read the data in coroutine and the buffer is delivered to the
> >WebdavChannel using an idle callback. This gives other events the
> >opportunity to fire and be processed and the code can yield to another
> >coroutine. So important channels, like Display, should continue
> >working just fine.
> >
> >PS, it's been quite some time, so I might not remember it correctly.
> >But anyway, if you look at channel-webdav.c and vmcstream.c, you
> >should hopefully get a better idea.
> >
> >Cheers,
> >Jakub
> >
> >On Mon, Jun 15, 2020 at 12:52 PM =E9=99=88=E7=82=A4 <qishiyexu2@126.com>=
 wrote:
> >>
> >> Hi,
> >>
> >> After debugging, I  think my problem is probably not accociated with
> >> cooperative multitasking.
> >> Here is where spice-gtk read data:
> >>
> >>     /* treat all incoming data (block on message completion) */
> >>     while (!c->has_error &&
> >>            c->state !=3D SPICE_CHANNEL_STATE_MIGRATING &&
> >>            g_pollable_input_stream_is_readable(G_POLLABLE_INPUT_STREAM=
(c->in))
> >>     ) { do
> >>             spice_channel_recv_msg(channel,
> >>                                    (handler_msg_in)SPICE_CHANNEL_GET_C=
LASS(channel)->handle_msg,
> >>                                    NULL);
> >> #ifdef HAVE_SASL
> >>             /* flush the sasl buffer too */
> >>         while (c->sasl_decoded !=3D NULL);
> >> #else
> >>         while (FALSE);
> >> #endif
> >>     }
> >>
> >>
> >> If vdagent sends lots of data, spice_channel_recv_msg will be called t=
he
> >> whole time, so iterate_write will not be called, and data will not be
> >> sent out unless vdagent stops sending data.
> >>
> >> BR
> >> Don
> >>
> >>
> >>
> >>
> >> At 2020-06-13 14:40:02, "Frediano Ziglio" <fziglio@redhat.com> wrote:
> >>
> >> Hi,
> >>   the pattern used in spice-gtk is called cooperative multitasking (se=
e
> >>   https://en.wikipedia.org/wiki/Cooperative_multitasking), if you add
> >>   code that is not cooperative you get what you described. Use corouti=
ne
> >>   functions to read remote data so the read won't stop other code. If =
you
> >>   need to run expensive or blocking code it's a good idea to run it in
> >>   another thread removing the blockage.
> >>
> >> Frediano
> >>
> >> ________________________________
> >>
> >>
> >>
> >> Hi
> >>
> >> Here is my experiment:
> >> I created a new port-channel to transfer data between vdagent and
> >> spice-gtk. I used a while loop to send 2kb data to gtk, gtk received a=
nd
> >> drop the data. In the mean time I used a timer(1ms) to send 2kb data t=
o
> >> vdagent.
> >> Strange thing is that gtk will continually receive data for a while(10=
secs
> >> - 70secs) then send a whole bunch of data to vdagent. When receiving
> >> data, send data will be added to tcp buffer but will not be sent out.
> >>
> >> So I think send event will be affected by receive event, then I guess
> >> using different thread would help.
> >> Could you please correct me if I=E2=80=99m wrong?
> >>
> >> BR
> >> Don
> >>
> >>
> >>
> >>
> >>
> >>
> >>
> >>
> >> =E5=9C=A8 2020-06-12 20:03:30=EF=BC=8C"Marc-Andr=C3=A9 Lureau" <marcan=
dre.lureau@gmail.com> =E5=86=99=E9=81=93=EF=BC=9A
> >>
> >> Hi
> >>
> >> On Fri, Jun 12, 2020 at 12:57 PM =E9=99=88=E7=82=A4 <qishiyexu2@126.co=
m> wrote:
> >>>
> >>> Hi,
> >>>
> >>> Spice-gtk is now using co-routine to handle different channel
> >>> connections. When a channel is handling data, other channels would ha=
ve
> >>> to wait, rather than handling synchronously.  That would bring us
> >>> following issues:
> >>>  1. If some less important channels (like usb channels) are transferi=
ng
> >>>  big data, important channels (main-channel,
> >>>  display-channel,input-channel) will be affected.
> >>>  2. When receiving big data like file transfering(G_IO_IN), send even=
t
> >>>  (G_IO_OUT) will not be triggered.
> >>>  3. Flow control between different channels will be hard to do.
> >>>
> >>> Is is possible(and make sense) to put channels into different threads=
 so
> >>> they can synchronously receive & send msg, without affect each other?
> >>>
> >>
> >> Switching to threads would be possible, but that wouldn't help in the
> >> situation you describe, as you are very likely bound on IO. Using seve=
ral
> >> threads would actually create more problems to synchronize and schedul=
e
> >> the different channels.
> >>
> >> Io operations in coroutines are non-blocking, so they shouldn't affect
> >> other spice-gtk task. If you however observe a blocking CPU-task in so=
me
> >> channel, this may affect the performance of other channels. But in
> >> general, except for video/image decoding which may be done in a separa=
te
> >> thread, the client side doesn't do much work.
> >>
> >> USB, clipboard and file sharing may use large amounts of data, and we =
rely
> >> on the glib source and kernel to prioritize channels: this isn't great=
 in
> >> some cases and may receive improvements.
> >>
> >>
> >> --
> >> Marc-Andr=C3=A9 Lureau
> >>
> >>
> >>
> >>
> >>
> >>
> >> _______________________________________________
> >> Spice-devel mailing list
> >> Spice-devel@lists.freedesktop.org
> >> https://lists.freedesktop.org/mailman/listinfo/spice-devel
> >>
> >>
> >> _______________________________________________
> >> Spice-devel mailing list
> >> Spice-devel@lists.freedesktop.org
> >> https://lists.freedesktop.org/mailman/listinfo/spice-devel

------=_Part_30745645_1313786515.1592315162622
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"font-family: courier new,courier,monaco,monospace=
,sans-serif; font-size: 12pt; color: #000000"><div>Hi,<br></div><div>&nbsp;=
 I have an old patch on that code that instead checks if there are pending<=
/div><div>data to send and exit the loop instead of a simple counter.<br></=
div><div><br></div><div>But I think that both solutions are not perfect. Th=
e reason is that a channel<br></div><div>is either reading or writing. If t=
here's for instance a very big message to read<br></div><div>the code will =
be stuck on reading until all message is received. For the same<br></div><d=
iv>reason if network buffer on the socket is pretty full writing a big mess=
age<br></div><div>will avoid receiving data till the server will read some =
data decreasing our<br></div><div>socket send buffer. So a read could block=
 writes while a write could block reads<br></div><div>(note that other chan=
nels are not blocked, we are speaking about reads/writes<br></div><div>on a=
 single channel).<br></div><div><br></div><div>Maybe would be good if the s=
ocket polling code would poll both read and write<br></div><div>so to avoid=
 one blocking the other.<br></div><div><br></div><div>One issue of the loop=
 (current code) on read is that if you manage to get<br></div><div>stuck on=
 it and the read messages cause messages to be queued for writing<br></div>=
<div>the queue can grow <span lang=3D"en">indefinitely.</span><br></div><di=
v><span lang=3D"en"><br></span></div><div><span lang=3D"en">Frediano<br></s=
pan></div><div><br></div><hr id=3D"zwchr"><blockquote style=3D"border-left:=
2px solid #1010FF;margin-left:5px;padding-left:5px;color:#000;font-weight:n=
ormal;font-style:normal;text-decoration:none;font-family:Helvetica,Arial,sa=
ns-serif;font-size:12pt;" data-mce-style=3D"border-left: 2px solid #1010FF;=
 margin-left: 5px; padding-left: 5px; color: #000; font-weight: normal; fon=
t-style: normal; text-decoration: none; font-family: Helvetica,Arial,sans-s=
erif; font-size: 12pt;"><br><div><br></div><div style=3D"line-height:1.7;co=
lor:#000000;font-size:14px;font-family:Arial" data-mce-style=3D"line-height=
: 1.7; color: #000000; font-size: 14px; font-family: Arial;"><div style=3D"=
margin: 0;" data-mce-style=3D"margin: 0;">Hi,</div><div style=3D"margin: 0;=
" data-mce-style=3D"margin: 0;"><br></div><div style=3D"margin: 0;" data-mc=
e-style=3D"margin: 0;">For now I simply used a counter to work around this =
issue.</div><div style=3D"margin: 0;" data-mce-style=3D"margin: 0;"><br></d=
iv><div style=3D"margin: 0;" data-mce-style=3D"margin: 0;">while (...&nbsp;=
<span style=3D"font-family: arial; white-space: pre-wrap;" data-mce-style=
=3D"font-family: arial; white-space: pre-wrap;">g_pollable_input_stream_is_=
readable </span>) {</div><div style=3D"margin: 0;" data-mce-style=3D"margin=
: 0;">&nbsp; if (loop &gt; 10)</div><div style=3D"margin: 0;" data-mce-styl=
e=3D"margin: 0;">&nbsp; &nbsp; break;</div><div style=3D"margin: 0;" data-m=
ce-style=3D"margin: 0;">}</div><div style=3D"margin: 0;" data-mce-style=3D"=
margin: 0;"><br></div><div style=3D"margin: 0;" data-mce-style=3D"margin: 0=
;">Ugly but seems useful.</div><div style=3D"margin: 0;" data-mce-style=3D"=
margin: 0;"><br></div><div style=3D"margin: 0;" data-mce-style=3D"margin: 0=
;">BR</div><div style=3D"margin: 0;" data-mce-style=3D"margin: 0;">Don</div=
><p style=3D"margin: 0;" data-mce-style=3D"margin: 0;"><br></p><p style=3D"=
margin: 0;" data-mce-style=3D"margin: 0;"><br></p><p style=3D"margin: 0;" d=
ata-mce-style=3D"margin: 0;"><br></p><p style=3D"margin: 0;" data-mce-style=
=3D"margin: 0;"><br></p><div style=3D"position:relative;zoom:1" data-mce-st=
yle=3D"position: relative; zoom: 1;"><br></div><div id=3D"divNeteaseMailCar=
d"><br></div><p style=3D"margin: 0;" data-mce-style=3D"margin: 0;"><br></p>=
<pre><br>At 2020-06-15 20:59:00, "Jakub Janku" &lt;jjanku@redhat.com&gt; wr=
ote:
&gt;Hi,
&gt;
&gt;yes, I think this is a real issue. I feel like I've stumbled across
&gt;something similar in the past when working on webdav.
&gt;
&gt;So yeah, it seems like the channel might get blocked in one direction
&gt;-- meaning data isn't sent until you read all available data.
&gt;
&gt;However, that doesn't mean that other channels won't work imho. In a
&gt;more realistic scenario, you wold read the data from vdagent in chunks
&gt;and actually do something with it. Webdav uses the code in vmcstream.c
&gt;to read the data in coroutine and the buffer is delivered to the
&gt;WebdavChannel using an idle callback. This gives other events the
&gt;opportunity to fire and be processed and the code can yield to another
&gt;coroutine. So important channels, like Display, should continue
&gt;working just fine.
&gt;
&gt;PS, it's been quite some time, so I might not remember it correctly.
&gt;But anyway, if you look at channel-webdav.c and vmcstream.c, you
&gt;should hopefully get a better idea.
&gt;
&gt;Cheers,
&gt;Jakub
&gt;
&gt;On Mon, Jun 15, 2020 at 12:52 PM =E9=99=88=E7=82=A4 &lt;qishiyexu2@126.=
com&gt; wrote:
&gt;&gt;
&gt;&gt; Hi,
&gt;&gt;
&gt;&gt; After debugging, I  think my problem is probably not accociated wi=
th cooperative multitasking.
&gt;&gt; Here is where spice-gtk read data:
&gt;&gt;
&gt;&gt;     /* treat all incoming data (block on message completion) */
&gt;&gt;     while (!c-&gt;has_error &amp;&amp;
&gt;&gt;            c-&gt;state !=3D SPICE_CHANNEL_STATE_MIGRATING &amp;&am=
p;
&gt;&gt;            g_pollable_input_stream_is_readable(G_POLLABLE_INPUT_ST=
REAM(c-&gt;in))
&gt;&gt;     ) { do
&gt;&gt;             spice_channel_recv_msg(channel,
&gt;&gt;                                    (handler_msg_in)SPICE_CHANNEL_G=
ET_CLASS(channel)-&gt;handle_msg, NULL);
&gt;&gt; #ifdef HAVE_SASL
&gt;&gt;             /* flush the sasl buffer too */
&gt;&gt;         while (c-&gt;sasl_decoded !=3D NULL);
&gt;&gt; #else
&gt;&gt;         while (FALSE);
&gt;&gt; #endif
&gt;&gt;     }
&gt;&gt;
&gt;&gt;
&gt;&gt; If vdagent sends lots of data, spice_channel_recv_msg will be call=
ed the whole time, so iterate_write will not be called, and data will not b=
e sent out unless vdagent stops sending data.
&gt;&gt;
&gt;&gt; BR
&gt;&gt; Don
&gt;&gt;
&gt;&gt;
&gt;&gt;
&gt;&gt;
&gt;&gt; At 2020-06-13 14:40:02, "Frediano Ziglio" &lt;fziglio@redhat.com&g=
t; wrote:
&gt;&gt;
&gt;&gt; Hi,
&gt;&gt;   the pattern used in spice-gtk is called cooperative multitasking=
 (see https://en.wikipedia.org/wiki/Cooperative_multitasking), if you add c=
ode that is not cooperative you get what you described. Use coroutine funct=
ions to read remote data so the read won't stop other code. If you need to =
run expensive or blocking code it's a good idea to run it in another thread=
 removing the blockage.
&gt;&gt;
&gt;&gt; Frediano
&gt;&gt;
&gt;&gt; ________________________________
&gt;&gt;
&gt;&gt;
&gt;&gt;
&gt;&gt; Hi
&gt;&gt;
&gt;&gt; Here is my experiment:
&gt;&gt; I created a new port-channel to transfer data between vdagent and =
spice-gtk. I used a while loop to send 2kb data to gtk, gtk received and dr=
op the data. In the mean time I used a timer(1ms) to send 2kb data to vdage=
nt.
&gt;&gt; Strange thing is that gtk will continually receive data for a whil=
e(10secs - 70secs) then send a whole bunch of data to vdagent. When receivi=
ng data, send data will be added to tcp buffer but will not be sent out.
&gt;&gt;
&gt;&gt; So I think send event will be affected by receive event, then I gu=
ess using different thread would help.
&gt;&gt; Could you please correct me if I=E2=80=99m wrong?
&gt;&gt;
&gt;&gt; BR
&gt;&gt; Don
&gt;&gt;
&gt;&gt;
&gt;&gt;
&gt;&gt;
&gt;&gt;
&gt;&gt;
&gt;&gt;
&gt;&gt;
&gt;&gt; =E5=9C=A8 2020-06-12 20:03:30=EF=BC=8C"Marc-Andr=C3=A9 Lureau" &lt=
;marcandre.lureau@gmail.com&gt; =E5=86=99=E9=81=93=EF=BC=9A
&gt;&gt;
&gt;&gt; Hi
&gt;&gt;
&gt;&gt; On Fri, Jun 12, 2020 at 12:57 PM =E9=99=88=E7=82=A4 &lt;qishiyexu2=
@126.com&gt; wrote:
&gt;&gt;&gt;
&gt;&gt;&gt; Hi,
&gt;&gt;&gt;
&gt;&gt;&gt; Spice-gtk is now using co-routine to handle different channel =
connections. When a channel is handling data, other channels would have to =
wait, rather than handling synchronously.  That would bring us following is=
sues:
&gt;&gt;&gt;  1. If some less important channels (like usb channels) are tr=
ansfering big data, important channels (main-channel, display-channel,input=
-channel) will be affected.
&gt;&gt;&gt;  2. When receiving big data like file transfering(G_IO_IN), se=
nd event (G_IO_OUT) will not be triggered.
&gt;&gt;&gt;  3. Flow control between different channels will be hard to do=
.
&gt;&gt;&gt;
&gt;&gt;&gt; Is is possible(and make sense) to put channels into different =
threads so they can synchronously receive &amp; send msg, without affect ea=
ch other?
&gt;&gt;&gt;
&gt;&gt;
&gt;&gt; Switching to threads would be possible, but that wouldn't help in =
the situation you describe, as you are very likely bound on IO. Using sever=
al threads would actually create more problems to synchronize and schedule =
the different channels.
&gt;&gt;
&gt;&gt; Io operations in coroutines are non-blocking, so they shouldn't af=
fect other spice-gtk task. If you however observe a blocking CPU-task in so=
me channel, this may affect the performance of other channels. But in gener=
al, except for video/image decoding which may be done in a separate thread,=
 the client side doesn't do much work.
&gt;&gt;
&gt;&gt; USB, clipboard and file sharing may use large amounts of data, and=
 we rely on the glib source and kernel to prioritize channels: this isn't g=
reat in some cases and may receive improvements.
&gt;&gt;
&gt;&gt;
&gt;&gt; --
&gt;&gt; Marc-Andr=C3=A9 Lureau
&gt;&gt;
&gt;&gt;
&gt;&gt;
&gt;&gt;
&gt;&gt;
&gt;&gt;
&gt;&gt; _______________________________________________
&gt;&gt; Spice-devel mailing list
&gt;&gt; Spice-devel@lists.freedesktop.org
&gt;&gt; https://lists.freedesktop.org/mailman/listinfo/spice-devel
&gt;&gt;
&gt;&gt;
&gt;&gt; _______________________________________________
&gt;&gt; Spice-devel mailing list
&gt;&gt; Spice-devel@lists.freedesktop.org
&gt;&gt; https://lists.freedesktop.org/mailman/listinfo/spice-devel
</pre></div></blockquote><div><br></div></div></body></html>
------=_Part_30745645_1313786515.1592315162622--


--===============0753705903==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0753705903==--

