Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B4E888BA
	for <lists+spice-devel@lfdr.de>; Sat, 10 Aug 2019 08:01:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B4286EF40;
	Sat, 10 Aug 2019 06:01:01 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12CA26EF40
 for <spice-devel@lists.freedesktop.org>; Sat, 10 Aug 2019 06:01:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 649EF30BA06F
 for <spice-devel@lists.freedesktop.org>; Sat, 10 Aug 2019 06:00:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 5B43260933
 for <spice-devel@lists.freedesktop.org>; Sat, 10 Aug 2019 06:00:59 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 519404A460
 for <spice-devel@lists.freedesktop.org>; Sat, 10 Aug 2019 06:00:59 +0000 (UTC)
Date: Sat, 10 Aug 2019 02:00:57 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1272629391.5430056.1565416857094.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190725134353.23174-1-fziglio@redhat.com>
References: <20190725134353.23174-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.16, 10.4.195.27]
Thread-Topic: usb-backend: Cache isochronous value
Thread-Index: OngSoASKDNJUkXXcf0QAd1jk3iPNEw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Sat, 10 Aug 2019 06:00:59 +0000 (UTC)
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

cGluZyB0aGUgc2VyaWVzCgo+IAo+IEFsbG93cyB0byByZW1vdmUgX1NwaWNlVXNiRGV2aWNlIHN0
cnVjdHVyZS4KPiBfU3BpY2VVc2JEZXZpY2UgaXMgb25seSBjYWNoaW5nIHRoaXMgdmFsdWUgZnJv
bSBTcGljZVVzYkJhY2tlbmREZXZpY2UuCj4gCj4gU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmln
bGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Cj4gLS0tCj4gIHNyYy91c2ItYmFja2VuZC5jIHwgOSAr
KysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1n
aXQgYS9zcmMvdXNiLWJhY2tlbmQuYyBiL3NyYy91c2ItYmFja2VuZC5jCj4gaW5kZXggOWFjODU5
NWMuLjdlMGU0YThhIDEwMDY0NAo+IC0tLSBhL3NyYy91c2ItYmFja2VuZC5jCj4gKysrIGIvc3Jj
L3VzYi1iYWNrZW5kLmMKPiBAQCAtNTAsNiArNTAsOCBAQCBzdHJ1Y3QgX1NwaWNlVXNiQmFja2Vu
ZERldmljZQo+ICAgICAgZ2ludCByZWZfY291bnQ7Cj4gICAgICBTcGljZVVzYkJhY2tlbmRDaGFu
bmVsICphdHRhY2hlZF90bzsKPiAgICAgIFVzYkRldmljZUluZm9ybWF0aW9uIGRldmljZV9pbmZv
Owo+ICsgICAgdWludDhfdCBjYWNoZWRfaXNvY2hyb25vdXNfdmFsaWQgOiAxOwo+ICsgICAgdWlu
dDhfdCBjYWNoZWRfaXNvY2hyb25vdXMgOiAxOwo+ICB9Owo+ICAKPiAgc3RydWN0IF9TcGljZVVz
YkJhY2tlbmQKPiBAQCAtMzQxLDYgKzM0MywxMCBAQCBnYm9vbGVhbgo+IHNwaWNlX3VzYl9iYWNr
ZW5kX2RldmljZV9pc29jaChTcGljZVVzYkJhY2tlbmREZXZpY2UgKmRldikKPiAgICAgIGdpbnQg
aSwgaiwgazsKPiAgICAgIGludCByYzsKPiAgCj4gKyAgICBpZiAoZGV2LT5jYWNoZWRfaXNvY2hy
b25vdXNfdmFsaWQpIHsKPiArICAgICAgICByZXR1cm4gZGV2LT5jYWNoZWRfaXNvY2hyb25vdXM7
Cj4gKyAgICB9Cj4gKwo+ICAgICAgZ19yZXR1cm5fdmFsX2lmX2ZhaWwobGliZGV2ICE9IE5VTEws
IDApOwo+ICAKPiAgICAgIHJjID0gbGlidXNiX2dldF9hY3RpdmVfY29uZmlnX2Rlc2NyaXB0b3Io
bGliZGV2LCAmY29uZl9kZXNjKTsKPiBAQCAtMzYyLDYgKzM2OCw5IEBAIGdib29sZWFuCj4gc3Bp
Y2VfdXNiX2JhY2tlbmRfZGV2aWNlX2lzb2NoKFNwaWNlVXNiQmFja2VuZERldmljZSAqZGV2KQo+
ICAgICAgICAgIH0KPiAgICAgIH0KPiAgCj4gKyAgICBkZXYtPmNhY2hlZF9pc29jaHJvbm91c192
YWxpZCA9IFRSVUU7Cj4gKyAgICBkZXYtPmNhY2hlZF9pc29jaHJvbm91cyA9IGlzb2NfZm91bmQ7
Cj4gKwo+ICAgICAgbGlidXNiX2ZyZWVfY29uZmlnX2Rlc2NyaXB0b3IoY29uZl9kZXNjKTsKPiAg
ICAgIHJldHVybiBpc29jX2ZvdW5kOwo+ICB9Cj4gLS0KPiAyLjIwLjEKPiAKPiAKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGlu
ZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
