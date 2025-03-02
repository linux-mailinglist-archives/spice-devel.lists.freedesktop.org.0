Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB97A4B3D7
	for <lists+spice-devel@lfdr.de>; Sun,  2 Mar 2025 18:41:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68A3610E0D6;
	Sun,  2 Mar 2025 17:41:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="aTlzhubN";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com
 [209.85.128.169])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B36710E0D6
 for <spice-devel@lists.freedesktop.org>; Sun,  2 Mar 2025 17:41:04 +0000 (UTC)
Received: by mail-yw1-f169.google.com with SMTP id
 00721157ae682-6f9625c0fccso32764057b3.1
 for <spice-devel@lists.freedesktop.org>; Sun, 02 Mar 2025 09:41:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1740937263; x=1741542063; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=ZDMeFORiSW0Z5sB0WwVU2aFDsB/PrlWpbUXyixrmwkM=;
 b=aTlzhubNb6/MMFABpzV2JnBgZp/Rsxma4OmY9NxJaGin1hEWDgb2vndZLbgCnPgRdI
 o6mnUhFoAY0QE9w5cq9uGCYPYvEj76oM3fMi1etW3G9TOjIew+AEyK8yhqjiF+/KnN+Q
 ZMHV2/jONLtJ5XIcXrx1RN1BLoI+rvCDupKblvTUyydzHpfN68Qo2BaLVMVtwXzsp2yl
 7WooXazNoUJ3jeTOqW0BVW46iMUIdI7kGZx+A+iqHWu4jpA3UCi9bJ0p5RmlBRuPxjVe
 k8asWYgikPuHOGI9gzo/I4tn7mWA0LEg9GB4HdXC49wbsMTEthxATl+wnCvpCaPSHuqh
 2wog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1740937263; x=1741542063;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ZDMeFORiSW0Z5sB0WwVU2aFDsB/PrlWpbUXyixrmwkM=;
 b=t0aHZjB2tCvfKR978kVrOSnlCwCHTgt4pELvLmxKbF3grW9MygM9XjJYqZHoq5RL6F
 TjMXacLQZVSi54ZD04ZV+rxHYY7bfjwwly2LWh+qXFdbhd/f77IBjlSTEjF5L0npGCZk
 2oSeqU++/pHDG01T5vWHCTSAzXRDMJWz1mTjz3vnYjHal8tOdqPcjxDomZGo4SYYWtah
 NgAyNJylncjRYLHCFxpJ25bqqZKCGri5p6ZeBy6nWDu2dU00kQfXhUqDZ8LZ+ViGhSn4
 A/oUqIUlCvsDPoVo0kaiqjANjgQgTc3cQ0z7jsCliwbI0QuOWUgZzKZJRLCk5cH26pM8
 eG6Q==
X-Gm-Message-State: AOJu0YyuB8AzjH06tlApwOgNNt1R9o1ZmJYeyLsY9UbRXP/sYVyPSx0x
 hLEwwADA2/xMYVGApTY6uhpqVb2dNIng9jXQzFEQJF0v67d9LBL0o8LpAKJ9lUh3RrIn4tRIUaX
 54tZKvwKWdOt91Kpn2n1k5zkmGUWs66uI
X-Gm-Gg: ASbGncsUCXKBCLqxASA+9f/E3yq27RGhbMaNJn6WnnLtS473f5ZtLwRBGGYbjtMPLEY
 Q2XGd8eQp5OgH3Y6BVG0HbOxNzTs4tb2ZPLcQDuvcZBpil82anFzJ91W6fcuB4CXFhkN7rJUW74
 OLABb6b6o/pDUj1DbJkdpg7MU=
X-Google-Smtp-Source: AGHT+IGSDY22rQYleVUSAKQoZaQfv9QSIR3AmtW+wq7o5ccyos/nc9cjjUMubCDtIHBqgUSMQWLBMkaKqhDM9bAIKLA=
X-Received: by 2002:a05:690c:6208:b0:6fd:2321:567f with SMTP id
 00721157ae682-6fd4a03db22mr135894577b3.8.1740937263504; Sun, 02 Mar 2025
 09:41:03 -0800 (PST)
