Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14EC6CB5B83
	for <lists+spice-devel@lfdr.de>; Thu, 11 Dec 2025 12:56:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA14710E237;
	Thu, 11 Dec 2025 11:56:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="iJovKVMu";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yx1-f45.google.com (mail-yx1-f45.google.com
 [74.125.224.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 287B510E237
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Dec 2025 11:56:11 +0000 (UTC)
Received: by mail-yx1-f45.google.com with SMTP id
 956f58d0204a3-641e9422473so731770d50.2
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Dec 2025 03:56:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1765454170; x=1766058970; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=0AE9fTXmReNf1crVzOx2XzI5s8lHkn05yPMjHRxg/54=;
 b=iJovKVMuIZ9DPJZ71UGtPmOA6LcX5buo+LiiXrSuFVMNhSMZNLrKrplbG5kndrxJ0Y
 uwZ6CXpR2XqNBs0oqXjqbZDvJC9i6ai+gJiX2kIGkwmgXEhSq9STRyH2ZY748QPOky1b
 dq+AaBveKmqnoqlBXkxF0xReJ1mhVCJKykwjE3vgwrNw5SNzkuslv9BGUZ8J8rZ+w5rs
 XaDMv1tsd+DVK9xBZkn/Q5KtjJJzH2+iCSdFVE3IIrxKVco3HQqXIqJL9k8xknj/23ny
 ShFj7OnWvfDRXF5XaYuFXVHuYZjcYKZ2wKOQKyXZkktX0IEZTVhvPrJ192LBbjUzqR38
 xXKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765454170; x=1766058970;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=0AE9fTXmReNf1crVzOx2XzI5s8lHkn05yPMjHRxg/54=;
 b=WLo+T9VPzNm42olkQFbDVxaOcMl5FTmm4RO8WJErog025ouwdrifwUWyqIzEwzZYRN
 Wf6jz2EllI+uKgqzarEa548z2btVtEZMCRlvTsq6jBWlS3QyzAHY/mFKbuj2SHdzyHvU
 HLs7hEU2KddabW0RgqqeB1WuifKzdaM0l2mBKURiM0QTzFje7Wk55ZKvUy7DlWUhoHAn
 D8DM64ZoBpda7xX4PifpjrX4Xa8dkRgHP7TNmaWhpBBfScPPaL5BpUpaeYakhFkpt5Ot
 Zjl2qSqvujHEHKuT0L1kYSQYkm0bsaL0oyNH8TNmeNzH9IMeNWlGTg3i6gB5Ivnr8Yec
 dn+Q==
X-Gm-Message-State: AOJu0YxKMw4TeKGksmAv5nNCbg/kfXroqYqvX+t/9DolWWZ+xFdAWmgf
 rJ828QJXaKWzdnhvfesmjI313NU6FxR2qC1fNAmlcRRkq1s3A1ZxwFgrspqYh3DTMk94QyVi9fL
 P8cFNEEPTd0mQNfog2NmD4cbZMGDc/8I=
X-Gm-Gg: AY/fxX4m5J5/Fc5fDO3MP9R0Pc+qXGB+FVmeCU/Ctt6ad/seKkk3J2cc52wKPVCaIKS
 9vRIzyKiYwZwfiuK1ffv0D5aTS1cjk1dtcgqM+UXX1hdBcDmikDQh5UNkBlmX8Z0mtTkk9YAy1f
 XxUQVn94f/KRxgYIRNmLCuTGb/N8UMvfNQgjVlY6AP/Z6wCygexYJCYiDmsgp8vF6fxRbD2Z3Qd
 CIxatyVVpgNdrLg8t4/OoI89uDxzoB7GopgEwzcddHyWmuIXSXCb3xYxG0hoiFQP7TNh5o=
X-Google-Smtp-Source: AGHT+IERfbZRCqstVUS+e79QSsiEFeDEr0seRO/gpDXJAxjFIFZAFp3yT4HG8ngZ6WdX5ZHDXsrhvxeRLItQs3wMARw=
X-Received: by 2002:a05:690c:48c9:b0:787:e3c0:f61f with SMTP id
 00721157ae682-78c9d79d6damr96216027b3.57.1765454169992; Thu, 11 Dec 2025
 03:56:09 -0800 (PST)
MIME-Version: 1.0
References: <cover.1765109578.git.nvinson234@gmail.com>
In-Reply-To: <cover.1765109578.git.nvinson234@gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Thu, 11 Dec 2025 11:55:57 +0000
X-Gm-Features: AQt7F2pUxcfkvZw2eXoS6IVkVFhOpn0xADNe9IleHSEG39JzwBlaNkHH4pDRyuI
Message-ID: <CAHt6W4dfEwtJWV0cPL4MA4ZrbQ-Quxy7cPPPG+oSJLcrVm87aQ@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] Adjust dsignated initializer to be C++20 compliant
To: Nicholas Vinson <nvinson234@gmail.com>, Uri Lublin <uril@redhat.com>, 
 Victor Toso <victortoso@redhat.com>
Cc: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
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

On Sun, 7 Dec 2025 at 12:20, Nicholas Vinson <nvinson234@gmail.com> wrote:
>
> When building with g++-16, the build fails with the following error:
>
>     server/tests/test-display-base.cpp:809:5: error: either all initializer
>     clauses should be designated or none of them should be
>
> This is because g++-16 defaults to c++20 and when using designated
> initializers with c++20, you don't wrap anonymous union fields with braces.
>
> Nicholas Vinson (2):
>   m4/spice-compile-warnings.m4: disable -Wmissing-braces
>   test-display-base.cpp: adjust designated init.
>
>  m4/spice-compile-warnings.m4       | 1 +
>  server/tests/test-display-base.cpp | 2 +-
>  2 files changed, 2 insertions(+), 1 deletion(-)
>

The CI is not that happy. I added some commit to make it pass:
- missing AUTHORS for "make syntax-check"
https://gitlab.freedesktop.org/fziglio/spice/-/commit/fb018b3fbb26f38b2ffb0ee569d4aafc287fc738
- too old Fedora (not related to these changes)
https://gitlab.freedesktop.org/fziglio/spice/-/commit/a4525e204ef8b7e3beb3709823029e27de633d7a
- compatibility with pretty old GCC
https://gitlab.freedesktop.org/fziglio/spice/-/commit/6a2c24fd5c088cb3b016a40965882e98f010b583

Do they sound good?
I suppose the compatibility one could be merged.

Regards,
  Frediano
