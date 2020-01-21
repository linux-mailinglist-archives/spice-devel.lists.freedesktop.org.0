Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF3D314387D
	for <lists+spice-devel@lfdr.de>; Tue, 21 Jan 2020 09:41:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED2BC6EBEF;
	Tue, 21 Jan 2020 08:41:12 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58E8D6EA3D
 for <spice-devel@lists.freedesktop.org>; Tue, 21 Jan 2020 06:44:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579589086;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=p1ciCsgpvdQJimUGOQLkhk5HqlTe0BRjeWb3MvBbv84=;
 b=aHigi/mTRcN5Hmb0/dbJStB1Wzz4wJMet6hdxgcqwADO02DBPOPAlDrG4rhJGXhvSHvcyl
 MKMtNjmYms9L12dXcOeD/bEXOHNeImuLpe3+9q0n7snS6pt+C0C6y5d6ScFI3aApUA4W9R
 XhpB7wrIzNrn1seKoxfkVKtI9Z3g/pc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-418--0EYtVwyOSymFcHfE3EhFw-1; Tue, 21 Jan 2020 01:44:44 -0500
X-MC-Unique: -0EYtVwyOSymFcHfE3EhFw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6A154100551A;
 Tue, 21 Jan 2020 06:44:41 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-116-106.ams2.redhat.com
 [10.36.116.106])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 12DA55C21B;
 Tue, 21 Jan 2020 06:44:38 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id 196AD16E36; Tue, 21 Jan 2020 07:44:37 +0100 (CET)
Date: Tue, 21 Jan 2020 07:44:37 +0100
From: Gerd Hoffmann <kraxel@redhat.com>
To: Keiichi Watanabe <keiichiw@chromium.org>
Message-ID: <20200121064437.jryf3lq72bucs6rr@sirius.home.kraxel.org>
References: <20200113095636.blov62o4gbf27om5@sirius.home.kraxel.org>
 <12433898.dW097sEU6C@os-lin-dmo>
 <20200113110521.5ogc3fcy4zq32yzg@sirius.home.kraxel.org>
 <CAAFQd5D16G0E85BCZVx1LXd1TauQH8Lbgs5-0gLv7tNpm4sp_A@mail.gmail.com>
 <20200113132654.r4lhspfx2z7zse2v@sirius.home.kraxel.org>
 <CAAFQd5A3=4JC+3bRf2iw8RwsoB1jJz8p5afi6KaHO6ML2LC0Rg@mail.gmail.com>
 <20200115112640.52kemwg4lncuvvir@sirius.home.kraxel.org>
 <CAD90VcaAaomTnwVESp9RaBwhjx+cKjXAJv4T7wSkFiCEhOUo5Q@mail.gmail.com>
 <20200120104755.3hhxlx6x6o32bagf@sirius.home.kraxel.org>
 <CAD90Vcak0iohLny9UjkqtBmM0px7Rz1mqQE6jw1wdu66QB4U3Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD90Vcak0iohLny9UjkqtBmM0px7Rz1mqQE6jw1wdu66QB4U3Q@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mailman-Approved-At: Tue, 21 Jan 2020 08:41:11 +0000
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
 Hans Verkuil <hverkuil@xs4all.nl>, David Stevens <stevensd@chromium.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 =?utf-8?B?U3TDqXBoYW5l?= Marchesin <marcheu@chromium.org>,
 Dmitry Sepp <dmitry.sepp@opensynergy.com>, spice-devel@lists.freedesktop.org,
 Dylan Reid <dgreid@chromium.org>, Enrico Granata <egranata@google.com>,
 Pawel Osciak <posciak@chromium.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

> > > Can't this problem be solved by adding "offset" field in virtio_video_mem_entry?
> > >
> > > struct virtio_video_mem_entry {
> > >   le64 addr;
> > >   le32 length;
> > >   le32 offset;
> > >   u8 padding[4];
> > > };
> > >
> > > Here, "addr" must be the same in every mem_entry for (1) hardware.
> >
> > No.  virtio_video_mem_entry is basically a scatter list entry, you use
> > an *array* of these entries to describe your buffer (unless you are
> > using CMA due to hardware requirements, in this special case you have
> > only one entry in your array).
> 
> I see. I forgot about scatter list.
> However, I'm still not sure about the usage for CMA.
> if we're using CMA for a multiplanar format, how can the device know
> where the second plane start from?
> In my understanding, the number of entries in this case should be the
> same with the number of planes and
> "entries[0].addr + entries[0].length == entries[1].addr" should hold.

With the one-buffer-per-frame model you could add a plane_offsets[4]
field to virtio_video_resource_create.

The virtio_video_mem_entry array describes the whole buffer for all
planes, the plane_offsets array says where the individual planes start
inside the buffer.

cheers,
  Gerd

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
