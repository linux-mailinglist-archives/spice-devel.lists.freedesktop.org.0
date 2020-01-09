Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94631138D0A
	for <lists+spice-devel@lfdr.de>; Mon, 13 Jan 2020 09:38:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA89489FA5;
	Mon, 13 Jan 2020 08:38:49 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 265CF89B60
 for <spice-devel@lists.freedesktop.org>; Thu,  9 Jan 2020 13:41:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578577268;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=DjXy+AfQxT5oKb1npjG/N/1uhSjMUf7kBqPATvqX9mE=;
 b=UEE5Cic2CKebTJSye/hXiiWTuI85hOT7Ucwg8ZQ4ln7YT7Ve0j4HalGYsri20K9nSxE2W2
 g+btYACPcABfo1r8InYoJ5veu8zk0vgzTy6rWveMSxw8B33gH64pzCgGNy4rB6AVFsTFmh
 xjRROcd73LyUfs1cATVjoV89as9zriE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-83-okpr7GUaP9KNpZzaPf-FrQ-1; Thu, 09 Jan 2020 08:41:05 -0500
X-MC-Unique: okpr7GUaP9KNpZzaPf-FrQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 69730477;
 Thu,  9 Jan 2020 13:41:02 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-116-98.ams2.redhat.com
 [10.36.116.98])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CE1315DA7C;
 Thu,  9 Jan 2020 13:40:53 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id CD43431F29; Thu,  9 Jan 2020 14:40:52 +0100 (CET)
Date: Thu, 9 Jan 2020 14:40:52 +0100
From: Gerd Hoffmann <kraxel@redhat.com>
To: Keiichi Watanabe <keiichiw@chromium.org>
Message-ID: <20200109134052.iqxw7l2ibjxpzcrz@sirius.home.kraxel.org>
References: <20191218130214.170703-1-keiichiw@chromium.org>
 <3550989.gzE5nMqd4t@os-lin-dmo>
 <CAAFQd5BgkEUwBFWdv2ZH98egjm=u0dBRgtexqkzjES+J1SEmag@mail.gmail.com>
 <3878267.TzG3DlCiay@os-lin-dmo>
 <20191219131234.wm24cazvc7zrnhpn@sirius.home.kraxel.org>
 <CAD90Vcb4Vb49uHGRRg0nJaKo=goH6zOxdQR2d7piLH_byxDYyw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD90Vcb4Vb49uHGRRg0nJaKo=goH6zOxdQR2d7piLH_byxDYyw@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mailman-Approved-At: Mon, 13 Jan 2020 08:38:48 +0000
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
 Hans Verkuil <hverkuil@xs4all.nl>, David Stevens <stevensd@chromium.org>,
 Daniel Vetter <daniel@ffwll.ch>, spice-devel@lists.freedesktop.org,
 Dmitry Sepp <dmitry.sepp@opensynergy.com>,
 =?utf-8?B?U3TDqXBoYW5l?= Marchesin <marcheu@chromium.org>,
 Dylan Reid <dgreid@chromium.org>, Enrico Granata <egranata@google.com>,
 Pawel Osciak <posciak@chromium.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

  Hi,

> Regarding re-using, the driver can simply re-queue buffers returned by
> the device. If the device needs a buffer as reference frame, it must
> not return the buffer.

Ok, that'll work.

> I'll describe this rule in the next version of the patch.

Good.  You should also add a note about ordering.  If the device returns
the buffers as soon as they are no longer needed for decoding they
might be completed out-of-order, specifically B-Frames might complete
before the reference I/P frame.  Is the device allowed to do that or
should it complete the buffers in playback order?

cheers,
  Gerd

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
