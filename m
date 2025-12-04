Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21897CAA317
	for <lists+spice-devel@lfdr.de>; Sat, 06 Dec 2025 09:54:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4F2210E18F;
	Sat,  6 Dec 2025 08:54:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OnXfQs5b";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
 [209.85.222.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 115FB10E9D6
 for <spice-devel@lists.freedesktop.org>; Thu,  4 Dec 2025 22:16:56 +0000 (UTC)
Received: by mail-qk1-f172.google.com with SMTP id
 af79cd13be357-8b144ec3aa8so126190385a.2
 for <spice-devel@lists.freedesktop.org>; Thu, 04 Dec 2025 14:16:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1764886615; x=1765491415; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=/iNOALQ4O9gbJiA4gjoN9LqqgT5Ar35i0ekoLQEGdys=;
 b=OnXfQs5b3NO5OHP2G4hj/0sKQgiMAuk1w0Q9OHUPfFf3IgZxGONpe+bz8NzLJPK6Nf
 KJSSnyTUwxmLxb0gHTvDb8i/B+xIsyOcz00MdibZP+Wi8pZ/bRFqE1Rg88wRzEFBWLzz
 VWvYfTFhjWriQ4OEfdacw+e9K/xzWLF0HNZNkWC6V2/7RoN72msBK/YnqFPMLxHe+aL6
 pVhCCzCpW+1PAQxT/LaYDvkfhr33trjgIIY5pDEaBMSIdwN22f9pOiAzTTkjQL61JPM+
 eMFkhB+9XumnQKmFnuFjPW5mk3xSKu2SZBDyU4+LnX95yHoHv/AdPUfs1NGU8UZMTrcO
 UU0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764886615; x=1765491415;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=/iNOALQ4O9gbJiA4gjoN9LqqgT5Ar35i0ekoLQEGdys=;
 b=lLWm5ApxnqXJO928YZ/gEhFxkEJGa24Vl6xnN6KRu8Um/jYfgcPG5RmkUGf8rzwKyh
 Zl/JBCNUiMyLDFmZ4AXR9Gw7F7jkr+nZp2JP1D4MEYPKkW2vBoybZulB6lG+ulxD9OLy
 HWCsrICUHl3/+ETpv3wK6xE/87W7oH5bnLlPWATt1+EqDRpnSGtgfuXWMkSBGJxq6Djg
 r/iQPfaoTVqUYssR2BNdkxjyi0j2Df62nufV76kJtO2m1knSAf6x/7/He3yDkU75sE5X
 r3VJD7Ql+0jnuk5QHon2cs60gKdZnB/uxMt34KJxc4rHr4a7jkbzU8vl2qK54L7RmqNU
 UBLQ==
X-Gm-Message-State: AOJu0Ywjy2CyeLU6IifVoxOEzSbpaC63liYg/RuKFC/aP20aQj70E9FW
 AOJzb+bwn93KhXa75jYrVl3EXa2KfYkrBioOGyfCGPa9F03yPifVBxc1zefjVA==
X-Gm-Gg: ASbGncv+SpCxuk8pUlBdzx3gKG7w5Sx6H30Uj+fjmIWLteT1H4K94xUApdIpsqWj8Bi
 4XroqyxLqUwNyY7WVzFRFlGeydimN5aoDuCWYSYghn5JAdXYzDGVPqScsezGq3aKyvE7kA1xBvt
 +AJumcdp/EVrqWANeUeKb4GKsXV6HalpTnYun+bQL64SWTQSX0z0VMnPRrHuVzYMSbYxjZHvG0U
 KVXEGjotnhe3ceJ1NII5pX7lYRcq014cZZ1luBea6w0ZEzPxQxItaJ/Pp7wtIgd9SbgD3OKtCR5
 8hiDYHYbCD2CMMxQpiJi3R95nb+P9LaXtTDGRpyLLXMILjtWzntj7zVK/VLP8AWWzuo2vhVHn+i
 Kk/CCZp3kjB+MMUsZcktpC9EXxXQCdHWYLvHOZCLqrc+7WkiJkrna6KCesgelDeJBYuzT90ndwl
 PhQ31wCbUig7avBV9BdoRTmhPcKzcBH6w1uNI4cB9Kx7wF8MwJntbQwyo=
X-Google-Smtp-Source: AGHT+IGvFot173ree86NjP13d3VmqRZ7iqVbbXLxbbSr81+qjL21KJH8yeqfEwkIiATrzDnG7SfgQQ==
X-Received: by 2002:a05:620a:d96:b0:8b2:1568:82db with SMTP id
 af79cd13be357-8b5e564655amr1183320685a.29.1764886614818; 
 Thu, 04 Dec 2025 14:16:54 -0800 (PST)
Received: from ?IPV6:2602:47:d950:ab00:b363:e8b1:40d5:873f?
 ([2602:47:d950:ab00:b363:e8b1:40d5:873f])
 by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-88827f33236sm20690706d6.12.2025.12.04.14.16.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 04 Dec 2025 14:16:54 -0800 (PST)
Message-ID: <5653f3be-ccaf-4586-b155-9ee1b43e1401@gmail.com>
Date: Thu, 4 Dec 2025 17:16:53 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] test-display-base.cpp: adjust designated init.
To: Frediano Ziglio <freddy77@gmail.com>
Cc: spice-devel@lists.freedesktop.org
References: <cover.1764732184.git.nvinson234@gmail.com>
 <20a971945bfcfbfb281e1b4654dcdfe8a66033d6.1764732184.git.nvinson234@gmail.com>
 <CAHt6W4fbv7DoKue0i9Zjpm+M6coT95dakoXbRFeuyfkQ9qG6yA@mail.gmail.com>
 <1a309b38-3c92-4118-8ab8-21c865490084@gmail.com>
 <CAHt6W4dkO2xsVPFb-gmcgtLbas4HV2WvJgnsoMgHASwi5FgO7A@mail.gmail.com>
