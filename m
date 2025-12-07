Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B6CACAB9E9
	for <lists+spice-devel@lfdr.de>; Sun, 07 Dec 2025 22:00:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB1E610E021;
	Sun,  7 Dec 2025 21:00:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="F/qXEfxN";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yx1-f42.google.com (mail-yx1-f42.google.com
 [74.125.224.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 259CE10E021
 for <spice-devel@lists.freedesktop.org>; Sun,  7 Dec 2025 21:00:21 +0000 (UTC)
Received: by mail-yx1-f42.google.com with SMTP id
 956f58d0204a3-64308342458so3424741d50.0
 for <spice-devel@lists.freedesktop.org>; Sun, 07 Dec 2025 13:00:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1765141220; x=1765746020; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=iwx8jfLhi1Xty2bgpe/C2s4v8teA2qaY4Xoz6FbUn7Y=;
 b=F/qXEfxNx57dYvf6uBqBojfrUlbww0e7KIxvel+51x7/fF3is+xhkSKkBIJuXo8Flo
 ivatuBUwAPuk4C6eoRjVQdyzGRH3n+lMzyx6rUk7OUKpzdb0qQW4HZkrsfZ0IEFje8+A
 Rhjm/i/25VJb+NH43m6BMjxeEOytUX2LTJ+Vix1pSB4TsPt8E2iuohUaCO+6Rz82Mr5H
 nGO8V1wDqpQhlWhlZwAgqJRpxrpYAle703lGKiDGnUSi8uoMf8eSXvEh6kNF+h+yV0ps
 UD9pYTioe6EDE1NmmjqsogvMA/uzJf2YlT5uT9QXkXWPQYciFc5ohUXFtUqvm3QU0vU7
 3ZCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765141220; x=1765746020;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=iwx8jfLhi1Xty2bgpe/C2s4v8teA2qaY4Xoz6FbUn7Y=;
 b=r46+ch49+mayXAYsyudzGdUWjaJ5wJWTH7eNbp8XGHcQu0LirpcvdmNqAnwfISbLcl
 MFA1JXwp44fjcH26lSpNU1AYSPeuCC11jrWY0rQWkkGrf7h5JbyBfWN9QrJoGQhsOLMU
 zgQTC+1EA021x4L2AJmEUeACSynRy82SjUX6dRXYnAQ/+rqDzNTrnpItmveSsEJpVEr2
 cJxRb+9u6Kkyy/+3Nqeo5lqgwMRrF1qJ2pjkbbEjb6vd+vHdHlZK0w3+GpXnyB+dc3zg
 zIisI/XfPBwzce0+pCuaG/ibVFBphbTrsNnaC26wsraG9qM8jJn5XUqY8kIoySKWckQW
 9FYQ==
X-Gm-Message-State: AOJu0Yy/cyUj9+PY8fnK4vOFi1A0Kyf5Z/Aj7mGD+gk9aRelgQCpGTbT
 PJGjeFcJS1nqnaAKeQWSLjLN22noLjpa7VcFP5UwLIrIw0SWkTrnT1EhnLCjiO6rH9pztKj0Azm
 RvSxwXmiHZv+ASzSwiTFjav2FO2a8uwM=
X-Gm-Gg: ASbGncuyJ/10QaS+/Q4ujgd17U9vy0rFcf7Bm06lhqgJgzRHJAxpSTJlyx6bA6y5ita
 lC1arjMfQntcHQVOklpMS1R3ujOk2RweKfyuNR/FClceXiVIFKsVurHI1pi54RWUSgXCVP0UtMX
 h6vm1bePdsX70dOGyhxofl/+s9+cGjyC/dRXuT+fRSeIJVvOoVZ7RcNTclL8/13XSur6CGXUURl
 5ZG7HH0B6GHMsCTsI2PPtBkTYRopIyC+gIvLtQUEp1hq/qq2O9+VPMt41pVQaR/1JgjuZE=
X-Google-Smtp-Source: AGHT+IEIs1LN4fJ3x4WnmhSAzdN5Qu8dEsKkqPiBctn4yGMv4x/640MQgZ0/GSfVZtve+s6zzPx8um4WZ/a+HTRkVKg=
X-Received: by 2002:a05:690e:14ca:b0:644:5398:a7b1 with SMTP id
 956f58d0204a3-6445398a803mr2929423d50.49.1765141219954; Sun, 07 Dec 2025
 13:00:19 -0800 (PST)
MIME-Version: 1.0
References: <cover.1765109578.git.nvinson234@gmail.com>
 <9360c4a11c392a12e62985b382de60d8d4f5e571.1765109578.git.nvinson234@gmail.com>
In-Reply-To: <9360c4a11c392a12e62985b382de60d8d4f5e571.1765109578.git.nvinson234@gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Sun, 7 Dec 2025 21:00:08 +0000
X-Gm-Features: AQt7F2pg-eFS9w_r410rNsN7len-Lq9MNgmPRva9tf8Jxgyxwnkf_ClUyMYB-qA
Message-ID: <CAHt6W4d5x9zTpqUgis_vfZVKdE5FhRCNP0QBVqycGMZVRtSnEw@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] test-display-base.cpp: adjust designated init.
To: Nicholas Vinson <nvinson234@gmail.com>
Cc: spice-devel@lists.freedesktop.org, Uri Lublin <uril@redhat.com>
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
> Adjust designated initializer to be C++20 compliant. Starting with
> g++-16, GCC will default to the C++20 standard.
>
> Signed-off-by: Nicholas Vinson <nvinson234@gmail.com>
> ---
>  server/tests/test-display-base.cpp | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/server/tests/test-display-base.cpp b/server/tests/test-display-base.cpp
> index b220b7fe..5d0404c9 100644
> --- a/server/tests/test-display-base.cpp
> +++ b/server/tests/test-display-base.cpp
> @@ -806,7 +806,7 @@ static QXLInterface display_sif = {
>          .major_version = SPICE_INTERFACE_QXL_MAJOR,
>          .minor_version = SPICE_INTERFACE_QXL_MINOR
>      },
> -    { .attached_worker = attached_worker },
> +    .attached_worker = attached_worker,
>      .set_compression_level = set_compression_level,
>      .set_mm_time = nullptr,
>      .get_init_info = get_init_info,

Acked.

I'll merge if somebody won't complain in a couple of days.

Frediano
