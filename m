Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DFC7B610C
	for <lists+spice-devel@lfdr.de>; Wed, 18 Sep 2019 12:06:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDA426EE9E;
	Wed, 18 Sep 2019 10:06:38 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFE746EE9E
 for <spice-devel@lists.freedesktop.org>; Wed, 18 Sep 2019 10:06:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5B4F1307D84D
 for <spice-devel@lists.freedesktop.org>; Wed, 18 Sep 2019 10:06:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 51DC360C05
 for <spice-devel@lists.freedesktop.org>; Wed, 18 Sep 2019 10:06:37 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 45CA31808878;
 Wed, 18 Sep 2019 10:06:37 +0000 (UTC)
Date: Wed, 18 Sep 2019 06:06:37 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <1456153170.451197.1568801197252.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190916102104.20943-6-victortoso@redhat.com>
References: <20190916102104.20943-1-victortoso@redhat.com>
 <20190916102104.20943-6-victortoso@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.16, 10.4.195.5]
Thread-Topic: usb-backend: add guard and doc to check_filter()
Thread-Index: aCaxUNPl307OO2lgUfc8T9ZaZhagAg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Wed, 18 Sep 2019 10:06:37 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH v7 05/20] usb-backend: add guard and doc
 to check_filter()
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

PiAKPiBGcm9tOiBWaWN0b3IgVG9zbyA8bWVAdmljdG9ydG9zby5jb20+Cj4gCj4gKiBBZGQgZG9j
dW1lbnRhdGlvbiBvbiBzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfY2hlY2tfZmlsdGVyKCkKPiAq
IEFkZCBndWFyZCBvbiBsaWJ1c2JfZGV2aWNlCj4gKiBBZGRzIEdfR05VQ0VfSU5URVJOQUwgYXMg
dGhpcyBpcyBvbmx5IGNhbGxlZCBpbnRlcm5hbGx5IGluCgpUeXBvOiBHX0dOVUNFX0lOVEVSTkFM
IC0+IEdfR05VQ19JTlRFUk5BTAoKPiAgIHVzYi1kZXZpY2UtbWFuYWdlci5jCj4gKiBDaGFuZ2Vk
IHRoZSBzdHlsZSBhIGJpdCwgc3RpbGwgdW5kZXIgMTAwIGNoYXIgaW4gYSBzaW5nbGUgbGluZQo+
IAo+IFRoaXMgaXMgYSBwcmVwYXJhdG9yeSBwYXRjaCBmb3IgZXh0ZW5kaW5nIHVzYi1iYWNrZW5k
IGZvciBlbXVsYXRlZAo+IGRldmljZXMuCj4gCj4gU2lnbmVkLW9mZi1ieTogVmljdG9yIFRvc28g
PHZpY3RvcnRvc29AcmVkaGF0LmNvbT4KPiAtLS0KPiAgc3JjL3VzYi1iYWNrZW5kLmMgfCAxMyAr
KysrKystLS0tLS0tCj4gIHNyYy91c2ItYmFja2VuZC5oIHwgIDQgKysrLQo+ICAyIGZpbGVzIGNo
YW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEv
c3JjL3VzYi1iYWNrZW5kLmMgYi9zcmMvdXNiLWJhY2tlbmQuYwo+IGluZGV4IDMyNTgyNDAuLjZl
ZDk1N2MgMTAwNjQ0Cj4gLS0tIGEvc3JjL3VzYi1iYWNrZW5kLmMKPiArKysgYi9zcmMvdXNiLWJh
Y2tlbmQuYwo+IEBAIC0zNjgsNyArMzY4LDYgQEAgZ2Jvb2xlYW4KPiBzcGljZV91c2JfYmFja2Vu
ZF9kZXZpY2VfaXNvY2goU3BpY2VVc2JCYWNrZW5kRGV2aWNlICpkZXYpCj4gICAgICAgICAgcmV0
dXJuIGRldi0+Y2FjaGVkX2lzb2Nocm9ub3VzOwo+ICAgICAgfQo+ICAKPiAtCj4gICAgICByYyA9
IGxpYnVzYl9nZXRfYWN0aXZlX2NvbmZpZ19kZXNjcmlwdG9yKGxpYmRldiwgJmNvbmZfZGVzYyk7
Cj4gICAgICBpZiAocmMpIHsKPiAgICAgICAgICBjb25zdCBjaGFyICpkZXNjID0gbGlidXNiX3N0
cmVycm9yKHJjKTsKCkxvb2tzIGxpa2Ugc3B1cmlvdXMsIG1heWJlIHNob3VsZCBiZSBtb3ZlZCBp
biB0aGlzIHNlcmllcz8KCj4gQEAgLTU2NiwxMyArNTY1LDEzIEBAIHZvaWQKPiBzcGljZV91c2Jf
YmFja2VuZF9kZXZpY2VfdW5yZWYoU3BpY2VVc2JCYWNrZW5kRGV2aWNlICpkZXYpCj4gICAgICB9
Cj4gIH0KPiAgCj4gLWludCBzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfY2hlY2tfZmlsdGVyKAo+
IC0gICAgU3BpY2VVc2JCYWNrZW5kRGV2aWNlICpkZXYsCj4gLSAgICBjb25zdCBzdHJ1Y3QgdXNi
cmVkaXJmaWx0ZXJfcnVsZSAqcnVsZXMsCj4gLSAgICBpbnQgY291bnQpCj4gK0dfR05VQ19JTlRF
Uk5BTAo+ICtpbnQgc3BpY2VfdXNiX2JhY2tlbmRfZGV2aWNlX2NoZWNrX2ZpbHRlcihTcGljZVVz
YkJhY2tlbmREZXZpY2UgKmRldiwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgY29uc3Qgc3RydWN0IHVzYnJlZGlyZmlsdGVyX3J1bGUKPiAqcnVsZXMsCj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGludCBjb3VudCkKPiAgewo+
IC0gICAgcmV0dXJuIHVzYnJlZGlyaG9zdF9jaGVja19kZXZpY2VfZmlsdGVyKAo+IC0gICAgICAg
IHJ1bGVzLCBjb3VudCwgZGV2LT5saWJ1c2JfZGV2aWNlLCAwKTsKPiArICAgIGdfcmV0dXJuX3Zh
bF9pZl9mYWlsKGRldi0+bGlidXNiX2RldmljZSAhPSBOVUxMLCAtRUlOVkFMKTsKPiArICAgIHJl
dHVybiB1c2JyZWRpcmhvc3RfY2hlY2tfZGV2aWNlX2ZpbHRlcihydWxlcywgY291bnQsCj4gZGV2
LT5saWJ1c2JfZGV2aWNlLCAwKTsKPiAgfQo+ICAKPiAgc3RhdGljIGludCB1c2JyZWRpcl9yZWFk
X2NhbGxiYWNrKHZvaWQgKnVzZXJfZGF0YSwgdWludDhfdCAqZGF0YSwgaW50IGNvdW50KQo+IGRp
ZmYgLS1naXQgYS9zcmMvdXNiLWJhY2tlbmQuaCBiL3NyYy91c2ItYmFja2VuZC5oCj4gaW5kZXgg
NDZiNzQyZS4uNDY3MTNjMSAxMDA2NDQKPiAtLS0gYS9zcmMvdXNiLWJhY2tlbmQuaAo+ICsrKyBi
L3NyYy91c2ItYmFja2VuZC5oCj4gQEAgLTcwLDcgKzcwLDkgQEAgdm9pZCBzcGljZV91c2JfYmFj
a2VuZF9kZXZpY2VfdW5yZWYoU3BpY2VVc2JCYWNrZW5kRGV2aWNlCj4gKmRldik7Cj4gIGdjb25z
dHBvaW50ZXIgc3BpY2VfdXNiX2JhY2tlbmRfZGV2aWNlX2dldF9saWJkZXYoY29uc3QKPiAgU3Bp
Y2VVc2JCYWNrZW5kRGV2aWNlICpkZXYpOwo+ICBjb25zdCBVc2JEZXZpY2VJbmZvcm1hdGlvbiog
c3BpY2VfdXNiX2JhY2tlbmRfZGV2aWNlX2dldF9pbmZvKGNvbnN0Cj4gIFNwaWNlVXNiQmFja2Vu
ZERldmljZSAqZGV2KTsKPiAgZ2Jvb2xlYW4gc3BpY2VfdXNiX2JhY2tlbmRfZGV2aWNlX2lzb2No
KFNwaWNlVXNiQmFja2VuZERldmljZSAqZGV2KTsKPiAtLyogcmV0dXJucyAwIGlmIHRoZSBkZXZp
Y2UgcGFzc2VzIHRoZSBmaWx0ZXIgKi8KPiArCj4gKy8qIHJldHVybnMgMCBpZiB0aGUgZGV2aWNl
IHBhc3NlcyB0aGUgZmlsdGVyIG90aGVyd2lzZSByZXR1cm5zIHRoZSBlcnJvcgo+IHZhbHVlIGZy
b20KPiArICogdXNicmVkaXJob3N0X2NoZWNrX2RldmljZV9maWx0ZXIoKSBzdWNoIGFzIC1FSU8g
b3IgLUVOT01FTSAqLwo+ICBpbnQgc3BpY2VfdXNiX2JhY2tlbmRfZGV2aWNlX2NoZWNrX2ZpbHRl
cihTcGljZVVzYkJhY2tlbmREZXZpY2UgKmRldiwKPiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgY29uc3Qgc3RydWN0IHVzYnJlZGlyZmlsdGVyX3J1bGUKPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKnJ1bGVzLCBpbnQgY291bnQp
Owo+ICAKCk90aGVyd2lzZSwKICAgQWNrZWQtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0By
ZWRoYXQuY29tPgoKRnJlZGlhbm8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL3NwaWNlLWRldmVs
