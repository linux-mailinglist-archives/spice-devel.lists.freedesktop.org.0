Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51264114ED2
	for <lists+spice-devel@lfdr.de>; Fri,  6 Dec 2019 11:13:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94D4C6F9B4;
	Fri,  6 Dec 2019 10:13:14 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB6146F9B5
 for <spice-devel@lists.freedesktop.org>; Fri,  6 Dec 2019 10:13:12 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-382-_P5lLl6yMu6earcgehqAzw-1; Fri, 06 Dec 2019 05:13:09 -0500
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B89451005512;
 Fri,  6 Dec 2019 10:13:07 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-116-67.ams2.redhat.com
 [10.36.116.67])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DF2885D6A3;
 Fri,  6 Dec 2019 10:13:06 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id 10F2416E18; Fri,  6 Dec 2019 11:13:06 +0100 (CET)
Date: Fri, 6 Dec 2019 11:13:06 +0100
From: Gerd Hoffmann <kraxel@redhat.com>
To: Aditya Pakki <pakki001@umn.edu>
Message-ID: <20191206101306.rp2uxsmzgsshxey6@sirius.home.kraxel.org>
References: <20191205234231.10849-1-pakki001@umn.edu>
MIME-Version: 1.0
In-Reply-To: <20191205234231.10849-1-pakki001@umn.edu>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-MC-Unique: _P5lLl6yMu6earcgehqAzw-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1575627191;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=VjFRH+KKy9lVo/LpjoVhiAMNpklSmLSTjCgJyK72eTk=;
 b=e1vNJNKvuZV/tVHTwCxSJiNMOGnRQYw1fzIrpdFIT05+HtDxoLuQJDXPzW1ydBlCEaO8OO
 xyOCoBQTmyffAf8mEC0/AF4cxfZNhQ8lwYLIOdf9HqZCWxi57iqkEMUgszvwX82Om/hY+j
 +C301YlQ+DHQRvT8uH+31J4cRzpeNCU=
Subject: Re: [Spice-devel] [PATCH] drm/qxl: remove unnecessary BUG_ON check
 for handle
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Cc: David Airlie <airlied@linux.ie>, kjlu@umn.edu, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 Daniel Vetter <daniel@ffwll.ch>, spice-devel@lists.freedesktop.org,
 Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gVGh1LCBEZWMgMDUsIDIwMTkgYXQgMDU6NDI6MzFQTSAtMDYwMCwgQWRpdHlhIFBha2tpIHdy
b3RlOgo+IEluIHF4bF9nZW1fb2JqZWN0X2NyZWF0ZV93aXRoX2hhbmRsZSgpLCBoYW5kbGUncyBt
ZW1vcnkgaXMgbm90Cj4gYWxsb2NhdGVkIG9uIHRoZSBoZWFwLiBDaGVja2luZyBmb3IgZmFpbHVy
ZSBvZiBoYW5kbGUgdmlhIEJVR19PTgo+IGlzIHVubmVjZXNzYXJ5LiBUaGlzIHBhdGNoIGVsaW1p
bmF0ZXMgdGhlIGNoZWNrLgoKVGhlIGNoZWNrIG1ha2VzIHN1cmUgdGhlIGNhbGxlciBkb2Vzbid0
IHBhc3MgaW4gaGFuZGxlID09IE5VTEwKYW5kIGl0IGlzIG5lZWRlZC4KCmNoZWVycywKICBHZXJk
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1k
ZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
