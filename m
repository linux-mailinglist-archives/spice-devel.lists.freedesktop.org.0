Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9888459DD32
	for <lists+spice-devel@lfdr.de>; Tue, 23 Aug 2022 14:27:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA08410E67A;
	Tue, 23 Aug 2022 12:27:17 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [65.103.31.132])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E5F810EEDD
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Aug 2022 12:27:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=codeweavers.com; s=6377696661; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1OAywUDaeakx7z30MBlzaWN4RHt2a/buOt9zWREyEtQ=; b=vfhoYg+jPZ0AJqotHrkY8v664M
 55UHeQOFHozS1dPFxSVDwCckjtmMZwWvUNE/hK3y3NbbDbKABkVpuSzg511lMSRw3YMo4mt9WJUtF
 5qNPq86D0+2qcKLRFESyE33baKhlAD/yMShCk4vta7f6UBaI4fOqdotrukvYDeRSk3TM=;
Received: from foghorn.codeweavers.com ([65.103.31.130] helo=[127.0.0.1])
 by mail.codeweavers.com with esmtp (Exim 4.92)
 (envelope-from <hverbeet@codeweavers.com>)
 id 1oQSzg-0005d3-G2; Tue, 23 Aug 2022 07:27:00 -0500
Message-ID: <978dd3cb-5454-2362-9491-e64eda3d1d86@codeweavers.com>
Date: Tue, 23 Aug 2022 14:26:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-GB
To: Frediano Ziglio <freddy77@gmail.com>
References: <20220823093952.19560-1-hverbeet@codeweavers.com>
 <CAHt6W4df6uv07j9s+Yp1q8h_g-imiGXdYAbxuaJD1uQKLrzSzA@mail.gmail.com>
From: Henri Verbeet <hverbeet@codeweavers.com>
In-Reply-To: <CAHt6W4df6uv07j9s+Yp1q8h_g-imiGXdYAbxuaJD1uQKLrzSzA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Spice-devel] [PATCH x11spice] Call xf86SetDesiredModes() in
 DUMMYScreenInit().
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi Frediano,

On 23/08/2022 14.01, Frediano Ziglio wrote:
> Looking on the Internet this function is also called in EnterVT
> callback. Don't we need something similar?

I think that in principle we would, but by its nature of being an
"off-screen" driver, spice-video-dummy doesn't (or at least, shouldn't)
VT switch.

I suppose we could implement EnterVT()/LeaveVT() anyway for consistency
with other drivers, or add an error message in case we ever get there
anyway, or something along those lines, but it feels a little moot.

Henri
