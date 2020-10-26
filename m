Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 096252989EA
	for <lists+spice-devel@lfdr.de>; Mon, 26 Oct 2020 11:00:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E57856E415;
	Mon, 26 Oct 2020 10:00:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79FFD6E415
 for <spice-devel@lists.freedesktop.org>; Mon, 26 Oct 2020 10:00:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1603706405;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ILWAE/rOkZoL9smhxVxTbL4Gx24qbQmskdVtaZCqHLQ=;
 b=Gsd4puPYZATY87tirxEJd4JJKZHpH39TOpwyR4Q0SHV5F8nrJY29XmuQJQ6FOZZrxWlel+
 lIrYXkxmihdCndqfn/kdVmF0DREA3s61KuNSztB0tfFCjqc6i/E+VcdT3KhBShI9RhRTMv
 zNKyB1Jd6g3y+VAG0l8Gbs5ShNoRKL8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-48-U4MobKYWPTq0pDBB5sQt3Q-1; Mon, 26 Oct 2020 06:00:00 -0400
X-MC-Unique: U4MobKYWPTq0pDBB5sQt3Q-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 23F4B61239;
 Mon, 26 Oct 2020 09:59:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 1A7225B4B1;
 Mon, 26 Oct 2020 09:59:59 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1316E92F25;
 Mon, 26 Oct 2020 09:59:59 +0000 (UTC)
Date: Mon, 26 Oct 2020 05:59:58 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: hshsh <franklee1973@163.com>
Message-ID: <1600792948.5398821.1603706398660.JavaMail.zimbra@redhat.com>
In-Reply-To: <6a34253e.27.175567a3b1e.Coremail.franklee1973@163.com>
References: <6a34253e.27.175567a3b1e.Coremail.franklee1973@163.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.194.170, 10.4.195.25]
Thread-Topic: how to get surface screen-shot in spice-server
Thread-Index: HOwlSsB44yR4B1c9t85FxW0lcH/cnw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=fziglio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] how to get surface screen-shot in spice-server
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

> Hi, spice gurus:
> I am a spice developer in my company which devle with desktop cloud
> computing.
> In spice-0.12.4 we can get surface screen-shot in red_worker.c by adding this
> line in red_process_commands():
> surface_flush(worker, surface_id, &rect);
> Function surface_flush flush undraw image to surface, then we get the
> screen-shot by reading surface address.

> But in spice-0.14.3 we can not get proper screen-shot, by adding this line in
> red_process_display():
> display_channel_current_flush(worker->display_channel, surface_id);
> We get screen-shot that flicker with white bars, I do not know why.

> Much appreciation for any reply!

> regards
> Frank

Hi, 
  you should use display_channel_draw.

Frediano

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
