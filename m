Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F503114ECB
	for <lists+spice-devel@lfdr.de>; Fri,  6 Dec 2019 11:12:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 790C96F9B2;
	Fri,  6 Dec 2019 10:12:14 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 290AD6F9B2
 for <spice-devel@lists.freedesktop.org>; Fri,  6 Dec 2019 10:12:13 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-214-deN4aBJqOVeIqzbebZ7jVg-1; Fri, 06 Dec 2019 05:12:05 -0500
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CDDDD800D54;
 Fri,  6 Dec 2019 10:12:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C37525D6A3;
 Fri,  6 Dec 2019 10:12:04 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id ABB2718089C8;
 Fri,  6 Dec 2019 10:12:04 +0000 (UTC)
Date: Fri, 6 Dec 2019 05:12:03 -0500 (EST)
From: Frediano Ziglio <fziglio@redhat.com>
To: alexander@daynix.com
Message-ID: <581898881.14473564.1575627123442.JavaMail.zimbra@redhat.com>
In-Reply-To: <20191205174915.24546-5-anezhins@redhat.com>
References: <20191205174915.24546-1-anezhins@redhat.com>
 <20191205174915.24546-5-anezhins@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.24, 10.4.195.30]
Thread-Topic: Implement spice_usb_device_widget_add_err_msg() in
 usb-device-widget
Thread-Index: Is+HHgIBhzAbiVWsnrwUTSb8HlZUKg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-MC-Unique: deN4aBJqOVeIqzbebZ7jVg-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1575627132;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=sDDs/moHu+/US1Shc9g4NjW8xcjtsODfDhcFE65HIKE=;
 b=K4/5232HvzQoIZJjiCDzdgDGAOX730dFyPShmSWpG6xK7gbXTovyivdgXuncFFWk38rHff
 pMTmFj99C7Poa6jFmA3lb5WaTS7y51eLeGc1MpAEmh0yjxl/qJQRnx1AFXU3GNWiQnQXzM
 oWrt6Iwt50OMZt/Htg4gMDDXZBeX6Ro=
Subject: Re: [Spice-devel] [PATCH 4/9] Implement
 spice_usb_device_widget_add_err_msg() in usb-device-widget
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
Cc: Yan Vugenfirer <yan@daynix.com>, spice-devel@lists.freedesktop.org,
 Alexander Nezhinsky <anezhins@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

