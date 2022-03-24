Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3136C4E62CC
	for <lists+spice-devel@lfdr.de>; Thu, 24 Mar 2022 12:56:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 235F310E89E;
	Thu, 24 Mar 2022 11:55:56 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36BF210E871
 for <spice-devel@lists.freedesktop.org>; Thu, 24 Mar 2022 10:26:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1648117615;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=F8jc/bx/HzJp4dhctGOy3fEy8URceAcwu2QM3mRZ9WQ=;
 b=QysdC/oW51dx3cwwkf1LhovcB/ScbuMZt3VzLP6rin3PFPsHA8kfScr/Crtp6lnAojieji
 q3DB6H5L/uhHDXCrHiqyseNKikQi47XeXreHDdjcYDZJFND86wXMLs8NiNvwcU51PWSquV
 vWAmuEwDS15sknIuNF7B1xUXsM3qhSo=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-463-dXkEgGkDOMqURq3skhMiEQ-1; Thu, 24 Mar 2022 06:26:51 -0400
X-MC-Unique: dXkEgGkDOMqURq3skhMiEQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2105C28078DE;
 Thu, 24 Mar 2022 10:26:51 +0000 (UTC)
Received: from sirius.home.kraxel.org (unknown [10.39.196.67])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B0B56141DEDB;
 Thu, 24 Mar 2022 10:26:50 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id 0D57318000AA; Thu, 24 Mar 2022 11:26:49 +0100 (CET)
Date: Thu, 24 Mar 2022 11:26:49 +0100
From: Gerd Hoffmann <kraxel@redhat.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20220324102649.axcgnofblqqua63e@sirius.home.kraxel.org>
References: <2n05d7wxagz-2n05d7wxah0@nsmail6.0>
 <12eba824-ee80-0aac-56ed-e13084c9cae7@amd.com>
MIME-Version: 1.0
In-Reply-To: <12eba824-ee80-0aac-56ed-e13084c9cae7@amd.com>
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=kraxel@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 24 Mar 2022 11:55:55 +0000
Subject: Re: [Spice-devel] 
 =?utf-8?b?5Zue5aSNOiBSZTog5Zue5aSNOiBSZTog5Zue5aSN?=
 =?utf-8?q?=3A_Re=3A_=5BPATCH_v1_1/2=5D_drm/qxl=3A_replace_ioremap_by_iore?=
 =?utf-8?q?map=5Fcache_on_arm64?=
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
 virtualization@lists.linux-foundation.org, ray.huang@amd.com,
 liucong2@kylinos.cn, daniel@ffwll.ch, spice-devel@lists.freedesktop.org,
 airlied@redhat.com, Robin Murphy <robin.murphy@arm.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Thu, Mar 24, 2022 at 10:20:40AM +0100, Christian König wrote:
> Hi Cong,
> 
> when I understand Robin correctly all mapping (host, guest, kernel,
> userspace etc..) must have the same caching attributes unless you use the
> S2FWB feature introduced with Armv8.4.
> 
> If you don't follow those rules you usually run into coherency issues or
> even worse system hangs. So you not only need to adjust the kernel mappings,
> but also the function for userspace mappings to follow those rules.

That matches my understanding.

For qxl specifically: when using the xork qxl driver getting the
userspace mappings right is essential because userspace will write qxl
command buffers then.  When using the xorg modesetting driver or wayland
the worst thing happening would be display corruption because userspace
will only map dumb bo's for pixel data.

I'm wondering though why you are keen on getting qxl work instead of
just using virtio-gpu?

take care,
  Gerd

