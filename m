Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECCE5406978
	for <lists+spice-devel@lfdr.de>; Fri, 10 Sep 2021 12:06:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4060E6E9B2;
	Fri, 10 Sep 2021 10:06:22 +0000 (UTC)
X-Original-To: Spice-devel@lists.freedesktop.org
Delivered-To: Spice-devel@lists.freedesktop.org
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com
 [IPv6:2607:f8b0:4864:20::102e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AC826E9B2
 for <Spice-devel@lists.freedesktop.org>; Fri, 10 Sep 2021 10:06:21 +0000 (UTC)
Received: by mail-pj1-x102e.google.com with SMTP id
 gp20-20020a17090adf1400b00196b761920aso1091942pjb.3
 for <Spice-devel@lists.freedesktop.org>; Fri, 10 Sep 2021 03:06:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OHYtTmEO2p11EX2TUhEkQFRDfTNz32ypnUTmo3PJP0Y=;
 b=I9uY3Sns/VmY2Yj1xqu9faIo2Qrb2qOkVGtUVwEf134JkzFlxoV5Mx82aTn5sWs4NP
 z7C/DuAytnSGsh2RksC05KFgeW4TDJgl/s8ba47H3We0Bi8cU1ZstzvfOqPagqUkqSnL
 G/KVvPdaEwqr0EIIiQz/DBAcbBqQg6XXwTw5e4avx9BQm6rnaR9s4wh1VApCndXWupAj
 qMAiZepWMhI8gpSl8UB059v5GIcLOGExlYAxXChqrCZTjK7h7RhUlawMJjmPnr2K52ui
 oY1SgPywGLvU8rxQZScnijs5Kj6m3axWu4K++Qn68ptvzYzTIvmqu6rg0gczpWfjskYV
 UvTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OHYtTmEO2p11EX2TUhEkQFRDfTNz32ypnUTmo3PJP0Y=;
 b=euVa1podEXgYhR4Ir6bWoYvdEktlBTuK75qoCSrhDN5Hn4bvonD3zyeWml5zL504WO
 5R7G+KK6bhtxqGzOZawJubWOeCVXILsQFsEfbIR6GKAHUiRf2nSM25O7DpByk225eDLN
 PRJjX6L9eJIcI5WHQGWb7sSfuhxPB5V3iYEvvcGcS0gQgS5ECaEJsgNlOJNgoBM9YYlj
 PrXuuSnrqvG4Viav4++AX8csdF3wCNsdRoVdVbeiu5udxs6/xFqwcMNqlULa6dhZgS52
 1qbeV/8UxeL9KiV0KlQPEODkEG37DRim+y+koDed4WQdGuy0f0yMbDwcE3dBuPT+c00d
 CK5A==
X-Gm-Message-State: AOAM531Epg6otj4tWPHwsaV3dSls+yEJ4E2utrD8JJAHneF4rFgWtJ4F
 lFvYYLgM9vxB6bFplWT5Xl37Nm+uIa/wooOHlhV2UwMP
X-Google-Smtp-Source: ABdhPJxxEMvUBkl2/0WogK81iFwhunArerY3yE+54WwZEvAUVioCrh/RaJo+hrDTXIadVyHwKfCzUjDr8kMSRqdTHX4=
X-Received: by 2002:a17:90a:4592:: with SMTP id
 v18mr8728644pjg.197.1631268380768; 
 Fri, 10 Sep 2021 03:06:20 -0700 (PDT)
MIME-Version: 1.0
References: <CAGusqHLAmqD6HgJ5ebUoOOt4sgdJhvvaLn+X5AtJjDTY7=q=Cw@mail.gmail.com>
In-Reply-To: <CAGusqHLAmqD6HgJ5ebUoOOt4sgdJhvvaLn+X5AtJjDTY7=q=Cw@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Fri, 10 Sep 2021 11:06:09 +0100
Message-ID: <CAHt6W4djE+VawG7PQyrbOLVPZ0TOrVwo7WuZ3N4-UUJyTx7hUg@mail.gmail.com>
To: Andrey Af <public.irkutsk@gmail.com>
Cc: "spice-devel@lists.freedesktop.org" <Spice-devel@lists.freedesktop.org>
Content-Type: multipart/alternative; boundary="0000000000005e7e5405cba1445d"
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

--0000000000005e7e5405cba1445d
Content-Type: text/plain; charset="UTF-8"

Hi,
  there's no protocol 11.5.
There's no data length markeR, password is zero terminated and encrypted,
if you refer to the default password schema (no SASL).
Can you explain what you are trying to do?

Regards,
  Frediano


Il giorno ven 10 set 2021 alle ore 06:51 Andrey Af <public.irkutsk@gmail.com>
ha scritto:

> Hi,
>
> For encrypted password, there is definitely no data length market?
> For example, I don't need a password, authentication is verified by
> another part of the code, how can I skip this?
>

--0000000000005e7e5405cba1445d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div>=C2=A0 there&#39;s no protocol 11.5.</d=
iv><div>There&#39;s no data length markeR, password is zero terminated and =
encrypted, if you refer to the default password schema (no SASL).<br></div>=
<div>Can you explain what you are trying to do?<br></div><div><br></div><di=
v>Regards,<br></div><div><div><div dir=3D"ltr" class=3D"gmail_signature" da=
ta-smartmail=3D"gmail_signature"><div dir=3D"ltr">=C2=A0 Frediano</div></di=
v></div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">Il giorno ven 10 set 2021 alle ore 06:51 Andrey Af &lt;<a=
 href=3D"mailto:public.irkutsk@gmail.com">public.irkutsk@gmail.com</a>&gt; =
ha scritto:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<=
br>
<br>
For encrypted password, there is definitely no data length market?<br>
For example, I don&#39;t need a password, authentication is verified by<br>
another part of the code, how can I skip this?<br>
</blockquote></div>

--0000000000005e7e5405cba1445d--
