Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D65222EF1AC
	for <lists+spice-devel@lfdr.de>; Fri,  8 Jan 2021 12:54:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76B85892CC;
	Fri,  8 Jan 2021 11:54:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com
 [IPv6:2607:f8b0:4864:20::1034])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CC6D6E804
 for <spice-devel@lists.freedesktop.org>; Fri,  8 Jan 2021 11:54:51 +0000 (UTC)
Received: by mail-pj1-x1034.google.com with SMTP id u4so4311783pjn.4
 for <spice-devel@lists.freedesktop.org>; Fri, 08 Jan 2021 03:54:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Bi4TyEP3WkS7okVfGo0lWebC74Hims1VrfA9zAW23Y8=;
 b=JFvvMmtly1tjT/9WIhWWS6azjt9nKsDh/iKNi7zOp3GEKOcX+PbalhM+77Uel2wvQD
 QkE10Ugxx+zBawfM2exGNsO3zWnJ9Bdu9jQy/qnZES16Kf7HWfr81ynbYl5uznMxJ1qW
 9B/x4mcYilB0iC9Nno5wbgDvj1lLDHlQP/juPK9n76RiR4UjpBbxRpgJpOIeKCjVgieG
 no+Mxxfvm9pB1DJK+67Xi1xypiSWr5b+WYUYpww4NfkED33y33xb4G2k/lJV2/3TOAHR
 OA3ZJN9XRwTHSCpnyULVpO/nrwOXDwFzi++mea3rulY76aQjfLeN8Z1F6yEgTtHI+Okh
 2AOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Bi4TyEP3WkS7okVfGo0lWebC74Hims1VrfA9zAW23Y8=;
 b=iy4ABDqZynP09uSfFh8X0cKgJQceDBQqiI7C7Rv/IFcZr1qRw4H6kENF8Oa3eX855h
 CRepmZ4ZlAUxvp+ZltGR0goUTQn2q2lfEo16Y95SmH4xKbGtaSJVTyLPWOx4tTR/909z
 L0MrFXtxVXZUcJeDVYf0Qo5MjVWwHN4VTeDg5H1PCuwqdRtIW+PDDlYpdPLUiv6opLrJ
 mkLbCEf1Yb/07rhf/yv65oXpchD9lHqSrU5VRgGk48NxJ7bEdVK41KJswlKPOn7lPx52
 hHyTL3SYdBRj4/PucXO6GUsy4WuLxBngnn3Gc9GlBb65fr0Uq5XCgdjCBbJxm8ltDQTf
 CSjg==
X-Gm-Message-State: AOAM533BMVgeawxWM1QhKjjutJGx9Uax4Wc5IedifDi14JwGsnkDsBEF
 t+U2QPH/AUHJKi3c5XkTGKUfX6U76tT2MDzH/hI=
X-Google-Smtp-Source: ABdhPJyiaA3Y/J0fn4AL2ClKFBdDbLpSvtmpzfja0znSjBLVjpd4ZC1319C6UN5jY3Yk3FJstH5YQE9XSGzhUraxGKw=
X-Received: by 2002:a17:902:c410:b029:dd:7d4a:e50 with SMTP id
 k16-20020a170902c410b02900dd7d4a0e50mr6660866plk.36.1610106891167; Fri, 08
 Jan 2021 03:54:51 -0800 (PST)
MIME-Version: 1.0
References: <CAJdDNnLW9bPjvjF6S+HG_m2RAVr1hnPPy7dPU-X9s4bPzgv1UQ@mail.gmail.com>
In-Reply-To: <CAJdDNnLW9bPjvjF6S+HG_m2RAVr1hnPPy7dPU-X9s4bPzgv1UQ@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Fri, 8 Jan 2021 11:54:40 +0000
Message-ID: <CAHt6W4cZyEGMLPMT+6ep-_+ES=AcKfrspaPKvKrgsxGDs8SKrQ@mail.gmail.com>
To: Domingo Ruiz Arroyo <ordenadordomi@gmail.com>
Subject: Re: [Spice-devel] Experimental OSX Client
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

Hi Domingo,
   did you try to compile it manually from sources?

Regards,
  Frediano

Il giorno ven 8 gen 2021 alle ore 11:23 Domingo Ruiz Arroyo
<ordenadordomi@gmail.com> ha scritto:
>
> Hi. The experimental client for os x has stopped working in macOS Big Sur, when in the other versions it worked correctly. While this is solved or I have not developed an alternative solution that I think can be quite useful, so I am attaching it for everyone who needs it.
>
> Thank you.
>
> A greeting
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
