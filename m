Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B06864E9071
	for <lists+spice-devel@lfdr.de>; Mon, 28 Mar 2022 10:48:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE4C610E640;
	Mon, 28 Mar 2022 08:48:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com
 [IPv6:2607:f8b0:4864:20::52c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D79DD10E0B7
 for <spice-devel@lists.freedesktop.org>; Mon, 28 Mar 2022 08:48:07 +0000 (UTC)
Received: by mail-pg1-x52c.google.com with SMTP id o8so11720525pgf.9
 for <spice-devel@lists.freedesktop.org>; Mon, 28 Mar 2022 01:48:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bUwkuKJkHhAyVBADrT3moNy2L0/CJkkX4O+oVLaSAt0=;
 b=n3F9198JCtjNHwW/Y1rIkNCytTWbzZ+1k6eH5qKyqi1ROWAags1nVVJJTkgys72MLC
 I20GySCQBErn1sXmtc8erWOJ7PSBpLaHPO6BYlqvz8X7+w0Pa8+iBXm4bHliLzhyzJm+
 R2OuOzrbBtKwertoEKe+cj7a4RpvOklMQpzZx5tf9/IR/QzpxBKbFgPrAroFqdgyXiuV
 w4x4jAcvrsSVACBEWxx20vDiwhmOPq/XDKlqI13WhNrEtCaKIs5H0+kYVDkuWzEjLEsn
 5uGi6QWaMbLSs5JyMeI5aKXIO1np+71BWh/7WC2avjzhqF65dG3Aml+KkczDKRGedmEx
 mqyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bUwkuKJkHhAyVBADrT3moNy2L0/CJkkX4O+oVLaSAt0=;
 b=2GzuHzoNsF3T1UwewuqEZR80hPYxvqACmVBZPIUe+vZ5XsQVxEfaN6hei41m8pdCLm
 cSzW21LpzCxmYLZaVNvUcybatRcE4YXF8n5isOH//miJ3iUHUt7x+DIyuSMhqVkON978
 42YyneMwjQdus230rpNjf2zKQPrFcDG3g8sN9tgVSRNvZLWeT68JdNqy9R+priONQlg7
 jd+L96qHk3tD4poZX5TLuFrryX8rDrsQyv7L5Mb+tzkk6i8+Iz6S4t/Yl3dHMNVS0JNR
 rpOxsVE/eg3nJklLCFiTp0RK95ei0p4h9/6/IXr1T08gcpCwZiJiuDTjVyVp+Zm96LLt
 HasA==
X-Gm-Message-State: AOAM532NbEf45afxSiEKvPCPpnXVbMU7Kc8tH5N5cA4VKq/lymHwwFWB
 cRz/hzJ/eY/U9uY+5yC+d6Y9HbWm1/JP3l0k+JdnNJQs
X-Google-Smtp-Source: ABdhPJzoZLhT2V5JrmgqbqQAX23gnJzb9nVUWyz+fEwWfQt/I0sFyCZwCIBJQXy1e01VGy08dmWCDTMdWJC28IAwNc4=
X-Received: by 2002:a65:6943:0:b0:376:333b:1025 with SMTP id
 w3-20020a656943000000b00376333b1025mr9562667pgq.164.1648457287457; Mon, 28
 Mar 2022 01:48:07 -0700 (PDT)
MIME-Version: 1.0
References: <095C03F4-EA2B-4F17-AB4F-E24A4EBB0BE1@gmail.com>
 <CAHt6W4cgChD_X+u=g69Hn3c+HW3egG0C=2uh6OuO3=AP4Y4Uxw@mail.gmail.com>
 <84F3A6D7-5E72-45EC-B449-CF4B68A3CB68@gmail.com>
In-Reply-To: <84F3A6D7-5E72-45EC-B449-CF4B68A3CB68@gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Mon, 28 Mar 2022 09:47:56 +0100
Message-ID: <CAHt6W4dX7BzL4ZaXs-Y4FAJ8FLbJv9OtUdbqiPNKXAO+ksA1VA@mail.gmail.com>
To: Walter Mitty <waltermitty121906@gmail.com>
Content-Type: multipart/alternative; boundary="0000000000000bde4105db435f50"
Subject: Re: [Spice-devel] Combine JPEG-XL with spice
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

--0000000000000bde4105db435f50
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Walter,
   which kind of improvement are you looking for exactly? Bandwidth?
Latency? CPU?

Regards,
  Frediano


Il giorno lun 28 mar 2022 alle ore 03:25 Walter Mitty <
waltermitty121906@gmail.com> ha scritto:

> Hello
> Thanks for your reply. Recently I=E2=80=99m working on a VDI project and =
trying to
> improve SPICE performance. It=E2=80=99s not easy. If I may, I=E2=80=99m t=
hinking if RedHat
> or some other entity can provide commercial tech service to help someone
> like me? I=E2=80=99m willing to pay for this.
>
> Regards,
> Walter.
>
>
> On Mar 28, 2022, at 01:43, Frediano Ziglio <freddy77@gmail.com> wrote:
>
> Hi,
>   sorry for the late reply.
> More than replacing, which would cause a regression, an idea would be to
> add support for that new JPEG "dialect".
> It seems to have some advantages and the features added would help (they
> reduce network usage with similar processing costs).
>
> Regards,
>   Frediano
>
>
> Il giorno mer 23 feb 2022 alle ore 05:57 Walter Mitty <
> waltermitty121906@gmail.com> ha scritto:
>
>> Is it a good idea to replace JPEG image compress with JPEG-XL?
>>
>
>

--0000000000000bde4105db435f50
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Walter,</div><div>=C2=A0=C2=A0 which kind of impro=
vement are you looking for exactly? Bandwidth? Latency? CPU?<br></div><div>=
<br></div><div>Regards,<br clear=3D"all"></div><div dir=3D"ltr"><div><div d=
ir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><di=
v dir=3D"ltr">=C2=A0 Frediano</div></div></div><br></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il giorno lun 28 mar 202=
2 alle ore 03:25 Walter Mitty &lt;<a href=3D"mailto:waltermitty121906@gmail=
.com">waltermitty121906@gmail.com</a>&gt; ha scritto:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div style=3D"overflow-wrap: break-wo=
rd;">Hello<div>Thanks for your reply. Recently I=E2=80=99m working on a VDI=
 project and trying to improve SPICE performance. It=E2=80=99s not easy. If=
 I may, I=E2=80=99m thinking if RedHat or some other entity can provide com=
mercial tech service to help someone like me? I=E2=80=99m willing to pay fo=
r this.</div><div><br></div><div>Regards,</div><div>Walter.</div><div><br><=
div><div><br><blockquote type=3D"cite"><div>On Mar 28, 2022, at 01:43, Fred=
iano Ziglio &lt;<a href=3D"mailto:freddy77@gmail.com" target=3D"_blank">fre=
ddy77@gmail.com</a>&gt; wrote:</div><br><div><div dir=3D"ltr"><div>Hi,</div=
><div>=C2=A0 sorry for the late reply.</div><div>More than replacing, which=
 would cause a regression, an idea would be to add support for that new JPE=
G &quot;dialect&quot;.</div><div>It seems to have some advantages and the f=
eatures added would help (they reduce network usage with similar processing=
 costs).<br></div><div><br></div><div>Regards,<br></div><div><div><div dir=
=3D"ltr"><div dir=3D"ltr">=C2=A0 Frediano</div></div></div><br></div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il gio=
rno mer 23 feb 2022 alle ore 05:57 Walter Mitty &lt;<a href=3D"mailto:walte=
rmitty121906@gmail.com" target=3D"_blank">waltermitty121906@gmail.com</a>&g=
t; ha scritto:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">I=
s it a good idea to replace JPEG image compress with JPEG-XL? <br>
</blockquote></div>
</div></blockquote></div><br></div></div></div></blockquote></div></div>

--0000000000000bde4105db435f50--
