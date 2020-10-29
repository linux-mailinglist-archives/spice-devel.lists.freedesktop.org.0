Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6380429EF46
	for <lists+spice-devel@lfdr.de>; Thu, 29 Oct 2020 16:10:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0DB16E8C0;
	Thu, 29 Oct 2020 15:10:26 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com
 [IPv6:2607:f8b0:4864:20::32b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 004E16E8C0
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Oct 2020 15:10:25 +0000 (UTC)
Received: by mail-ot1-x32b.google.com with SMTP id n15so2519762otl.8
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Oct 2020 08:10:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=pttK0Nb7ZNLQXWOmKZLPI+pUXD5IuOUBef1fHbGLPEQ=;
 b=urNrjZRBw1HomqpmL/M7R48+48uqNcmQPMibtifUlzgJu+ua83HuPYe18o70GRhTlT
 9n+KBXgoT5H8Xqp/WFQLkJYJnQ53u9crxto3+sNkPh4ROwcHNLXJxqfUBu7FqdTSgtX9
 +hch5YQcQHwWRwJuqVasBPsmiXO2a4/rtAOlAr4f6BEm1hbnUaDLLPKkT/55cBVgIFG1
 NUedfWdk4Uyf8YVcCUeE1qN0PMCvqxlRRxzVcwf/YzM9lqYczlfnOspt/54/L31qeUfx
 HvH0tzdx6uQFFLPtAsQjJKa2VoiRdwBL2HJlyEbyF20SMZxTz0VIonFTt96y++A8/xah
 He5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=pttK0Nb7ZNLQXWOmKZLPI+pUXD5IuOUBef1fHbGLPEQ=;
 b=SJyGKLf3bGtU/W94TRiUr7LO0YijGHdDAdm/XF5AdeiSJs/Z4EqtLmwHt0bHVAmrPu
 4TD9NftlSDTjKLFm6wrfsC/w9n318BBaoOiXV/CGtkYPEGWRBKrHo2eQyEuyY1zQi+u9
 XCVAnw6OuP0CfV5zGl/l2wH/uF0OKtnHAKAuarcBWTrKlCTOixn2tagZzdpr8MsprYyI
 ERpoi+etYBSIRtZu9SdzeMlOamQtJnbJ+Tdk9kVttv0Vq0+CpBTkew5SnT9t8+tp40XT
 KbQWLy6gIzZZMOEU0j1eUGfOmHqF1L0FBXBJMx1bSGquTfMlLIFPKfpQsfcUbt6opIGm
 wgMA==
X-Gm-Message-State: AOAM530jyCOuJhq3mfIcX9xkhiKLxCbgNVSSPwbkkvcvycqJmgc7h1/K
 4sg32zaPiMbceupY+OnbQiHsj+9Y1O5q1A==
X-Google-Smtp-Source: ABdhPJzL/pt6pApDwZAMk69sgvJdrvaqRIFPxPMgtVpJVXEMIWZaU1BX77TDvxmXwOPdLYdBWDnPsA==
X-Received: by 2002:a9d:7308:: with SMTP id e8mr3677230otk.238.1603984224604; 
 Thu, 29 Oct 2020 08:10:24 -0700 (PDT)
Received: from ian.penurio.us ([47.184.24.231])
 by smtp.gmail.com with ESMTPSA id t83sm698645oie.58.2020.10.29.08.10.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 29 Oct 2020 08:10:23 -0700 (PDT)
To: Frediano Ziglio <fziglio@redhat.com>
References: <rncrhu$16el$1@ciao.gmane.io>
 <1165128467.5786858.1603959008695.JavaMail.zimbra@redhat.com>
From: Ian Pilcher <arequipeno@gmail.com>
Message-ID: <3cea45a2-9c3b-5d96-84ed-6298b91d68c2@gmail.com>
Date: Thu, 29 Oct 2020 10:10:23 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <1165128467.5786858.1603959008695.JavaMail.zimbra@redhat.com>
Content-Language: en-US
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
Cc: spice-devel@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On 10/29/20 3:10 AM, Frediano Ziglio wrote:
> It depends on the environment you want to use.
> Either you can use MingW + classic Autoconf (configure) and compile as many Unix
> projects (better to have a Linux machine) or you can use CMake, better suited
> for use with Visual Studio (for instance).

The MingW/Linux (Fedora) option would be easiest for me, but I can't get
it to work; I can't figure how to get around this error:

   configure: error: static libpng not found

I have installed every single *libpng* package in Fedora:

$ sudo dnf list '*libpng*'
Last metadata expiration check: 2:32:12 ago on Thu 29 Oct 2020 07:37:22 
AM CDT.
Installed Packages
libpng.i686                            2:1.6.37-3.fc32           @fedora
libpng.x86_64                          2:1.6.37-3.fc32           @fedora
libpng-devel.i686                      2:1.6.37-3.fc32           @fedora
libpng-devel.x86_64                    2:1.6.37-3.fc32           @fedora
libpng-static.i686                     2:1.6.37-3.fc32           @fedora
libpng-static.x86_64                   2:1.6.37-3.fc32           @fedora
libpng-tools.x86_64                    2:1.6.37-3.fc32           @fedora
libpng12.i686                          1.2.57-11.fc32            @fedora
libpng12.x86_64                        1.2.57-11.fc32            @fedora
libpng12-devel.i686                    1.2.57-11.fc32            @fedora
libpng12-devel.x86_64                  1.2.57-11.fc32            @fedora
libpng15.i686                          1.5.30-9.fc32             @fedora
libpng15.x86_64                        1.5.30-9.fc32             @fedora
mingw32-libpng.noarch                  1.6.37-3.fc32             @fedora
mingw32-libpng-static.noarch           1.6.37-3.fc32             @fedora
mingw64-libpng.noarch                  1.6.37-3.fc32             @fedora
mingw64-libpng-static.noarch           1.6.37-3.fc32             @fedora

-- 
========================================================================
                  In Soviet Russia, Google searches you!
========================================================================
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
