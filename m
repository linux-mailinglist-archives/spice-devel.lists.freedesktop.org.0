Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA85828B6D
	for <lists+spice-devel@lfdr.de>; Tue,  9 Jan 2024 18:46:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A552610E469;
	Tue,  9 Jan 2024 17:46:42 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.ispras.ru (mail.ispras.ru [83.149.199.84])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8C9810E3E3
 for <spice-devel@lists.freedesktop.org>; Tue,  9 Jan 2024 11:19:04 +0000 (UTC)
Received: from localhost.ispras.ru (unknown [10.10.165.2])
 by mail.ispras.ru (Postfix) with ESMTPSA id EE39540737C4;
 Tue,  9 Jan 2024 11:09:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.ispras.ru EE39540737C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ispras.ru;
 s=default; t=1704798544;
 bh=dZSYFuprTqfspA6v9+rP8mVuX6czoir5pAkVaXwFN5M=;
 h=From:To:Cc:Subject:Date:From;
 b=OU6LGNvOv/bPvRC0J1P8GLE/fLpU47BIoftyNVi4GmcnI9K1URhtFoff4lVqj0Hhh
 SKbo0piEcmU7EXCN22qQSqrj8cJQdaUcN/UgXpq5UUfTQw2ZAibhGibFNDnlBLBSiy
 zji+42Z33Eeo8UppEXj+OETCbcZCJBX2CqUId60k=
From: Fedor Pchelkin <pchelkin@ispras.ru>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	stable@vger.kernel.org
Subject: [PATCH 5.10 0/1] drm/qxl: fix UAF on handle creation
Date: Tue,  9 Jan 2024 14:08:24 +0300
Message-ID: <20240109110827.9458-1-pchelkin@ispras.ru>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 09 Jan 2024 17:46:42 +0000
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
Cc: lvc-project@linuxtesting.org, linux-kernel@vger.kernel.org,
 Fedor Pchelkin <pchelkin@ispras.ru>, dri-devel@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org, Gerd Hoffmann <kraxel@redhat.com>,
 Daniel Vetter <daniel@ffwll.ch>, spice-devel@lists.freedesktop.org,
 Dave Airlie <airlied@redhat.com>, Wander Lairson Costa <wander@redhat.com>,
 Alexey Khoroshilov <khoroshilov@ispras.ru>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

The bug `KASAN: slab-use-after-free in qxl_mode_dumb_create` is reproduced
on 5.10 stable branch.

The problem has been fixed by the following patch which can be cleanly
applied to 5.10. The fix is already included in all stable branches
starting from 5.15.

Link to the "failed to apply to 5.10" report [1].

[1]: https://lore.kernel.org/stable/2023082121-mumps-residency-9108@gregkh/
