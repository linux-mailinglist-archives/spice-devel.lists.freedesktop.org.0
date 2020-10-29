Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B1329EFFE
	for <lists+spice-devel@lfdr.de>; Thu, 29 Oct 2020 16:33:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E441C6ECEC;
	Thu, 29 Oct 2020 15:33:20 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A68706ECEC
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Oct 2020 15:33:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1603985598;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=3npembJTHQjsX7Hs87AsF7bL18z5e72gu0eKXirweRM=;
 b=d1ii3zNC8ld0nJ69VOyEClzkZZxZ1H2fVQ4waG9ewcTqV2uM9eP9T+8LFgiauK01b+hpNd
 xeHy17DzCv7thKwHlOPT6pn4WSI5xouKXLbnRynHcFeAk+GfX+mcxtaTdPEoeZV0kVVOkh
 P5rannx8Qx8rkNZnIAZeI6Wt3rwFlPA=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-156-qI7heA8wPeWUfGOheHJK3g-1; Thu, 29 Oct 2020 11:33:15 -0400
X-MC-Unique: qI7heA8wPeWUfGOheHJK3g-1
Received: by mail-qv1-f69.google.com with SMTP id 30so1985891qvc.15
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Oct 2020 08:33:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3npembJTHQjsX7Hs87AsF7bL18z5e72gu0eKXirweRM=;
 b=qA+oe7udMllvY48982J/5ls4Cca5QDllsQz389nlm5t2E+vk58vTKbkIOG5mkAZNCG
 qGAny7F7V2SYIuAgtxqUnp5o7tWGXRa+jzeiMZ4ggosulClDkEkZRMI1vZSLDzOul3fM
 6qMMgjUc7KypZJBfipfuIUizmq8ZTQv1BpBCa9v1IBxNRyjzjJ85jtfrHD3DHNeOdIRR
 mUYhiFlywpK/wf/qIVfpBsXcAtEUFGSesICR2a6YVkXk8bjRWhOSiZqHNK2OPxxY0Xvk
 NgPPhST9n6SNGg5Z7GKIgP+kDSKI3pJn1+eCtdq50ZUkQxkgYaVaAi10uhHL6pNWUS/R
 2c/g==
X-Gm-Message-State: AOAM533E0TAJkLzBUPfuPyZnkJYsHCxpu9fVCXUIDMdQF2IQ4FiXP9+U
 yjb2vdtjWOR88EQgRnwaJlSTn8lblT7TR6km6R5yEqmxdkarRuEViUSQBHLUBnTvtp1rN6yKCQ0
 /x8YEcCHXxCTZ3tBNv1jr0dEnrGXwMEztDn7yzYElN4FdYcA=
X-Received: by 2002:ac8:43d0:: with SMTP id w16mr1317444qtn.288.1603985593886; 
 Thu, 29 Oct 2020 08:33:13 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwmPhKyOzNOwPSwxg7FimbDZwYzSNWgAj99ua7on4K5aCZpnNlYdNh31SL2bVByo/CCAcv0ju2KSWL1CKIN4u4=
X-Received: by 2002:ac8:43d0:: with SMTP id w16mr1317424qtn.288.1603985593641; 
 Thu, 29 Oct 2020 08:33:13 -0700 (PDT)
MIME-Version: 1.0
References: <rncrhu$16el$1@ciao.gmane.io>
 <1165128467.5786858.1603959008695.JavaMail.zimbra@redhat.com>
 <3cea45a2-9c3b-5d96-84ed-6298b91d68c2@gmail.com>
In-Reply-To: <3cea45a2-9c3b-5d96-84ed-6298b91d68c2@gmail.com>
From: Jakub Janku <jjanku@redhat.com>
Date: Thu, 29 Oct 2020 16:33:02 +0100
Message-ID: <CAH=CeiDggDPg5KmCku=gUqSm5Y9FuC9mt5MJfYUu3dzn_Vsw=Q@mail.gmail.com>
To: Ian Pilcher <arequipeno@gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jjanku@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] How to build Windows vdagent?
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

Hi,

are you using mingw64-configure?
Sometimes, when you don't know how to build something, you can get
some hints from the pipeline configuration file, in this case
.gitlab-ci.yml.

Regards,
Jakub

On Thu, Oct 29, 2020 at 4:10 PM Ian Pilcher <arequipeno@gmail.com> wrote:
>
> On 10/29/20 3:10 AM, Frediano Ziglio wrote:
> > It depends on the environment you want to use.
> > Either you can use MingW + classic Autoconf (configure) and compile as many Unix
> > projects (better to have a Linux machine) or you can use CMake, better suited
> > for use with Visual Studio (for instance).
>
> The MingW/Linux (Fedora) option would be easiest for me, but I can't get
> it to work; I can't figure how to get around this error:
>
>    configure: error: static libpng not found
>
> I have installed every single *libpng* package in Fedora:
>
> $ sudo dnf list '*libpng*'
> Last metadata expiration check: 2:32:12 ago on Thu 29 Oct 2020 07:37:22
> AM CDT.
> Installed Packages
> libpng.i686                            2:1.6.37-3.fc32           @fedora
> libpng.x86_64                          2:1.6.37-3.fc32           @fedora
> libpng-devel.i686                      2:1.6.37-3.fc32           @fedora
> libpng-devel.x86_64                    2:1.6.37-3.fc32           @fedora
> libpng-static.i686                     2:1.6.37-3.fc32           @fedora
> libpng-static.x86_64                   2:1.6.37-3.fc32           @fedora
> libpng-tools.x86_64                    2:1.6.37-3.fc32           @fedora
> libpng12.i686                          1.2.57-11.fc32            @fedora
> libpng12.x86_64                        1.2.57-11.fc32            @fedora
> libpng12-devel.i686                    1.2.57-11.fc32            @fedora
> libpng12-devel.x86_64                  1.2.57-11.fc32            @fedora
> libpng15.i686                          1.5.30-9.fc32             @fedora
> libpng15.x86_64                        1.5.30-9.fc32             @fedora
> mingw32-libpng.noarch                  1.6.37-3.fc32             @fedora
> mingw32-libpng-static.noarch           1.6.37-3.fc32             @fedora
> mingw64-libpng.noarch                  1.6.37-3.fc32             @fedora
> mingw64-libpng-static.noarch           1.6.37-3.fc32             @fedora
>
> --
> ========================================================================
>                   In Soviet Russia, Google searches you!
> ========================================================================
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel
>

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
