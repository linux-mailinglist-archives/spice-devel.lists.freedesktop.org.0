Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 64DE56961FA
	for <lists+spice-devel@lfdr.de>; Tue, 14 Feb 2023 12:08:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7309610E0EB;
	Tue, 14 Feb 2023 11:08:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com
 [IPv6:2607:f8b0:4864:20::236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C759A10E0AC
 for <spice-devel@lists.freedesktop.org>; Tue, 14 Feb 2023 11:08:34 +0000 (UTC)
Received: by mail-oi1-x236.google.com with SMTP id v15so12662256oie.9
 for <spice-devel@lists.freedesktop.org>; Tue, 14 Feb 2023 03:08:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=86xV4xrfT8DKbcpBcOge36dDqkmV+RK+ciBsttjvbxc=;
 b=WHKG7pQWJciWOae9jY9EOb9YHewMX4w8Zd9eXoQ+zm8WOplOJJbjyWy8nscbqZ0KPd
 p5SgZrbi0CJphBhItl95MzHoYB+qvZjgZkx++R6v/lEXjWBSvmVYGpLmtjeKBqfz+32L
 h+ewvLnZ5lDQ8HryvWh/83W4s5MswtstQZwDKDckfZBEWBgt2+X7HH9dESduwozqaKH4
 0rlVFD1iHRCJhfW+qoTaGeul/JGgkQr21PG5qnC8LZB0jd0uBRh7gPtiRzWWCQvdJT91
 AteXRU4pEHEn0/FsE5DQgLxVc6pHuDaVFwoMdOH0DIhUKyEl8qz2ocizDaGkgNE9QfmJ
 d5FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=86xV4xrfT8DKbcpBcOge36dDqkmV+RK+ciBsttjvbxc=;
 b=CVU+KcUPgrNTbGRfXEx2qOObNueyZt9re6gVEzE/E58NAcJH9oIZqysobVMUos38X+
 noKH2FlLgRhBcVEp5LMMrG2S14vxqNvTJ9WAPQN7luPp2WOjpHlXd2RnZtoqVZXuLihc
 h5VDmxnLOBezsdoWvZNKhBupd7GTWYHVR9bit1l3i4MsVHCeQtlbE99IwqfN6msyjop/
 JKIjf1f/kbLXng9y+SE07FS+aULT3xGqDBW7pgKpbiN6C83xh+KifB0KKzTerxCgVJHC
 K/IlpD7zrl2vAjaOgmazg2QQL+EJhe7dzBaqWVCRk5rmZJYqEZr5UNZFVIZngwfb0Vwi
 i9uQ==
X-Gm-Message-State: AO0yUKWCAo6+Xyd5Tb7Ru1FcjXiOA0+CTkP1VGPDKqxsUif+ZIUiv6+J
 Sp7N6o3A3O6XR01l8lKsMP+yByNlxEEGdBy9Kbc=
X-Google-Smtp-Source: AK7set8Ogk893fjWG9as1m1u89NOiJMjThanQWGNNAj3S9aA5ZIJHBqftLs3hZXkrGXYe7RmhPkHKNqAIWkV9Gz03T4=
X-Received: by 2002:aca:bcd6:0:b0:37b:6490:ec82 with SMTP id
 m205-20020acabcd6000000b0037b6490ec82mr1739055oif.1.1676372912575; Tue, 14
 Feb 2023 03:08:32 -0800 (PST)
MIME-Version: 1.0
References: <SYZP282MB3252532513FAB75D92C10DC8C9A29@SYZP282MB3252.AUSP282.PROD.OUTLOOK.COM>
 <CAHt6W4fwa1r7f4gm5=_p2Q4cYHPdE5Dsk2484=O-9sNC1Wq2sA@mail.gmail.com>
 <SYZP282MB325243B7EB9CEF5B87E9AF9FC9A29@SYZP282MB3252.AUSP282.PROD.OUTLOOK.COM>
In-Reply-To: <SYZP282MB325243B7EB9CEF5B87E9AF9FC9A29@SYZP282MB3252.AUSP282.PROD.OUTLOOK.COM>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Tue, 14 Feb 2023 11:08:21 +0000
Message-ID: <CAHt6W4d+HUBhJzCZGK7GWOampMZ7iVnPzhONyCd8=FjjbvTMYQ@mail.gmail.com>
To: qi zhou <atmgnd@outlook.com>, Uri Lublin <uril@redhat.com>, 
 Victor Toso <victortoso@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Spice-devel] [PATCH] reset qxl to vga mode
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>,
 admin <admin@atmgnd.cn>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno mar 14 feb 2023 alle ore 10:50 qi zhou <atmgnd@outlook.com>
ha scritto:
>
> > Hi,
> >   It looks good to me. Why it was QXL_IO_MEMSLOT_ADD I don't know. On
> > Linux is QXL_IO_RESET too.
>
> May be a typo ?, here you can use sysinternal's notmyfault to test this bug.
> 1. launch qemu use legacy bios mode. make sure qxl driver is active, then open notmyfault64.exe click on crash button. It will trigger a bsod
> 2. without reset/patch, we cannot see bluescreen shown
>
> before qxl revision 5, even DodResetDevice does nothing, the qemu will do reset after detect qxl mode mismatch. see https://github.com/qemu/qemu/blob/ed71c09ffd6fbd01c2a487d47291ae57b08671ea/hw/display/qxl.c#L1315
>
> But qxl revison 5+ requires explicit reset
>
> reference:
> not myfault: https://learn.microsoft.com/en-us/sysinternals/downloads/notmyfault
> DXGKDDI_RESET_DEVICE : https://learn.microsoft.com/en-us/windows-hardware/drivers/ddi/dispmprt/nc-dispmprt-dxgkddi_reset_device#remarks

Merged.

Now the question is about release and build.

Uri, Victor, should we pack a new release?

Regards,
  Frediano
