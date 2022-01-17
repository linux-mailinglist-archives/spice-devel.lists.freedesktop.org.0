Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA94549043A
	for <lists+spice-devel@lfdr.de>; Mon, 17 Jan 2022 09:46:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4C4B10E413;
	Mon, 17 Jan 2022 08:46:29 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D24010E2E5
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Jan 2022 06:30:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1642401028;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Go5q3yNCunSWAkL2hpq6KdUgJw7LWx5SA03+AWWWIJk=;
 b=O3d1A7m8J37NSCs/pupGdRh7XiL96dEFlA7AfbbUhpx749zhgXOkCHBfWG3xhMsb/4+YBf
 7MIkFRpWWIyDtjJCcC3atMc5K3gAHPHGqXvzw6vbEJ7z7QQNS0Y7xQWvnuTNCYdT3CrmE+
 5FyTr1951cJykZNNZY5LP3tZpki3JDk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-466-Tq_2VRPHP8u5n7xI7NX9eg-1; Mon, 17 Jan 2022 01:30:23 -0500
X-MC-Unique: Tq_2VRPHP8u5n7xI7NX9eg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1985C1083F60;
 Mon, 17 Jan 2022 06:30:22 +0000 (UTC)
Received: from sirius.home.kraxel.org (unknown [10.39.192.49])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 96A73108C9;
 Mon, 17 Jan 2022 06:29:51 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id B221018003BF; Mon, 17 Jan 2022 07:29:49 +0100 (CET)
Date: Mon, 17 Jan 2022 07:29:49 +0100
From: Gerd Hoffmann <kraxel@redhat.com>
To: zhenwei pi <pizhenwei@bytedance.com>
Message-ID: <20220117062949.dz6c5beqxd3m2bq3@sirius.home.kraxel.org>
References: <9cc67242-9c34-6b2a-d200-abf9394305eb@bytedance.com>
 <20220114125155.umjm6mykfnnh6pmr@sirius.home.kraxel.org>
 <93d761a8-5d1e-055f-560b-bd123ba2fdb4@bytedance.com>
MIME-Version: 1.0
In-Reply-To: <93d761a8-5d1e-055f-560b-bd123ba2fdb4@bytedance.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=kraxel@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Approved-At: Mon, 17 Jan 2022 08:46:28 +0000
Subject: Re: [Spice-devel] Discuss about camera redirection in SPICE
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
Cc: cfergeau@redhat.com, lixiang.byte@bytedance.com,
 spice-devel@lists.freedesktop.org, fziglio@redhat.com
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

  Hi,

> Camera redirection through the USB redirection protocol seems feasible. But
> I have several concerns:
> 1, UVC started to support H.264 and VP8 since version 1.5, old version OS
> has no support(Link https://en.wikipedia.org/wiki/USB_video_device_class).
> 
> 2, Even guest side supports UVC 1.5, the camera App still has a chance to
> select which format to use. We can control this from hypervisor side.

The camera could offer vp8 as only supported codec ...

But, yes, using usb redirection will loose some flexibility because you
can't recode the video frames then.

> 3, I noticed that USB emulation uses a lot of CPU, so I also have a plan to
> introduce virtio camera to reduce the CPU utilization.

uhci and ehci are pretty bad indeed.  xhci should behave noticeable better.

> So from the point of my view, I prefer a common camera redirection
> protocol(event a hard work to do, but I can support it for a long time).

I think you can take some ideas from the audio protocol (start/stop
stream, ...).  Define controls (brighness etc), probably best to follow
uvc or v4l2 here.  Negotiate video format capabilities, so there is the
option that server and client agree on some future codec when supported
on both ends.

take care,
  Gerd

