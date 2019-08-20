Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B97958D4
	for <lists+spice-devel@lfdr.de>; Tue, 20 Aug 2019 09:49:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7CD16E61D;
	Tue, 20 Aug 2019 07:40:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2CBD6E61D
 for <spice-devel@lists.freedesktop.org>; Tue, 20 Aug 2019 07:40:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5477C8980FC
 for <spice-devel@lists.freedesktop.org>; Tue, 20 Aug 2019 07:40:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 47CDC3AB1
 for <spice-devel@lists.freedesktop.org>; Tue, 20 Aug 2019 07:40:07 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3B06418005A0
 for <spice-devel@lists.freedesktop.org>; Tue, 20 Aug 2019 07:40:07 +0000 (UTC)
Date: Tue, 20 Aug 2019 03:40:07 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1741616782.7680568.1566286807183.JavaMail.zimbra@redhat.com>
In-Reply-To: <1272629391.5430056.1565416857094.JavaMail.zimbra@redhat.com>
References: <20190725134353.23174-1-fziglio@redhat.com>
 <1272629391.5430056.1565416857094.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.142, 10.4.195.29]
Thread-Topic: usb-backend: Cache isochronous value
Thread-Index: OngSoASKDNJUkXXcf0QAd1jk3iPNE6BafzCd
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.67]); Tue, 20 Aug 2019 07:40:07 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk 1/3] usb-backend: Cache
 isochronous value
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

cGluZwoKPiAKPiBwaW5nIHRoZSBzZXJpZXMKPiAKPiA+IAo+ID4gQWxsb3dzIHRvIHJlbW92ZSBf
U3BpY2VVc2JEZXZpY2Ugc3RydWN0dXJlLgo+ID4gX1NwaWNlVXNiRGV2aWNlIGlzIG9ubHkgY2Fj
aGluZyB0aGlzIHZhbHVlIGZyb20gU3BpY2VVc2JCYWNrZW5kRGV2aWNlLgo+ID4gCj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KPiA+IC0tLQo+
ID4gIHNyYy91c2ItYmFja2VuZC5jIHwgOSArKysrKysrKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwg
OSBpbnNlcnRpb25zKCspCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9zcmMvdXNiLWJhY2tlbmQuYyBi
L3NyYy91c2ItYmFja2VuZC5jCj4gPiBpbmRleCA5YWM4NTk1Yy4uN2UwZTRhOGEgMTAwNjQ0Cj4g
PiAtLS0gYS9zcmMvdXNiLWJhY2tlbmQuYwo+ID4gKysrIGIvc3JjL3VzYi1iYWNrZW5kLmMKPiA+
IEBAIC01MCw2ICs1MCw4IEBAIHN0cnVjdCBfU3BpY2VVc2JCYWNrZW5kRGV2aWNlCj4gPiAgICAg
IGdpbnQgcmVmX2NvdW50Owo+ID4gICAgICBTcGljZVVzYkJhY2tlbmRDaGFubmVsICphdHRhY2hl
ZF90bzsKPiA+ICAgICAgVXNiRGV2aWNlSW5mb3JtYXRpb24gZGV2aWNlX2luZm87Cj4gPiArICAg
IHVpbnQ4X3QgY2FjaGVkX2lzb2Nocm9ub3VzX3ZhbGlkIDogMTsKPiA+ICsgICAgdWludDhfdCBj
YWNoZWRfaXNvY2hyb25vdXMgOiAxOwo+ID4gIH07Cj4gPiAgCj4gPiAgc3RydWN0IF9TcGljZVVz
YkJhY2tlbmQKPiA+IEBAIC0zNDEsNiArMzQzLDEwIEBAIGdib29sZWFuCj4gPiBzcGljZV91c2Jf
YmFja2VuZF9kZXZpY2VfaXNvY2goU3BpY2VVc2JCYWNrZW5kRGV2aWNlICpkZXYpCj4gPiAgICAg
IGdpbnQgaSwgaiwgazsKPiA+ICAgICAgaW50IHJjOwo+ID4gIAo+ID4gKyAgICBpZiAoZGV2LT5j
YWNoZWRfaXNvY2hyb25vdXNfdmFsaWQpIHsKPiA+ICsgICAgICAgIHJldHVybiBkZXYtPmNhY2hl
ZF9pc29jaHJvbm91czsKPiA+ICsgICAgfQo+ID4gKwo+ID4gICAgICBnX3JldHVybl92YWxfaWZf
ZmFpbChsaWJkZXYgIT0gTlVMTCwgMCk7Cj4gPiAgCj4gPiAgICAgIHJjID0gbGlidXNiX2dldF9h
Y3RpdmVfY29uZmlnX2Rlc2NyaXB0b3IobGliZGV2LCAmY29uZl9kZXNjKTsKPiA+IEBAIC0zNjIs
NiArMzY4LDkgQEAgZ2Jvb2xlYW4KPiA+IHNwaWNlX3VzYl9iYWNrZW5kX2RldmljZV9pc29jaChT
cGljZVVzYkJhY2tlbmREZXZpY2UgKmRldikKPiA+ICAgICAgICAgIH0KPiA+ICAgICAgfQo+ID4g
IAo+ID4gKyAgICBkZXYtPmNhY2hlZF9pc29jaHJvbm91c192YWxpZCA9IFRSVUU7Cj4gPiArICAg
IGRldi0+Y2FjaGVkX2lzb2Nocm9ub3VzID0gaXNvY19mb3VuZDsKPiA+ICsKPiA+ICAgICAgbGli
dXNiX2ZyZWVfY29uZmlnX2Rlc2NyaXB0b3IoY29uZl9kZXNjKTsKPiA+ICAgICAgcmV0dXJuIGlz
b2NfZm91bmQ7Cj4gPiAgfQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
c3BpY2UtZGV2ZWw=
