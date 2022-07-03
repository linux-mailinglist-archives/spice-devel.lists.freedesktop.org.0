Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5138D565AD0
	for <lists+spice-devel@lfdr.de>; Mon,  4 Jul 2022 18:16:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37A0D10E4BB;
	Mon,  4 Jul 2022 16:14:34 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mxout1-he-de.apache.org (mxout1-he-de.apache.org
 [95.216.194.37])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E512910E103
 for <spice-devel@lists.freedesktop.org>; Sun,  3 Jul 2022 18:40:57 +0000 (UTC)
Received: from mail.apache.org (mailroute1-lw-us.apache.org [207.244.88.153])
 by mxout1-he-de.apache.org (ASF Mail Server at
 mxout1-he-de.apache.org) with SMTP id 41A675FE01
 for <spice-devel@lists.freedesktop.org>; Sun,  3 Jul 2022 18:40:55 +0000 (UTC)
Received: (qmail 48985 invoked by uid 99); 3 Jul 2022 18:40:54 -0000
Received: from mailrelay1-he-de.apache.org (HELO mailrelay1-he-de.apache.org)
 (116.203.21.61)
 by apache.org (qpsmtpd/0.29) with ESMTP; Sun, 03 Jul 2022 18:40:54 +0000
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com
 [209.85.217.54]) by mailrelay1-he-de.apache.org (ASF Mail Server at
 mailrelay1-he-de.apache.org) with ESMTPSA id AA38E3F4F7
 for <spice-devel@lists.freedesktop.org>; Sun,  3 Jul 2022 18:40:53 +0000 (UTC)
Received: by mail-vs1-f54.google.com with SMTP id k25so7134146vso.6
 for <spice-devel@lists.freedesktop.org>; Sun, 03 Jul 2022 11:40:53 -0700 (PDT)
X-Gm-Message-State: AJIora+i6ViW2X1aJD2cbmJ1784fvmNIAMIs98YJfWSQCGQ3tFeEcPVe
 nr2EZeQpW3+O3wR1UZB22lUX1m8ZITASwMmJHUo=
X-Google-Smtp-Source: AGRyM1uQcK2t5fK/CD5DZDQ4p4LmIVu+cpHYLc8iylrTXcFJuxNzWydxBgIjIVX3eXix3t/wJ26ZjcAHCHOw7nUnd7w=
X-Received: by 2002:a05:6102:5789:b0:354:3f0c:7379 with SMTP id
 dh9-20020a056102578900b003543f0c7379mr14432783vsb.20.1656873652423; Sun, 03
 Jul 2022 11:40:52 -0700 (PDT)
MIME-Version: 1.0
From: Nick Couchman <vnick@apache.org>
Date: Sun, 3 Jul 2022 14:40:41 -0400
X-Gmail-Original-Message-ID: <CAFjj601s+L1mXUOk4r5p6KshAf5Ae5+6z7MauQ-sUcKuSX-BCA@mail.gmail.com>
Message-ID: <CAFjj601s+L1mXUOk4r5p6KshAf5Ae5+6z7MauQ-sUcKuSX-BCA@mail.gmail.com>
To: spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: multipart/alternative; boundary="0000000000007d917605e2eaf581"
Subject: [Spice-devel] Spice, VDAgent, and Clipboard
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

--0000000000007d917605e2eaf581
Content-Type: text/plain; charset="UTF-8"

I'm back with my next question regarding clipboard integration with Spice
(and vdagent). For Guacamole, I've managed to get the Spice callbacks
working to the point where data copied within the guest is available to the
Guacamole Client. Now I'm trying to get it to work the other way around,
where data copied on the client side is sent through to the Spice server,
more specifically to vdagent running within the Spice session.

As a quick recap, I'm running CentOS Stream 8, and using the Xspice script
to launch a Spice server (xorg spice qxl) that I can use for developing
Guacamole's Spice protocol support. Within this X session I'm running the
Xfce window/session manager, and I'm launching both spice-vdagentd and
spice-vdagent within this session to get support for things like clipboard
synchronization.

While the outbound (Spice -> Client) clipboard works fine, something is not
working correctly getting the clipboard data to go the other direction
(Client -> Spice).The code is here:

https://github.com/necouchman/guacamole-server/tree/working/spice-basic/src/protocols/spice

with the clipboard-specific functions, here:

https://github.com/necouchman/guacamole-server/blob/working/spice-basic/src/protocols/spice/channels/clipboard.c

Essentially what I'm doing when clipboard data is available on the client
side is calling the spice_main_channel_clipboard_selection_grab() function
to let the Spice server/vdagent know that clipboard data is available:

