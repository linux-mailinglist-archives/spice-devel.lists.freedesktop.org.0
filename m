Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F9562A9133
	for <lists+spice-devel@lfdr.de>; Fri,  6 Nov 2020 09:24:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A3136E195;
	Fri,  6 Nov 2020 08:24:52 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AE8B6E199
 for <spice-devel@lists.freedesktop.org>; Fri,  6 Nov 2020 08:24:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1604651089;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=29qfegGrh7AruURuvpgC8HtdchFL+7zQsPXILi0X3v4=;
 b=FCHUmHutk7tqqp2D4qbQCkgvjlf8s0aR9YLRGc74R7/Qb+SRZ9yd05bAlhpROlvxNmwykO
 RRIlsjmMRGxBsk8UGjMvMHgi4oEd7+QJPIKYIUGlOpUF9fokfpTb2rxnvr2neHi1qIwlRk
 fQ2BDgi2EeokT5iRQii4uEIpJHZ7H/s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-155-ah-6QZFOO9-4DqOVgv1XMw-1; Fri, 06 Nov 2020 03:24:46 -0500
X-MC-Unique: ah-6QZFOO9-4DqOVgv1XMw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A301B1009E39;
 Fri,  6 Nov 2020 08:24:44 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-114-66.ams2.redhat.com
 [10.36.114.66])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 055505578B;
 Fri,  6 Nov 2020 08:24:42 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id D5F6A11AB5; Fri,  6 Nov 2020 09:24:41 +0100 (CET)
Date: Fri, 6 Nov 2020 09:24:41 +0100
From: Gerd Hoffmann <kraxel@redhat.com>
To: Deepak R Varma <mh12gx2825@gmail.com>
Message-ID: <20201106082441.x2e5mmycikwd22pj@sirius.home.kraxel.org>
References: <20201105185016.GA71797@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201105185016.GA71797@localhost>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Subject: Re: [Spice-devel] [PATCH] drm/qxl: replace idr_init() by
 idr_init_base()
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
Cc: David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 Daniel Vetter <daniel@ffwll.ch>, spice-devel@lists.freedesktop.org,
 Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Fri, Nov 06, 2020 at 12:20:16AM +0530, Deepak R Varma wrote:
> idr_init() uses base 0 which is an invalid identifier for this driver.
> The idr_alloc for this driver uses 1 as start value for ID range. The
> new function idr_init_base allows IDR to set the ID lookup from base 1.
> This avoids all lookups that otherwise starts from 0 since 0 is always
> unused / available.
> 
> References: commit 6ce711f27500 ("idr: Make 1-based IDRs more efficient")
> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>

Pushed to drm-misc-next.

thanks,
  Gerd

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
