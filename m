Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A1DF410AD2
	for <lists+spice-devel@lfdr.de>; Sun, 19 Sep 2021 11:02:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 681566E1AA;
	Sun, 19 Sep 2021 09:02:37 +0000 (UTC)
X-Original-To: Spice-devel@lists.freedesktop.org
Delivered-To: Spice-devel@lists.freedesktop.org
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com
 [IPv6:2607:f8b0:4864:20::632])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 432916E1AA
 for <Spice-devel@lists.freedesktop.org>; Sun, 19 Sep 2021 09:02:36 +0000 (UTC)
Received: by mail-pl1-x632.google.com with SMTP id j14so1947398plx.4
 for <Spice-devel@lists.freedesktop.org>; Sun, 19 Sep 2021 02:02:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/qQG/MvejwU37L8aYtBwRIlzmW0jxp2Uzg8rNNU5kQU=;
 b=PAzVxDM1PHg2Uw3RPsKHdVd/GoEQrnXpMuGxsYCLab6jnqzwj3K8kSetuETwMkHs9H
 wUpF8D+7nMf4SdWA4Pusx1GN/QidgD5HhiB8MvUnR1Zn/5H8UHkJ+0ZmDipznBOnY2kP
 KjRsIyhokrlU+u/QsMraU2hQkfCwVfK+Dzm6k+hiMvRuOVKfFCamuZ+AOtfSbv+gKBM/
 54N+xABS1AQNprOriRKPX4vM5VZKYNcTc7MjN1i4leidTM6/At+4lnr280V4jaxOtPpt
 GvVXnmIyshfNaQQmiOi0GY7p0t7sutpPDjEEMjAggjzmznkzRYGA7IrtlGjpLmby/Jnc
 RWAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/qQG/MvejwU37L8aYtBwRIlzmW0jxp2Uzg8rNNU5kQU=;
 b=i9/vNZdUJMNeoB50bmtG+es4WMi4D4HG6KGM3hvu8oLA4yUbxoig7dUxRscTSW/H+y
 fx2Mgl570mm20X7Yyk4wa45PZ+bD/PlMbP7Hs5m/+VTS3rSBqq95fp0s0I+PiMZqXOUU
 bJH2jqMTCVmej98S0269GGZ5S3a1gK3cKPUQ8OzrsJozKCIRrjQp0Za+PPILEkhBbU+4
 0In55+gZFIMojAqOzCGaD2bKf9eJcFryKp896PaKWFCQ6ij/9iI1DBIeBcyZGK/GiIwf
 SOKphOqEL2eLPgGDiiSqUUnIdPzMGQZRxouMviNv09GfouNPkys7FqR7pK/W8zkiq7Rm
 fSGQ==
X-Gm-Message-State: AOAM532d+MiwQZbw/L+wyo1FXzcOX4K0K6wO0D07vdNLqxY4ReJwIT+/
 iGdKx2w2/gew29NTuuxVsfNNqDaH8QZOIgD7e8+3nkCj
X-Google-Smtp-Source: ABdhPJzfuDxoOSaitsXZ0TT2rGNAw/9B8g4E8APSZ/AOgf6ywX5DnhbtVe7N9PUixVUkbxSGABPBoxyFXULUzTnr490=
X-Received: by 2002:a17:90b:354d:: with SMTP id
 lt13mr1686088pjb.197.1632042155718; 
 Sun, 19 Sep 2021 02:02:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAGusqHLAmqD6HgJ5ebUoOOt4sgdJhvvaLn+X5AtJjDTY7=q=Cw@mail.gmail.com>
 <CAHt6W4djE+VawG7PQyrbOLVPZ0TOrVwo7WuZ3N4-UUJyTx7hUg@mail.gmail.com>
 <CAGusqHJurC4eobV2970EhSX7um3bgZpV+f_3bFCFAEnYDK=K6g@mail.gmail.com>
In-Reply-To: <CAGusqHJurC4eobV2970EhSX7um3bgZpV+f_3bFCFAEnYDK=K6g@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Sun, 19 Sep 2021 10:02:24 +0100
Message-ID: <CAHt6W4fRo1_yFFtx3AvRO9Rwumu4jQBKYa_CdeBZtHSMVmxUtw@mail.gmail.com>
To: Andrey Af <public.irkutsk@gmail.com>
Cc: "spice-devel@lists.freedesktop.org" <Spice-devel@lists.freedesktop.org>
Content-Type: multipart/alternative; boundary="000000000000f33bb705cc556c9c"
Subject: Re: [Spice-devel] spice protocol 11.5 encrypted password
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

