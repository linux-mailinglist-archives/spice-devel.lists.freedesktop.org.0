Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 14F6E5531CC
	for <lists+spice-devel@lfdr.de>; Tue, 21 Jun 2022 14:19:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7232D89196;
	Tue, 21 Jun 2022 12:19:33 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mxout1-ec2-va.apache.org (mxout1-ec2-va.apache.org
 [3.227.148.255])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9EAE89146
 for <spice-devel@lists.freedesktop.org>; Tue, 21 Jun 2022 12:19:31 +0000 (UTC)
Received: from mail.apache.org (mailroute1-lw-us.apache.org [207.244.88.153])
 by mxout1-ec2-va.apache.org (ASF Mail Server at
 mxout1-ec2-va.apache.org) with SMTP id 412BE3FC4A
 for <spice-devel@lists.freedesktop.org>; Tue, 21 Jun 2022 12:19:28 +0000 (UTC)
Received: (qmail 57390 invoked by uid 99); 21 Jun 2022 12:19:28 -0000
Received: from mailrelay1-he-de.apache.org (HELO mailrelay1-he-de.apache.org)
 (116.203.21.61)
 by apache.org (qpsmtpd/0.29) with ESMTP; Tue, 21 Jun 2022 12:19:28 +0000
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com
 [209.85.221.175]) by mailrelay1-he-de.apache.org (ASF Mail Server at
 mailrelay1-he-de.apache.org) with ESMTPSA id 1D36A3E92A
 for <spice-devel@lists.freedesktop.org>; Tue, 21 Jun 2022 12:19:27 +0000 (UTC)
Received: by mail-vk1-f175.google.com with SMTP id r17so2853659vko.11
 for <spice-devel@lists.freedesktop.org>; Tue, 21 Jun 2022 05:19:27 -0700 (PDT)
X-Gm-Message-State: AJIora+oJ1VH2ihZApK6FTtusFpBL6tTEs8KHjt5HbJYKp3j/V2xKv0D
 HuqtGH/QnnEeyRzBrRCSNqKBWbHvK3HdOl9ayjU=
X-Google-Smtp-Source: AGRyM1vcgEpJoQVN+0BWa0mBSJ6S8vvtplo118fhYpOpy9R1CamLgkVI/iRo13ktOFykM0q0nPEDCv4Fy0jNNO6jde0=
X-Received: by 2002:ac5:c5ba:0:b0:36b:f95a:85ae with SMTP id
 f26-20020ac5c5ba000000b0036bf95a85aemr4910387vkl.1.1655813965988; Tue, 21 Jun
 2022 05:19:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAFjj602+NQwJF-QB6V=9ELfc9qgqBdvhSr5_VSAdy6-LZCoPbA@mail.gmail.com>
 <CAJ+F1CLCV3oMTnLf2dDX7uFH0QV481O2csHpdvofj8jo19RrEA@mail.gmail.com>
 <CAFjj601vkEYrPv1NwWduAqDyBpmgw8j6PnDsuJ+pADvECozcnw@mail.gmail.com>
 <CAAg9qJ2NqCamoVUTm8Mv=oO_EP9FtoTk4RUa-MO-kPuM9TjOYA@mail.gmail.com>
In-Reply-To: <CAAg9qJ2NqCamoVUTm8Mv=oO_EP9FtoTk4RUa-MO-kPuM9TjOYA@mail.gmail.com>
From: Nick Couchman <vnick@apache.org>
Date: Tue, 21 Jun 2022 08:19:15 -0400
X-Gmail-Original-Message-ID: <CAFjj602d9c0dnzLc190FU4g4kKr+vJi872h_WcPo9VdV07ohAA@mail.gmail.com>
Message-ID: <CAFjj602d9c0dnzLc190FU4g4kKr+vJi872h_WcPo9VdV07ohAA@mail.gmail.com>
To: Uri Lublin <ulublin@redhat.com>
Content-Type: multipart/alternative; boundary="00000000000041c9dc05e1f43be9"
Subject: Re: [Spice-devel] Issues with Clipboard Grab/Release Callbacks
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--00000000000041c9dc05e1f43be9
Content-Type: text/plain; charset="UTF-8"

