Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76EA748EB32
	for <lists+spice-devel@lfdr.de>; Fri, 14 Jan 2022 15:05:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F15710E3BF;
	Fri, 14 Jan 2022 14:05:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0F7510E21E
 for <spice-devel@lists.freedesktop.org>; Fri, 14 Jan 2022 12:52:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1642164754;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=wfo3ma2QLM5EMm/FLVUjOjsLRgwM4R9NQ/6UZW96+1Y=;
 b=PXtUGIPw/msoN/NLIT5FnF/gIVpZdyBZ1Ml2D8O/yDOWMY3SeaZ5nJILtxZ6lebYG8n7bM
 63QQ0Xj40bT7okNzMkiLqxptaU/ENXqzMuHkmwDGsT5ifPZmyZV8E8VrhQVYJFEu8Yg10O
 Tjwdyyv5t/GFs/8zV2KfOu1imhg08eA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-226-Rmmb7Iv0OYa9OtbhaAdieA-1; Fri, 14 Jan 2022 07:52:31 -0500
X-MC-Unique: Rmmb7Iv0OYa9OtbhaAdieA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C1EE21023F4D;
 Fri, 14 Jan 2022 12:52:30 +0000 (UTC)
Received: from sirius.home.kraxel.org (unknown [10.39.193.24])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E45FE798AB;
 Fri, 14 Jan 2022 12:51:57 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id A91B11800624; Fri, 14 Jan 2022 13:51:55 +0100 (CET)
Date: Fri, 14 Jan 2022 13:51:55 +0100
From: Gerd Hoffmann <kraxel@redhat.com>
To: zhenwei pi <pizhenwei@bytedance.com>
Message-ID: <20220114125155.umjm6mykfnnh6pmr@sirius.home.kraxel.org>
References: <9cc67242-9c34-6b2a-d200-abf9394305eb@bytedance.com>
MIME-Version: 1.0
In-Reply-To: <9cc67242-9c34-6b2a-d200-abf9394305eb@bytedance.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=kraxel@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Approved-At: Fri, 14 Jan 2022 14:05:04 +0000
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

> Although USB redirection has already provided a solution to use a remote
> webcam, I notice that it uses a heavy network(1280*720@30FPS in MJPEG uses
> 5MB/s+). I have tested several webcam, and all of them don't support h264.
> So I'd like to develop camera redirection in SPICE with h264 support, and
> expect to reduce the network bandwidth(300K/s may be enough).

Well, one option would be to add usb webcam emulation to the spice client,
simliar to cdrom redirection (which emulates an usb cdrom drive under
the hood).  Advantage: works without spice protocol changes as you can
simply tunnel everything through the usb redirection protocol.

I'd also recommend to look for another video codec (if possible, not
sure what the usb webcam spec allows).  H.264 is a patent minefield,
which makes it rather difficult to use in open source projects.  You'll
end up with a lot of legal problems when it comes to software
distribution.  vp8/9 would be a much better choice.

take care,
  Gerd

