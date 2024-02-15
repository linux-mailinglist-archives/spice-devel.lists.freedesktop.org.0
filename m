Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61094855E53
	for <lists+spice-devel@lfdr.de>; Thu, 15 Feb 2024 10:38:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C103010E580;
	Thu, 15 Feb 2024 09:38:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="Wq3egiTq";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 256D510E580
 for <spice-devel@lists.freedesktop.org>; Thu, 15 Feb 2024 09:38:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1707989905;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=tBdbSv2vV64wLZY3a6s+WAkRMaejxhLo4ezKdMN3vsc=;
 b=Wq3egiTqA5KTCaofw86I4mLMLvQEilgK60bKs85iO/nMptyXq5AH0nGsQQssLP5bKRn2+0
 79FUoDNsCXG/flAYChzQRps3cE9sVjBhz4WupU+hgFRVmkxhnzK04+bdgYJ62JHb2DkCPF
 Ebtp1iHOF0S9+TO5fcgCqP7RGqjES5o=
Received: from mail-oa1-f69.google.com (mail-oa1-f69.google.com
 [209.85.160.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-369-uAqp4F-uOHeFT04YeDkIrg-1; Thu, 15 Feb 2024 04:38:20 -0500
X-MC-Unique: uAqp4F-uOHeFT04YeDkIrg-1
Received: by mail-oa1-f69.google.com with SMTP id
 586e51a60fabf-218e3197761so1044283fac.0
 for <spice-devel@lists.freedesktop.org>; Thu, 15 Feb 2024 01:38:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707989900; x=1708594700;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=tBdbSv2vV64wLZY3a6s+WAkRMaejxhLo4ezKdMN3vsc=;
 b=iEvx1r8H8WK7PF3/Op+eaRd10cOJsiy79o17uAf4l561pFPzT1nq+9KQ3jR26KMJb7
 qHXDZ186scI94p4ob4QIA3Mi7rAK2cnYOSv/eYZX0x1kd/6w4rRkyc+QYc5tN2fS02ms
 Ner2HeOUcDAskAqMbUagYdG6Iihq/SgjlbHQYCxwzGNoybvE9iTF3iVfKBYU0IM+uSYo
 8EGNqlj8wbCE7tuhhWKFQ0B1Gn7YQnppJ22KNuC3SGlTceCWvXb+VmSbgiwknV4GXYeW
 EQxQ1XJ362gIFZYbGUTzPpZ2ac6ZhV21sFawL+iT/oI1x3LFmb/uKPlhx2EpjNtOckMa
 t4VA==
X-Gm-Message-State: AOJu0YzecKQZxt9lWV8xVyF438SC1q7D+qatVB+gV9cB96+NpOE8AvZi
 BOx4U0hE/oQ+BfK7o0TGJJ88E2LiLsSKxp41uWl31zWWjBTMFHQ9/ml6vAscpopr2EGG5fRi/b3
 jnTY8Z9kdYgW1Dn1kkFKrFmJXIPwZkwdjwR8/P6xmXk/uZimfxPlWcDPBgVK+CZtyJeW2ZZOO3v
 zpcjKD/2ZMyNb2sLYLqYIIaouIjH4xBhUxbXKa+AtMprg=
X-Received: by 2002:a05:6870:4c81:b0:21a:17db:91b3 with SMTP id
 pi1-20020a0568704c8100b0021a17db91b3mr1330383oab.12.1707989900039; 
 Thu, 15 Feb 2024 01:38:20 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF9zmqXt2/Mmvyxu1rrNGr38Cv0OinT3lPFk3N9srpLuTuT/cfODe13B7qOc8Z+9j3Hx0PEVhJuONTHZoNLxTc=
X-Received: by 2002:a05:6870:4c81:b0:21a:17db:91b3 with SMTP id
 pi1-20020a0568704c8100b0021a17db91b3mr1330370oab.12.1707989899692; Thu, 15
 Feb 2024 01:38:19 -0800 (PST)
MIME-Version: 1.0
References: <CAD2aPBCbMK2rd4CJpOatn7zE2WVPHhe9PNqSrLadUGkHUfZZCQ@mail.gmail.com>
In-Reply-To: <CAD2aPBCbMK2rd4CJpOatn7zE2WVPHhe9PNqSrLadUGkHUfZZCQ@mail.gmail.com>
From: Uri Lublin <ulublin@redhat.com>
Date: Thu, 15 Feb 2024 11:38:08 +0200
Message-ID: <CAAg9qJ2D+ELCU66UZUZrNJmsJxEPa2TDEZJRy2fJGuoO1mVzwg@mail.gmail.com>
Subject: Re: err in dockerfile (for xspice)
To: Ali Dehghan <ali.a.dehghan@gmail.com>
Cc: spice-devel@lists.freedesktop.org
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000405d2b0611686337"
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

--000000000000405d2b0611686337
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Ali,

On Thu, Feb 15, 2024 at 11:05=E2=80=AFAM Ali Dehghan <ali.a.dehghan@gmail.c=
om>
wrote:

> Hey,
>
> I followed your instructions in the page Demo of your website (
> https://www.spice-space.org/demos.html) and something went wrong.
>
> When I make a dockerfile and put your text into it
>
> FROM fedora:latestRUN dnf install -y xorg-x11-server-XspiceEXPOSE 5900/tc=
pENV DISPLAY=3D:1.0
>
> CMD Xspice --port 5900 --disable-ticketing $DISPLAY  > /dev/null 2>&1 &  =
/usr/bin/bash
>
>
> , it doesn't start X server but if I run your docker image
> quay.io/spice/xspice:latest, everything is ok.
>

> I wanted to use xspice for browser isolation. When I install chrome on
> your docker-image it is okay and xspice works well (but your image fedora
> is outdated). When I use your suggested content in dockerfile, it fails.
>
> Would you please check and correct dockerfile suggested, or send me the
> content of quay.io/spice/xspice:latest?
>

The instructions are available with the demo.
It seems there is a problem running X server with fedora:latest (currently
f39).
The demo is running Fedora 31 - replacing "fedora:latest" with "fedora:31"
works for me.

Regards,
    Uri.

--000000000000405d2b0611686337
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Ali,<br></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 15, 2024 at 11:05=E2=80=AFAM A=
li Dehghan &lt;<a href=3D"mailto:ali.a.dehghan@gmail.com">ali.a.dehghan@gma=
il.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div dir=3D"ltr">Hey,<div><br></div><div>I followed your instructions=
 in the page Demo of your website (<a href=3D"https://www.spice-space.org/d=
emos.html" target=3D"_blank">https://www.spice-space.org/demos.html</a>) an=
d something went wrong.</div><div><br></div><div>When I make a dockerfile a=
nd put your text into it=C2=A0</div><pre style=3D"box-sizing:border-box;ove=
rflow:auto;font-family:Menlo,Monaco,Consolas,&quot;Courier New&quot;,monosp=
ace;font-size:13px;padding:9.5px;margin-top:0px;margin-bottom:10px;line-hei=
ght:1.42857;color:rgb(51,51,51);word-break:break-all;background-color:rgb(2=
45,245,245);border:1px solid rgb(204,204,204);border-radius:4px"><span styl=
e=3D"box-sizing:border-box;color:rgb(0,112,32);font-weight:bold">FROM</span=
><span style=3D"box-sizing:border-box;color:rgb(187,187,187)"> </span><span=
 style=3D"box-sizing:border-box;color:rgb(64,112,160)">fedora:latest</span>
<span style=3D"box-sizing:border-box;color:rgb(0,112,32);font-weight:bold">=
RUN</span><span style=3D"box-sizing:border-box;color:rgb(187,187,187)"> </s=
pan>dnf install -y xorg-x11-server-Xspice
<span style=3D"box-sizing:border-box;color:rgb(0,112,32);font-weight:bold">=
EXPOSE</span><span style=3D"box-sizing:border-box;color:rgb(187,187,187)"> =
</span><span style=3D"box-sizing:border-box;color:rgb(64,112,160)">5900/tcp=
</span>
<span style=3D"box-sizing:border-box;color:rgb(0,112,32);font-weight:bold">=
ENV</span><span style=3D"box-sizing:border-box;color:rgb(187,187,187)"> </s=
pan><span style=3D"box-sizing:border-box;color:rgb(187,96,213)">DISPLAY</sp=
an><span style=3D"box-sizing:border-box;color:rgb(102,102,102)">=3D</span>:=
1.0=C2=A0</pre><pre style=3D"box-sizing:border-box;overflow:auto;font-famil=
y:Menlo,Monaco,Consolas,&quot;Courier New&quot;,monospace;font-size:13px;pa=
dding:9.5px;margin-top:0px;margin-bottom:10px;line-height:1.42857;color:rgb=
(51,51,51);word-break:break-all;background-color:rgb(245,245,245);border:1p=
x solid rgb(204,204,204);border-radius:4px">CMD<span style=3D"background-co=
lor:rgb(255,255,255);box-sizing:border-box;color:rgb(187,187,187)"> </span>=
Xspice --port <span style=3D"background-color:rgb(255,255,255);box-sizing:b=
order-box;color:rgb(32,128,80)">5900</span> --disable-ticketing <span style=
=3D"background-color:rgb(255,255,255);box-sizing:border-box;color:rgb(187,9=
6,213)">$DISPLAY</span>  &gt; /dev/null <span style=3D"background-color:rgb=
(255,255,255);box-sizing:border-box;color:rgb(32,128,80)">2</span>&gt;<span=
 style=3D"background-color:rgb(255,255,255);box-sizing:border-box">&amp;</s=
pan><span style=3D"background-color:rgb(255,255,255);box-sizing:border-box;=
color:rgb(32,128,80)">1</span> <span style=3D"background-color:rgb(255,255,=
255);box-sizing:border-box">&amp;</span>  /usr/bin/bash</pre><div><br></div=
><div>, it doesn&#39;t start X server but if I run your docker image=C2=A0<=
span style=3D"background-color:rgb(245,245,245);color:rgb(51,51,51);font-fa=
mily:Menlo,Monaco,Consolas,&quot;Courier New&quot;,monospace;font-size:13px=
"><a href=3D"http://quay.io/spice/xspice:latest" target=3D"_blank">quay.io/=
spice/xspice:latest</a>, everything is ok.</span> <br></div></div></blockqu=
ote><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div=
><br></div><div>I wanted to use xspice for browser isolation. When I instal=
l chrome on your docker-image it is okay and xspice works well (but your im=
age fedora is outdated). When I use your suggested content in dockerfile, i=
t fails.</div><div><br></div><div>Would you please check and correct docker=
file suggested, or send me the content of=C2=A0<span style=3D"background-co=
lor:rgb(245,245,245);color:rgb(51,51,51);font-family:Menlo,Monaco,Consolas,=
&quot;Courier New&quot;,monospace;font-size:13px"><a href=3D"http://quay.io=
/spice/xspice:latest" target=3D"_blank">quay.io/spice/xspice:latest</a>?</s=
pan></div></div></blockquote><div><br></div><div>The instructions are avail=
able with the demo.<br></div><div><div>It seems there is a problem running =
X server with fedora:latest (currently f39).</div><div>The demo is running =
Fedora 31 - replacing &quot;fedora:latest&quot; with &quot;fedora:31&quot; =
works for me.<br></div></div><div><br></div><div>Regards,</div><div>=C2=A0=
=C2=A0=C2=A0 Uri.<br></div></div></div>

--000000000000405d2b0611686337--

