Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F11CAC81A
	for <lists+spice-devel@lfdr.de>; Mon, 08 Dec 2025 09:33:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1E1910E3CC;
	Mon,  8 Dec 2025 08:33:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="chRTTNEJ";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
 [209.85.160.176])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAC5010E34F
 for <spice-devel@lists.freedesktop.org>; Sun,  7 Dec 2025 12:19:29 +0000 (UTC)
Received: by mail-qt1-f176.google.com with SMTP id
 d75a77b69052e-4ed66b5abf7so45780271cf.1
 for <spice-devel@lists.freedesktop.org>; Sun, 07 Dec 2025 04:19:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1765109969; x=1765714769; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=NWkkiVkUius0EMpzEQAv17gclaDP//5Pgjm/GLilZmY=;
 b=chRTTNEJLygoDOwphdLX2OnBqqU2a4DCiZa5pgnXBHP1Py5u4TK5SH8lFRWBjoRpUJ
 Rq1SOAIL6tK1cYA6MLq69VAcR8yCWwDhhUN1QTFjKsGgg88XP4w7JUUEFzNU5UIqSiWm
 pyUFXlxaKOoX41CN8+bJXpj4SbmOpXNbMjHj9T3Fsb2c213wlkIk8Ayd/+e8bkUX7Yhs
 V3dkSsogdD3CH5JU76Z+m/lrpCLoa7Lv0nNQzAYFLQri1FKPsFTcdiy2HO16769oq5y2
 +odhezPTjHrvOH9R8bc4NgNgzH4hV3tmIS5c0U/AaYJZOvnLtdnOsB47LccqSXVricO7
 QXCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765109969; x=1765714769;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=NWkkiVkUius0EMpzEQAv17gclaDP//5Pgjm/GLilZmY=;
 b=lYA54FNGhuXkHuD/ZWvwhgcI0fkznHSzizrOAyztI4rH5kiTfkw+HsP/IgjOKAggdN
 cdDiraelND423q5dlr4PakuYONumJUWMSEPYv2pMdCAdWGX3rPTra0Nbb9noXjBI0UPR
 VC8nZgaP8Wfxt05HYfqI8WNfkEFlY253zKKRasxwt7kQcBx6OqPr0T4QenlYgMrOhi+G
 p3BBr7HfRyBq175ex40JnCrbSzRQIelfPnxOmKXgXATNQe7JI9pb6TVYwoVCnSayAXI3
 jrTPbJRaCj68JWW7SV8lqQzSv6g5opML5EEYmpTTi1mSSARaMBadhI3IjDYgwA3KA4nF
 E45g==
X-Gm-Message-State: AOJu0YxkwXvwidHJjYUjZJE+h6679/1mT0zWE+TsSMbwBhrjuJrM6PwT
 Xr/znPQYBt8WBDKJdfMzD50yYzlPLRmCnkqaqvyltGH+BGvxvZ7kKte6
X-Gm-Gg: ASbGncurCGeHUj4xiP5yb31iEFr9wH2JRd29dwfr5jGxxgNFehagQq2q8iB6uMkY1kq
 nlJvt8/zms/pkKCDMMuYL4OYrtCAtqodgeDAyOKmA1amZbIoCOtfWBJ9CY737JG4Oe6lFCAF8tY
 Rv7X5npRAwdkkU0+27IpTplbzphdMeNIOtSU/rY9hYvls9lkvVGpi4AG/SpzmPNzB0iTfnqwYre
 Hzfxr77KZlMXpUjBNLfVf185BiXCNUket+4FkAL7HHQBxnOAqeWc/RxWVC9Dgd3Bk11G8SS9p5o
 qaoDw3YTcCshwZjxoC/7FZo9Rh69VexarkBLEww/9cgRBQwuQ9BbJ1dwDPkpdmYCHxbHK5WbZXL
 ES4uOPcCz59yRDdIxY35u9pg6zeFrEewj1LneEnwug4V74L07bYexzVQVGvb5dQULc63HOKoaaQ
 uzDotjRZra/2kq2zMO9P6CNikU13z+gVKiqdpWQgrVKKUx2lTr3nt5yj0=
X-Google-Smtp-Source: AGHT+IEx6UXdEGm3bR21A08TaVBLWKDiKOS+7g2cWC9d5ZZzJfhSiZdhrldlAZwjqOIxqzmY1Co40g==
X-Received: by 2002:a05:622a:1356:b0:4ee:230b:ed07 with SMTP id
 d75a77b69052e-4f02308706cmr175664901cf.15.1765109968699; 
 Sun, 07 Dec 2025 04:19:28 -0800 (PST)
