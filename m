Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E9A314ECC
	for <lists+spice-devel@lfdr.de>; Tue,  9 Feb 2021 13:16:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25E7A6E823;
	Tue,  9 Feb 2021 12:16:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE3986E823
 for <spice-devel@lists.freedesktop.org>; Tue,  9 Feb 2021 12:16:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1612872995;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ByUjskTTLoPD2OajNMiA8UoGsbWTnUgXFSxuqEGtMYU=;
 b=LjQ21l8+g965qkfYqorGpywS9dBVqbpVtqapWWClGPuTy0Ywk/5AYZmzIw0skfi9eQmuja
 ngZgM3fuTSl40Bw07o8wfemeu1KOerpeoMUe9PV0vwR4iZaY9hlszlYMbgm1FkNmktBjYz
 vF3r7q9aRVCReNGn0QHN34DkQ5qkM8g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-469-MIC4sTsyMaC8ql-oRLNTXg-1; Tue, 09 Feb 2021 07:16:33 -0500
X-MC-Unique: MIC4sTsyMaC8ql-oRLNTXg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E7FB01005501;
 Tue,  9 Feb 2021 12:16:31 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-112-170.ams2.redhat.com
 [10.36.112.170])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 7A965171F4;
 Tue,  9 Feb 2021 12:16:31 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id 737F41800395; Tue,  9 Feb 2021 13:16:29 +0100 (CET)
Date: Tue, 9 Feb 2021 13:16:29 +0100
From: Gerd Hoffmann <kraxel@redhat.com>
To: Tong Zhang <ztong0001@gmail.com>
Message-ID: <20210209121629.vb3yu6zkr4npnskz@sirius.home.kraxel.org>
References: <20210208104149.423758-1-kraxel@redhat.com>
 <E07153A4-9B42-4050-903E-8BBB99D8ED8E@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E07153A4-9B42-4050-903E-8BBB99D8ED8E@gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Subject: Re: [Spice-devel] [PATCH] drm/qxl: properly handle device init
 failures
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
Cc: David Airlie <airlied@linux.ie>, open list <linux-kernel@vger.kernel.org>,
 dri-devel@lists.freedesktop.org, "open list:DRM DRIVER FOR QXL VIRTUAL GPU"
 <virtualization@lists.linux-foundation.org>, Daniel Vetter <daniel@ffwll.ch>,
 "open list:DRM DRIVER FOR QXL VIRTUAL GPU" <spice-devel@lists.freedesktop.org>,
 Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gTW9uLCBGZWIgMDgsIDIwMjEgYXQgMTI6MDc6MDFQTSAtMDUwMCwgVG9uZyBaaGFuZyB3cm90
ZToKPiBEb2VzIHRoaXMgcGF0Y2ggZml4IGFuIGlzc3VlIHJhaXNlZCBwcmV2aW91c2x5PyBPciBz
aG91bGQgdGhleSBiZSB1c2VkIHRvZ2V0aGVyPwo+IGh0dHBzOi8vd3d3Lm1haWwtYXJjaGl2ZS5j
b20vbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZy9tc2cyNDY2NTQxLmh0bWwgCj4gCj4gSU1I
TyB1c2luZyB0aGlzIHBhdGNoIGFsb25lIHdvbuKAmXQgZml4IHRoZSBpc3N1ZQoKVGhpcyBwYXRj
aCBvbiB0b3Agb2YgZHJtLW1pc2MtbmV4dCBmaXhlcyB0aGUgaW5pdGlhbGl6YXRpb24gZXJyb3Ig
aXNzdWUKcmVwb3J0ZWQgYnkgeW91IGluIG15IHRlc3RpbmcuCgp0YWtlIGNhcmUsCiAgR2VyZAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVsCg==
