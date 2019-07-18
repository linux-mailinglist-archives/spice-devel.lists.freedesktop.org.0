Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 98EA56CA1B
	for <lists+spice-devel@lfdr.de>; Thu, 18 Jul 2019 09:41:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20A2B6E33B;
	Thu, 18 Jul 2019 07:41:40 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE2B66E331
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 07:41:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 862EC368FF
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 07:41:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 79A195B689
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 07:41:38 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 71AAB1800205
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 07:41:38 +0000 (UTC)
Date: Thu, 18 Jul 2019 03:41:38 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1870435311.688167.1563435698433.JavaMail.zimbra@redhat.com>
In-Reply-To: <1140148103.26605858.1562570922978.JavaMail.zimbra@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-13-fziglio@redhat.com>
 <787765103.22408096.1560318843235.JavaMail.zimbra@redhat.com>
 <1624039014.23041945.1560770916546.JavaMail.zimbra@redhat.com>
 <1177362725.25084675.1561708379499.JavaMail.zimbra@redhat.com>
 <1140148103.26605858.1562570922978.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.7, 10.4.195.8]
Thread-Topic: red-channel-client: Add some comment on the flush code
Thread-Index: 8X6mZCoxipN0bMwCw5WjFBx/s/a7XrgoxmDNiDeVOK8JlpGUF1MScxnf
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Thu, 18 Jul 2019 07:41:38 +0000 (UTC)
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
ID4gPiAKPiA+ID4gPiAKPiA+ID4gPiBwaW5nCj4gPiA+ID4gCj4gPiA+ID4gPiAKPiA+ID4gPiA+
IFNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgo+ID4g
PiA+ID4gLS0tCj4gPiA+ID4gPiAgc2VydmVyL3JlZC1jaGFubmVsLWNsaWVudC5jIHwgNiArKysr
KysKPiA+ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspCj4gPiA+ID4gPiAK
PiA+ID4gPiA+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvcmVkLWNoYW5uZWwtY2xpZW50LmMKPiA+ID4g
PiA+IGIvc2VydmVyL3JlZC1jaGFubmVsLWNsaWVudC5jCj4gPiA+ID4gPiBpbmRleCAzZmQ1MWQ3
OGIuLjMzNzczM2Q1ZCAxMDA2NDQKPiA+ID4gPiA+IC0tLSBhL3NlcnZlci9yZWQtY2hhbm5lbC1j
bGllbnQuYwo+ID4gPiA+ID4gKysrIGIvc2VydmVyL3JlZC1jaGFubmVsLWNsaWVudC5jCj4gPiA+
ID4gPiBAQCAtMTMxOSw2ICsxMzE5LDkgQEAgdm9pZCByZWRfY2hhbm5lbF9jbGllbnRfcHVzaChS
ZWRDaGFubmVsQ2xpZW50Cj4gPiA+ID4gPiAqcmNjKQo+ID4gPiA+ID4gICAgICAvKiBwcmVwYXJl
X3BpcGVfYWRkKCkgd2lsbCByZWVuYWJsZSBXUklURSBldmVudHMgd2hlbiB0aGUKPiA+ID4gPiA+
ICAgICAgcmNjLT5wcml2LT5waXBlIGlzIGVtcHR5Cj4gPiA+ID4gPiAgICAgICAqIHJlZF9jaGFu
bmVsX2NsaWVudF9hY2tfemVyb19tZXNzYWdlc193aW5kb3coKSB3aWxsIHJlZW5hYmxlCj4gPiA+
ID4gPiAgICAgICBXUklURQo+ID4gPiA+ID4gICAgICAgZXZlbnRzCj4gPiA+ID4gPiAgICAgICAq
IGlmIHdlIHdlcmUgd2FpdGluZyBmb3IgYWNrcyB0byBiZSByZWNlaXZlZAo+ID4gPiA+ID4gKyAg
ICAgKiBJZiB3ZSBkb24ndCByZW1vdmUgV1JJVEUgaWYgd2UgYXJlIHdhaXRpbmcgZm9yIGFjayB3
ZSB3aWxsIGJlCj4gPiA+ID4gPiBrZWVwCj4gPiA+ID4gPiArICAgICAqIG5vdGlmaWVkIHRoYXQg
d2UgY2FuIHdyaXRlIGFuZCB3ZSB0aGVuIGV4aXQgKHNlZQo+ID4gPiA+ID4gcGlwZV9pdGVtX2dl
dCkKPiA+ID4gPiA+IGFzCj4gPiA+ID4gPiB3ZQo+ID4gPiA+ID4gKyAgICAgKiBhcmUgd2FpdGlu
ZyBmb3IgdGhlIGFjayBjb25zdW1pbmcgQ1BVIGluIGEgdGlnaHQgbG9vcAo+ID4gPiA+ID4gICAg
ICAgKi8KPiA+ID4gPiA+ICAgICAgaWYgKChyZWRfY2hhbm5lbF9jbGllbnRfbm9faXRlbV9iZWlu
Z19zZW50KHJjYykgJiYKPiA+ID4gPiA+ICAgICAgZ19xdWV1ZV9pc19lbXB0eSgmcmNjLT5wcml2
LT5waXBlKSkgfHwKPiA+ID4gPiA+ICAgICAgICAgIHJlZF9jaGFubmVsX2NsaWVudF93YWl0aW5n
X2Zvcl9hY2socmNjKSkgewo+ID4gPiA+ID4gQEAgLTEzMjYsNiArMTMyOSw5IEBAIHZvaWQgcmVk
X2NoYW5uZWxfY2xpZW50X3B1c2goUmVkQ2hhbm5lbENsaWVudAo+ID4gPiA+ID4gKnJjYykKPiA+
ID4gPiA+ICAgICAgICAgIC8qIGNoYW5uZWwgaGFzIG5vIHBlbmRpbmcgZGF0YSB0byBzZW5kIHNv
IG5vdyB3ZSBjYW4gZmx1c2gKPiA+ID4gPiA+ICAgICAgICAgIGRhdGEKPiA+ID4gPiA+ICAgICAg
ICAgIGluCj4gPiA+ID4gPiAgICAgICAgICAgKiBvcmRlciB0byBhdm9pZCBkYXRhIHN0YWxsIGlu
dG8gYnVmZmVycyBpbiBjYXNlIG9mIG1hbnVhbAo+ID4gPiA+ID4gICAgICAgICAgICogZmx1c2hp
bmcKPiA+ID4gPiA+ICsgICAgICAgICAqIFdlIG5lZWQgdG8gZmx1c2ggYWxzbyBpbiBjYXNlIG9m
IGFjayBhcyBpdCBpcyBwb3NzaWJsZQo+ID4gPiA+ID4gKyAgICAgICAgICogdGhhdCBmb3IgYSBs
b25nIHRyYWluIG9mIHNtYWxsIG1lc3NhZ2VzIHRoZSBtZXNzYWdlIHRoYXQKPiA+ID4gPiA+IHdv
dWxkCj4gPiA+ID4gPiArICAgICAgICAgKiBjYXVzZSB0aGUgY2xpZW50IHRvIHNlbmQgdGhlIGFj
ayBpcyBzdGlsbCBpbiB0aGUgcXVldWUKPiA+ID4gPiA+ICAgICAgICAgICAqLwo+ID4gPiA+ID4g
ICAgICAgICAgcmVkX3N0cmVhbV9mbHVzaChyY2MtPnByaXYtPnN0cmVhbSk7Cj4gPiA+ID4gPiAg
ICAgIH0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3Bp
Y2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
