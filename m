Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 80BBB6167A3
	for <lists+spice-devel@lfdr.de>; Wed,  2 Nov 2022 17:12:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A09610E4F4;
	Wed,  2 Nov 2022 16:11:59 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com
 [IPv6:2a00:1450:4864:20::333])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1507610E4F4
 for <spice-devel@lists.freedesktop.org>; Wed,  2 Nov 2022 16:11:57 +0000 (UTC)
Received: by mail-wm1-x333.google.com with SMTP id
 p13-20020a05600c468d00b003cf8859ed1bso1116282wmo.1
 for <spice-devel@lists.freedesktop.org>; Wed, 02 Nov 2022 09:11:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=BXtQ+7WQKv89RCeBWRAU3l1/pRrjcXkPweKMkPqfV7o=;
 b=GroublbaTRZi9FOhock8dVCS/Pw27+vW52Qk27nVyRgTmBeNN4iPcV9GlUbkQqG4IC
 XhBGC4DXDWu4fndJnTKF9cg1EN7J+HyAwMT3vLz/gPhYUBCcsRBBiggOmsEhcgtojR5U
 IaO0Yh9XRrqDtImG/M15Hh9Y9r8gPYnhhl7TFzr9zOveHcdoPYiU2tX1aw5qLA7fHqVE
 MQvUZ11jAfm2LGZvGpneO5HfbWNZlhU8zj3uujhsvn6dLWzB265b2Mn0FhfQS5FsyjUK
 FOEs2t3BlW2TTV37e+icMZnnrfP3SADoHHk8qFv+4vZcRI9/U67VwBagWauI18Y9VsUj
 ri4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=BXtQ+7WQKv89RCeBWRAU3l1/pRrjcXkPweKMkPqfV7o=;
 b=OFonQsl1aHbj2H16PEmnS8IWiXOivlvA1aKJ17EfU9Him/9yH9p06pZuD6ww75DbQH
 EPMpPazryfB4oyozbzy/Ppa8+cb+KmIC8/Q14gcCiLEOkAmmC2h7/R47NAbY50UzBDvj
 xBrLJPq56MArs/whNpz9/JMtNZ6xz3jxNbNgBKKOGT9YQBYYHlohpw2J5DwW9nf9OMwi
 1xX9iTNbtqvdvF7SL4N1VDLLLyoSI4YZ0O9ldU9sf/Da+Zk+x9Y8fX0Irh7/fEPmdQ3S
 tbhJVLnmh+zrGDGvExfzZvuEW3AI+1hVK9TkxFjNO6m8QmFBLt9rxTJh+u+x5rfG3rmD
 AQ7w==
X-Gm-Message-State: ACrzQf2VgTLX6lsi5g7hjI4yDaTmkdKXqS3Vwd8zKqjrmRZaENQ5jthT
 LDxIvQsU+3ojTvlVqb/IeHLP7A34to5Q/8rvNEs=
