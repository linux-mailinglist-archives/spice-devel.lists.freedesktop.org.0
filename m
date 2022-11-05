Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80A7161DA95
	for <lists+spice-devel@lfdr.de>; Sat,  5 Nov 2022 14:22:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C58110E15C;
	Sat,  5 Nov 2022 13:21:55 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABCCC10E15C
 for <spice-devel@lists.freedesktop.org>; Sat,  5 Nov 2022 13:21:53 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id 13so19751562ejn.3
 for <spice-devel@lists.freedesktop.org>; Sat, 05 Nov 2022 06:21:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=7baUWniUB+dZb//kXd7xIzYopJShLRyezkQzDah3Ccc=;
 b=BBBZoNVFiNA9Uu4/BerumlxjSK8rEUha2YSzM9f1Vh8VKdeW46wTg5tbgiJQEHUCIk
 8c6ijHmdGrbeiTXqISZ9LUJZGyy05wnhA0jDsP1+EAvNHarYIM4O4P5pE446zgJL6vI7
 jUBfM06LR6lps49lxKhd9xjVrWpCPob1PxgHCLqHEeQclrvK9sqxrnx6LfKaRbvCSy5o
 ljCdQPPHJmypZ/CLLz0eI3bTqd0oR2OD0wM3mUo+JCl21+XPfiZyqwFilnVfGXyvpIO1
 o8zbAeKAS7Hfu79SwFni+2rBOIsyHNx2jdsmWwRa8hYWBoU5gEPj1FgoPChvc945pxaY
 AE+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=7baUWniUB+dZb//kXd7xIzYopJShLRyezkQzDah3Ccc=;
 b=WgeW1bjbgKPOlh/T8GjQ36WU/4k0cc8SY55AY32X4AaxmNQORWkWThTkeNeaFs0sLM
 ltmUJyIO24mc0Z7jzgY9e6HU18F7FmrDbrZA659AO/zsJHq/0PGHSHQ95C9nv8pCalxD
 Zb7maS7woG4YNZWhnkynui2HKcfcffsBuCNnqeWABmU/4l04xe7TQlcitjBY2pNUseoz
 WUOLr4PFVsYIMXlkLMlmFNSz3qly6Jb8D8pcfPyoPoqFz8r4O69u7fK0Ashlnk7H4NGs
 elAQkelXbvmW5M1Z2MgXY5C2OfWQo+trdizc4UinGPQqu/9jX6IURTnygPXQFOFdyaa1
 V7xA==
X-Gm-Message-State: ACrzQf2o06zezCOIYjil30l4lXhdXFvChMprT9vMatsaJFrRfR/IU1Ji
 dmKqwK6zaY8OP3b+zp+GtvTP3eu0hmSvNhWMQhs=
X-Google-Smtp-Source: AMsMyM6m1zHRAOCPjqhqUKZjMk2xkTQzXc19xfGZTDXlVaSpU9Q1kP6DB8RGu43vxM2CuHrVzKREmux9tYzgJKG5Cug=
X-Received: by 2002:a17:907:2715:b0:7ad:ef1e:3bc7 with SMTP id
 w21-20020a170907271500b007adef1e3bc7mr23950842ejk.580.1667654512085; Sat, 05
 Nov 2022 06:21:52 -0700 (PDT)
MIME-Version: 1.0
References: <CANVMif+rXZBMvZ3Ww+mWC7TpViGwJSzvmn7VvU08hMf=G4ENsQ@mail.gmail.com>
 <CAHt6W4etN1Br9-mseZnV+T2BSj4Hrq=d92mFxNbx2WpNNwNhwg@mail.gmail.com>
In-Reply-To: <CAHt6W4etN1Br9-mseZnV+T2BSj4Hrq=d92mFxNbx2WpNNwNhwg@mail.gmail.com>
From: Dirk Eibach <dirk.eibach@googlemail.com>
Date: Sat, 5 Nov 2022 14:21:40 +0100
Message-ID: <CANVMifLhA0jzJOXAUVxJ=HGMOw4kvb5xwXc+ObcE+=QH7bhjrA@mail.gmail.com>
To: Frediano Ziglio <freddy77@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Spice-devel] Standalone (non-virtual) windows server
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

Hi Frediano,

thanks for your feedback.

On Sat, Nov 5, 2022 at 1:03 PM Frediano Ziglio <freddy77@gmail.com> wrote:
> ...

> Hi Dirk,
>    I had to moderate this email and I had some doubts about accepting it or not.

Sorry about that. I had registered using the "gmail" domain, but my
client is using the "googlemail" one.

> I had to go and look at the GitHub link to understand what it was.
> More or less is a project to use SPICE on a bare metal machine,
> something like x11spice or winspice (see
> https://gitlab.freedesktop.org/spice/win32/winspice).

That's right. We discussed this on list on october 13th. Sadly no one
mentioned winspice there.
But hey, doing the proof of concept myself was a lot of hacking funk.

> About licensing. it seems you want to post your code under GPL however
> your project is distributing some file copyrighted by Microsoft. Did
> you check if you can do it? Also, having multiple licensed files it
> would be good to put the licences header on each of your files. Sorry
> if this seems pedantic but better to get licenses right from the
> beginning.

I did not see that the Microsoft license is limiting distribution in
any way. I am no lawyer though.
This code should be removed anyway when the project leaves the proof
of concept state.

You are certainly right, every file should have its license header.

Regards,
Dirk

On Sat, Nov 5, 2022 at 1:03 PM Frediano Ziglio <freddy77@gmail.com> wrote:
>
> Il giorno sab 5 nov 2022 alle ore 08:09 Dirk Eibach
> <dirk.eibach@googlemail.com> ha scritto:
> >
> > Hi,
> >
> > I have started developing a standalone (non-virtual) windows server
> > application. It is based on the Desktop Duplication API, available
> > since Windows 8.
> >
> > A proof of concept is already working nicely. It still has some rough
> > edges though. If you like, join the fun at
> > https://github.com/ZeroMips/kuemmel.
> >
> > Comments welcome.
> >
> > Cheers
> > Dirk
>
> Hi Dirk,
>    I had to moderate this email and I had some doubts about accepting it or not.
> I had to go and look at the GitHub link to understand what it was.
> More or less is a project to use SPICE on a bare metal machine,
> something like x11spice or winspice (see
> https://gitlab.freedesktop.org/spice/win32/winspice).
>
> About licensing. it seems you want to post your code under GPL however
> your project is distributing some file copyrighted by Microsoft. Did
> you check if you can do it? Also, having multiple licensed files it
> would be good to put the licences header on each of your files. Sorry
> if this seems pedantic but better to get licenses right from the
> beginning.
>
> Regards,
>   Frediano
