Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCCCECB6E02
	for <lists+spice-devel@lfdr.de>; Thu, 11 Dec 2025 19:12:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1168410E31D;
	Thu, 11 Dec 2025 18:12:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UDEwyP/x";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
 [209.85.222.175])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 198AC10E802
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Dec 2025 12:38:16 +0000 (UTC)
Received: by mail-qk1-f175.google.com with SMTP id
 af79cd13be357-8b9d2e33e2dso3951485a.3
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Dec 2025 04:38:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1765456695; x=1766061495; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=TLB00X0YTq3IKrBbqxjjVG0Udhbot4Gt7V5SLsB2rkI=;
 b=UDEwyP/x039UOeCJ+brUbGA5nXsoI3Ua0octCxki44TW/e/Glgjl4tRr6yUucjaiM4
 w60gK7zDuv1Xznh3ncrLSr+U6vBIheD7cxj+J6r5YZR7AkdcM48l5+0Z2UjTJ56K0jdc
 UYEut36MNmlPwnsF2lD34v4xBymRAebF5QgWZ3ztheqMxQDa+l9n03X5ln27jOjyO34m
 VzAnjxNyichFIwIZGwmyw8CJMcvEP6CCsgiG0W7otsU+PlSFuLbNuFkNF+BlHdL9r/n6
 PwXQQW8DgYifHcYJyWUI+T1QgzK9/t67JDKP3K9so1Jwk75T7zQSugODM3SWFUU3Si25
 u7Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765456695; x=1766061495;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=TLB00X0YTq3IKrBbqxjjVG0Udhbot4Gt7V5SLsB2rkI=;
 b=YT5EQlzGJ3NZpsDW9RZFbdW8ZFmEG1j5PsGDe8TfMs078K63WyBWg0LCz6/N7aOmLp
 ak+djWdPGqRigrB2HMOiXcqv8NcfigH9u7uqLd5IwRtMwAqLLU8Uh4wg2zdzWJ50Z12Y
 bDhdGiFQ0ZDyRjZ11EkFwG2uQZXd9yHSWHd3S2hlVIW9kN0VR0sgilLNc/ALuz4Gkg4f
 /J6ACpiV9QAZHxgxIjdLD11GYTmX7tIhbukzl4K3ECI9QQVJGKp1lCrb6KDBsGPCTs4M
 Mx1+nLvmzd9kHiabbDkNoOck47LYReHTB6utxMZBpL8EWxemb5wGQLN414Zn3dvSZ/LS
 Wttg==
X-Gm-Message-State: AOJu0YypTEGGJAFtH9LjiCDYqH/Cp2m+msV0fHHR6Su/pNAJHGn2cZ5q
 so0I4a4U3VTgld5jJAiL2GXDfjJJAiaVvEGADqwByzPXKZq8Yc4mKFqN
X-Gm-Gg: AY/fxX5sb0UWzOYLaUh+6Q9cu3WZE2s/Pl9qm3eJs+PzQfSmNLW4Fiqq6/uxfRCZXZ4
 PXyQFArzz1ext8miwphhDRcxhOTaPEcwQlHfzeDg/P4dSCPqxMTtobWhZhGpxQQpRwPOyV20Yo1
 2wPPX4Ln4DKQactVqdB8SEPeWGZr0nzkZaaZCRTL+kf+ghQ2iDVnPJWWbjaj2SVRhejckIrVCG4
 HOfgvJyFSjLdGQdfzFeZTmR2hzEEx7A2mQB7trY43QZiwth+Iqo8BwYcDNAzIPc25xqiB5guJlS
 5NORD5FKxJ45s7OWW/L/Q3y0PUTdkuGxx8zCGAyYmDCh/PNDRu3+aI1rO+g+uPXpsGLN4ZahTWH
 4KJxWfCppVjYBraKT7kW7rKSI8uxu85hWpRJOdDR7+8yyZ4dmvlIZpiZ2eL6Ozfw2N9EJpAHrU+
 EnKbbNzFEOjBftG9fu4L+Lq3wGkUFj/8HX8CZYKD1DhrVm/TKjE09mUlj4eAE6seMMuQ==
