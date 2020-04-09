Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 830531A3800
	for <lists+spice-devel@lfdr.de>; Thu,  9 Apr 2020 18:28:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B346C6EC05;
	Thu,  9 Apr 2020 16:28:17 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-vk1-xa31.google.com (mail-vk1-xa31.google.com
 [IPv6:2607:f8b0:4864:20::a31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18B906EC05
 for <spice-devel@lists.freedesktop.org>; Thu,  9 Apr 2020 16:28:15 +0000 (UTC)
Received: by mail-vk1-xa31.google.com with SMTP id f63so117278vkh.0
 for <spice-devel@lists.freedesktop.org>; Thu, 09 Apr 2020 09:28:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=zoup-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HRTiwfirpMXRFt3mMVGZkWdpRJF6sZ++8FiqU71x4BY=;
 b=u59GueZSRywkuZEL+9+tdSn2Q/eKBsqvPvtLUxhX9gM6PNSyNq9Or4xYmypYYn9mZc
 Y/T3UL1Btbe4N2yP9zh7lsIsAuYVa5Ev6wGavMbAFIGAZP/IZsFJlbdAcMnADw5LrQro
 tB5w4Yc2rdcw40l5Zrvp5p0RR8ktrx8qnTQ00VSfJ4muXJHlxcEwr6isib0TlkXRAYYY
 6BbrsNfIWx4ELU9tfpZ+2OR4ONvIDsSYaSUbEk4zvLzhyePt04++n5Nh+bcYpP/oCdIC
 6c/+CsJX4dO8jHK3VxG+KsSGS/sjBV4PtPPdzO0GZIEc5/NQHHZj2fy/cre3Ext4lsxt
 j3aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HRTiwfirpMXRFt3mMVGZkWdpRJF6sZ++8FiqU71x4BY=;
 b=F9UWA59BYqVnhVBIJkvvQpPfNw6M577MpNF1L60H4dMe1gQdQ4HqBwK9qgHlzNBIoB
 cCw+9DjTMWeyMvjXMh1c82MO3AqiQB6IkniovjWfkKVXTGfxFnad49HEJdui2V7zYn9m
 AYlcrkh+GYcUmUk349ENLv14tetXWyDsXOOK6B1Lo83f2u7ezHaayXMwF6NtsB1tnMhI
 +x4/K9TxDF7wY0r9CiWk9EjWu9osKx3h9H1tDxzoAneWGVMiYpcY42OFymHN8HErPkRw
 XfHBeUo0Pp4+W2Szzu8ks5jY/9/hHsJSiUQsN6p641CWf0x7HExQXj98xvFgiSZZgj2m
 6E9w==
X-Gm-Message-State: AGi0PuZqO25JKrv7jGcEOluzPKkW7+VRT5MGpyp2T8F5Uy9yA+jSyrPy
 qNUj/s9LOX+F8NTqJIOXg0WVokgN2kMq9XGamiioIw==
X-Google-Smtp-Source: APiQypJ3+CgekfBTsywXwm9vxsmHoEz9sRvRjsw7fi3emZoexN9iYmcZHFJ2kv4H4acRPVaEleTP0nbCmYVMA1tqvxw=
X-Received: by 2002:a1f:944d:: with SMTP id w74mr397228vkd.23.1586449695080;
 Thu, 09 Apr 2020 09:28:15 -0700 (PDT)
MIME-Version: 1.0
References: <cc805b3a-0471-c42e-2cf2-b088c74edf78@posteo.de>
In-Reply-To: <cc805b3a-0471-c42e-2cf2-b088c74edf78@posteo.de>
From: Armin Ranjbar <zoup@zoup.org>
Date: Thu, 9 Apr 2020 20:58:04 +0430
Message-ID: <CAOvx4-1aLwy-sVvW3TTpYXf18PeNSq8X_d=Dk7Boh4CYx3fiFw@mail.gmail.com>
To: "Robert S. Irrgang" <rs.irrgang@posteo.de>
Subject: Re: [Spice-devel] Windows (10) Spice client not working...
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
Cc: Spice List <spice-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============0549151965=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0549151965==
Content-Type: multipart/alternative; boundary="0000000000008796ff05a2de1a54"

--0000000000008796ff05a2de1a54
Content-Type: text/plain; charset="UTF-8"

Hi Robert,

hmm, that can be a range fo things, can you please run virt-viewer in debug
mode (--debug) and send the output?

---
Armin ranjbar



On Mon, Apr 6, 2020 at 11:21 AM Robert S. Irrgang <rs.irrgang@posteo.de>
wrote:

> Hello,
>
> I've tried to connect to my KVM/qemu guest with Windows Spice Remote
> Viewer, but it did not work. I connect with spice://192.168.50.225:5901
> (my Server LAN IP and the port of a windows 7 guest with Spice
> drivers...), but get only the message in spice windows ... "Connect to
> graphics-server", but nothing happend.
> I've already connected to this guest with local and remote virt-manager
> on linux without any problems. Only the windows version of spice viwer
> did not work.
>
> Any idea what is wrong?
>
> I'm using Windows 10 insider preview and the latest Spice viwer version,
> can this be a problem?
>
> Thanks and greetings
> Robert
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel
>

--0000000000008796ff05a2de1a54
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Robert,<div><br></div><div>hmm, that can be a range fo =
things, can you please run virt-viewer in debug mode (--debug) and send the=
 output?</div><div><br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_s=
ignature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">---<br>Armin =
ranjbar<br><div><br></div></div></div></div><br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 6, 2020 =
at 11:21 AM Robert S. Irrgang &lt;<a href=3D"mailto:rs.irrgang@posteo.de">r=
s.irrgang@posteo.de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">Hello,<br>
<br>
I&#39;ve tried to connect to my KVM/qemu guest with Windows Spice Remote <b=
r>
Viewer, but it did not work. I connect with spice://<a href=3D"http://192.1=
68.50.225:5901" rel=3D"noreferrer" target=3D"_blank">192.168.50.225:5901</a=
> <br>
(my Server LAN IP and the port of a windows 7 guest with Spice <br>
drivers...), but get only the message in spice windows ... &quot;Connect to=
 <br>
graphics-server&quot;, but nothing happend.<br>
I&#39;ve already connected to this guest with local and remote virt-manager=
 <br>
on linux without any problems. Only the windows version of spice viwer <br>
did not work.<br>
<br>
Any idea what is wrong?<br>
<br>
I&#39;m using Windows 10 insider preview and the latest Spice viwer version=
, <br>
can this be a problem?<br>
<br>
Thanks and greetings<br>
Robert<br>
_______________________________________________<br>
Spice-devel mailing list<br>
<a href=3D"mailto:Spice-devel@lists.freedesktop.org" target=3D"_blank">Spic=
e-devel@lists.freedesktop.org</a><br>
<a href=3D"https://lists.freedesktop.org/mailman/listinfo/spice-devel" rel=
=3D"noreferrer" target=3D"_blank">https://lists.freedesktop.org/mailman/lis=
tinfo/spice-devel</a><br>
</blockquote></div>

--0000000000008796ff05a2de1a54--

--===============0549151965==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0549151965==--
