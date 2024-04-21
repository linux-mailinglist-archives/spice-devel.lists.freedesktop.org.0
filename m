Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EFB48ABEE8
	for <lists+spice-devel@lfdr.de>; Sun, 21 Apr 2024 12:10:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDE8B10E72B;
	Sun, 21 Apr 2024 10:10:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="CxV6+eS5";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com
 [209.85.128.177])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75A8210E72B
 for <spice-devel@lists.freedesktop.org>; Sun, 21 Apr 2024 10:10:54 +0000 (UTC)
Received: by mail-yw1-f177.google.com with SMTP id
 00721157ae682-617e42a3f94so39219977b3.2
 for <spice-devel@lists.freedesktop.org>; Sun, 21 Apr 2024 03:10:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1713694253; x=1714299053; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=0xI5Fsq+f+7e4NMPgR86N4OTvGg89jSNKT4PQE0Mg9E=;
 b=CxV6+eS5jjuD9020GcKFclsgKPdkzbnS9nzhBhoOMoiAksi1Q0DisBnrjgMidnoNeG
 lkvKixp28gzk0UN1dPZW937ZN6nZ/DW+vVDL6dvQQAUe5kE2C1QSyWsU9rDqkeeU0YT6
 t1VlV2taXtLbtOryjl+lBrYdgT0P9l3XOyGYmwPjpN7uEm/Kq/D46CAcha/4gsGnzHIb
 HzkljYp+DHjEGhDyrG8U3TN2ZnSmtC+p++DgsZXUSFvTao4TnUOHlLBxTboYrB1kf5/i
 L73/tGZq9dp+s8fTi/iOnqZc+p9iaT3+XGl2ibiqwtniPSegBWAiNnJ0dMTd11Th7tAx
 Kmfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713694253; x=1714299053;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=0xI5Fsq+f+7e4NMPgR86N4OTvGg89jSNKT4PQE0Mg9E=;
 b=cF764PlAWypUlWnYGg+Wq1bvOzranUKhpNQnY46txlinMiy680UCQ31JeAJkLWHN9K
 2yOgOQ7fxfn2PCmUgcBUlQa6eH6fg1fuWCd5KQLpiMTD4/057RlI08V9kkwQU3z1i3Tz
 fmGABNkw1tC9GdLCUI6x7riuxUFLbB6o6P78e2CzTNMDt0Sq7LpH5S/EVNkAH2Gu3IyO
 zwRc+SWfuMRDx+5un+cnN4pUSefvO7xn8tK2ooLtqyEwp7EQcD2dMC0N4VXyA0DRQtBG
 KHbTit24kCBF1rQml7KGWtOF3WOt9X++Oo0WEcMQkgtDmCUyNvKlvo+h8NgBuvtp0Ytz
 PBdA==
X-Gm-Message-State: AOJu0YxT8wb21w0e+yhybKW/E70SZtUHoyX0Bx7LFNM7uqZaB/ZdnOOE
 7BQQPGyQSpmKO6FfREPYiOA2HrTq/G0zHCkAL5nfKYPVOLCpIBOR1kwfbvF9AX4gmjc9cLDczan
 r/twJzudXMpweNvVpUvUi+PqwASM=
X-Google-Smtp-Source: AGHT+IGNZKwrtmg4Yi82Lcc0vMoN9l0TdY6PWgXC5rPxBK+UEF/I8A0eIPCw6kYmGr4aXw4z2Snu6Bn0TpDxz+yDJzA=
X-Received: by 2002:a25:dc53:0:b0:dcf:f78f:a570 with SMTP id
 y80-20020a25dc53000000b00dcff78fa570mr6744236ybe.7.1713694253233; Sun, 21 Apr
 2024 03:10:53 -0700 (PDT)
MIME-Version: 1.0
References: <23326d29-3eb3-4f23-b782-103b555976ab@codeweavers.com>
In-Reply-To: <23326d29-3eb3-4f23-b782-103b555976ab@codeweavers.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Sun, 21 Apr 2024 11:10:42 +0100
Message-ID: <CAHt6W4fGKguM5VoY9BhjuwtajkFaMKbXiwg82GruRA6h+mMKGA@mail.gmail.com>
Subject: Re: Anyone want to take over Fedora packaging for spice-html?
To: Jeremy White <jwhite@codeweavers.com>
Cc: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
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
   I suppose we could take this as a group thing, I suppose we don't
have many updates on spice-html.
Can you write something like
https://gitlab.freedesktop.org/spice/spice/-/blob/master/docs/how_to_release.md?ref_type=heads
?

Regards,
  Frediano

Il giorno mar 2 apr 2024 alle ore 18:23 Jeremy White
<jwhite@codeweavers.com> ha scritto:
>
> I've become largely inactive on Spice (due to my semi retirement), and
> the Fedora folks are thinking I should no be a packager [1].
>
> I agree :-/.
>
> Anyone want the job?
>
> Cheers,
>
> Jeremy
>
> [1] https://pagure.io/find-inactive-packagers/issue/1840
