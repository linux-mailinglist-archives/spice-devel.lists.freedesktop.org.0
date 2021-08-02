Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF26B3DD573
	for <lists+spice-devel@lfdr.de>; Mon,  2 Aug 2021 14:14:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9B4A89312;
	Mon,  2 Aug 2021 12:14:55 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com
 [IPv6:2a00:1450:4864:20::12b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D38E89312
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Aug 2021 12:14:54 +0000 (UTC)
Received: by mail-lf1-x12b.google.com with SMTP id m13so33279431lfg.13
 for <spice-devel@lists.freedesktop.org>; Mon, 02 Aug 2021 05:14:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=imLn4SH8gRpJXCcrp5/FxwYTdGPRitPF5bd6S4YrooY=;
 b=EAyit7ZMiJQ1hNkyPtbQXRpb6e4vBQAZ6DX06oxjXgiosX2VKTehRpMhwBIfe55ouH
 rvySGrhBXrXnDxhV0vWOS+3uqggbjjKkklXnClioElZtjoZZMCr5q67ArlXY84hrp7fG
 cWoYssbENfog1ubOLInC3IhwjrpxXD6ChkAepmYjU0bz/qBxNfQhXT89f3iQzSXaRko5
 MGna6DJcMsS5iuwqCmJHWNWbCVe2CA/1z39eT9BNM9DhVmYbZ2OKOYJKwYp8R0BlgA5B
 IeYqz4N9WL9F9+3ZBiQrTqt7qFOs+f8uvL3pb6+2U/yBFETq4yDTD2AX+MpwhNnD0NzG
 cN2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=imLn4SH8gRpJXCcrp5/FxwYTdGPRitPF5bd6S4YrooY=;
 b=GB1LVu7V2ouslsnPfi4GogVCRVuw3XHOCsgpgcUnYCOxmd8+W9XqyrzyXDPkmkirqg
 DXGKkqMFBkJ3psimWKTmrc7HlmE2dumrhYY87Mb4ecFL6s/x2GunS0lVBYVppMJOG3D1
 zxEHmadLjSpNp9kXcc9cgSIyRQISJ0AzVmpFnC09lPqPRhMArF4UnBnvMCKRy7378oqN
 B/yMR1j66o074TAB382LLfQrQm7Wzu8lc0EfrPEc37U6UFQ1kWfdGqM5AUwkefRq/I4H
 y176mg6f/F61CB9hZsqRQ05LqwkeHEqAeBwR7acP/Cdr4mojsIy8qCfpGXEvTrskBv44
 O7vw==
X-Gm-Message-State: AOAM533f/aq12HIhi8gCS9l4RNI9JN20tRgLCzADbFJBnNeMRmR1+ylf
 HdQpb1YH6OKRuDXFRqnvZDhxrOonQrZDoqHI3UM=
X-Google-Smtp-Source: ABdhPJwBpPNurWLEHNL5z0RWsju6sSIyRmmwpKfuc3DyNnssRnT32GksrQyXgE3NOqfFRKphXChtdnWUYfOisnzEXys=
X-Received: by 2002:a05:6512:4027:: with SMTP id
 br39mr12394101lfb.656.1627906491250; 
 Mon, 02 Aug 2021 05:14:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAOZVR5b9jnEY60tHyY5KBiZDyh7SG1z+RHrYfe3mWsFoDebWcg@mail.gmail.com>
In-Reply-To: <CAOZVR5b9jnEY60tHyY5KBiZDyh7SG1z+RHrYfe3mWsFoDebWcg@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Mon, 2 Aug 2021 13:14:40 +0100
Message-ID: <CAHt6W4dfBC0iP3BbJy7_DaT_uczV9=HL4U4d4JO+WsLo1qOjpQ@mail.gmail.com>
To: Dunrong Huang <riegamaths@gmail.com>
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: multipart/alternative; boundary="000000000000237c3505c8928485"
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

--000000000000237c3505c8928485
Content-Type: text/plain; charset="UTF-8"

Il giorno dom 1 ago 2021 alle ore 16:07 Dunrong Huang <riegamaths@gmail.com>
ha scritto:

> Hello everyone,
>
>
Hi Dunrong,

Inspired by x11spice, i developed winspice, which provides windows remote
> desktop access using the spice protocol.
>
>
It sounds great!

The source code is here:
>   https://github.com/mathslinux/winspice
>
> Compiled binary file and related dll dependencies are here:
>
> https://github.com/mathslinux/winspice/releases/download/0.0.1-pre/winspice.zip
>
> The README file introduces some details of compiling and running.
>
> Because i use windows DXGI interface to get the display data, winspice
> currently only supports windows 8 and above.
>
>
Not much of an issue considering even Microsoft does not support Windows 7
anymore.


> I have just started this project, and there are still many imperfections,
> such as no configurable ui interface, no sound support, and so on. If
> anyone can try this project and give me some feedback, I will be very happy.
>
>
I'll give it a try.
Do you want space on our gitlab ?

-- 
> Best Regards,
>
> Dunrong Huang
>
> Frediano

--000000000000237c3505c8928485
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">Il giorno dom 1 ago 2021 alle ore 16:07 Dunrong Huang &lt;<a href=3D=
"mailto:riegamaths@gmail.com">riegamaths@gmail.com</a>&gt; ha scritto:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><di=
v>Hello everyone,<br><br></div></div></blockquote><div><br></div><div>Hi Du=
nrong, <br></div><div><br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr"><div>Inspired by x11spice, i developed winspice, wh=
ich provides windows remote desktop access using the spice protocol. <br><b=
r></div></div></blockquote><div><br></div><div>It sounds great!</div><div> =
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr=
"><div>The source code is here:<br>=C2=A0 <a href=3D"https://github.com/mat=
hslinux/winspice" target=3D"_blank">https://github.com/mathslinux/winspice<=
/a><br><br>Compiled binary file and related dll dependencies are here:<br><=
a href=3D"https://github.com/mathslinux/winspice/releases/download/0.0.1-pr=
e/winspice.zip" target=3D"_blank">https://github.com/mathslinux/winspice/re=
leases/download/0.0.1-pre/winspice.zip</a><br><br>The README file introduce=
s some details of compiling and running.<br><br>Because i use windows DXGI =
interface to get the display data, winspice currently only supports windows=
 8 and above.<br><br></div></div></blockquote><div><br></div><div>Not much =
of an issue considering even Microsoft does not support Windows 7 anymore.<=
br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr"><div>I have just started this project, and there are stil=
l many imperfections, such as no configurable ui interface, no sound suppor=
t, and so on. If anyone can try this project and give me some feedback, I w=
ill be very happy.<br><br></div></div></blockquote><div><br></div><div>I&#3=
9;ll give it a try.<br></div><div>Do you want space on our gitlab ?</div><d=
iv> <br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"ltr"><div></div>-- <br><div dir=3D"ltr"><div dir=3D"ltr">Best Regards,<div=
><br>Dunrong Huang=C2=A0<div><div><br></div></div></div></div></div></div><=
/blockquote><div>Frediano</div><div> <br></div></div></div>

--000000000000237c3505c8928485--
