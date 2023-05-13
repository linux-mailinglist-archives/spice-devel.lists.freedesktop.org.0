Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F32EE7015D4
	for <lists+spice-devel@lfdr.de>; Sat, 13 May 2023 11:38:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC8F810E04E;
	Sat, 13 May 2023 09:37:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oo1-xc32.google.com (mail-oo1-xc32.google.com
 [IPv6:2607:f8b0:4864:20::c32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B485610E04E
 for <spice-devel@lists.freedesktop.org>; Sat, 13 May 2023 09:37:56 +0000 (UTC)
Received: by mail-oo1-xc32.google.com with SMTP id
 006d021491bc7-541fb831026so3559047eaf.3
 for <spice-devel@lists.freedesktop.org>; Sat, 13 May 2023 02:37:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1683970675; x=1686562675;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=CPM1zPnxTlITgz/Rbiq0yentk2UaI4kA4JZO8ImRVjM=;
 b=QUpIUpVf+2WQtBD8BQ3NPE914Zs7plrdj8rEwuXSOWfLPq+iuGsDDtTe+J2bXh2l5Z
 QzFxQHFbkkoNGbJMdQHRY/UjBCK7Eq7Aw6wIVkJwgxTV7kH78isgWXz3KGmmWcZThFYi
 BxivfXf8TndGhrvyY1UBLYCMqcacQL02bVe3pY3hr8TyX70gf2YyP8KZhcmAc/wyKp1b
 2oVWm9tpAeB1EEYDSSLO+UOS5AJK/wyES9rbinL7UfckKULvdYA5CvyQVa+I1BoukliI
 RKnRf1TPi+CRtn0dDg61gAebuvbiExzEFEfpYFpdKNXwzQj3xQBYq1G/eeibAlCAGnFM
 GnhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683970675; x=1686562675;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=CPM1zPnxTlITgz/Rbiq0yentk2UaI4kA4JZO8ImRVjM=;
 b=CVsE2E0DXjg8EID3mhI3Y8ZDewKbVOxWIYue196BU3gp1Mb465lfas634ivQ4I7sIY
 f6aHwGdUg0rTZMemsflm+qXEVoGphec/jDxsgH6Y9OFiKMSdsDYNGi8hBkgMsIr6xksj
 CohDr/vgPNf0EN4+bLrxdSfSwA1nqZnEBBYribYxeBveYtuE+VhZcpVxPubaZoZTqZU0
 7+zajuYobG7cBL0h9ejBk3S8FtCu9sq/fTKfuJJ4xhrVNYRXiD1Q5kUwAxG1ibUx8JNQ
 LXwv1dosYAQXniH1q8Ti5L+I4f6qqaI6EQd3fkgpHdosGiOvfGe7y0ABJdCRbkY1FNaV
 UnWA==
X-Gm-Message-State: AC+VfDxpkGjioY9KPgPSBqx0PttmmQBxCCdzsJgyV3BVChHDqXZF0IxJ
 ADZ6wC5YltsOQ+uMe7SseFJfdStruNVA4660zgzROVLMyT0=
X-Google-Smtp-Source: ACHHUZ463MOka6V7/pIHQ7ZDkyqzmuGUnIB0ZTZj7uUgEAaJbJkkot73xAVRmfZVYFexOgI+C3gYjt3fSwxLA+VfIbw=
X-Received: by 2002:aca:3cd6:0:b0:395:e29e:b7ec with SMTP id
 j205-20020aca3cd6000000b00395e29eb7ecmr519324oia.36.1683970674908; Sat, 13
 May 2023 02:37:54 -0700 (PDT)
MIME-Version: 1.0
From: Frediano Ziglio <freddy77@gmail.com>
Date: Sat, 13 May 2023 10:37:43 +0100
Message-ID: <CAHt6W4dR2mygdyAyL7TaSzev8TfQgqXn2pTdrEdEBmGAMKCg0g@mail.gmail.com>
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
Subject: [Spice-devel] ANNOUNCE spice-server 0.15.2 release
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

Hey everyone,

I just cut a new release in the 0.15.x stable series, so upgrading to it
is recommended.
If you find any bugs or regressions, please report them in our issue
tracker: https://gitlab.freedesktop.org/groups/spice/-/issues.
See also https://gitlab.freedesktop.org/spice/spice/-/releases/v0.15.2.

Major Changes in 0.15.2:
========================

Really minor fix release, mainly to fix a distribution issue

* Add missing file to distribution
* Fix sound recording fix in case of buffer wrapping


https://www.spice-space.org/download/releases/spice-0.15.2.tar.bz2

Kind Regards,
  Frediano
