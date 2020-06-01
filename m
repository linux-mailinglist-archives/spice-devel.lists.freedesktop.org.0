Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F8C11EA5AF
	for <lists+spice-devel@lfdr.de>; Mon,  1 Jun 2020 16:20:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36ED56E0C9;
	Mon,  1 Jun 2020 14:20:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from forward102o.mail.yandex.net (forward102o.mail.yandex.net
 [IPv6:2a02:6b8:0:1a2d::602])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 028256E0C9
 for <spice-devel@lists.freedesktop.org>; Mon,  1 Jun 2020 14:20:51 +0000 (UTC)
Received: from forward101q.mail.yandex.net (forward101q.mail.yandex.net
 [IPv6:2a02:6b8:c0e:4b:0:640:4012:bb98])
 by forward102o.mail.yandex.net (Yandex) with ESMTP id AE2856681064
 for <spice-devel@lists.freedesktop.org>; Mon,  1 Jun 2020 17:20:42 +0300 (MSK)
Received: from mxback11q.mail.yandex.net (mxback11q.mail.yandex.net
 [IPv6:2a02:6b8:c0e:1b4:0:640:1f0c:10f2])
 by forward101q.mail.yandex.net (Yandex) with ESMTP id A94C4CF4000C
 for <spice-devel@lists.freedesktop.org>; Mon,  1 Jun 2020 17:20:42 +0300 (MSK)
Received: from localhost (localhost [::1])
 by mxback11q.mail.yandex.net (mxback/Yandex) with ESMTP id lz75m0OopH-KgDGkUCW;
 Mon, 01 Jun 2020 17:20:42 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1591021242; bh=xheWezfBA04zfZae7SBTZCgmEgqm1a2GM5vj06AzUN8=;
 h=Message-Id:Date:Subject:To:From;
 b=vE6Qb+q8O0hTSe/pD9Rrf9kx1nKZcwHe9g0bCiUI+scIn4mQ0AIIfLY0v3z+Jc0+O
 d/nVoImIEjdFAASsdYDX96mJyoyoZ43Wb1z4qWJhjKy7dSCYJ5fEWuEZVbk8feEw5g
 KTCjIuWk+VB6qwfcJF2NV865ksRGXiv8m4TUHQ08=
Authentication-Results: mxback11q.mail.yandex.net;
 dkim=pass header.i=@yandex.ru
Received: by vla3-a60e960147e7.qloud-c.yandex.net with HTTP;
 Mon, 01 Jun 2020 17:20:42 +0300
From: ole-krutov@yandex.ru
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Mon, 01 Jun 2020 17:20:42 +0300
Message-Id: <2062121591020278@mail.yandex.ru>
Subject: [Spice-devel] No mouse under Win 10 when Nvidia drivers are active
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
Content-Type: multipart/mixed; boundary="===============1099220903=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1099220903==
Content-Transfer-Encoding: 8bit
Content-Type: text/html; charset=utf-8

<div>Hi all,</div><div> </div><div>when just qxl adapter is attached to VM all works well. But when Nvidia GRID instance is attached and its drivers are running, mouse cursor is never shown on its display window. Sometimes it's just invisible but active and reacting to mouse movements, clicks and wheel scrolling, sometimes it's totally missing. This behaviour is a bit dependent of is Nvidia adapter alone or together with qxl. Just sometimes  mouse cursor is visible on qxl display but it's very unstable and totally unusable. Similar behaviour is under linux VM too. Is it normal "won't fix" state, or can I provide some additional info? Windows has latest vd-agent and spice-agent installed.</div>

--===============1099220903==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1099220903==--
