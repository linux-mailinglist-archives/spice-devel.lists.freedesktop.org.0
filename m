Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC6A362F16
	for <lists+spice-devel@lfdr.de>; Sat, 17 Apr 2021 12:01:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6B206E05D;
	Sat, 17 Apr 2021 10:01:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com
 [IPv6:2607:f8b0:4864:20::62f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A1A76E05D
 for <spice-devel@lists.freedesktop.org>; Sat, 17 Apr 2021 10:01:08 +0000 (UTC)
Received: by mail-pl1-x62f.google.com with SMTP id z22so10108460plo.3
 for <spice-devel@lists.freedesktop.org>; Sat, 17 Apr 2021 03:01:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4o14fiDb3K/Eb8kQaybLSzxB+iLXMRVuL4QIIEBlY6k=;
 b=dtef9DqZu6QP2CCpsZYTPzFN/YNZ30scG68k9DnlD/u/4MaAjfQSUsHl52Ko2t3By+
 pMAVmivE1YGCyN6I9F/MYBWxZqllvCCNXqfpgCgqhVkNtX30Nj4jLzHtQHwgx46oNaTY
 F8pAp0uN+rAlUUZTGK2SpmELobfzBAAmDDpFZu76TWNrlV717jjjdSL8uDFjmGBxczBq
 B89NiOM73DkKdI9mcJj5SDY4tm/r8tXq/ggXGQxNm+CTea/krv6VUN+YGScXfucIcO+i
 Oc/Ml0b6YNP1wvZDxu6i40NFlvbuxo2PqTxg/6jG3paqU20OyllXoxFhfgFHetc+FMdm
 SM1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4o14fiDb3K/Eb8kQaybLSzxB+iLXMRVuL4QIIEBlY6k=;
 b=t94XKlqdQanD3xeYEIHPjCDUVAdPIho20ZpjfgWJlC3/BRxguBtYns0uDrZptO92jk
 GBKEHMYuoQuKF2zCM5XN7YRHQE6sX/zqf6zY/2D+SYxqBYR1lrYHDBjKGbTUnUas8MGK
 0SrJP25RxaZ3Qf9Sl5C0kATJn+oR9Ct0tOfFZocPqR7sk01GuqtJhPhZE0etsX1Zfczx
 V9osscJbNvotGjtp33eRGqoNcN2ccxEanMgRAudKbS/yCuJJljpPOG9jqLP8aOqoLyFM
 92WZ19PZK+NMvTeadTQAlgQRNdtZ7llzGD+gIhsBHfRt7SvU4O7UcAUwz0ErHy1qAGut
 3UQg==
X-Gm-Message-State: AOAM531GvRkF+rYIjVekciKBpczYMx1Yo7nGJE03fiOJnZiOzoEgcnST
 KmcUP0c1TBKlZZqsFU4p1S+2A/+xctKAIfpROvo=
X-Google-Smtp-Source: ABdhPJxA4eznorLDog4ag2JVzJ/YtJlpMBLW1vFMma7e2avaToq08Aq3lt8UvGWYpk5lAX9W5cRgzlt0p0P1fWhBUR8=
X-Received: by 2002:a17:902:7886:b029:e7:1052:adad with SMTP id
 q6-20020a1709027886b02900e71052adadmr13495887pll.75.1618653667803; Sat, 17
 Apr 2021 03:01:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210417085211.88977-1-bogorodskiy@gmail.com>
 <20210417085211.88977-2-bogorodskiy@gmail.com>
In-Reply-To: <20210417085211.88977-2-bogorodskiy@gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Sat, 17 Apr 2021 11:00:56 +0100
Message-ID: <CAHt6W4cBs7RDpeLpgj5noSkd_1mONat1o+rYcZ=Vq1_S6dUchQ@mail.gmail.com>
To: Roman Bogorodskiy <bogorodskiy@gmail.com>
Subject: Re: [Spice-devel] [PATCH 1/3] build-sys: more version related fixups
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
> - Drop "-dirty" suffix before processing version info
> - Don't fail on versions without 'minor' specified (e.g. v0.15)

This is due to my fault, I didn't realize that version tags must
contain the micro version,
even if 0. Fixed (removed v0.15, added v0.15.0)

>
> Signed-off-by: Roman Bogorodskiy <bogorodskiy@gmail.com>
> ---
>  server/meson.build | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
>
> diff --git a/server/meson.build b/server/meson.build
> index 4a670635..4fadb6e4 100644
> --- a/server/meson.build
> +++ b/server/meson.build
> @@ -8,10 +8,15 @@ if meson.project_version().startswith('UNKNOWN')
>    minor = '0'
>    micro = '1'
>  else
> -  version_info = meson.project_version().split('.')
> +  version_str = meson.project_version()
> +  # drop "-dirty" suffix

This is not actually entirely true, to code below removes everything
after the dash, if you have changes the version
can be something like 0.1.2.3-abcd-dirty where 3 is the number of
commits after the release, acbd is the last commit
hash and -dirty means additional changes.

> +  if version_str.contains('-')
> +    version_str = version_str.split('-')[0]
> +  endif

Even easier:

version_str = version_str.split('-')[0]

(no need for the if)

> +  version_info = version_str.split('.')
>    major = '@0@'.format(version_info[0])
>    minor = '@0@'.format(version_info[1])
> -  micro = version_info[2].to_int()
> +  micro = version_info.get(2, '0').to_int()

Not necessary (actually wrong), version tags should have the micro version.

>    if version_info.length() >= 4
>      micro += 1
>    endif

Frediano
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
