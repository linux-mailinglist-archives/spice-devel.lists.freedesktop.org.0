Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2C950D9B9
	for <lists+spice-devel@lfdr.de>; Mon, 25 Apr 2022 08:46:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A865710FD28;
	Mon, 25 Apr 2022 06:46:33 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com
 [IPv6:2a00:1450:4864:20::62a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B295110E3D7
 for <spice-devel@lists.freedesktop.org>; Mon, 25 Apr 2022 02:06:26 +0000 (UTC)
Received: by mail-ej1-x62a.google.com with SMTP id r13so26886298ejd.5
 for <spice-devel@lists.freedesktop.org>; Sun, 24 Apr 2022 19:06:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to;
 bh=/S7Il92Z3KKw6aIG3KUGPJCkCOuCpTzsRqdAsez0OXQ=;
 b=Vwbl3MSdgH/GCJMyFKtUiFd3kQ/W5WexJtHh5/KYbXPN1+rxZeGYtzUNRTd3YJmXHw
 vBEDs67C7lnh1X0DbPfLcRJRfxALRvVaWhWd+oQn184v3PR4ihI7wc7+v5E2RcY8wf70
 G2FTk/1zD9Nw+XJel/rvIIHCboxsMiaDPnSyGldBTq76e8GSRAbsx7TvUWWpsQsnF0fB
 xkm7BVFbnQgXMGIptLfSyaMVq4Qhs1lVmlw09JXsYiU0f7VizQaJosYyMl7LK9Fn78wg
 +E6PZlL+r4OZyETdpN55k8Y/TfhCyI6ZVdYyPDzSqnP+VMPV1HASUO5DkdVC7oZB/RKx
 6gug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=/S7Il92Z3KKw6aIG3KUGPJCkCOuCpTzsRqdAsez0OXQ=;
 b=SwIuwPekYMlYSa8QQjBnYZgUUtE5nIMDgAMeUjQRMyCpeCpstREUKDjcfEryuViwdY
 /zr5VM/Boi5ngT20Zoy4YmY5Cd1UNekYEz46Nee8jAM/3x8TNhDsHVTMfCXB7ZiKr1xx
 apPWZKZQLVq6txNAEGbtd5NYawVgrN416Nn6vUWulgt7t2zbTfaE1Sr2f0vuz6x1cXuw
 Dc+ZjrPNFSgHvLjyLnDUiYXQncRnx7aMWvHsMI7JP6hRxtUndz/34oYYzpRjVwp/h5d4
 vbhWQ2wcKgZUAxaIueZuBu3xHgMeFio0SA9E0FRmNGGi1V3cGLd7aBIsuTVJho4Vc5mI
 2Wqw==
X-Gm-Message-State: AOAM531EkfodPNRpX12nnn2wxIxtsWEYpPPCZJnAUn4Eot/1c9OO29P+
 SYqrqLxyRUa30VF+HgNTq5EWdqn4mxnx7yr8kcacGxnSLMc=
X-Google-Smtp-Source: ABdhPJxCmtPQ7y5P95UOB+AEqBMxuCqJ1VmSRxe1olpkR9uOGK9dUvuAuNsarL2GBfyp8ay21AwDng33lQQetlqG2ZU=
X-Received: by 2002:a17:906:9b96:b0:6e8:6e4c:8249 with SMTP id
 dd22-20020a1709069b9600b006e86e4c8249mr13985652ejc.281.1650852384747; Sun, 24
 Apr 2022 19:06:24 -0700 (PDT)
MIME-Version: 1.0
From: Walter Mitty <waltermitty121906@gmail.com>
Date: Mon, 25 Apr 2022 10:06:13 +0800
Message-ID: <CAOgZG1waEgPVdBR=+nMb2ROZh0jCnoaqvfSJtSs+AFppxSVCjw@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="000000000000f832f605dd7105ba"
X-Mailman-Approved-At: Mon, 25 Apr 2022 06:46:33 +0000
Subject: [Spice-devel] Problem with mouse input
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

--000000000000f832f605dd7105ba
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,
I=E2=80=99m learning spice source code. And recently, when I used a drawing=
 app I
found some mouse input events were dropped. I tried to understand it from
the code.
From code perspective, In inputs-channel.c, spice-gtk will check if
*motion_count* is smaller than SPICE_INPUT_MOTION_ACK_BUNCH((which is 4)) *
2. On spice-server, at on_mouse_motion(), on every
SPICE_INPUT_MOTION_ACK_BUNCHmouse motion events, server side sends a
RED_PIPE_ITEM_MOUSE_MOTION_ACK
event to client. And in
response, the client reduces *motion_count *by 4 and continues event
sending. It seems that before the client response finishes, some events are
dropped.
I wanna avoid event dropping, my idea is taking advantage of the event
queue to store all events. And the server retrieves events from the queue
to write to the virtual device .

My question is: Is the event dropping reasonable?  Could you please give
some advice about how to avoid it?  Thanks very much~

Regards,
Walter.

--000000000000f832f605dd7105ba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><font size=3D"4" style=3D"color:rgb(0,0,0);font-family:Hel=
vetica">Hi,</font><div style=3D"color:rgb(0,0,0);font-family:Helvetica;font=
-size:12px"><font size=3D"4">I=E2=80=99m learning spice source code. And re=
cently, when I used=C2=A0a drawing app I found some mouse input=C2=A0events=
 were dropped. I tried to understand it=C2=A0from the code.</font></div><di=
v style=3D"color:rgb(0,0,0);font-family:Helvetica;font-size:12px"><font siz=
e=3D"4">From code perspective, In inputs-channel.c, spice-gtk will check if=
<span class=3D"gmail-Apple-converted-space">=C2=A0</span><b>motion_count</b=
><span class=3D"gmail-Apple-converted-space">=C2=A0</span>is smaller than=
=C2=A0<span style=3D"color:rgb(3,47,98);font-family:Menlo,Monaco,&quot;Cour=
ier New&quot;,monospace;white-space:pre">SPICE_INPUT_MOTION_ACK_BUNCH(</spa=
n><span style=3D"color:rgb(3,47,98);font-family:Menlo,Monaco,&quot;Courier =
New&quot;,monospace;white-space:pre">(</span><span style=3D"color:rgb(3,47,=
98);font-family:Menlo,Monaco,&quot;Courier New&quot;,monospace;white-space:=
pre">which is 4</span><span style=3D"color:rgb(3,47,98);font-family:Menlo,M=
onaco,&quot;Courier New&quot;,monospace;white-space:pre">)</span><span styl=
e=3D"color:rgb(3,47,98);font-family:Menlo,Monaco,&quot;Courier New&quot;,mo=
nospace;white-space:pre">) * 2. On spice-server, at=C2=A0</span><span style=
=3D"color:rgb(111,66,193);font-family:Menlo,Monaco,&quot;Courier New&quot;,=
monospace;white-space:pre">on_mouse_motion()</span><span style=3D"color:rgb=
(3,47,98);font-family:Menlo,Monaco,&quot;Courier New&quot;,monospace;white-=
space:pre">,=C2=A0</span></font><font color=3D"#032f62" face=3D"Menlo, Mona=
co, Courier New, monospace" style=3D"font-size:large"><span style=3D"white-=
space:pre">on </span><span style=3D"white-space:pre">every </span></font><s=
pan style=3D"font-size:large;color:rgb(3,47,98);font-family:Menlo,Monaco,&q=
uot;Courier New&quot;,monospace;white-space:pre">SPICE_INPUT_MOTION_ACK_BUN=
CH</span><span style=3D"font-size:large;color:rgb(3,47,98);font-family:Menl=
o,Monaco,&quot;Courier New&quot;,monospace;white-space:pre">mouse motion ev=
ents, server side sends a </span><font color=3D"#24292e" face=3D"Menlo, Mon=
aco, Courier New, monospace" style=3D"font-size:large"><span style=3D"white=
-space:pre">RED_PIPE_ITEM_MOUSE_MOTION_ACK event to client. </span><span st=
yle=3D"white-space:pre">And in</span></font></div><div style=3D"color:rgb(0=
,0,0);font-family:Helvetica;font-size:12px"><font color=3D"#24292e" face=3D=
"Menlo, Monaco, Courier New, monospace" size=3D"4"><span style=3D"white-spa=
ce:pre">response, the client reduces <b>motion_count </b>by 4 and continues=
 event sending. It seems that before the client response finishes, some eve=
