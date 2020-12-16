Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 493662DBCC6
	for <lists+spice-devel@lfdr.de>; Wed, 16 Dec 2020 09:39:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D62C78967A;
	Wed, 16 Dec 2020 08:39:03 +0000 (UTC)
X-Original-To: spice-devel@freedesktop.org
Delivered-To: spice-devel@freedesktop.org
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com
 [IPv6:2607:f8b0:4864:20::1031])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 310E88967A
 for <spice-devel@freedesktop.org>; Wed, 16 Dec 2020 08:39:02 +0000 (UTC)
Received: by mail-pj1-x1031.google.com with SMTP id l23so1195310pjg.1
 for <spice-devel@freedesktop.org>; Wed, 16 Dec 2020 00:39:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=zoup-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yn/jK/rlPsrUWLGC38HOaH71HTC/AflbZwUnioWOhT4=;
 b=eryww42cGeKHjl+1ECxjv0pCjSMqdssw2kz02SS8sfsdZFCUWGw84By8n7cEhCnfX1
 UV89kksToajhAeFDxcOJOXRAYOjCIHcQs57OEDO1UylGPvzeV29tCLtXxhzw1FMsMe0D
 fjp03953nZyMayqqpz/t35iWlexnHnVNqby3AN+/T9vLkMZi2coeMw44XVXRKmkiyR/D
 9rsPsyJi1VsXigKIXm7gtlEmHNhk3W+o020SsxNGOuLj5NHhbDYQDayoT0EVkcnExOB3
 ukfXP5QMu5LILgERcRm17jluS/Pe2KX2F/r3b9z04XJRfpm4AyNiD5ILV4O3H8HG7u7J
 DnJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yn/jK/rlPsrUWLGC38HOaH71HTC/AflbZwUnioWOhT4=;
 b=MXyYyiXPCT3nJ27THtHhRdMt1rtEKua4cqriPy5eEuERYGxxG3OIxYTTcikreoj/bH
 ulmKHjPiTepyv9WsILG8cIH8f+uuky8bROWeZbEObTw1ijTzwQC8sF992/XnEX6hp9Gw
 g0MnAFMFCTXTBYVOJfmlKO0ig++EDdMhixFMJ9pS23/LOcVCDMUentCJqHk91ElChLWC
 ZSZghS/NvtfabYKIhTPjuEvJqlohi90bI6xXmnNy4ybfx4JMdH8qlhcuPrtElFioxb9Z
 ILXk/L83WljY3eeNCpvkL/aSYA9jny1nQgrUu/R4O4OxgN9h/ZStiQDcrIcbNTZ4SpvA
 d4dA==
X-Gm-Message-State: AOAM532Nawi11SZnKnwnarkeper4ZJt9+ZImdstqxjKRT0nk9zZcjMdF
 wSz1jkZ8yec9lyJ6WOlRdO44QplDaRiYKCsttx+OVQ==
X-Google-Smtp-Source: ABdhPJw6J4QnNx0dByhjh2FYtDaI8CQUBth/4NKyyghGlNsDUyxnFmXov3XL8w2Tqouhc5qI+xhyvwfE3fCF03oQQuA=
X-Received: by 2002:a17:90a:301:: with SMTP id 1mr2294151pje.86.1608107942307; 
 Wed, 16 Dec 2020 00:39:02 -0800 (PST)
MIME-Version: 1.0
References: <CAOvx4-3g+wSy6Qepf=37nUUhrhHd_hj9YJ5An3FuZLm16Sk-Dw@mail.gmail.com>
 <CAHt6W4fuV3t7h6U888MT9baXYmOG1fDvesFVrSELwnfMLH1hOA@mail.gmail.com>
 <CAOvx4-2ia=vBK1A6aArrJRPDY4XL_jWo5ewStfpnF47n6pHOrg@mail.gmail.com>
In-Reply-To: <CAOvx4-2ia=vBK1A6aArrJRPDY4XL_jWo5ewStfpnF47n6pHOrg@mail.gmail.com>
From: Armin Ranjbar <zoup@zoup.org>
Date: Wed, 16 Dec 2020 12:08:51 +0330
Message-ID: <CAOvx4-054uC3fXa3P-rvg2j4t0mM3qP3LYTbkt4Za5jObfP_rQ@mail.gmail.com>
To: Frediano Ziglio <freddy77@gmail.com>
Subject: Re: [Spice-devel] TLS + Letsencrypt doesn't work on Windows
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
Cc: spice-devel <spice-devel@freedesktop.org>
Content-Type: multipart/mixed; boundary="===============1995609643=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1995609643==
Content-Type: multipart/alternative; boundary="000000000000a982d905b690ce10"

--000000000000a982d905b690ce10
Content-Type: text/plain; charset="UTF-8"

Adding to this question, why is it even necessary to have the CA 'file'
somewhere when the certificate is signed? i think full chain is already
loaded into libvirt, and it should be possible to get the whole chain there
(as seems to happen with remote-viewer on linux)

---
Armin ranjbar



On Tue, Dec 15, 2020 at 7:57 PM Armin Ranjbar <zoup@zoup.org> wrote:

> On Tue, Dec 15, 2020 at 6:30 PM Frediano Ziglio <freddy77@gmail.com>
> wrote:
>
>>
>> Sure the C:\ca-file.pem contains the CA certificate for Let's Encrypt ?
>>
>>
> Dear Frediano,
> Yes definitely, it verifies with openssl -verify .
>
>
>

--000000000000a982d905b690ce10
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Adding to this question, why is it even necessary to have =
the CA &#39;file&#39; somewhere when the certificate is signed? i think ful=
l chain is already loaded into libvirt, and it should be possible to get th=
e whole chain there (as seems to happen with remote-viewer on linux)<div><b=
r><div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gm=
ail_signature"><div dir=3D"ltr">---<br>Armin ranjbar<br><div><br></div></di=
v></div></div><br></div></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, Dec 15, 2020 at 7:57 PM Armin Ranjbar=
 &lt;<a href=3D"mailto:zoup@zoup.org">zoup@zoup.org</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div di=
r=3D"ltr">On Tue, Dec 15, 2020 at 6:30 PM Frediano Ziglio &lt;<a href=3D"ma=
ilto:freddy77@gmail.com" target=3D"_blank">freddy77@gmail.com</a>&gt; wrote=
:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><br>
Sure the C:\ca-file.pem contains the CA certificate for Let&#39;s Encrypt ?=
<br>
<br>
</blockquote><div><br></div><div>Dear Frediano,</div><div>Yes definitely, i=
t verifies with openssl -verify .</div><div><br></div><div>=C2=A0</div></di=
v></div>
</blockquote></div>

--000000000000a982d905b690ce10--

--===============1995609643==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1995609643==--
