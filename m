Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A890B3DDAD2
	for <lists+spice-devel@lfdr.de>; Mon,  2 Aug 2021 16:22:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A960489E35;
	Mon,  2 Aug 2021 14:22:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com
 [IPv6:2607:f8b0:4864:20::1036])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 097BA89E35
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Aug 2021 14:22:08 +0000 (UTC)
Received: by mail-pj1-x1036.google.com with SMTP id
 m10-20020a17090a34cab0290176b52c60ddso179906pjf.4
 for <spice-devel@lists.freedesktop.org>; Mon, 02 Aug 2021 07:22:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yrE3Hs2/E6RIvngjuOmbBk5K2j9q4jMsq8r8V9sKWeM=;
 b=H7lyU+RTdX5xPvYJ6WtSsI+fxvnqd76shKESmLRsxJta5boHzb2di8nr56ia8OlZ9/
 7nw0Np02Yhew+yeY0VIrCNS6Emp26dZ04iSf3B24jsc897D146J0jnyk0J2I430yDx6n
 8n7dQloZKjqEerEUFPnuDDopdEbWMSNBAQQrkR7NOsX6snzXRADlMM7wJNpMRb8fpKC5
 zfMC2/iJzvYqo9nNJyv1mRO2vMbQAPKbz/LCRHcOWaMoAPpk775/66mZmr0oM/ZEJ05p
 XH8S+Jp5kzM18TcBzvDNqGTzW2ozN8iGmyLiFtj0EN/m4zGTnSoqPgsl6V3tQTTd3GB/
 yCgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yrE3Hs2/E6RIvngjuOmbBk5K2j9q4jMsq8r8V9sKWeM=;
 b=herLzvm9GeA7ksbjGBcN7gsWSEIivM2T/H4RkMqrvsiOtd+tkhcSCQubGsZfI9aGB3
 4BwxFORaVcPNz/SgInOoCK8fZcpwN/zroDXSFEwNh8Ekoi9tCaq4TylknY0TsoH4+zzi
 EEdsFv5bQGFmu+Wo8pJ9qMdr5isAF49clETHGMpxJ3/At1UfY2bAY8eyMo6tSHyDesW+
 Bfva333KxsMdEhnngeUlLtAgsEkCUkYcLdK/SahB4ZgtS0UOI89wpwpTB7+/rMOgCbKV
 /l2h/IaURpPK5bA+aFDoTZA2QU90FcQZdTS8ZkXKWYE6K1spGa6l8OJI6LOI1iVwv5ro
 1DZQ==
X-Gm-Message-State: AOAM530CubCLGrDDRx3c2YQmlh7E8dQbYnDeuB5G8DnJL9kPgsJ94J3m
 Y5vNMCY9035Y4OHwirPLWm+AJZdwCWMEkRaTgno=
X-Google-Smtp-Source: ABdhPJzmf73pD5lUFWZQerbTRr2gwehM9wTi8IjMyEQxg0++IjJ7wJlZDA0+AYTbRB1Yx+3wwFfwB8jwSjKCpQ3KG38=
X-Received: by 2002:a65:4381:: with SMTP id m1mr3680406pgp.115.1627914128574; 
 Mon, 02 Aug 2021 07:22:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAOZVR5b9jnEY60tHyY5KBiZDyh7SG1z+RHrYfe3mWsFoDebWcg@mail.gmail.com>
 <CAHt6W4dfBC0iP3BbJy7_DaT_uczV9=HL4U4d4JO+WsLo1qOjpQ@mail.gmail.com>
In-Reply-To: <CAHt6W4dfBC0iP3BbJy7_DaT_uczV9=HL4U4d4JO+WsLo1qOjpQ@mail.gmail.com>
From: Dunrong Huang <riegamaths@gmail.com>
Date: Mon, 2 Aug 2021 22:21:57 +0800
Message-ID: <CAOZVR5ZjgwCon380AYNBfjaUCQLg=1DaLPFDKSMEZU8KSjo9cQ@mail.gmail.com>
To: Frediano Ziglio <freddy77@gmail.com>
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: multipart/alternative; boundary="0000000000005bce7205c8944b7b"
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

--0000000000005bce7205c8944b7b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Frediano, thanks for you reply

On Mon, Aug 2, 2021 at 8:14 PM Frediano Ziglio <freddy77@gmail.com> wrote:

