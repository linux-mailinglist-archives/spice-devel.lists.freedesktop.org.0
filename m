Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF5E3E4918
	for <lists+spice-devel@lfdr.de>; Mon,  9 Aug 2021 17:46:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC32689762;
	Mon,  9 Aug 2021 15:46:25 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 427 seconds by postgrey-1.36 at gabe;
 Mon, 09 Aug 2021 15:46:24 UTC
Received: from forward106o.mail.yandex.net (forward106o.mail.yandex.net
 [37.140.190.187])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C203B89762
 for <spice-devel@lists.freedesktop.org>; Mon,  9 Aug 2021 15:46:24 +0000 (UTC)
Received: from forward101q.mail.yandex.net (forward101q.mail.yandex.net
 [IPv6:2a02:6b8:c0e:4b:0:640:4012:bb98])
 by forward106o.mail.yandex.net (Yandex) with ESMTP id 8AFBB506079B
 for <spice-devel@lists.freedesktop.org>; Mon,  9 Aug 2021 18:39:14 +0300 (MSK)
Received: from vla5-e551b16a0105.qloud-c.yandex.net
 (vla5-e551b16a0105.qloud-c.yandex.net
 [IPv6:2a02:6b8:c18:3508:0:640:e551:b16a])
 by forward101q.mail.yandex.net (Yandex) with ESMTP id 86C9BCF40007
 for <spice-devel@lists.freedesktop.org>; Mon,  9 Aug 2021 18:39:14 +0300 (MSK)
Received: from mail.yandex.ru (mail.yandex.ru [185.18.126.114])
 by vla5-e551b16a0105.qloud-c.yandex.net (mxback/Yandex) with HTTP id
 DdRb740I5Ko1-dDI0PX9B; Mon, 09 Aug 2021 18:39:14 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1628523554; bh=scnbxlljWgXBnTm14O5duNg0iUIm70fERLYAEOriFB8=;
 h=Message-Id:Date:Subject:To:From;
 b=T8jSPo0eNJMmt8p45EHCzywHP6glOXJgLY/iIJGOzpshn0fRcAH/sabJyxUbR6Jok
 rH55glEOE3WLCEPF5s0kfXKp78z0tJTNikv23MBBpwtUAmKUoo0wNGWCm6JX/szNJs
 gfS+V7INOXGrriwQ3O79n4EFzfxtHGV4pp8cNyKI=
Authentication-Results: vla5-e551b16a0105.qloud-c.yandex.net;
 dkim=pass header.i=@yandex.ru
Received: by vla1-6c4c42cc13df.qloud-c.yandex.net with HTTP;
 Mon, 09 Aug 2021 18:39:13 +0300
From: ole-krutov@yandex.ru
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Mon, 09 Aug 2021 18:39:13 +0300
Message-Id: <542851628521713@mail.yandex.ru>
Content-Transfer-Encoding: 7bit
Content-Type: text/html
Subject: [Spice-devel] What is spice-streaming-agent state?
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

<div>Is spice-streaming-agent completely abandoned for now? No future plans?</div>
