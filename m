Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D8817F687
	for <lists+spice-devel@lfdr.de>; Tue, 10 Mar 2020 12:42:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C4066E1A2;
	Tue, 10 Mar 2020 11:42:32 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F7D989A1F
 for <spice-devel@lists.freedesktop.org>; Tue, 10 Mar 2020 11:42:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1583840549;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=QR/xIdUOU6XMShhqqVEvkAhBncgrJ/hYzPLqlnH/aE8=;
 b=PHgxDNmMjC5GBUTANM8o2jD/QbI2S8hmsFSObaX6/jQaxnDP9wcDN3N5x/CXv5s7rUJB/H
 lcB8SZiL0jIvwfZnBOG6g209MwhbHqgYzsnYmf2RIUCrhDzz6WFbqzp6XXbC3VCa5vW12T
 ORX5iPqp5nH18kjLZoHpzQydzVKA9nk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-98-XFmsbqSjPnyU0i8H5W_HIg-1; Tue, 10 Mar 2020 07:42:22 -0400
X-MC-Unique: XFmsbqSjPnyU0i8H5W_HIg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 68C9E800EBD;
 Tue, 10 Mar 2020 11:42:21 +0000 (UTC)
Received: from localhost (ovpn-117-203.ams2.redhat.com [10.36.117.203])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 706EE60C05;
 Tue, 10 Mar 2020 11:42:20 +0000 (UTC)
Date: Tue, 10 Mar 2020 12:42:19 +0100
From: Victor Toso <victortoso@redhat.com>
To: Armin Ranjbar <zoup@zoup.org>
Message-ID: <20200310114219.uvjvtyswvbuyxiwa@wingsuit>
References: <CAOvx4-1eG6nmiAdyb+xObGj921iCq-DT0FQRPUX_Uj175OYpkA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAOvx4-1eG6nmiAdyb+xObGj921iCq-DT0FQRPUX_Uj175OYpkA@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] USB Redirection doesn't work on Windows 10
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
Cc: Spice List <Spice-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============1765674905=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1765674905==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6x7btpji46wsa2u5"
Content-Disposition: inline

--6x7btpji46wsa2u5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Mar 06, 2020 at 10:43:41PM +0330, Armin Ranjbar wrote:
> Hello,
>=20
> When attempting to attach a USB device to windows, remote-viewer reports:
> USB Redirection error: Could not redirect Transcend information, INC,
> JetFlash, Could not open usb device: Operation not supported or implement=
ed
> on this platform [-12]
>=20
> the full debug log is also attached:
> ii  libspice-client-glib-2.0-8:amd64     0.37-1
>  amd64        GObject for communicating with Spice servers (runtime libra=
ry)
> ii  libspice-client-gtk-3.0-5:amd64      0.37-1
>  amd64        GTK3 widget for SPICE clients (runtime library)
> ii  libspice-server1:amd64               0.14.2-4
>  amd64        Implements the server side of the SPICE protocol
> ii  qemu-system-x86                      1:4.2-3
> amd64        QEMU full system emulation binaries (x86)
>=20
> Virt-viewer is version 8 for windows. oddly enough same version of
> virt-viewer is working fine under a client client.

Just to let you know that there is a bug filed for it in case you
want to follow it

    https://gitlab.freedesktop.org/spice/spice-gtk/issues/104

> ---
> Armin ranjbar

> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:09.266: ../../src/spice-ses=
sion.c:280 New session (compiled from package spice-gtk 0.35)
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:09.266: ../../src/spice-ses=
sion.c:284 Supported channels: main, display, inputs, cursor, playback, rec=
ord, usbredir
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:09.548: ../../src/usbdk_api=
.c:62 UsbDk driver is installed.
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:09.548: ../../src/usbdk_api=
.c:86 Loading UsbDk API DLL
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:09.548: ../../src/usb-devic=
e-manager.c:504 auto-connect filter set to 0x03,-1,-1,-1,0|-1,-1,-1,-1,1
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:09.548: ../../src/usb-devic=
e-manager.c:1964 Auto-connect disabled, no hider setup needed
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:09.583: ../../src/usb-devic=
e-manager.c:967 device added 8564:1000 (00000000049272F0)
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:09.583: ../../src/usb-devic=
e-manager.c:967 device added 8087:0a2b (0000000004926E50)
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:09.583: ../../src/spice-ses=
sion.c:1765 no migration in progress
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:09.583: ../../src/spice-cha=
nnel.c:141 main-1:0: spice_channel_constructed
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:09.583: ../../src/spice-ses=
sion.c:2268 main-1:0: new main channel, switching
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:09.985: ../../src/spice-cha=
nnel.c:2693 main-1:0: Open coroutine starting 000000000496EB10
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:09.985: ../../src/spice-cha=
nnel.c:2534 main-1:0: Started background coroutine 000000000496E9B8
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:09.985: ../../src/spice-ses=
sion.c:2216 main-1:0: Using plain text, port 5900
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:09.985: ../../src/spice-ses=
sion.c:2147 open host HOSTADDRESS:5900
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:09.985: ../../src/spice-ses=
sion.c:2069 main-1:0: connecting 000000000A87FDE0...
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:10.204: ../../src/spice-ses=
sion.c:2053 main-1:0: connect ready
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:10.204: ../../src/spice-cha=
nnel.c:1368 main-1:0: channel type 1 id 0 num common caps 1 num caps 1
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:10.464: ../../src/spice-cha=
nnel.c:1392 main-1:0: Peer version: 2:2
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:10.464: ../../src/spice-cha=
nnel.c:1948 main-1:0: spice_channel_recv_link_msg: 2 caps
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:10.464: ../../src/spice-cha=
nnel.c:1954 main-1:0: got remote common caps:
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:10.464: ../../src/spice-cha=
nnel.c:1903 =090:0xB
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:10.464: ../../src/spice-cha=
nnel.c:1958 main-1:0: got remote channel caps:
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:10.464: ../../src/spice-cha=
nnel.c:1903 =090:0x9
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:10.464: ../../src/spice-cha=
nnel.c:2918 test cap 0 in 0xB: yes
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:10.464: ../../src/spice-cha=
nnel.c:2918 test cap 1 in 0xB: yes
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:11.570: ../../src/spice-cha=
nnel.c:2918 test cap 3 in 0xB: yes
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:11.570: ../../src/spice-cha=
nnel.c:1990 main-1:0: use mini header: 1
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:11.832: ../../src/spice-cha=
nnel.c:1296 main-1:0: channel up, state 3
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:11.832: ../../src/spice-ses=
sion.c:2377 set mm time: 1520718362
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:11.832: ../../src/spice-ses=
sion.c:2380 spice_session_set_mm_time: mm-time-reset, old 3868711, new 1520=
718362
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:11.832: ../../src/channel-m=
ain.c:1552 agent connected: yes
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:11.833: ../../src/channel-m=
ain.c:1694 server name: armin2_1
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:11.833: ../../src/channel-m=
ain.c:1705 server uuid: 8c35aeb4-8121-48a8-867a-b6eef6b367bc
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.582: ../../src/channel-m=
ain.c:2008 main_agent_handle_msg: cap: 0 (mouse state)
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.582: ../../src/channel-m=
ain.c:2008 main_agent_handle_msg: cap: 1 (monitors config)
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.582: ../../src/channel-m=
ain.c:2008 main_agent_handle_msg: cap: 2 (reply)
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.582: ../../src/channel-m=
ain.c:2008 main_agent_handle_msg: cap: 4 (display config)
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.582: ../../src/channel-m=
ain.c:2008 main_agent_handle_msg: cap: 5 (clipboard)
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.582: ../../src/channel-m=
ain.c:2008 main_agent_handle_msg: cap: 7 (sparse monitors)
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.582: ../../src/channel-m=
ain.c:2008 main_agent_handle_msg: cap: 9 (line-end crlf)
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.582: ../../src/channel-m=
ain.c:2008 main_agent_handle_msg: cap: 10 (max-clipboard)
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.582: ../../src/spice-cha=
nnel.c:141 usbredir-9:3: spice_channel_constructed
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.582: ../../src/spice-cha=
nnel.c:141 usbredir-9:2: spice_channel_constructed
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.582: ../../src/spice-cha=
nnel.c:141 usbredir-9:1: spice_channel_constructed
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.582: ../../src/spice-cha=
nnel.c:141 usbredir-9:0: spice_channel_constructed
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.582: ../../src/spice-cha=
nnel.c:141 playback-5:0: spice_channel_constructed
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.598: ../../src/channel-d=
isplay.c:864 GStreamer does not support the mjpeg codec
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.598: ../../src/channel-d=
isplay.c:864 GStreamer does not support the vp8 codec
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.598: ../../src/channel-d=
isplay.c:864 GStreamer does not support the h264 codec
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.598: ../../src/channel-d=
isplay.c:864 GStreamer does not support the vp9 codec
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.598: ../../src/spice-cha=
nnel.c:141 display-2:0: spice_channel_constructed
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.598: ../../src/spice-cha=
nnel.c:141 cursor-4:0: spice_channel_constructed
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.598: ../../src/spice-cha=
nnel.c:141 inputs-3:0: spice_channel_constructed
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.598: ../../src/channel-m=
ain.c:1310 main-1:0: display_config: flags: 0, depth: 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.598: ../../src/channel-m=
ain.c:1220 agent_sync_audio_playback - is not going to sync audio with gues=
t
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.598: ../../src/channel-m=
ain.c:1276 agent_sync_audio_record - is not going to sync audio with guest
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.598: ../../src/channel-m=
ain.c:1507 Not sending monitors config, at least one monitor must have dime=
nsions
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.613: ../../src/spice-cha=
nnel.c:2693 usbredir-9:3: Open coroutine starting 0000000007ACFED0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.613: ../../src/spice-cha=
nnel.c:2534 usbredir-9:3: Started background coroutine 0000000007ACFD78
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.613: ../../src/spice-ses=
sion.c:2216 usbredir-9:3: Using plain text, port 5900
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.613: ../../src/spice-cha=
nnel.c:2693 usbredir-9:2: Open coroutine starting 0000000007ACE4B0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.613: ../../src/spice-cha=
nnel.c:2534 usbredir-9:2: Started background coroutine 0000000007ACE358
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.613: ../../src/spice-ses=
sion.c:2216 usbredir-9:2: Using plain text, port 5900
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.613: ../../src/spice-cha=
nnel.c:2693 usbredir-9:1: Open coroutine starting 0000000007AE3900
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.613: ../../src/spice-cha=
nnel.c:2534 usbredir-9:1: Started background coroutine 0000000007AE37A8
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.613: ../../src/spice-ses=
sion.c:2216 usbredir-9:1: Using plain text, port 5900
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.613: ../../src/spice-cha=
nnel.c:2693 usbredir-9:0: Open coroutine starting 0000000007AE3B30
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.613: ../../src/spice-cha=
nnel.c:2534 usbredir-9:0: Started background coroutine 0000000007AE39D8
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.613: ../../src/spice-ses=
sion.c:2216 usbredir-9:0: Using plain text, port 5900
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.613: ../../src/spice-cha=
nnel.c:2693 playback-5:0: Open coroutine starting 00000000049656A0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.613: ../../src/spice-cha=
nnel.c:2534 playback-5:0: Started background coroutine 0000000004965548
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.613: ../../src/spice-ses=
sion.c:2216 playback-5:0: Using plain text, port 5900
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.613: ../../src/spice-cha=
nnel.c:2693 display-2:0: Open coroutine starting 000000000198D980
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.613: ../../src/spice-cha=
nnel.c:2534 display-2:0: Started background coroutine 000000000198D828
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.613: ../../src/spice-ses=
sion.c:2216 display-2:0: Using plain text, port 5900
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.613: ../../src/spice-ses=
sion.c:2147 open host HOSTADDRESS:5900
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.613: ../../src/spice-ses=
sion.c:2069 usbredir-9:3: connecting 000000000ABBFDE0...
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.613: ../../src/spice-ses=
sion.c:2147 open host HOSTADDRESS:5900
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.613: ../../src/spice-ses=
sion.c:2069 usbredir-9:2: connecting 000000000ADBFDE0...
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.613: ../../src/spice-ses=
sion.c:2147 open host HOSTADDRESS:5900
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.613: ../../src/spice-ses=
sion.c:2069 usbredir-9:1: connecting 000000000AFBFDE0...
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.613: ../../src/spice-ses=
sion.c:2147 open host HOSTADDRESS:5900
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.613: ../../src/spice-ses=
sion.c:2069 usbredir-9:0: connecting 000000000B1BFDE0...
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.613: ../../src/spice-ses=
sion.c:2147 open host HOSTADDRESS:5900
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.613: ../../src/spice-ses=
sion.c:2069 playback-5:0: connecting 000000000B3BFDE0...
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.613: ../../src/spice-ses=
sion.c:2147 open host HOSTADDRESS:5900
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.613: ../../src/spice-ses=
sion.c:2069 display-2:0: connecting 000000000B6BFDE0...
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.835: ../../src/spice-ses=
sion.c:2053 usbredir-9:3: connect ready
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.835: ../../src/spice-cha=
nnel.c:1368 usbredir-9:3: channel type 9 id 3 num common caps 1 num caps 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.835: ../../src/spice-ses=
sion.c:2053 usbredir-9:1: connect ready
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.835: ../../src/spice-cha=
nnel.c:1368 usbredir-9:1: channel type 9 id 1 num common caps 1 num caps 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.835: ../../src/spice-ses=
sion.c:2053 usbredir-9:2: connect ready
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.835: ../../src/spice-cha=
nnel.c:1368 usbredir-9:2: channel type 9 id 2 num common caps 1 num caps 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.835: ../../src/spice-ses=
sion.c:2053 playback-5:0: connect ready
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.835: ../../src/spice-cha=
nnel.c:1368 playback-5:0: channel type 5 id 0 num common caps 1 num caps 1
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.835: ../../src/spice-ses=
sion.c:2053 usbredir-9:0: connect ready
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.835: ../../src/spice-cha=
nnel.c:1368 usbredir-9:0: channel type 9 id 0 num common caps 1 num caps 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.835: ../../src/spice-ses=
sion.c:2053 display-2:0: connect ready
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.835: ../../src/spice-cha=
nnel.c:1368 display-2:0: channel type 2 id 0 num common caps 1 num caps 1
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:13.835: ../../src/channel-m=
ain.c:2078 main_agent_handle_msg: reply: type 5, success
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.070: ../../src/spice-cha=
nnel.c:1392 usbredir-9:3: Peer version: 2:2
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.070: ../../src/spice-cha=
nnel.c:1948 usbredir-9:3: spice_channel_recv_link_msg: 2 caps
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.070: ../../src/spice-cha=
nnel.c:1954 usbredir-9:3: got remote common caps:
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.070: ../../src/spice-cha=
nnel.c:1903 =090:0xB
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.070: ../../src/spice-cha=
nnel.c:1958 usbredir-9:3: got remote channel caps:
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.070: ../../src/spice-cha=
nnel.c:1903 =090:0x1
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.070: ../../src/spice-cha=
nnel.c:2918 test cap 0 in 0xB: yes
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.070: ../../src/spice-cha=
nnel.c:2918 test cap 1 in 0xB: yes
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.070: ../../src/spice-cha=
nnel.c:2918 test cap 3 in 0xB: yes
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.070: ../../src/spice-cha=
nnel.c:1990 usbredir-9:3: use mini header: 1
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.101: ../../src/spice-cha=
nnel.c:1392 usbredir-9:2: Peer version: 2:2
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.101: ../../src/spice-cha=
nnel.c:1948 usbredir-9:2: spice_channel_recv_link_msg: 2 caps
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.101: ../../src/spice-cha=
nnel.c:1954 usbredir-9:2: got remote common caps:
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.101: ../../src/spice-cha=
nnel.c:1903 =090:0xB
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.101: ../../src/spice-cha=
nnel.c:1958 usbredir-9:2: got remote channel caps:
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.101: ../../src/spice-cha=
nnel.c:1903 =090:0x1
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.101: ../../src/spice-cha=
nnel.c:2918 test cap 0 in 0xB: yes
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.101: ../../src/spice-cha=
nnel.c:2918 test cap 1 in 0xB: yes
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.101: ../../src/spice-cha=
nnel.c:2918 test cap 3 in 0xB: yes
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.101: ../../src/spice-cha=
nnel.c:1990 usbredir-9:2: use mini header: 1
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.132: ../../src/spice-cha=
nnel.c:1392 playback-5:0: Peer version: 2:2
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.132: ../../src/spice-cha=
nnel.c:1948 playback-5:0: spice_channel_recv_link_msg: 2 caps
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.132: ../../src/spice-cha=
nnel.c:1954 playback-5:0: got remote common caps:
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.132: ../../src/spice-cha=
nnel.c:1903 =090:0xB
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.132: ../../src/spice-cha=
nnel.c:1958 playback-5:0: got remote channel caps:
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.132: ../../src/spice-cha=
nnel.c:1903 =090:0xA
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.132: ../../src/spice-cha=
nnel.c:2918 test cap 0 in 0xB: yes
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.132: ../../src/spice-cha=
nnel.c:2918 test cap 1 in 0xB: yes
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.132: ../../src/spice-cha=
nnel.c:2918 test cap 3 in 0xB: yes
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.148: ../../src/spice-cha=
nnel.c:1990 playback-5:0: use mini header: 1
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.148: ../../src/spice-cha=
nnel.c:1392 usbredir-9:0: Peer version: 2:2
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.148: ../../src/spice-cha=
nnel.c:1948 usbredir-9:0: spice_channel_recv_link_msg: 2 caps
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.148: ../../src/spice-cha=
nnel.c:1954 usbredir-9:0: got remote common caps:
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.148: ../../src/spice-cha=
nnel.c:1903 =090:0xB
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.148: ../../src/spice-cha=
nnel.c:1958 usbredir-9:0: got remote channel caps:
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.148: ../../src/spice-cha=
nnel.c:1903 =090:0x1
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.148: ../../src/spice-cha=
nnel.c:2918 test cap 0 in 0xB: yes
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.148: ../../src/spice-cha=
nnel.c:2918 test cap 1 in 0xB: yes
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.148: ../../src/spice-cha=
nnel.c:2918 test cap 3 in 0xB: yes
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.148: ../../src/spice-cha=
nnel.c:1990 usbredir-9:0: use mini header: 1
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.163: ../../src/spice-cha=
nnel.c:1392 usbredir-9:1: Peer version: 2:2
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.163: ../../src/spice-cha=
nnel.c:1948 usbredir-9:1: spice_channel_recv_link_msg: 2 caps
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.163: ../../src/spice-cha=
nnel.c:1954 usbredir-9:1: got remote common caps:
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.163: ../../src/spice-cha=
nnel.c:1903 =090:0xB
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.163: ../../src/spice-cha=
nnel.c:1958 usbredir-9:1: got remote channel caps:
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.163: ../../src/spice-cha=
nnel.c:1903 =090:0x1
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.163: ../../src/spice-cha=
nnel.c:2918 test cap 0 in 0xB: yes
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.163: ../../src/spice-cha=
nnel.c:2918 test cap 1 in 0xB: yes
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.163: ../../src/spice-cha=
nnel.c:2918 test cap 3 in 0xB: yes
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.163: ../../src/spice-cha=
nnel.c:1990 usbredir-9:1: use mini header: 1
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.198: ../../src/spice-cha=
nnel.c:1392 display-2:0: Peer version: 2:2
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.199: ../../src/spice-cha=
nnel.c:1948 display-2:0: spice_channel_recv_link_msg: 2 caps
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.199: ../../src/spice-cha=
nnel.c:1954 display-2:0: got remote common caps:
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.199: ../../src/spice-cha=
nnel.c:1903 =090:0xB
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.199: ../../src/spice-cha=
nnel.c:1958 display-2:0: got remote channel caps:
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.199: ../../src/spice-cha=
nnel.c:1903 =090:0x1052
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.199: ../../src/spice-cha=
nnel.c:2918 test cap 0 in 0xB: yes
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.199: ../../src/spice-cha=
nnel.c:2918 test cap 1 in 0xB: yes
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.200: ../../src/spice-cha=
nnel.c:2918 test cap 3 in 0xB: yes
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.200: ../../src/spice-cha=
nnel.c:1990 display-2:0: use mini header: 1
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.327: ../../src/spice-cha=
nnel.c:1296 usbredir-9:3: channel up, state 3
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.327: ../../src/channel-u=
sbredir.c:629 usbredir-9:3: usbredirparser: Peer version: qemu usb-redir gu=
est 4.2.0, using 64-bits ids
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.438: ../../src/spice-cha=
nnel.c:1296 usbredir-9:2: channel up, state 3
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.438: ../../src/channel-u=
sbredir.c:629 usbredir-9:2: usbredirparser: Peer version: qemu usb-redir gu=
est 4.2.0, using 64-bits ids
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.438: ../../src/spice-cha=
nnel.c:1296 playback-5:0: channel up, state 3
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.438: ../../src/spice-cha=
nnel.c:1296 usbredir-9:0: channel up, state 3
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.438: ../../src/channel-u=
sbredir.c:629 usbredir-9:0: usbredirparser: Peer version: qemu usb-redir gu=
est 4.2.0, using 64-bits ids
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.438: ../../src/spice-cha=
nnel.c:1296 usbredir-9:1: channel up, state 3
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.438: ../../src/spice-cha=
nnel.c:1296 display-2:0: channel up, state 3
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.438: ../../src/channel-d=
isplay.c:1040 display-2:0: spice_display_channel_up: cache_size 83886080, g=
lz_window_size 25161728 (bytes)
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.438: ../../src/channel-u=
sbredir.c:629 usbredir-9:1: usbredirparser: Peer version: qemu usb-redir gu=
est 4.2.0, using 64-bits ids
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.438: ../../src/spice-cha=
nnel.c:2693 inputs-3:0: Open coroutine starting 0000000007BB2340
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.438: ../../src/spice-cha=
nnel.c:2534 inputs-3:0: Started background coroutine 0000000007BB21E8
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.438: ../../src/spice-ses=
sion.c:2216 inputs-3:0: Using plain text, port 5900
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.438: ../../src/spice-cha=
nnel.c:2693 cursor-4:0: Open coroutine starting 0000000007BAF3D0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.438: ../../src/spice-cha=
nnel.c:2534 cursor-4:0: Started background coroutine 0000000007BAF278
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.438: ../../src/spice-ses=
sion.c:2216 cursor-4:0: Using plain text, port 5900
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.438: ../../src/spice-ses=
sion.c:2147 open host HOSTADDRESS:5900
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.438: ../../src/spice-ses=
sion.c:2069 inputs-3:0: connecting 000000000403FDE0...
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.438: ../../src/spice-ses=
sion.c:2147 open host HOSTADDRESS:5900
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.438: ../../src/spice-ses=
sion.c:2069 cursor-4:0: connecting 000000000B8BFDE0...
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.657: ../../src/spice-ses=
sion.c:2053 inputs-3:0: connect ready
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.657: ../../src/spice-cha=
nnel.c:1368 inputs-3:0: channel type 3 id 0 num common caps 1 num caps 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.657: ../../src/spice-ses=
sion.c:2053 cursor-4:0: connect ready
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.657: ../../src/spice-cha=
nnel.c:1368 cursor-4:0: channel type 4 id 0 num common caps 1 num caps 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.688: ../../src/channel-p=
layback.c:346 playback-5:0: playback_handle_mode: time 1520721415 mode 3 da=
ta 0000000004C6C106 size 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.704: ../../src/channel-d=
isplay.c:1807 surface flags: 1
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.704: ../../src/channel-d=
isplay.c:918 display-2:0: Create primary canvas
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.704: ../../src/spice-cha=
nnel.c:2918 test cap 1 in 0x1052: yes
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.704: ../../src/spice-cha=
nnel.c:2918 test cap 1 in 0x1052: yes
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.889: ../../src/spice-cha=
nnel.c:1392 inputs-3:0: Peer version: 2:2
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.889: ../../src/spice-cha=
nnel.c:1948 inputs-3:0: spice_channel_recv_link_msg: 2 caps
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.889: ../../src/spice-cha=
nnel.c:1954 inputs-3:0: got remote common caps:
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.889: ../../src/spice-cha=
nnel.c:1903 =090:0xB
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.889: ../../src/spice-cha=
nnel.c:1958 inputs-3:0: got remote channel caps:
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.889: ../../src/spice-cha=
nnel.c:1903 =090:0x1
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.889: ../../src/spice-cha=
nnel.c:2918 test cap 0 in 0xB: yes
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.889: ../../src/spice-cha=
nnel.c:2918 test cap 1 in 0xB: yes
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.889: ../../src/spice-cha=
nnel.c:2918 test cap 3 in 0xB: yes
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.889: ../../src/spice-cha=
nnel.c:1990 inputs-3:0: use mini header: 1
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.904: ../../src/spice-cha=
nnel.c:1392 cursor-4:0: Peer version: 2:2
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.904: ../../src/spice-cha=
nnel.c:1948 cursor-4:0: spice_channel_recv_link_msg: 1 caps
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.904: ../../src/spice-cha=
nnel.c:1954 cursor-4:0: got remote common caps:
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.904: ../../src/spice-cha=
nnel.c:1903 =090:0xB
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.904: ../../src/spice-cha=
nnel.c:1958 cursor-4:0: got remote channel caps:
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.904: ../../src/spice-cha=
nnel.c:2918 test cap 0 in 0xB: yes
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.904: ../../src/spice-cha=
nnel.c:2918 test cap 1 in 0xB: yes
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.904: ../../src/spice-cha=
nnel.c:2918 test cap 3 in 0xB: yes
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:14.904: ../../src/spice-cha=
nnel.c:1990 cursor-4:0: use mini header: 1
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:15.109: ../../src/channel-b=
ase.c:81 main-1:0: spice_channel_handle_notify -- warn!!! #0: keyboard chan=
nel is insecure
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:15.109: ../../src/spice-cha=
nnel.c:1296 inputs-3:0: channel up, state 3
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:15.124: ../../src/spice-cha=
nnel.c:1296 cursor-4:0: channel up, state 3
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:15.140: ../../src/channel-c=
ursor.c:387 cursor-4:0: set_cursor: flags 0, size 4096
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:15.140: ../../src/channel-c=
ursor.c:394 cursor-4:0: set_cursor: type alpha(0), 0, 32x32
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:18.048: ../../src/channel-d=
isplay.c:1877 display-2:0: received new monitors config from guest: n: 1/1
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:18.048: ../../src/channel-d=
isplay.c:1897 display-2:0: monitor id: 0, surface id: 0, +0+0-1920x1019
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:18.048: ../../src/channel-d=
isplay.c:1094 display-2:0: display_handle_mark
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:18.830: ../../src/usb-devic=
e-manager.c:1964 Auto-connect disabled, no hider setup needed
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:23.530: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:23.545: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:23.545: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:23.561: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:23.561: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:23.576: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:23.576: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:23.592: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:23.608: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:23.608: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:25.713: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:25.729: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:25.729: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:25.744: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:25.744: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:25.760: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:25.760: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:25.776: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:25.776: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:25.776: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:25.791: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:25.791: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:25.807: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:25.807: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:25.822: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:25.822: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:25.838: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:25.838: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:25.854: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:25.854: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:25.869: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:25.869: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:25.885: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:25.885: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:25.885: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.183: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.199: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.199: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.199: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.215: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.215: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.230: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.230: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.247: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.247: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.263: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.263: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.279: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.279: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.294: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.294: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.294: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.310: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.325: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.325: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.341: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.341: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.357: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.357: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.372: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.372: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.388: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.388: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.403: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.403: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.403: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.425: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.426: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.426: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.442: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.442: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.458: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.458: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.473: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.473: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.489: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.505: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.512: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.528: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.528: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.543: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.543: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.559: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.559: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.575: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.590: ../../src/decode-gl=
z.c:352 decode_header: 1920x1019, id 0, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.621: ../../src/decode-gl=
z.c:352 decode_header: 156x520, id 1, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.621: ../../src/decode-gl=
z.c:352 decode_header: 156x520, id 2, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.621: ../../src/decode-gl=
z.c:352 decode_header: 156x520, id 3, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.621: ../../src/decode-gl=
z.c:352 decode_header: 156x520, id 4, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.621: ../../src/decode-gl=
z.c:352 decode_header: 156x520, id 5, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.732: ../../src/decode-gl=
z.c:352 decode_header: 156x520, id 6, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.748: ../../src/decode-gl=
z.c:352 decode_header: 156x520, id 7, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.779: ../../src/decode-gl=
z.c:352 decode_header: 156x520, id 8, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.794: ../../src/decode-gl=
z.c:352 decode_header: 156x520, id 9, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.810: ../../src/decode-gl=
z.c:352 decode_header: 156x520, id 10, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.841: ../../src/decode-gl=
z.c:352 decode_header: 156x520, id 11, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.873: ../../src/decode-gl=
z.c:352 decode_header: 156x520, id 12, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.888: ../../src/decode-gl=
z.c:352 decode_header: 156x520, id 13, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.919: ../../src/decode-gl=
z.c:352 decode_header: 156x520, id 14, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.935: ../../src/decode-gl=
z.c:352 decode_header: 156x520, id 15, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.966: ../../src/decode-gl=
z.c:352 decode_header: 156x520, id 16, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.966: ../../src/decode-gl=
z.c:96 glz_decoder_window_resize: array resize 16 -> 32
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:26.982: ../../src/decode-gl=
z.c:352 decode_header: 156x520, id 17, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:27.013: ../../src/decode-gl=
z.c:352 decode_header: 156x520, id 18, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:27.044: ../../src/decode-gl=
z.c:352 decode_header: 156x520, id 19, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:27.060: ../../src/decode-gl=
z.c:352 decode_header: 156x520, id 20, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:27.091: ../../src/decode-gl=
z.c:352 decode_header: 156x520, id 21, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:27.107: ../../src/decode-gl=
z.c:352 decode_header: 156x520, id 22, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:27.138: ../../src/decode-gl=
z.c:352 decode_header: 156x520, id 23, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:27.154: ../../src/decode-gl=
z.c:352 decode_header: 156x520, id 24, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:27.185: ../../src/decode-gl=
z.c:352 decode_header: 156x520, id 25, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:27.201: ../../src/decode-gl=
z.c:352 decode_header: 156x520, id 26, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:27.232: ../../src/decode-gl=
z.c:352 decode_header: 156x520, id 27, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:27.303: ../../src/decode-gl=
z.c:352 decode_header: 156x520, id 28, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:27.318: ../../src/decode-gl=
z.c:352 decode_header: 156x520, id 29, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:27.350: ../../src/decode-gl=
z.c:352 decode_header: 156x520, id 30, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:27.365: ../../src/decode-gl=
z.c:352 decode_header: 156x520, id 31, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:27.397: ../../src/decode-gl=
z.c:352 decode_header: 156x520, id 32, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:27.397: ../../src/decode-gl=
z.c:96 glz_decoder_window_resize: array resize 32 -> 64
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:27.412: ../../src/decode-gl=
z.c:352 decode_header: 156x520, id 33, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:27.412: ../../src/decode-gl=
z.c:352 decode_header: 156x520, id 34, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:27.412: ../../src/decode-gl=
z.c:352 decode_header: 156x520, id 35, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:27.412: ../../src/decode-gl=
z.c:352 decode_header: 156x520, id 36, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:27.412: ../../src/decode-gl=
z.c:352 decode_header: 156x520, id 37, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:27.412: ../../src/decode-gl=
z.c:352 decode_header: 156x520, id 38, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:27.443: ../../src/decode-gl=
z.c:352 decode_header: 156x520, id 39, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:27.459: ../../src/decode-gl=
z.c:352 decode_header: 156x520, id 40, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:27.475: ../../src/decode-gl=
z.c:352 decode_header: 156x520, id 41, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:27.490: ../../src/decode-gl=
z.c:352 decode_header: 156x520, id 42, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:27.521: ../../src/decode-gl=
z.c:352 decode_header: 156x520, id 43, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:27.537: ../../src/decode-gl=
z.c:352 decode_header: 156x520, id 44, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:27.553: ../../src/decode-gl=
z.c:352 decode_header: 156x520, id 45, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:29.153: ../../src/usbutil.c=
:238 loading C:\ProgramData\hwdata\usb.ids success: no
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:29.153: ../../src/usbutil.c=
:238 loading C:\Users\Public\Documents\hwdata\usb.ids success: no
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:29.166: ../../src/usbutil.c=
:238 loading C:\Program Files (x86)\Client\share\hwdata\usb.ids success: ye=
s
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:29.183: ../../src/usb-devic=
e-manager.c:1964 Auto-connect disabled, no hider setup needed
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:30.662: ../../src/usb-devic=
e-manager.c:1391 connecting device 00000000049272F0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:30.701: ../../src/channel-u=
sbredir.c:419 usbredir-9:3: connecting device 8564:1000 (00000000049272F0) =
to channel 0000000007ACFED0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:34.999: ../../src/usb-devic=
e-manager.c:1391 connecting device 00000000049272F0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:35.030: ../../src/channel-u=
sbredir.c:419 usbredir-9:3: connecting device 8564:1000 (00000000049272F0) =
to channel 0000000007ACFED0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:37.062: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:37.077: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:37.077: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:37.093: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:37.095: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:37.095: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:37.111: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:37.111: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:37.127: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:37.127: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:37.142: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:37.142: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:37.158: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:37.158: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:37.173: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:37.173: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:37.189: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:37.189: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:37.189: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:37.205: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:37.220: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:37.220: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:37.533: ../../src/decode-gl=
z.c:352 decode_header: 250x52, id 46, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:37.580: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:37.580: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:37.595: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:37.611: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:37.642: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:37.971: ../../src/decode-gl=
z.c:352 decode_header: 963x80, id 47, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:37.971: ../../src/decode-gl=
z.c:352 decode_header: 157x23, id 48, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.002: ../../src/decode-gl=
z.c:352 decode_header: 1139x55, id 49, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.377: ../../src/channel-c=
ursor.c:387 cursor-4:0: set_cursor: flags 0, size 4096
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.377: ../../src/channel-c=
ursor.c:394 cursor-4:0: set_cursor: type alpha(0), 0, 32x32
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.424: ../../src/channel-c=
ursor.c:387 cursor-4:0: set_cursor: flags 0, size 4096
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.424: ../../src/channel-c=
ursor.c:394 cursor-4:0: set_cursor: type alpha(0), 0, 32x32
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.424: ../../src/decode-gl=
z.c:352 decode_header: 963x520, id 50, ref 0
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.470: ../../src/decode-gl=
z.c:352 decode_header: 1123x543, id 51, ref 1
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.564: ../../src/decode-gl=
z.c:352 decode_header: 1139x31, id 52, ref 1
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.580: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.595: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.611: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.627: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.627: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.642: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.642: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.658: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.658: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.674: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.674: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.689: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.689: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.705: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.705: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.721: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.721: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.736: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.736: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.845: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.861: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.861: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.861: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.877: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.877: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.892: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.892: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.908: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.908: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.924: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.924: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.939: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.939: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.955: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.955: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.970: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.970: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.970: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.986: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:38.986: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.002: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.002: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.017: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.017: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.033: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.033: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.049: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.049: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.064: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.064: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.080: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.080: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.080: ../../src/decode-gl=
z.c:352 decode_header: 1428x40, id 53, ref 1
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.080: ../../src/decode-gl=
z.c:352 decode_header: 1139x31, id 54, ref 1
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.111: ../../src/decode-gl=
z.c:352 decode_header: 81x32, id 55, ref 1
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.142: ../../src/decode-gl=
z.c:352 decode_header: 978x22, id 56, ref 1
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.158: ../../src/decode-gl=
z.c:352 decode_header: 1123x543, id 57, ref 1
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.189: ../../src/decode-gl=
z.c:352 decode_header: 1139x55, id 58, ref 1
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.236: ../../src/decode-gl=
z.c:352 decode_header: 18x106, id 59, ref 1
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.252: ../../src/decode-gl=
z.c:352 decode_header: 755x22, id 60, ref 1
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.758: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.758: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.773: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.773: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.789: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.789: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.789: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.805: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.805: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.820: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.820: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.836: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.836: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.867: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.883: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.883: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.898: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.898: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.898: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.914: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.914: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.930: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.930: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.945: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.945: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:39.961: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:40.242: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:40.258: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:40.258: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:40.273: ../../src/channel-i=
nputs.c:375 inputs-3:0: over SPICE_INPUT_MOTION_ACK_BUNCH * 2, dropping
> (remote-viewer.exe:6384): GSpice-DEBUG: 19:00:40.917: ../../src/usb-devic=
e-manager.c:1964 Auto-connect disabled, no hider setup needed

> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel


--6x7btpji46wsa2u5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIyBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl5nfRsACgkQl9kSPeN6
SE86ug/2Psuedg/SNFrFABksDKzYibi/URWxVTeB1N3XycMVm60aVHWb5mvJJTut
DT1kqQ4LQr/glj76z2KWa8Nc+FSzhPwtaEECXbQCOhWZWviAswsfVVUL7mhYwxg3
aCe7qR5KAeqmLq3y3F9rF5+gFzu3Nf6vTnEZS2h7CLeX/hd/xy+24WQX9LvIM2qf
MFF2FEBIKaAOK5YLg2+ds3sgypxfOWqXKu1n8PgLq4LNUUmATrTLulCfa0qDmb1p
A73kItGaKlj1zwUAiZabtYBcDTlK38FYwEKaEDTZNggleC5GDs/kM420JUA0GqVH
8+KqNs40weWJTAXeVZg7WhYMwWx+PsSD+jZTM0PjV01UcMlnxWufDQOCuXWv7hMc
r8LFmtM8qDlZxUrjbEZi7pnuCjIZ9SnVAlC2i4JKYsCZV+Eh2+eFtBGaoBkGFBq9
syt+8LxMzmU85vTZRe0ufi1xZkw/PRq93bUN96dXTYyngInaV319EGHuYHuLsHYf
LCqJSVqbjIj6GgqB3il0SWZ5r2z23CIrVGBLOAMHoAB5Tz03ryA98yYMOiPRVL5e
aRsJfXkY1EjFG1SVB4hJFGmu4zTAn/Ei/im1f+/Sw4PZZKDM3+DfpYqY5U+uZijx
qQpwDMyGozjErHhmBIyVYUHzHF5OHh00uRv0Il7rwQyHqycwrQ==
=Pw4i
-----END PGP SIGNATURE-----

--6x7btpji46wsa2u5--


--===============1765674905==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1765674905==--

