Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F8C406AB6
	for <lists+spice-devel@lfdr.de>; Fri, 10 Sep 2021 13:30:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3237C6E9E3;
	Fri, 10 Sep 2021 11:30:41 +0000 (UTC)
X-Original-To: Spice-devel@lists.freedesktop.org
Delivered-To: Spice-devel@lists.freedesktop.org
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com
 [IPv6:2607:f8b0:4864:20::529])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82A466E9E3
 for <Spice-devel@lists.freedesktop.org>; Fri, 10 Sep 2021 11:30:39 +0000 (UTC)
Received: by mail-pg1-x529.google.com with SMTP id h3so1523150pgb.7
 for <Spice-devel@lists.freedesktop.org>; Fri, 10 Sep 2021 04:30:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=W6mJX9M/6zbyVPn5mTr4zMh1PdWjVhMeGVvSlpsCCh4=;
 b=SIMZnzL95SsfKQl/DtN62IG/MfRWYXtoKfVhFGUruKKm2uPZG1y843e5MLKfb8/8dO
 1IOGtMi890oIlllAlWhDVUS9/yrxYz5TU3Uql25wPkrq92FkpeF05qqWn62UTEZRw2xX
 fPG7Y0x0JevtYuFYAhXqK9GRT8PhulHjbh8xl+I8PmxtKWuLxfDjSiFqKlRH588w3qM2
 l09/Y1ZEquWxupBUINm9ORF1+w6/Zt57ZopRzc7ijsGqIdJdWSEpeRQB6xPP53uZkJRo
 oOupiJavVoBFhEhGsti+niUb6lrH5VEWqr+rFoL33y398+G6h6uvhKFe8Ok6zep60cLB
 90lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=W6mJX9M/6zbyVPn5mTr4zMh1PdWjVhMeGVvSlpsCCh4=;
 b=g7FB4jCvArGyD1+uTLWHVm4NvNMyodvs68t57piD5NRgPpCUPYD26FJS3CN/xclxEv
 6HLVwdUEBK+DrcoW7ygnKXrOMcSBlhSIs4ncu/9HNDn7khbJb4aicglRp+6suTGtd99A
 f01NWWtjbvj5S0z2NbGiqPYTFZ5k9DhVQjhlgweBV/NYVmdeqTnZZhpkWsk3Ci+RCdu2
 Dj/pcQ5UkyfMdA0FAZeffokL+8CG6rp6aahUZ+NcqimJ3UaIYrkvLDkUwT5uJTbE0wGd
 Xu2kreA9n2Xk4ovdbUmbJTroO3pC5UgKUPf8DaTgHeZ8qUJAEG8IASMxYdfgCLR0kiyO
 BSfQ==
X-Gm-Message-State: AOAM533pSxfBED4y9tGEVTr9Y5VLhZca5dq4a9M7gbXZ7JjN5VO39PgR
 VHk+of6pmbX420x4TkGLqhhKgd3L0OE0CkIiq7UADhxcSHo=
X-Google-Smtp-Source: ABdhPJzCx6/RtTAJZ7Jjtnz45jwDeW4hnSyn6WVHj7EvYBZFglZF3eGqbgtGNM53glJCGuGkrZDlqOj/Cxqc8nyM0ts=
X-Received: by 2002:aa7:9003:0:b0:3fe:70d6:9d25 with SMTP id
 m3-20020aa79003000000b003fe70d69d25mr7530664pfo.37.1631273439095; Fri, 10 Sep
 2021 04:30:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6a10:6e8d:0:0:0:0 with HTTP; Fri, 10 Sep 2021 04:30:38
 -0700 (PDT)
In-Reply-To: <CAHt6W4djE+VawG7PQyrbOLVPZ0TOrVwo7WuZ3N4-UUJyTx7hUg@mail.gmail.com>
References: <CAGusqHLAmqD6HgJ5ebUoOOt4sgdJhvvaLn+X5AtJjDTY7=q=Cw@mail.gmail.com>
 <CAHt6W4djE+VawG7PQyrbOLVPZ0TOrVwo7WuZ3N4-UUJyTx7hUg@mail.gmail.com>
From: Andrey Af <public.irkutsk@gmail.com>
Date: Fri, 10 Sep 2021 11:30:38 +0000
Message-ID: <CAGusqHJurC4eobV2970EhSX7um3bgZpV+f_3bFCFAEnYDK=K6g@mail.gmail.com>
To: Frediano Ziglio <freddy77@gmail.com>
Cc: "spice-devel@lists.freedesktop.org" <Spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Spice-devel] spice protocol 11.5 encrypted password
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

Hi,
About 11.5 - it is a section in the documentation (spice protocol).
I am trying to implement the server part on my project (LinuxTerminalService ),
https://github.com/AndreyBarmaley/linux-terminal-service-manager

I already have a working vnc and rdp protocols implemented, and I'm
going to add spice protocol..

2021-09-10 10:06 GMT, Frediano Ziglio <freddy77@gmail.com>:
> Hi,
>   there's no protocol 11.5.
> There's no data length markeR, password is zero terminated and encrypted,
> if you refer to the default password schema (no SASL).
> Can you explain what you are trying to do?
>
> Regards,
>   Frediano
>
>
> Il giorno ven 10 set 2021 alle ore 06:51 Andrey Af
> <public.irkutsk@gmail.com>
> ha scritto:
>
>> Hi,
>>
>> For encrypted password, there is definitely no data length market?
>> For example, I don't need a password, authentication is verified by
>> another part of the code, how can I skip this?
>>
>