Content-Language: en-US
From: Nicholas Vinson <nvinson234@gmail.com>
In-Reply-To: <CAHt6W4dkO2xsVPFb-gmcgtLbas4HV2WvJgnsoMgHASwi5FgO7A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Sat, 06 Dec 2025 08:54:33 +0000
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

On 12/4/25 16:26, Frediano Ziglio wrote:
> Frediano
> 
> On Thu, 4 Dec 2025 at 21:20, Nicholas Vinson <nvinson234@gmail.com> wrote:
>>
>> On 12/4/25 16:05, Frediano Ziglio wrote:
>>> On Thu, 4 Dec 2025 at 17:06, Nicholas Vinson <nvinson234@gmail.com> wrote:
>>>>
>>>> Adjust designated initializer to be C++20 compliant. Starting with
>>>> g++-16, GCC will default to the C++20 standard.
>>>>
>>>> Signed-off-by: Nicholas Vinson <nvinson234@gmail.com>
>>>> ---
>>>>    server/tests/test-display-base.cpp | 2 +-
>>>>    1 file changed, 1 insertion(+), 1 deletion(-)
>>>>
>>>> diff --git a/server/tests/test-display-base.cpp b/server/tests/test-display-base.cpp
>>>> index b220b7fe..5d0404c9 100644
>>>> --- a/server/tests/test-display-base.cpp
>>>> +++ b/server/tests/test-display-base.cpp
>>>> @@ -806,7 +806,7 @@ static QXLInterface display_sif = {
>>>>            .major_version = SPICE_INTERFACE_QXL_MAJOR,
>>>>            .minor_version = SPICE_INTERFACE_QXL_MINOR
>>>>        },
>>>> -    { .attached_worker = attached_worker },
>>>> +    .attached_worker = attached_worker,
>>>>        .set_compression_level = set_compression_level,
>>>>        .set_mm_time = nullptr,
>>>>        .get_init_info = get_init_info,
>>>
>>> With this change I'm getting
>>>
>>>     CXX      test-display-base.o
>>> test-display-base.cpp:826:1: error: missing braces around initializer
>>> for 'QXLInterface::<unnamed union>' [-Werror=missing-braces]
>>>     826 | };
>>>         | ^
>>>
>>
>> Could you post your compiler version and the CXX flags you used?
>>
> 
*snip*

This appears to be caused because -Wmissing-braces is being explicitly 
set. I've tried with both gcc-15 and gcc-16, and there does not appear 
to be a way to suppress that warning while using designated initializers.

The original syntax triggers the error message "error: either all 
initializer clauses should be designated or none of them should be" when 
building against the C++ 20 standard.

Regards,
Nicholas Vinson

> 
> Frediano

