Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B55FC552B42
	for <lists+spice-devel@lfdr.de>; Tue, 21 Jun 2022 08:45:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D98B10F8BB;
	Tue, 21 Jun 2022 06:45:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oa1-x2e.google.com (mail-oa1-x2e.google.com
 [IPv6:2001:4860:4864:20::2e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE32810F8BB
 for <spice-devel@lists.freedesktop.org>; Tue, 21 Jun 2022 06:45:48 +0000 (UTC)
Received: by mail-oa1-x2e.google.com with SMTP id
 586e51a60fabf-101b4f9e825so12762168fac.5
 for <spice-devel@lists.freedesktop.org>; Mon, 20 Jun 2022 23:45:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VU/UU8FadpnpSM5Lv+rsfbeVpXFu4z02iJ8/508r8+o=;
 b=GK6Hv47Z3zPJsvfHIaA4YMrkahdh+v3Y4WqIV+fRq+J34uKVNkaabkX9BojXB48376
 Q9gLCKMcjjZlP5eJ94E7hjKyMJci+Qiso3KlHVaaSHhNEcDqvBE+6VuaRCZ2LSjfbaY3
 Jkkwo8vdAXZ47D0GbJAHWEm6+WzAR14GaJPqpCTmCHY+RdqED/dcYI27S6pixMiXwX4y
 poWy68paTU+4QyuPgZYZp7T3xFmRIXt35AKlmzod+acF5xR74x5tSt9y/5NNilbODniw
 whWU2ldCMUXhPv0JJDQbO8QQmTJh6dXMPLDp6pVloxbwII/LckGQlD7yrmkVPZYzbwJ+
 4xhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VU/UU8FadpnpSM5Lv+rsfbeVpXFu4z02iJ8/508r8+o=;
 b=mojFH+9OGreh9QJAhbnCNY8pMWncVKRFbOuA/bYAv16NIo/bYC5sABjZ4q+xPlqWLE
 Qs00z1FBziHOkODXRF2KkewTp180b7oQ0pFoIrJc7+TctD6celaEIUcD5ooXsT6dHoTg
 VoABMOjdUOMM2TQ4ZppGqOdxgFDVm3ExWKfdYkT4lkJXwiHzhqbXWpKeGudEqNYDrm/t
 3p01EZWEq/WOitsrY0jtiH0Ndgx81NQRtZHJDoD/fov2ZE6TORv0sy6AfZ2D2KtEUEoB
 1gZGhl28EY8vTqKjxJQRyLXPoDGSWHJb5qerKXVtRoHYtN+OnGUVyDc9VH5pHv9XGMUy
 eFYw==
X-Gm-Message-State: AJIora8vuxATZ17jbhM+Oaj/T5Af8wfW+HF+dNG7O3u92DIN/T969vJE
 snGmsWfzFutRhvu3rgfgmcSS5vdZPmDGPbtV/VY=
X-Google-Smtp-Source: AGRyM1tzPAU7vexfnGpTdFaYPLYaL7XkeADwgQYsCTJpPWeuJcDqrne2S9HwGhaaKqN41WVuAYL/ftQOrXp12ndp2vo=
X-Received: by 2002:a05:6870:96a7:b0:101:ae39:a0ee with SMTP id
 o39-20020a05687096a700b00101ae39a0eemr10286942oaq.179.1655793948066; Mon, 20
 Jun 2022 23:45:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAOgZG1y8zz4hkw-FPO4rcccveG8NUx4D73_A3Y9j3sW30NYBjw@mail.gmail.com>
 <CAOgZG1xSPMaGh-ttfviyzBo9zqia2qUgupfkA2-nmXT_i1OV1w@mail.gmail.com>
In-Reply-To: <CAOgZG1xSPMaGh-ttfviyzBo9zqia2qUgupfkA2-nmXT_i1OV1w@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Tue, 21 Jun 2022 07:45:35 +0100
Message-ID: <CAHt6W4dPanRV68yFV8jLO9tX=+6hs3Nm4VnPpoGLYzMAQ1ikkw@mail.gmail.com>
To: Walter Mitty <waltermitty121906@gmail.com>
Content-Type: multipart/alternative; boundary="00000000000018880c05e1ef9246"
Subject: Re: [Spice-devel] MOUSE rate down to 1/4 compare with bare metal PC,
 how to explain?
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

--00000000000018880c05e1ef9246
Content-Type: text/plain; charset="UTF-8"

Hi Walter,
  how do you get the frequency of the mouse? Which guest OS are you using?
Practically does the mouse move slowly or quickly?
Are you using the SPICE agent or not?

Regards,
  Frediano


Il giorno mar 21 giu 2022 alle ore 07:39 Walter Mitty <
waltermitty121906@gmail.com> ha scritto:

> Hello guys,
>
> I found if I turn off *agent-mouse* by the param: *agent-mouse=off*, the
> mouse report rate can improve to 50% ~ 80% of the bare metal.
> I'm still trying to make it as better as possible. If you have any
> suggestions, please let me know.
>
> Yours sincerely,
> Walter
>
> On Tue, Jun 7, 2022 at 6:39 PM Walter Mitty <waltermitty121906@gmail.com>
> wrote:
>
>> Hello guys,
>>
>> I'm using SPICE + QEMU as a solution for remote desktop. My guest OS is
>> running on the server side, not locally. And there is a thin-client to
>> access the guest OS. What makes me confused is, the mouse report rate is
>> down to *32hz , *which is *125hz* on a bare metal PC.
>>
>> I looked up the source code and I found that SPICE will call some API of
>> QEMU to replay the mouse events. But I haven't found the reason for this
>> issue. By the way, if I redirect the mouse device to the guest OS, the
>> mouse rate will be *125hz* , which is identical with a bare metal PC.
>>
>> Could anyone please give some advice? Thanks in advance.
>>
>> Regards,
>> Walter
>>
>

--00000000000018880c05e1ef9246
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Walter,</div><div>=C2=A0 how do you get the freque=
ncy of the mouse? Which guest OS are you using?</div><div>Practically does =
the mouse move slowly or quickly?<br></div><div>Are you using the SPICE age=
nt or not?<br></div><div><br></div><div>Regards,<br></div><div><div><div di=
r=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div=
 dir=3D"ltr">=C2=A0 Frediano</div></div></div><br></div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il giorno mar 21 gi=
u 2022 alle ore 07:39 Walter Mitty &lt;<a href=3D"mailto:waltermitty121906@=
gmail.com">waltermitty121906@gmail.com</a>&gt; ha scritto:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hello guys,<div=
><br><div>I found if I turn off=C2=A0<span style=3D"color:rgb(0,0,0);font-f=
amily:Times;font-size:medium"><b>agent-mouse</b> by the param:=C2=A0</span>=
<span style=3D"color:rgb(0,0,0);font-family:Times;font-size:medium"><b>agen=
t-mouse=3Doff</b>, the mouse report rate can improve to 50% ~ 80% of the ba=
re metal.=C2=A0</span></div><div><span style=3D"color:rgb(0,0,0);font-famil=
y:Times;font-size:medium">I&#39;m=C2=A0still trying to make it as better as=
 possible. If you have any suggestions, please let me know.</span></div><di=
v><span style=3D"color:rgb(0,0,0);font-family:Times;font-size:medium"><br><=
/span></div><div><span style=3D"color:rgb(0,0,0);font-family:Times;font-siz=
e:medium">Yours sincerely,</span></div><div><span style=3D"color:rgb(0,0,0)=
;font-family:Times;font-size:medium">Walter</span></div></div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jun 7=
, 2022 at 6:39 PM Walter Mitty &lt;<a href=3D"mailto:waltermitty121906@gmai=
l.com" target=3D"_blank">waltermitty121906@gmail.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hello =
guys,<div><br><div>I&#39;m using SPICE=C2=A0+ QEMU as a solution for remote=
 desktop. My guest OS is running on the server side, not locally. And there=
 is a thin-client to access the guest OS. What makes me confused is, the mo=
use report rate is down to <b>32hz , </b>which is <b>125hz</b> on a bare me=
tal PC.=C2=A0</div><div><br></div><div>I looked up the source code and I fo=
und that SPICE will call some API of QEMU to replay the mouse events. But I=
 haven&#39;t found the reason for this issue. By=C2=A0the way, if I redirec=
t the mouse device to the guest OS, the mouse rate will be <b>125hz</b>=C2=
=A0, which is identical with a bare metal PC.</div><div><br></div><div>Coul=
d anyone please give some advice? Thanks in advance.</div><div><br></div><d=
iv>Regards,</div><div>Walter</div></div></div>
</blockquote></div>
</blockquote></div>

--00000000000018880c05e1ef9246--
