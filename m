Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8DEC9D5067
	for <lists+spice-devel@lfdr.de>; Thu, 21 Nov 2024 17:04:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D09C10E9C8;
	Thu, 21 Nov 2024 16:04:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="DhzCbPDD";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com
 [209.85.215.177])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CE3F10E876
 for <spice-devel@lists.freedesktop.org>; Thu, 21 Nov 2024 07:06:12 +0000 (UTC)
Received: by mail-pg1-f177.google.com with SMTP id
 41be03b00d2f7-7f8c7ca7f3cso527368a12.2
 for <spice-devel@lists.freedesktop.org>; Wed, 20 Nov 2024 23:06:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1732172772; x=1732777572; darn=lists.freedesktop.org;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=9CO+MUEl8O05m+YDUmwd+RqNm46hyHIn+5lu6MiUPdY=;
 b=DhzCbPDDSUgnLQLjKCf1yCE4+Dl7MvCofYn1umD/HcthpyVkXmGuO7nUK5l/DABnAd
 4w2HDVVHxXFacGllacLwOt/TyxoHA/QZtqRPjX5DP2xeCC0AIouY65OUrxJ7JgBMqtYe
 zpCJd50ke8d03yzlaNdMKMwvEQX1c/aMuSvsQhrytmq3jgDuZDGBlwIuNn1/VOQWtIZ2
 8sOSIqUeM3A/1ti47436aYYe1nqBFqSSxsMIJcq1tMpQWermsVGX2YsdVJYyTo6nXBWc
 uhZC1+v8V4/MGblekjY4Q2z1ozjHVALwGmPFltFoCL+6ltJ30qbgLq/8ZzTkkeS6r7JS
 iyqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1732172772; x=1732777572;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=9CO+MUEl8O05m+YDUmwd+RqNm46hyHIn+5lu6MiUPdY=;
 b=N4RuWw0WohdPdKOEUkGKX4iY7ACQYaSF4wwffu8sJmB2lZHBUD/uGX3em+P0I4TON7
 iw8X+lvfAolAMaE7m3lbVs+K+VcbDl4uG/9v0V9yuEgAa95RJsbJ+NgEXzgUPuotdkY9
 /d6feR7Ho1rGzymHrlo0z0YRs51J0GD7fpcSZyZedBI3c/D8oZHC31zX1yvILh+JMQZ4
 iJ/sfquX4rVNS/GNAjX5MpUUNZkqe7GURmJmTHpMwYHLCg7SSL2Hxlpfr6amFrCl+Rw4
 DoUjOKSONByxjN4TRJDG5LE2jFVcw4dcKI6x7rmHCr5/gsVNm/EyCYO7lCBay98HwolQ
 kx7A==
X-Gm-Message-State: AOJu0YwofKjhV5vNYZUWyMNYb18/paLH5dBk4Cy9Xf4JEkxXRwrvNXaZ
 /FxjSw3H+lmpshzcE/3DjCdmAdOniIxkzF1uyCMbdOrbPSReNGSKDN/BuyY3oD/GLTm75XgREUn
 z+Z8JPFkK0ZRB54C/7fm8jw2JGsURUxYEa9BZsA==
X-Google-Smtp-Source: AGHT+IGlGC59dymr9Fu0ix3KoqG/xXPFIjxHgOlcKkSJ3pGd5QxIDSwdaK/8w34yl6OoY1QMGm7KWPn7iSsY6iQp3BA=
X-Received: by 2002:a05:6a21:3a83:b0:1d9:69ca:6b24 with SMTP id
 adf61e73a8af0-1ddaebd9a85mr8360752637.23.1732172771699; Wed, 20 Nov 2024
 23:06:11 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?B?0JDQu9C10LrRgdC10Lkg0KHQsNGE0L7QvdC+0LI=?= <segs509@gmail.com>
Date: Thu, 21 Nov 2024 10:06:00 +0300
Message-ID: <CAAxL8Xn2fT8K-or0ANR5aTMsw_UjJu74tbeNVAyGf1KJbqGpHQ@mail.gmail.com>
Subject: SPICE UDP
To: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="000000000000bf3721062766e6e0"
X-Mailman-Approved-At: Thu, 21 Nov 2024 16:04:17 +0000
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

--000000000000bf3721062766e6e0
Content-Type: text/plain; charset="UTF-8"

Good day.
We use the SPICE protocol in our VDI implementation.
The documentation does not explicitly say whether SPICE supports UDP
transport.

Now I'm arguing with chatgpt on this topic, I ask you to clarify how the
developers implemented UDP support?

Thank you for the answer.

Greetings.

--000000000000bf3721062766e6e0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Good day.<div>We use the SPICE protocol in our VDI impleme=
ntation.=C2=A0</div><div>The documentation does not explicitly say whether =
SPICE supports UDP transport.=C2=A0</div><div><br></div><div>Now I&#39;m ar=
guing with chatgpt on this topic, I ask you to clarify how the developers i=
mplemented UDP support?<br></div><div><br></div><div>Thank you for the answ=
er.</div><div><br></div><div>Greetings.</div></div>

--000000000000bf3721062766e6e0--
