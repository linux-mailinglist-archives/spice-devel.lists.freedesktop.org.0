Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8104459E3FE
	for <lists+spice-devel@lfdr.de>; Tue, 23 Aug 2022 15:03:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87D89112153;
	Tue, 23 Aug 2022 13:03:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com
 [IPv6:2607:f8b0:4864:20::22e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4399511A262
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Aug 2022 13:03:25 +0000 (UTC)
Received: by mail-oi1-x22e.google.com with SMTP id o184so15919535oif.13
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Aug 2022 06:03:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc;
 bh=IWEuhAHR2FhprvOKxm/c/Akp+JpHsegzNHAphfcgGww=;
 b=XOsYZMbiEExmHTrMBeWEIZ/UMpqTbIk9UMxA/YA/VuCXz/5YuMi6ZeQFMlq9wQ4Vk6
 eroNCfYmqT7ctZ3LoCZKy/TkWKbGR6+Gxs2ZKSRQtgr/l7/mK6etSqs6Vu+kPGtdySlg
 EE2h+BaB0boTXVXE2CPDQD5ddcULQbtTT7K5oKsB4icdGtshXOvMeC0UKfdMliOafLZw
 FIPRp28jXxjptVhzbxF3AhLfcvVPxeQM23JviQ+CI/eaF93kyoYjSniWISy7rYNXeLZP
 mUc7flvPkmOYAiyJ3DqJnt6V28rWS4EdrgSLG2x7EuY0DRMqLYD8RKthpmlLpJAonxy8
 StVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc;
 bh=IWEuhAHR2FhprvOKxm/c/Akp+JpHsegzNHAphfcgGww=;
 b=761IoaeJ4/maVGvfc3WU7VxqaNUmRi1REf7DXb65BpbbayhgYn+ZB28ziGwjhjHDZz
 j2T68I33+aUapVH1caKW3n1sb7Qn7gdIoOo1JMLB6qqQ/gGPv+4lBKqKpVKGm+1RNbjp
 bt+b8EuLvPZbaWP94lQL1irdSSBQltDCQryg1awffMwDzWaSjZz+q/4tP8+1TeLzkatz
 O1tEFFP3vwIwgp+vZnJQzRKbKygP28hLfVld0Hp47V1ZX7u6XotiwW9+j3oh1FDjBygB
 0dMhItXILWHkdUn4NJ5wL+m6dwKLQ9ZMPK7y1t3AF6wvf7dvdR8F31I80cs9Z1hjlyo5
 UNKA==
X-Gm-Message-State: ACgBeo02rV9htzT3PvnK6opMwnhnVGz22F0RQRJ34rEgTdOzJbfePFzU
 snWVSRPMBX1ZEibRRm+sFGf6isrgVsWlDkk4JqKgmE59
X-Google-Smtp-Source: AA6agR5kp0UxME43U755iABSxRx3xUW9+lWFczKtNBYjlNqrEB054LvNRcWi9TW9It29X43RIG9HRR1nc2Rjg8QM0jU=
X-Received: by 2002:a05:6808:181e:b0:344:c8a8:c30c with SMTP id
 bh30-20020a056808181e00b00344c8a8c30cmr1292972oib.179.1661259804430; Tue, 23
 Aug 2022 06:03:24 -0700 (PDT)
MIME-Version: 1.0
References: <20220823093952.19560-1-hverbeet@codeweavers.com>
 <CAHt6W4df6uv07j9s+Yp1q8h_g-imiGXdYAbxuaJD1uQKLrzSzA@mail.gmail.com>
 <978dd3cb-5454-2362-9491-e64eda3d1d86@codeweavers.com>
In-Reply-To: <978dd3cb-5454-2362-9491-e64eda3d1d86@codeweavers.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Tue, 23 Aug 2022 14:03:13 +0100
Message-ID: <CAHt6W4fQ-u7vUKTnf2Akt71T6xQK204Z_PDQvHr8BCZeWNncOQ@mail.gmail.com>
To: Henri Verbeet <hverbeet@codeweavers.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Spice-devel] [PATCH x11spice] Call xf86SetDesiredModes() in
 DUMMYScreenInit().
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno mar 23 ago 2022 alle ore 13:27 Henri Verbeet
<hverbeet@codeweavers.com> ha scritto:
>
> Hi Frediano,
>
> On 23/08/2022 14.01, Frediano Ziglio wrote:
> > Looking on the Internet this function is also called in EnterVT
> > callback. Don't we need something similar?
>
> I think that in principle we would, but by its nature of being an
> "off-screen" driver, spice-video-dummy doesn't (or at least, shouldn't)
> VT switch.
>
> I suppose we could implement EnterVT()/LeaveVT() anyway for consistency
> with other drivers, or add an error message in case we ever get there
> anyway, or something along those lines, but it feels a little moot.
>
> Henri

Hi,
  as I said, not really an expert, your comment makes sense so I would
keep the original version.

Frediano
