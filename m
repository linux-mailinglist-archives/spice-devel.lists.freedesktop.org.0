Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F355726B4
	for <lists+spice-devel@lfdr.de>; Tue, 12 Jul 2022 21:53:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9042812B1C5;
	Tue, 12 Jul 2022 19:53:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mxout1-he-de.apache.org (mxout1-he-de.apache.org
 [95.216.194.37])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2044A12AC4F
 for <spice-devel@lists.freedesktop.org>; Tue, 12 Jul 2022 19:53:08 +0000 (UTC)
Received: from mail.apache.org (mailroute1-lw-us.apache.org [207.244.88.153])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mxout1-he-de.apache.org (ASF Mail Server at mxout1-he-de.apache.org) with
 ESMTPS id D54AB61A87
 for <spice-devel@lists.freedesktop.org>; Tue, 12 Jul 2022 19:53:03 +0000 (UTC)
Received: (qmail 495787 invoked by uid 116); 12 Jul 2022 19:50:51 -0000
Received: from mailrelay1-he-de.apache.org (HELO mailrelay1-he-de.apache.org)
 (116.203.21.61)
 by apache.org (qpsmtpd/0.94) with ESMTP; Tue, 12 Jul 2022 19:50:50 +0000
Authentication-Results: apache.org; auth=none
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com
 [209.85.217.47]) by mailrelay1-he-de.apache.org (ASF Mail Server at
 mailrelay1-he-de.apache.org) with ESMTPSA id E598D47E51
 for <spice-devel@lists.freedesktop.org>; Tue, 12 Jul 2022 11:40:47 +0000 (UTC)
Received: by mail-vs1-f47.google.com with SMTP id t127so7523781vsb.8
 for <spice-devel@lists.freedesktop.org>; Tue, 12 Jul 2022 04:40:47 -0700 (PDT)
X-Gm-Message-State: AJIora/rozAPMNYXFMFZkW0q1yHBf1AQ5UjyBfxE3Q78iXI3qZ910Cb2
 oicE+eWRSiKFZ0tuizGGUq6ppKCZJXw0bD+q7JY=
X-Google-Smtp-Source: AGRyM1vexG/IiA5Tc8fwFL6OqzSm5tI4OZKqWYY7E3Y3TuSIqGgADHhQKYI5wmRjp+BuXv484Jd4EdwDoEgzQHRkaBM=
X-Received: by 2002:a67:e18d:0:b0:357:25fb:702c with SMTP id
 e13-20020a67e18d000000b0035725fb702cmr8437830vsl.50.1657626046847; Tue, 12
 Jul 2022 04:40:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAFjj601s+L1mXUOk4r5p6KshAf5Ae5+6z7MauQ-sUcKuSX-BCA@mail.gmail.com>
 <CAFjj602NVft5gTTPTCiwAmDvou=3BUdAiLjwZmPTF9=J8Luwzw@mail.gmail.com>
 <20220712062741.nlpexan4kh3gicwv@tapioca>
In-Reply-To: <20220712062741.nlpexan4kh3gicwv@tapioca>
From: Nick Couchman <vnick@apache.org>
Date: Tue, 12 Jul 2022 07:40:36 -0400
X-Gmail-Original-Message-ID: <CAFjj603jUK47FBidT0N8ymvy62mWXMeYiP808Tdk0RRrt6K_zQ@mail.gmail.com>
Message-ID: <CAFjj603jUK47FBidT0N8ymvy62mWXMeYiP808Tdk0RRrt6K_zQ@mail.gmail.com>
To: Victor Toso <victortoso@redhat.com>,
 spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: multipart/alternative; boundary="000000000000b1625105e39a23ae"
Subject: Re: [Spice-devel] Spice, VDAgent, and Clipboard
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

--000000000000b1625105e39a23ae
Content-Type: text/plain; charset="UTF-8"

On Tue, Jul 12, 2022 at 2:27 AM Victor Toso <victortoso@redhat.com> wrote:

> Hi Nick,
>
> > To answer my own question, this was the issue - apparently the
> > call to spice_main_channel_clipboard_selection_release()
> > actually clears the clipboard. Removing this call allows the
> > clipboard from client (Guacamole) to Spice server to function
> > properly. I'm not sure if there's anything that needs to be
> > done to "ungrab" the clipboard after sending the data, or if it
> > is done automatically?
>
> IIRC, the "ungrab" on client-side should happen when the Widget
> is not on focus anymore. I think it is fine to keep the "grab"
> while the widget has focus.
>
>
Ah, okay - I'll have to take a look at that and see if there's another
place where I should be triggering the release when things go out-of-focus.


