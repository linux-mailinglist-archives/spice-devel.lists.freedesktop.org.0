Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 991E712644F
	for <lists+spice-devel@lfdr.de>; Thu, 19 Dec 2019 15:10:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB6BA6EB82;
	Thu, 19 Dec 2019 14:10:43 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 510AD6E356
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Dec 2019 13:13:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576761228;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=3xWdptGiax0pdVbALf1KWnovXqWWxHEyt0r89yHID0w=;
 b=YLLAoETiY+Ruzfp4ncYR67/TywK02K7HUV1MsAlHX8Dt1BJFETl34WdB/EYW8dJCPZ1w+U
 Bjo5GjAvRnyZLAiIyTIDgjLsR9nsHt3ho9+T0ho/UCgtZrpPVC4r3cdAhAruNLeGK+SQF9
 4YL6A6xpbNvwiF3qleM7VRuLwA2Ok8E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-207-Nd4DKpusNceE6R0IkJcwBQ-1; Thu, 19 Dec 2019 08:12:41 -0500
X-MC-Unique: Nd4DKpusNceE6R0IkJcwBQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A7776100550E;
 Thu, 19 Dec 2019 13:12:38 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-116-98.ams2.redhat.com
 [10.36.116.98])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A12C1620C0;
 Thu, 19 Dec 2019 13:12:35 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id 8020A9DA3; Thu, 19 Dec 2019 14:12:34 +0100 (CET)
Date: Thu, 19 Dec 2019 14:12:34 +0100
From: Gerd Hoffmann <kraxel@redhat.com>
To: Dmitry Sepp <dmitry.sepp@opensynergy.com>
Message-ID: <20191219131234.wm24cazvc7zrnhpn@sirius.home.kraxel.org>
References: <20191218130214.170703-1-keiichiw@chromium.org>
 <3550989.gzE5nMqd4t@os-lin-dmo>
 <CAAFQd5BgkEUwBFWdv2ZH98egjm=u0dBRgtexqkzjES+J1SEmag@mail.gmail.com>
 <3878267.TzG3DlCiay@os-lin-dmo>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3878267.TzG3DlCiay@os-lin-dmo>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mailman-Approved-At: Thu, 19 Dec 2019 14:10:42 +0000
Subject: Re: [Spice-devel] [virtio-dev] Re: [PATCH v2 1/1] virtio-video: Add
 virtio video device specification
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
Cc: virtio-dev@lists.oasis-open.org, Alex Lau <alexlau@chromium.org>,
 Alexandre Courbot <acourbot@chromium.org>, Tomasz Figa <tfiga@chromium.org>,
 Keiichi Watanabe <keiichiw@chromium.org>,
 David Stevens <stevensd@chromium.org>, Daniel Vetter <daniel@ffwll.ch>,
 spice-devel@lists.freedesktop.org, Hans Verkuil <hverkuil@xs4all.nl>,
 =?utf-8?B?U3TDqXBoYW5l?= Marchesin <marcheu@chromium.org>,
 Dylan Reid <dgreid@chromium.org>, Enrico Granata <egranata@google.com>,
 Pawel Osciak <posciak@chromium.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

  Hi,

> > However that still doesn't let the driver know which buffers will be
> > dequeued when. A simple example of this scenario is when the guest is
> > done displaying a frame and requeues the buffer back to the decoder.
> > Then the decoder will not choose it for decoding next frames into as
> > long as the frame in that buffer is still used as a reference frame,
> > even if one sends the drain request.
> It might be that I'm getting your point wrong, but do you mean some hardware 
> can mark a buffer as ready to be displayed yet still using the underlying 
> memory to decode other frames?

Yes, this is how I understand Tomasz Figa.

> This means, if you occasionally/intentionally 
> write to the buffer you mess up the whole decoding pipeline.

And to avoid this the buffer handling aspect must be clarified in the
specification.  Is the device allowed to continue using the buffer after
finishing decoding and completing the queue request?  If so, how do we
hand over buffer ownership back to the driver so it can free the pages?
drain request?  How do we handle re-using buffers?  Can the driver
simply re-queue them and expect the device figures by itself whenever it
can use the buffer or whenever it is still needed as reference frame?

cheers,
  Gerd

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
