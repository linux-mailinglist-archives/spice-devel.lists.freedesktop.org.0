Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 173B53E18F6
	for <lists+spice-devel@lfdr.de>; Thu,  5 Aug 2021 17:58:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02C136E7D2;
	Thu,  5 Aug 2021 15:58:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com
 [IPv6:2607:f8b0:4864:20::102e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2B426E7D2
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Aug 2021 15:58:45 +0000 (UTC)
Received: by mail-pj1-x102e.google.com with SMTP id
 pj14-20020a17090b4f4eb029017786cf98f9so10606314pjb.2
 for <spice-devel@lists.freedesktop.org>; Thu, 05 Aug 2021 08:58:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6dvaKpaNDFfaHRLPdnZ088RTXlqgwOnKIULET7LoBpw=;
 b=QDCllHkiMNRYfO0WSV8I9Y1FquSzu5C8pnVVUNo53XiexxUT/OTmV+SorsPXo1Yhv0
 V6dbodOmrZQOllGqY6XTo9Q+0fdBYj5Ki07TCsYafcIcFFvydUSPBJajUwpcINYZqub+
 89ymVt6k5WsohcW3PsDfMoz4OC7dOwbs9dROwdQmiepUg75RUryA1RydQHk5vwPlqX2X
 JYlmfW0n9XkkqR4qJAcVCZe3LmpH/vXuSA/YCGNWld6VgNPuy+zm5k1ywvCzTsy/N4sT
 XzbhNOTzqTaRIblev7Yb6XPlvTja+NPEKOAjErjQvrjlLfLRhGnLDmukWMurQU/z0oKp
 LBDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6dvaKpaNDFfaHRLPdnZ088RTXlqgwOnKIULET7LoBpw=;
 b=ZORCbBJuAValyF7Tb22QHkqZ3OG2T0ZBn5VbLlPoKrp5/r6irK3lbFljg3Q4DBBYQK
 XZ85YovlvkQEW+TNutecXzJht/EQnrw0PWW3iS+IsTcJv38wNg+II+DS2Oj9waeBtnPr
 cHP6CAM6K7VOwtDersRvQZcIwaIIHj/Ati/wlj4M7VRIButjr11IeNvkZfdChh7UQdQ0
 fYn8mF7W6fe74GLUdZ8GBlWNbxothFvD+TTE0nNbk+lU+l/4+NlMTMJ0KDwGLzHFzwZH
 7axQhgFOinzb0R4o+qtsKK0yT2QSPlJbgoL51ybq3xg7TcZuVCgxwPFDRAS2AboW+oHd
 Q+UQ==
X-Gm-Message-State: AOAM532LwBDgsC5zn9KWdn3vYM9vsHRFhF4sZZxe1XCvH7zCZDhCU36U
 Yn9/zvVq49zzXIBJjdid0K46H8jrBk9zUhvZgnE=
X-Google-Smtp-Source: ABdhPJxopSSe+imyYBGzlsPLDm2ThHbPoetUVCjhOsonCR0A+FoDsFF1t7yZxSjIt8oHEJs58uJ1KLOAmpNoJ67/Y/Y=
X-Received: by 2002:a17:90a:1d05:: with SMTP id
 c5mr14862196pjd.175.1628179125276; 
 Thu, 05 Aug 2021 08:58:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAOZVR5b9jnEY60tHyY5KBiZDyh7SG1z+RHrYfe3mWsFoDebWcg@mail.gmail.com>
 <CAHt6W4dfBC0iP3BbJy7_DaT_uczV9=HL4U4d4JO+WsLo1qOjpQ@mail.gmail.com>
 <CAOZVR5ZjgwCon380AYNBfjaUCQLg=1DaLPFDKSMEZU8KSjo9cQ@mail.gmail.com>
 <CAHt6W4eAEjwD_snU15pVY78BeOAKoJ1yWwt-zh7bXVX_cXo8Pg@mail.gmail.com>
In-Reply-To: <CAHt6W4eAEjwD_snU15pVY78BeOAKoJ1yWwt-zh7bXVX_cXo8Pg@mail.gmail.com>
From: Dunrong Huang <riegamaths@gmail.com>
Date: Thu, 5 Aug 2021 23:58:33 +0800
Message-ID: <CAOZVR5aBv6PaQbQh83NCnfudQ-eksAsOyrCGTVfs7j0TNzOFTQ@mail.gmail.com>
To: Frediano Ziglio <freddy77@gmail.com>
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: multipart/alternative; boundary="0000000000006494fb05c8d1fe2f"
Subject: Re: [Spice-devel] winspice: a windows spice server similar to
 x11spice
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

--0000000000006494fb05c8d1fe2f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Aug 5, 2021 at 6:25 PM Frediano Ziglio <freddy77@gmail.com> wrote:

> Hi,
>
> Il giorno lun 2 ago 2021 alle ore 15:22 Dunrong Huang <
> riegamaths@gmail.com> ha scritto:
>
>> Hi Frediano, thanks for you reply
>>
>> On Mon, Aug 2, 2021 at 8:14 PM Frediano Ziglio <freddy77@gmail.com>
>> wrote:
>>
>>> Il giorno dom 1 ago 2021 alle ore 16:07 Dunrong Huang <
>>> riegamaths@gmail.com> ha scritto:
>>>
>>>> Hello everyone,
>>>>
>>>>
>>> Hi Dunrong,
>>>
>>> Inspired by x11spice, i developed winspice, which provides windows
>>>> remote desktop access using the spice protocol.
>>>>
>>>>
>>> It sounds great!
>>>
>>> The source code is here:
>>>>   https://github.com/mathslinux/winspice
>>>>
>>>> Compiled binary file and related dll dependencies are here:
>>>>
>>>> https://github.com/mathslinux/winspice/releases/download/0.0.1-pre/win=
spice.zip
>>>>
>>>> The README file introduces some details of compiling and running.
>>>>
>>>> Because i use windows DXGI interface to get the display data, winspice
>>>> currently only supports windows 8 and above.
>>>>
>>>>
>>> Not much of an issue considering even Microsoft does not support Window=
s
>>> 7 anymore.
>>>
>>>
>>>> I have just started this project, and there are still many
>>>> imperfections, such as no configurable ui interface, no sound support,=
 and
>>>> so on. If anyone can try this project and give me some feedback, I wil=
l be
>>>> very happy.
>>>>
>>>>
>>> I'll give it a try.
>>> Do you want space on our gitlab ?
>>>
>> Yes, if you agree, I am very happy to put it on gitlab=E3=80=82I just re=
gistered
>> a gitlab account on freenode using my email,  is there anything I need t=
o
>> do?
>>
>
> Created https://gitlab.freedesktop.org/spice/win32/winspice. Which
> e-mail/handle did you use to register so I can add you as a member?
>
> Thank you, My registered email is riegamaths@gmail.com.

> Regards,
>   Frediano
>


--=20
Best Regards,

Dunrong Huang

Homepage: http://mathslinux.org

--0000000000006494fb05c8d1fe2f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Thu, Aug 5, 2021 at 6:25 PM Frediano Ziglio &lt=
;<a href=3D"mailto:freddy77@gmail.com">freddy77@gmail.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><=
div>Hi,<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">Il giorno lun 2 ago 2021 alle ore 15:22 Dunrong Huang &lt;<a hre=
f=3D"mailto:riegamaths@gmail.com" target=3D"_blank">riegamaths@gmail.com</a=
>&gt; ha scritto:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div dir=3D"ltr"><div>Hi Frediano, thanks for you reply</div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 2, 202=
1 at 8:14 PM Frediano Ziglio &lt;<a href=3D"mailto:freddy77@gmail.com" targ=
et=3D"_blank">freddy77@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">Il giorno dom 1 ago 2021 alle ore 1=
6:07 Dunrong Huang &lt;<a href=3D"mailto:riegamaths@gmail.com" target=3D"_b=
lank">riegamaths@gmail.com</a>&gt; ha scritto:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello everyone,<br><=
br></div></div></blockquote><div><br></div><div>Hi Dunrong, <br></div><div>=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr=
"><div>Inspired by x11spice, i developed winspice, which provides windows r=
emote desktop access using the spice protocol. <br><br></div></div></blockq=
uote><div><br></div><div>It sounds great!</div><div> <br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>The source code=
 is here:<br>=C2=A0 <a href=3D"https://github.com/mathslinux/winspice" targ=
et=3D"_blank">https://github.com/mathslinux/winspice</a><br><br>Compiled bi=
nary file and related dll dependencies are here:<br><a href=3D"https://gith=
ub.com/mathslinux/winspice/releases/download/0.0.1-pre/winspice.zip" target=
=3D"_blank">https://github.com/mathslinux/winspice/releases/download/0.0.1-=
pre/winspice.zip</a><br><br>The README file introduces some details of comp=
iling and running.<br><br>Because i use windows DXGI interface to get the d=
isplay data, winspice currently only supports windows 8 and above.<br><br><=
/div></div></blockquote><div><br></div><div>Not much of an issue considerin=
g even Microsoft does not support Windows 7 anymore.<br></div><div>=C2=A0</=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div=
>I have just started this project, and there are still many imperfections, =
such as no configurable ui interface, no sound support, and so on. If anyon=
e can try this project and give me some feedback, I will be very happy.<br>=
<br></div></div></blockquote><div><br></div><div>I&#39;ll give it a try.<br=
></div><div>Do you want space on our gitlab ?</div></div></div></blockquote=
><div>Yes, if you agree, I am very happy to put it on gitlab=E3=80=82I just=
 registered a gitlab account on freenode using my email,=C2=A0 is there any=
thing I need to do?</div></div></div></blockquote><div><br></div><div>Creat=
ed <a href=3D"https://gitlab.freedesktop.org/spice/win32/winspice" target=
=3D"_blank">https://gitlab.freedesktop.org/spice/win32/winspice</a>. Which =
e-mail/handle did you use to register so I can add you as a member?<br></di=
v><div><br></div></div></div></blockquote><div>Thank you, My registered ema=
il is=C2=A0<a href=3D"mailto:riegamaths@gmail.com">riegamaths@gmail.com</a>=
.</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><=
div class=3D"gmail_quote"><div></div><div>Regards,<br></div><div>=C2=A0 Fre=
diano <br></div></div></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr">Best Regards,<div><br>Dunrong H=
uang=C2=A0<div><br><div>Homepage: <a href=3D"http://mathslinux.org" target=
=3D"_blank">http://mathslinux.org</a></div></div></div></div></div></div>

--0000000000006494fb05c8d1fe2f--