MIME-Version: 1.0
References: <cover.1740651328.git.michael.scherle@rz.uni-freiburg.de>
 <23dcc5422093345fab0b9c8122fc807d5243a41f.1740651328.git.michael.scherle@rz.uni-freiburg.de>
In-Reply-To: <23dcc5422093345fab0b9c8122fc807d5243a41f.1740651328.git.michael.scherle@rz.uni-freiburg.de>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Sun, 2 Mar 2025 17:40:52 +0000
X-Gm-Features: AQ5f1JrCqXM5ci-QHQI-gSj1eD-3YgQ_QNtXUMAJMKq7nNdRcRZ12Y0v__GdVcM
Message-ID: <CAHt6W4dzLkgJFhjWu9ZkeijTsePrAjd1spRW01-hg3092Ok-hQ@mail.gmail.com>
Subject: Re: [PATCH 08/10] Update spice-common submodule
To: Michael Scherle <michael.scherle@rz.uni-freiburg.de>
Cc: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="0000000000002aead6062f5f8bc9"
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

--0000000000002aead6062f5f8bc9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 28, 2025 at 9:59=E2=80=AFAM Michael Scherle <
michael.scherle@rz.uni-freiburg.de> wrote:

> This brings in the following changes:
>       common: Add a udev helper to identify GPU Vendor
>       build: Avoid Meson warning
>       Drop Python 2 from m4/spice-deps.m4
>       Stop using Python six package
>       codegen: Use context manager when opening files
>
> Signed-off-by: Michael Scherle <michael.scherle@rz.uni-freiburg.de>
> ---
>  subprojects/spice-common | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/subprojects/spice-common b/subprojects/spice-common
> index 58d375e5..8c0319e3 160000
> --- a/subprojects/spice-common
> +++ b/subprojects/spice-common
> @@ -1 +1 @@
> -Subproject commit 58d375e5eadc6fb9e587e99fd81adcb95d01e8d6
> +Subproject commit 8c0319e31df967e41c74f4121cbdb3b785fe114e
>

Acked-by: Frediano Ziglio <freddy77@gmail.com>

That's surely the easy one

Thanks,
  Frediano

--0000000000002aead6062f5f8bc9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote gmail_quote_container"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, Feb 28, 2025 at 9:59=E2=80=AFAM Micha=
el Scherle &lt;<a href=3D"mailto:michael.scherle@rz.uni-freiburg.de">michae=
l.scherle@rz.uni-freiburg.de</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">This brings in the following changes:<br>
=C2=A0 =C2=A0 =C2=A0 common: Add a udev helper to identify GPU Vendor<br>
=C2=A0 =C2=A0 =C2=A0 build: Avoid Meson warning<br>
=C2=A0 =C2=A0 =C2=A0 Drop Python 2 from m4/spice-deps.m4<br>
=C2=A0 =C2=A0 =C2=A0 Stop using Python six package<br>
=C2=A0 =C2=A0 =C2=A0 codegen: Use context manager when opening files<br>
<br>
Signed-off-by: Michael Scherle &lt;<a href=3D"mailto:michael.scherle@rz.uni=
-freiburg.de" target=3D"_blank">michael.scherle@rz.uni-freiburg.de</a>&gt;<=
br>
---<br>
=C2=A0subprojects/spice-common | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/subprojects/spice-common b/subprojects/spice-common<br>
index 58d375e5..8c0319e3 160000<br>
--- a/subprojects/spice-common<br>
+++ b/subprojects/spice-common<br>
@@ -1 +1 @@<br>
-Subproject commit 58d375e5eadc6fb9e587e99fd81adcb95d01e8d6<br>
+Subproject commit 8c0319e31df967e41c74f4121cbdb3b785fe114e<br></blockquote=
><div><br></div><div>Acked-by: Frediano Ziglio &lt;<a href=3D"mailto:freddy=
77@gmail.com">freddy77@gmail.com</a>&gt;</div><div><br></div><div>That&#39;=
s surely the easy one</div><div><br></div><div>Thanks,</div><div>=C2=A0 Fre=
diano</div><div>=C2=A0<br></div></div></div>

--0000000000002aead6062f5f8bc9--