Received: from ?IPV6:2602:47:d950:ab00:2fd4:7b4c:f3ac:805d?
 ([2602:47:d950:ab00:2fd4:7b4c:f3ac:805d])
 by smtp.gmail.com with ESMTPSA id
 d75a77b69052e-4f027d56ebbsm57843791cf.31.2025.12.07.04.19.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 07 Dec 2025 04:19:27 -0800 (PST)
Message-ID: <40fe8264-6851-4d92-93df-00c7e60b3bde@gmail.com>
Date: Sun, 7 Dec 2025 07:19:26 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] m4/spice-compile-warnings.m4: disable
 -Wmissing-braces
To: Uri Lublin <uril@redhat.com>
Cc: spice-devel@lists.freedesktop.org, freddy77@gmail.com
References: <cover.1764987923.git.nvinson234@gmail.com>
 <91f68d92ea9b417efd8cdff957711fc635d70b38.1764987923.git.nvinson234@gmail.com>
 <CAAg9qJ2jvxsQtMtVQMXPVJgLgiZDStfrHkapNMmY94v77mz07g@mail.gmail.com>
 <a096e6e2-361d-4a11-b23a-d88ff187a52d@gmail.com>
 <CAAg9qJ3iGswfrAH1Kp7DKE7LX8uhpVx0aZ1dDKUoPxsKDeD7_A@mail.gmail.com>
Content-Language: en-US
From: Nicholas Vinson <nvinson234@gmail.com>
In-Reply-To: <CAAg9qJ3iGswfrAH1Kp7DKE7LX8uhpVx0aZ1dDKUoPxsKDeD7_A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 08 Dec 2025 08:33:46 +0000
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

On 12/7/25 06:24, Uri Lublin wrote:
> On Sun, Dec 7, 2025 at 3:07 AM Nicholas Vinson <nvinson234@gmail.com 
> <mailto:nvinson234@gmail.com>> wrote:
> 
>     On 12/6/25 18:38, Uri Lublin wrote:
>      > On Sat, Dec 6, 2025 at 10:54 AM Nicholas Vinson
>     <nvinson234@gmail.com <mailto:nvinson234@gmail.com>
>      > <mailto:nvinson234@gmail.com <mailto:nvinson234@gmail.com>>> wrote:
>      >
>      >     Disable the -Wmissing-braces warning as it suggests adding
>     braces to
>      >     designated initializes in a manner that violates C++20 rules.
>      >
>      >     Signed-off-by: Nicholas Vinson <nvinson234@gmail.com
>     <mailto:nvinson234@gmail.com>
>      >     <mailto:nvinson234@gmail.com <mailto:nvinson234@gmail.com>>>
>      >     ---
>      >       m4/spice-compile-warnings.m4 | 1 +
>      >       1 file changed, 1 insertion(+)
>      >
>      >     diff --git a/m4/spice-compile-warnings.m4 b/m4/spice-compile-
>     warnings.m4
>      >     index abe4a912..d2e1acc8 100644
>      >     --- a/m4/spice-compile-warnings.m4
>      >     +++ b/m4/spice-compile-warnings.m4
>      >     @@ -84,6 +84,7 @@ AC_DEFUN([SPICE_COMPILE_WARNINGS],[
>      >           dontwarn="$dontwarn -Wstrict-prototypes"
>      >           dontwarn="$dontwarn -Wsuggest-final-methods"
>      >           dontwarn="$dontwarn -Wsuggest-final-types"
>      >     +    dontwarn="$dontwarn -Wmissing-braces"
>      >
>      >
>      > Probably better to (also?) remove "-Wmissing-braces" from the
>      > list iterated by  gl_manywarn_item.
> 
>     Just before gl_manywarn_item there is a comment that says "List all gcc
>     warning categories". That comment is why I did not remove it from the
>     gl_manywarn_item list.
> 
>     It seemed more logically consistent to me to place it in the list and
>     then use the dontwarn feature to disable the flag.
> 
> 
> Hi Nicholas,
> 
> I think you're right.
> The right way to do it is to add flags to "dontwarn".
> 
> What about the patch order, does that make sense to you ?

The updated patch order makes sense to me. I'll respin the patch set so 
the m4 changes are first.

Thanks,
Nicholas Vinson

> 
> Thanks,
>      Uri.
> 
>     That said, I am amenable to either approach; I just would want to make
>     sure everyone is OK with the requested change.
> 
>     Thanks,
>     Nicholas Vinson
> 
>      >
>      > I suggest applying the m4 patch first (and g++ fix second) such
>      > that the build works after the first patch is applied.
>      >
>      > Thanks,
>      >      Uri
>      >
>      >
>      >           # Get all possible GCC warnings
>      >           gl_MANYWARN_ALL_GCC([maybewarn])
>      >     --
>      >     2.52.0
>      >
> 

