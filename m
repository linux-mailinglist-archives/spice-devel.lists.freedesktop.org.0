Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9F543F92C1
	for <lists+spice-devel@lfdr.de>; Fri, 27 Aug 2021 05:16:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 338D86E053;
	Fri, 27 Aug 2021 03:16:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com
 [IPv6:2607:f8b0:4864:20::632])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 834876E053
 for <spice-devel@lists.freedesktop.org>; Fri, 27 Aug 2021 03:16:37 +0000 (UTC)
Received: by mail-pl1-x632.google.com with SMTP id d17so3047080plr.12
 for <spice-devel@lists.freedesktop.org>; Thu, 26 Aug 2021 20:16:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-transfer-encoding;
 bh=ChNy+f+ok7RLcmZMcTLpTyHiabfi2+IiGiKDqdEDLAw=;
 b=Wrdi31FOjLji8ZqPmclShWam0zyLjpGgFblCDqgD27CczhKEYcxEeHJOAWPLYYC+GW
 Ni6gIGWB0uIFSL7SMt1oPyQwK8MOrPXECMdIBpRCxfDpKnz6itTOZELekYifY13EjfG1
 DYT0CaQSDQ6rHA00ZkkAtsIOPbN7C5jHu1BqH3eaoqiytr3Vxi8Cn8fHjAVuRv6y54bg
 SDqj68eCTTWcwwoKbfYIfucy5Vt0s6a+bdAQJ8tBaDRRfudYKRA6g8vR1x3fCSLpoMut
 HT8+WIcGzWwExdGWn+14l4n6r+0iw19srxmlAeMm3jB7rorxfOAPsoUr7/+BOg7XwD1e
 JfNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-transfer-encoding;
 bh=ChNy+f+ok7RLcmZMcTLpTyHiabfi2+IiGiKDqdEDLAw=;
 b=SdWT2fQWJ/0HfdUq5zkNiC/Rviqj+TNKQCR3Kt5XwZkljEZXS4kdhEpD0Dp7mvvjRM
 XDr4/+xoynhfFRvxxD8q2SIIfm/BLf8QH0Nw+5fI6wXfdJBu4QnJ8hAuuIssHOvNs5fi
 3q5ykSy9w72xO8l6wMbz0kj4TB5uOATEfWHaLD1+mz4lmOnkNQranuF4056Vp7ayhGos
 ClIOiI31g0wEXueF85kRE4XLyGm5CNMFiwAZvPeZUkP82hsbyY7rUjh54gjPi0a1e6Y4
 u482OI+pW0ifCKyK7SWgjTRHnJiBdbeED/9YTSsKFOkNaB3RiKPz2B1/aoBm4L4yVk5z
 FeSw==
X-Gm-Message-State: AOAM5316DpcXFi20J157X8vCg0ZSI2jQ7R01mI+LlOc9smLUT+x6uaWn
 1PQ4tGFWlufv8Pze9NxTZSz1wmxyvfs=
X-Google-Smtp-Source: ABdhPJwp6VQi1uipkoG6U+bN804M2HrcKxLEZWTjabsPze/KebCp9pwGsf05/i3TDPmI6w4l6S0zmQ==
X-Received: by 2002:a17:902:db11:b0:138:7021:2caf with SMTP id
 m17-20020a170902db1100b0013870212cafmr6597946plx.26.1630034196919; 
 Thu, 26 Aug 2021 20:16:36 -0700 (PDT)
Received: from [10.76.51.182] ([61.120.150.71])
 by smtp.gmail.com with ESMTPSA id s192sm3790867pgc.23.2021.08.26.20.16.35
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 26 Aug 2021 20:16:36 -0700 (PDT)
To: spice-devel@lists.freedesktop.org
From: Henry Zhang <gfx.kvm.zhang@gmail.com>
Message-ID: <d8401935-6b13-05c1-9aa5-a899a561eebc@gmail.com>
Date: Fri, 27 Aug 2021 11:16:33 +0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.13.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] how to use wix script for qxl-wddm-dod river
 installation
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

Hello Guys,

There is QXLWDDMDODInstaller.wxs script for windows qxl driver. But I 
searched in this mailing list, there is no more information how to use it.

I installed the wix tools 3.10 and try to use the command: candle & 
light, there are some issues populate and have no idea to fix it.  the 
error message I met is: "error LGHT0094: Unresolved reference to symbol 
'CustomAction:MisProcessDriverss' in secion 'Product:*". Am my missing 
any parameters to candle & light commands?

Thanks a lot for any insight.

BRs

Henry