CkluIHRoZSB0aXRsZSBJIHdvdWxkIHNheSAiRmFjdG9yIG91dCIgaW5zdGVhZCBvZiAiSW1wbGVt
ZW50IgoKPiBGcm9tOiBBbGV4YW5kZXIgTmV6aGluc2t5IDxhbmV6aGluc0ByZWRoYXQuY29tPgo+
IAo+IENvbW1vbiBmdW5jdGlvbiBmb3IgYWRkaW5nIGFuIGVycm9yIHN0YXR1cyBtZXNzYWdlLgo+
IAo+IElmIGFuIG9sZCBtZXNzYWdlIGV4aXN0cywgY2hlY2tzIGlmIHRoZSBuZXcgbWVzc2FnZSBp
cyBub3QgYWxyZWFkeSBjb250YWluZWQKPiBpbiB0aGUgb2xkIG9uZS4gVGhlIG5ldyBtZXNzYWdl
IGlzIGlnbm9yZWQgaWYgaXQgaXMsIGFkZGVkIGlmIGl0J3Mgbm90Lgo+IAo+IE5ldyBtZXNzYWdl
IHN0cmluZyBzaG91bGQgYmUgZHluYW1pY2FsbHkgYWxsb2NhdGVkLCBpdCdzIGFsd2F5cyBnX2Zy
ZWUtZWQuCj4gCj4gU2lnbmVkLW9mZi1ieTogQWxleGFuZGVyIE5lemhpbnNreSA8YW5lemhpbnNA
cmVkaGF0LmNvbT4KPiAtLS0KPiAgc3JjL3VzYi1kZXZpY2Utd2lkZ2V0LmMgfCAzNCArKysrKysr
KysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyMiBpbnNlcnRp
b25zKCspLCAxMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvc3JjL3VzYi1kZXZpY2Ut
d2lkZ2V0LmMgYi9zcmMvdXNiLWRldmljZS13aWRnZXQuYwo+IGluZGV4IDU1YTk2ODcuLjZlN2Ey
NjcgMTAwNjQ0Cj4gLS0tIGEvc3JjL3VzYi1kZXZpY2Utd2lkZ2V0LmMKPiArKysgYi9zcmMvdXNi
LWRldmljZS13aWRnZXQuYwo+IEBAIC0xMzEsNiArMTMxLDI1IEBAIHN0YXRpYyB2b2lkIHNwaWNl
X3VzYl9kZXZpY2Vfd2lkZ2V0X3NldF9wcm9wZXJ0eShHT2JqZWN0Cj4gKmdvYmplY3QsCj4gICAg
ICB9Cj4gIH0KPiAgCj4gK3N0YXRpYyB2b2lkIHNwaWNlX3VzYl9kZXZpY2Vfd2lkZ2V0X2FkZF9l
cnJfbXNnKFNwaWNlVXNiRGV2aWNlV2lkZ2V0ICpzZWxmLAo+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBnY2hhciAqbmV3X2Vycl9tc2cpCgpXaHkgbm90
IHNwaWNlX3VzYl9kZXZpY2Vfd2lkZ2V0X2FwcGVuZF9lcnJfbXNnID8KImFkZCIgc2VlbXMgdG8g
c3VnZ2VzdCBhIGxpc3Qgb2YgZXJyb3JzLgoKPiArewo+ICsgICAgU3BpY2VVc2JEZXZpY2VXaWRn
ZXRQcml2YXRlICpwcml2ID0gc2VsZi0+cHJpdjsKPiArCj4gKyAgICBpZiAocHJpdi0+ZXJyX21z
Zykgewo+ICsgICAgICAgIC8qIEFwcGVuZCB0aGUgbmV3IGVycm9yIG1lc3NhZ2UgdG8gZXJyX21z
ZywKPiArICAgICAgICAgICBidXQgb25seSBpZiBpdCdzICpub3QqIGFscmVhZHkgdGhlcmUhICov
Cj4gKyAgICAgICAgaWYgKCFzdHJzdHIocHJpdi0+ZXJyX21zZywgbmV3X2Vycl9tc2cpKSB7Cj4g
KyAgICAgICAgICAgIGdjaGFyICpvbGRfZXJyX21zZyA9IHByaXYtPmVycl9tc2c7Cj4gKyAgICAg
ICAgICAgIHByaXYtPmVycl9tc2cgPSBnX3N0cmR1cF9wcmludGYoIiVzXG4lcyIsIG9sZF9lcnJf
bXNnLAo+IG5ld19lcnJfbXNnKTsKPiArICAgICAgICAgICAgZ19mcmVlKG9sZF9lcnJfbXNnKTsK
PiArICAgICAgICAgICAgZ19mcmVlKG5ld19lcnJfbXNnKTsKPiArICAgICAgICB9Cj4gKyAgICB9
IGVsc2Ugewo+ICsgICAgICAgIHByaXYtPmVycl9tc2cgPSBuZXdfZXJyX21zZzsKPiArICAgIH0K
PiArfQo+ICsKPiAgc3RhdGljIHZvaWQgc3BpY2VfdXNiX2RldmljZV93aWRnZXRfaGlkZV9pbmZv
X2JhcihTcGljZVVzYkRldmljZVdpZGdldAo+ICAqc2VsZikKPiAgewo+ICAgICAgU3BpY2VVc2JE
ZXZpY2VXaWRnZXRQcml2YXRlICpwcml2ID0gc2VsZi0+cHJpdjsKPiBAQCAtMzU5LDE5ICszNzgs
MTAgQEAgc3RhdGljIHZvaWQgY2hlY2tfY2FuX3JlZGlyZWN0KEd0a1dpZGdldCAqd2lkZ2V0LAo+
IGdwb2ludGVyIHVzZXJfZGF0YSkKPiAgICAgIH0gZWxzZSB7Cj4gICAgICAgICAgY2FuX3JlZGly
ZWN0ID0KPiAgICAgICAgICBzcGljZV91c2JfZGV2aWNlX21hbmFnZXJfY2FuX3JlZGlyZWN0X2Rl
dmljZShwcml2LT5tYW5hZ2VyLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGRldmljZSwKPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAm
ZXJyKTsKPiAtICAgICAgICAvKiBJZiB3ZSBjYW5ub3QgcmVkaXJlY3QgdGhpcyBkZXZpY2UsIGFw
cGVuZCB0aGUgZXJyb3IgbWVzc2FnZSB0bwo+IC0gICAgICAgICAgIGVycl9tc2csIGJ1dCBvbmx5
IGlmIGl0IGlzICpub3QqIGFscmVhZHkgdGhlcmUhICovCj4gKwo+ICAgICAgICAgIGlmICghY2Fu
X3JlZGlyZWN0KSB7Cj4gLSAgICAgICAgICAgIGlmIChwcml2LT5lcnJfbXNnKSB7Cj4gLSAgICAg
ICAgICAgICAgICBpZiAoIXN0cnN0cihwcml2LT5lcnJfbXNnLCBlcnItPm1lc3NhZ2UpKSB7Cj4g
LSAgICAgICAgICAgICAgICAgICAgZ2NoYXIgKm9sZF9lcnJfbXNnID0gcHJpdi0+ZXJyX21zZzsK
PiAtICAgICAgICAgICAgICAgICAgICBwcml2LT5lcnJfbXNnID0gZ19zdHJkdXBfcHJpbnRmKCIl
c1xuJXMiLCBwcml2LT5lcnJfbXNnLAo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgZXJyLT5tZXNzYWdlKTsKPiAtICAgICAgICAgICAgICAgICAg
ICBnX2ZyZWUob2xkX2Vycl9tc2cpOwo+IC0gICAgICAgICAgICAgICAgfQo+IC0gICAgICAgICAg
ICB9IGVsc2Ugewo+IC0gICAgICAgICAgICAgICAgcHJpdi0+ZXJyX21zZyA9IGdfc3RyZHVwKGVy
ci0+bWVzc2FnZSk7Cj4gLSAgICAgICAgICAgIH0KPiArICAgICAgICAgICAgZ2NoYXIgKmVycl9t
c2cgPSBnX3N0cmR1cF9wcmludGYoIkNhbid0IHJlZGlyZWN0OiAlcyIsCj4gZXJyLT5tZXNzYWdl
KTsKPiArICAgICAgICAgICAgc3BpY2VfdXNiX2RldmljZV93aWRnZXRfYWRkX2Vycl9tc2coc2Vs
ZiwgZXJyX21zZyk7Cj4gICAgICAgICAgfQo+ICAgICAgICAgIGdfY2xlYXJfZXJyb3IoJmVycik7
Cj4gICAgICB9CgpGcmVkaWFubwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL3NwaWNlLWRldmVs