--000000000000f33bb705cc556c9c
Content-Type: text/plain; charset="UTF-8"

Hi,
  nice!

Anyway, the password protocol is pretty simple I would say. No password or
empty are the same (so 0 bytes). You take the password and encrypt (without
the NUL terminator) using given padding, algorithm and key.
Technically you don't need a length due to the padding.

Regards,
  Frediano


Il giorno ven 10 set 2021 alle ore 12:30 Andrey Af <public.irkutsk@gmail.com>
ha scritto:

> Hi,
> About 11.5 - it is a section in the documentation (spice protocol).
> I am trying to implement the server part on my project
> (LinuxTerminalService ),
> https://github.com/AndreyBarmaley/linux-terminal-service-manager
>
> I already have a working vnc and rdp protocols implemented, and I'm
> going to add spice protocol..
>
> 2021-09-10 10:06 GMT, Frediano Ziglio <freddy77@gmail.com>:
> > Hi,
> >   there's no protocol 11.5.
> > There's no data length markeR, password is zero terminated and encrypted,
> > if you refer to the default password schema (no SASL).
> > Can you explain what you are trying to do?
> >
> > Regards,
> >   Frediano
> >
> >
> > Il giorno ven 10 set 2021 alle ore 06:51 Andrey Af
> > <public.irkutsk@gmail.com>
> > ha scritto:
> >
> >> Hi,
> >>
> >> For encrypted password, there is definitely no data length market?
> >> For example, I don't need a password, authentication is verified by
> >> another part of the code, how can I skip this?
> >>
> >
>

--000000000000f33bb705cc556c9c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div>=C2=A0 nice!</div><div><br></div><div>A=
nyway, the password protocol is pretty simple I would say. No password or e=
mpty are the same (so 0 bytes). You take the password and encrypt (without =
the NUL terminator) using given padding, algorithm and key.</div><div>Techn=
ically you don&#39;t need a length due to the padding.<br></div><div><br></=
div><div>Regards,<br></div><div><div><div dir=3D"ltr" class=3D"gmail_signat=
ure" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">=C2=A0 Frediano</d=
iv></div></div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">Il giorno ven 10 set 2021 alle ore 12:30 Andrey Af=
 &lt;<a href=3D"mailto:public.irkutsk@gmail.com">public.irkutsk@gmail.com</=
a>&gt; ha scritto:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">Hi,<br>
About 11.5 - it is a section in the documentation (spice protocol).<br>
I am trying to implement the server part on my project (LinuxTerminalServic=
e ),<br>
<a href=3D"https://github.com/AndreyBarmaley/linux-terminal-service-manager=
" rel=3D"noreferrer" target=3D"_blank">https://github.com/AndreyBarmaley/li=
nux-terminal-service-manager</a><br>
<br>
I already have a working vnc and rdp protocols implemented, and I&#39;m<br>
going to add spice protocol..<br>
<br>
2021-09-10 10:06 GMT, Frediano Ziglio &lt;<a href=3D"mailto:freddy77@gmail.=
com" target=3D"_blank">freddy77@gmail.com</a>&gt;:<br>
&gt; Hi,<br>
&gt;=C2=A0 =C2=A0there&#39;s no protocol 11.5.<br>
&gt; There&#39;s no data length markeR, password is zero terminated and enc=
rypted,<br>
&gt; if you refer to the default password schema (no SASL).<br>
&gt; Can you explain what you are trying to do?<br>
&gt;<br>
&gt; Regards,<br>
&gt;=C2=A0 =C2=A0Frediano<br>
&gt;<br>
&gt;<br>
&gt; Il giorno ven 10 set 2021 alle ore 06:51 Andrey Af<br>
&gt; &lt;<a href=3D"mailto:public.irkutsk@gmail.com" target=3D"_blank">publ=
ic.irkutsk@gmail.com</a>&gt;<br>
&gt; ha scritto:<br>
&gt;<br>
&gt;&gt; Hi,<br>
&gt;&gt;<br>
&gt;&gt; For encrypted password, there is definitely no data length market?=
<br>
&gt;&gt; For example, I don&#39;t need a password, authentication is verifi=
ed by<br>
&gt;&gt; another part of the code, how can I skip this?<br>
&gt;&gt;<br>
&gt;<br>
</blockquote></div>

--000000000000f33bb705cc556c9c--