>
> Here's the section in the src/protocol/spice/client.c file that registers
>> the callbacks:
>>
>>         /* Register clipboard handlers. */
>>         g_signal_connect(channel, SPICE_SIGNAL_MAIN_CLIPBOARD_SELECTION,
>>                 G_CALLBACK(guac_spice_clipboard_selection_handler),
>> client);
>>         g_signal_connect(channel,
>> SPICE_SIGNAL_MAIN_CLIPBOARD_SELECTION_GRAB,
>>                 G_CALLBACK(guac_spice_clipboard_selection_grab_handler),
>> client);
>>         g_signal_connect(channel,
>> SPICE_SIGNAL_MAIN_CLIPBOARD_SELECTION_RELEASE,
>>
>> G_CALLBACK(guac_spice_clipboard_selection_release_handler), client);
>>         g_signal_connect(channel,
>> SPICE_SIGNAL_MAIN_CLIPBOARD_SELECTION_REQUEST,
>>
>> G_CALLBACK(guac_spice_clipboard_selection_request_handler), client);
>>
>> link to the full function is here:
>>
>> https://github.com/necouchman/guacamole-server/blob/5e073802a0656e65b1bc8e7e6051831bea0d9508/src/protocols/spice/client.c#L236-L375
>>
>
> Try changing the callbacks to accept a pointer, e.g.:
> - void guac_spice_clipboard_selection_grab_handler(SpiceMainChannel
> channel,
> +void guac_spice_clipboard_selection_grab_handler(SpiceMainChannel*
> channel,
>
>
-Sigh- I knew it would be something simple. Yes, this was it - works
correctly after using pointers.

Thanks, Uri and Marc.

-Nick

>

--00000000000041c9dc05e1f43be9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_=
quote"><div>Here&#39;s the section in the src/protocol/spice/client.c file =
that registers the callbacks:<br></div><div><br></div><div>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 /* Register clipboard handlers. */<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 g_signal_connect(channel, SPICE_SIGNAL_MAIN_CLIPBOARD_SELECTION,<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 G_CALLBACK(guac_spi=
ce_clipboard_selection_handler), client);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 g_=
signal_connect(channel, SPICE_SIGNAL_MAIN_CLIPBOARD_SELECTION_GRAB,<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 G_CALLBACK(guac_spice_=
clipboard_selection_grab_handler), client);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
g_signal_connect(channel, SPICE_SIGNAL_MAIN_CLIPBOARD_SELECTION_RELEASE,<br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 G_CALLBACK(guac_sp=
ice_clipboard_selection_release_handler), client);<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 g_signal_connect(channel, SPICE_SIGNAL_MAIN_CLIPBOARD_SELECTION_REQU=
EST,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 G_CALLBACK(=
guac_spice_clipboard_selection_request_handler), client);<br></div><div><br=
></div><div>link to the full function is here:<br><a href=3D"https://github=
.com/necouchman/guacamole-server/blob/5e073802a0656e65b1bc8e7e6051831bea0d9=
508/src/protocols/spice/client.c#L236-L375" target=3D"_blank">https://githu=
b.com/necouchman/guacamole-server/blob/5e073802a0656e65b1bc8e7e6051831bea0d=
9508/src/protocols/spice/client.c#L236-L375</a></div></div></div></blockquo=
te><div><br></div><div>Try changing the callbacks to accept a pointer, e.g.=
:</div><div><span><span>- void</span> <span>guac_spice_clipboard_selection_=
grab_handler</span>(SpiceMainChannel channel,</span></div><div><span><span>=
<span>+void</span> <span>guac_spice_clipboard_selection_grab_handler</span>=
(SpiceMainChannel* channel,</span></span></div><div class=3D"gmail_quote"><=
br></div></div></div></blockquote><div><br></div><div>-Sigh- I knew it woul=
d be something simple. Yes, this was it - works correctly after using point=
ers.</div><div><br></div><div>Thanks, Uri and Marc.</div><div><br></div><di=
v>-Nick</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">
</blockquote></div></div>
</blockquote></div></div>

--00000000000041c9dc05e1f43be9--
