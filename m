Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B0C1352CE9E
	for <lists+spice-devel@lfdr.de>; Thu, 19 May 2022 10:47:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A26E11B027;
	Thu, 19 May 2022 08:47:48 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com
 [IPv6:2a00:1450:4864:20::22b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DA0611A01D
 for <spice-devel@lists.freedesktop.org>; Thu, 19 May 2022 01:48:50 +0000 (UTC)
Received: by mail-lj1-x22b.google.com with SMTP id u7so3833518ljd.11
 for <spice-devel@lists.freedesktop.org>; Wed, 18 May 2022 18:48:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to;
 bh=0z5mT4bONmeyD2gntr3waNwdw51E7Vawew58oEswLQw=;
 b=MFwe97ymwd/tVwAdEsCA5Vk7wccf9AEbRQXT+GSM8OWZAs0tfELjbl5GcP1ANLblV3
 BHRfmu5K9N3UzBRb5B56leJZzwBgi3xKeae+M7fC+5NJ99KRGM3Sg4+R3byCfZpddaiN
 LKp1QJoA4WhGIOuo7aPkT96EQ2YuHHO7PhjgXrDFcigs0++T4jqp5/V6WkxfcaE6jCVL
 Qt+JG87W1MosXKVAGh2Q2qfeCAd/wMLHqLkzgDwFPdg4qyqIpO8oG7y4ohus2C0PUi6j
 7wU7i6WGnMst3o71KcaMnkH09oaUgedrLSjIhQPXZXqk8cIN4LgpRCylW7wZ2hbydUD7
 emtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=0z5mT4bONmeyD2gntr3waNwdw51E7Vawew58oEswLQw=;
 b=GDhYd/UDK69j0VIf0RSXcZe7QX+BfL9jyVEpDBU3ZUpzVgPD5LXa31/AebODwv/9tP
 yZ5Dq2ajDaAzmz3x3BQfa1owaa4SFwFtm5IJQ80Gloj5VfVxSjE+St+164SLcrC5ZQk2
 qwWI2gaJlX15XNCfdzLnZkESyuy2g7p/587cuD4AqOYdHjs10li3m8Io8s5hX9Gmdim4
 X89+WV/9EOos4m9qbksCjxEAsynuUuA6Mup3NABy4ApN9Nr1UJJlVZxGMK8tjoZubV7o
 GBFqeHNWKq93PHwUIKwme57vAfDUwv9lSdZpzO/11K9TLIByM8K7x1WQL1kbsJHphb5s
 7Y1g==
X-Gm-Message-State: AOAM533v9A0x2cyozqWD4fY4zdhOR3ut8Ud9CV2j1CS+NMOMWr+e2STF
 a84O2IrSpnr0pcz014QX5SvGmeZ8Ms8FAdDm4oZqEluZ7kK+WA==
X-Google-Smtp-Source: ABdhPJz3L4ipGzD1qiKuh4lXQVa43UvfqnrRSh9KShpDPKYG1esmmjpQJjQzxNA+iY6A7BUSuGaVwlYtKoreEnZO9XY=
X-Received: by 2002:a2e:9d18:0:b0:253:cb75:18a8 with SMTP id
 t24-20020a2e9d18000000b00253cb7518a8mr1261854lji.383.1652924928062; Wed, 18
 May 2022 18:48:48 -0700 (PDT)
MIME-Version: 1.0
From: Walter Mitty <waltermitty121906@gmail.com>
Date: Thu, 19 May 2022 09:48:36 +0800
Message-ID: <CAOgZG1zM1yuKEpBAnCDjhaBG3t86PkwdVUGKY7yVenZ-DtV1ag@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="0000000000002d787605df5393fc"
X-Mailman-Approved-At: Thu, 19 May 2022 08:47:47 +0000
Subject: [Spice-devel] touch screen usb redirection problem
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

--0000000000002d787605df5393fc
Content-Type: text/plain; charset="UTF-8"

Hello guys,
I'm using USB redirection to redirect my usb touch screen to VM win10. The
problem is the touch point offsets. And The offset has no routine. I'm
trying to fix it. Could anyone give me some advice?

--0000000000002d787605df5393fc
Content-Type: text/html; charset="UTF-8"

<div dir="ltr">Hello guys,<div>I&#39;m using USB redirection to redirect my usb touch screen to VM win10. The problem is the touch point offsets. And The offset has no routine. I&#39;m trying to fix it. Could anyone give me some advice?</div></div>

--0000000000002d787605df5393fc--
