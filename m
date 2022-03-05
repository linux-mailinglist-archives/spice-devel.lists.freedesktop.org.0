Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E35A4CE309
	for <lists+spice-devel@lfdr.de>; Sat,  5 Mar 2022 06:26:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0543C10FFCD;
	Sat,  5 Mar 2022 05:26:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com
 [IPv6:2607:f8b0:4864:20::1033])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F7AB10FFCD
 for <spice-devel@lists.freedesktop.org>; Sat,  5 Mar 2022 05:26:51 +0000 (UTC)
Received: by mail-pj1-x1033.google.com with SMTP id
 mr24-20020a17090b239800b001bf0a375440so6873938pjb.4
 for <spice-devel@lists.freedesktop.org>; Fri, 04 Mar 2022 21:26:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2UUNJ6g8N2hpfZCWCxyiLWZA8sibptkggV/W6le3yx4=;
 b=GGlF+E66fO6PM4zYsRBRVp+5BBp0EFsJkEFFrtGkyyaDoGnWqxvrZnT4A4b49dtgGK
 bVDBRz9eNC6QsadGXH53IJoOg1vpAEP2U1lWvJvhe9iUSXOlczCOK3x+bumNqkRjsAct
 KHXwN1O7OWd0Wz9V24ZqB7yTp2zWT10qhlx6ynKF4yGXvAa3bDYH7hKDONu/fHgfY3AY
 gG84Uk7MQ7pTM/HSG8q6F8mZGn71FZUMc2/yorAhdK44ZEMM2QHxHVXeQtFjx4V9NXWu
 RxA6cn69mbDCdDV9Ay1IxpvGXIi4HPqov4qCCbu+2IER1eEy7BOCnznVl5RMnb2De7kK
 J+sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2UUNJ6g8N2hpfZCWCxyiLWZA8sibptkggV/W6le3yx4=;
 b=V5jSq8deXwnn19OscWPs8Fj16p2AiZaKgwirRHGHyQ5df+fbZmxoelvAkTUb2IfTE4
 C24aV5k7b8SI7G6AVLm57B8bYMfr69aCdLlB5Ma4V+dUt/qIMYHHrHFhC0ei9pZ+SVRT
 yY2RB7+aYd7ZeJgr8TqeTcVoUab79xo6KDwsBQ8XYjxUvu4LTou02Ct7S5F3XRxFMZJB
 vW2RkjuBAuB1yc+CrqLq+t9Cddc3FJrsG3amceMG8/qMGPwe/ftsPOm2HN5+lv8TOUlJ
 Rpf7lXwIUc/yQ7uK1mmC/8P/P1/5sMToo7DS7Eoe35Xg7akmKwRvSO8fUCpMM0wWRWu5
 Mfmw==
X-Gm-Message-State: AOAM533hLSd8UuAIMNH4d/+KPWFvFA+E7VZBxYAeJqPbbGLSC0H7AedK
 MMKiseI9+f/1P3B0XbzmK6Cj5HGVnYbJYl71CssPRf8qpFY=
X-Google-Smtp-Source: ABdhPJyvA3yqoUEnam1LBwTaralC/TfCjEgRTY1gFJ/lo0zniDhZpMEVKEaewIYMPgHnNicEz0DFe9NYyDI6+JQv56g=
X-Received: by 2002:a17:902:d512:b0:151:b9e0:32c3 with SMTP id
 b18-20020a170902d51200b00151b9e032c3mr1870017plg.133.1646458010759; Fri, 04
 Mar 2022 21:26:50 -0800 (PST)
MIME-Version: 1.0
References: <CA+E+eSB3Fzy=B4L=_WP_G8FL5DNAOX6qOOe60y3dmHTGV_cZgw@mail.gmail.com>
In-Reply-To: <CA+E+eSB3Fzy=B4L=_WP_G8FL5DNAOX6qOOe60y3dmHTGV_cZgw@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Sat, 5 Mar 2022 05:26:39 +0000
Message-ID: <CAHt6W4c1FwNf0d9FUVmzzDXUVqe30dTE2ZWZmzPq=1BsGAcd_g@mail.gmail.com>
To: osy <osy@turing.llc>
Content-Type: multipart/alternative; boundary="000000000000de748b05d971e002"
Subject: Re: [Spice-devel] Contributing via patch email or freedesktop
 Gitlab?
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

--000000000000de748b05d971e002
Content-Type: text/plain; charset="UTF-8"

Il giorno sab 5 mar 2022 alle ore 05:21 osy <osy@turing.llc> ha scritto:

> On the website
>
> https://www.spice-space.org/developers.html
>
> It says to send patches to this email. However, I've noticed that
> recent development has taken place directly on the freedesktop Gitlab
> with merge requests
>
> https://gitlab.freedesktop.org/spice/spice-gtk
>
> What is the recommended way of contributing? If it is through the
> freedesktop Gitlab, should the website be updated?
>
> Thanks!
>

Hi Osy,
   both ways are accepted, as you prefer.

Regards,
  Frediano

--000000000000de748b05d971e002
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">Il giorno sab 5 mar 2022 alle ore 05:21 osy &lt;osy@turing.llc&gt; h=
a scritto:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On th=
e website<br>
<br>
<a href=3D"https://www.spice-space.org/developers.html" rel=3D"noreferrer" =
target=3D"_blank">https://www.spice-space.org/developers.html</a><br>
<br>
It says to send patches to this email. However, I&#39;ve noticed that<br>
recent development has taken place directly on the freedesktop Gitlab<br>
with merge requests<br>
<br>
<a href=3D"https://gitlab.freedesktop.org/spice/spice-gtk" rel=3D"noreferre=
r" target=3D"_blank">https://gitlab.freedesktop.org/spice/spice-gtk</a><br>
<br>
What is the recommended way of contributing? If it is through the<br>
freedesktop Gitlab, should the website be updated?<br>
<br>
Thanks!<br></blockquote><div><br></div><div><div>Hi Osy,</div><div>=C2=A0=
=C2=A0 both ways are accepted, as you prefer.</div><div><br></div><div>Rega=
rds,<br></div><div><div><div dir=3D"ltr" class=3D"gmail_signature"><div dir=
=3D"ltr">=C2=A0 Frediano</div></div></div></div>=C2=A0</div></div></div>

--000000000000de748b05d971e002--
