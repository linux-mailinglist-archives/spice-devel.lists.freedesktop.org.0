Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A5AA6D697
	for <lists+spice-devel@lfdr.de>; Mon, 24 Mar 2025 09:50:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8168289FD4;
	Mon, 24 Mar 2025 08:50:15 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com
 [209.85.216.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E088E10E194
 for <spice-devel@lists.freedesktop.org>; Sun, 23 Mar 2025 19:34:30 +0000 (UTC)
Received: by mail-pj1-f45.google.com with SMTP id
 98e67ed59e1d1-3014ae35534so5463319a91.0
 for <spice-devel@lists.freedesktop.org>; Sun, 23 Mar 2025 12:34:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1742758470; x=1743363270; darn=lists.freedesktop.org;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=7N/8s5rGWsI+JYNenVGhxsM+qwVNOhVvgsVTQTHiPCM=;
 b=EmMeBg4VCD2SkgRSDcVvGcK7Bp+Gb1rUVhsOeHUCPtHtw2oHmUHK1H9tJvnIhH03aY
 186NSDuHzFuP6rRxqhB3Gt6l/pwMeZXJijuHYDbJRgwceRH5ZYVHzaqyQr0dGv8nrtWw
 hyVuID+KapC9ArbHQpkcCDGo3vFqxZV3P55Cpl9s49jZd7dow4Uk9wW+zo//LM9GXVg/
 Bj9VqOTJ8DCjVU0RV2gHJ06d6zWDgnSzOXOyv1/3qO4wIs/wXLIt1LRGS4boX5T+1kPm
 SRZSq7TNLI38JorZ3MU67W1HlnnK9e/nEx7s21U+Gt+WiqNmgsWpWfp10xkSDxbkGf3U
 bVjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1742758470; x=1743363270;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=7N/8s5rGWsI+JYNenVGhxsM+qwVNOhVvgsVTQTHiPCM=;
 b=afktj1eK2Sv4CZRIdyZxng8BH4dMNUwPBl5i4QxCarJI5Qn7/fRftBMqPax0hu7Gxv
 COFVYd5HlKwqT8pmeakj+TtPRxKZ5shiNi+PLPYC6+5lC2dC2lGd+O3Mtncl3L70kCtd
 UH01cejlEi6Y0jgWhw+XraHufv85ez1vee9jL6HWKQN4qZayBwpABD1rtCqPDQqEHKH3
 Bzy3ytXmwK2VRv7NDFqYlayRDbq8Wfjr5C5J6D6tcz0wjvp8VDRk0qe9o44C7FuZb7Yz
 6f5mCr6CWD8KVbD1TRS7ugStISAYPw5KCDVZg1UDjYkH8dD4pivkafJmaPm9Tie1Hav8
 l4Qw==
X-Gm-Message-State: AOJu0YyAA6XvG9psx/v1GXSTCwYLMTSa8Lsl3LukEIk91JvTY28X9R8p
 qGSZmpXVlN7WAFtO+7QnrIJkJVultkvENddI9KG6ix18iMCikjYb+GDeWFpmHuJwwrZJO4iBWal
 OyC7tXro0xwqSM7Ph4F1kFYySTI67pG8G
X-Gm-Gg: ASbGnctWYwiHVn8Y3uUdK10PUpOJ3UWjdB5J7S3HpUnmGOgNh1eQIEp0DrpVBOIAE/K
 HHzjktRqE2GBER2zg3zEivWP+tHkIyrdgTifkhknoLpBxVOAmIGrIgQOKKy+YEOOXJKSm7Vycok
 5yRJ9OUkR8BB/S69lxlvK9vECeJd5vzda5r6VbGQzXsJKtMrrX
X-Google-Smtp-Source: AGHT+IF9kKk38flvTvJBdQrMB/NOwagpzIXxNeAbQPjoK+oy1IrYWXm2BG1YHcEYQnf0IDaDTrc+dPpmZ6DPdOQIxzE=
X-Received: by 2002:a17:90b:53c3:b0:2fe:afbc:cd53 with SMTP id
 98e67ed59e1d1-3030ff108camr17518203a91.28.1742758470354; Sun, 23 Mar 2025
 12:34:30 -0700 (PDT)
MIME-Version: 1.0
From: Erik Schulz <erikschulz184@gmail.com>
Date: Sun, 23 Mar 2025 20:34:19 +0100
X-Gm-Features: AQ5f1JptbVv4ixMu-cnjpZ9cXAWwuKmfEp1mbUmIllcFOh-Ehpr9qwptLOiCQag
Message-ID: <CAE5KivgLqeRkRRRwUoxSoa2Qqo0_bAGB-5jzFyrXp0r=smL9yg@mail.gmail.com>
Subject: Smooth scrolling using UTM
To: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Mon, 24 Mar 2025 08:50:14 +0000
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

Hello,

My primary workstation is a Macbook which has a trackpad, and smooth
scrolling doesn't work when using UTM. IIUC, it uses spice-client.

I've opened an issue: https://github.com/utmapp/UTM/issues/7067

But is it possible that the issue is with SPICE?
Does it support HDI smooth scroll events?
A random stranger pointed out that spice uses a virtual tablet, could
that be an issue regarding smooth scroll events?

It's been a frustrating issue for many users over the years (numerous
issues in UTM), and I remember it also being an issue when I had a
linux laptop (but that may have been resolved).

In particular it would translate into "scroll down 3 lines event",
which is not smooth scrolling.

Any advice on what might be causing this and how to resolve it would
be a great help.

/Erik