> There are several scenarios around this, so it can be a bit
> tricky to understand/debug, specially the differences between X11
> and Wayland. For example, the comment in owner_change's callback:
>
>
> https://gitlab.freedesktop.org/spice/spice-gtk/-/blob/master/src/spice-gtk-session.c#L721
>
> In the past, we used to have some race conditions that I'd bet
> you should be hitting with your dev environment but, if you are
> not, it should be thanks to the fixes for
>
>     https://gitlab.freedesktop.org/spice/spice-gtk/-/issues/82
>
>
Right now things seem to be working as expected, and I'm not seeing any odd
behaviors that would indicate race conditions, but maybe I just haven't hit
it, yet :-).


> Thanks for your interest in SPICE, I'm looking forward to testing
> Guacamole (the food I already love!) :)
>
>
Always happy to have more users and testers. If you're at all interested in
testing it, or just looking at my code to see what I'm doing wrong, here
are the branches:

https://github.com/necouchman/guacamole-server/tree/working/spice-basic
 (in the src/protocols/spice directory)

https://github.com/necouchman/guacamole-client/tree/working/spice-protocol
 (just basic stuff for adding the protocol to the client - most of the
"real" work is done in guacamole-server).

Right now I'm working on getting audio input going, then on to file
transfers.

-NIck

--000000000000b1625105e39a23ae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, Jul 12, 2022 at 2:27 AM Victor To=
so &lt;<a href=3D"mailto:victortoso@redhat.com">victortoso@redhat.com</a>&g=
t; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex">Hi Nick,<br>
<br>&gt; To answer my own question, this was the issue - apparently the<br>
&gt; call to spice_main_channel_clipboard_selection_release()<br>
&gt; actually clears the clipboard. Removing this call allows the<br>
&gt; clipboard from client (Guacamole) to Spice server to function<br>
&gt; properly. I&#39;m not sure if there&#39;s anything that needs to be<br=
>
&gt; done to &quot;ungrab&quot; the clipboard after sending the data, or if=
 it<br>
&gt; is done automatically?<br>
<br>
IIRC, the &quot;ungrab&quot; on client-side should happen when the Widget<b=
r>
is not on focus anymore. I think it is fine to keep the &quot;grab&quot;<br=
>
while the widget has focus.<br>
<br></blockquote><div><br></div><div>Ah, okay - I&#39;ll have to take a loo=
k at that and see if there&#39;s another place where I should be triggering=
 the release when things go out-of-focus.</div><div>=C2=A0</div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">
There are several scenarios around this, so it can be a bit<br>
tricky to understand/debug, specially the differences between X11<br>
and Wayland. For example, the comment in owner_change&#39;s callback:<br>
<br>
=C2=A0 =C2=A0 <a href=3D"https://gitlab.freedesktop.org/spice/spice-gtk/-/b=
lob/master/src/spice-gtk-session.c#L721" rel=3D"noreferrer" target=3D"_blan=
k">https://gitlab.freedesktop.org/spice/spice-gtk/-/blob/master/src/spice-g=
tk-session.c#L721</a><br>
<br>
In the past, we used to have some race conditions that I&#39;d bet<br>
you should be hitting with your dev environment but, if you are<br>
not, it should be thanks to the fixes for <br>
<br>
=C2=A0 =C2=A0 <a href=3D"https://gitlab.freedesktop.org/spice/spice-gtk/-/i=
ssues/82" rel=3D"noreferrer" target=3D"_blank">https://gitlab.freedesktop.o=
rg/spice/spice-gtk/-/issues/82</a><br>
<br></blockquote><div><br></div><div>Right now things seem to be working as=
 expected, and I&#39;m not seeing any odd behaviors that would indicate rac=
e conditions, but maybe I just haven&#39;t hit it, yet :-).</div><div>=C2=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">
Thanks for your interest in SPICE, I&#39;m looking forward to testing<br>
Guacamole (the food I already love!) :)<br>
<br></blockquote><div><br></div><div>Always happy to have more users and te=
sters. If you&#39;re at all interested in testing it, or just looking at my=
 code to see what I&#39;m doing wrong, here are the branches:</div><div><br=
></div><div><a href=3D"https://github.com/necouchman/guacamole-server/tree/=
working/spice-basic">https://github.com/necouchman/guacamole-server/tree/wo=
rking/spice-basic</a><br></div><div>=C2=A0(in the src/protocols/spice direc=
tory)</div><div><br></div><div><a href=3D"https://github.com/necouchman/gua=
camole-client/tree/working/spice-protocol">https://github.com/necouchman/gu=
acamole-client/tree/working/spice-protocol</a><br></div><div>=C2=A0(just ba=
sic stuff for adding the protocol to the client - most of the &quot;real&qu=
ot; work is done in guacamole-server).</div><div><br></div><div>Right now I=
&#39;m working on getting audio input going, then on to file transfers.</di=
v><div><br></div><div>-NIck</div></div></div>

--000000000000b1625105e39a23ae--
