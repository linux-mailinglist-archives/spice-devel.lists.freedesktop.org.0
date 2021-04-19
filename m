Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B97A13641B3
	for <lists+spice-devel@lfdr.de>; Mon, 19 Apr 2021 14:30:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0104D6E2C8;
	Mon, 19 Apr 2021 12:30:57 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com
 [IPv6:2607:f8b0:4864:20::42f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C9A96E2C8
 for <spice-devel@lists.freedesktop.org>; Mon, 19 Apr 2021 12:30:55 +0000 (UTC)
Received: by mail-pf1-x42f.google.com with SMTP id c3so4275330pfo.3
 for <spice-devel@lists.freedesktop.org>; Mon, 19 Apr 2021 05:30:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=9Yr7WDpGBX/Y3Vn7ctItEgf25w3wYnMGGurpF0HWbew=;
 b=JdP/DpP2S6FdDA7RkrnXMVO1G1UHyyiqhVCnSIWv/dLJHUpiPJ5AVYSSvaP2ZfYEJC
 E0GeWU5ooGTZP+mHuE6TdUEwEQB0Eech2ZXOfo6Mkqh+6g8CYhBeJI/z8Fus+JqURfFQ
 5NCBBlUJ7hRsk4UJilmCH7rUQhPdkff5MEz32B2HM8gy+EItO5Pny88oLwnacmpSrWZr
 ft2MoaKCo9Sgn3bjgSHUywdiXu8jVRwLxl/Ljt0JGaoodAv7LtlX1C8NEXezRNOuUIf4
 hRD6xq7QLWzFeoo25XWQs2L+z5Qghyz9xCHGJc5q496HnUUokNta48MkRSylsBnRryPL
 qNMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=9Yr7WDpGBX/Y3Vn7ctItEgf25w3wYnMGGurpF0HWbew=;
 b=ovGFilMAnSlQhVQfqb/lCuas1KpOGxYlHmR620cuhwlPrXuQJnYC2/X2JljZ8kgjec
 YngvYeyzAe72UOZL9TXEP/yGvRi1HUU3TiZfLe+YdG3vNje0SKxHbf7H8QzfQ9A8JzWp
 CTrZXH/Ro1TCs+g4kk/euRrqm5pll7PfVGdw0yEYgyWqMQHaZkPyVY+Ce9SbrrDu+ruE
 vR0k8EZ2nrYBVsm49pbcLLHXCXYF6QyWGHh1iqX0JQF7jlXgZ+VjYS+O9PjUxK5c45ST
 /JAr6mTYLd8AF/LXYh5uXHTFIcC1EVii94JzOYllLfOpXoyvV8G6VXaO9DuOaxr/jquR
 coFw==
X-Gm-Message-State: AOAM531iKbBzfGj4pY9RvRkuN0A8mYSO8ur5z7p6pB6rX08N6O/FfGWF
 cBsW0AFmKiw1UaU5ZoK03ZUmywdIwvtrNU6d5oT0iXWSUu5R1Q==
X-Google-Smtp-Source: ABdhPJycrFM8Tch0w1fIx0ChKSWwsuPlAeGsYYwg0+SGwX+6xOhE6w6zJQYT9cElfQufhrSNHaQuIwv5JNiNFrB+CY8=
X-Received: by 2002:a05:6a00:1aca:b029:25a:b810:94c7 with SMTP id
 f10-20020a056a001acab029025ab81094c7mr13037299pfv.15.1618835455132; Mon, 19
 Apr 2021 05:30:55 -0700 (PDT)
MIME-Version: 1.0
From: Frediano Ziglio <freddy77@gmail.com>
Date: Mon, 19 Apr 2021 13:30:44 +0100
Message-ID: <CAHt6W4c3zyvuG4t1Mx--EBBrMSAF2WjXLQLG+xNLSafdUU5FHw@mail.gmail.com>
To: spice-devel <spice-devel@lists.freedesktop.org>
Subject: [Spice-devel] ANNOUNCE spice-server 0.15 release
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hey everyone,

I just cut a new release in the 0.15.x stable series, so upgrading to it
is recommended.
If you find any bugs or regressions, please report them in our issue
tracker: https://gitlab.freedesktop.org/groups/spice/-/issues.
See also https://gitlab.freedesktop.org/spice/spice/-/tags/v0.15.0.

Major Changes in 0.15:
======================

This is the first release in the new 0.15.x stable series. This release should
be ready for production use.

* Minor updates to CI
* Some compatibility with OpenSSL
* Change the behavior of handle_dev_start ignoring multiple start requests
* Ignore multiple calls to handle_dev_stop
* Pick up newer spice-common to fix a buffer overflow issue


https://www.spice-space.org/download/releases/spice-server/spice-0.15.0.tar.bz2
https://www.spice-space.org/download/releases/spice-server/spice-0.15.0.tar.bz2.sig

These releases are signed with GPG key:

 206D 3B35 2F56 6F3B 0E65  72E9 97D9 123D E37A 484F

Kind Regards,
  Frediano
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
