Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B2D1138DC3
	for <lists+spice-devel@lfdr.de>; Mon, 13 Jan 2020 10:28:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5569489EB4;
	Mon, 13 Jan 2020 09:27:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yw1-xc34.google.com (mail-yw1-xc34.google.com
 [IPv6:2607:f8b0:4864:20::c34])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69F5A89EB4
 for <spice-devel@lists.freedesktop.org>; Mon, 13 Jan 2020 09:27:57 +0000 (UTC)
Received: by mail-yw1-xc34.google.com with SMTP id i126so5556701ywe.7
 for <spice-devel@lists.freedesktop.org>; Mon, 13 Jan 2020 01:27:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JGmEiLgKJ2sz0ConIXFYC9B0BQFVwEJ26QeQWcMi/2E=;
 b=nYe50peYf/0XTaqhQBWU8aHeRZ4xeK7vCm25woEo+HQFnK1FSVTHXXk9Ia4yVy7cDH
 NCyENlHwJgRoHfxkv7OS3wjcePm1AwDi+C10HGd54irOTzlgWNJHNykduuTmJxU6hDZy
 ZoyNaQs3iChILJeWEFNGkWeco/3qO/M6LvQNMIjItiKwXR/ZFWbA3HAFHeTY0czVI+FT
 uagBRQCBiCcZ6snAEVhKTI5d4bcAu/QyZhSWv4cbRe/KTM/cJyPEtUF5W5+OcigEWWEo
 ufmAGawqSjzQ/VqzPgI87yx4IovwIOf9IzLmucQFbiUVYA9Gi5X4V0SIabF/YpiCCHhn
 GAUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JGmEiLgKJ2sz0ConIXFYC9B0BQFVwEJ26QeQWcMi/2E=;
 b=KwwiilwxXkNH3hBZ0exYXilLbXOxMVTViZW9KCRo37sNRtgBU2RUXezG3rT3ZCRSvj
 cDxIBlG1zGe9p/YEuyZReplKUpoQ5MqOlzJaRyColcwF5/xybKyj3LugRryDPQ/bp3q4
 iYpvY/k0RKZ2QxHAw1HWSlIFVkfuvrc+dZC80uhD0rrtdRgbzzel2IDzLHHUuuipM9I0
 CP5r3rxGGdRC02C3n43r6Mo4jXSMb2zGGjlfd8U19HKGOsSeto7ThcMmiosoZlqeJqN5
 uiqrQvFFmLtG2QAzxKybuHLDIa0mHiwsQt2DB+zFoXkxvWx2Hs1iJ0ITzwGX8unXxSqD
 OZ1Q==
X-Gm-Message-State: APjAAAVQJBvSVQQXN0DAdvJOUL/VI1fJuNGdf7xZExka/Vz03OzH/8cD
 FnrDgg2qYnbDScFFHPITjS+GO9o0gyf2e7W8whGX5Q==
X-Google-Smtp-Source: APXvYqxCa0lPdDB38YFdN1DtoURl2eA4LB31yrjXOBv+YJxkvdVNCxyk1lfIUz7davf/Bes3qsUHJaNfnNOSl07em94=
X-Received: by 2002:a81:3acb:: with SMTP id h194mr8368787ywa.406.1578907676562; 
 Mon, 13 Jan 2020 01:27:56 -0800 (PST)
MIME-Version: 1.0
References: <CALTE0RYrP2qQM0abXvF1TkVAK7DO1tqd3T+y_UUocyqgnxa2Sg@mail.gmail.com>
 <919043526.5551655.1578905951749.JavaMail.zimbra@redhat.com>
In-Reply-To: <919043526.5551655.1578905951749.JavaMail.zimbra@redhat.com>
From: Valeri Aronov <valerka@gmail.com>
Date: Mon, 13 Jan 2020 20:27:11 +1100
Message-ID: <CALTE0RaSMtkcKBNFMxHn9S5qFNvH__ktzgAKo6X=+pZnMKR67Q@mail.gmail.com>
To: Frediano Ziglio <fziglio@redhat.com>
Subject: Re: [Spice-devel] fast symbolic transfer function derivatives
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============0638846561=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0638846561==
Content-Type: multipart/alternative; boundary="00000000000031dac5059c0217c4"

