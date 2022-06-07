Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA99153FE3E
	for <lists+spice-devel@lfdr.de>; Tue,  7 Jun 2022 14:03:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DA1B10E1E3;
	Tue,  7 Jun 2022 12:03:14 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com
 [IPv6:2a00:1450:4864:20::231])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D6FA112D86
 for <spice-devel@lists.freedesktop.org>; Tue,  7 Jun 2022 10:39:52 +0000 (UTC)
Received: by mail-lj1-x231.google.com with SMTP id g25so18675712ljm.2
 for <spice-devel@lists.freedesktop.org>; Tue, 07 Jun 2022 03:39:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to;
 bh=3x2JvfYrPBzzjWNg2oPZ/+iyKsoBM1CvKVxa65GHFG4=;
 b=MuqV7qbf043nrQGMZlzXMyEu7l6+ShJtvVWdQhds9gpu4piVbPAI2uKG31J2KQCLvF
 B1dcrGbLP1U8vOz7ipmjHPw8NZ6QuQybjQV4mdTMY5MHjOKzJJD3Wz0SNINLQZJ49+dS
 1PjKAlu8eN2/NwICP5TgUW9KhixxSaQjbhgco4y3yDdTOzRKcbRLKLt4HxIDQjdSYMSd
 CN9Sx/UNJDjDKT8xb6APeJCcFXW4UxAD+lHpbOnSC9zX1StUvqhui/VgnCOaOGI6OwN3
 jQD850n1dV/S40/E0+pvVpQ1xHCX956OyD6AtyMiYLtOilS+Yf6esAK7r1mPh7dggTw7
 mTLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=3x2JvfYrPBzzjWNg2oPZ/+iyKsoBM1CvKVxa65GHFG4=;
 b=26H4MseeJ9UIQ06WJb/S9BIt8qcDqcVM5nqNBxgSrjCCgel/1EhidCml1JUMZHz62g
 kaM0iwqUjvBTQpjQsZtdBhkq1xTZBQkgjjsHlItVXvaG1c8ypjYAbw+tsfAEqewaWVms
 VYGkTS97QWh6ypmRAeDEDbwTJYVUS56vo4X3jOcov+/Q17XPUG6NqIcOKCuz7aQwAQhE
 jrliPmyd1i90daCbkXNwCw/4Xr9PoF32UIQ4CfpT9MoYPwrQrTV8JBYwYPTByTJC0q4m
 TfocWPTmeVjx1tJNeBBBKdT2HT8RtuAdDizr8VWqqEAuRsiSbsCXWDAnIpZI77/5ibXi
 8s7A==
X-Gm-Message-State: AOAM530YOSFMIM+uh2nBKO/wwccF4eWKpT5viQgNMqYpLUA0+xK3IfDQ
 qqwxNZe8tJP9b8LHC02vGf+PSL4xtnSXQwfDrBQQzRkDcG0fvUcb2YI=
X-Google-Smtp-Source: ABdhPJyY+7P8A0DUW6wTttBQkV6K9CASDZfO4k/ijSh/hwd8Hki+/XRBM/uz6codC4LyNcwYNIYCuEjvvrGLJnTnwoo=
X-Received: by 2002:a2e:81ca:0:b0:255:78c0:cb21 with SMTP id
 s10-20020a2e81ca000000b0025578c0cb21mr13219477ljg.240.1654598389969; Tue, 07
 Jun 2022 03:39:49 -0700 (PDT)
MIME-Version: 1.0
From: Walter Mitty <waltermitty121906@gmail.com>
Date: Tue, 7 Jun 2022 18:39:37 +0800
Message-ID: <CAOgZG1y8zz4hkw-FPO4rcccveG8NUx4D73_A3Y9j3sW30NYBjw@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="00000000000047b7b505e0d93598"
X-Mailman-Approved-At: Tue, 07 Jun 2022 12:03:12 +0000
Subject: [Spice-devel] MOUSE rate down to 1/4 compare with bare metal PC,
 how to explain?
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

--00000000000047b7b505e0d93598
Content-Type: text/plain; charset="UTF-8"

Hello guys,

I'm using SPICE + QEMU as a solution for remote desktop. My guest OS is
running on the server side, not locally. And there is a thin-client to
access the guest OS. What makes me confused is, the mouse report rate is
down to *32hz , *which is *125hz* on a bare metal PC.

I looked up the source code and I found that SPICE will call some API of
QEMU to replay the mouse events. But I haven't found the reason for this
issue. By the way, if I redirect the mouse device to the guest OS, the
mouse rate will be *125hz* , which is identical with a bare metal PC.

Could anyone please give some advice? Thanks in advance.

Regards,
Walter

--00000000000047b7b505e0d93598
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello guys,<div><br><div>I&#39;m using SPICE=C2=A0+ QEMU a=
s a solution for remote desktop. My guest OS is running on the server side,=
 not locally. And there is a thin-client to access the guest OS. What makes=
 me confused is, the mouse report rate is down to <b>32hz , </b>which is <b=
>125hz</b> on a bare metal PC.=C2=A0</div><div><br></div><div>I looked up t=
he source code and I found that SPICE will call some API of QEMU to replay =
the mouse events. But I haven&#39;t found the reason for this issue. By=C2=
=A0the way, if I redirect the mouse device to the guest OS, the mouse rate =
will be <b>125hz</b>=C2=A0, which is identical with a bare metal PC.</div><=
div><br></div><div>Could anyone please give some advice? Thanks in advance.=
</div><div><br></div><div>Regards,</div><div>Walter</div></div></div>

--00000000000047b7b505e0d93598--
