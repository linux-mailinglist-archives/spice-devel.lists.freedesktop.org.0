Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C253306D9A
	for <lists+spice-devel@lfdr.de>; Thu, 28 Jan 2021 07:28:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1E6A6E8E2;
	Thu, 28 Jan 2021 06:28:52 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com
 [IPv6:2607:f8b0:4864:20::d32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C55016E8E2
 for <spice-devel@lists.freedesktop.org>; Thu, 28 Jan 2021 06:28:51 +0000 (UTC)
Received: by mail-io1-xd32.google.com with SMTP id y19so4506871iov.2
 for <spice-devel@lists.freedesktop.org>; Wed, 27 Jan 2021 22:28:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=BWLiY1no4mRKyyOKLDvD2DPnv5dlhRno2b4304ug4EE=;
 b=LD3U08DHaV6PxPmSbYlKoYCgpiLzxZblS5rFU6c+sV7YwMuRD738FGHUGbFZYHm9sE
 DhsV/G1M4NuVthCLPvhicejXdxRpQqqX4Jm/D/1EfCg6AgZjgn+rf+Khwmg8/xtbsFSo
 DjnY/4W/u6Bv6qvOpE8s7BmPpX+x5LVfeU/k4ciAmwhXEVodKSI4gjd55z61VPXsYdSl
 aywL2oRqkOhryePTux793AJbWWZjNKnzFY+7ZpkbQuM1htKW+903D5RemR3Ej3UaM0PK
 BkIKtIyIlLF7/FlFu9cks4sbLh2Pv1QoI83VyaHbhwehHoUjEK+P3widIZINc8j7tRAP
 WZmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=BWLiY1no4mRKyyOKLDvD2DPnv5dlhRno2b4304ug4EE=;
 b=A8RpY2BaxWd+nkR+kuQO21fozPCFbUHgi+YBrI7o+FyUlHKRcg26/bkYZH07DsEv+H
 a9CLEiFMrzHj9lHhXx6WlACEuxYV8M/CEJKwn3IdoEwxelSONO02ppO6hqg0XZKGqgGd
 VMuM10WRY2X8mtpnqCunIKgB7TMeZ3q0O0TyATL9czM86l7lXygeDisnhTDSMPBoiD2K
 9xxIlgRv3M9rvRP7F3bzZ7dpRfq3r07+p44/c2DjIncecPuibnkwyTtGOB33cLTJ1G/f
 salXEzboUosUMxoL+LWrqXcmdrXJWaSHqyOOMPy5uP+YaAnqeBF08InEYqXhOp/4yNoN
 Jqwg==
X-Gm-Message-State: AOAM533U27ni8r5Dgsf2I6nTSUsR2QdH7vq+EXfLbFxdTCTFsQCBFICS
 XVghSgHzLdQLtjKswQCALL+LsWvuic0Tz9Q7zObpJkUbfVk71g==
X-Google-Smtp-Source: ABdhPJzhHZXIUWJ2DDV2U8haWCzqebvFC2kbjo0bvev14Wqz6+pul5a984zvZP/yC0aULxfq6YbQ+5/jveaDiyy54Pw=
X-Received: by 2002:a05:6602:8da:: with SMTP id
 h26mr10107004ioz.154.1611815330798; 
 Wed, 27 Jan 2021 22:28:50 -0800 (PST)
MIME-Version: 1.0
From: lx <lxlenovostar@gmail.com>
Date: Thu, 28 Jan 2021 14:28:40 +0800
Message-ID: <CA+5jrfnNQLRPxJneD_mYA1kB8fio97Doce4ZXe_ZX18hfkQ37A@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
Subject: [Spice-devel] [spice-devel]Sounds abnormal
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
Content-Type: multipart/mixed; boundary="===============0963288354=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0963288354==
Content-Type: multipart/alternative; boundary="0000000000003c62c005b9f00017"

--0000000000003c62c005b9f00017
Content-Type: text/plain; charset="UTF-8"

Hi:
   I play audio in the virtual machine, and the local sound sounds
abnormal. How to debug it ?

Additionally info:
libvirt-5.2.0, qemu-3.1.0, spice-0.14.0, spice-protocol-0.12.15,
usbredir-0.8.0,spice-guest-tools-latest.exe
virtual Machine Viewer 9.0-256

I run the virtViewer in this way:
#############################################################
C:\Program Files\VirtViewer v9.0-256\bin>set G_MESSAGES_DEBUG=all

C:\Program Files\VirtViewer v9.0-256\bin>remote-viewer.exe --spice-debug
#############################################################

The log is:
#############################################################
(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:32.261:
../src/decode-glz.c:349 decode_header: 256x256, id 325, ref 278
(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:32.343:
../src/decode-glz.c:349 decode_header: 256x256, id 326, ref 278
(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:32.402:
../src/decode-glz.c:349 decode_header: 256x256, id 327, ref 278
(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:32.452:
../src/decode-glz.c:349 decode_header: 256x256, id 328, ref 278
(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:32.517:
../src/decode-glz.c:349 decode_header: 256x256, id 329, ref 278
(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:32.560:
../src/spice-gstaudio.c:264 got min latency 0:00:00.600725624, max latency
0:00:01.600725624, live 1
(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:32.562:
../src/channel-playback.c:462 playback-5:0: playback set_delay 600 ms
(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:32.565:
../src/spice-session.c:2413 set mm time: 1220884055
(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:33.560:
../src/spice-gstaudio.c:264 got min latency 0:00:00.600725624, max latency
0:00:01.600725624, live 1
(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:33.562:
../src/channel-playback.c:462 playback-5:0: playback set_delay 600 ms
(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:33.563:
../src/spice-session.c:2413 set mm time: 1220885051
(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:33.564:
../src/spice-session.c:2416 spice_session_set_mm_time: mm-time-reset, old
1220885053, new 1220885051
(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:33.564:
../src/channel-display.c:1532 display-2:0: display_session_mm_time_reset_cb
(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:34.559:
../src/spice-gstaudio.c:264 got min latency 0:00:00.600725624, max latency
0:00:01.600725624, live 1
(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:34.563:
../src/channel-playback.c:462 playback-5:0: playback set_delay 600 ms
(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:34.567:
../src/spice-session.c:2413 set mm time: 1220886053
(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:34.570:
../src/spice-session.c:2416 spice_session_set_mm_time: mm-time-reset, old
1220886054, new 1220886053
(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:34.576:
../src/channel-display.c:1532 display-2:0: display_session_mm_time_reset_cb
(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:35.560:
../src/spice-gstaudio.c:264 got min latency 0:00:00.600725624, max latency
0:00:01.600725624, live 1
(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:35.570:
../src/channel-playback.c:462 playback-5:0: playback set_delay 600 ms
(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:35.574:
../src/spice-session.c:2413 set mm time: 1220887049
(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:35.579:
../src/spice-session.c:2416 spice_session_set_mm_time: mm-time-reset, old
1220887059, new 1220887049
(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:35.584:
../src/channel-display.c:1532 display-2:0: display_session_mm_time_reset_cb
(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:36.560:
../src/spice-gstaudio.c:264 got min latency 0:00:00.600725624, max latency
0:00:01.600725624, live 1
(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:36.562:
../src/channel-playback.c:462 playback-5:0: playback set_delay 600 ms
(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:36.562:
../src/spice-session.c:2413 set mm time: 1220888051
(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:37.560:
../src/spice-gstaudio.c:264 got min latency 0:00:00.600725624, max latency
0:00:01.600725624, live 1
(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:37.560:
../src/channel-playback.c:462 playback-5:0: playback set_delay 600 ms
(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:37.562:
../src/spice-session.c:2413 set mm time: 1220889053
(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:38.560:
../src/spice-gstaudio.c:264 got min latency 0:00:00.600725624, max latency
0:00:01.600725624, live 1
(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:38.562:
../src/channel-playback.c:462 playback-5:0: playback set_delay 600 ms
(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:38.565:
../src/spice-session.c:2413 set mm time: 1220890055
(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:38.568:
../src/spice-session.c:2416 spice_session_set_mm_time: mm-time-reset, old
1220890056, new 1220890055
(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:38.571:
../src/channel-display.c:1532 display-2:0: display_session_mm_time_reset_cb
(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:39.469:
../src/spice-session.c:2413 set mm time: 1220891167
#############################################################

Thank you

--0000000000003c62c005b9f00017
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi:<div>=C2=A0 =C2=A0I play audio in the virtual machine, =
and the local sound sounds abnormal. How to debug it ?</div><div><br></div>=
<div><div>Additionally info:</div><div>libvirt-5.2.0, qemu-3.1.0, spice-0.1=
4.0, spice-protocol-0.12.15, usbredir-0.8.0,spice-guest-tools-latest.exe</d=
iv><div>virtual Machine Viewer 9.0-256</div></div><div><br></div><div><div =
style=3D""><font color=3D"#000000">I run the virtViewer in this way:</font>=
</div><div style=3D""><font color=3D"#000000">#############################=
################################</font></div><div style=3D""><font color=3D=
"#000000">C:\Program Files\VirtViewer v9.0-256\bin&gt;set G_MESSAGES_DEBUG=
=3Dall<br><br>C:\Program Files\VirtViewer v9.0-256\bin&gt;remote-viewer.exe=
 --spice-debug<br></font></div><div style=3D""><font color=3D"#000000">####=
#########################################################</font></div></div=
><div style=3D""><font color=3D"#000000"><br></font></div><div style=3D""><=
font color=3D"#000000">The log is:</font></div><div style=3D""><font color=
=3D"#000000">#############################################################<=
/font></div><div style=3D""><div>(remote-viewer.exe:47940): GSpice-DEBUG: 1=
4:22:32.261: ../src/decode-glz.c:349 decode_header: 256x256, id 325, ref 27=
8</div><div>(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:32.343: ../src/d=
ecode-glz.c:349 decode_header: 256x256, id 326, ref 278</div><div>(remote-v=
iewer.exe:47940): GSpice-DEBUG: 14:22:32.402: ../src/decode-glz.c:349 decod=
e_header: 256x256, id 327, ref 278</div><div>(remote-viewer.exe:47940): GSp=
ice-DEBUG: 14:22:32.452: ../src/decode-glz.c:349 decode_header: 256x256, id=
 328, ref 278</div><div>(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:32.5=
17: ../src/decode-glz.c:349 decode_header: 256x256, id 329, ref 278</div><d=
iv>(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:32.560: ../src/spice-gsta=
udio.c:264 got min latency 0:00:00.600725624, max latency 0:00:01.600725624=
, live 1</div><div>(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:32.562: .=
./src/channel-playback.c:462 playback-5:0: playback set_delay 600 ms</div><=
div>(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:32.565: ../src/spice-ses=
sion.c:2413 set mm time: 1220884055</div><div>(remote-viewer.exe:47940): GS=
pice-DEBUG: 14:22:33.560: ../src/spice-gstaudio.c:264 got min latency 0:00:=
00.600725624, max latency 0:00:01.600725624, live 1</div><div>(remote-viewe=
r.exe:47940): GSpice-DEBUG: 14:22:33.562: ../src/channel-playback.c:462 pla=
yback-5:0: playback set_delay 600 ms</div><div>(remote-viewer.exe:47940): G=
Spice-DEBUG: 14:22:33.563: ../src/spice-session.c:2413 set mm time: 1220885=
051</div><div>(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:33.564: ../src=
/spice-session.c:2416 spice_session_set_mm_time: mm-time-reset, old 1220885=
053, new 1220885051</div><div>(remote-viewer.exe:47940): GSpice-DEBUG: 14:2=
2:33.564: ../src/channel-display.c:1532 display-2:0: display_session_mm_tim=
e_reset_cb</div><div>(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:34.559:=
 ../src/spice-gstaudio.c:264 got min latency 0:00:00.600725624, max latency=
 0:00:01.600725624, live 1</div><div>(remote-viewer.exe:47940): GSpice-DEBU=
G: 14:22:34.563: ../src/channel-playback.c:462 playback-5:0: playback set_d=
elay 600 ms</div><div>(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:34.567=
: ../src/spice-session.c:2413 set mm time: 1220886053</div><div>(remote-vie=
wer.exe:47940): GSpice-DEBUG: 14:22:34.570: ../src/spice-session.c:2416 spi=
ce_session_set_mm_time: mm-time-reset, old 1220886054, new 1220886053</div>=
<div>(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:34.576: ../src/channel-=
display.c:1532 display-2:0: display_session_mm_time_reset_cb</div><div>(rem=
ote-viewer.exe:47940): GSpice-DEBUG: 14:22:35.560: ../src/spice-gstaudio.c:=
264 got min latency 0:00:00.600725624, max latency 0:00:01.600725624, live =
1</div><div>(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:35.570: ../src/c=
hannel-playback.c:462 playback-5:0: playback set_delay 600 ms</div><div>(re=
mote-viewer.exe:47940): GSpice-DEBUG: 14:22:35.574: ../src/spice-session.c:=
2413 set mm time: 1220887049</div><div>(remote-viewer.exe:47940): GSpice-DE=
BUG: 14:22:35.579: ../src/spice-session.c:2416 spice_session_set_mm_time: m=
m-time-reset, old 1220887059, new 1220887049</div><div>(remote-viewer.exe:4=
7940): GSpice-DEBUG: 14:22:35.584: ../src/channel-display.c:1532 display-2:=
0: display_session_mm_time_reset_cb</div><div>(remote-viewer.exe:47940): GS=
pice-DEBUG: 14:22:36.560: ../src/spice-gstaudio.c:264 got min latency 0:00:=
00.600725624, max latency 0:00:01.600725624, live 1</div><div>(remote-viewe=
r.exe:47940): GSpice-DEBUG: 14:22:36.562: ../src/channel-playback.c:462 pla=
yback-5:0: playback set_delay 600 ms</div><div>(remote-viewer.exe:47940): G=
Spice-DEBUG: 14:22:36.562: ../src/spice-session.c:2413 set mm time: 1220888=
051</div><div>(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:37.560: ../src=
/spice-gstaudio.c:264 got min latency 0:00:00.600725624, max latency 0:00:0=
1.600725624, live 1</div><div>(remote-viewer.exe:47940): GSpice-DEBUG: 14:2=
2:37.560: ../src/channel-playback.c:462 playback-5:0: playback set_delay 60=
0 ms</div><div>(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:37.562: ../sr=
c/spice-session.c:2413 set mm time: 1220889053</div><div>(remote-viewer.exe=
:47940): GSpice-DEBUG: 14:22:38.560: ../src/spice-gstaudio.c:264 got min la=
tency 0:00:00.600725624, max latency 0:00:01.600725624, live 1</div><div>(r=
emote-viewer.exe:47940): GSpice-DEBUG: 14:22:38.562: ../src/channel-playbac=
k.c:462 playback-5:0: playback set_delay 600 ms</div><div>(remote-viewer.ex=
e:47940): GSpice-DEBUG: 14:22:38.565: ../src/spice-session.c:2413 set mm ti=
me: 1220890055</div><div>(remote-viewer.exe:47940): GSpice-DEBUG: 14:22:38.=
568: ../src/spice-session.c:2416 spice_session_set_mm_time: mm-time-reset, =
old 1220890056, new 1220890055</div><div>(remote-viewer.exe:47940): GSpice-=
DEBUG: 14:22:38.571: ../src/channel-display.c:1532 display-2:0: display_ses=
sion_mm_time_reset_cb</div><div>(remote-viewer.exe:47940): GSpice-DEBUG: 14=
:22:39.469: ../src/spice-session.c:2413 set mm time: 1220891167</div></div>=
<div style=3D""><font color=3D"#000000">###################################=
##########################</font></div><div style=3D""><font color=3D"#0000=
00"><br></font></div><div style=3D""><font color=3D"#000000">Thank you</fon=
t></div></div>

--0000000000003c62c005b9f00017--

--===============0963288354==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0963288354==--
