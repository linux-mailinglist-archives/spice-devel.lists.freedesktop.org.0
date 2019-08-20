Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2690F957B4
	for <lists+spice-devel@lfdr.de>; Tue, 20 Aug 2019 08:57:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C8016E5EC;
	Tue, 20 Aug 2019 06:57:27 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 005CD6E5EC;
 Tue, 20 Aug 2019 06:57:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7565BA38186;
 Tue, 20 Aug 2019 06:57:25 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-116-60.ams2.redhat.com
 [10.36.116.60])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 107E45D9CD;
 Tue, 20 Aug 2019 06:57:25 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id 4A2B011AAF; Tue, 20 Aug 2019 08:57:24 +0200 (CEST)
Date: Tue, 20 Aug 2019 08:57:24 +0200
From: Gerd Hoffmann <kraxel@redhat.com>
To: Wenwen Wang <wenwen@cs.uga.edu>
Message-ID: <20190820065724.mc3anvne2sf356x3@sirius.home.kraxel.org>
References: <1566238098-3962-1-git-send-email-wenwen@cs.uga.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566238098-3962-1-git-send-email-wenwen@cs.uga.edu>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.68]); Tue, 20 Aug 2019 06:57:25 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH] drm/qxl: fix a memory leak bug
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
Cc: David Airlie <airlied@linux.ie>, open list <linux-kernel@vger.kernel.org>,
 "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>,
 "open list:DRM DRIVER FOR QXL VIRTUAL GPU"
 <virtualization@lists.linux-foundation.org>, Daniel Vetter <daniel@ffwll.ch>,
 "open list:DRM DRIVER FOR QXL VIRTUAL GPU" <spice-devel@lists.freedesktop.org>,
 Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gTW9uLCBBdWcgMTksIDIwMTkgYXQgMDE6MDg6MThQTSAtMDUwMCwgV2Vud2VuIFdhbmcgd3Jv
dGU6Cj4gSW4gcXhsX2JvX2NyZWF0ZSgpLCB0aGUgdGVtcG9yYXJ5ICdibycgaXMgYWxsb2NhdGVk
IHRocm91Z2gga3phbGxvYygpLgo+IEhvd2V2ZXIsIGl0IGlzIG5vdCBkZWFsbG9jYXRlZCBpbiB0
aGUgZm9sbG93aW5nIGV4ZWN1dGlvbiBpZiB0dG1fYm9faW5pdCgpCj4gZmFpbHMsIGxlYWRpbmcg
dG8gYSBtZW1vcnkgbGVhayBidWcuIFRvIGZpeCB0aGlzIGlzc3VlLCBmcmVlICdibycgYmVmb3Jl
Cj4gcmV0dXJuaW5nIHRoZSBlcnJvci4KCk5vLiAgdHRtX2JvX2luaXQoKSBjYWxscyB0aGUgZGVz
dHJveSBjYWxsYmFjayAocXhsX3R0bV9ib19kZXN0cm95IGZvcgpxeGwpIG9uIGZhaWx1cmUsIHdo
aWNoIHdpbGwgcHJvcGVybHkgY2xlYW51cCAnYm8nIGFuZCBhbHNvIGZyZWUgaXQuCgpjaGVlcnMs
CiAgR2VyZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
U3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRl
dmVs
