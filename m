Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F5301CA291
	for <lists+spice-devel@lfdr.de>; Fri,  8 May 2020 07:22:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6A7E6E143;
	Fri,  8 May 2020 05:22:25 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from forward104j.mail.yandex.net (forward104j.mail.yandex.net
 [IPv6:2a02:6b8:0:801:2::107])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AEAB6E123
 for <spice-devel@lists.freedesktop.org>; Fri,  8 May 2020 01:22:21 +0000 (UTC)
Received: from forward102q.mail.yandex.net (forward102q.mail.yandex.net
 [IPv6:2a02:6b8:c0e:1ba:0:640:516:4e7d])
 by forward104j.mail.yandex.net (Yandex) with ESMTP id BCBCC4A149B
 for <spice-devel@lists.freedesktop.org>; Fri,  8 May 2020 04:22:18 +0300 (MSK)
Received: from mxback10q.mail.yandex.net (mxback10q.mail.yandex.net
 [IPv6:2a02:6b8:c0e:1b4:0:640:b6ef:cb3])
 by forward102q.mail.yandex.net (Yandex) with ESMTP id BA73D7F20002
 for <spice-devel@lists.freedesktop.org>; Fri,  8 May 2020 04:22:18 +0300 (MSK)
Received: from localhost (localhost [::1])
 by mxback10q.mail.yandex.net (mxback/Yandex) with ESMTP id Ks5ACib6Or-MHDGise9;
 Fri, 08 May 2020 04:22:18 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1588900938; bh=Rn6II7+hCV8is9XtBQKB04xmDZTFI6Qbrm1NLCe2FdI=;
 h=Message-Id:Date:Subject:To:From;
 b=TCMmZ3Kmf1Yusi24zQPyNgBp0EcHD+WNeqTuC2pohED03SSKE2gu+uSD4H3lgoI9v
 AGx7EXFIdzVwdCPuvyHcUeprtw1JOU9KdIa1QFDriep9lVkwyGUt4oH9/k6Gbd2eX/
 oTyLoG3tK6+k/gWIRMpwI5EYTa9LhCy6BTe7uYTM=
Authentication-Results: mxback10q.mail.yandex.net;
 dkim=pass header.i=@yandex.ru
Received: by vla5-344e18ef0bef.qloud-c.yandex.net with HTTP;
 Fri, 08 May 2020 04:22:17 +0300
From: ole-krutov@yandex.ru
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Fri, 08 May 2020 04:22:17 +0300
Message-Id: <1370141588898543@mail.yandex.ru>
X-Mailman-Approved-At: Fri, 08 May 2020 05:22:24 +0000
Subject: [Spice-devel] No mouse when spice-streaming-agent is working
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
Content-Type: multipart/mixed; boundary="===============1698617750=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1698617750==
Content-Transfer-Encoding: 8bit
Content-Type: text/html; charset=utf-8

<div>Hi there.</div><div>KVM guest has two video adapters: qxl and Nvidia vGPU with display="off". Initially one window with startup messages is opened. When Xorg is run, spice-streaming agent starts and second window with hardware encoded h264 video appears. Keyboard works ok in this window but mice doesn't. When mouse is moving over this window, many messages  "ubuntu spice-vdagentd: mouse event for unknown monitor (1 &gt;= 1)" appear in syslog. When x11vnc is run in this X session, all is working in VNC viewer window. Could anybody help localize a problem? Thank you.</div>

--===============1698617750==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1698617750==--
