Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E0E9443311D
	for <lists+spice-devel@lfdr.de>; Tue, 19 Oct 2021 10:32:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24E876EB51;
	Tue, 19 Oct 2021 08:32:55 +0000 (UTC)
X-Original-To: spice-devel@freedesktop.org
Delivered-To: spice-devel@freedesktop.org
Received: from mail-qv1-xf2f.google.com (mail-qv1-xf2f.google.com
 [IPv6:2607:f8b0:4864:20::f2f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1E366E0E6
 for <spice-devel@freedesktop.org>; Mon, 18 Oct 2021 21:26:10 +0000 (UTC)
Received: by mail-qv1-xf2f.google.com with SMTP id v2so11037891qve.11
 for <spice-devel@freedesktop.org>; Mon, 18 Oct 2021 14:26:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=techy-cc.20210112.gappssmtp.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to;
 bh=gv3OqSruV1PRKTJruNy9MtxSCjtJEpar2lg4M0D1Eos=;
 b=YKp9Z2IrYgrBG/Dmp9lL8i+KyFCQGRp4wrYPWnxJ8AG6mZ7wMe5/Q3eNHHmH+VqAbz
 3zlCLRnEULXVLni+TLQhlmkG4w0rL24usm6uV117jh8dibX+AVsSx3O3lIdArXU2reNE
 Maceg4ZeQ4HnZP8/KzkXsz+5JCHDZlK199W03NHQfvGicWM0wMNHmTCyR0HdL/1pKo5n
 5THQj4w9f00khhr8Diio6xR9VgrrvVReqeqdP2BXcAxnQRjPmDOZgl9xGebwPfvVoU4t
 SZD7WAlFIOXjA/JhobLXDqqSdKAwcjrng8MViLhJH3IVM9D8pcUjnjpWmkbhX4BZm6bI
 M+/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=gv3OqSruV1PRKTJruNy9MtxSCjtJEpar2lg4M0D1Eos=;
 b=PaElY0wqVnwBz2U7EfRqE1eF6+5rHS979Y6evLKx3oTnzdG2hFsLUFpR48tyQR4KFk
 wKTyLvvUT+C+SySYoVkBHpXgTglOwqjxVIjKXY/hMw5fht6oZpT8EMfZ2j8qP6TOUZgs
 GIpEwkC2RdoRbEsB/RjEGnWRGk+ZqRbiSHSq16gWUB+E+sGQ7hGDhW0H5tbiPZNadEwJ
 XfOKQy+9MC9hBhKV4Y+Yh8VmZcEaEENYJYhIxM/4OxgTI7ZFwnaGjdQhZZy7oE7rixW1
 efyEeKiMXnVGQGkwZbwNGPxabtdFfs3yGXFwSb+Gc3DfoYyi0Ds1tom7XyRGTIq8+XnG
 AD/w==
X-Gm-Message-State: AOAM533AHLq+Nu9qCAFL3xCxUWaZo8WaDwR99SjwtjWzOdBx7S1YVVL7
 QX0AORgYUQnfQeNGtd2MvcRqmydDrDp6Py0KzjNLr1ULqAhVUGQO84b0WQ==
X-Google-Smtp-Source: ABdhPJy75YHyoTZ9Ha3erT/3fUGl3iHDWtSTwJ8n2pphEcYbhBLaThSwCijKs7XZb1f712IATLMMf4XNAr4b4kvotFM=
X-Received: by 2002:ad4:456c:: with SMTP id o12mr27680668qvu.9.1634592369800; 
 Mon, 18 Oct 2021 14:26:09 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?V29sZiDigI4=?= <wolf@techy.cc>
Date: Mon, 18 Oct 2021 17:25:58 -0400
Message-ID: <CAHggAUJYcGVuoBqsGnB6ci_d2373E2-LdVMtOFzfDNYQnJoj9g@mail.gmail.com>
To: spice-devel@freedesktop.org
Content-Type: multipart/alternative; boundary="0000000000008e098305cea73120"
X-Mailman-Approved-At: Tue, 19 Oct 2021 08:32:54 +0000
Subject: [Spice-devel] Github "spice"
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

--0000000000008e098305cea73120
Content-Type: text/plain; charset="UTF-8"

Hello!

  I'm Twilak. I'm interested in purchasing the github account "/spice," if
you'd be interested in selling, for $70 or so. I found your email from the
old commit history of one of your public repos, and the account doesn't
seem to be super active, so I thought I'd ask.

Please let me know,
Best Twilak.

--0000000000008e098305cea73120
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello!=C2=A0<div><br><div>=C2=A0 I&#39;m Twilak. I&#39;m i=
nterested in purchasing the github account &quot;/spice,&quot; if you&#39;d=
 be interested in selling, for $70 or so. I found your email from the old c=
ommit history of one of your public repos, and the account doesn&#39;t seem=
 to be super active, so I thought I&#39;d ask.=C2=A0</div><div><br></div><d=
iv>Please let me know,</div><div>Best Twilak.</div></div></div>

--0000000000008e098305cea73120--
