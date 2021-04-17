Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF3F362F17
	for <lists+spice-devel@lfdr.de>; Sat, 17 Apr 2021 12:08:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 104996E093;
	Sat, 17 Apr 2021 10:08:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com
 [IPv6:2607:f8b0:4864:20::533])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF7AF6E093
 for <spice-devel@lists.freedesktop.org>; Sat, 17 Apr 2021 10:08:08 +0000 (UTC)
Received: by mail-pg1-x533.google.com with SMTP id q10so20843852pgj.2
 for <spice-devel@lists.freedesktop.org>; Sat, 17 Apr 2021 03:08:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=b0NzKbs2lWw1ijlKa2Z0h4s2jcI8+6Ei8rXJnh9/7Xs=;
 b=E93PQHCDuGApV7sHiEs5pL5ng/SAFd3yYPIJAC6auvIbWYPeBa9ALyBpNIes4P9/y1
 Cd9MbcrwSRBHt/m9T1vN8WDQswJeffC0jD7HPk2lMgUL9+kg9olJ0PsJDuMDPBpkSE5D
 AV/RKi6kFLg9yA+lzJSazgGhWhopOccVLL57EaPrkuW56WzVDLbdWU86eaSxjiRvGnLL
 PqiyoVd14s4T36Q18E973lVjmDIEJ2vKIhFuKjCS326XgC0CefgHPRvJRGsM6G/qu3Lk
 nYDGB6foYfGEHcnutR3uT4MEkI6bVvpVLJW7EThWpShVb+mlC2+tHIapyn6as0Zpvhlh
 gCCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=b0NzKbs2lWw1ijlKa2Z0h4s2jcI8+6Ei8rXJnh9/7Xs=;
 b=jmSjoet0qNqjq2F0mMg6ucryZIVN1evZiK9muuMqafFZS4lFK60NrRamNSNJpl7oQ4
 ujjpKswbLSiYNqhlqH0GK/IzRVVcskC1+153C8UBCooDM7n7ViFrDJ8ZDC6FqnR/dtTB
 4Sf9nXZMz7zVB3sFrJZCE4Mu+WtVuVc5DIfEaY5Jq3Xgc20Mp0GX39hvOQUZG9GY6L7s
 fPzlk7Y4F9ZsbiSewhdsfymarLGKTlmdDYCvG6YJdUwZAGCkgNU/4CkQdfcQPm/2USXc
 /XdWWOZpTsAbgMbVpjBvRdU/lwdZs0UhPFD9/lwBY+pAJ3jJyn3XwDP9FNZf+s7+ZvV6
 KA0Q==
X-Gm-Message-State: AOAM531Er/L+AEzHRENK7G5Dp7Hg63pECAlYEYmDBRcf+5dqlYEG5hrs
 JwJvCjT5iJ/6sBHD44Y50n899AOOf9mHpwJNWnM=
X-Google-Smtp-Source: ABdhPJwg1dKBqA4JlqC7ryw8RKSU0x163trevv01ZU9TNmAeS5cDjTymImUInBRunyM1hYbheedDAylQnY2HtDewh/g=
X-Received: by 2002:aa7:9f08:0:b029:25b:70c0:a31b with SMTP id
 g8-20020aa79f080000b029025b70c0a31bmr3790763pfr.61.1618654088371; Sat, 17 Apr
 2021 03:08:08 -0700 (PDT)
MIME-Version: 1.0
References: <20210417085211.88977-1-bogorodskiy@gmail.com>
 <20210417085211.88977-3-bogorodskiy@gmail.com>
In-Reply-To: <20210417085211.88977-3-bogorodskiy@gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Sat, 17 Apr 2021 11:07:57 +0100
Message-ID: <CAHt6W4drXjbXUDBfyWBaiVtbODtQfCSmHaZ+hrJPiC_iTo4p6w@mail.gmail.com>
To: Roman Bogorodskiy <bogorodskiy@gmail.com>
Subject: Re: [Spice-devel] [PATCH 2/3] red-stream: add missing include
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno sab 17 apr 2021 alle ore 09:52 Roman Bogorodskiy
<bogorodskiy@gmail.com> ha scritto:
>
> On FreeBSD, netinet/in.h needs to be included to use IPPROTO_TCP.
>
> Signed-off-by: Roman Bogorodskiy <bogorodskiy@gmail.com>
> ---
>  server/red-stream.cpp | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/server/red-stream.cpp b/server/red-stream.cpp
> index fee45f30..090883f3 100644
> --- a/server/red-stream.cpp
> +++ b/server/red-stream.cpp
> @@ -24,6 +24,7 @@
>  #include <netdb.h>
>  #include <sys/socket.h>
>  #include <netinet/tcp.h>
> +#include <netinet/in.h>
>  #else
>  #include <ws2tcpip.h>
>  #endif

Nice.

Frediano
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
