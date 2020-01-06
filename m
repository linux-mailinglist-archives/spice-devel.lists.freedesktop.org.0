Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6362B1311CF
	for <lists+spice-devel@lfdr.de>; Mon,  6 Jan 2020 13:07:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A40F6E291;
	Mon,  6 Jan 2020 12:07:44 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 858AE89E35
 for <spice-devel@lists.freedesktop.org>; Mon,  6 Jan 2020 08:33:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578299626;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=49l6bjAclyz7lkwNh/P8L5o26bsK4TdQICyfzEA+dF4=;
 b=i3xAJOGcjIMvixnnhE47E+auRGo1b3pGoJTFZbcfWtqv38IR54u1UDv3w/KkLUzWaIdl9P
 jNJPOrOmwQB+KXbuRp3Y5oB8/oPmSu4paWZHMeUnmwDe+31E5D6UG3LJcu1Xf/uHEP5wvg
 pOM7H6dk/vgzykf6FDi9SqrP3ILnUMA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-371-IEiZZk7uNTuVn5dCgRwItg-1; Mon, 06 Jan 2020 03:33:44 -0500
X-MC-Unique: IEiZZk7uNTuVn5dCgRwItg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A0B67593AC;
 Mon,  6 Jan 2020 08:33:41 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-116-98.ams2.redhat.com
 [10.36.116.98])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BA13D5D9CA;
 Mon,  6 Jan 2020 08:33:36 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id EB7CA31E8E; Mon,  6 Jan 2020 09:33:35 +0100 (CET)
Date: Mon, 6 Jan 2020 09:33:35 +0100
From: Gerd Hoffmann <kraxel@redhat.com>
To: Tomasz Figa <tfiga@chromium.org>
Message-ID: <20200106083335.jmzhavtlq7ppgtic@sirius.home.kraxel.org>
References: <20191218130214.170703-1-keiichiw@chromium.org>
 <20191218130214.170703-2-keiichiw@chromium.org>
 <2932378.s8JBUXtX1Y@os-lin-dmo> <2322065.f0tlG9Vh6p@os-lin-dmo>
 <CAAFQd5ANkgPdu71Oo6YjFPJ2dT24GK_Ne5=Omp6Sh+6FXT2BTw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAFQd5ANkgPdu71Oo6YjFPJ2dT24GK_Ne5=Omp6Sh+6FXT2BTw@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mailman-Approved-At: Mon, 06 Jan 2020 12:07:42 +0000
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
 Alexandre Courbot <acourbot@chromium.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 David Stevens <stevensd@chromium.org>, Daniel Vetter <daniel@ffwll.ch>,
 spice-devel@lists.freedesktop.org, Dmitry Sepp <dmitry.sepp@opensynergy.com>,
 =?utf-8?B?U3TDqXBoYW5l?= Marchesin <marcheu@chromium.org>,
 Dylan Reid <dgreid@chromium.org>, Enrico Granata <egranata@google.com>,
 Pawel Osciak <posciak@chromium.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

  Hi,

> > We also see the need to add a max_streams value to this structure so as to
> > explicitly provide a limit on the number of streams the guest can create.
> 
> What would be the advantage over just trying to create one and
> failing? The maximum number would be only meaningful for the special
> case when the streams are always only created by one user space
> process. Otherwise, if several processes do that, they are not aware
> of each other and the number could be higher than they can actually
> create, because other processes could have some streams created
> already.

Also the number of streams might not be fixed but depend on stream
parameters, i.e. hardware can decode one hd or two sd streams ...

cheers,
  Gerd

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
