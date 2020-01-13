Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D10138FAA
	for <lists+spice-devel@lfdr.de>; Mon, 13 Jan 2020 11:53:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67F326E05A;
	Mon, 13 Jan 2020 10:53:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 192EE89F8B
 for <spice-devel@lists.freedesktop.org>; Mon, 13 Jan 2020 09:56:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578909408;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=UCvTXYMbzC5vCpYE+uOK6yxI2QnoH2hk7vv2O/6gzmk=;
 b=FYpkj5GAGwo9lpG7JXLDlwGZJwG+1DBno2Q4DwQ64+E6Z8mCsuk9NamLLJgClc1rpYl2fI
 Pc7p+8g6GZj3unzcbEkUgdseoc3iUxfmujAOxq705HPMyPMmBFuieHraWQD33os2u9qnjv
 0M3o3/MMy3MhtdNDcWPd2Lp8ZgIsLag=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-380-HdATJDllOr6NV5NQyjFoag-1; Mon, 13 Jan 2020 04:56:43 -0500
X-MC-Unique: HdATJDllOr6NV5NQyjFoag-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2105E1800D78;
 Mon, 13 Jan 2020 09:56:41 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-116-106.ams2.redhat.com
 [10.36.116.106])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0CE411001DD7;
 Mon, 13 Jan 2020 09:56:37 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id 1B9679DB3; Mon, 13 Jan 2020 10:56:36 +0100 (CET)
Date: Mon, 13 Jan 2020 10:56:36 +0100
From: Gerd Hoffmann <kraxel@redhat.com>
To: Dmitry Sepp <dmitry.sepp@opensynergy.com>
Message-ID: <20200113095636.blov62o4gbf27om5@sirius.home.kraxel.org>
References: <20191218130214.170703-1-keiichiw@chromium.org>
 <2137719.ElGaqSPkdT@os-lin-dmo>
 <CAD90Vcbk5DerrFNQdH1wdAX=HxBjMz9-FoNiWm_ryvwsA_YvYA@mail.gmail.com>
 <7740094.NyiUUSuA9g@os-lin-dmo>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7740094.NyiUUSuA9g@os-lin-dmo>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mailman-Approved-At: Mon, 13 Jan 2020 10:53:49 +0000
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

> This also means that we cannot have unspec for planes layout. Device either 
> expects planes in separate buffers or in one buffer with some offsets, there 
> cannot be mixed cases.

Hmm.  Is it useful to support both?  Or maybe support the "one buffer +
offsets" case only?  Splitting one buffer into multiple smaller ones
internally if needed shouldn't be a problem, and it would simplify the
interface a bit ...

cheers,
  Gerd

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
