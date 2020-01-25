Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA97414960F
	for <lists+spice-devel@lfdr.de>; Sat, 25 Jan 2020 15:33:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6898D6E869;
	Sat, 25 Jan 2020 14:33:13 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 472 seconds by postgrey-1.36 at gabe;
 Sat, 25 Jan 2020 13:06:07 UTC
Received: from forward102o.mail.yandex.net (forward102o.mail.yandex.net
 [IPv6:2a02:6b8:0:1a2d::602])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 088A86E825
 for <spice-devel@lists.freedesktop.org>; Sat, 25 Jan 2020 13:06:06 +0000 (UTC)
Received: from mxback8o.mail.yandex.net (mxback8o.mail.yandex.net
 [IPv6:2a02:6b8:0:1a2d::22])
 by forward102o.mail.yandex.net (Yandex) with ESMTP id CA39A6680D8B
 for <spice-devel@lists.freedesktop.org>; Sat, 25 Jan 2020 15:58:12 +0300 (MSK)
Received: from localhost (localhost [::1])
 by mxback8o.mail.yandex.net (mxback/Yandex) with ESMTP id XhC1ISmCT6-wBtSOTuZ; 
 Sat, 25 Jan 2020 15:58:12 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1579957092; bh=/++GGvzmnWfuh28XdJtXePDlq5AKaVROV8J8eHmv59o=;
 h=Message-Id:Date:Subject:To:From;
 b=tteD1+QoV8PjmTeeN1yXBb9O8yRYtdRchQ+mM73NAXIo7f5QwgBtERigLa6tWaz4a
 VleQW4nfZGt/oWC4p1zTnFNRMvvm6oFfaAmuKNs1ZuGiKxRahEpMwUM+Y2RDHqVCB7
 TG+DuPMmZnASNzHQtau0uO9Q+dn9hVliCZMDbeOk=
Authentication-Results: mxback8o.mail.yandex.net; dkim=pass header.i=@yandex.ru
Received: by myt5-094cfe5c1616.qloud-c.yandex.net with HTTP;
 Sat, 25 Jan 2020 15:58:11 +0300
From: ole-krutov@yandex.ru
To: spice-devel@lists.freedesktop.org
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Sat, 25 Jan 2020 15:58:11 +0300
Message-Id: <1360771579957091@myt5-094cfe5c1616.qloud-c.yandex.net>
X-Mailman-Approved-At: Sat, 25 Jan 2020 14:33:12 +0000
Subject: [Spice-devel] How to use spice-streaming-agent properly?
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hello dear devs,

our host has libspice-server1 0.14.2, qemu-kvm 4.1, libvirt 5.0.0 with "ramfb" option for mediated devices enabled,  NVIDIA GRID GPU. We'd like to stream GPU-accelerated video from Linux guests. spice-streaming-agent+gst-plugin is built and sends video encoded to H.264 by NVENC codec from guest. Quality of video is very good, bitrate and presets can be set by cmdline parameters.
Guest's video config consists of hostdev mediated device which corresponds to NVIDIA vGPU and second "none", which is needed because of libvirt 5.0 does not allow guests with only mediated device set.
There are two showstoppers: 

1) when enabled, the video stream creates a new window in remote-viewer (versions 6.0-8.0) instead of replace old one. Old SPICE traffic is sent along with H264 stream, consuming network and client CPU significantly. When this "old main" trafficis is disabled in remote-viewer, video streaming stops too. Remmina (all new builds including 2020.01.08) does not show this window at all.
2) No mouse or keyboard control is available in window with video stream, so it can be used just like some "TV set" but all actions should be done in old window. Guest logs say about some mouse activity on unknown display when mouse buttons are pressed on tthis window.

Can that be fixed? Can spice-streaming-agent replace main display channel?

Thanks in advance!
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
