Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E751233EA4
	for <lists+spice-devel@lfdr.de>; Fri, 31 Jul 2020 07:23:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9124B6E9C6;
	Fri, 31 Jul 2020 05:23:57 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-qv1-xf36.google.com (mail-qv1-xf36.google.com
 [IPv6:2607:f8b0:4864:20::f36])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 539216E93A
 for <spice-devel@lists.freedesktop.org>; Thu, 30 Jul 2020 17:38:56 +0000 (UTC)
Received: by mail-qv1-xf36.google.com with SMTP id j10so6211892qvo.13
 for <spice-devel@lists.freedesktop.org>; Thu, 30 Jul 2020 10:38:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=zmT3thEQQPB8ObrGtaWy3wl1J3plYnp9xQjXWXMMTEQ=;
 b=t9Xe34Slq7iKBdw/9Bmb5Y8s5r/htjepy9FBFUp7JdDwH5RMGX69i+Uq+HYt0gasVY
 /jWC0g3LGdgJCkaj+Cb/mutsJFgXQXhMhZe4s1MUvbVqhz60feJdqCbWOaYe7+piubXM
 nPbvNMVWeKhAwG3vpCxo/um+vHQLw3V5OhQuouAen7sfQGINjs6xDOWt2pIV3q5TDdqp
 e5HdvIJ//XM0O6TncUDJ2U8ej06Ww+bXnaK9MoIzgfwvxB5WkEWqgAJJpgcsvLOFgXqw
 D3cC27LeSERy1tRMs/Bq8vV6B+A/Um2dy+jGeY+0oO6VBZTzbQ7rDs1viV5w931Oi+Ns
 lUiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=zmT3thEQQPB8ObrGtaWy3wl1J3plYnp9xQjXWXMMTEQ=;
 b=WRb7HhApKY3hWufx5vOjbiokMW76/4/sB7R1ezZO56jOVkTArST0yuOC2qJbQpljUd
 oUeG+KyaLvamd963AvvbWsrQ0KZbuGXCZ3pTtPwPvVaIiaViZ9fmIqKFoKEvQVXlYUH8
 NEv1i1nWcc8lKB6xGPi4b4MDZbZ8zwTcoXkAZimTrn+gpvWEDMBczFkDyBcnj6uU8Kgr
 WK5kYpA4Y3q7svM9wgPveqIGStnMRbt9DRxNo05f/Qtc0xDBU3lhg9rJfvFLTQDpoYB/
 6v/m+o12mFhfR9xoJy+3IQcN/ZegZLJfNcFwtLfHFLJLmWXAW+Fq16u3EKoN+P9Rnt9l
 A9Mg==
X-Gm-Message-State: AOAM533PBga9wmWaRvv5rkH8Hu0mGU+wbDqk3ygwb48j3yRInyHmIXbx
 hOblGlV8OWzRoIuTDE8fM1TGpFl2OCAybsWDeHs=
X-Google-Smtp-Source: ABdhPJyQDUDqtcH/6P3oPPGLIMp1gQfVWMvZLIMbuglrBb0i2Pg1mDibyVIAPhqOkej7BT600zBSvgHT2Qmm6Y1GzFQ=
X-Received: by 2002:a0c:ffc6:: with SMTP id h6mr161287qvv.251.1596130735383;
 Thu, 30 Jul 2020 10:38:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ad4:4494:0:0:0:0:0 with HTTP; Thu, 30 Jul 2020 10:38:54
 -0700 (PDT)
In-Reply-To: <74120881.36683304.1596096615307.JavaMail.zimbra@redhat.com>
References: <CAM1wO0kUjpzX+G-YjaG7JfhnRAvFJ2g-n6ZQByPBMYRng6jvNA@mail.gmail.com>
 <74120881.36683304.1596096615307.JavaMail.zimbra@redhat.com>
From: Koopa Koopa <codingkoopa@gmail.com>
Date: Thu, 30 Jul 2020 13:38:54 -0400
Message-ID: <CAM1wO0kdFZqRVRW4h9i_G6_Pby2_XVwoNRshZUHE-j33JqZ6vQ@mail.gmail.com>
To: Frediano Ziglio <fziglio@redhat.com>
X-Mailman-Approved-At: Fri, 31 Jul 2020 05:23:57 +0000
Subject: Re: [Spice-devel] Webdav on Windows XP
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On 7/30/20, Frediano Ziglio <fziglio@redhat.com> wrote:
>>
>> Hi all,
>>
>> I'm trying to setup a Windows XP SP3 virtual machine with SPICE folder
>> sharing. The latest version, v2.4, fails to install, as the
>> spice-webdavd service fails to start. Running spice-webdavd.exe
>> manually yields the error message "The procedure entry point
>> AcquireSRWLockExclusive could not be located in the dynamic link
>> library KERNEL32.dll", which seems to be a deficiency in using XP [1].
>> After some digging, I've determined that the cause of this is that,
>> when starting the service, spice-webdavd calls g_mutex_lock from Glib
>> [2], which had XP support removed a couple of years ago [3].
>>
>> Version v2.2, which comes from before the Glib change was made,
>> successfully installs and runs. I have been able to map and somewhat
>> use a network drive mapped to the share, but it has broken and I can't
>> seem to get it working again; Windows just says that "The network path
>> http://localhost:9843 could not be found." Strangely enough, when
>> going to that address in Mypal, the share directory is displayed
>> without any issues, and I can browse it.
>>
>
> The purpose of spice-webdavd is to provide the port to be able to use
> webdav from the guest. If another program is able to use it I would
> try to understand why Windows cannot.
>
> Just to confirm, using netstat in the guest can you see the port (9843)
> in listening state?

Yep, that port is in the listening state.

> Is the Windows XP service running?

Yes, it is, and I have tried restarting it.

In further testing, the share works perfectly fine with the free
BitKinex client, but I still can't get it to work again as a mapped
drive in Windows at all. Since it continues to work without any issues
in the 3rd party programs I have tried, I'm inclined to believe that
the issue is not at all with spice-webdavd. It seems like either an XP
bug or misconfiguration of my (clean) installation. In any case, I'm
exploring other options for host/guest file sharing, as I can't seem
to resolve this.

>
>> If this configuration is not supported, I totally understand. Part of
>> why I want to point this out is so that, at the very least, this
>> incompatibility could be added to the Spice User Manual [4]. Thanks!
>>
>
> I would avoid it, Microsoft stopped supporting XP more than 6 years
> ago. Windows XP is abandonware.

Yeah, I have a Windows 10 VM that I use for most things, it's just
that I have a program which requires Windows XP in order to function.

>
>> [1] https://github.com/rclone/rclone/issues/1481
>> [2]
>> https://gitlab.gnome.org/GNOME/phodav/-/blob/2fe6090823b251c7accfd1f9706d2577e06fe189/spice/spice-webdavd.c#L636
>> [3]
>> https://gitlab.gnome.org/GNOME/glib/-/commit/cce29579389e892eb263d8507a71b3b3ca7433bb
>> [4] https://www.spice-space.org/spice-user-manual.html
>
> Frediano
>
>

Thanks!
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
