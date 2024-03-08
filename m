Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7054687778D
	for <lists+spice-devel@lfdr.de>; Sun, 10 Mar 2024 17:17:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7059D10E08F;
	Sun, 10 Mar 2024 16:17:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=leemhuis.info header.i=@leemhuis.info header.b="MyNZGUHa";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 2776 seconds by postgrey-1.36 at gabe;
 Fri, 08 Mar 2024 09:45:24 UTC
Received: from wp530.webpack.hosteurope.de (wp530.webpack.hosteurope.de
 [80.237.130.52])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1123D10F921
 for <spice-devel@lists.freedesktop.org>; Fri,  8 Mar 2024 09:45:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=leemhuis.info; s=he214686; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:From:
 Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:In-Reply-To:
 References; bh=9nk/LM8qbXxqqrGQTnt5jKWaF87oDn2J91q3tvQdGAc=; t=1709891124;
 x=1710323124; b=MyNZGUHaAOBLpOuaJV2ItpVsMltJUVnB1OA6MJV2Jk6i9e6Ox4AaiJ3i0BRMr
 SnA+6LswZePwxmnuidv4Bzo4C18YAshiGILxEg7/4NDTWBGiYjCISbDyOupnXon/dd5gBXxuM3TLH
 jOlZ3LyeCo/GH9fSrPmsyhpuXCIk0l3fmpyFxJ9ubdxQupq12WIoCs1XzEfJ0uaxLEQWfqA2IjRKq
 cmqEg+OpN1Ezt9O/puKpr45MPHp1n360CGA/DD86PGTPnBuvZPejfMH0I8hvI1j39fkc4J5u+DQiy
 VSH8+svmsWARNU1n+eluSyUILAMBVWKC5fjGtTgAUj0JpsjS7Q==;
Received: from [2a02:8108:8980:2478:8cde:aa2c:f324:937e]; authenticated
 by wp530.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1riW4D-0001ul-M1; Fri, 08 Mar 2024 09:59:01 +0100
Message-ID: <7c7e363b-ec9b-4b46-a0bf-7ae062d734d1@leemhuis.info>
Date: Fri, 8 Mar 2024 09:58:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] drm/qxl: fixes qxl_fence_wait
Content-Language: en-US, de-DE
To: Alex Constantino <dreaming.about.electric.sheep@gmail.com>
Cc: 1054514@bugs.debian.org, airlied@redhat.com, carnil@debian.org,
 daniel@ffwll.ch, dri-devel@lists.freedesktop.org, kraxel@redhat.com,
 linux-kernel@vger.kernel.org, regressions@lists.linux.dev,
 spice-devel@lists.freedesktop.org, timo.lindfors@iki.fi,
 tzimmermann@suse.de, virtualization@lists.linux-foundation.org
References: <fb0fda6a-3750-4e1b-893f-97a3e402b9af@leemhuis.info>
 <20240308010851.17104-1-dreaming.about.electric.sheep@gmail.com>
 <20240308010851.17104-2-dreaming.about.electric.sheep@gmail.com>
From: Thorsten Leemhuis <regressions@leemhuis.info>
In-Reply-To: <20240308010851.17104-2-dreaming.about.electric.sheep@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-bounce-key: webpack.hosteurope.de; regressions@leemhuis.info; 1709891124;
 025a823d; 
X-HE-SMSGID: 1riW4D-0001ul-M1
X-Mailman-Approved-At: Sun, 10 Mar 2024 16:16:58 +0000
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

On 08.03.24 02:08, Alex Constantino wrote:
> Fix OOM scenario by doing multiple notifications to the OOM handler through
> a busy wait logic.
> Changes from commit 5a838e5d5825 ("drm/qxl: simplify qxl_fence_wait") would
> result in a '[TTM] Buffer eviction failed' exception whenever it reached a
> timeout.

Thx for working on this.

> Fixes: 5a838e5d5825 ("drm/qxl: simplify qxl_fence_wait")
> Link: https://lore.kernel.org/regressions/fb0fda6a-3750-4e1b-893f-97a3e402b9af@leemhuis.info

Nitpicking: that ideally should be pointing to
https://lore.kernel.org/regressions/ZTgydqRlK6WX_b29@eldamar.lan/ , as
that the report and not just a reply to prod things.

Ciao, Thorsten
