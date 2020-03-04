Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45916178CF5
	for <lists+spice-devel@lfdr.de>; Wed,  4 Mar 2020 09:58:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27D5E8921A;
	Wed,  4 Mar 2020 08:58:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA0A76EAB0
 for <spice-devel@lists.freedesktop.org>; Wed,  4 Mar 2020 06:43:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1583304190;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=4fHgO8hU9Nn3A/mKut/Pf9QqB1oZmz2Y/YtOZ/w+kWY=;
 b=gOwlQ9sqlxORhP/SGT6D9xCh7mVSkq9/oyjSL8qgbuZk7lyB2aDgdrk6A3Yc4Z/J92C16J
 em0U8yAXVeiHp39tZhbOTdLzJ7q//W81RSE5iKfCs682x2kMaUy/O17oL+TiQrI7hNTjwL
 fLGHRhhhtLzP39sN1UkQtaz+L73KIj0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-10-WbQqLtKTOnO822MGeUl4pw-1; Wed, 04 Mar 2020 01:42:58 -0500
X-MC-Unique: WbQqLtKTOnO822MGeUl4pw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 29BD5189F760;
 Wed,  4 Mar 2020 06:42:56 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-116-150.ams2.redhat.com
 [10.36.116.150])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7B8F760C80;
 Wed,  4 Mar 2020 06:42:52 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id B9E7D17506; Wed,  4 Mar 2020 07:42:51 +0100 (CET)
Date: Wed, 4 Mar 2020 07:42:51 +0100
From: Gerd Hoffmann <kraxel@redhat.com>
To: Alexandre Courbot <acourbot@chromium.org>
Message-ID: <20200304064251.zzkhevqgth6uets6@sirius.home.kraxel.org>
References: <20200206102058.247258-1-keiichiw@chromium.org>
 <20200206102058.247258-2-keiichiw@chromium.org>
 <20200225095956.7rtwugfru4dbjj7q@sirius.home.kraxel.org>
 <CAD90VcaTJh5MTRggpOmCK2LAryMHha2+7nPkFVTT8N8S06tf-A@mail.gmail.com>
 <20200227092856.p4kuh5dhh2tk3nnf@sirius.home.kraxel.org>
 <CAPBb6MWwBbNULCfMxN_KLt_Zd8kmmNy2JPi6XjLF1YgxxCPydw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPBb6MWwBbNULCfMxN_KLt_Zd8kmmNy2JPi6XjLF1YgxxCPydw@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mailman-Approved-At: Wed, 04 Mar 2020 08:58:08 +0000
Subject: Re: [Spice-devel] [PATCH v3 1/2] virtio-video: Add virtio video
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
Cc: Samiullah Khawaja <samiullah.khawaja@opensynergy.com>,
 virtio-dev@lists.oasis-open.org, Alex Lau <alexlau@chromium.org>,
 Kiran Pawar <kiran.pawar@opensynergy.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 David Staessens <dstaessens@chromium.org>, Tomasz Figa <tfiga@chromium.org>,
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

> > With a feature flag both driver and device can choose whenever they want
> > support v1 or v2 or both.  With a version config field this is more
> > limited, the device can't decide to support both.  So the bonus points
> > for a smooth transition go to the feature flags not the version field ;)
> 
> I agree that feature flags would be preferable in general, but I'm
> concerned by the fact that there is (IIUC) a limited number of them.

We have 64 total, some reserved, 24 are available to devices right now,
see https://www.kraxel.org/virtio/virtio-v1.1-cs01-video-v3.html#x1-130002

> Video tends to change significantly over time, and to have optional
> features that would also be presented as feature flags. After a while
> we may run out of them, while a new protocol version would allow us to
> extend the config struct with some new flags. Or am I missing
> something?

Not everything needs a feature flag.  For example we have
VIRTIO_VIDEO_CMD_QUERY_CAPABILITY, and we can add new video formats
without needing a feature flag.  Maybe it is a good idea to explicitly
say in the specs that this can happen and that the driver should simply
ignore any unknown format returned by the device.

> I also wonder how "support v1 or v2 or both" would work with feature
> flags. In order to make it possible to opt out of v1, I guess we would
> need "v1 supported" flag to begin with?

The driver can ignore any device without v2 feature flag set.
The device can refuse to accept a driver without v2 support (don't allow
setting the FEATURES_OK bit).

A explicit v1 feature flag would allow the guest driver print a more
specific error message ("device doesn't support v1" instead of "feature
negotiation failed"), but that's it.

cheers,
  Gerd

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
