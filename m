Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 897602CB6FD
	for <lists+spice-devel@lfdr.de>; Wed,  2 Dec 2020 09:23:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA9526EA54;
	Wed,  2 Dec 2020 08:23:34 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D8146EA06
 for <spice-devel@lists.freedesktop.org>; Wed,  2 Dec 2020 08:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1606896659;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=3DKJ+Np2OYasGZb/tRj5jt6hquso5l7TeeH/5tavDwQ=;
 b=X8aV53cpjYj1WDywvnMSsz25hdaLETDGVViJH+wRx4Y9PyiQpVkJ7otuUU8AHYhmCUZ2oQ
 Qm+X1KzAvHJ3tSukRLod+csH8mkuRjxtXzQGOyiHnypirUfERZf2gBD1RCfDE6JZVj615K
 yRcbqKJ5i2SYpVS9Id/qqkq6023DnvU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-103-69pHQ6DLOZaVJLmDHi8OaA-1; Wed, 02 Dec 2020 03:10:55 -0500
X-MC-Unique: 69pHQ6DLOZaVJLmDHi8OaA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C16C75F9E7;
 Wed,  2 Dec 2020 08:10:53 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-112-94.ams2.redhat.com
 [10.36.112.94])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B8C195D705;
 Wed,  2 Dec 2020 08:10:51 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id B4B2A16E31; Wed,  2 Dec 2020 09:10:50 +0100 (CET)
Date: Wed, 2 Dec 2020 09:10:50 +0100
From: Gerd Hoffmann <kraxel@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <20201202081050.sy77z7ehm2rwtcvt@sirius.home.kraxel.org>
References: <20201201103542.2182-1-tzimmermann@suse.de>
 <20201201103542.2182-6-tzimmermann@suse.de>
MIME-Version: 1.0
In-Reply-To: <20201201103542.2182-6-tzimmermann@suse.de>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=kraxel@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Mailman-Approved-At: Wed, 02 Dec 2020 08:23:32 +0000
Subject: Re: [Spice-devel] [PATCH v2 05/20] drm/cirrus: Remove references to
 struct drm_device.pdev
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
Cc: Sam Ravnborg <sam@ravnborg.org>, airlied@linux.ie,
 nouveau@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 amd-gfx@lists.freedesktop.org, daniel@ffwll.ch,
 spice-devel@lists.freedesktop.org, intel-gvt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Tue, Dec 01, 2020 at 11:35:27AM +0100, Thomas Zimmermann wrote:
> Using struct drm_device.pdev is deprecated. Convert cirrus to struct
> drm_device.dev. No functional changes.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Acked-by: Sam Ravnborg <sam@ravnborg.org>
> Cc: Gerd Hoffmann <kraxel@redhat.com>

Acked-by: Gerd Hoffmann <kraxel@redhat.com>

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
