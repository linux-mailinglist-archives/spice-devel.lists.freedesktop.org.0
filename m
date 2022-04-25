Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BECF350DF1C
	for <lists+spice-devel@lfdr.de>; Mon, 25 Apr 2022 13:44:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1A7310E4E4;
	Mon, 25 Apr 2022 11:44:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com
 [IPv6:2a00:1450:4864:20::131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7CEF10E4E6
 for <spice-devel@lists.freedesktop.org>; Mon, 25 Apr 2022 11:44:46 +0000 (UTC)
Received: by mail-lf1-x131.google.com with SMTP id w19so25637422lfu.11
 for <spice-devel@lists.freedesktop.org>; Mon, 25 Apr 2022 04:44:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kMH1apIf0by8fCrHIdrn+7zyUhr9k7fO2OxGw8G9nNU=;
 b=C/in6FpDB/2CbqB+OS/rl0Qqi56ipjtkal/ajnErQ9fQWF5zNTJBIgJQ5YKUdLkOaF
 0HFoc4rrRR60nBzigowm0QFs0Awo8IgtWzbl+JG4dF67sLRapaiTIXLWbO8+8IanxXpo
 WGiepR5mwtVZ1T/G0ahRS0c1ZwOAtLudThFKeEoOLl8zeb7TT7Eqlc1FKdbqBtC321wC
 /ZSK5PRduOC9xaf+CBmG/2NDVpPIxlx2qFakLbcstgYjbWy+BJwod4SnYJWK62D36UV2
 yn1kjdwdbtmHowzcTv+eT3Is6E3sn4/445fvy9qYlNDlOol7mMnqcPlqaQwzyP3TEuUA
 yIdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kMH1apIf0by8fCrHIdrn+7zyUhr9k7fO2OxGw8G9nNU=;
 b=n2OH2zfH5mpR8GHLtHxFwUD1zD/LD8XL/zWSCAnt96l0yaJ9p3tprtgILNprvtektI
 9IFK6QL++ecq0JQMDdBRCnZbdhiDL0ZQnUhDdPEa4S4/eVKY+EdtyyvIrZ+rnkmjoCPm
 MLiNi6gJm/n2K3TVWzJ6eHpaiD0tGzdXc+Eo2lekVp/SxCMDOSgbQMZpyB1OCg/fQkw1
 7LY2REF58O5J2wnyuDeqkX3CuUo9pK0rwsFtaSkaRGePhtKEwA17w0hqNmY8gDDwvGRd
 LExL/HWV3x3eOXiz0iYq/IXJ+yNPci46bioawG/Iwf8Y8iNpo9CjN5cAUArGtleybE3X
 4imw==
X-Gm-Message-State: AOAM531wdsR3YlYtQOSaV+VuseQcTEd+jvOuwBB+CM0vGyubAm8qR3+T
 6z7FMuPy3iNTil0i22JPsqW0bxZ4FWtZwixgs0U=
X-Google-Smtp-Source: ABdhPJx60CfOsF+Z+0jSKgQtvpK6gJtaJqxwZ7l5sGh27O6aKYKCWItg2ETfh3R4VfTXfSxVGg6rUJOCxoGN5sdgzlE=
X-Received: by 2002:a05:6512:32ca:b0:472:921:a806 with SMTP id
 f10-20020a05651232ca00b004720921a806mr2764825lfg.135.1650887085095; Mon, 25
 Apr 2022 04:44:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAOgZG1waEgPVdBR=+nMb2ROZh0jCnoaqvfSJtSs+AFppxSVCjw@mail.gmail.com>
In-Reply-To: <CAOgZG1waEgPVdBR=+nMb2ROZh0jCnoaqvfSJtSs+AFppxSVCjw@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Mon, 25 Apr 2022 12:44:33 +0100
Message-ID: <CAHt6W4eoY_oKMznijoNSeKBNFHE1RkSAH4-GP0uLb7bKpC7Tgg@mail.gmail.com>
To: Walter Mitty <waltermitty121906@gmail.com>
Content-Type: multipart/alternative; boundary="000000000000457ef905dd791aa5"
Subject: Re: [Spice-devel] Problem with mouse input
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--000000000000457ef905dd791aa5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,
   the intention is clear, collapse the movements (sum up relative
movements) to avoid a queue getting too big. If you need a larger queue you
can simply change the check on spice-gtk.
One question is however why you want all events. About naming and
readability I think a "unacked_motion_count" instead of just "motion_count"
here would be more appropriate.

Regards,
  Frediano


Il giorno lun 25 apr 2022 alle ore 07:46 Walter Mitty <
waltermitty121906@gmail.com> ha scritto:

> Hi,
> I=E2=80=99m learning spice source code. And recently, when I used a drawi=
ng app I
> found some mouse input events were dropped. I tried to understand it from
> the code.
> From code perspective, In inputs-channel.c, spice-gtk will check if
> *motion_count* is smaller than SPICE_INPUT_MOTION_ACK_BUNCH((which is 4))
> * 2. On spice-server, at on_mouse_motion(), on every
> SPICE_INPUT_MOTION_ACK_BUNCHmouse motion events, server side sends a RED_=
PIPE_ITEM_MOUSE_MOTION_ACK
> event to client. And in
> response, the client reduces *motion_count *by 4 and continues event
> sending. It seems that before the client response finishes, some events a=
re
> dropped.
> I wanna avoid event dropping, my idea is taking advantage of the event
> queue to store all events. And the server retrieves events from the queue
> to write to the virtual device .
>
> My question is: Is the event dropping reasonable?  Could you please give
> some advice about how to avoid it?  Thanks very much~
>
> Regards,
> Walter.
>
>

--000000000000457ef905dd791aa5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div>=C2=A0=C2=A0 the intention is clear, co=
llapse the movements (sum up relative movements) to avoid a queue getting t=
oo big. If you need a larger queue you can simply change the check on spice=
-gtk.</div><div>One question is however why you want all events. About nami=
ng and readability I think a &quot;unacked_motion_count&quot; instead of ju=
st &quot;motion_count&quot; here would be more=C2=A0appropriate.<br></div><=
div><br></div><div>Regards,<br></div><div><div><div dir=3D"ltr" class=3D"gm=
ail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">=C2=A0 F=
rediano</div></div></div><br></div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">Il giorno lun 25 apr 2022 alle ore 07:46=
 Walter Mitty &lt;<a href=3D"mailto:waltermitty121906@gmail.com">waltermitt=
y121906@gmail.com</a>&gt; ha scritto:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div dir=3D"ltr"><font style=3D"color:rgb(0,0,0);font=
-family:Helvetica" size=3D"4">Hi,</font><div style=3D"color:rgb(0,0,0);font=
-family:Helvetica;font-size:12px"><font size=3D"4">I=E2=80=99m learning spi=
ce source code. And recently, when I used=C2=A0a drawing app I found some m=
ouse input=C2=A0events were dropped. I tried to understand it=C2=A0from the=
 code.</font></div><div style=3D"color:rgb(0,0,0);font-family:Helvetica;fon=
t-size:12px"><font size=3D"4">From code perspective, In inputs-channel.c, s=
pice-gtk will check if<span>=C2=A0</span><b>motion_count</b><span>=C2=A0</s=
pan>is smaller than=C2=A0<span style=3D"color:rgb(3,47,98);font-family:Menl=
o,Monaco,&quot;Courier New&quot;,monospace;white-space:pre-wrap">SPICE_INPU=
T_MOTION_ACK_BUNCH(</span><span style=3D"color:rgb(3,47,98);font-family:Men=
lo,Monaco,&quot;Courier New&quot;,monospace;white-space:pre-wrap">(</span><=
span style=3D"color:rgb(3,47,98);font-family:Menlo,Monaco,&quot;Courier New=
&quot;,monospace;white-space:pre-wrap">which is 4</span><span style=3D"colo=
r:rgb(3,47,98);font-family:Menlo,Monaco,&quot;Courier New&quot;,monospace;w=
hite-space:pre-wrap">)</span><span style=3D"color:rgb(3,47,98);font-family:=
Menlo,Monaco,&quot;Courier New&quot;,monospace;white-space:pre-wrap">) * 2.=
 On spice-server, at=C2=A0</span><span style=3D"color:rgb(111,66,193);font-=
family:Menlo,Monaco,&quot;Courier New&quot;,monospace;white-space:pre-wrap"=
>on_mouse_motion()</span><span style=3D"color:rgb(3,47,98);font-family:Menl=
o,Monaco,&quot;Courier New&quot;,monospace;white-space:pre-wrap">,=C2=A0</s=
pan></font><font style=3D"font-size:large" face=3D"Menlo, Monaco, Courier N=
ew, monospace" color=3D"#032f62"><span style=3D"white-space:pre-wrap">on </=
span><span style=3D"white-space:pre-wrap">every </span></font><span style=
=3D"font-size:large;color:rgb(3,47,98);font-family:Menlo,Monaco,&quot;Couri=
er New&quot;,monospace;white-space:pre-wrap">SPICE_INPUT_MOTION_ACK_BUNCH</=
span><span style=3D"font-size:large;color:rgb(3,47,98);font-family:Menlo,Mo=
naco,&quot;Courier New&quot;,monospace;white-space:pre-wrap">mouse motion e=
vents, server side sends a </span><font style=3D"font-size:large" face=3D"M=
enlo, Monaco, Courier New, monospace" color=3D"#24292e"><span style=3D"whit=
e-space:pre-wrap">RED_PIPE_ITEM_MOUSE_MOTION_ACK event to client. </span><s=
pan style=3D"white-space:pre-wrap">And in</span></font></div><div style=3D"=
color:rgb(0,0,0);font-family:Helvetica;font-size:12px"><font size=3D"4" fac=
e=3D"Menlo, Monaco, Courier New, monospace" color=3D"#24292e"><span style=
=3D"white-space:pre-wrap">response, the client reduces <b>motion_count </b>=
by 4 and continues event sending. It seems that before the client response =
finishes, some events are dropped.</span></font></div><div style=3D"color:r=
gb(0,0,0);font-family:Helvetica;font-size:12px"><font size=3D"4">I wanna av=
oid event dropping, my idea is taking advantage of the event queue to=C2=A0=
store all=C2=A0events. And the server retrieves=C2=A0events from the queue =
to write to the virtual device .=C2=A0</font></div><div style=3D"color:rgb(=
0,0,0);font-family:Helvetica;font-size:12px"><font size=3D"4"><br></font></=
div><div style=3D"color:rgb(0,0,0);font-family:Helvetica;font-size:12px"><s=
pan style=3D"font-size:large">My question is: Is the event dropping reasona=
ble?</span><span style=3D"font-size:large">=C2=A0=C2=A0</span><font size=3D=
"4">Could you please give some advice about how to avoid=C2=A0it?=C2=A0 Tha=
nks very much~</font></div><div style=3D"color:rgb(0,0,0);font-family:Helve=
tica;font-size:12px"><font size=3D"4"><br></font></div><div style=3D"color:=
rgb(0,0,0);font-family:Helvetica;font-size:12px"><font size=3D"4">Regards,<=
/font></div><div style=3D"color:rgb(0,0,0);font-family:Helvetica;font-size:=
12px"><font size=3D"4">Walter.</font></div><br></div>
</blockquote></div>

--000000000000457ef905dd791aa5--
