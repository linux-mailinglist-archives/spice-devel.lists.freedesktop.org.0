Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1814352B419
	for <lists+spice-devel@lfdr.de>; Wed, 18 May 2022 09:51:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A0FD113E84;
	Wed, 18 May 2022 07:51:49 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com
 [IPv6:2a00:1450:4864:20::12e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1419510E4C7
 for <spice-devel@lists.freedesktop.org>; Wed, 18 May 2022 02:00:14 +0000 (UTC)
Received: by mail-lf1-x12e.google.com with SMTP id f4so1103258lfu.12
 for <spice-devel@lists.freedesktop.org>; Tue, 17 May 2022 19:00:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to;
 bh=EibxeR7x47h+il0xHSkzL4/MUM9dnZHCdKgLd7QYeS8=;
 b=pTwepAi4tw/eATZyDndLOglwCkXu/JNzHBlqDXHw8OhljUqg83fuLoOIqbDf7brw6E
 M1vrDNiS8rNOXCfCFu0OkDvOqy5giPJMr+/OUzzYT6ju4grLM+fwHCop+GJYQtxZcPsH
 sXaawjQ8p++Po8jKIh6A8yIdz8nUkWHAy4iLBP/vnzmswwViNSWdtX15rgr9JAu+AKjr
 hngbZ1Ak96+eqZcCe2WlUy2GHHOtuTUxKn16vySgAvkJSLKKm3zv2GfeOZfZrCgzs7rP
 0msyUoGsUFfQeaVrGZCedHl04WT0zoc4JA3mHSSrMEhe2FWp/UldiGaWd5cXz/1NKEel
 3ptA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=EibxeR7x47h+il0xHSkzL4/MUM9dnZHCdKgLd7QYeS8=;
 b=WNnkYxFA9VYFuzNyMPmfjLSZa6H909EkVhYSCvBe0+j3oWpvKMst2FJVR96d29nTdL
 WL54HjdS9OQywpq641VYJObzFUs8gZ7sB/otHzDT0mfrEjfELR/+obR/AXzh+XB8QOLO
 hPRtTvBFByxdnbtjefuLRiqc0HesJRItlMtP72tLgpZdy9rKVRaydunXeArYZk2doTpb
 Og3CxDzBK7bjYC0p0c2YiT2OUjNqMBRBFtqLGSbkZ1mbuIYJz9cOSf/XY8Ooe+xrJqvs
 2PaZFcWBcroggudPhmvJBm35jOR/D8xF6VB0mX+TZ8Lsa/kEeiN9jUiu6OcC8PTApEpZ
 tXuA==
X-Gm-Message-State: AOAM533IgxMlEukUKdJxiFCTDV3zuPjhG1P6zgz6FeUxgYvDw8S40cLR
 tBCDdFu4LXtSXHGLoycf80e8CA/iksUcla7dGH6Xr9OchuwBQjd1
X-Google-Smtp-Source: ABdhPJytPJt/C7K/bY3e2LT7yqBkmGyUQPzUl89XHEp09V8KYjvdECbhJZxObUZDt/dVrsW+ffxqf7I5hIjrZegwajM=
X-Received: by 2002:a05:6512:3e17:b0:473:205d:a3d5 with SMTP id
 i23-20020a0565123e1700b00473205da3d5mr18784158lfv.80.1652839211589; Tue, 17
 May 2022 19:00:11 -0700 (PDT)
MIME-Version: 1.0
From: Walter Mitty <waltermitty121906@gmail.com>
Date: Wed, 18 May 2022 09:59:59 +0800
Message-ID: <CAOgZG1xrwEv8T0Lq=z1id4FOKKrNdmP0_fXbEcr92i41546HbQ@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="00000000000013e0cc05df3f9e51"
X-Mailman-Approved-At: Wed, 18 May 2022 07:51:48 +0000
Subject: [Spice-devel] [USB redirection] position offset for touch-screen
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

--00000000000013e0cc05df3f9e51
Content-Type: text/plain; charset="UTF-8"

GuestOS: Win10
Host OS: Ubuntu 20.04
Client OS: Ubuntu 20.04

I enabled usb redirection on a touch screen. The position VM actually
rendered has offset from the touching point on screen. I wanna fix it. But
I don't know where to start. Could anyone give me some advice please?

--00000000000013e0cc05df3f9e51
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>GuestOS: Win10</div><div>Host OS: Ubuntu 20.04</div><=
div>Client OS: Ubuntu 20.04</div><div><br></div>I enabled usb redirection o=
n a touch screen. The position VM actually rendered has offset from the tou=
ching point on screen. I wanna fix it. But I don&#39;t know where to start.=
 Could anyone give me some advice please?</div>

--00000000000013e0cc05df3f9e51--
