Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FBF77014B3
	for <lists+spice-devel@lfdr.de>; Sat, 13 May 2023 08:44:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76B5310E03C;
	Sat, 13 May 2023 06:44:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oa1-x2d.google.com (mail-oa1-x2d.google.com
 [IPv6:2001:4860:4864:20::2d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 144E310E03C
 for <spice-devel@lists.freedesktop.org>; Sat, 13 May 2023 06:44:06 +0000 (UTC)
Received: by mail-oa1-x2d.google.com with SMTP id
 586e51a60fabf-1929818d7faso61921749fac.0
 for <spice-devel@lists.freedesktop.org>; Fri, 12 May 2023 23:44:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1683960246; x=1686552246;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=n+lDoPP9+h3pb+YVtnypsxL3iy6dJ7IzonvpYKlHiTE=;
 b=i6eO9y4tneW9OEksa36gemy8pCPIBCPei//4A8ch9sHQUqK+t0bNGVZDiFPvMneKcI
 7sF8/ApsLDkpVnxV993aHZ6p7PpWjt8EUH6DzHMOfD/nb4s+POTOlAm+LY7F16H3iaea
 WFpeYB1zZICQ12X6apwlEFxS68IhT/sgysMGJzOG2KzUt+/QdGc2G+wrITMnFF0EOlr+
 dFflcf+nQJrszMPRt7oMAz9hxNG4qblYh3wxgyghm9gr7BCrM+kHPiN/4s5NjHluLYyL
 hqTskjPEh4I174Dl+jJVkBkh2SSzIJciEXPpiwDk+bnLxSKL4CbzklosqWVrFpa3Yu9t
 eM7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683960246; x=1686552246;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=n+lDoPP9+h3pb+YVtnypsxL3iy6dJ7IzonvpYKlHiTE=;
 b=XpnZAJK4kOd20XuBrq8evbwrIEGhyHgP+8zTgjBEdOBOG8eT3Ff0+HDUitboS+hPBZ
 KX7t1iRScPgH4r2jFxXgha/xnmnLQjKhYD3+7ARlCzYuq7Y9fiIRMgFW/uzF7j2maWUf
 7oaELB/jBR2B4X7jgade8aSy5RzoUOhjSFaJ9GP8be0FNAfrnzC5GUOoE+UD3KuRPEQK
 PHB3waeq4wVJsdGhtm4e69v2tNOjv6cBAuuxDi2mM6vyCMvlVeO3pfaAvO1Cw0KzBqth
 E468D4AnwxdxdBDQD+i4BDpJxtWkyid3uozMVciyQN+qTTD9rrKggnVY9/Ww0FqjjH2Q
 +e2Q==
X-Gm-Message-State: AC+VfDxkR/noJZEp1hN/tjAINy5pkoRRIJanluLGPuW5IpyKFGHwzADv
 KXAzX5cHvFc/UndhA4BN6/B2De/p5x0T47N/bI8=
X-Google-Smtp-Source: ACHHUZ4oF6bz6I7qO6danHF9WU8/iC+HhCyKNzKbrUp4Xgcq0X1qJWxNZ4syXlkyvZMzAf/XTYuh8y3LjoEW2HNm0+A=
X-Received: by 2002:aca:3b07:0:b0:394:5dc9:d097 with SMTP id
 i7-20020aca3b07000000b003945dc9d097mr3481980oia.3.1683960245611; Fri, 12 May
 2023 23:44:05 -0700 (PDT)
MIME-Version: 1.0
References: <tencent_0CBC5ED1BF460F6643035478784A9EBB1F05@qq.com>
In-Reply-To: <tencent_0CBC5ED1BF460F6643035478784A9EBB1F05@qq.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Sat, 13 May 2023 07:43:55 +0100
Message-ID: <CAHt6W4djL7cC8Bq=n-CeucTmYwFKMjfSe_87=7_fv3rxerbM0Q@mail.gmail.com>
To: 171548156 <tangyla@qq.com>
Content-Type: multipart/alternative; boundary="00000000000041727e05fb8d8cd5"
Subject: Re: [Spice-devel] Does spice protocol (client/server) support
 serial port redirection
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--00000000000041727e05fb8d8cd5
Content-Type: text/plain; charset="UTF-8"

On Fri, 12 May 2023, 10:47 171548156, <tangyla@qq.com> wrote:

> Hello:
>
> Does spice protocol (client/server) support serial port redirection?
>
> if supported, can you give me a example?
>
>
> Look forward to your reply. Thank you.
>

No, it does not support serial port redirection. If the serial is usb you
can redirect the device.

Regards,
Frediano

--00000000000041727e05fb8d8cd5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Fri, 12 May 2023, 10:47 171548156, &lt;<a href=3D"mailto:ta=
ngyla@qq.com">tangyla@qq.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex"><div><p style=3D"box-sizing:border-box;margin:0px;padding:0px;colo=
r:rgb(16,18,20);font-size:var(--main-font-size);line-height:21px;white-spac=
e:pre-wrap;font-family:&quot;PingFang SC&quot;,&quot;Segoe UI&quot;,Arial,&=
quot;Microsoft YaHei&quot;,=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91,=E5=AE=8B=
=E4=BD=93,&quot;Malgun Gothic&quot;,sans-serif"><span style=3D"box-sizing:b=
order-box;font-size:var(--main-font-size);line-height:21px;display:inline">=
Hello:
</span></p><p style=3D"box-sizing:border-box;margin:0px;padding:0px;color:r=
gb(16,18,20);font-size:var(--main-font-size);line-height:21px;white-space:p=
re-wrap;font-family:&quot;PingFang SC&quot;,&quot;Segoe UI&quot;,Arial,&quo=
t;Microsoft YaHei&quot;,=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91,=E5=AE=8B=E4=
=BD=93,&quot;Malgun Gothic&quot;,sans-serif"><span style=3D"box-sizing:bord=
er-box;font-size:var(--main-font-size);line-height:21px;display:inline">   =
      Does spice protocol (client/server) support serial port redirection?
</span></p><p style=3D"box-sizing:border-box;margin:0px;padding:0px;color:r=
gb(16,18,20);font-size:var(--main-font-size);line-height:21px;white-space:p=
re-wrap;font-family:&quot;PingFang SC&quot;,&quot;Segoe UI&quot;,Arial,&quo=
t;Microsoft YaHei&quot;,=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91,=E5=AE=8B=E4=
=BD=93,&quot;Malgun Gothic&quot;,sans-serif"><span style=3D"box-sizing:bord=
er-box;font-size:var(--main-font-size);line-height:21px;display:inline">   =
      if supported, can you give me a example?</span></p><p style=3D"box-si=
zing:border-box;margin:0px;padding:0px;color:rgb(16,18,20);font-size:var(--=
main-font-size);line-height:21px;white-space:pre-wrap;font-family:&quot;Pin=
gFang SC&quot;,&quot;Segoe UI&quot;,Arial,&quot;Microsoft YaHei&quot;,=E5=
=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91,=E5=AE=8B=E4=BD=93,&quot;Malgun Gothic&qu=
ot;,sans-serif"><span style=3D"box-sizing:border-box;font-size:var(--main-f=
ont-size);line-height:21px;display:inline"><br></span></p><p style=3D"box-s=
izing:border-box;margin:0px;padding:0px;color:rgb(16,18,20);font-size:var(-=
-main-font-size);line-height:21px;white-space:pre-wrap;font-family:&quot;Pi=
ngFang SC&quot;,&quot;Segoe UI&quot;,Arial,&quot;Microsoft YaHei&quot;,=E5=
=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91,=E5=AE=8B=E4=BD=93,&quot;Malgun Gothic&qu=
ot;,sans-serif"><span style=3D"box-sizing:border-box;font-size:var(--main-f=
ont-size);line-height:21px;display:inline">                                =
                               Look forward to your reply. Thank you.</span=
></p></div></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D=
"auto">No, it does not support serial port redirection. If the serial is us=
b you can redirect the device.=C2=A0</div><div dir=3D"auto"><br></div><div =
dir=3D"auto">Regards,</div><div dir=3D"auto">Frediano=C2=A0</div><div dir=
=3D"auto"></div></div>

--00000000000041727e05fb8d8cd5--
