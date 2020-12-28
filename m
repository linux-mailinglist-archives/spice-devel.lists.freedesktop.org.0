Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C86942E35E2
	for <lists+spice-devel@lfdr.de>; Mon, 28 Dec 2020 11:22:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F31E189B22;
	Mon, 28 Dec 2020 10:22:48 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com
 [IPv6:2607:f8b0:4864:20::102c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AADB89B22
 for <spice-devel@lists.freedesktop.org>; Mon, 28 Dec 2020 10:22:48 +0000 (UTC)
Received: by mail-pj1-x102c.google.com with SMTP id l23so6283009pjg.1
 for <spice-devel@lists.freedesktop.org>; Mon, 28 Dec 2020 02:22:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=w5Lm2cLpBHNlkkZETlkswSRuol4WOpDs4wVizJ8JPNU=;
 b=H0qrLHIkvUdXA5kfL9j30w7UH4/MRgfBoUNbuis5IJlJQkHdMLAJXoi/+SZkdGBonZ
 4NcqqT4XAe/m1oTKk3Sp5Uu3TAmlIaSQ+qXo437Hv//6Ryddyv180QQZ06RZtwGzKzub
 u4Jur9vUZdG5/T4a1dMclGDJN7RSbTwKH2d9EpLd3FMezM9j/hP+TgKrVwNqeZtxnLyN
 AUfdU7HOHwN3z97qj9P9dm4vZAWBSx+/JvG5FSca0Zbn6qQcT1G5sCp8H/UAQ5ZkbuxH
 6nHuZxGs6KtiU7/gb9pw6w4y/svOtfeJDp1xWM7jwoZLHFNP4bRmfORPK4YwrTJsbDf1
 t+Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=w5Lm2cLpBHNlkkZETlkswSRuol4WOpDs4wVizJ8JPNU=;
 b=rTqHgluym4jJTeeYPAx+MjbGZJb6ylcFIytPLw3V5uIVEWhUuJ+bhGrEZV6HkbTqxg
 HMYwT7xPiEmGIj2q3OhJ1ViweV2A/arGa1Qtfb9nfMiiYGnc+KtQh1nKNuJN9WquRllU
 05L4JGnyaU4tWEhtBeN91lh1EhN2KlFwU3zCxewMbl8ZCwywx7fPA/EOXcz6hl2Tb06i
 XLyetSxSliu7PYDb1avU8NMsoZjcR08jEVp2du9bNMw/f0M2qGn3mHI8S2G/sIhXS+gg
 /efs0Ossltvw51yRpIvbxQ6m5EuNAHhbElZ9h7FG8ZKjV1Dv0eDiM849VJoGP3zeAfTw
 MRag==
X-Gm-Message-State: AOAM532PvXV+TCSAtNb4NbqfqPdRsdAU1572zW6gx3ybs4k+Vjk6etLg
 Kaqt7vH9sFCJKyrQwMwh+tqngiy9tEE7RBNWqUxfHJB+ShE=
X-Google-Smtp-Source: ABdhPJwFzmXoC0LdLqe5dRYiAg6sAEWhFErV/HI3wTyEslWFA3Sr5lqFHaRDsgOucNueJOV6+MJCUAgnvQMCbMrsEEg=
X-Received: by 2002:a17:90a:5303:: with SMTP id
 x3mr20827983pjh.54.1609150968331; 
 Mon, 28 Dec 2020 02:22:48 -0800 (PST)
MIME-Version: 1.0
References: <MPV7hSS--3-2@tuta.io>
In-Reply-To: <MPV7hSS--3-2@tuta.io>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Mon, 28 Dec 2020 10:22:37 +0000
Message-ID: <CAHt6W4eN5WepDc3g0NL1_PjimcNxxR_zTk9j-TjkLbNdngEYaw@mail.gmail.com>
To: giters@tuta.io
Subject: Re: [Spice-devel] remote-viewer disconnected when unplugging laptop
 from dock and switching to WIFI network.
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

Il giorno sab 26 dic 2020 alle ore 17:50 <giters@tuta.io> ha scritto:
>
> I have installed virt-viewer 9.0 on a Windows laptop and use it to connect to virtual machines in a remote Proxmox VE server. I noticed when I unplugging the laptop from docking station (where it is connected through a network cable), and switching to WIFI network, the virt-viewer window will disappear. I assume the virt-viewer is not making attempts to reconnect when network get lost.
>
> I noticed when I clicked the console button on the Proxmox VE server, it actually download a download.vv file. When I click the download.vv file it actually uses the remote-viewer.exe to open it. There seems no option in the download.vv file or remote-viewer.exe that can configure the retry attempts.
>
> So can we add a feature to the remote-viewer.exe to make it retry for some attempts? Just like the Windows RDP when disconnected, it will show "The connection has been lost. Attempting to reconnect to your session, Connection attempt: 1 of 20". (Example picture here: https://social.technet.microsoft.com/Forums/azure/en-US/7c0cc2f3-0378-4f98-a2e7-d23a3925df2c/configure-unlimited-number-of-attempts-on-the-client-to-reconnect-the-host-via-remote-desktop )

Hi,
  one of the issues I see here is that usually Spice uses a token and
not a password.
The difference is that the password expires, so the reconnection would
fail as the password is expired.
If is not the case it would be doable however better to have a way to
distinguish the 2 cases otherwise
the client will attempt again and again.

Frediano
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
