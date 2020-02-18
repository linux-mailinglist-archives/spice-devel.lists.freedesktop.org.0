Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4402016423E
	for <lists+spice-devel@lfdr.de>; Wed, 19 Feb 2020 11:34:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 765166EBA2;
	Wed, 19 Feb 2020 10:34:55 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from plasma4.jpberlin.de (plasma4.jpberlin.de [80.241.57.33])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 899CC6EA85
 for <spice-devel@lists.freedesktop.org>; Tue, 18 Feb 2020 20:28:15 +0000 (UTC)
Received: from spamfilter04.heinlein-hosting.de
 (spamfilter04.heinlein-hosting.de [80.241.56.122])
 by plasma.jpberlin.de (Postfix) with ESMTP id 189D8C2DDA;
 Tue, 18 Feb 2020 21:28:11 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from plasma.jpberlin.de ([80.241.56.68])
 by spamfilter04.heinlein-hosting.de (spamfilter04.heinlein-hosting.de
 [80.241.56.122]) (amavisd-new, port 10030)
 with ESMTP id 0SmNjoT8MvK2; Tue, 18 Feb 2020 21:28:07 +0100 (CET)
Received: from webmail.opensynergy.com (unknown [217.66.60.5])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "webmail.opensynergy.com",
 Issuer "GeoTrust EV RSA CA 2018" (not verified))
 (Authenticated sender: opensynergy@jpberlin.de)
 by plasma.jpberlin.de (Postfix) with ESMTPSA id BCAA9C2DDC;
 Tue, 18 Feb 2020 21:28:06 +0100 (CET)
Received: from os-lin-dmo.localdomain (10.25.255.1) by MXS01.open-synergy.com
 (10.25.10.17) with Microsoft SMTP Server (TLS) id 14.3.468.0;
 Tue, 18 Feb 2020 21:28:06 +0100
From: Dmitry Sepp <dmitry.sepp@opensynergy.com>
To: <linux-media@vger.kernel.org>
Date: Tue, 18 Feb 2020 21:27:52 +0100
Message-ID: <20200218202753.652093-1-dmitry.sepp@opensynergy.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-Originating-IP: [10.25.255.1]
X-Mailman-Approved-At: Wed, 19 Feb 2020 10:34:54 +0000
Subject: [Spice-devel] [PATCH v2 0/1] Virtio Video V4L2 driver
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
Cc: stevensd@chromium.org, virtio-dev@lists.oasis-open.org,
 alexlau@chromium.org, kiran.pawar@opensynergy.com, acourbot@chromium.org,
 samiullah.khawaja@opensynergy.com, dstaessens@chromium.org, tfiga@chromium.org,
 hverkuil@xs4all.nl, kraxel@redhat.com, daniel@ffwll.ch,
 spice-devel@lists.freedesktop.org, marcheu@chromium.org, dgreid@chromium.org,
 egranata@google.com, posciak@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi all,

This is a v4l2 virtio video driver for the virtio-video device
specification v3 [1].

The first version of the driver was introduced here [2].

Changes v1 -> v2:
* support the v3 spec (mostly)
* add a module parameter to ask for pages from ZONE_DMA

What is not implemented:
* Plane layout flags should be used to propagate number of planes to
  user-space
* There is no real use of stream creation with bitstream format in the
  parameter list. The driver just uses the first bitstream format from
  the list.
* Setting bitrate is done in a different way compared to the spec. This
  is because it has been already agreed on that the way the spec
  currently describes it requires changes.

Potential improvements:
* Do not send stream_create from open. Use corresponding state machine
  condition to do this.
* Do not send stream_destroy from close. Do it in reqbufs(0).
* Cache format and control settings. Reduce calls to the device.

Best regards,
Dmitry.

[1] https://markmail.org/message/dmw3pr4fuajvarth
[2] https://markmail.org/message/wnnv6r6myvgb5at6


_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