nts are dropped.</span></font></div><div style=3D"color:rgb(0,0,0);font-fam=
ily:Helvetica;font-size:12px"><font size=3D"4">I wanna avoid event dropping=
, my idea is taking advantage of the event queue to=C2=A0store all=C2=A0eve=
nts. And the server retrieves=C2=A0events from the queue to write to the vi=
rtual device .=C2=A0</font></div><div style=3D"color:rgb(0,0,0);font-family=
:Helvetica;font-size:12px"><font size=3D"4"><br></font></div><div style=3D"=
color:rgb(0,0,0);font-family:Helvetica;font-size:12px"><span style=3D"font-=
size:large">My question is: Is the event dropping reasonable?</span><span s=
tyle=3D"font-size:large">=C2=A0=C2=A0</span><font size=3D"4">Could you plea=
se give some advice about how to avoid=C2=A0it?=C2=A0 Thanks very much~</fo=
nt></div><div style=3D"color:rgb(0,0,0);font-family:Helvetica;font-size:12p=
x"><font size=3D"4"><br></font></div><div style=3D"color:rgb(0,0,0);font-fa=
mily:Helvetica;font-size:12px"><font size=3D"4">Regards,</font></div><div s=
tyle=3D"color:rgb(0,0,0);font-family:Helvetica;font-size:12px"><font size=
=3D"4">Walter.</font></div><br class=3D"gmail-Apple-interchange-newline"></=
div>

--000000000000f832f605dd7105ba--
