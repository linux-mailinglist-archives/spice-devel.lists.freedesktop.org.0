Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0335A1311D1
	for <lists+spice-devel@lfdr.de>; Mon,  6 Jan 2020 13:07:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44FFB6E29A;
	Mon,  6 Jan 2020 12:07:45 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B063989D8A
 for <spice-devel@lists.freedesktop.org>; Mon,  6 Jan 2020 08:47:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578300437;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=LuwmtFiuk4QC6AlCiv2QuDvl6ZNYkiBQJ/wWpvPHom0=;
 b=jJ/D8EBQHzgwZexxqyBobFloy1rl4RigZdJuudmrmKkh6mKytAj+YtTYKDpQEBF4EGu9WO
 2vQH0JZzKPI6SIdGSDfvlJUgpe7ECAUiVj9TjgeH0nH9YKg38zBoTLDhuNUg+xFJJXgjUs
 qPY2+uU96Wm5C5IL5WBAHvvyuBHSAew=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-299-Xg-vGluqNHK1In-eZEA4YA-1; Mon, 06 Jan 2020 03:47:13 -0500
X-MC-Unique: Xg-vGluqNHK1In-eZEA4YA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3D070100550E;
 Mon,  6 Jan 2020 08:47:10 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-116-98.ams2.redhat.com
 [10.36.116.98])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 876D660F89;
 Mon,  6 Jan 2020 08:47:02 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id 66A356DF9; Mon,  6 Jan 2020 09:47:01 +0100 (CET)
Date: Mon, 6 Jan 2020 09:47:01 +0100
From: Gerd Hoffmann <kraxel@redhat.com>
To: Dmitry Sepp <dmitry.sepp@opensynergy.com>
Message-ID: <20200106084701.3v5eew3bh4nh67sc@sirius.home.kraxel.org>
References: <20191218130214.170703-1-keiichiw@chromium.org>
 <20191218130214.170703-2-keiichiw@chromium.org>
 <2358784.0s52YacUgI@os-lin-dmo>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2358784.0s52YacUgI@os-lin-dmo>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mailman-Approved-At: Mon, 06 Jan 2020 12:07:42 +0000
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
 acourbot@chromium.org, tfiga@chromium.org, stevensd@chromium.org,
 daniel@ffwll.ch, spice-devel@lists.freedesktop.org, hverkuil@xs4all.nl,
 marcheu@chromium.org, dgreid@chromium.org, egranata@google.com,
 posciak@chromium.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

  Hi,

> How should one deal with multiplanar formats? Do we create one resource per 
> plane? Otherwise we need a way to send mem entries for each plane in one 
> request.

DRM uses arrays of handles and offsets (see struct drm_framebuffer).  A
handle references a gem object (roughly the same as a resource), and the
offset specifies the start of the plane within the gem object.  That
allows both a single gem object with planes stored at different offsets
and one gem object per plane.  virtio-video could do the same, or pick
one of the two approaches and support only that.

cheers,
  Gerd

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