X-Google-Smtp-Source: AGHT+IGDgJPr2hw6H4S/yNWqq/tSUdm4jBNIG04L7JMl/Jk/+YhpAh7PnOAlu/OggrDklt/eyNPB5w==
X-Received: by 2002:a05:620a:28d3:b0:8b2:a0cd:90ef with SMTP id
 af79cd13be357-8ba3a46bb8emr858281285a.70.1765456694882; 
 Thu, 11 Dec 2025 04:38:14 -0800 (PST)
Received: from ?IPV6:2602:47:d950:ab00:2988:77ff:6d91:6400?
 ([2602:47:d950:ab00:2988:77ff:6d91:6400])
 by smtp.gmail.com with ESMTPSA id
 af79cd13be357-8bab5787d5fsm204617085a.24.2025.12.11.04.38.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 11 Dec 2025 04:38:14 -0800 (PST)
Message-ID: <b0d290d2-2db8-4d68-a700-724d1d6ac431@gmail.com>
Date: Thu, 11 Dec 2025 07:38:13 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/2] Adjust dsignated initializer to be C++20 compliant
To: Frediano Ziglio <freddy77@gmail.com>, Uri Lublin <uril@redhat.com>,
 Victor Toso <victortoso@redhat.com>
Cc: spice-devel@lists.freedesktop.org
References: <cover.1765109578.git.nvinson234@gmail.com>
 <CAHt6W4dfEwtJWV0cPL4MA4ZrbQ-Quxy7cPPPG+oSJLcrVm87aQ@mail.gmail.com>
Content-Language: en-US
From: Nicholas Vinson <nvinson234@gmail.com>
In-Reply-To: <CAHt6W4dfEwtJWV0cPL4MA4ZrbQ-Quxy7cPPPG+oSJLcrVm87aQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Thu, 11 Dec 2025 18:12:24 +0000
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

On 12/11/25 06:55, Frediano Ziglio wrote:
> On Sun, 7 Dec 2025 at 12:20, Nicholas Vinson <nvinson234@gmail.com> wrote:
>>
>> When building with g++-16, the build fails with the following error:
>>
>>      server/tests/test-display-base.cpp:809:5: error: either all initializer
>>      clauses should be designated or none of them should be
>>
>> This is because g++-16 defaults to c++20 and when using designated
>> initializers with c++20, you don't wrap anonymous union fields with braces.
>>
>> Nicholas Vinson (2):
>>    m4/spice-compile-warnings.m4: disable -Wmissing-braces
>>    test-display-base.cpp: adjust designated init.
>>
>>   m4/spice-compile-warnings.m4       | 1 +
>>   server/tests/test-display-base.cpp | 2 +-
>>   2 files changed, 2 insertions(+), 1 deletion(-)
>>
> 
> The CI is not that happy. I added some commit to make it pass:
> - missing AUTHORS for "make syntax-check"
> https://gitlab.freedesktop.org/fziglio/spice/-/commit/fb018b3fbb26f38b2ffb0ee569d4aafc287fc738
> - too old Fedora (not related to these changes)
> https://gitlab.freedesktop.org/fziglio/spice/-/commit/a4525e204ef8b7e3beb3709823029e27de633d7a
> - compatibility with pretty old GCC
> https://gitlab.freedesktop.org/fziglio/spice/-/commit/6a2c24fd5c088cb3b016a40965882e98f010b583

I'm concerned about the old GCC compatibility commit. I think it would 
be more robust if designated initializer feature checks were added to 
configure.ac and meson.build instead.

That way you don't have to worry about how old or new the compiler is or 
if it implements the necessary GCC extensions, or implements them correctly.

Regards,
Nicholas Vinson

> 
> Do they sound good?
> I suppose the compatibility one could be merged.
> 
> Regards,
>    Frediano

