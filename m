Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B0711B719B
	for <lists+spice-devel@lfdr.de>; Fri, 24 Apr 2020 12:11:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F2986E44E;
	Fri, 24 Apr 2020 10:11:12 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
 [209.85.166.68])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 421386E44B
 for <spice-devel@lists.freedesktop.org>; Fri, 24 Apr 2020 09:50:14 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id e9so9701595iok.9
 for <spice-devel@lists.freedesktop.org>; Fri, 24 Apr 2020 02:50:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6dHUDskGTlpWCtHIuIBU/ej74enmuqs9QrIOjUxDxTw=;
 b=TpuioqjJ4gcspVunAScf9uXZ6PmC0wv+HGsX1BPed3TwJLOSwIazUDu0L9rSoxJRKC
 bpK0g4yZEAp4TA5HKaZtLRkJ1zD7nn1Svx9vWhIIsldsyKyAvazr62nEcMf7veYW9JoR
 l4j4hvJ1CHhm/m6JqhHJRhML9eGbSVtiCYkfuCf4QyzanmS3DCu1Cuyx13cbRKqJJSNe
 tJcFQXmFHYeOD1q74G3uPdgCoqL38FRnotdhoqzyBIUBd4tjfoH1tEYFY3L9ysI+fdFr
 FU9kwRsZozAY/6WKmz0T4ukqjU043za1Q8Pwq3snnWhSZN4DHiD2G5/B+SAj3Zt6alcZ
 FAxg==
X-Gm-Message-State: AGi0PubJ3ISkdRATIzrVpR/HfpUBtyEmS0139p2H9kRNOdjht7WTKdMu
 bFs8x2FAWZc10xhLJcv1tmr7rFnupUwkzgEioy4=
X-Google-Smtp-Source: APiQypLo8lbC1Ovo4n92FN/j46YMwq/dyCmxWua4lxqlPJfsenvQiuY5gG/RchGdG0F7d3aJexBikTqnhB//ZAoT9/Q=
X-Received: by 2002:a6b:7317:: with SMTP id e23mr7827695ioh.72.1587721813333; 
 Fri, 24 Apr 2020 02:50:13 -0700 (PDT)
MIME-Version: 1.0
References: <1585635488-17507-1-git-send-email-chenhc@lemote.com>
 <20200331145325.f6j2jjczlz33xuyi@sirius.home.kraxel.org>
In-Reply-To: <20200331145325.f6j2jjczlz33xuyi@sirius.home.kraxel.org>
From: Huacai Chen <chenhc@lemote.com>
Date: Fri, 24 Apr 2020 17:57:37 +0800
Message-ID: <CAAhV-H6vpKk=MD3PX8r6ByT7u4fhwfUcBX6c8FGVA-D0yqm28g@mail.gmail.com>
To: Gerd Hoffmann <kraxel@redhat.com>
X-Mailman-Approved-At: Fri, 24 Apr 2020 10:11:10 +0000
Subject: Re: [Spice-devel] [PATCH Resend] drm/qxl: Use correct notify port
 address when creating cursor ring
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
Cc: Dave Airlie <airlied@redhat.com>, Fuxin Zhang <zhangfx@lemote.com>,
 spice-devel@lists.freedesktop.org, stable <stable@vger.kernel.org>,
 virtualization@lists.linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi,  Gerd

On Tue, Mar 31, 2020 at 10:53 PM Gerd Hoffmann <kraxel@redhat.com> wrote:
>
> On Tue, Mar 31, 2020 at 02:18:08PM +0800, Huacai Chen wrote:
> > The command ring and cursor ring use different notify port addresses
> > definition: QXL_IO_NOTIFY_CMD and QXL_IO_NOTIFY_CURSOR. However, in
> > qxl_device_init() we use QXL_IO_NOTIFY_CMD to create both command ring
> > and cursor ring. This doesn't cause any problems now, because QEMU's
> > behaviors on QXL_IO_NOTIFY_CMD and QXL_IO_NOTIFY_CURSOR are the same.
> > However, QEMU's behavior may be change in future, so let's fix it.
> >
> > P.S.: In the X.org QXL driver, the notify port address of cursor ring
> >       is correct.
> >
> > Cc: <stable@vger.kernel.org>
> > Signed-off-by: Huacai Chen <chenhc@lemote.com>
>
> Pushed to drm-misc-next.
It seems that this patch hasn't appear in upstream.

>
> thanks,
>   Gerd
>
Thanks,
Huacai
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