X-Google-Smtp-Source: AMsMyM6kWfRHgUAB3qTb/awsw7s1Um+fixf6EvRIh6N2OhFXHq65AmhaaQaSM+ZXafpueLdtBiB3/lF5hKFNw7o18Ro=
X-Received: by 2002:a05:600c:310c:b0:3c6:f7c6:c7b6 with SMTP id
 g12-20020a05600c310c00b003c6f7c6c7b6mr15931334wmo.81.1667405515473; Wed, 02
 Nov 2022 09:11:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAGeBE=w-KZXVACD6xeeqfoo03K5BZxzA8O2U5x-8=NLsR=ZQKw@mail.gmail.com>
 <CAHt6W4dkGkFVDBQbMFN0+AD24OB18uxhhQC5n4u51PiJGnAi8g@mail.gmail.com>
 <CAGeBE=y4HKusjFMYez9uGEzEMm_9uhgDeW5uakB-bErUWcPoJQ@mail.gmail.com>
 <CAHt6W4eysYyfv-9_W6n5YRv5qSd0rU46=vGf25fAO5s342a3aw@mail.gmail.com>
 <CAGeBE=xYOdDo40ec=T=auNhj-nq8nHXuOWZ6Tt+HT-gniu=YcQ@mail.gmail.com>
 <CAHt6W4cJW-Lj_rE+c9YqrDSft5f0t4RJ41z4bv4y2gVYyyfwNQ@mail.gmail.com>
 <CAAg9qJ3bMd=3_YD4UJ1rHDmm3s7L5NG047eioeuJ209s50MAKg@mail.gmail.com>
 <CAGeBE=w5OVLoKD_E72HdacqCivp=ZS2tuaDoHMJTB82-68W0-A@mail.gmail.com>
 <CAAg9qJ20nfDLfx_8Hboyw-GZpU5t4mrKH7+4L_Ne-wOrqbzEZg@mail.gmail.com>
 <CAGeBE=zLNuypqM296NKHbiVXf-u4hcK3MbTxXG34eOeDSgG_cg@mail.gmail.com>
 <CAGeBE=wNsck1_L88kV=oAVVe5LThruT4SZEJwuZPXrEVds-6tQ@mail.gmail.com>
 <CAAg9qJ1uLht3--b4OwQpiGPj2q=8FZvSF19VG+pQPWTPKz_RzA@mail.gmail.com>
 <CAGeBE=zqf-yb56MWYuok1ych_hsJAWsbwXB0zuFF834Vs2hDRw@mail.gmail.com>
 <CAHt6W4e2c266UKZ+3fLFzc8qBcsjbkXWFwdoDj4k7UKdP2dVpg@mail.gmail.com>
In-Reply-To: <CAHt6W4e2c266UKZ+3fLFzc8qBcsjbkXWFwdoDj4k7UKdP2dVpg@mail.gmail.com>
From: =?UTF-8?Q?Carlos_Gonz=C3=A1lez?= <piteccelaya@gmail.com>
Date: Wed, 2 Nov 2022 16:11:43 +0000
Message-ID: <CAGeBE=wGrgden2JkNq9qcOryap-PKeGM3AeQ0dVfq-LxRgzFvg@mail.gmail.com>
To: Frediano Ziglio <freddy77@gmail.com>, Uri Lublin <uril@redhat.com>, 
 spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="00000000000072489e05ec7f1928"
Subject: Re: [Spice-devel] Vdagent not working on a Debian guest
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

--00000000000072489e05ec7f1928
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

It is verbose indeed, but says *nothing* about file transfer errors.

I think you really could give the live CD a try to see it for yourself, or
just close this thread if you just want to say "not interested" once and
for all.
But I think we should reach a conclusion, whatever it may be.

El mar, 1 nov 2022 a las 8:38, Frediano Ziglio (<freddy77@gmail.com>)
escribi=C3=B3:

> Okay, let's get back to the basics. On a VM I have spice installed and
> working. If I run "ps awx | grep spice" I got both spice-vdgentd and
> spice-vdagent running.
> If I kill (from a graphic terminal console) spice-agent I can launch
> manually with something like "spice-agent -d -x -f $HOME/Desktop -o
> 1". This should be pretty verbose.
>
> Frediano
>

--00000000000072489e05ec7f1928
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>It is verbose indeed, but says *nothing* about file t=
ransfer errors.</div><div><br></div><div>I think you really could give the =
live CD a try to see it for yourself, or just close this thread if you just=
 want to say &quot;not interested&quot; once and for all.</div><div>But I t=
hink we should reach a conclusion, whatever it may be.<br></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El mar, 1 nov 202=
2 a las 8:38, Frediano Ziglio (&lt;<a href=3D"mailto:freddy77@gmail.com">fr=
eddy77@gmail.com</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">
Okay, let&#39;s get back to the basics. On a VM I have spice installed and<=
br>
working. If I run &quot;ps awx | grep spice&quot; I got both spice-vdgentd =
and<br>
spice-vdagent running.<br>
If I kill (from a graphic terminal console) spice-agent I can launch<br>
manually with something like &quot;spice-agent -d -x -f $HOME/Desktop -o<br=
>
1&quot;. This should be pretty verbose.<br>
<br>
Frediano<br>
</blockquote></div></div>

--00000000000072489e05ec7f1928--
