Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB7915677E0
	for <lists+spice-devel@lfdr.de>; Tue,  5 Jul 2022 21:33:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31E1E8FF34;
	Tue,  5 Jul 2022 19:33:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mxout1-he-de.apache.org (mxout1-he-de.apache.org
 [95.216.194.37])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7C898FE1E
 for <spice-devel@lists.freedesktop.org>; Tue,  5 Jul 2022 19:33:51 +0000 (UTC)
Received: from mail.apache.org (mailroute1-lw-us.apache.org [207.244.88.153])
 by mxout1-he-de.apache.org (ASF Mail Server at
 mxout1-he-de.apache.org) with SMTP id 4A6E05FE34
 for <spice-devel@lists.freedesktop.org>; Tue,  5 Jul 2022 19:33:47 +0000 (UTC)
Received: (qmail 38941 invoked by uid 99); 5 Jul 2022 19:33:46 -0000
Received: from mailrelay1-he-de.apache.org (HELO mailrelay1-he-de.apache.org)
 (116.203.21.61)
 by apache.org (qpsmtpd/0.29) with ESMTP; Tue, 05 Jul 2022 19:33:46 +0000
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com
 [209.85.217.44]) by mailrelay1-he-de.apache.org (ASF Mail Server at
 mailrelay1-he-de.apache.org) with ESMTPSA id A60763F4F7
 for <spice-devel@lists.freedesktop.org>; Tue,  5 Jul 2022 19:33:45 +0000 (UTC)
Received: by mail-vs1-f44.google.com with SMTP id k2so3375580vsc.5
 for <spice-devel@lists.freedesktop.org>; Tue, 05 Jul 2022 12:33:45 -0700 (PDT)
X-Gm-Message-State: AJIora/2DjpURN069S1fxc29rvmQAf3p194r0Fn03Eo8FEAbwSxF6Sjc
 veOd77aRKOzrX3LyYyBiYa7HSz33viigCSeYalQ=
X-Google-Smtp-Source: AGRyM1ukgnWbp+qbGYvT8i/T0f2BBfXHeYlo6ptMO3sfgzfQK20tF9r5yRoAb5RSi1Bn+UWqxh1HQBu+kyVUD5v90ss=
X-Received: by 2002:a05:6102:5789:b0:354:3f0c:7379 with SMTP id
 dh9-20020a056102578900b003543f0c7379mr19640429vsb.20.1657049624440; Tue, 05
 Jul 2022 12:33:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAFjj601s+L1mXUOk4r5p6KshAf5Ae5+6z7MauQ-sUcKuSX-BCA@mail.gmail.com>
In-Reply-To: <CAFjj601s+L1mXUOk4r5p6KshAf5Ae5+6z7MauQ-sUcKuSX-BCA@mail.gmail.com>
From: Nick Couchman <vnick@apache.org>
Date: Tue, 5 Jul 2022 15:33:33 -0400
X-Gmail-Original-Message-ID: <CAFjj602NVft5gTTPTCiwAmDvou=3BUdAiLjwZmPTF9=J8Luwzw@mail.gmail.com>
Message-ID: <CAFjj602NVft5gTTPTCiwAmDvou=3BUdAiLjwZmPTF9=J8Luwzw@mail.gmail.com>
To: spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: multipart/alternative; boundary="0000000000003d78d805e313ee0e"
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

--0000000000003d78d805e313ee0e
Content-Type: text/plain; charset="UTF-8"

On Sun, Jul 3, 2022 at 2:40 PM Nick Couchman <vnick@apache.org> wrote:

> Then, once the clipboard is settled on the client side, I call
> guac_main_channel_clipboard_selection_notify() to send the data along,
> followed by guac_main_channel_clipboard_selection_release() to release the
> previously-called grab:
>
> --
>     /* Send via VNC only if finished connecting */
>     if (spice_client->main_channel != NULL) {
>
> spice_main_channel_clipboard_selection_notify(spice_client->main_channel,
>             VD_AGENT_CLIPBOARD_SELECTION_CLIPBOARD,
>             VD_AGENT_CLIPBOARD_UTF8_TEXT,
>             (const unsigned char*) input,
>             spice_client->clipboard->length);
>
> spice_main_channel_clipboard_selection_release(spice_client->main_channel,
>             VD_AGENT_CLIPBOARD_SELECTION_CLIPBOARD);
>     }
> --
>
>
To answer my own question, this was the issue - apparently the call to
spice_main_channel_clipboard_selection_release() actually clears the
clipboard. Removing this call allows the clipboard from client (Guacamole)
to Spice server to function properly. I'm not sure if there's anything that
needs to be done to "ungrab" the clipboard after sending the data, or if it
is done automatically?

-Nick

--0000000000003d78d805e313ee0e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Sun, Jul 3, 2022 at 2:40 PM Nick Couch=
man &lt;<a href=3D"mailto:vnick@apache.org">vnick@apache.org</a>&gt; wrote:=
<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr"><div>Then, once the clipboard is settled on th=
e client side, I call guac_main_channel_clipboard_selection_notify() to sen=
d the data along, followed by guac_main_channel_clipboard_selection_release=
() to release the previously-called grab:<br></div><div><br></div><div>--</=
div><div>=C2=A0 =C2=A0 /* Send via VNC only if finished connecting */<br>=
=C2=A0 =C2=A0 if (spice_client-&gt;main_channel !=3D NULL) {<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 spice_main_channel_clipboard_selection_notify(spice_clien=
t-&gt;main_channel,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 VD_AGENT_C=
LIPBOARD_SELECTION_CLIPBOARD,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
VD_AGENT_CLIPBOARD_UTF8_TEXT,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
(const unsigned char*) input,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
spice_client-&gt;clipboard-&gt;length);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 spic=
e_main_channel_clipboard_selection_release(spice_client-&gt;main_channel,<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 VD_AGENT_CLIPBOARD_SELECTION_CL=
IPBOARD);<br>=C2=A0 =C2=A0 }<br></div><div>--</div><div><br></div></div></b=
lockquote><div><br></div><div>To answer my own question, this was the issue=
 - apparently the call to spice_main_channel_clipboard_selection_release() =
actually clears the clipboard. Removing this call allows the clipboard from=
 client (Guacamole) to Spice server to function properly. I&#39;m not sure =
if there&#39;s anything that needs to be done to &quot;ungrab&quot; the cli=
pboard after sending the data, or if it is done automatically?</div><div><b=
r></div><div>-Nick</div></div></div>

--0000000000003d78d805e313ee0e--
