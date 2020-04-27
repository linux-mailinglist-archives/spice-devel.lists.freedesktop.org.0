Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 472D01BA0DD
	for <lists+spice-devel@lfdr.de>; Mon, 27 Apr 2020 12:14:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A88696E203;
	Mon, 27 Apr 2020 10:14:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 334 seconds by postgrey-1.36 at gabe;
 Mon, 27 Apr 2020 08:36:54 UTC
Received: from forward100j.mail.yandex.net (forward100j.mail.yandex.net
 [IPv6:2a02:6b8:0:801:2::100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 971646E0E8
 for <spice-devel@lists.freedesktop.org>; Mon, 27 Apr 2020 08:36:54 +0000 (UTC)
Received: from mxback23g.mail.yandex.net (mxback23g.mail.yandex.net
 [IPv6:2a02:6b8:0:1472:2741:0:8b7:323])
 by forward100j.mail.yandex.net (Yandex) with ESMTP id CDB4950E16C7
 for <spice-devel@lists.freedesktop.org>; Mon, 27 Apr 2020 11:31:17 +0300 (MSK)
Received: from localhost (localhost [::1])
 by mxback23g.mail.yandex.net (mxback/Yandex) with ESMTP id yGOXMY5rdd-VHGiaEoE;
 Mon, 27 Apr 2020 11:31:17 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1587976277; bh=F6//Q91qBwjPUb22v0nF9g5NX+IqQ4dsU60cZWtQ0KA=;
 h=Message-Id:Date:Subject:To:From;
 b=d5k0ut5l6C/Pwwn+FHC1IWeV5Pip2nIRhr8JemmhG5l0CFKPfIOlKsL5LhEq1zf7s
 eAGMcX2evRK6SLtqhUMrwVKnRnV4FktdnRsOpni8PpjiUzizc5ipODPSVOcHkaKOsy
 9FabPpswCfID4nXHtlhjMrxC9tSyinFpEGGY/HS8=
Authentication-Results: mxback23g.mail.yandex.net;
 dkim=pass header.i=@yandex.ru
Received: by sas1-68ac888a1313.qloud-c.yandex.net with HTTP;
 Mon, 27 Apr 2020 11:31:17 +0300
From: Oleg Krutov <ole-krutov@yandex.ru>
To: spice-devel@lists.freedesktop.org
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Mon, 27 Apr 2020 11:31:17 +0300
Message-Id: <5137131587976277@sas1-68ac888a1313.qloud-c.yandex.net>
X-Mailman-Approved-At: Mon, 27 Apr 2020 10:14:02 +0000
Subject: [Spice-devel] Spice-streaming-agent: is it possible to replace main
 display channel with agent's video stream?
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
Content-Type: multipart/mixed; boundary="===============1342284781=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1342284781==
Content-Transfer-Encoding: 8bit
Content-Type: text/html; charset=utf-8

We are trying to make plugin which uses nvidia FBC + NVENC instead of gst-plugin. When using FBC, I must set "display" to "on", else FBC is reporting as not supported. I can't do the trick with qxl+nvidia with display off as with gst-plugin. Thus, two spice windows appear, one with main display channel with choppy video, and second -- with h264 compressed captured video. There is no mouse controls in second window, and first window consumes much cpu and network bandwidth when video or dynamic graphics is displayed. So it would be great to stop output primary display and redirect agent's video stream into it. Is it somehow possible? Thank you.<br /><br />-- <br />Отправлено из мобильного приложения Яндекс.Почты

--===============1342284781==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1342284781==--
