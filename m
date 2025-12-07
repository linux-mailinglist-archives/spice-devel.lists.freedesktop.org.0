Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 888FFCAB9E5
	for <lists+spice-devel@lfdr.de>; Sun, 07 Dec 2025 21:59:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3295F10E31B;
	Sun,  7 Dec 2025 20:59:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Iq5nqciv";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com
 [209.85.128.171])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C587210E31B
 for <spice-devel@lists.freedesktop.org>; Sun,  7 Dec 2025 20:59:34 +0000 (UTC)
Received: by mail-yw1-f171.google.com with SMTP id
 00721157ae682-787c9f90eccso36894387b3.3
 for <spice-devel@lists.freedesktop.org>; Sun, 07 Dec 2025 12:59:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1765141173; x=1765745973; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=UwLlbGrHWn/QdfkKQUxeryR1MHABSqLX71eLHdRHf0Y=;
 b=Iq5nqcivcu9RJNMbtvNxKciExpf7NRBxojTqUt9fhLTNfp3MbWtIN/sCyAiRXTGyOL
 pKFDw+VUTzo9NIN/zWwfsCNFOGB8EPTtj2oEtmyHLMA0aQGcbsA/xpZAI9dbWR2wbqTD
 UJiQBzDgL63v6PaZErguieCRLGx18kz5dJK30ermvt+WgAu0I73QiHmPjhXhYQq4iOZ6
 Rd5N9DF1eJBK5GVpma9FjMT5wJri9ezR/B0vTrPuIdC/KOdjpWTGV7bDmhJ8/UzPVZoU
 OQp3c7JDGV9gX1GWJwuGzrcv4Bols98Avc+fusAxyNsj4mL+Nrj+AxDqWZ96xvXatI5x
 rKJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765141173; x=1765745973;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=UwLlbGrHWn/QdfkKQUxeryR1MHABSqLX71eLHdRHf0Y=;
 b=hhMEVspASikdjyjPtu8B5CukKat2fG2SsHWKEY7K7jslXqXDFH+QeecJfrproQXQVQ
 LIs0M+hJI8La/Cg/vzPIKrB7uLQuEoDKx5W04fRnhWKy+3r0rbhwzNzyZru7Bhn/60Bh
 6C0jVs5qGKbA8LY9QALBL40ALytuFFPKMZKH3+KUM9D+xgn9p9T0VETsBi9SvYgZeriY
 RBYKX44WS6gWXKvXYvpijvg3GQ/ZbEKOynRxVbx1mDRf1flAQy7UDTsttYx3O/+12lWX
 cv+xsfq8PvJ+wlks1d6H0IhVEYm0uZk8Qbk+a7UxPzHSY9XKfCql6bLu+mbiRG6QINmD
 BkDA==
X-Gm-Message-State: AOJu0YwvdK7iRfEhzzFKcmO3VBrZMdRCzD0oH4iA+j7vBANpJrb6pB7G
 vSHiddIKK087MO6XPD5hq7h/dhAzej1XJpB6lX1p/7JYCdjAWlMn53tvuCuuXdbmuDBGKjszr9T
 6F0n80gGFjmBjONJldU18LXuHrqjb6ls=
X-Gm-Gg: ASbGncsh4u8OonoB3jZh48fgj7/pSO71CPWEEqF3Oc1EujY9U2Ug1HSgLUIOPqFaInh
 qwoUby5AA7eT/RpdO4FJcWZP1zFgU7tzYI+9tBctDm8bVJXh2Ov/rK42mEhWnY3BZeV/lA8IyXq
 bZjxTgl5mV/umIit82rG1CBpqKkvitnU4+RzOTMlPlPKttcE8IDU17p+fnt9dSmbVUTy+Wvi96c
 +ap7hD8fS9QYkP0JCrweY7Ys3DuY9wpgaPkQPhvaHoRYaEjGYdnSd+tNvceDzW1Jhm/mBw=
X-Google-Smtp-Source: AGHT+IH14+cb3yznO13oP70uB9jXx151RoSxGZKzw1rGQ0ORAQCbfRwCmIlD+KyFd2s24p28n+vqTymf0IWLNwSo54A=
X-Received: by 2002:a05:690c:e0e:b0:788:c21:b05c with SMTP id
 00721157ae682-78c33ccc570mr56027117b3.63.1765141173577; Sun, 07 Dec 2025
 12:59:33 -0800 (PST)
MIME-Version: 1.0
References: <cover.1765109578.git.nvinson234@gmail.com>
 <9d504f79e028dede8ea8b8a1ecd2678e97f1a6e4.1765109578.git.nvinson234@gmail.com>
In-Reply-To: <9d504f79e028dede8ea8b8a1ecd2678e97f1a6e4.1765109578.git.nvinson234@gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Sun, 7 Dec 2025 20:59:22 +0000
X-Gm-Features: AQt7F2q_MD7w42PHoAjTIJI95iZ7Ta_FlMuf4rpakv1ClSGaYDZPjlSesl1x9KQ
Message-ID: <CAHt6W4fip3KZOEPdxWX+k4u836d3N1qwizrJ919Aj=R+2=wsGw@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] m4/spice-compile-warnings.m4: disable
 -Wmissing-braces
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
> Disable the -Wmissing-braces warning as it suggests adding braces to
> designated initializes in a manner that violates C++20 rules.
>
> Signed-off-by: Nicholas Vinson <nvinson234@gmail.com>
> ---
>  m4/spice-compile-warnings.m4 | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/m4/spice-compile-warnings.m4 b/m4/spice-compile-warnings.m4
> index abe4a912..d2e1acc8 100644
> --- a/m4/spice-compile-warnings.m4
> +++ b/m4/spice-compile-warnings.m4
> @@ -84,6 +84,7 @@ AC_DEFUN([SPICE_COMPILE_WARNINGS],[
>      dontwarn="$dontwarn -Wstrict-prototypes"
>      dontwarn="$dontwarn -Wsuggest-final-methods"
>      dontwarn="$dontwarn -Wsuggest-final-types"
> +    dontwarn="$dontwarn -Wmissing-braces"
>
>      # Get all possible GCC warnings
>      gl_MANYWARN_ALL_GCC([maybewarn])

Acked

Frediano
