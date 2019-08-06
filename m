Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2A2582EC9
	for <lists+spice-devel@lfdr.de>; Tue,  6 Aug 2019 11:37:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 407B089973;
	Tue,  6 Aug 2019 09:37:22 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA78089973
 for <spice-devel@lists.freedesktop.org>; Tue,  6 Aug 2019 09:37:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 49A443092651;
 Tue,  6 Aug 2019 09:37:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4031319C78;
 Tue,  6 Aug 2019 09:37:21 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 38602180B536;
 Tue,  6 Aug 2019 09:37:21 +0000 (UTC)
Date: Tue, 6 Aug 2019 05:37:20 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Jeremy White <jwhite@codeweavers.com>
Message-ID: <534623769.4838521.1565084240986.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190805192707.18261-1-jwhite@codeweavers.com>
References: <20190805192707.18261-1-jwhite@codeweavers.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.14, 10.4.195.2]
Thread-Topic: Improve spice-html5 keyboard code
Thread-Index: lg+WGzLe+XCOyLuJAfEog/J/B/yQsg==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Tue, 06 Aug 2019 09:37:21 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-html5 0/4] Improve spice-html5
 keyboard code
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBUaGlzIGlzIGVmZmVjdGl2ZWx5IHYyIG9mICdBZGp1c3QgdGhlIHByZXNlbnRhdGlvbiBv
ZiB0d28gYnl0ZSBzY2FuIGNvZGVzLicKPiAKPiBJdCBicmVha3Mgb3V0IGEgcGFydCBvZiB0aGUg
cGF0Y2ggc2VwYXJhdGVseS4gIEluIHJldmlld2luZyB0aGlzLAo+IEkgY2F1Z2h0IGEgbnVtYmVy
IG9mIG90aGVyIGlzc3Vlcy4gIE9uZSB3YXJyYW50ZWQgYSBwYXRjaCAoaW5jbHVkZWQpLgo+IEZv
ciB0aGUgcmVzdCwgSSBjaG9zZSB0byAnZml4JyBpdCBieSB1cGRhdGluZyB0aGUgZG9jdW1lbnRh
dGlvbiwKPiB3aGljaCB3YXMgYSBiaXQgb3V0IG9mIGRhdGUuCj4gCj4gVGhlIG9yaWdpbmFsIHBh
dGNoIGhhcyBpdCdzIGNvbW1lbnQgdHdlYWtlZC4gRnJlZGlhbm8gaGFkIGEgc3BlY2lmaWMgcmVx
dWVzdAo+IHRvCj4gbm90IGRvIHRoZSAoPDwgOCkgbWVjaGFuaWMgb24gdGhlIHN5bWJvbHM7IEkg
aGF2ZSBub3QgY2hhbmdlZCB0aGF0LAo+IGFzIEkgcHJlZmVyIHRoYXQgZXhwcmVzc2lvbi4KPiAK
CkFja2VkIHRoZSBzZXJpZXMKCkZyZWRpYW5vCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9zcGljZS1kZXZlbA==
