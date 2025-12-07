Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5258CCAB3E1
	for <lists+spice-devel@lfdr.de>; Sun, 07 Dec 2025 12:24:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEAB910E345;
	Sun,  7 Dec 2025 11:24:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XjRejBVI";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
 [209.85.222.171])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72A7D10E320
 for <spice-devel@lists.freedesktop.org>; Sun,  7 Dec 2025 01:07:16 +0000 (UTC)
Received: by mail-qk1-f171.google.com with SMTP id
 af79cd13be357-8b2ec756de0so336295685a.3
 for <spice-devel@lists.freedesktop.org>; Sat, 06 Dec 2025 17:07:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1765069635; x=1765674435; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=n3eXdb5GU3/ntlaFYWvjVmoBhHdDplqOZu1H106w2dc=;
 b=XjRejBVIt+lRYkE3Bkk/c13gt4kvYNwj1IyQK5Th7LzJVSnrp+vbfdgD9Cjn7yahym
 24Fi6g+g7AgVarvphvGbAV72xql+DHR10Bu+wv9EeMkgOjrqd+heq7qie6YfFKm/5KuN
 jmlZBb1l/epxlacST3VGya/0SRotGqX8FAGYhBpkTYIqnug2bMYHXgwgsyZybodk29Lw
 8Rret3xHz3AJ8+cYRGoovXZw/Qy8ssbkpjh9XamyjdXdTHVxnlGFX6nHt+X32XAVuUZ6
 UDSOEj7UCH2xP6r0OmK0wrkwKXbU2uNARqk5x91Eu2b5VX/9h/jtXyEJO82Nv4ZfFAAk
 PjiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765069635; x=1765674435;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=n3eXdb5GU3/ntlaFYWvjVmoBhHdDplqOZu1H106w2dc=;
 b=VlS6DFNsbKQ6a4sK2VfZjtr7W4SrtK+45Q7XSWFDPg3Xsyr0nUajqDvojxesYz8SsT
 8VQZB9j/rDIRnEKnfrommVaUeCKtMC30edOQBc3VpoLnD/h4tAFhjr0k5BtuhWVg6stB
 u+h0mR73u/nShdLt4Wa7wV/Tb8G4GLx+uZTWeiLODdKY8l12rKEaXE55ker6DE8maX0p
 /74GUa+qsOObYw1Zi3nU90loX8KwZfeL55hr3PVAWofkVeuhOhe3Zzp2Ff1IuGr31M9j
 9WSLrQ1kBRo3WEYN5D7BnSc2nEBCxsSltt91jbTxIUZJWH6UU2MFABHHQWOctbZiImD2
 YwLQ==
X-Gm-Message-State: AOJu0Yz3nvEdx3r4ByfZAlmjzO3w5J171jly74j4TmLr06P0/frZ3MXr
 D98xC/ptEUjxP8mONRAodNVzXHB2fwa5XHSxLbSwWVQw5aupytaRBaDa
X-Gm-Gg: ASbGncsFsTrHOrQYdUowduhwG6HnxmAQ8p6Q5DPQ3S+2bNjNNvQcJI0Qpjyoww6Mh+P
 nd2/2QkKT6rFbYf4sKA1NkocUKHRBRUWSzlpx3/v269YK7xYLYFmadCZnm2114eUecz0dbZbTe7
 capg0p5cL1jeXoEDuj6oobcBZs/IMe06JYCcGUYkP8xdoT7ZRa0e64R/7AFNh8EB8kQXYe80CD9
 vnepHkT30YKT16RH8JPiyS8C9ysNhTWTdGsdBxL27C2+Kug3bcY2tZPXFCPYJQQA3oQmbNUY154
 zjgNNXdZIPq0wbTnHBv0eZgrjdIySOcXNZZO6syRTIduj40uDHExBtKHGLrmbgQUEDVkRkNsH3c
 H3J3wsmFGrUIK8z+xOgBvKLE4acbAiZBeWcLSpP64owHhmdqTNI5+53+qVKT4HR/tBLhJk7iZaA
 VkPYQYAKjwnrWrVQeZbUJ8dM0hWqSxASRNIBXawknIHVikXykhvMB5i9A=
