Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 59BD94E8920
	for <lists+spice-devel@lfdr.de>; Sun, 27 Mar 2022 19:43:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6720410E53E;
	Sun, 27 Mar 2022 17:43:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com
 [IPv6:2607:f8b0:4864:20::632])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF3A010E540
 for <spice-devel@lists.freedesktop.org>; Sun, 27 Mar 2022 17:43:27 +0000 (UTC)
Received: by mail-pl1-x632.google.com with SMTP id c23so12964398plo.0
 for <spice-devel@lists.freedesktop.org>; Sun, 27 Mar 2022 10:43:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bEb60TpIVqdUWdJ+QMmjQV99244W8GS6YOLo7+1NHjk=;
 b=Dv/SjDuW5YCc2B5IPGj09+v8N1jUdRtfZg1JyLtRQbJoc0wnP2Omme0GKgfExj7CWG
 amz4+yWXqg3WJU3Xqd5SFgGNU1yJ7kdoR1EfSEapNGxmPZTkMXO56veZlt+5fzEhYaWd
 A2W7nnR9RztTdu0UcRj2YxWn4/EF2Gc4EMsCJWi54ribDafzfUKzscXMCkqhRuxYe70+
 A7mSfv5fiXjlAfAQyyFeCvp2lNJ0Xxs4OERTSLUnkoj0yVCGCPHDb7C13qQQBsB8Dzin
 q3wPB8SUpqwH6j2DcbOtHXYkBbtih3FN4GR78KUFLqs0PaV2VsQ8/LN3U1XehYQhVcNO
 xVJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bEb60TpIVqdUWdJ+QMmjQV99244W8GS6YOLo7+1NHjk=;
 b=B+JyNZ8qU54IFuyGsNYy9xkTJhKQdayNNrwBFtUgvR5p+fRDOahlkGcHjlWhgiZV5p
 V5Y6R9aUg5uAxhVL5r7rTX9J5+TGKMM2L8KmP8QaeCUwzArDUbbj1NCbBLGh6XUd8Pbv
 2VqcMJMzCH1OcX2d4kYsNhVM23JWO4EXSZxVkIym8T9qG9MJXjeVEm4Xbi+evrw5TAb8
 VEe4sod9fCqT/XyvodmbxN21HTMReU7uyLBHzM6ZADNROJtfaTtAq/+STOWekdDdvT6H
 8MOCMqvNqDc5oJk9x3Qgges3OZbWtsBWCFrT7kNandM+TaXFBhyGvzeVvHF95b13y2fI
 65xw==
X-Gm-Message-State: AOAM532plndcZ6f+plfd/xkHcS8lbnEBr48mWBJMQu5s2421oifvv2du
 tiyN69fIXL/SaQVglmEjtiLoW8AWzWkpA5sYnLDo66X+
X-Google-Smtp-Source: ABdhPJwLNgKpUtUg4On3Pf8/9BkPCXYbx49dPwjFlQvwn9VAzxNrjy2OD/8ROvs3KzFCeTRXZZnurQ9CVToQRjyjfqI=
X-Received: by 2002:a17:902:d508:b0:154:2f99:a531 with SMTP id
 b8-20020a170902d50800b001542f99a531mr22684203plg.133.1648403007327; Sun, 27
 Mar 2022 10:43:27 -0700 (PDT)
MIME-Version: 1.0
References: <095C03F4-EA2B-4F17-AB4F-E24A4EBB0BE1@gmail.com>
In-Reply-To: <095C03F4-EA2B-4F17-AB4F-E24A4EBB0BE1@gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Sun, 27 Mar 2022 18:43:16 +0100
Message-ID: <CAHt6W4cgChD_X+u=g69Hn3c+HW3egG0C=2uh6OuO3=AP4Y4Uxw@mail.gmail.com>
To: Walter Mitty <waltermitty121906@gmail.com>
Content-Type: multipart/alternative; boundary="000000000000b2d28305db36bb4c"
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

--000000000000b2d28305db36bb4c
Content-Type: text/plain; charset="UTF-8"

Hi,
  sorry for the late reply.
More than replacing, which would cause a regression, an idea would be to
add support for that new JPEG "dialect".
It seems to have some advantages and the features added would help (they
reduce network usage with similar processing costs).

Regards,
  Frediano


Il giorno mer 23 feb 2022 alle ore 05:57 Walter Mitty <
waltermitty121906@gmail.com> ha scritto:

> Is it a good idea to replace JPEG image compress with JPEG-XL?
>

--000000000000b2d28305db36bb4c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div>=C2=A0 sorry for the late reply.</div><=
div>More than replacing, which would cause a regression, an idea would be t=
o add support for that new JPEG &quot;dialect&quot;.</div><div>It seems to =
have some advantages and the features added would help (they reduce network=
 usage with similar processing costs).<br></div><div><br></div><div>Regards=
,<br></div><div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartm=
ail=3D"gmail_signature"><div dir=3D"ltr">=C2=A0 Frediano</div></div></div><=
br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">Il giorno mer 23 feb 2022 alle ore 05:57 Walter Mitty &lt;<a href=
=3D"mailto:waltermitty121906@gmail.com">waltermitty121906@gmail.com</a>&gt;=
 ha scritto:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Is =
it a good idea to replace JPEG image compress with JPEG-XL? <br>
</blockquote></div>

--000000000000b2d28305db36bb4c--
