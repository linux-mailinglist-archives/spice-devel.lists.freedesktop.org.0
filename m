Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD52114F16
	for <lists+spice-devel@lfdr.de>; Fri,  6 Dec 2019 11:33:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 625306F99C;
	Fri,  6 Dec 2019 10:33:01 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C2EB6F99C
 for <spice-devel@lists.freedesktop.org>; Fri,  6 Dec 2019 10:33:00 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-235-0vhK2-LYN1qIHffm_CtJJQ-1; Fri, 06 Dec 2019 05:32:57 -0500
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 71610DB60;
 Fri,  6 Dec 2019 10:32:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 6668D19C4F;
 Fri,  6 Dec 2019 10:32:56 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 518FD65D1F;
 Fri,  6 Dec 2019 10:32:56 +0000 (UTC)
Date: Fri, 6 Dec 2019 05:32:56 -0500 (EST)
From: Frediano Ziglio <fziglio@redhat.com>
To: alexander@daynix.com
Message-ID: <1980340793.14474912.1575628376287.JavaMail.zimbra@redhat.com>
In-Reply-To: <20191205174915.24546-10-anezhins@redhat.com>
References: <20191205174915.24546-1-anezhins@redhat.com>
 <20191205174915.24546-10-anezhins@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.24, 10.4.195.6]
Thread-Topic: remove un-connected shared CD devices upon usb-device-widget
 construction
Thread-Index: MB+l+8HzhCrIMMq0RKMwWDdEdT3Ygw==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: 0vhK2-LYN1qIHffm_CtJJQ-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1575628378;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=yjIAgCkvwU+wVw9AN0BvLXEQtzrwRz7O9D815Wf2KL8=;
 b=eCzQNzoMBWqjlT2WDhfEFmbQu5179/3PbrfMd67S4HrAtpjd1MFMeQXVBMYrF+/f1n+jup
 XxdWEhdKew1Nnf8+r8hf6RBbX7c3sdqge0t3WbxwH6VyPRGrjVuRIrCz+rs1I8F9G+hgFD
 NePUGa2FK9VJlXC4s3PamDcLwnZyiDQ=
Subject: Re: [Spice-devel] [PATCH 9/9] remove un-connected shared CD devices
 upon usb-device-widget construction
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

PiAKPiBGcm9tOiBBbGV4YW5kZXIgTmV6aGluc2t5IDxhbmV6aGluc0ByZWRoYXQuY29tPgo+IAo+
IFNvbWUgY29ybmVyIGVycm9yIHNjZW5hcmlvcyBtYXkgbGVhdmUgZGFuZ2xpbmcgbm90IGNvbm5l
Y3RlZCBzaGFyZWQgQ0QKPiBkZXZpY2VzLgo+IEFzIHRoZSBjdXJyZW50IGZsb3cgcHJlY2x1ZGVz
IG1haW50ZW5hbmNlIG9mIHN1Y2ggZGV2aWNlcywgaXQgbWF5IGJlIHBydWRlbnQKPiB0byBpZGVu
dGlmeSBhbmQgcmVtb3ZlIHRoZW0uCj4gCj4gU2lnbmVkLW9mZi1ieTogQWxleGFuZGVyIE5lemhp
bnNreSA8YW5lemhpbnNAcmVkaGF0LmNvbT4KClRoaXMgcGF0Y2ggYW5kIGNvZGUgc2VlbXMgdG8g
aW5kaWNhdGUgYSB3b3JrYXJvdW5kIGZvciBhIGJ1ZyBpbgp0aGUgaW1wbGVtZW50YXRpb24uCgo+
IC0tLQo+ICBzcmMvdXNiLWRldmljZS13aWRnZXQuYyB8IDEyICsrKysrKysrKysrLQo+ICAxIGZp
bGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1n
aXQgYS9zcmMvdXNiLWRldmljZS13aWRnZXQuYyBiL3NyYy91c2ItZGV2aWNlLXdpZGdldC5jCj4g
aW5kZXggNzI0YjdiNS4uNmU4MTUwYyAxMDA2NDQKPiAtLS0gYS9zcmMvdXNiLWRldmljZS13aWRn
ZXQuYwo+ICsrKyBiL3NyYy91c2ItZGV2aWNlLXdpZGdldC5jCj4gQEAgLTI5NSw5ICsyOTUsMTkg
QEAgc3RhdGljIHZvaWQgc3BpY2VfdXNiX2RldmljZV93aWRnZXRfY29uc3RydWN0ZWQoR09iamVj
dAo+ICpnb2JqZWN0KQo+ICAKPiAgICAgIGRldmljZXMgPSBzcGljZV91c2JfZGV2aWNlX21hbmFn
ZXJfZ2V0X2RldmljZXMocHJpdi0+bWFuYWdlcik7Cj4gICAgICBpZiAoZGV2aWNlcyAhPSBOVUxM
KSB7Cj4gKyAgICAgICAgU3BpY2VVc2JEZXZpY2UgKmRldmljZTsKPiAgICAgICAgICBpbnQgaTsK
PiArCj4gICAgICAgICAgZm9yIChpID0gMDsgaSA8IGRldmljZXMtPmxlbjsgaSsrKSB7Cj4gLSAg
ICAgICAgICAgIGRldmljZV9hZGRlZF9jYihOVUxMLCBnX3B0cl9hcnJheV9pbmRleChkZXZpY2Vz
LCBpKSwgc2VsZik7Cj4gKyAgICAgICAgICAgIGRldmljZSA9IGdfcHRyX2FycmF5X2luZGV4KGRl
dmljZXMsIGkpOwo+ICsKPiArICAgICAgICAgICAgaWYgKHNwaWNlX3VzYl9kZXZpY2VfbWFuYWdl
cl9pc19kZXZpY2Vfc2hhcmVkX2NkKHByaXYtPm1hbmFnZXIsCj4gZGV2aWNlKSAmJgo+ICsgICAg
ICAgICAgICAgICAgIXNwaWNlX3VzYl9kZXZpY2VfbWFuYWdlcl9pc19kZXZpY2VfY29ubmVjdGVk
KHByaXYtPm1hbmFnZXIsCj4gZGV2aWNlKSkgewo+ICsKPiBzcGljZV91c2JfZGV2aWNlX21hbmFn
ZXJfcmVtb3ZlX3NoYXJlZF9jZF9kZXZpY2UocHJpdi0+bWFuYWdlciwKPiBkZXZpY2UsIE5VTEwp
Owo+ICsgICAgICAgICAgICAgICAgY29udGludWU7Cj4gKyAgICAgICAgICAgIH0KPiArCj4gKyAg
ICAgICAgICAgIGRldmljZV9hZGRlZF9jYihOVUxMLCBkZXZpY2UsIHNlbGYpOwo+ICAgICAgICAg
IH0KPiAgCj4gICAgICAgICAgZ19wdHJfYXJyYXlfdW5yZWYoZGV2aWNlcyk7CgpGcmVkaWFubwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
