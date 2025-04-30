Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD648AA4582
	for <lists+spice-devel@lfdr.de>; Wed, 30 Apr 2025 10:34:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B562C10E2E0;
	Wed, 30 Apr 2025 08:34:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Ta4M6A4t";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com
 [209.85.128.174])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3E3210E2E0
 for <spice-devel@lists.freedesktop.org>; Wed, 30 Apr 2025 08:33:56 +0000 (UTC)
Received: by mail-yw1-f174.google.com with SMTP id
 00721157ae682-6feab7c5f96so61988787b3.3
 for <spice-devel@lists.freedesktop.org>; Wed, 30 Apr 2025 01:33:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1746002035; x=1746606835; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=Q/NioQxEUq6DhHj1ODTu4rMo6fHylSu04wovhIeTUs8=;
 b=Ta4M6A4tL/rTaSTcUlHDjR789S6uv0TFdpL76fQbhMWP0o1WFx7507wlIAkSdQirNP
 c/1GSXRVDeL9NwqI94O5v+/eLR16ruWAoEBD1IbyUyPcwgiEHN47d99Zp6c6ECPkn5vM
 g5N0jnZkjKSu3M4a1HGKQ5slyC/BvPrAg3I48ffW+maAS0n0GuEPzdGw1JYJpYJYW6Uq
 +kTT6G/ysRSdg5Hb6DDTXffJ9xjh6pN0IY5tGsx0DtSK1hp3zPA85ckCZJo5KLAA87xm
 3e742FFxOzQhCO0HENQ6e8p+gQPVdKL6STD+hRQ4crlnLyzjzp6P8XnM1d0NXkk0mVC+
 h+ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1746002035; x=1746606835;
 h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Q/NioQxEUq6DhHj1ODTu4rMo6fHylSu04wovhIeTUs8=;
 b=urPDExvalc9beW+o/Cn02Ol7jRix0684jKbODQBQsgw9LMeNuAXhvO6uBaW/KUdy6Q
 /BJpAx/nx9NTC+zIKe0U3YMzhzx842t3VChSqEtyzNcQ3zO8We050TlNw5+G4EVpWz6l
 VPtannrBWQaQ28l0/Oi4pPz6e6TWtIwM2bg1mjWVJj9ULJNzJnIEA34WIu8BQJNaVMI/
 /lvweyspwoEwtbzdKBZ0LaaZXrp7VnV4qUoA3fae9ZYfmpI8vRXqFE4dQZYhjA3gN9kg
 roaqjFmmuYm5voB8L+KxqVgCqKMDCaCgUrpqGkHZNdNbNr67Zh6qKoazjntXS1c1Mmon
 /mVQ==
X-Gm-Message-State: AOJu0Ywlu9AQap004G2d74y0Ie9F+DDT0vSYbsjjfIcjgUh0T1SI/8dj
 bsGW5rC33mI4KEWw39QlFGIz6d4AtdHpJAmS6CQlBljrgXoqMlKNLvudT+aGRPvgmKIBzXIzkuv
 WaX/M8djTwkH/McvCD0AZxt35fRI1NQqn
X-Gm-Gg: ASbGnctqxcolhxgh1H3YqyDaBJ+oGpsSqAN+fLpdNoC3ZXhM33o2SZRtmSH8nWi8JVF
 ApLM1Q0oQt/TGrN3708AVHx3kAfwyG7t4dCXOtND2+EgHsbhGVhySTvgclcBz2RsxWSvCOHZ59q
 iFBZHUJ8/tltmEBQeHLtHpq2mNzRGPqA==
X-Google-Smtp-Source: AGHT+IGvV6tXw/vqj1blQkSj1/q57AhXf6u1tcNMEopC5TL5R9vyFPyNRLSsQxryooEEX1NVaAeGp+qQtLsRsGiT3Ok=
X-Received: by 2002:a05:690c:4481:b0:6f9:97f7:a5c3 with SMTP id
 00721157ae682-708ad61d333mr24483487b3.18.1746002035492; Wed, 30 Apr 2025
 01:33:55 -0700 (PDT)
MIME-Version: 1.0
From: Frediano Ziglio <freddy77@gmail.com>
Date: Wed, 30 Apr 2025 09:33:44 +0100
X-Gm-Features: ATxdqUFqfmY8bYus4WTfo9aLTduUJ2FKQAxlLq7vzcvamoKrii4f7C6MLBj2b5M
Message-ID: <CAHt6W4fBLhMT6vjquN7POXwauiAKZgKtBxysOn+5S2pekS094w@mail.gmail.com>
Subject: Unexpected spice-protocol release
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>, 
 =?UTF-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?= <marcandre.lureau@redhat.com>
Cc: Uri Lublin <uril@redhat.com>, Victor Toso <victortoso@redhat.com>
Content-Type: multipart/alternative; boundary="0000000000001a4e440633fac7ab"
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

--0000000000001a4e440633fac7ab
Content-Type: text/plain; charset="UTF-8"

Hi,
   I saw a new 0.14.5 release was posted on Gitlab without much review, a
merge request was opened and merged in 5 minutes. I understand it was not
that complicated but usually you want to give some time for the reviewers.
Can you finish the steps mentioned at
https://gitlab.freedesktop.org/spice/spice-protocol/-/blob/master/docs/how_to_release.md?ref_type=heads
?
Can you add some notes to
https://gitlab.freedesktop.org/spice/spice-protocol/-/releases?

Regards,
   Frediano

--0000000000001a4e440633fac7ab
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div>=C2=A0=C2=A0 I saw a new 0.14.5 release=
 was posted on Gitlab without much review, a merge request was opened and m=
erged in 5 minutes. I understand it was not that complicated but usually yo=
u want to give some time for the reviewers.</div><div>Can you finish the st=
eps mentioned at <a href=3D"https://gitlab.freedesktop.org/spice/spice-prot=
ocol/-/blob/master/docs/how_to_release.md?ref_type=3Dheads">https://gitlab.=
freedesktop.org/spice/spice-protocol/-/blob/master/docs/how_to_release.md?r=
ef_type=3Dheads</a>?</div><div>Can you add some notes to <a href=3D"https:/=
/gitlab.freedesktop.org/spice/spice-protocol/-/releases">https://gitlab.fre=
edesktop.org/spice/spice-protocol/-/releases</a>?</div><div><br></div><div>=
Regards,</div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmai=
l=3D"gmail_signature"><div dir=3D"ltr">=C2=A0=C2=A0 Frediano</div></div></d=
iv></div>

--0000000000001a4e440633fac7ab--
