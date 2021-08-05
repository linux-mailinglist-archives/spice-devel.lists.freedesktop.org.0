Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EB9D3E129A
	for <lists+spice-devel@lfdr.de>; Thu,  5 Aug 2021 12:25:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F30D36E51A;
	Thu,  5 Aug 2021 10:25:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com
 [IPv6:2a00:1450:4864:20::12b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D92C6E51A
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Aug 2021 10:25:53 +0000 (UTC)
Received: by mail-lf1-x12b.google.com with SMTP id u3so10054511lff.9
 for <spice-devel@lists.freedesktop.org>; Thu, 05 Aug 2021 03:25:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wnsb47YAxFgegvVgxCEbhc76aci0K1RmFkM4TtNO/Mk=;
 b=qjIw6GkCQY+mB7TU3fyjLuSiOYhniOmWz5zGOxCMmmmRbna413hEC4MNOsLUELI6JU
 tm4x4ENexlk/chSUSnUzPpOvrKYn85Bu99+E4bL4VQt+FJIMV3+8DkmiN3aOWek1nPK+
 7XZ7ZEkoq4paCt6F74a/79okMgaKGjyA+PqpiuicDGq/mQqTgeg7kc9Royi8B0XOtIeJ
 uJYVMuwKCDVDlkaSzaRIckHSibqdWdI2IuoAUCjur4uJe9f6mttmKQhz5oQVi1LYMx41
 5q3xl8bwsQ+4tlNsJb9e+9cGV4UBgFBLd6OICE4rzNnQPIpDiI2O6+AOedICyHT75NCz
 ownw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wnsb47YAxFgegvVgxCEbhc76aci0K1RmFkM4TtNO/Mk=;
 b=YtKfJzfdR4O8QHC9Wjn4L6lyKmm5ujyS2JWlsa2PxhWg0DQCOUfwHUEVYy++SE/2Np
 1yYLR/H3sNmJ3PiDqjtwoSMmINU5qsChkhr41er3YB8SmOJrYQUO+1ERIUeFDTHdmoOP
 0VK9L/IWnYz7OA41O0aGBvGmfrINCft86wNwrwiTYhjLUsKj7OCmYY4ZNPuJWTJrqm3r
 Xn6lWklg8ShnzkDP0uPdYZePJ6xupHFfcf5iBbLYs/0hywKRU+yrP1RlsJULIAsYFH1i
 roUPVEbUlLhi9pKhItLj6GMR7Axd60hUiRZYLi1MW+ESkY+GkmYrbtgQIYnIxTzZfszO
 zbTw==
X-Gm-Message-State: AOAM5308dgxNoGhh/H8kVvUZINsbOm6My97Hic3iKUZuaWc5BM8RenNF
 6fUwNQsCX0HgXoCJOE4BC7Qtu5VwV/QM/vDnDDs=
X-Google-Smtp-Source: ABdhPJx+Onk2ALoNn8l5u5WfSWokg98WmVAVgngVgsi+H58rB4R7zgJv8LZxLUiqGkSLtNh+bgGuLLrbTMk4DJTwodU=
X-Received: by 2002:ac2:46fb:: with SMTP id q27mr2975259lfo.209.1628159151600; 
 Thu, 05 Aug 2021 03:25:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAOZVR5b9jnEY60tHyY5KBiZDyh7SG1z+RHrYfe3mWsFoDebWcg@mail.gmail.com>
 <CAHt6W4dfBC0iP3BbJy7_DaT_uczV9=HL4U4d4JO+WsLo1qOjpQ@mail.gmail.com>
 <CAOZVR5ZjgwCon380AYNBfjaUCQLg=1DaLPFDKSMEZU8KSjo9cQ@mail.gmail.com>
In-Reply-To: <CAOZVR5ZjgwCon380AYNBfjaUCQLg=1DaLPFDKSMEZU8KSjo9cQ@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Thu, 5 Aug 2021 11:25:40 +0100
Message-ID: <CAHt6W4eAEjwD_snU15pVY78BeOAKoJ1yWwt-zh7bXVX_cXo8Pg@mail.gmail.com>
To: Dunrong Huang <riegamaths@gmail.com>
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: multipart/alternative; boundary="000000000000de765e05c8cd5783"
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

--000000000000de765e05c8cd5783
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Il giorno lun 2 ago 2021 alle ore 15:22 Dunrong Huang <riegamaths@gmail.com=
>
ha scritto:

> Hi Frediano, thanks for you reply
>
> On Mon, Aug 2, 2021 at 8:14 PM Frediano Ziglio <freddy77@gmail.com> wrote=
:
>
>> Il giorno dom 1 ago 2021 alle ore 16:07 Dunrong Huang <
>> riegamaths@gmail.com> ha scritto:
>>
>>> Hello everyone,
>>>
>>>
>> Hi Dunrong,
>>
>> Inspired by x11spice, i developed winspice, which provides windows remot=
e
>>> desktop access using the spice protocol.
>>>
>>>
>> It sounds great!
>>
>> The source code is here:
>>>   https://github.com/mathslinux/winspice
>>>
>>> Compiled binary file and related dll dependencies are here:
>>>
>>> https://github.com/mathslinux/winspice/releases/download/0.0.1-pre/wins=
pice.zip
>>>
>>> The README file introduces some details of compiling and running.
>>>
>>> Because i use windows DXGI interface to get the display data, winspice
>>> currently only supports windows 8 and above.
>>>
>>>
>> Not much of an issue considering even Microsoft does not support Windows
>> 7 anymore.
>>
>>
>>> I have just started this project, and there are still many
>>> imperfections, such as no configurable ui interface, no sound support, =
and
>>> so on. If anyone can try this project and give me some feedback, I will=
 be
>>> very happy.
>>>
>>>
>> I'll give it a try.
>> Do you want space on our gitlab ?
>>
> Yes, if you agree, I am very happy to put it on gitlab=E3=80=82I just reg=
istered a
> gitlab account on freenode using my email,  is there anything I need to d=
o?
>

Created https://gitlab.freedesktop.org/spice/win32/winspice. Which
e-mail/handle did you use to register so I can add you as a member?

Regards,
  Frediano

--000000000000de765e05c8cd5783
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,<br></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">Il giorno lun 2 ago 2021 alle ore 15:22 Dunro=
ng Huang &lt;<a href=3D"mailto:riegamaths@gmail.com">riegamaths@gmail.com</=
a>&gt; ha scritto:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr"><div>Hi Frediano, thanks for you reply</div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 2, 20=
21 at 8:14 PM Frediano Ziglio &lt;<a href=3D"mailto:freddy77@gmail.com" tar=
get=3D"_blank">freddy77@gmail.com</a>&gt; wrote:<br></div><blockquote class=
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
ed <a href=3D"https://gitlab.freedesktop.org/spice/win32/winspice">https://=
gitlab.freedesktop.org/spice/win32/winspice</a>. Which e-mail/handle did yo=
u use to register so I can add you as a member?<br></div><div><br></div><di=
v>Regards,<br></div><div>=C2=A0 Frediano <br></div></div></div>

--000000000000de765e05c8cd5783--
