Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2601E3F8C57
	for <lists+spice-devel@lfdr.de>; Thu, 26 Aug 2021 18:40:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF5E16E02E;
	Thu, 26 Aug 2021 16:40:05 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 328 seconds by postgrey-1.36 at gabe;
 Thu, 26 Aug 2021 16:40:04 UTC
Received: from forward103j.mail.yandex.net (forward103j.mail.yandex.net
 [IPv6:2a02:6b8:0:801:2::106])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5EF16E02E
 for <spice-devel@lists.freedesktop.org>; Thu, 26 Aug 2021 16:40:04 +0000 (UTC)
Received: from sas1-beeafb51431c.qloud-c.yandex.net
 (sas1-beeafb51431c.qloud-c.yandex.net
 [IPv6:2a02:6b8:c08:1f02:0:640:beea:fb51])
 by forward103j.mail.yandex.net (Yandex) with ESMTP id 503C91008F4
 for <spice-devel@lists.freedesktop.org>; Thu, 26 Aug 2021 19:34:33 +0300 (MSK)
Received: from mail.yandex.ru (mail.yandex.ru [89.179.125.64])
 by sas1-beeafb51431c.qloud-c.yandex.net (mxback/Yandex) with HTTP id
 VYjsTq2H64Y1-YWHG1Kgp; Thu, 26 Aug 2021 19:34:32 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1629995672; bh=0Hc+NeMqPuvW1tKKOpc+KPp30USqV4DToNhD5B75RJY=;
 h=Message-Id:Date:Subject:To:From;
 b=mJNPmQQJNV33FfWXC6AcZ1qo6ka+JpOqtxr6OZWuFUoeC4czwGpWAa71DqhouC2wx
 P8KISrc6PtfdT4QZGyvfTBB/qb76UOIo8JiuQYKKWzRrZvsWDLjhoA6uQf04Gw5P4Y
 V1kE9TK7JJpf2w6W9CQ9ZoiZM0poyO/YDQg7BjDw=
Authentication-Results: sas1-beeafb51431c.qloud-c.yandex.net;
 dkim=pass header.i=@yandex.ru
Received: by sas2-a098efd00d24.qloud-c.yandex.net with HTTP;
 Thu, 26 Aug 2021 19:34:32 +0300
From: ole-krutov@yandex.ru
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Thu, 26 Aug 2021 19:34:32 +0300
Message-Id: <205841629995244@mail.yandex.ru>
Content-Transfer-Encoding: 7bit
Content-Type: text/html
Subject: [Spice-devel] How to run spice-vdagentd 0.21 properly?
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

<div>I've built spice-vdagent 0.21 and had just replaced executables of vdagent 0.20. But after reboot spice-vdagentd.* do not start. Has something changed in startup logic since 0.20? I've compared configs but had not find any differences...</div>