--
    guac_client_log(user->client, GUAC_LOG_DEBUG, "Calling SPICE clipboard
handler for MIME type: %s", mimetype);
    guac_common_clipboard_reset(spice_client->clipboard, mimetype);
    guint32 clipboard_types[] = { VD_AGENT_CLIPBOARD_UTF8_TEXT };
    spice_main_channel_clipboard_selection_grab(spice_client->main_channel,
VD_AGENT_CLIPBOARD_SELECTION_CLIPBOARD, clipboard_types, 1);
--

Then, once the clipboard is settled on the client side, I call
guac_main_channel_clipboard_selection_notify() to send the data along,
followed by guac_main_channel_clipboard_selection_release() to release the
previously-called grab:

--
    /* Send via VNC only if finished connecting */
    if (spice_client->main_channel != NULL) {

spice_main_channel_clipboard_selection_notify(spice_client->main_channel,
            VD_AGENT_CLIPBOARD_SELECTION_CLIPBOARD,
            VD_AGENT_CLIPBOARD_UTF8_TEXT,
            (const unsigned char*) input,
            spice_client->clipboard->length);

spice_main_channel_clipboard_selection_release(spice_client->main_channel,
            VD_AGENT_CLIPBOARD_SELECTION_CLIPBOARD);
    }
--

In the vdagent debug logs, I see the following:

spice-vdagentd: 0x55d56f3455e0 sent clipboard grab, arg1: 0, arg2: 0, size 4
spice-vdagentd: 0x55d56f3455e0 sent clipboard data, arg1: 0, arg2: 1, size
14
spice-vdagentd: 0x55d56f3455e0 sent clipboard release, arg1: 0, arg2: 0,
size 0

The problem is that the clipboard within my window manager (Xfce) never
receives this data - if I try to paste what I've copied on the client-side
in a Notepad or Terminal application within the Spice session, it's
completely empty.

Anything obviously wrong with this approach that anyone can spot, or any
hints as to where to look next?

Thanks,
Nick

--0000000000007d917605e2eaf581
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m back with my next question regarding clipboard int=
egration with Spice (and vdagent). For Guacamole, I&#39;ve managed to get t=
he Spice callbacks working to the point where data copied within the guest =
is available to the Guacamole Client. Now I&#39;m trying to get it to work =
the other way around, where data copied on the client side is sent through =
to the Spice server, more specifically to vdagent running within the Spice =
session.<div><br></div><div>As a quick recap, I&#39;m running CentOS Stream=
 8, and using the Xspice script to launch a Spice server (xorg spice qxl) t=
hat I can use for developing Guacamole&#39;s Spice protocol support. Within=
 this X session I&#39;m running the Xfce window/session manager, and I&#39;=
m launching both spice-vdagentd and spice-vdagent within this session to ge=
t support for things like clipboard synchronization.</div><div><br></div><d=
iv>While the outbound (Spice -&gt; Client) clipboard works fine, something =
is not working correctly getting the clipboard data to go the other directi=
on (Client -&gt; Spice).The code is here:<br><br></div><div><a href=3D"http=
s://github.com/necouchman/guacamole-server/tree/working/spice-basic/src/pro=
tocols/spice">https://github.com/necouchman/guacamole-server/tree/working/s=
pice-basic/src/protocols/spice</a><br></div><div><br></div><div>with the cl=
ipboard-specific functions, here:</div><div><br></div><div><a href=3D"https=
://github.com/necouchman/guacamole-server/blob/working/spice-basic/src/prot=
ocols/spice/channels/clipboard.c">https://github.com/necouchman/guacamole-s=
erver/blob/working/spice-basic/src/protocols/spice/channels/clipboard.c</a>=
<br></div><div><br></div><div>Essentially what I&#39;m doing when clipboard=
 data is available on the client side is calling the spice_main_channel_cli=
pboard_selection_grab() function to let the Spice server/vdagent know that =
clipboard data is available:</div><div><br></div><div>--</div><div>=C2=A0 =
=C2=A0 guac_client_log(user-&gt;client, GUAC_LOG_DEBUG, &quot;Calling SPICE=
 clipboard handler for MIME type: %s&quot;, mimetype);<br>=C2=A0 =C2=A0 gua=
c_common_clipboard_reset(spice_client-&gt;clipboard, mimetype);<br>=C2=A0 =
=C2=A0 guint32 clipboard_types[] =3D { VD_AGENT_CLIPBOARD_UTF8_TEXT };<br>=
=C2=A0 =C2=A0 spice_main_channel_clipboard_selection_grab(spice_client-&gt;=
main_channel, VD_AGENT_CLIPBOARD_SELECTION_CLIPBOARD, clipboard_types, 1);<=
br></div><div>--</div><div><br></div><div>Then, once the clipboard is settl=
ed on the client side, I call guac_main_channel_clipboard_selection_notify(=
) to send the data along, followed by guac_main_channel_clipboard_selection=
_release() to release the previously-called grab:</div><div><br></div><div>=
--</div><div>=C2=A0 =C2=A0 /* Send via VNC only if finished connecting */<b=
r>=C2=A0 =C2=A0 if (spice_client-&gt;main_channel !=3D NULL) {<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 spice_main_channel_clipboard_selection_notify(spice_cl=
ient-&gt;main_channel,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 VD_AGEN=
T_CLIPBOARD_SELECTION_CLIPBOARD,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 VD_AGENT_CLIPBOARD_UTF8_TEXT,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 (const unsigned char*) input,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 spice_client-&gt;clipboard-&gt;length);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
spice_main_channel_clipboard_selection_release(spice_client-&gt;main_channe=
l,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 VD_AGENT_CLIPBOARD_SELECTIO=
N_CLIPBOARD);<br>=C2=A0 =C2=A0 }<br></div><div>--</div><div><br></div><div>=
In the vdagent debug logs, I see the following:</div><div><br></div><div>sp=
ice-vdagentd: 0x55d56f3455e0 sent clipboard grab, arg1: 0, arg2: 0, size 4<=
br>spice-vdagentd: 0x55d56f3455e0 sent clipboard data, arg1: 0, arg2: 1, si=
ze 14<br>spice-vdagentd: 0x55d56f3455e0 sent clipboard release, arg1: 0, ar=
g2: 0, size 0<br></div><div><br></div><div>The problem is that the clipboar=
d within my window manager (Xfce) never receives this data - if I try to pa=
ste what I&#39;ve copied on the client-side in a Notepad or Terminal applic=
ation within the Spice session, it&#39;s completely empty.</div><div><br></=
div><div>Anything obviously wrong with this approach that anyone can spot, =
or any hints as to where to look next?</div><div><br></div><div>Thanks,</di=
v><div>Nick</div><div><br></div></div>

--0000000000007d917605e2eaf581--
