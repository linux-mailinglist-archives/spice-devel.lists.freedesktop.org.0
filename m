Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E9030A340
	for <lists+spice-devel@lfdr.de>; Mon,  1 Feb 2021 09:25:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA1CD6E488;
	Mon,  1 Feb 2021 08:24:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-io1-xd31.google.com (mail-io1-xd31.google.com
 [IPv6:2607:f8b0:4864:20::d31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA9966E483
 for <spice-devel@lists.freedesktop.org>; Mon,  1 Feb 2021 08:24:57 +0000 (UTC)
Received: by mail-io1-xd31.google.com with SMTP id u8so11355651ior.13
 for <spice-devel@lists.freedesktop.org>; Mon, 01 Feb 2021 00:24:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cHlJmXZAjYNrcga+NMnmBrUNnFIqnvdpHYQYpM0HMrs=;
 b=GSnm9EMk2ZN4ZyJTkXN1Xg6vJ3FewjgUd6yd4Wpn83h2pHhuvZg4f4WMO1/EXE6YOA
 tyvOWNxnKKkm+9jcK0ZqNmE9w1GYTzKX6vTdynlaOW4RnNr/GhI1XtChSawk05mgM4Qh
 vGEa6EUbYbPdlHmaBgR/DQd+WkAIwBrCKOx68ibzNoyahDZf/r2i67WXVYf1fLCRxXHt
 uf152woq1IauDpINOPN/RZzZ5y4eH/Xi4n3ryT3d1O3ubOxgpxBQDLckw0g+BvFVVp47
 To3YE5GBp+hHma13Wb9yie9YbsO4Ot++gnA1z3R5yAr9B+PvpMGTful7iHRxdpfsAi6i
 wGHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cHlJmXZAjYNrcga+NMnmBrUNnFIqnvdpHYQYpM0HMrs=;
 b=MxQOm0gmYiaehthQb6T6Z5i+rl28Ifg3QqUSWd5mudwNs3TZLWkCYYpKsuZXbEKrGF
 f22TMcMFL37Ne+Nj82oho8RLJDt0Ww4GCCw6bHYfc54imHX+taPali1fVsAXvM3XWFra
 DhTUswppLR9NfDdM+rsbLq5JIPyPLljYDJPFMgD/b7SOQhNLu98I2OdY1aYxYg3zZ/50
 Vvp6A+1gpPi0A8plRG2BABP5mMYCn2xm8PAS0dM8lSohtMk3es3he1vdqnfpXasha/hs
 1Iuiv5qZMl1fjuFUg98Q04azPVzfrvKL1eLk434zvNIXTLePc117ENaRHtaMfayTFENK
 E/Ng==
X-Gm-Message-State: AOAM533ZzGN60Fjs6nufpL8j8uB6M6IuVJCJIKcBgNLx+yirmDhDa+eq
 wcDlpynPA7qN1LWGV49Jdoc7UgFKqX+klJza6cY=
X-Google-Smtp-Source: ABdhPJwfEfpd4AdNKk2fPJyAtzxrW/LPnt3PES9XONwX3bqaTMGmF7UL0h97fRd/jpNks6ooE6m2H2ApsAXUbtXkDpw=
X-Received: by 2002:a5d:8ac8:: with SMTP id e8mr12444047iot.163.1612167897156; 
 Mon, 01 Feb 2021 00:24:57 -0800 (PST)
MIME-Version: 1.0
References: <CA+5jrfnNQLRPxJneD_mYA1kB8fio97Doce4ZXe_ZX18hfkQ37A@mail.gmail.com>
 <CAHt6W4fgSB-5uBmfGgw2SWraRF+kp6PZpoZPQRuUwwm0w=MhFw@mail.gmail.com>
 <CA+5jrfnPKk3e_44EgUspZbRGw-+biWk8YAmmJKXo+OLZDCefPQ@mail.gmail.com>
 <CA+5jrfkktTa-fkQanL0D-iuw7RuSrWFttNoAivzjqLf1hwLzcA@mail.gmail.com>
In-Reply-To: <CA+5jrfkktTa-fkQanL0D-iuw7RuSrWFttNoAivzjqLf1hwLzcA@mail.gmail.com>
From: lx <lxlenovostar@gmail.com>
Date: Mon, 1 Feb 2021 16:24:46 +0800
Message-ID: <CA+5jrfkmTX4DgjoD86WnbXwqmct8kfiG-YzH+um6XwoqBZ=vLA@mail.gmail.com>
To: Frediano Ziglio <freddy77@gmail.com>
Subject: Re: [Spice-devel] [spice-devel]Sounds abnormal
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
Content-Type: multipart/mixed; boundary="===============1693704757=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1693704757==
Content-Type: multipart/alternative; boundary="000000000000d40dd305ba42161e"

--000000000000d40dd305ba42161e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

It's ok on Virtual Machine Viewer 8.0-256, but It's not ok on 9.0-256.

lx <lxlenovostar@gmail.com> =E4=BA=8E2021=E5=B9=B42=E6=9C=881=E6=97=A5=E5=
=91=A8=E4=B8=80 =E4=B8=8A=E5=8D=8811:09=E5=86=99=E9=81=93=EF=BC=9A

> I use Remote Viewer on Ubuntu. Everything is ok.
>
> lx <lxlenovostar@gmail.com> =E4=BA=8E2021=E5=B9=B41=E6=9C=8830=E6=97=A5=
=E5=91=A8=E5=85=AD =E4=B8=8B=E5=8D=887:22=E5=86=99=E9=81=93=EF=BC=9A
>
>>
>>
>> Frediano Ziglio <freddy77@gmail.com> =E4=BA=8E2021=E5=B9=B41=E6=9C=8829=
=E6=97=A5=E5=91=A8=E4=BA=94 =E4=B8=8A=E5=8D=884:21=E5=86=99=E9=81=93=EF=BC=
=9A
>>
>>> Il giorno gio 28 gen 2021 alle ore 06:28 lx <lxlenovostar@gmail.com> ha
>>> scritto:
>>> >
>>> > Hi:
>>> >    I play audio in the virtual machine, and the local sound sounds
>>> abnormal. How to debug it ?
>>> >
>>>
>>> Enabling messages is a good way to start debugging.
>>> But what do you mean by abnormal? Have glitches? Interruptions?
>>> Different frequency?
>>>
>>> Frediano
>>>
>> Hi :
>>
>> It's all noise, and the original sound cannot be heard.
>>
>> Thank you
>>
>>
>>>
>>> > Additionally info:
>>> > libvirt-5.2.0, qemu-3.1.0, spice-0.14.0, spice-protocol-0.12.15,
>>> usbredir-0.8.0,spice-guest-tools-latest.exe
>>> > virtual Machine Viewer 9.0-256
>>> >
>>> > I run the virtViewer in this way:
>>> > #############################################################
>>> > C:\Program Files\VirtViewer v9.0-256\bin>set G_MESSAGES_DEBUG=3Dall
>>> >
>>> > C:\Program Files\VirtViewer v9.0-256\bin>remote-viewer.exe
>>> --spice-debug
>>> > #############################################################
>>> >
>>> > The log is:
>>> > #############################################################
>>> > (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:32.261:
>>> ../src/decode-glz.c:349 decode_header: 256x256, id 325, ref 278
>>> > (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:32.343:
>>> ../src/decode-glz.c:349 decode_header: 256x256, id 326, ref 278
>>> > (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:32.402:
>>> ../src/decode-glz.c:349 decode_header: 256x256, id 327, ref 278
>>> > (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:32.452:
>>> ../src/decode-glz.c:349 decode_header: 256x256, id 328, ref 278
>>> > (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:32.517:
>>> ../src/decode-glz.c:349 decode_header: 256x256, id 329, ref 278
>>> > (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:32.560:
>>> ../src/spice-gstaudio.c:264 got min latency 0:00:00.600725624, max late=
ncy
>>> 0:00:01.600725624, live 1
>>> > (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:32.562:
>>> ../src/channel-playback.c:462 playback-5:0: playback set_delay 600 ms
>>> > (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:32.565:
>>> ../src/spice-session.c:2413 set mm time: 1220884055
>>> > (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:33.560:
>>> ../src/spice-gstaudio.c:264 got min latency 0:00:00.600725624, max late=
ncy
>>> 0:00:01.600725624, live 1
>>> > (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:33.562:
>>> ../src/channel-playback.c:462 playback-5:0: playback set_delay 600 ms
>>> > (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:33.563:
>>> ../src/spice-session.c:2413 set mm time: 1220885051
>>> > (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:33.564:
>>> ../src/spice-session.c:2416 spice_session_set_mm_time: mm-time-reset, o=
ld
>>> 1220885053, new 1220885051
>>> > (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:33.564:
>>> ../src/channel-display.c:1532 display-2:0: display_session_mm_time_rese=
t_cb
>>> > (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:34.559:
>>> ../src/spice-gstaudio.c:264 got min latency 0:00:00.600725624, max late=
ncy
>>> 0:00:01.600725624, live 1
>>> > (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:34.563:
>>> ../src/channel-playback.c:462 playback-5:0: playback set_delay 600 ms
>>> > (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:34.567:
>>> ../src/spice-session.c:2413 set mm time: 1220886053
>>> > (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:34.570:
>>> ../src/spice-session.c:2416 spice_session_set_mm_time: mm-time-reset, o=
ld
>>> 1220886054, new 1220886053
>>> > (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:34.576:
>>> ../src/channel-display.c:1532 display-2:0: display_session_mm_time_rese=
t_cb
>>> > (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:35.560:
>>> ../src/spice-gstaudio.c:264 got min latency 0:00:00.600725624, max late=
ncy
>>> 0:00:01.600725624, live 1
>>> > (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:35.570:
>>> ../src/channel-playback.c:462 playback-5:0: playback set_delay 600 ms
>>> > (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:35.574:
>>> ../src/spice-session.c:2413 set mm time: 1220887049
>>> > (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:35.579:
>>> ../src/spice-session.c:2416 spice_session_set_mm_time: mm-time-reset, o=
ld
>>> 1220887059, new 1220887049
>>> > (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:35.584:
>>> ../src/channel-display.c:1532 display-2:0: display_session_mm_time_rese=
t_cb
>>> > (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:36.560:
>>> ../src/spice-gstaudio.c:264 got min latency 0:00:00.600725624, max late=
ncy
>>> 0:00:01.600725624, live 1
>>> > (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:36.562:
>>> ../src/channel-playback.c:462 playback-5:0: playback set_delay 600 ms
>>> > (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:36.562:
>>> ../src/spice-session.c:2413 set mm time: 1220888051
>>> > (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:37.560:
>>> ../src/spice-gstaudio.c:264 got min latency 0:00:00.600725624, max late=
ncy
>>> 0:00:01.600725624, live 1
>>> > (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:37.560:
>>> ../src/channel-playback.c:462 playback-5:0: playback set_delay 600 ms
>>> > (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:37.562:
>>> ../src/spice-session.c:2413 set mm time: 1220889053
>>> > (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:38.560:
>>> ../src/spice-gstaudio.c:264 got min latency 0:00:00.600725624, max late=
ncy
>>> 0:00:01.600725624, live 1
>>> > (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:38.562:
>>> ../src/channel-playback.c:462 playback-5:0: playback set_delay 600 ms
>>> > (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:38.565:
>>> ../src/spice-session.c:2413 set mm time: 1220890055
>>> > (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:38.568:
>>> ../src/spice-session.c:2416 spice_session_set_mm_time: mm-time-reset, o=
ld
>>> 1220890056, new 1220890055
>>> > (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:38.571:
>>> ../src/channel-display.c:1532 display-2:0: display_session_mm_time_rese=
t_cb
>>> > (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:39.469:
>>> ../src/spice-session.c:2413 set mm time: 1220891167
>>> > #############################################################
>>> >
>>> > Thank you
>>>
>>

--000000000000d40dd305ba42161e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">It&#39;s ok on Virtual Machine Viewer 8.0-256, but It&#39;=
s not ok on 9.0-256.=C2=A0</div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">lx &lt;<a href=3D"mailto:lxlenovostar@gmail.com">=
lxlenovostar@gmail.com</a>&gt; =E4=BA=8E2021=E5=B9=B42=E6=9C=881=E6=97=A5=
=E5=91=A8=E4=B8=80 =E4=B8=8A=E5=8D=8811:09=E5=86=99=E9=81=93=EF=BC=9A<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">I us=
e Remote Viewer on Ubuntu. Everything is ok.</div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">lx &lt;<a href=3D"mailto:lxleno=
vostar@gmail.com" target=3D"_blank">lxlenovostar@gmail.com</a>&gt; =E4=BA=
=8E2021=E5=B9=B41=E6=9C=8830=E6=97=A5=E5=91=A8=E5=85=AD =E4=B8=8B=E5=8D=887=
:22=E5=86=99=E9=81=93=EF=BC=9A<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Frediano Ziglio &lt;=
<a href=3D"mailto:freddy77@gmail.com" target=3D"_blank">freddy77@gmail.com<=
/a>&gt; =E4=BA=8E2021=E5=B9=B41=E6=9C=8829=E6=97=A5=E5=91=A8=E4=BA=94 =E4=
=B8=8A=E5=8D=884:21=E5=86=99=E9=81=93=EF=BC=9A<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">Il giorno gio 28 gen 2021 alle ore 06:28 l=
x &lt;<a href=3D"mailto:lxlenovostar@gmail.com" target=3D"_blank">lxlenovos=
tar@gmail.com</a>&gt; ha scritto:<br>
&gt;<br>
&gt; Hi:<br>
&gt;=C2=A0 =C2=A0 I play audio in the virtual machine, and the local sound =
sounds abnormal. How to debug it ?<br>
&gt;<br>
<br>
Enabling messages is a good way to start debugging.<br>
But what do you mean by abnormal? Have glitches? Interruptions?<br>
Different frequency?<br>
<br>
Frediano<br></blockquote><div>Hi :</div><div><br></div><div>It&#39;s all no=
ise, and the original sound cannot be heard.<br></div><div><br></div><div>T=
hank you</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">
<br>
&gt; Additionally info:<br>
&gt; libvirt-5.2.0, qemu-3.1.0, spice-0.14.0, spice-protocol-0.12.15, usbre=
dir-0.8.0,spice-guest-tools-latest.exe<br>
&gt; virtual Machine Viewer 9.0-256<br>
&gt;<br>
&gt; I run the virtViewer in this way:<br>
&gt; #############################################################<br>
&gt; C:\Program Files\VirtViewer v9.0-256\bin&gt;set G_MESSAGES_DEBUG=3Dall=
<br>
&gt;<br>
&gt; C:\Program Files\VirtViewer v9.0-256\bin&gt;remote-viewer.exe --spice-=
debug<br>
&gt; #############################################################<br>
&gt;<br>
&gt; The log is:<br>
&gt; #############################################################<br>
&gt; (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:32.261: ../src/decode-g=
lz.c:349 decode_header: 256x256, id 325, ref 278<br>
&gt; (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:32.343: ../src/decode-g=
lz.c:349 decode_header: 256x256, id 326, ref 278<br>
&gt; (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:32.402: ../src/decode-g=
lz.c:349 decode_header: 256x256, id 327, ref 278<br>
&gt; (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:32.452: ../src/decode-g=
lz.c:349 decode_header: 256x256, id 328, ref 278<br>
&gt; (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:32.517: ../src/decode-g=
lz.c:349 decode_header: 256x256, id 329, ref 278<br>
&gt; (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:32.560: ../src/spice-gs=
taudio.c:264 got min latency 0:00:00.600725624, max latency 0:00:01.6007256=
24, live 1<br>
&gt; (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:32.562: ../src/channel-=
playback.c:462 playback-5:0: playback set_delay 600 ms<br>
&gt; (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:32.565: ../src/spice-se=
ssion.c:2413 set mm time: 1220884055<br>
&gt; (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:33.560: ../src/spice-gs=
taudio.c:264 got min latency 0:00:00.600725624, max latency 0:00:01.6007256=
24, live 1<br>
&gt; (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:33.562: ../src/channel-=
playback.c:462 playback-5:0: playback set_delay 600 ms<br>
&gt; (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:33.563: ../src/spice-se=
ssion.c:2413 set mm time: 1220885051<br>
&gt; (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:33.564: ../src/spice-se=
ssion.c:2416 spice_session_set_mm_time: mm-time-reset, old 1220885053, new =
1220885051<br>
&gt; (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:33.564: ../src/channel-=
display.c:1532 display-2:0: display_session_mm_time_reset_cb<br>
&gt; (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:34.559: ../src/spice-gs=
taudio.c:264 got min latency 0:00:00.600725624, max latency 0:00:01.6007256=
24, live 1<br>
&gt; (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:34.563: ../src/channel-=
playback.c:462 playback-5:0: playback set_delay 600 ms<br>
&gt; (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:34.567: ../src/spice-se=
ssion.c:2413 set mm time: 1220886053<br>
&gt; (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:34.570: ../src/spice-se=
ssion.c:2416 spice_session_set_mm_time: mm-time-reset, old 1220886054, new =
1220886053<br>
&gt; (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:34.576: ../src/channel-=
display.c:1532 display-2:0: display_session_mm_time_reset_cb<br>
&gt; (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:35.560: ../src/spice-gs=
taudio.c:264 got min latency 0:00:00.600725624, max latency 0:00:01.6007256=
24, live 1<br>
&gt; (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:35.570: ../src/channel-=
playback.c:462 playback-5:0: playback set_delay 600 ms<br>
&gt; (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:35.574: ../src/spice-se=
ssion.c:2413 set mm time: 1220887049<br>
&gt; (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:35.579: ../src/spice-se=
ssion.c:2416 spice_session_set_mm_time: mm-time-reset, old 1220887059, new =
1220887049<br>
&gt; (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:35.584: ../src/channel-=
display.c:1532 display-2:0: display_session_mm_time_reset_cb<br>
&gt; (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:36.560: ../src/spice-gs=
taudio.c:264 got min latency 0:00:00.600725624, max latency 0:00:01.6007256=
24, live 1<br>
&gt; (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:36.562: ../src/channel-=
playback.c:462 playback-5:0: playback set_delay 600 ms<br>
&gt; (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:36.562: ../src/spice-se=
ssion.c:2413 set mm time: 1220888051<br>
&gt; (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:37.560: ../src/spice-gs=
taudio.c:264 got min latency 0:00:00.600725624, max latency 0:00:01.6007256=
24, live 1<br>
&gt; (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:37.560: ../src/channel-=
playback.c:462 playback-5:0: playback set_delay 600 ms<br>
&gt; (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:37.562: ../src/spice-se=
ssion.c:2413 set mm time: 1220889053<br>
&gt; (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:38.560: ../src/spice-gs=
taudio.c:264 got min latency 0:00:00.600725624, max latency 0:00:01.6007256=
24, live 1<br>
&gt; (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:38.562: ../src/channel-=
playback.c:462 playback-5:0: playback set_delay 600 ms<br>
&gt; (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:38.565: ../src/spice-se=
ssion.c:2413 set mm time: 1220890055<br>
&gt; (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:38.568: ../src/spice-se=
ssion.c:2416 spice_session_set_mm_time: mm-time-reset, old 1220890056, new =
1220890055<br>
&gt; (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:38.571: ../src/channel-=
display.c:1532 display-2:0: display_session_mm_time_reset_cb<br>
&gt; (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:39.469: ../src/spice-se=
ssion.c:2413 set mm time: 1220891167<br>
&gt; #############################################################<br>
&gt;<br>
&gt; Thank you<br>
</blockquote></div></div>
</blockquote></div>
</blockquote></div>

--000000000000d40dd305ba42161e--

--===============1693704757==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1693704757==--