X-Google-Smtp-Source: AGHT+IEmxa1fqOR3RZ3iTNo3DmzfXOJch0BWXaLElXNGwhbFaoTlmQA71Wwxmm2XZ4YDCJxLouKrww==
X-Received: by 2002:a05:620a:3705:b0:82c:556:eaee with SMTP id
 af79cd13be357-8b6a23e2fd1mr545720585a.66.1765069635132; 
 Sat, 06 Dec 2025 17:07:15 -0800 (PST)
Received: from ?IPV6:2602:47:d950:ab00:6da4:91c3:831a:d97b?
 ([2602:47:d950:ab00:6da4:91c3:831a:d97b])
 by smtp.gmail.com with ESMTPSA id
 af79cd13be357-8b627a883b5sm725117085a.36.2025.12.06.17.07.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 06 Dec 2025 17:07:14 -0800 (PST)
Message-ID: <a096e6e2-361d-4a11-b23a-d88ff187a52d@gmail.com>
Date: Sat, 6 Dec 2025 20:07:13 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] m4/spice-compile-warnings.m4: disable
 -Wmissing-braces
To: Uri Lublin <uril@redhat.com>
Cc: spice-devel@lists.freedesktop.org, freddy77@gmail.com
References: <cover.1764987923.git.nvinson234@gmail.com>
 <91f68d92ea9b417efd8cdff957711fc635d70b38.1764987923.git.nvinson234@gmail.com>
 <CAAg9qJ2jvxsQtMtVQMXPVJgLgiZDStfrHkapNMmY94v77mz07g@mail.gmail.com>
Content-Language: en-US
From: Nicholas Vinson <nvinson234@gmail.com>
In-Reply-To: <CAAg9qJ2jvxsQtMtVQMXPVJgLgiZDStfrHkapNMmY94v77mz07g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Sun, 07 Dec 2025 11:24:52 +0000
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

On 12/6/25 18:38, Uri Lublin wrote:
> On Sat, Dec 6, 2025 at 10:54 AM Nicholas Vinson <nvinson234@gmail.com 
> <mailto:nvinson234@gmail.com>> wrote:
> 
>     Disable the -Wmissing-braces warning as it suggests adding braces to
>     designated initializes in a manner that violates C++20 rules.
> 
>     Signed-off-by: Nicholas Vinson <nvinson234@gmail.com
>     <mailto:nvinson234@gmail.com>>
>     ---
>       m4/spice-compile-warnings.m4 | 1 +
>       1 file changed, 1 insertion(+)
> 
>     diff --git a/m4/spice-compile-warnings.m4 b/m4/spice-compile-warnings.m4
>     index abe4a912..d2e1acc8 100644
>     --- a/m4/spice-compile-warnings.m4
>     +++ b/m4/spice-compile-warnings.m4
>     @@ -84,6 +84,7 @@ AC_DEFUN([SPICE_COMPILE_WARNINGS],[
>           dontwarn="$dontwarn -Wstrict-prototypes"
>           dontwarn="$dontwarn -Wsuggest-final-methods"
>           dontwarn="$dontwarn -Wsuggest-final-types"
>     +    dontwarn="$dontwarn -Wmissing-braces"
> 
> 
> Probably better to (also?) remove "-Wmissing-braces" from the
> list iterated by  gl_manywarn_item.

Just before gl_manywarn_item there is a comment that says "List all gcc 
warning categories". That comment is why I did not remove it from the 
gl_manywarn_item list.

It seemed more logically consistent to me to place it in the list and 
then use the dontwarn feature to disable the flag.

That said, I am amenable to either approach; I just would want to make 
sure everyone is OK with the requested change.

Thanks,
Nicholas Vinson

> 
> I suggest applying the m4 patch first (and g++ fix second) such
> that the build works after the first patch is applied.
> 
> Thanks,
>      Uri
> 
> 
>           # Get all possible GCC warnings
>           gl_MANYWARN_ALL_GCC([maybewarn])
>     -- 
>     2.52.0
> 

