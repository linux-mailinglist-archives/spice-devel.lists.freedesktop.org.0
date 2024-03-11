Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C718786C5
	for <lists+spice-devel@lfdr.de>; Mon, 11 Mar 2024 18:55:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5A6110E82A;
	Mon, 11 Mar 2024 17:55:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="j2MQcyb+";
	dkim-atps=neutral
X-Original-To: spice-devel@freedesktop.org
Delivered-To: spice-devel@freedesktop.org
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com
 [209.85.128.174])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0587A10E0D6
 for <spice-devel@freedesktop.org>; Mon, 11 Mar 2024 00:54:25 +0000 (UTC)
Received: by mail-yw1-f174.google.com with SMTP id
 00721157ae682-609fd5fbe50so33047947b3.0
 for <spice-devel@freedesktop.org>; Sun, 10 Mar 2024 17:54:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1710118464; x=1710723264; darn=freedesktop.org;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=QidjH8rP448DPHSTDlQz5tVgg9Wie+ZSXe7C+++LgpU=;
 b=j2MQcyb+O8aGkIsQmqhAAzGt5KbPaaMowVDJn0WrbIwos+ukM35ofHWsDVLs2qreiW
 djZ0kO92DRzqUW1xl7NTRbC46LMDVkbx27eE2Z0V03EMoo8jerv2cpMfSgUxLEg/3D4+
 +vYwPpjwVo3kLpTDFG+EpcAfVhtKka+Kkxt0ebMaIlohDTeP2uOGSw425Z66e5a83H6s
 uFri2tRnowQ2YQX8nGPjQjFzcics6Ove58wDEDbhrEWSNbaqsQw+rMmLRxqp1hkDF0Cj
 zTja3g/++G4HPln4ZtmSNYreLfOumFi0UBhYiRc8nWQAJoparGG4Z7JYCiONrFOLM/J+
 PX7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710118464; x=1710723264;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=QidjH8rP448DPHSTDlQz5tVgg9Wie+ZSXe7C+++LgpU=;
 b=CW4w1tM+mT1V+lgH6KKUGEoD4rhRKnA67766VBs/g7CbkXeVV2YcvbY+KSxvB8aEYs
 YoOuVsgRSToqnSAB+mPe1dGH3Yq55IFQPB/JDRIGkdcjOPgScV4jbus2xveACdg7y7zy
 My7Q9pgdC5CyAEQUc1DWKlgpCJFCr0Yb5PeYuDwc7252pnGL2fYwzFiq+RdWVQHGAdko
 M2Z83F5BwfW0Nye12rymKaLhYbPLKB4BceJE7fPDQxqqzbiEeCji+ftvLg2MK1Hmigvc
 2sNnySolJ4PJwQ6Vm1NvOiSfb/4PU67ffqn1jF1mMywey19ah9x+9ja/BvgrTGvuntGt
 5ZRQ==
X-Gm-Message-State: AOJu0Yyc47AFSaQyLjAXwr8SjKHy/5NyUzcxJnkaVijH66TC2KjbGvjV
 D3vnz4goI5T9PtOBa+xEkOgwskS1vgdm40LJUr8QJE4z985WeVNl/1lj4qc1oPXGquVOQMxOHVf
 B8yS53w4N/329CUwARG+vrMAGoAFswqSrBu/BWg==
X-Google-Smtp-Source: AGHT+IHpWgcF0Io5774GJitzY9mH3ev+/f3fkaSJs7kCzihQ4qE6tcqEUiZnodGASycxUN5jJN++3XJhZ17avUJYkCw=
X-Received: by 2002:a81:83c5:0:b0:60a:124e:e772 with SMTP id
 t188-20020a8183c5000000b0060a124ee772mr4445065ywf.22.1710118464395; Sun, 10
 Mar 2024 17:54:24 -0700 (PDT)
MIME-Version: 1.0
From: Santiago Paiva <paiva.santiago@gmail.com>
Date: Sun, 10 Mar 2024 20:54:12 -0400
Message-ID: <CABqkP4gxR3CV-0400rBbzGonT1HFQb7kNK0712k=sdByQLczFg@mail.gmail.com>
Subject: Inquiry about @spice Github Username
To: spice-devel@freedesktop.org
Content-Type: multipart/alternative; boundary="000000000000982b3e061357fbe1"
X-Mailman-Approved-At: Mon, 11 Mar 2024 17:54:59 +0000
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

--000000000000982b3e061357fbe1
Content-Type: text/plain; charset="UTF-8"

Hello from Canada,

I was wondering if there is any chance we could use the username @spice on
Github for some FOSS?

Thanks for your time and consideration. All the best

Santiago.

--000000000000982b3e061357fbe1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello from Canada,=C2=A0=C2=A0<div><br></div><div>I was wo=
ndering if there is any chance we could use the username=C2=A0@spice on Git=
hub for some FOSS?=C2=A0</div><div><br></div><div>Thanks for your time and =
consideration. All the best<br clear=3D"all"><div><div dir=3D"ltr" class=3D=
"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div>=
<div dir=3D"ltr"><div><br></div><div>Santiago.<br><br></div></div></div></d=
iv></div></div></div></div>

--000000000000982b3e061357fbe1--
