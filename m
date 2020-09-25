Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7A2278B2B
	for <lists+spice-devel@lfdr.de>; Fri, 25 Sep 2020 16:47:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 456746ED05;
	Fri, 25 Sep 2020 14:47:17 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oo1-xc36.google.com (mail-oo1-xc36.google.com
 [IPv6:2607:f8b0:4864:20::c36])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A03376ED09
 for <spice-devel@lists.freedesktop.org>; Fri, 25 Sep 2020 14:47:15 +0000 (UTC)
Received: by mail-oo1-xc36.google.com with SMTP id b12so798049oop.13
 for <spice-devel@lists.freedesktop.org>; Fri, 25 Sep 2020 07:47:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=9awTdaa0Iye8xaIjlt77NtkCpWbkkIyexfjYvky40P4=;
 b=XSo0Vw+wytYiP8dTpboFY0SJ6JCM38edPdJmQsGi0cZvv5OWxDalCikj9XDK4Dthyl
 31gHKpMT0JvF28RSXtMhxK1/2kXHTyWMqSwS6p85N6Gwo2c9vhQwhChEWtcf86+H5CBS
 /07msgxOiT62WL+Tfq5v0lCEQbp2EDaGsic20Tbtdu6Hr4mT7E5CXpZpO5EnbnXGxeeU
 g3zBPSgEXaQJGbju2SZ4mAv5A+qTvVy17JnLy8D815JKgj02R+90cIE/CF/YBO8D1zt4
 dH2CE1S0hAdHV+NVxbHPe3mNWRTYe08k1AQPTETrU3sP5tULgDdxPfVWzzuSYuVqXdqZ
 51Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=9awTdaa0Iye8xaIjlt77NtkCpWbkkIyexfjYvky40P4=;
 b=STlxqSUFTVIRERl5Yafp2GgKI1XhaEKQtkLglY4+/+EHqSq/a+irSG9fb0zXFtZ0op
 snBJugqWf6bTquxpgkd6SqeBXRrMB98NlPwClLbW3bTazLkfa9v2pdufCVmPdf/ydXzX
 SAtCEOn2t7r9VRKWxI1ekaeQ41wHkerxaMXzCDR1cdCb7GpFPTFfaxmbCtPWZ3uiD34L
 hqR0Sjkxhsh/unGiGU3Tv66k1F/bby/OHzHgMz1IL/Cz21+slzky+03IdJItVVvyRzLx
 hhjUnZ0B5BAEFxG5pccAmleVmDhGBFMpLmqyDMwJnpBbHzhZTfR+eq2IBT6fIaTskbgS
 65pw==
X-Gm-Message-State: AOAM530ZEaVCaUG8ks4kWB7zR8q5yieBHyQQJC2sRk29Lfsi4La+l3H1
 Qw+2INxHSeONq61tRhHSyDonXKXehAo=
X-Google-Smtp-Source: ABdhPJw3kp4TI9oPyYBRhNaTfUWsJ13B5BLWeu1/Qz2LeyaIDT18htJG1jcnsY/ldUGnGaVSmw62HQ==
X-Received: by 2002:a4a:dc99:: with SMTP id g25mr1087359oou.64.1601045234497; 
 Fri, 25 Sep 2020 07:47:14 -0700 (PDT)
Received: from ian.penurio.us ([47.184.24.231])
 by smtp.gmail.com with ESMTPSA id g3sm686833otp.14.2020.09.25.07.47.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Sep 2020 07:47:13 -0700 (PDT)
To: Frediano Ziglio <fziglio@redhat.com>
References: <rkg5ci$shh$1@ciao.gmane.io>
 <797216314.2109588.1601019269472.JavaMail.zimbra@redhat.com>
From: Ian Pilcher <arequipeno@gmail.com>
Message-ID: <0e7f6ade-765e-aa65-ff6d-7c3a46f759a8@gmail.com>
Date: Fri, 25 Sep 2020 09:47:13 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <797216314.2109588.1601019269472.JavaMail.zimbra@redhat.com>
Content-Language: en-US
Subject: Re: [Spice-devel] Windows 10 VDAgent incompatible with "hidden" KVM?
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

On 9/25/20 2:34 AM, Frediano Ziglio wrote:
>>
>>     <kvm>
>>       <hidden state='on'/>
>>     </kvm>
>>
>> Without this flag, the NVIDIA drivers refuse to load in a virtual
>> machine, giving a "Code 43" error.
>>
> 
> Do you know what this flag is doing?

The only documentation that I've been able to find is on the libvirt
site:

   https://libvirt.org/formatdomain.html

All it says is "hide the hypervisor from standard MSR based discovery."

On reflection it's entirely possible that its the NVIDIA drivers them-
selves that are breaking things, and the breakage only shows up when the
flag is set, because the drivers don't run without the flag.

A bit of testing shows that this is the case.  As soon as I disable the
P1000 in Device Manager, my mouse begins working.  In fact, I can
re-enable the P1000, and the mouse continues to work.  It's acting like
it's some sort of ordering issue.

And as a further test, stopping and starting the agent while the GPU is
enabled causes the mouse to stop working again.  It definitely seems
that NVIDIA driver "grabs" the mouse if it starts/runs before the agent.

> Can you post the agent logs when it's not working?

Where are the agent logs stored?

-- 
========================================================================
                  In Soviet Russia, Google searches you!
========================================================================
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
