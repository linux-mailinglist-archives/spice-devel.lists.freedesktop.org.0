Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64F70CAA311
	for <lists+spice-devel@lfdr.de>; Sat, 06 Dec 2025 09:54:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9080E10E0FA;
	Sat,  6 Dec 2025 08:54:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Uc/w0F3e";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com
 [209.85.222.177])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E5AA10E223
 for <spice-devel@lists.freedesktop.org>; Thu,  4 Dec 2025 21:20:49 +0000 (UTC)
Received: by mail-qk1-f177.google.com with SMTP id
 af79cd13be357-8b2dcdde65bso215506385a.0
 for <spice-devel@lists.freedesktop.org>; Thu, 04 Dec 2025 13:20:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1764883248; x=1765488048; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=JCVv2Sdgu4DYpu++mT6LUAoCyKMvpvwNfh4s2SQ9yjU=;
 b=Uc/w0F3e/WyInYgj71TezFCpXMaQEGcBAw0G0iDimx9V2DRvuN7iye1vkR4F80t/Jr
 tN1DOdfSWqnAtyFy4pTqfDgHkPcXyzao0kO9s6N1aV0RJvj0jkeCpfDV9/3yiiHsau49
 C1LaOz2A8RNi/9G5H6Q8PxQHuwGTynH5u86VMs0AxNPzzVPaw9RBiMzVeNivF0fXUzLT
 OOlktU406UjfLCfOJWr7tfrKOthTNK/C+rqYXIe65IndAzn+761T6j9i2i9U9LCvsyEl
 yTKSSFIdUrEpif9QqdxTLjoQZHvMXSLLpcq2C2HyBJ3S4i61n5EA3yv89irhA864VNeR
 X4AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764883248; x=1765488048;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=JCVv2Sdgu4DYpu++mT6LUAoCyKMvpvwNfh4s2SQ9yjU=;
 b=RD+Jr7u7mOrQMrlyhB7o8casoUa/wfrIuCsOXKjpG3fbzV3gRZAreARm2ro4RM0S/3
 KHhSTUvaGvloNV4d1Wk2LHpCss6aGrj+HdqhhJ3Y3itpM8P/LQBEsJcnT7xwGT4X4/Zz
 UiF8AoSQ3OPEcAg6rP6ymGS5LI25NN6QEYL5viEDY1jGRH5gL66HhkWoVstYXygYyxYT
 NdaRS2ueKKxEaUV2TWvxCYQIbHEGoh57que4S1t0hkdPNrm5BthEg3J0/zXTEpoT1jHB
 4mY9Tk+4D4EjmaQnnboClG+Rvz10z3iHPd18RlauGSuOhb0/RGVE196t7T6MsfdvT39g
 2cRw==
X-Gm-Message-State: AOJu0YwInv8aWf6uLxSLJ3qECyoLcPvvXB0R1nnm6oXHn5ePSkEIgzbN
 pgPsWtGmRtzmR4p8d7TRhB4lMyzbSlQ6FFrhtJUf2Zb5kTX+tc4SVCo4
X-Gm-Gg: ASbGnctj5EZDgs1kZ/1GMS16tgnByxT2hn2E5RzgLBRLbiTNjMtB+5nKBUJ9qzTkvMj
 9XRB+pOJUZ8ugvITjyLdaLgzZwq5GNOifRhsEGLwYvga60eVzMvJkfJ6U9UJ+z3aCBiztJK2plI
 e1EKmb2psVMzWd31ITlF1Lua0uEhhxxGfXUJJYBZJts2TQztVVIlxgIEBzY/ZVnrBHejGqf0EoL
 O0d39jwrudbRgnr39A33f+Ea+2qwqpjL8a6iugUJIa/Bn7E307+aMWkGSHkZ3jyf7H2MW5hUYWV
 yvt64xhTL8muiJdfiOh9bPxMi0ZQ0+/Db31rXJ+QVK+wOyGorPLzTpM0YFAdajshhIECeVYEImh
 11BgkigxZobdt2gyi+omD07yPAV6H6b10IM3qBGqZ3Dieiw4pABrUubTfw6GVhe70wIl6AbbQCO
 H6ZtFUpEThmcCzwbRGA8pU8zHubEi28VL4n5MpEp+iTwrJwxlc1vJG034=
X-Google-Smtp-Source: AGHT+IGVs7VNzzSWk0q1Wl8auY89fSLTT3HsizKqAFg2iMwGCdJ1N4bonl9fjElBOZNosdpb/52DeQ==
X-Received: by 2002:a05:620a:29ce:b0:8b2:eb83:b94 with SMTP id
 af79cd13be357-8b61814bea0mr611935885a.25.1764883247852; 
 Thu, 04 Dec 2025 13:20:47 -0800 (PST)
Received: from ?IPV6:2602:47:d950:ab00:b363:e8b1:40d5:873f?
 ([2602:47:d950:ab00:b363:e8b1:40d5:873f])
 by smtp.gmail.com with ESMTPSA id
 af79cd13be357-8b6252b5e14sm229040285a.15.2025.12.04.13.20.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 04 Dec 2025 13:20:47 -0800 (PST)
Message-ID: <1a309b38-3c92-4118-8ab8-21c865490084@gmail.com>
Date: Thu, 4 Dec 2025 16:20:46 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] test-display-base.cpp: adjust designated init.
To: Frediano Ziglio <freddy77@gmail.com>
Cc: spice-devel@lists.freedesktop.org
References: <cover.1764732184.git.nvinson234@gmail.com>
 <20a971945bfcfbfb281e1b4654dcdfe8a66033d6.1764732184.git.nvinson234@gmail.com>
 <CAHt6W4fbv7DoKue0i9Zjpm+M6coT95dakoXbRFeuyfkQ9qG6yA@mail.gmail.com>
Content-Language: en-US
From: Nicholas Vinson <nvinson234@gmail.com>
In-Reply-To: <CAHt6W4fbv7DoKue0i9Zjpm+M6coT95dakoXbRFeuyfkQ9qG6yA@mail.gmail.com>
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

On 12/4/25 16:05, Frediano Ziglio wrote:
> On Thu, 4 Dec 2025 at 17:06, Nicholas Vinson <nvinson234@gmail.com> wrote:
>>
>> Adjust designated initializer to be C++20 compliant. Starting with
>> g++-16, GCC will default to the C++20 standard.
>>
>> Signed-off-by: Nicholas Vinson <nvinson234@gmail.com>
>> ---
>>   server/tests/test-display-base.cpp | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/server/tests/test-display-base.cpp b/server/tests/test-display-base.cpp
>> index b220b7fe..5d0404c9 100644
>> --- a/server/tests/test-display-base.cpp
>> +++ b/server/tests/test-display-base.cpp
>> @@ -806,7 +806,7 @@ static QXLInterface display_sif = {
>>           .major_version = SPICE_INTERFACE_QXL_MAJOR,
>>           .minor_version = SPICE_INTERFACE_QXL_MINOR
>>       },
>> -    { .attached_worker = attached_worker },
>> +    .attached_worker = attached_worker,
>>       .set_compression_level = set_compression_level,
>>       .set_mm_time = nullptr,
>>       .get_init_info = get_init_info,
> 
> With this change I'm getting
> 
>    CXX      test-display-base.o
> test-display-base.cpp:826:1: error: missing braces around initializer
> for 'QXLInterface::<unnamed union>' [-Werror=missing-braces]
>    826 | };
>        | ^
> 

Could you post your compiler version and the CXX flags you used?

> Frediano

