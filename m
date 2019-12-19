Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D7E126450
	for <lists+spice-devel@lfdr.de>; Thu, 19 Dec 2019 15:10:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B09766EB83;
	Thu, 19 Dec 2019 14:10:44 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 440B76E175
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Dec 2019 13:03:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576760590;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=BIuW3mEuk8a1ZwAYQGdutllkKPAoXcw9K6KLzQ0xKIw=;
 b=Ldm6DMYGzsMONzs3GPF9Dt6AaLPCpqPIRFZqT7ulpsS7IkoPrz+SarFvPwaQpteyN0A99v
 ibc71lSO3Boup2uoq4Z2hO+vkYyK7x+7E63pXSHF0Av71wFM+QGKhMmOBl5ZMh35COiEA2
 DjTGumSvYCIw7+tS+tu6S+1VDBFMoFg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-226-kdlq7Sa4OCmY1hrQqKMWSQ-1; Thu, 19 Dec 2019 08:02:02 -0500
X-MC-Unique: kdlq7Sa4OCmY1hrQqKMWSQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1780E18B644F;
 Thu, 19 Dec 2019 13:02:00 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-116-98.ams2.redhat.com
 [10.36.116.98])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6B95C10013A7;
 Thu, 19 Dec 2019 13:01:59 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id 810C611AAA; Thu, 19 Dec 2019 14:01:58 +0100 (CET)
Date: Thu, 19 Dec 2019 14:01:58 +0100
From: Gerd Hoffmann <kraxel@redhat.com>
To: Dmitry Sepp <dmitry.sepp@opensynergy.com>
Message-ID: <20191219130158.7rzdkyemupreudko@sirius.home.kraxel.org>
References: <20191218130214.170703-1-keiichiw@chromium.org>
 <CAAFQd5AEJ0sUzqrXJAmFnBn0aU8Ef6FwXYo0LgK0NO_CdWXRVg@mail.gmail.com>
 <20191219074639.kdkrqxwb6fdb67hu@sirius.home.kraxel.org>
 <3550989.gzE5nMqd4t@os-lin-dmo>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3550989.gzE5nMqd4t@os-lin-dmo>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
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

> > Not clearly defined in the spec:  When is the decoder supposed to send
> > the response for a queue request?  When it finished decoding (i.e. frame
> > is ready for playback), or when it doesn't need the buffer any more for
> > decoding (i.e. buffer can be re-queued or pages can be released)?
> In my eyes the both statements mean almost the same and both are valid.

Well, no.  When the device decoded a P-Frame it can notify the device,
saying "here is your decoded frame".  But the device might still need
the buffer with the decoded frame to properly decode the following B/I
Frames which reference the P-Frame.

cheers,
  Gerd

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