--00000000000031dac5059c0217c4
Content-Type: text/plain; charset="UTF-8"

Thanks, Frediano, and sorry for the confusion. I withdraw the posting.

Cheers,
Valeri A.

On Mon, Jan 13, 2020 at 7:59 PM Frediano Ziglio <fziglio@redhat.com> wrote:

> > Dear all,
>
> > I trust that I have an excellent proposition for the theme in the
> subject of
> > this post. Using my algorithm for the evaluation of all the first and
> second
> > derivatives (by circuit parameters) of the symbolic transfer function
> > asymptotically approaches the time of the evaluation of transfer function
> > itself.
>
> > Using these derivatives allows substantially reduce the time of circuit
> > parameter optimization because of much better precision of the
> derivatives
> > evaluation (in comparison with non-symbolic derivatives evaluation) and
> an
> > opportunity to apply optimization methods using the second derivatives.
>
> > I am looking for discussing with or presenting this to ppl who
> implemented
> > symbolic transfer function generation or interested in using the symbolic
> > functions for parameter optimization or sensitivity evaluation.
>
> > Cheers,
>
> > Valeri A .
>
> Hi,
>   I have the impression you posted to the wrong Spice project,
> we are Spice as www.spice-space.org, not
> https://en.wikipedia.org/wiki/SPICE.
>
> Frediano
>
>

--00000000000031dac5059c0217c4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Tha=
nks, Frediano, and sorry for the confusion. I withdraw the posting.</div><d=
iv class=3D"gmail_default" style=3D"font-size:small"><br></div><div class=
=3D"gmail_default" style=3D"font-size:small">Cheers,</div><div><div dir=3D"=
ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=
=3D"ltr"><div><span style=3D"font-size:small">Valeri A<span class=3D"gmail_=
default" style=3D"font-size:small">.</span></span></div></div></div></div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Mon, Jan 13, 2020 at 7:59 PM Frediano Ziglio &lt;<a href=3D"mailto:fzigli=
o@redhat.com">fziglio@redhat.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">&gt; Dear all,<br>
<br>
&gt; I trust that I have an excellent proposition for the theme in the subj=
ect of<br>
&gt; this post. Using my algorithm for the evaluation of all the first and =
second<br>
&gt; derivatives (by circuit parameters) of the symbolic transfer function<=
br>
&gt; asymptotically approaches the time of the evaluation of transfer funct=
ion<br>
&gt; itself.<br>
<br>
&gt; Using these derivatives allows substantially reduce the time of circui=
t<br>
&gt; parameter optimization because of much better precision of the derivat=
ives<br>
&gt; evaluation (in comparison with non-symbolic derivatives evaluation) an=
d an<br>
&gt; opportunity to apply optimization methods using the second derivatives=
.<br>
<br>
&gt; I am looking for discussing with or presenting this to ppl who impleme=
nted<br>
&gt; symbolic transfer function generation or interested in using the symbo=
lic<br>
&gt; functions for parameter optimization or sensitivity evaluation.<br>
<br>
&gt; Cheers,<br>
<br>
&gt; Valeri A .<br>
<br>
Hi,<br>
=C2=A0 I have the impression you posted to the wrong Spice project,<br>
we are Spice as <a href=3D"http://www.spice-space.org" rel=3D"noreferrer" t=
arget=3D"_blank">www.spice-space.org</a>, not <a href=3D"https://en.wikiped=
ia.org/wiki/SPICE" rel=3D"noreferrer" target=3D"_blank">https://en.wikipedi=
a.org/wiki/SPICE</a>.<br>
<br>
Frediano<br>
<br>
</blockquote></div>

--00000000000031dac5059c0217c4--

--===============0638846561==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0638846561==--
