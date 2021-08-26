Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 745923F8C61
	for <lists+spice-devel@lfdr.de>; Thu, 26 Aug 2021 18:43:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 074656E030;
	Thu, 26 Aug 2021 16:43:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from forward501j.mail.yandex.net (forward501j.mail.yandex.net
 [IPv6:2a02:6b8:0:801:2::111])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 232076E030
 for <spice-devel@lists.freedesktop.org>; Thu, 26 Aug 2021 16:43:36 +0000 (UTC)
Received: from iva3-237e1ce43853.qloud-c.yandex.net
 (iva3-237e1ce43853.qloud-c.yandex.net
 [IPv6:2a02:6b8:c0c:4996:0:640:237e:1ce4])
 by forward501j.mail.yandex.net (Yandex) with ESMTP id EFA9B3380203
 for <spice-devel@lists.freedesktop.org>; Thu, 26 Aug 2021 19:43:33 +0300 (MSK)
Received: from mail.yandex.ru (mail.yandex.ru [89.179.125.64])
 by iva3-237e1ce43853.qloud-c.yandex.net (mxback/Yandex) with HTTP id
 Vhjnnr2H4a61-hXHSnF0w; Thu, 26 Aug 2021 19:43:33 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1629996213; bh=kb9IrzPFfNNwCXWQeZCIzm/xOfFTtJQCsXtoDuFY55I=;
 h=References:Date:Message-Id:Subject:In-Reply-To:To:From;
 b=UKz2x3SCEbw3/IERwzEtMLdW39WyHfiamqq6Evj3biFXQuUhXmoj+J1qENR7hbht6
 g36zUlawJ9Zuo1pjDhap3nZMW3KrKO+WERZE+Z7E/BEEA+XvNgvvPo0BDBPslvZIi7
 n5kxysxNNBDeg171KV++k28t1bGcsZZlsFsCmdzs=
Authentication-Results: iva3-237e1ce43853.qloud-c.yandex.net;
 dkim=pass header.i=@yandex.ru
Received: by iva2-15a880c55b23.qloud-c.yandex.net with HTTP;
 Thu, 26 Aug 2021 19:43:33 +0300
From: ole-krutov@yandex.ru
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
In-Reply-To: <205841629995244@mail.yandex.ru>
References: <205841629995244@mail.yandex.ru>
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Thu, 26 Aug 2021 19:43:33 +0300
Message-Id: <221341629996101@mail.yandex.ru>
Content-Transfer-Encoding: 8bit
Content-Type: text/html; charset=utf-8
Subject: Re: [Spice-devel] How to run spice-vdagentd 0.21 properly?
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

<div>I'm sorry for sending a letter without details. Centos 8. spice-vdagent 0.20 is already installed and I just replaced its binaries with binaries of 0.21 and then rebooted a VM.</div><div> </div><div>26.08.2021, 19:40, "ole-krutov@yandex.ru" &lt;ole-krutov@yandex.ru&gt;:</div><blockquote><div>I've built spice-vdagent 0.21 and had just replaced executables of vdagent 0.20. But after reboot spice-vdagentd.* do not start. Has something changed in startup logic since 0.20? I've compared configs but had not find any differences...</div></blockquote>
