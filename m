Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF06261B40
	for <lists+spice-devel@lfdr.de>; Mon,  8 Jul 2019 09:28:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 359DB89C33;
	Mon,  8 Jul 2019 07:28:45 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B5C789C33
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 07:28:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 16EA483F3E
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 07:28:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0F3085D9E2
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 07:28:43 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 07F351833001
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 07:28:43 +0000 (UTC)
Date: Mon, 8 Jul 2019 03:28:42 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1140148103.26605858.1562570922978.JavaMail.zimbra@redhat.com>
In-Reply-To: <1177362725.25084675.1561708379499.JavaMail.zimbra@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-13-fziglio@redhat.com>
 <787765103.22408096.1560318843235.JavaMail.zimbra@redhat.com>
 <1624039014.23041945.1560770916546.JavaMail.zimbra@redhat.com>
 <1177362725.25084675.1561708379499.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.10, 10.4.195.6]
Thread-Topic: red-channel-client: Add some comment on the flush code
Thread-Index: 8X6mZCoxipN0bMwCw5WjFBx/s/a7XrgoxmDNiDeVOK8JlpGUFw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Mon, 08 Jul 2019 07:28:43 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 13/13] red-channel-client:
 Add some comment on the flush code
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

cGluZwoKPiAKPiBwaW5nCj4gCj4gPiAKPiA+IHBpbmcKPiA+IAo+ID4gPiAKPiA+ID4gcGluZwo+
ID4gPiAKPiA+ID4gPiAKPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6
aWdsaW9AcmVkaGF0LmNvbT4KPiA+ID4gPiAtLS0KPiA+ID4gPiAgc2VydmVyL3JlZC1jaGFubmVs
LWNsaWVudC5jIHwgNiArKysrKysKPiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9u
cygrKQo+ID4gPiA+IAo+ID4gPiA+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvcmVkLWNoYW5uZWwtY2xp
ZW50LmMgYi9zZXJ2ZXIvcmVkLWNoYW5uZWwtY2xpZW50LmMKPiA+ID4gPiBpbmRleCAzZmQ1MWQ3
OGIuLjMzNzczM2Q1ZCAxMDA2NDQKPiA+ID4gPiAtLS0gYS9zZXJ2ZXIvcmVkLWNoYW5uZWwtY2xp
ZW50LmMKPiA+ID4gPiArKysgYi9zZXJ2ZXIvcmVkLWNoYW5uZWwtY2xpZW50LmMKPiA+ID4gPiBA
QCAtMTMxOSw2ICsxMzE5LDkgQEAgdm9pZCByZWRfY2hhbm5lbF9jbGllbnRfcHVzaChSZWRDaGFu
bmVsQ2xpZW50Cj4gPiA+ID4gKnJjYykKPiA+ID4gPiAgICAgIC8qIHByZXBhcmVfcGlwZV9hZGQo
KSB3aWxsIHJlZW5hYmxlIFdSSVRFIGV2ZW50cyB3aGVuIHRoZQo+ID4gPiA+ICAgICAgcmNjLT5w
cml2LT5waXBlIGlzIGVtcHR5Cj4gPiA+ID4gICAgICAgKiByZWRfY2hhbm5lbF9jbGllbnRfYWNr
X3plcm9fbWVzc2FnZXNfd2luZG93KCkgd2lsbCByZWVuYWJsZQo+ID4gPiA+ICAgICAgIFdSSVRF
Cj4gPiA+ID4gICAgICAgZXZlbnRzCj4gPiA+ID4gICAgICAgKiBpZiB3ZSB3ZXJlIHdhaXRpbmcg
Zm9yIGFja3MgdG8gYmUgcmVjZWl2ZWQKPiA+ID4gPiArICAgICAqIElmIHdlIGRvbid0IHJlbW92
ZSBXUklURSBpZiB3ZSBhcmUgd2FpdGluZyBmb3IgYWNrIHdlIHdpbGwgYmUKPiA+ID4gPiBrZWVw
Cj4gPiA+ID4gKyAgICAgKiBub3RpZmllZCB0aGF0IHdlIGNhbiB3cml0ZSBhbmQgd2UgdGhlbiBl
eGl0IChzZWUgcGlwZV9pdGVtX2dldCkKPiA+ID4gPiBhcwo+ID4gPiA+IHdlCj4gPiA+ID4gKyAg
ICAgKiBhcmUgd2FpdGluZyBmb3IgdGhlIGFjayBjb25zdW1pbmcgQ1BVIGluIGEgdGlnaHQgbG9v
cAo+ID4gPiA+ICAgICAgICovCj4gPiA+ID4gICAgICBpZiAoKHJlZF9jaGFubmVsX2NsaWVudF9u
b19pdGVtX2JlaW5nX3NlbnQocmNjKSAmJgo+ID4gPiA+ICAgICAgZ19xdWV1ZV9pc19lbXB0eSgm
cmNjLT5wcml2LT5waXBlKSkgfHwKPiA+ID4gPiAgICAgICAgICByZWRfY2hhbm5lbF9jbGllbnRf
d2FpdGluZ19mb3JfYWNrKHJjYykpIHsKPiA+ID4gPiBAQCAtMTMyNiw2ICsxMzI5LDkgQEAgdm9p
ZCByZWRfY2hhbm5lbF9jbGllbnRfcHVzaChSZWRDaGFubmVsQ2xpZW50Cj4gPiA+ID4gKnJjYykK
PiA+ID4gPiAgICAgICAgICAvKiBjaGFubmVsIGhhcyBubyBwZW5kaW5nIGRhdGEgdG8gc2VuZCBz
byBub3cgd2UgY2FuIGZsdXNoCj4gPiA+ID4gICAgICAgICAgZGF0YQo+ID4gPiA+ICAgICAgICAg
IGluCj4gPiA+ID4gICAgICAgICAgICogb3JkZXIgdG8gYXZvaWQgZGF0YSBzdGFsbCBpbnRvIGJ1
ZmZlcnMgaW4gY2FzZSBvZiBtYW51YWwKPiA+ID4gPiAgICAgICAgICAgKiBmbHVzaGluZwo+ID4g
PiA+ICsgICAgICAgICAqIFdlIG5lZWQgdG8gZmx1c2ggYWxzbyBpbiBjYXNlIG9mIGFjayBhcyBp
dCBpcyBwb3NzaWJsZQo+ID4gPiA+ICsgICAgICAgICAqIHRoYXQgZm9yIGEgbG9uZyB0cmFpbiBv
ZiBzbWFsbCBtZXNzYWdlcyB0aGUgbWVzc2FnZSB0aGF0Cj4gPiA+ID4gd291bGQKPiA+ID4gPiAr
ICAgICAgICAgKiBjYXVzZSB0aGUgY2xpZW50IHRvIHNlbmQgdGhlIGFjayBpcyBzdGlsbCBpbiB0
aGUgcXVldWUKPiA+ID4gPiAgICAgICAgICAgKi8KPiA+ID4gPiAgICAgICAgICByZWRfc3RyZWFt
X2ZsdXNoKHJjYy0+cHJpdi0+c3RyZWFtKTsKPiA+ID4gPiAgICAgIH0KPiA+ID4gCj4gPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0Cj4gPiBTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+
IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2
ZWwKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IFNw
aWNlLWRldmVsIG1haWxpbmcgbGlzdAo+IFNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2Ut
ZGV2ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3Bp
Y2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
