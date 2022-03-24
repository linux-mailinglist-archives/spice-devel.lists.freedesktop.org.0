Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7073B4E65EB
	for <lists+spice-devel@lfdr.de>; Thu, 24 Mar 2022 16:19:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DC3310E855;
	Thu, 24 Mar 2022 15:19:21 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7300E10E2A2
 for <spice-devel@lists.freedesktop.org>; Thu, 24 Mar 2022 13:21:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1648128075;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=KbUfq5Ttn9TLVrkbv/r2vzp1qmLsYDSRFfW64UUbX/Y=;
 b=XE8C8Ri8f8MiKwbv2KTfJ7h+t1GiWX7jaWVmBZc4DccGqgMeJJBcJCe+vR5hmwcS5Ij+bL
 XLl54BIev8RQNtdDtlLrvBZFuhvelSlFYKrhwkXLTFMSZkRV2n+LOrIiAxE2fHI7TxWx7a
 DyKUhP1yx31zxpeFfanHaqrpUXb6hdo=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-75--3M2yY4qM3Gzbj6tGKQFfA-1; Thu, 24 Mar 2022 09:21:12 -0400
X-MC-Unique: -3M2yY4qM3Gzbj6tGKQFfA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6D83182A682;
 Thu, 24 Mar 2022 13:21:11 +0000 (UTC)
Received: from sirius.home.kraxel.org (unknown [10.39.196.67])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id CD4C5142B94F;
 Thu, 24 Mar 2022 13:21:10 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id 62C5318003B8; Thu, 24 Mar 2022 14:21:09 +0100 (CET)
Date: Thu, 24 Mar 2022 14:21:09 +0100
From: Gerd Hoffmann <kraxel@redhat.com>
To: liucong2@kylinos.cn
Message-ID: <20220324132109.3ox6k2wif6tkp47n@sirius.home.kraxel.org>
References: <olr8fzd5ad-olr8fzd5ae@nsmail6.0>
MIME-Version: 1.0
In-Reply-To: <olr8fzd5ad-olr8fzd5ae@nsmail6.0>
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=kraxel@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Approved-At: Thu, 24 Mar 2022 15:19:20 +0000
Subject: Re: [Spice-devel] 
 =?utf-8?b?5Zue5aSNOiBSZTog5Zue5aSNOiBSZTog5Zue5aSN?=
 =?utf-8?b?OiBSZTog5Zue5aSNOiBSZTogW1BBVENIIHYxIDEvMl0gZHJtL3F4bDogcmVw?=
 =?utf-8?q?lace_ioremap_by_ioremap=5Fcache_on_arm64?=
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
Cc: airlied@linux.ie, dri-devel@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org, ray.huang@amd.com, daniel@ffwll.ch,
 spice-devel@lists.freedesktop.org, airlied@redhat.com,
 Robin Murphy <robin.murphy@arm.com>,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Thu, Mar 24, 2022 at 06:34:02PM +0800, liucong2@kylinos.cn wrote:
>    ok, thanks, a lot of our customer use qxl on x86 before, so it still need
>    to supoort qxl on arm64.

Well, qxl isn't the best choice even on x86.  The main advantage it
offers (2d acceleration) is basically useless today because pretty much
everything moved on to use 3d acceleration instead.  So qxl ends up
being used as dumb framebuffer with software 3d rendering.

So, I'm still recommending to just use virtio-gpu ...

take care,
  Gerd

