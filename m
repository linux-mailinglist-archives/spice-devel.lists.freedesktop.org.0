Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AA8B16BE58
	for <lists+spice-devel@lfdr.de>; Tue, 25 Feb 2020 11:11:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89A436E8B1;
	Tue, 25 Feb 2020 10:11:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D260188A23
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Feb 2020 10:01:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582624915;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=floPe8uFtiBcRJNt3b3yPKjP5sCVEHNZouWGo4bWZp8=;
 b=bcQDQ9DFgy1EDbWr1IicTYJ4kMxXLlsZntr6k6fNDy5+OTriBJ2wMVbSUovodFv1kJF7AB
 SIOne1kj6AZrGHBhHh4avcOON+NiLYqTT+OlgxPYGhw4T4I5jtR5EhM+VwDef4uYQNq8vI
 OQhpotMYUu7GpSAjHrTRkx1o8Wb0bl8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-104-ojrg6253Px6GKeMLJa8bFQ-1; Tue, 25 Feb 2020 05:01:51 -0500
X-MC-Unique: ojrg6253Px6GKeMLJa8bFQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CA94B1050478;
 Tue, 25 Feb 2020 10:01:48 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-116-87.ams2.redhat.com
 [10.36.116.87])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E1C5360C18;
 Tue, 25 Feb 2020 10:01:45 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id BF82C1744A; Tue, 25 Feb 2020 11:01:44 +0100 (CET)
Date: Tue, 25 Feb 2020 11:01:44 +0100
From: Gerd Hoffmann <kraxel@redhat.com>
To: Keiichi Watanabe <keiichiw@chromium.org>
Message-ID: <20200225100144.c3rmtmq7kqyskkq7@sirius.home.kraxel.org>
References: <20200206102058.247258-1-keiichiw@chromium.org>
 <20200206102058.247258-3-keiichiw@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200206102058.247258-3-keiichiw@chromium.org>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mailman-Approved-At: Tue, 25 Feb 2020 10:11:45 +0000
Subject: Re: [Spice-devel] [PATCH v3 2/2] virtio-video: Define a feature for
 exported objects from different virtio devices
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
Cc: samiullah.khawaja@opensynergy.com, virtio-dev@lists.oasis-open.org,
 alexlau@chromium.org, kiran.pawar@opensynergy.com, acourbot@chromium.org,
 dstaessens@chromium.org, tfiga@chromium.org, hverkuil@xs4all.nl,
 stevensd@chromium.org, daniel@ffwll.ch, spice-devel@lists.freedesktop.org,
 dmitry.sepp@opensynergy.com, marcheu@chromium.org, dgreid@chromium.org,
 egranata@google.com, posciak@chromium.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

  Hi,

> +        /*
> +         * Followed by either
> +         * - struct virtio_video_mem_entry entries[]
> +         *   for VIRTIO_VIDEO_MEM_TYPE_GUEST_PAGES
> +         * - struct virtio_video_object_entry entries[]
> +         *   for VIRTIO_VIDEO_MEM_TYPE_VIRTIO_OBJECT

Wouldn't that be a single virtio_video_object_entry?
Or could it be one per plane?

cheers,
  Gerd

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
