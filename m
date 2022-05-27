Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE2A535B73
	for <lists+spice-devel@lfdr.de>; Fri, 27 May 2022 10:28:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6238610E042;
	Fri, 27 May 2022 08:28:36 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com
 [IPv6:2a00:1450:4864:20::22c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B699210E042
 for <spice-devel@lists.freedesktop.org>; Fri, 27 May 2022 08:28:35 +0000 (UTC)
Received: by mail-lj1-x22c.google.com with SMTP id a23so4195660ljd.9
 for <spice-devel@lists.freedesktop.org>; Fri, 27 May 2022 01:28:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=psBmx7otGHzUxzQtbSZBj+O8NlSiko82+8dkzZXxNo4=;
 b=Yw3f/AOz3PoJDIwHfmJKYOMx6TMk0ONwWzHk7yb5KiOOpfGKphAt37TX/PX5oArFke
 L91VV757SuHn4yLWExghRphsPJGVjKzZHW9fFVghc0xgHmB1241Sm4yauWxbXMQ03ETT
 n85U9zinpRWrF8Wu/mzTZMh4lZlWEOYgARg5gOgFJixUlHXg+5leFOa3TTEvgwvmewHE
 eFi+B0KZUPngzgVZPpgF9foNi3HLySbfC4dxoGlA6eccaYOKTuPmWqbG6PYi0F4DIGNB
 QZVQfRzQIOp+hCPjJZ9o0TSIfqhhDbZmhk83B8l2RqllvAu7KMA6DPLEd9+VrOUdJVuN
 LfmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=psBmx7otGHzUxzQtbSZBj+O8NlSiko82+8dkzZXxNo4=;
 b=dje5jQUIIJ4fCGbQMVppcyqdyyVv6Xr1u28nJyM5F0xWw12+lDQYZNi6Q7mJMs4ioQ
 nT6oYXU9PEpu9yVMQY6qynivijCkb8UZEcwIWmyg0O6rGw4Z6etlinla3bgKsCuoKZr3
 VaQN8mYelSbaQZ5b775IpNcQ+stKuiCHelXSgJL56AG0rB7qaqTGhY1tHoNRykJTaZrz
 hT+ZbNi7Ces3eMBzR+S0QAhVyiZD6uptVAGJSzc4wAWphv9h50ZLbOChqMV9AaiYWokr
 E+cGfoqhSnM4MyWL2KYnlMU58oM1Pwd7pz7/CR6rk5lx3Cqberc0Cv6h/03ih7wA4/gI
 s4Og==
X-Gm-Message-State: AOAM5322w+FwxxWIo9XfEGM6QSCE/VtP6ChWazCh3/eW6DAbo8fmIWL3
 qU9RTssPckd6oIGbS7Z5voHMbX4mzX6m70YD2Pl3CCf9a6RrKA==
X-Google-Smtp-Source: ABdhPJySTvsMv+N5v85P2mSsHvjegFB3xprD2Fge5mVYhsHrvjevO/X2spvGMOtKJ8+zuFNBZ5Ks7wN3CG5r9tSixmQ=
X-Received: by 2002:a2e:555:0:b0:253:c8a6:6dfa with SMTP id
 82-20020a2e0555000000b00253c8a66dfamr24360789ljf.240.1653640113938; Fri, 27
 May 2022 01:28:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAOgZG1wDC+5NPuXonD8Hp+PJa8g_fx8pa_A_dkcw_SM=k_y6Fw@mail.gmail.com>
In-Reply-To: <CAOgZG1wDC+5NPuXonD8Hp+PJa8g_fx8pa_A_dkcw_SM=k_y6Fw@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Fri, 27 May 2022 09:28:21 +0100
Message-ID: <CAHt6W4fD-gpfu2UWrTHZdFvPcn1=GuL93KmYX71MvOsQu0yYjQ@mail.gmail.com>
To: Walter Mitty <waltermitty121906@gmail.com>
Content-Type: multipart/alternative; boundary="00000000000093e67f05dffa1788"
Subject: Re: [Spice-devel] source code question: how hold_rcc works?
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

--00000000000093e67f05dffa1788
Content-Type: text/plain; charset="UTF-8"

Il giorno ven 27 mag 2022 alle ore 09:23 Walter Mitty <
waltermitty121906@gmail.com> ha scritto:

> Hi guys,
> I've been learning spice server source code for a few days. And there is a
> function named *hold_rcc *that makes me confused. I can't find its
> definition. I guess it is not a regular declaration. It may be generated
> from a template. I wanna figure out how it is declared and what it does?
> Could anyone give me some advice? Thanks in advance.
>
> Best wishes,
> Walter.
>

Hi,
   there are multiple definitions of that variable, all

red::shared_ptr<RedChannelClient> hold_rcc(rcc);

that's just a construction of a shared pointer "holding" rcc. It makes sure
the object is not released till the scope of hold_rcc.
In some cases it's possible that there are no strong pointers to these
objects so we make sure to have one.

Frediano

--00000000000093e67f05dffa1788
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">Il giorno ven 27 mag 2022 alle ore 09:23 Walter Mitty &lt;<a href=3D=
"mailto:waltermitty121906@gmail.com">waltermitty121906@gmail.com</a>&gt; ha=
 scritto:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr">Hi guys,<div>I&#39;ve been learning spice server source code for=
 a few days. And there is a function named <b>hold_rcc </b>that makes me co=
nfused. I can&#39;t find its definition. I guess it is not a regular declar=
ation. It may be generated from a template. I wanna figure out how it is de=
clared and what it does?=C2=A0 Could anyone give me some advice? Thanks in =
advance.</div><div><br></div><div>Best wishes,</div><div>Walter.</div></div=
></blockquote><div><br></div><div>Hi,</div><div>=C2=A0=C2=A0 there are mult=
iple definitions of that variable, all</div><div><br></div><div>red::shared=
_ptr&lt;RedChannelClient&gt; hold_rcc(rcc);</div><div><br></div><div>that&#=
39;s just a construction of a shared pointer &quot;holding&quot; rcc. It ma=
kes sure the object is not released till the scope of hold_rcc.</div><div>I=
n some cases it&#39;s possible that there are no strong pointers to these o=
bjects so we make sure to have one.<br></div><div><br></div><div>Frediano</=
div><div><br></div></div></div>

--00000000000093e67f05dffa1788--