> Il giorno dom 1 ago 2021 alle ore 16:07 Dunrong Huang <
> riegamaths@gmail.com> ha scritto:
>
>> Hello everyone,
>>
>>
> Hi Dunrong,
>
> Inspired by x11spice, i developed winspice, which provides windows remote
>> desktop access using the spice protocol.
>>
>>
> It sounds great!
>
> The source code is here:
>>   https://github.com/mathslinux/winspice
>>
>> Compiled binary file and related dll dependencies are here:
>>
>> https://github.com/mathslinux/winspice/releases/download/0.0.1-pre/winsp=
ice.zip
>>
>> The README file introduces some details of compiling and running.
>>
>> Because i use windows DXGI interface to get the display data, winspice
>> currently only supports windows 8 and above.
>>
>>
> Not much of an issue considering even Microsoft does not support Windows =
7
> anymore.
>
>
>> I have just started this project, and there are still many imperfections=
,
>> such as no configurable ui interface, no sound support, and so on. If
>> anyone can try this project and give me some feedback, I will be very ha=
ppy.
>>
>>
> I'll give it a try.
> Do you want space on our gitlab ?
>
Yes, if you agree, I am very happy to put it on gitlab=E3=80=82I just regis=
tered a
gitlab account on freenode using my email,  is there anything I need to do?

>
>
--=20
>> Best Regards,
>>
>> Dunrong Huang
>>
>> Frediano
>
>

--=20
Best Regards,

Dunrong Huang

Homepage: http://mathslinux.org

--0000000000005bce7205c8944b7b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Frediano, thanks for you reply</div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 2, 2021 =
at 8:14 PM Frediano Ziglio &lt;<a href=3D"mailto:freddy77@gmail.com">freddy=
77@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">Il giorno dom 1 ago 2021 alle ore 16:07 Dunrong Huang &l=
t;<a href=3D"mailto:riegamaths@gmail.com" target=3D"_blank">riegamaths@gmai=
l.com</a>&gt; ha scritto:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div>Hello everyone,<br><br></div></div></block=
quote><div><br></div><div>Hi Dunrong, <br></div><div><br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Inspired by x11=
spice, i developed winspice, which provides windows remote desktop access u=
sing the spice protocol. <br><br></div></div></blockquote><div><br></div><d=
iv>It sounds great!</div><div> <br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"ltr"><div>The source code is here:<br>=C2=A0 <a=
 href=3D"https://github.com/mathslinux/winspice" target=3D"_blank">https://=
github.com/mathslinux/winspice</a><br><br>Compiled binary file and related =
dll dependencies are here:<br><a href=3D"https://github.com/mathslinux/wins=
pice/releases/download/0.0.1-pre/winspice.zip" target=3D"_blank">https://gi=
thub.com/mathslinux/winspice/releases/download/0.0.1-pre/winspice.zip</a><b=
r><br>The README file introduces some details of compiling and running.<br>=
<br>Because i use windows DXGI interface to get the display data, winspice =
currently only supports windows 8 and above.<br><br></div></div></blockquot=
e><div><br></div><div>Not much of an issue considering even Microsoft does =
not support Windows 7 anymore.<br></div><div>=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>I have just started =
this project, and there are still many imperfections, such as no configurab=
le ui interface, no sound support, and so on. If anyone can try this projec=
t and give me some feedback, I will be very happy.<br><br></div></div></blo=
ckquote><div><br></div><div>I&#39;ll give it a try.<br></div><div>Do you wa=
nt space on our gitlab ?</div></div></div></blockquote><div>Yes, if you agr=
ee, I am very happy to put it on gitlab=E3=80=82I just registered a gitlab =
account on freenode using my email,=C2=A0 is there anything I need to do?</=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div=
 class=3D"gmail_quote"><div>=C2=A0<br></div></div></div></blockquote><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"=
gmail_quote"><div></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div dir=3D"ltr"><div></div>-- <br><div dir=3D"ltr"><div dir=3D"ltr">Best Re=
gards,<div><br>Dunrong Huang=C2=A0<div><div><br></div></div></div></div></d=
iv></div></blockquote><div>Frediano</div><div> <br></div></div></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr">Best Regards,<div><br>Dunrong H=
uang=C2=A0<div><br><div>Homepage: <a href=3D"http://mathslinux.org" target=
=3D"_blank">http://mathslinux.org</a></div></div></div></div></div></div>

--0000000000005bce7205c8944b7b--
