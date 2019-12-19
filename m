Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D2112644D
	for <lists+spice-devel@lfdr.de>; Thu, 19 Dec 2019 15:10:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D0536EB7F;
	Thu, 19 Dec 2019 14:10:42 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 120A26E175
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Dec 2019 12:54:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576760083;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=xG429UBbvdGY4I/mszsOkYbckUSEMVlOc//9hOgRBX0=;
 b=SDkp21Pu2AQ8ZboccwqwaPJ+98nAqQWkQYaAbS2xn/ieUW1zn+peDZ+WZvFIWox1SpIxpm
 qF/J1d2VDBho84MbiWZOkDIixsRBf7MBFz8ja1Fgw0Te8507fWQp8s6IRnyUDLVMEBRvhL
 6GyVRDPJLX3uvdYcisIwwoo9GjBC2Os=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-248-wKnXy5mbNaOCgL7vVqaroA-1; Thu, 19 Dec 2019 07:54:40 -0500
X-MC-Unique: wKnXy5mbNaOCgL7vVqaroA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CE4BF1856A69;
 Thu, 19 Dec 2019 12:54:37 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-116-98.ams2.redhat.com
 [10.36.116.98])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A21386BF90;
 Thu, 19 Dec 2019 12:54:34 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id 0561311AAA; Thu, 19 Dec 2019 13:54:32 +0100 (CET)
Date: Thu, 19 Dec 2019 13:54:32 +0100
From: Gerd Hoffmann <kraxel@redhat.com>
To: Dmitry Sepp <dmitry.sepp@opensynergy.com>
Message-ID: <20191219125432.ogb2gdvmly6iuqti@sirius.home.kraxel.org>
References: <20191218130214.170703-1-keiichiw@chromium.org>
 <20191218130214.170703-2-keiichiw@chromium.org>
 <20191218134037.3jbouht52bxqwfyy@sirius.home.kraxel.org>
 <2570078.xtWa8k4VtA@os-lin-dmo>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2570078.xtWa8k4VtA@os-lin-dmo>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mailman-Approved-At: Thu, 19 Dec 2019 14:10:42 +0000
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
 acourbot@chromium.org, tfiga@chromium.org,
 Keiichi Watanabe <keiichiw@chromium.org>, stevensd@chromium.org,
 daniel@ffwll.ch, spice-devel@lists.freedesktop.org, hverkuil@xs4all.nl,
 marcheu@chromium.org, dgreid@chromium.org, egranata@google.com,
 posciak@chromium.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

  Hi,

> > I also can't see why the flag is needed in the first place.  The driver
> > should know which buffers are queued still and be able to figure
> > whenever the drain is complete or not without depending on that flag.
> > So I'd suggest to simply drop it.
> This flag is used not for drain only. In marks the completion of whatever 
> specific buffer sequence, like a full end-of-stream, resolution change, drain 
> etc. We also need this to handle nested sequences. For instance, a resolution 
> change event might happen while in drain.

Ah, ok.  That makes sense (please clarify this in the spec).

cheers,
  Gerd

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
