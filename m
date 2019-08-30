Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E486BA381D
	for <lists+spice-devel@lfdr.de>; Fri, 30 Aug 2019 15:54:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 785B06E343;
	Fri, 30 Aug 2019 13:54:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C3546E343
 for <spice-devel@lists.freedesktop.org>; Fri, 30 Aug 2019 13:54:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id AC8723086202
 for <spice-devel@lists.freedesktop.org>; Fri, 30 Aug 2019 13:54:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A3C975C1D4
 for <spice-devel@lists.freedesktop.org>; Fri, 30 Aug 2019 13:54:02 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9D0A21802218
 for <spice-devel@lists.freedesktop.org>; Fri, 30 Aug 2019 13:54:02 +0000 (UTC)
Date: Fri, 30 Aug 2019 09:54:02 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <251005161.10215093.1567173242602.JavaMail.zimbra@redhat.com>
In-Reply-To: <1741616782.7680568.1566286807183.JavaMail.zimbra@redhat.com>
References: <20190725134353.23174-1-fziglio@redhat.com>
 <1272629391.5430056.1565416857094.JavaMail.zimbra@redhat.com>
 <1741616782.7680568.1566286807183.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.14, 10.4.195.10]
Thread-Topic: usb-backend: Cache isochronous value
Thread-Index: OngSoASKDNJUkXXcf0QAd1jk3iPNE6BafzCd8xjhQ2A=
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Fri, 30 Aug 2019 13:54:02 +0000 (UTC)
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

cGluZwoKPiAKPiBwaW5nCj4gCj4gPiAKPiA+IHBpbmcgdGhlIHNlcmllcwo+ID4gCj4gPiA+IAo+
ID4gPiBBbGxvd3MgdG8gcmVtb3ZlIF9TcGljZVVzYkRldmljZSBzdHJ1Y3R1cmUuCj4gPiA+IF9T
cGljZVVzYkRldmljZSBpcyBvbmx5IGNhY2hpbmcgdGhpcyB2YWx1ZSBmcm9tIFNwaWNlVXNiQmFj
a2VuZERldmljZS4KPiA+ID4gCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8
ZnppZ2xpb0ByZWRoYXQuY29tPgo+ID4gPiAtLS0KPiA+ID4gIHNyYy91c2ItYmFja2VuZC5jIHwg
OSArKysrKysrKysKPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKykKPiA+ID4g
Cj4gPiA+IGRpZmYgLS1naXQgYS9zcmMvdXNiLWJhY2tlbmQuYyBiL3NyYy91c2ItYmFja2VuZC5j
Cj4gPiA+IGluZGV4IDlhYzg1OTVjLi43ZTBlNGE4YSAxMDA2NDQKPiA+ID4gLS0tIGEvc3JjL3Vz
Yi1iYWNrZW5kLmMKPiA+ID4gKysrIGIvc3JjL3VzYi1iYWNrZW5kLmMKPiA+ID4gQEAgLTUwLDYg
KzUwLDggQEAgc3RydWN0IF9TcGljZVVzYkJhY2tlbmREZXZpY2UKPiA+ID4gICAgICBnaW50IHJl
Zl9jb3VudDsKPiA+ID4gICAgICBTcGljZVVzYkJhY2tlbmRDaGFubmVsICphdHRhY2hlZF90bzsK
PiA+ID4gICAgICBVc2JEZXZpY2VJbmZvcm1hdGlvbiBkZXZpY2VfaW5mbzsKPiA+ID4gKyAgICB1
aW50OF90IGNhY2hlZF9pc29jaHJvbm91c192YWxpZCA6IDE7Cj4gPiA+ICsgICAgdWludDhfdCBj
YWNoZWRfaXNvY2hyb25vdXMgOiAxOwo+ID4gPiAgfTsKPiA+ID4gIAo+ID4gPiAgc3RydWN0IF9T
cGljZVVzYkJhY2tlbmQKPiA+ID4gQEAgLTM0MSw2ICszNDMsMTAgQEAgZ2Jvb2xlYW4KPiA+ID4g
c3BpY2VfdXNiX2JhY2tlbmRfZGV2aWNlX2lzb2NoKFNwaWNlVXNiQmFja2VuZERldmljZSAqZGV2
KQo+ID4gPiAgICAgIGdpbnQgaSwgaiwgazsKPiA+ID4gICAgICBpbnQgcmM7Cj4gPiA+ICAKPiA+
ID4gKyAgICBpZiAoZGV2LT5jYWNoZWRfaXNvY2hyb25vdXNfdmFsaWQpIHsKPiA+ID4gKyAgICAg
ICAgcmV0dXJuIGRldi0+Y2FjaGVkX2lzb2Nocm9ub3VzOwo+ID4gPiArICAgIH0KPiA+ID4gKwo+
ID4gPiAgICAgIGdfcmV0dXJuX3ZhbF9pZl9mYWlsKGxpYmRldiAhPSBOVUxMLCAwKTsKPiA+ID4g
IAo+ID4gPiAgICAgIHJjID0gbGlidXNiX2dldF9hY3RpdmVfY29uZmlnX2Rlc2NyaXB0b3IobGli
ZGV2LCAmY29uZl9kZXNjKTsKPiA+ID4gQEAgLTM2Miw2ICszNjgsOSBAQCBnYm9vbGVhbgo+ID4g
PiBzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfaXNvY2goU3BpY2VVc2JCYWNrZW5kRGV2aWNlICpk
ZXYpCj4gPiA+ICAgICAgICAgIH0KPiA+ID4gICAgICB9Cj4gPiA+ICAKPiA+ID4gKyAgICBkZXYt
PmNhY2hlZF9pc29jaHJvbm91c192YWxpZCA9IFRSVUU7Cj4gPiA+ICsgICAgZGV2LT5jYWNoZWRf
aXNvY2hyb25vdXMgPSBpc29jX2ZvdW5kOwo+ID4gPiArCj4gPiA+ICAgICAgbGlidXNiX2ZyZWVf
Y29uZmlnX2Rlc2NyaXB0b3IoY29uZl9kZXNjKTsKPiA+ID4gICAgICByZXR1cm4gaXNvY19mb3Vu
ZDsKPiA+ID4gIH0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNl
LWRldmVs
