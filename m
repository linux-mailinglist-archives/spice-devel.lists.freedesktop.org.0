Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B20326F1515
	for <lists+spice-devel@lfdr.de>; Fri, 28 Apr 2023 12:13:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E07710E121;
	Fri, 28 Apr 2023 10:13:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com
 [IPv6:2607:f8b0:4864:20::229])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C0A410E121
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Apr 2023 10:13:55 +0000 (UTC)
Received: by mail-oi1-x229.google.com with SMTP id
 5614622812f47-38e692c0930so5264579b6e.0
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Apr 2023 03:13:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1682676835; x=1685268835;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=yNNOucu6Tyhp2mhbpTKXeiqbgyIjI6gZn8WfCNYSolI=;
 b=pfghdG/MO8jBgsHXLTZXpIVet6gIHMteJBKwl3srKdEBHb5mO7nDVY2bkEuNSI4rX8
 nKZRGMfyHN71jPHt47yQjRfZlK7+sJWsPqhaGjwknFAOcUtFPEBz6F/02rRZO9ml7NB9
 kVluwQ5OGpg3dtbBwotUr1zMVd5KM4QJcipGiW6wmm4kaLHNUvv3l50PinO7jGwqyNFN
 vVK9D9s3S4+eUhfr4Ydov3mlaciUwyATxtk1ff4bYsIznWZ2HpgsyGeq7WYuRsblFP9E
 GkFW7tvylZtvzJ5GXK04Btk6OqtOQGWMc+PolTO0anCiSWbhlzNxbV4zXRBUTedR2s0T
 8acg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682676835; x=1685268835;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=yNNOucu6Tyhp2mhbpTKXeiqbgyIjI6gZn8WfCNYSolI=;
 b=NLLnhMwbmqt/VlU/WH/cgDwoN1MjmuFCBWedHOupyW4CJkmhmP6e7ZeenjHnVWg1HW
 eDvYc1v0G/Kk1kQO6SB/X3FBQoHjcIhK+Lt0LhwSsQ2sEzYT0b1CvNQZdI3PQFPwwehg
 Rkw9TAxj9lt9yqqT+YwPvThtB8sWDRVDTXRk1W8TQiThcbq0vTuMuRuUgOJl2yidoubM
 pBFCOVW8n4RrSjCzCJmtfNl2r4xTgKawRIaXriVLvCmLDNcihAEWXRtXa62YceQpaXYK
 pgHHQcXgmxTMxRgFmHvk/2FDpRytg0ZDRR3xRjPFI8av8w61z7jmuY3563cPvkBG6OD3
 IgnQ==
X-Gm-Message-State: AC+VfDzLvkAVCzeaP6vlOo5HYz/sygXKsysPwsPLwt8jb/a2A4bohgQM
 aXC9gJg0Vek59VrjNg/OJlM8vtdNwbz+rThsgbQWtgiI8dQ=
X-Google-Smtp-Source: ACHHUZ7KI6OGseIkHFiGzSETgmPoDSUEzttZTSrvMNSLBUNIReVkL7/hKRV6/AJnQZhz6LG43RQ+JbmhAgQpZw6ODPk=
X-Received: by 2002:a05:6808:694:b0:38b:37dc:88d3 with SMTP id
 k20-20020a056808069400b0038b37dc88d3mr2392222oig.45.1682676834918; Fri, 28
 Apr 2023 03:13:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAEE50A4-EE01-40E5-B31A-95DA26FE7B98@gmail.com>
In-Reply-To: <CAEE50A4-EE01-40E5-B31A-95DA26FE7B98@gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Fri, 28 Apr 2023 11:13:43 +0100
Message-ID: <CAHt6W4dXoESUhiEY_XBkzuXm_JL1qAZdMpfmk905s3hraST0Mg@mail.gmail.com>
To: Patrik <pmoravek@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Spice-devel] typo in code on How to Build page
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

Il giorno ven 28 apr 2023 alle ore 10:27 Patrik <pmoravek@gmail.com> ha scritto:
>
> Hi, just wanted to let you guys know there is a typo on this page: https://www.spice-space.org/osx-client.html
>
>
> Currently is:
>
> sudo xcode-select --switch /Applications/Xcode.app/ContentsDeveloper
>
> Should be:
>
> sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
>
> How to build
>
> The MacOSX client uses the jhbuild moduleset provided by the gtk-osx project. This repository contains an additional moduleset to build the needed SPICE modules. The OSX client is based on remote-viewer (as the Windows client).
>
> Prerequisite
>
> Before using it, you need to install XCode. I'm using XCode 4.3.3 for Lion. After installing it, I had to run the command below to setup everything as expected:
>
> sudo xcode-select --switch /Applications/Xcode.app/ContentsDeveloper
>
> If you want to build spice-gtk from git (the default moduleset is building it from tarballs), you also need the Perl module Text::CSV. To install it you can run:
>
>
> thanks
>
> Patrik

Hi,
  How does this sound
https://gitlab.freedesktop.org/spice/spice-space-pages/-/merge_requests/34
?

Frediano
