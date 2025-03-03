Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 983D4A4C5FC
	for <lists+spice-devel@lfdr.de>; Mon,  3 Mar 2025 17:03:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B479D10E480;
	Mon,  3 Mar 2025 16:02:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=rz.uni-freiburg.de header.i=@rz.uni-freiburg.de header.b="Ej0bUNbt";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 484 seconds by postgrey-1.36 at gabe;
 Mon, 03 Mar 2025 16:02:53 UTC
Received: from a1422.mx.srv.dfn.de (a1422.mx.srv.dfn.de [194.95.233.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3ACAC10E480
 for <spice-devel@lists.freedesktop.org>; Mon,  3 Mar 2025 16:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 rz.uni-freiburg.de; h=content-transfer-encoding:content-type
 :content-type:in-reply-to:from:from:content-language:references
 :subject:subject:user-agent:mime-version:date:date:message-id
 :received; s=s1; t=1741017282; x=1742831683; bh=9+S4nqcD5cNqnm7c
 ui4P1r6V3LFriP+RE5+lFvpRJ7I=; b=Ej0bUNbt3sCJTjKfmB/N6WRZuCwbHD6r
 vmLRetXV47Z20Epctl1n4XQO7LrhggzOgpzud5LnC72gAwijZMN0FV8ib/9r2Ahk
 om7f4W7F/ZIT0iaThg5AmItK2dBT2NkGiPq2ehw/EsmhwGf/vhHNvCZSMXgtXoem
 4s+faqVVSDM=
Received: from fe1.uni-freiburg.de (fe1.uni-freiburg.de [132.230.2.221])
 by a1422.mx.srv.dfn.de (Postfix) with ESMTP id A09161E0150
 for <spice-devel@lists.freedesktop.org>; Mon,  3 Mar 2025 16:54:42 +0100 (CET)
Received: from [2001:7c0:2517:a:4b56:9ec4:d188:b1a0] (account
 michael.scherle@rz.uni-freiburg.de HELO
 [IPV6:2001:7c0:2517:a:4b56:9ec4:d188:b1a0])
 by mail.uni-freiburg.de (CommuniGate Pro SMTP 6.3.19)
 with ESMTPSA id 46330427; Mon, 03 Mar 2025 16:54:42 +0100
Message-ID: <d31fc94e-2b6f-4462-85b3-56c981a05c39@rz.uni-freiburg.de>
Date: Mon, 3 Mar 2025 16:54:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/10] Update spice-common submodule
To: Frediano Ziglio <freddy77@gmail.com>
Cc: spice-devel@lists.freedesktop.org
References: <cover.1740651328.git.michael.scherle@rz.uni-freiburg.de>
 <23dcc5422093345fab0b9c8122fc807d5243a41f.1740651328.git.michael.scherle@rz.uni-freiburg.de>
 <CAHt6W4dzLkgJFhjWu9ZkeijTsePrAjd1spRW01-hg3092Ok-hQ@mail.gmail.com>
Content-Language: en-US
From: Michael Scherle <michael.scherle@rz.uni-freiburg.de>
In-Reply-To: <CAHt6W4dzLkgJFhjWu9ZkeijTsePrAjd1spRW01-hg3092Ok-hQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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

Thank you very much. I apologize for the not quite clean merge request 
by email, this is my first time. Besides that are there any suggestions 
for improvements to the other patches?

Thanks Michael

On 02.03.25 18:40, Frediano Ziglio wrote:
> On Fri, Feb 28, 2025 at 9:59 AM Michael Scherle <
> michael.scherle@rz.uni-freiburg.de> wrote:
> 
>> This brings in the following changes:
>>        common: Add a udev helper to identify GPU Vendor
>>        build: Avoid Meson warning
>>        Drop Python 2 from m4/spice-deps.m4
>>        Stop using Python six package
>>        codegen: Use context manager when opening files
>>
>> Signed-off-by: Michael Scherle <michael.scherle@rz.uni-freiburg.de>
>> ---
>>   subprojects/spice-common | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/subprojects/spice-common b/subprojects/spice-common
>> index 58d375e5..8c0319e3 160000
>> --- a/subprojects/spice-common
>> +++ b/subprojects/spice-common
>> @@ -1 +1 @@
>> -Subproject commit 58d375e5eadc6fb9e587e99fd81adcb95d01e8d6
>> +Subproject commit 8c0319e31df967e41c74f4121cbdb3b785fe114e
>>
> 
> Acked-by: Frediano Ziglio <freddy77@gmail.com>
> 
> That's surely the easy one
> 
> Thanks,
>    Frediano
> 

