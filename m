Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69F08124891
	for <lists+spice-devel@lfdr.de>; Wed, 18 Dec 2019 14:42:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68C9B6E46F;
	Wed, 18 Dec 2019 13:41:57 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07E616E2DA
 for <spice-devel@lists.freedesktop.org>; Wed, 18 Dec 2019 13:40:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576676447;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=aDHwmhE3N2YwBTvNh4XLjvyDwb1jj1B2UxIW+0S9e8M=;
 b=iOti5gKVEZaZ8OBvG28rhH06b/vCisFcXE+itFq1Xlf6ef6BlgYyReopvomuJ3cZXfgSNP
 wYNgpWkniqB24vNm1pbofW2/mEYPEUgEaEttBRVDM656XYIkxd1Tlrhldauc/lK5a37GtS
 CTJmTzxzJ1sB6NpJRiff2igfWzasP60=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-130-C57EBOnPOg20XjurW3OY5g-1; Wed, 18 Dec 2019 08:40:43 -0500
X-MC-Unique: C57EBOnPOg20XjurW3OY5g-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3AE20107ACE5;
 Wed, 18 Dec 2019 13:40:41 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-117-39.ams2.redhat.com
 [10.36.117.39])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3D0FA5D9E2;
 Wed, 18 Dec 2019 13:40:38 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id 70DA717538; Wed, 18 Dec 2019 14:40:37 +0100 (CET)
Date: Wed, 18 Dec 2019 14:40:37 +0100
From: Gerd Hoffmann <kraxel@redhat.com>
To: Keiichi Watanabe <keiichiw@chromium.org>
Message-ID: <20191218134037.3jbouht52bxqwfyy@sirius.home.kraxel.org>
References: <20191218130214.170703-1-keiichiw@chromium.org>
 <20191218130214.170703-2-keiichiw@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191218130214.170703-2-keiichiw@chromium.org>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mailman-Approved-At: Wed, 18 Dec 2019 13:41:55 +0000
Subject: Re: [Spice-devel] [PATCH v2 1/1] virtio-video: Add virtio video
 device specification
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
Cc: virtio-dev@lists.oasis-open.org, alexlau@chromium.org,
 acourbot@chromium.org, tfiga@chromium.org, hverkuil@xs4all.nl,
 stevensd@chromium.org, daniel@ffwll.ch, spice-devel@lists.freedesktop.org,
 dmitry.sepp@opensynergy.com, marcheu@chromium.org, dgreid@chromium.org,
 egranata@google.com, posciak@chromium.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

  Hi,

> +The device MUST mark the last buffer with the
> +VIRTIO_VIDEO_BUFFER_F_EOS flag to denote completion of the drain
> +sequence.

No, that would build a race condition into the protocol.  The device
could complete the last buffer after the driver has sent the drain
command but before the device saw it.  So the flag would not be
reliable.

I also can't see why the flag is needed in the first place.  The driver
should know which buffers are queued still and be able to figure
whenever the drain is complete or not without depending on that flag.
So I'd suggest to simply drop it.

That is the only issue I've spotted in the protocol on a first quick
look.  There are a few places where the spec text could be improved.
I'll try to set aside some time to go over this in detail, but I can't
promise I'll find the time to do that before xmas and new year.

cheers,
  Gerd

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
