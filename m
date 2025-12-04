Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2833ECA5685
	for <lists+spice-devel@lfdr.de>; Thu, 04 Dec 2025 22:06:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DA0410E089;
	Thu,  4 Dec 2025 21:06:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hJgyGbyQ";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com
 [209.85.128.169])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 737BA10E089
 for <spice-devel@lists.freedesktop.org>; Thu,  4 Dec 2025 21:06:01 +0000 (UTC)
Received: by mail-yw1-f169.google.com with SMTP id
 00721157ae682-787da30c53dso15236667b3.0
 for <spice-devel@lists.freedesktop.org>; Thu, 04 Dec 2025 13:06:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1764882360; x=1765487160; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=LdNf7kp9JV7i9LKI8vEdGMDPLORN4hjebJyZ8aqrF+4=;
 b=hJgyGbyQ8ruy4UdHUDhK3d7SldZ40R4n//bRMpG0QAExC+YESmqQ9Mor1mNVBdPNV8
 +r9G+rNQsEqmaH8tXLY7l6lntEqzU2tX9fuFvV+vcRDC8y4Ke4hcwnYAVN4cyDj0fYQE
 jOpzKUnWpDQQPLV6VHSP6D4qAw64WtAYiHam0r6S/f7GQWij3Hk/lvpf5U9ZKlAodjuC
 0SL9EKquHvjZ53WDdoBvEORVcnBbpTPxpA1bmDj4cBhVjHK+F8sWIyEf5BcG5DTtR3qS
 0TVDcKluprshzP0/V1yngQS2Mq/GS4Q8lkHwT1yOaUUjEumjmfbK5S+W0FGuOoWZfPr8
 /DPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764882360; x=1765487160;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=LdNf7kp9JV7i9LKI8vEdGMDPLORN4hjebJyZ8aqrF+4=;
 b=j3T+Iznbi7E4FmIWCJADUj4yG9HWHlMBOo/k1m8zAECTxlazB7I+oGhqUpH2UqCyMB
 izPj40fpkkrPQWgsF5kBjuIjB6A+ERjgKlWkrPWq1BKmYAdQI3jgKAMhnIF0cOVfXPdO
 TNd74+U9sO1ndPGqApdsyLmdHgIPuONyUx5bEZcTEJ7hrkfJooFt6WlZdVh0jnN8vy0Q
 I3sYjwzOXMuikEzrVvRE3WiPNjCk/+GCezNyle6PQyh1WpHQ264asUlO0LHGz028p/q0
 gQlXPSLSZ+3tkbobE196/NK37+JOeJOC53ZkI+omT4jvyZq6TR1ceCoFG6VyvtkAzr/a
 wq+Q==
X-Gm-Message-State: AOJu0YwudBj4kqKUxcfqJA4irEllJvXU3jaWLOY16rWsbtdzKR0tsoBa
 AG0BtCKQ7DE8E/PckHmAhC+RBxdUCZ4NJ3PF8/7AWSyJVHsq6TDToRffujYv+9QpHDj9vcXGs27
 B7tpMhafCL4bH562ep0KnfZ1b97hABb/nN92/
X-Gm-Gg: ASbGncuy8ejw7m1F9Ls0XXqZL8F+DbhTxNG1ZmoTciRx+tg4RDNRAVbP55QvFkSBuTE
 iNGSyqCoJkkZPvgS/f9Wmro8FP2trLJcbjnSN9jhWeCT/D+5b/UlZGocrvyQHWCD7OE+NDuW6U5
 Qz4KI4BYoT7Sq3tW5u3WQf7+LhLNQThQSNBAXR9zfpeYQYXW9AdX6vLwH6SuyuJjd/gjrvxYsNl
 K2oIkNl4iWU0Lw37YjbBGW/plKN46xhpfYoO1zOQiT9+LM6IxwZx59QL7t5skOfmDxy2jRG5TAj
 XT4rPg==
X-Google-Smtp-Source: AGHT+IHDlw1sbNyoD7CYUdbe3MA7zPBRveIMQ9bu1TklMONLz/VQ4irstiXQBNdTI8AF7KcLMQShpB+s08Omx2aHq1g=
X-Received: by 2002:a05:690c:3806:b0:787:c12e:4f32 with SMTP id
 00721157ae682-78c0c190613mr57937607b3.49.1764882360409; Thu, 04 Dec 2025
 13:06:00 -0800 (PST)
MIME-Version: 1.0
References: <cover.1764732184.git.nvinson234@gmail.com>
 <20a971945bfcfbfb281e1b4654dcdfe8a66033d6.1764732184.git.nvinson234@gmail.com>
In-Reply-To: <20a971945bfcfbfb281e1b4654dcdfe8a66033d6.1764732184.git.nvinson234@gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Thu, 4 Dec 2025 21:05:48 +0000
X-Gm-Features: AWmQ_bkBffRYtGk_eLQfDx77gpUwAj1wLcbqcWmlMi5A8yLhP9OR1ZQgpeEc9qM
Message-ID: <CAHt6W4fbv7DoKue0i9Zjpm+M6coT95dakoXbRFeuyfkQ9qG6yA@mail.gmail.com>
Subject: Re: [PATCH 1/1] test-display-base.cpp: adjust designated init.
To: Nicholas Vinson <nvinson234@gmail.com>
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

On Thu, 4 Dec 2025 at 17:06, Nicholas Vinson <nvinson234@gmail.com> wrote:
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

With this change I'm getting

  CXX      test-display-base.o
test-display-base.cpp:826:1: error: missing braces around initializer
for 'QXLInterface::<unnamed union>' [-Werror=missing-braces]
  826 | };
      | ^

Frediano
