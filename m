Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DBDF6170D8
	for <lists+spice-devel@lfdr.de>; Wed,  2 Nov 2022 23:48:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E11010E224;
	Wed,  2 Nov 2022 22:48:48 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oo1-xc29.google.com (mail-oo1-xc29.google.com
 [IPv6:2607:f8b0:4864:20::c29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78A2810E224
 for <spice-devel@lists.freedesktop.org>; Wed,  2 Nov 2022 22:48:46 +0000 (UTC)
Received: by mail-oo1-xc29.google.com with SMTP id
 s125-20020a4a5183000000b0047fbaf2fcbcso49338ooa.11
 for <spice-devel@lists.freedesktop.org>; Wed, 02 Nov 2022 15:48:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=JfRpBKXfFi0hUduJiRviGJ7YUYkQhrPT+T1ntp7gIRg=;
 b=qfFCwPHCIoe6Zb2a013Fw20LMq2j+kljEHbnbRRX6gm7/jrNhR++rxTnYtEzwLR+Fk
 tuPbGq+fFCew/UYbVDXbMN8CjqtrWsS2ZHHb8hyGtXHm9lHVmlSZETIbEViibKP+2ja5
 NZiRbpSONU2iPcqStYrihcDc5bnCad2UovdgGKhmB6LVQZbu8UYbFuaKZDa/JniDkRgx
 tBp039+7dAM0zDIRUaSvWgOpkoxjKG5KLtPfPbRwSkhMvD+9pkl5wqOagMT43xJby3hs
 endJ40nd7GxP/bDLweVQ5P3F5RsC4tQJLWddLKrM3cGA6bqBcCwi2Cw8DZROfGPuJGLP
 9gPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=JfRpBKXfFi0hUduJiRviGJ7YUYkQhrPT+T1ntp7gIRg=;
 b=3zo5LgOq1rgi278BXsbXlcHsLwZJgZeA8tTX5JTWeCcGWVCnaxJB6VG2xtTd1EStKh
 xhG+11HaKEBXQsy9MIDINueal3hnWu8aFtajUqlhV7Su90qLtN5La+MRXiGkLCUFPA5j
 /E0z/FXI8X01QQo2T7yaoygTyy5i+8wZYICnVOe+4wXPFP3sgQvp++6akWU8nhW3Lrpq
 vTWaXPXEu5A9xxWISZevVp6EGUHnSqwOQzRpa4PBt/KdpNVX/F4oYpfvwZMGHuJMIhJp
 JPnl9A3BpLkErrgs93zRJNRTdEXe+RPi4ShJ07REG0JqvoJPecsvFQZFId7U/0i1CJzb
 oqSg==
X-Gm-Message-State: ACrzQf1HZ4Pp9sHvxeiNbFy7Fen3MDriW4UhSpXBgd+uQqUGmkSNMQUh
 g19lzSW4e+aPxPHfN0a5cwtacFiNTiPhg4S998D5TgDL
X-Google-Smtp-Source: AMsMyM76d1cDETrJlo446MDfC7fJEMvsNElc6GK1MPeAwFmIhle4QtLSM4o5l1Izg0+IC3enaWkFEijw5hHgwhoVKPw=
X-Received: by 2002:a4a:c20e:0:b0:476:59ad:b02b with SMTP id
 z14-20020a4ac20e000000b0047659adb02bmr11502572oop.65.1667429325643; Wed, 02
 Nov 2022 15:48:45 -0700 (PDT)
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
 <CAGeBE=wGrgden2JkNq9qcOryap-PKeGM3AeQ0dVfq-LxRgzFvg@mail.gmail.com>
In-Reply-To: <CAGeBE=wGrgden2JkNq9qcOryap-PKeGM3AeQ0dVfq-LxRgzFvg@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Wed, 2 Nov 2022 22:48:33 +0000
Message-ID: <CAHt6W4cg4ALKavoBRCWR397gfqtW7daLuP=3eTOrnUzxU7wa2w@mail.gmail.com>
To: =?UTF-8?Q?Carlos_Gonz=C3=A1lez?= <piteccelaya@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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
Cc: spice-devel@lists.freedesktop.org
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno mer 2 nov 2022 alle ore 16:11 Carlos Gonz=C3=A1lez
<piteccelaya@gmail.com> ha scritto:
>
> It is verbose indeed, but says *nothing* about file transfer errors.
>
> I think you really could give the live CD a try to see it for yourself, o=
r just close this thread if you just want to say "not interested" once and =
for all.
> But I think we should reach a conclusion, whatever it may be.
>

I didn't think about it, being a live it's easy.
I easily manage to copy a file,
- downloaded an ISO (full version, x64)
- created a VM with such ISO
- started
- opened a console
- "sudo -i"
- "apt-get update"
- "apt-get install spice-vdagent"
- "ps awx | grep spice", agent was already started
- exited from root user, stayed on the console
- "spice-agent -d -x -f $HOME/Desktop -o 1"
- dragged a file, a file manager window opened with the file inside

Frediano

> El mar, 1 nov 2022 a las 8:38, Frediano Ziglio (<freddy77@gmail.com>) esc=
ribi=C3=B3:
>>
>> Okay, let's get back to the basics. On a VM I have spice installed and
>> working. If I run "ps awx | grep spice" I got both spice-vdgentd and
>> spice-vdagent running.
>> If I kill (from a graphic terminal console) spice-agent I can launch
>> manually with something like "spice-agent -d -x -f $HOME/Desktop -o
>> 1". This should be pretty verbose.
>>
>> Frediano
