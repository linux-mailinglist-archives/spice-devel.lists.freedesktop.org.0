Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6877261D9CE
	for <lists+spice-devel@lfdr.de>; Sat,  5 Nov 2022 13:03:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECA8E10E066;
	Sat,  5 Nov 2022 12:03:22 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oa1-x2e.google.com (mail-oa1-x2e.google.com
 [IPv6:2001:4860:4864:20::2e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95AA210E066
 for <spice-devel@lists.freedesktop.org>; Sat,  5 Nov 2022 12:03:20 +0000 (UTC)
Received: by mail-oa1-x2e.google.com with SMTP id
 586e51a60fabf-13d9a3bb27aso7369652fac.11
 for <spice-devel@lists.freedesktop.org>; Sat, 05 Nov 2022 05:03:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=29hcpFGRlozbP2dK3rj9b9RKlCFsoTj/sK4D98w8ntM=;
 b=bAunv9mhM0jraYl+fVWttumnyWlB3x4KvgcshUw0wd2UEY/jvHJ0P9J5h8SGUZexjI
 Hwnmh80LRIxSRdv53nCH953Xosd+CnWjD7d47FNvhUGQ7CiYUGC9QBhufvB6xA7Y8CoM
 brKluvTUkApHQ3dk8JRO6mq8mKXB61G0xVD6fJNGy1BfNzEx7c68EYQZ5FFNOFQbQ8dN
 gAOakzMqrisbKDqhFo2Fx3GSLr/jAeIxCKxgP9uUZOLjotmdkl7iIhmJVOGH7b0BTtw/
 1azaGiKBruE0LK1T2FKbt7asonb4DWl+6WAyflVqOkBOF/2TRK53VbzoBJkRdUnreyv2
 088g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=29hcpFGRlozbP2dK3rj9b9RKlCFsoTj/sK4D98w8ntM=;
 b=gD0xR9N6ryA1kIKCqraO0qsBoNaqxL2CvUFv2Ig/p/ztVk7YFR1IPB5r5Sfwhafhml
 kLBshRa59fJj75na+liI0440Hm63IEbtZGpv6TKXcbdn98U2u3uYajDrJUPB/eI9CI6N
 nY+YO2HKjfcxcIoklsTiRcNn//dqU+LbmNFX3AgNcpav3hB3KSee/coeOusDD9kkYP2P
 xhpQiHnw5/EwL7wyryPkj/ISmZ1N+Y9iYwQV8Qpv6WPHGU4dnedaQrtduF5Ms0IH1wWS
 CYAkuZy60zPENGkhY9590Hwgzmd4MRbi6Ghv1FWStSHJAC6wyaZm1LqeqbYg81XEwSLc
 /yYw==
X-Gm-Message-State: ACrzQf2wHxKMgG45rFQ9QM/JwtwSXlRPfMmUGeeecYhzb6QzhpqsN86j
 YSFUxhAvhZW8VGv+9cbBzGnPZ1ord2oS/87u1hg=
X-Google-Smtp-Source: AMsMyM6AchAzAF0EVCx6/rl+n+2AnxzTqwz9vl+LizvhY36fJazjq7fnV3ZSPWe3rtUHu1YaNor+rDHwFdIlehm5hog=
X-Received: by 2002:a05:6870:e6d3:b0:13d:7209:a3d7 with SMTP id
 s19-20020a056870e6d300b0013d7209a3d7mr11088131oak.1.1667649799696; Sat, 05
 Nov 2022 05:03:19 -0700 (PDT)
MIME-Version: 1.0
References: <CANVMif+rXZBMvZ3Ww+mWC7TpViGwJSzvmn7VvU08hMf=G4ENsQ@mail.gmail.com>
In-Reply-To: <CANVMif+rXZBMvZ3Ww+mWC7TpViGwJSzvmn7VvU08hMf=G4ENsQ@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Sat, 5 Nov 2022 12:03:08 +0000
Message-ID: <CAHt6W4etN1Br9-mseZnV+T2BSj4Hrq=d92mFxNbx2WpNNwNhwg@mail.gmail.com>
To: Dirk Eibach <dirk.eibach@googlemail.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Spice-devel] Standalone (non-virtual) windows server
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno sab 5 nov 2022 alle ore 08:09 Dirk Eibach
<dirk.eibach@googlemail.com> ha scritto:
>
> Hi,
>
> I have started developing a standalone (non-virtual) windows server
> application. It is based on the Desktop Duplication API, available
> since Windows 8.
>
> A proof of concept is already working nicely. It still has some rough
> edges though. If you like, join the fun at
> https://github.com/ZeroMips/kuemmel.
>
> Comments welcome.
>
> Cheers
> Dirk

Hi Dirk,
   I had to moderate this email and I had some doubts about accepting it or not.
I had to go and look at the GitHub link to understand what it was.
More or less is a project to use SPICE on a bare metal machine,
something like x11spice or winspice (see
https://gitlab.freedesktop.org/spice/win32/winspice).

About licensing. it seems you want to post your code under GPL however
your project is distributing some file copyrighted by Microsoft. Did
you check if you can do it? Also, having multiple licensed files it
would be good to put the licences header on each of your files. Sorry
if this seems pedantic but better to get licenses right from the
beginning.

Regards,
  Frediano
