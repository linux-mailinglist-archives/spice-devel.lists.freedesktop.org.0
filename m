Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C0DA35AECE
	for <lists+spice-devel@lfdr.de>; Sat, 10 Apr 2021 17:21:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B0346E529;
	Sat, 10 Apr 2021 15:21:29 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com
 [IPv6:2607:f8b0:4864:20::535])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C236B6E529
 for <spice-devel@lists.freedesktop.org>; Sat, 10 Apr 2021 15:21:28 +0000 (UTC)
Received: by mail-pg1-x535.google.com with SMTP id w10so6034124pgh.5
 for <spice-devel@lists.freedesktop.org>; Sat, 10 Apr 2021 08:21:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8tO5UnUk+I1xcXEhDvfiwTV7Ij+4iELjI2yQ5wbmS8w=;
 b=Y8PrpvtF+h4VHGZmt9CA9tPXJZDtmvdVaEBrAiOiT5eYz1anEcFMMnz8dXv7jHzOLc
 dRBag2TZcohoepy156ICHBDEnDshXU1S9VHD9m8IDTY6HlRzbtvM4hxxwhCn098+6iyG
 Ccs0w1tNL0F5I5zq3dm+AID9lGgorGqvxsc1nE/W0FnSQYK+sE+MzTr/IWpJfQrC93ce
 e+hue2p2lgS9kPoNDKQ5mqk9ciK0cmxAKJhMMdMU/0xUbxS6miYbUYKZUHd8EPF1KE/H
 LOicaVVpSqcJlcWmh2UTrdHlY/ZpZtlnGaef2CJjympq7X+yQB8Mfq2Cvw1V71asloN6
 sS8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8tO5UnUk+I1xcXEhDvfiwTV7Ij+4iELjI2yQ5wbmS8w=;
 b=O4dkaRaEmR/JzBAaXLzoHF80gPxDhsdq1NJ8W/8ZDRfjg7aO7mfr5yJK3+/1JBFBpG
 EFsYWjw5vc65SgTyVwxbQMAlMBo9xMObeyh6JuQsNXLwMsm+QmaEKTgP7BH7z1Ao3Hgz
 wM3CIbuJLUHcxKzYsDYA8Ivnpf3vUahCy8TE6aEfdh5BO+POUuGs5d7EgUxpG/jdG31g
 RnluXvQIaek5mRU1x5LiBNFZqAZx3jLeW2wQM4eMLzHsIAGH5ugOkfpBFkI7C8ALgm5h
 qiWLwZc+uPayoSicvmgEkYdYjDB+i4dX3EJUJQ2irDD+zXoNcZyvtXV/uKZvnxFFVJ8H
 Z2Tg==
X-Gm-Message-State: AOAM5313mJBFwRSNzBvE59z9eR8vqEBidnJGGA/FZS6/JW9GDYrSfDvd
 2UiyeV/12+FW8UNCjC0hYgXAvTa9yO1rwvmsifkcqU0GizA=
X-Google-Smtp-Source: ABdhPJzFFkm+s9DppDZc0Pu8wHYvD4JDE6ClW14Rp0QvsY+SfJJv+o72DxmUSy+mlLQtdKzpjdUPjUwKmWwMxMu1Zl0=
X-Received: by 2002:aa7:8493:0:b029:1ee:75b2:2865 with SMTP id
 u19-20020aa784930000b02901ee75b22865mr16655169pfn.61.1618068088197; Sat, 10
 Apr 2021 08:21:28 -0700 (PDT)
MIME-Version: 1.0
References: <63dfcd57-5240-9400-b12d-3060da2048dd@robertbritton.com>
In-Reply-To: <63dfcd57-5240-9400-b12d-3060da2048dd@robertbritton.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Sat, 10 Apr 2021 16:21:17 +0100
Message-ID: <CAHt6W4dfhVrfKjCL7auv8+mJrJOLkwhn_oiNwGM4Wi79Ds-=jQ@mail.gmail.com>
To: Bob Britton <bob@robertbritton.com>
Subject: Re: [Spice-devel] Helping with development...
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno mer 7 apr 2021 alle ore 20:49 Bob Britton
<bob@robertbritton.com> ha scritto:
>
> Hi Spice team,
>
>   Thank you for all your hard work creating Spice.
>
>   I'm running a company where I provide virtual desktops to my
> customers. Most of my customers want their virtual desktops to have
> hardware GPU acceleration for smooth video playback, games, and such. So
> the experience would be much more like being on a native machine.
>
>   I've looked at many different options out there, and there really
> isn't one that fits the bill.
>
> I have some questions for you all on how I can put my resources into
> helping spice add hardware encode/decode to it's streaming.
>
>  From what I've read, it seems that it's possible to add a plugin such
> as virgil to allow for 3d acceleration. While that project is aiming at
> creating a full virtual 3d graphics device, is it possible or maybe even
> easier to create a plugin that does hardware encode/decode on the host
> gpu(s)?
>
> And that leads me to my next question, would that be the best place to
> add hardware acceleration? Or should the focus be elsewhere?
>
> I've played with Parsec quite a bit, and it's streaming abilities are
> amazing, allowing for 3d games to be played remotely with very little
> latency.
>
> Obviously nothing here is simple, but I'd like to get my developer
> resources aimed in the right place, and any thoughts/feedback from your
> team would be greatly appreciated.
>
> Thanks in advance, and I look forward to having my team help with the
> project.
>
> Best,
>
> - Bob
>

Hi Bob,
   that would be really great.

I agree, nothing here is simple.

One question I would ask first is about the kind of desktop/guests you need.
The reason is that mainly Virgil requires guest drivers to support 3D.
If you are planning to support Windows
one thing to develop is the GPU driver for Windows. At the moment
there isn't one and it's not easy to write
one so maybe you won't want to go that way.

Second question is about scalability and performance you need.
If you need high end performance and many VM maybe you want to point
to Nvidia H/W support or
Intel GVT-g support. First offers high performance (and cost) and
relative good scalability (like 4/8 VMs
on a single host), second less scalability and performance but cheaper
(basically most Intel GPU will
work). All these solutions are better remoted from the client and
there are probably a lot of already
made software doing that other than SPICE. If you want to do this with
SPICE the route is extending
the streaming agent on SPICE.

Said that you don't want Windows (or you are willing to write Virgil
driver for Windows... that would
be really appreciated!) but just Linux desktop and you prefer
scalability/cost at the expense of performance
I would say SPICE is a good solution. Qemu uses virgl-renderer for 3D
from the guests and passes to
SPICE the "frames" ready (almost!) to be processed and streamed. Here
would come the H/W encode/decode.

Regards,
  Frediano
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
