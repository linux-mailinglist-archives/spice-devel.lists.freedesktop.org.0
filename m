Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BBC4139261
	for <lists+spice-devel@lfdr.de>; Mon, 13 Jan 2020 14:43:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 645D36E0BA;
	Mon, 13 Jan 2020 13:43:11 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BC128986D
 for <spice-devel@lists.freedesktop.org>; Mon, 13 Jan 2020 11:05:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578913531;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=59lWFDYW3VFdpEox0GkaZ5lVDt5TY88LO0e7WvoKGxc=;
 b=gR7s3KYuEMfmeiES/c/pqB6HP37LGYmkti9KamMsxPANFWj2Vj02RdUaCFWHi/ZR4jatK6
 qFj6BX8M+TX9y8zhA6dFfBq2f9pdmVloKzr2EPHkWN/5Uz+mMAWMaF/d6Cq11hCtKuxfm5
 h0Zn8MVkT5EPdhBe4gZvcDICT6Y6E3s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-11-plPcE48VMBu2XOLWC5sA6w-1; Mon, 13 Jan 2020 06:05:28 -0500
X-MC-Unique: plPcE48VMBu2XOLWC5sA6w-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3BE9A1137853;
 Mon, 13 Jan 2020 11:05:25 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-116-106.ams2.redhat.com
 [10.36.116.106])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3FF9687EC6;
 Mon, 13 Jan 2020 11:05:22 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id 4B28531F5E; Mon, 13 Jan 2020 12:05:21 +0100 (CET)
Date: Mon, 13 Jan 2020 12:05:21 +0100
From: Gerd Hoffmann <kraxel@redhat.com>
To: Dmitry Sepp <dmitry.sepp@opensynergy.com>
Message-ID: <20200113110521.5ogc3fcy4zq32yzg@sirius.home.kraxel.org>
References: <20191218130214.170703-1-keiichiw@chromium.org>
 <7740094.NyiUUSuA9g@os-lin-dmo>
 <20200113095636.blov62o4gbf27om5@sirius.home.kraxel.org>
 <12433898.dW097sEU6C@os-lin-dmo>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <12433898.dW097sEU6C@os-lin-dmo>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mailman-Approved-At: Mon, 13 Jan 2020 13:43:08 +0000
Subject: Re: [Spice-devel] [virtio-dev] Re: [PATCH v2 0/1] VirtIO video
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
Cc: virtio-dev@lists.oasis-open.org, Alex Lau <alexlau@chromium.org>,
 Alexandre Courbot <acourbot@chromium.org>, Tomasz Figa <tfiga@chromium.org>,
 David Stevens <stevensd@chromium.org>, Daniel Vetter <daniel@ffwll.ch>,
 =?utf-8?B?U3TDqXBoYW5l?= Marchesin <marcheu@chromium.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, spice-devel@lists.freedesktop.org,
 Dylan Reid <dgreid@chromium.org>, Enrico Granata <egranata@google.com>,
 Pawel Osciak <posciak@chromium.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Mon, Jan 13, 2020 at 11:41:45AM +0100, Dmitry Sepp wrote:
> Hi Gerd,
> 
> Thanks for reviewing!
> 
> On Montag, 13. Januar 2020 10:56:36 CET Gerd Hoffmann wrote:
> >   Hi,
> > 
> > > This also means that we cannot have unspec for planes layout. Device
> > > either
> > > expects planes in separate buffers or in one buffer with some offsets,
> > > there cannot be mixed cases.
> > 
> > Hmm.  Is it useful to support both?  Or maybe support the "one buffer +
> > offsets" case only?  Splitting one buffer into multiple smaller ones
> > internally if needed shouldn't be a problem, and it would simplify the
> > interface a bit ...
> > 
> 
> Ok, let's consider the following case:
>  - the device expects planes in separate buffers.
>  - say, Android on the guest side also imports planes in separate buffers into the driver.
>  - but he driver only supports one buffer + offsets.
> 
> Do you mean the driver then can join the underlying page lists and set offsets then? Yes, 
> this would probably make sense.

Well, no.  Tomasz Figa had splitted the devices into three groups:

  (1) requires single buffer.
  (2) allows any layout (including the one (1) devices want).
  (3) requires per-plane buffers.

Category (3) devices are apparently rare and old.  Both category (1)+(2)
devices can handle single buffers just fine.  So maybe support only
that?

Hope it's more clear this time,
  Gerd

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
