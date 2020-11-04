Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B92982A6690
	for <lists+spice-devel@lfdr.de>; Wed,  4 Nov 2020 15:41:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D835B6E02E;
	Wed,  4 Nov 2020 14:41:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com
 [IPv6:2607:f8b0:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9786C6E02E
 for <spice-devel@lists.freedesktop.org>; Wed,  4 Nov 2020 14:41:38 +0000 (UTC)
Received: by mail-ot1-x343.google.com with SMTP id z16so14318942otq.6
 for <spice-devel@lists.freedesktop.org>; Wed, 04 Nov 2020 06:41:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=cw2A/AN/qjr1ojck/jXbcBYVuDKYreoRTI4otsEBaDA=;
 b=l76NbMBpEDzqZgPtHkW1VyNZL21IM84aMmEZPbKoGUrDn8s2sKpFdjvjIhmxZAzZiC
 d20ldf8keiHicDCNU7coStuyix718zgdob0A1NX2Wh19VolqG7x/Ba95C/NBIHFBUEle
 EH7WFOaCijEoQP2B1IDxZci0QwU34Wyohbn7w6Gll7xciOaI2JJ2uOmmO9jvtJO1N8aI
 S1BBy7+ioFM0P8CxywknKYI3LIPdB9cyI2LdTCBxl3Eg0lcwGnG4M5Lha961SyxUuX3/
 4xTWo2dVcZwRGhssQHiP8J15lxguz3idDHBwbescjeChcKem1MrXqGvp4wTDK1w1j/K5
 c4gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=cw2A/AN/qjr1ojck/jXbcBYVuDKYreoRTI4otsEBaDA=;
 b=BMSR0dyeCireIdoW9UR/5DVTSNYk05goZHUCfYziPWp8mmVK/LydbwJ/XledVPJdIq
 vrMF0J/kQXCHDDXFoS9Zl5L2mSRleMcyHIX0NBS+yQA0aKDjIhRqfVPVLim4hprmdk3M
 ZnSETKcLZ1Et7r4gQyDffN0LSWGVG/p/Ax/7Vdk1xPIcWaVmkrgk93fQ6MYinhtdjU5G
 6Tdo3ntm8EMAgx5NJIdR48pARqLnA1vSoPnwGHUUngeCYtzo60QlFwHqvqCDqPF9K6/U
 ZNmmU00JDYKI9/Ix9jCpm9xaFKXNtjFqcOSPiGq7chiH94eYZ+lM5x5oxP6eAFhR0VAg
 OUsQ==
X-Gm-Message-State: AOAM533paJ/a7R79xMZdy2qax20Dat2oIRJ82IWlw+zIokQaIs4+s23V
 tkIoYdabC7/F1tBU1Id2o/IYaIIQy/5BnQ==
X-Google-Smtp-Source: ABdhPJzE52oL9r5w7ydVyvMib/gClPWz+OQIUOYLgADAucM4qA/ca9SoIlpwkQUU85Or0vBs/hiTew==
X-Received: by 2002:a9d:7a8b:: with SMTP id l11mr18074125otn.272.1604500897496; 
 Wed, 04 Nov 2020 06:41:37 -0800 (PST)
Received: from ian.penurio.us ([47.184.24.231])
 by smtp.gmail.com with ESMTPSA id r4sm141203otd.66.2020.11.04.06.41.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Nov 2020 06:41:36 -0800 (PST)
To: Frediano Ziglio <fziglio@redhat.com>
References: <rnse6m$11ke$1@ciao.gmane.io>
 <1537970932.464609.1604475919652.JavaMail.zimbra@redhat.com>
From: Ian Pilcher <arequipeno@gmail.com>
Message-ID: <3e079fff-404a-85d1-7452-69e7cd3c7fac@gmail.com>
Date: Wed, 4 Nov 2020 08:41:35 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <1537970932.464609.1604475919652.JavaMail.zimbra@redhat.com>
Content-Language: en-US
Subject: Re: [Spice-devel] [PATCH] desktop_layout: ignore unconnected video
 devices
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

On 11/4/20 1:45 AM, Frediano Ziglio wrote:
> Did you test with multiple monitors, specially with the first(s) QXL disabled?

I've tested with multiple QXL displays, which appears to work just fine,
including when I disable the first QXL display with the display
settings.  (Disabling the actual QXL device in Device Manager messes us
the agent, because it causes a non-QXL "Microsoft Basic Display Driver"
adapter to appear.)

This patch doesn't change the behavior of the agent when a non-QXL
adapter has a monitor attached.  It's exactly as functional (or not) as
it is without the patch.

-- 
========================================================================
                  In Soviet Russia, Google searches you!
========================================================================
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
