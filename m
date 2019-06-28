Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DAAE59562
	for <lists+spice-devel@lfdr.de>; Fri, 28 Jun 2019 09:53:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 112AF6E89E;
	Fri, 28 Jun 2019 07:53:02 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 408586E89E
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:53:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E01CF308424E
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:52:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id D64D360BE5
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:52:59 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8574F4EA62
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:52:59 +0000 (UTC)
Date: Fri, 28 Jun 2019 03:52:59 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1177362725.25084675.1561708379499.JavaMail.zimbra@redhat.com>
In-Reply-To: <1624039014.23041945.1560770916546.JavaMail.zimbra@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-13-fziglio@redhat.com>
 <787765103.22408096.1560318843235.JavaMail.zimbra@redhat.com>
 <1624039014.23041945.1560770916546.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.3, 10.4.195.27]
Thread-Topic: red-channel-client: Add some comment on the flush code
Thread-Index: 8X6mZCoxipN0bMwCw5WjFBx/s/a7XrgoxmDNiDeVOK8=
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Fri, 28 Jun 2019 07:52:59 +0000 (UTC)
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

cGluZwoKPiAKPiBwaW5nCj4gCj4gPiAKPiA+IHBpbmcKPiA+IAo+ID4gPiAKPiA+ID4gU2lnbmVk
LW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Cj4gPiA+IC0tLQo+
ID4gPiAgc2VydmVyL3JlZC1jaGFubmVsLWNsaWVudC5jIHwgNiArKysrKysKPiA+ID4gIDEgZmls
ZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKPiA+ID4gCj4gPiA+IGRpZmYgLS1naXQgYS9zZXJ2
ZXIvcmVkLWNoYW5uZWwtY2xpZW50LmMgYi9zZXJ2ZXIvcmVkLWNoYW5uZWwtY2xpZW50LmMKPiA+
ID4gaW5kZXggM2ZkNTFkNzhiLi4zMzc3MzNkNWQgMTAwNjQ0Cj4gPiA+IC0tLSBhL3NlcnZlci9y
ZWQtY2hhbm5lbC1jbGllbnQuYwo+ID4gPiArKysgYi9zZXJ2ZXIvcmVkLWNoYW5uZWwtY2xpZW50
LmMKPiA+ID4gQEAgLTEzMTksNiArMTMxOSw5IEBAIHZvaWQgcmVkX2NoYW5uZWxfY2xpZW50X3B1
c2goUmVkQ2hhbm5lbENsaWVudCAqcmNjKQo+ID4gPiAgICAgIC8qIHByZXBhcmVfcGlwZV9hZGQo
KSB3aWxsIHJlZW5hYmxlIFdSSVRFIGV2ZW50cyB3aGVuIHRoZQo+ID4gPiAgICAgIHJjYy0+cHJp
di0+cGlwZSBpcyBlbXB0eQo+ID4gPiAgICAgICAqIHJlZF9jaGFubmVsX2NsaWVudF9hY2tfemVy
b19tZXNzYWdlc193aW5kb3coKSB3aWxsIHJlZW5hYmxlIFdSSVRFCj4gPiA+ICAgICAgIGV2ZW50
cwo+ID4gPiAgICAgICAqIGlmIHdlIHdlcmUgd2FpdGluZyBmb3IgYWNrcyB0byBiZSByZWNlaXZl
ZAo+ID4gPiArICAgICAqIElmIHdlIGRvbid0IHJlbW92ZSBXUklURSBpZiB3ZSBhcmUgd2FpdGlu
ZyBmb3IgYWNrIHdlIHdpbGwgYmUKPiA+ID4ga2VlcAo+ID4gPiArICAgICAqIG5vdGlmaWVkIHRo
YXQgd2UgY2FuIHdyaXRlIGFuZCB3ZSB0aGVuIGV4aXQgKHNlZSBwaXBlX2l0ZW1fZ2V0KQo+ID4g
PiBhcwo+ID4gPiB3ZQo+ID4gPiArICAgICAqIGFyZSB3YWl0aW5nIGZvciB0aGUgYWNrIGNvbnN1
bWluZyBDUFUgaW4gYSB0aWdodCBsb29wCj4gPiA+ICAgICAgICovCj4gPiA+ICAgICAgaWYgKChy
ZWRfY2hhbm5lbF9jbGllbnRfbm9faXRlbV9iZWluZ19zZW50KHJjYykgJiYKPiA+ID4gICAgICBn
X3F1ZXVlX2lzX2VtcHR5KCZyY2MtPnByaXYtPnBpcGUpKSB8fAo+ID4gPiAgICAgICAgICByZWRf
Y2hhbm5lbF9jbGllbnRfd2FpdGluZ19mb3JfYWNrKHJjYykpIHsKPiA+ID4gQEAgLTEzMjYsNiAr
MTMyOSw5IEBAIHZvaWQgcmVkX2NoYW5uZWxfY2xpZW50X3B1c2goUmVkQ2hhbm5lbENsaWVudCAq
cmNjKQo+ID4gPiAgICAgICAgICAvKiBjaGFubmVsIGhhcyBubyBwZW5kaW5nIGRhdGEgdG8gc2Vu
ZCBzbyBub3cgd2UgY2FuIGZsdXNoIGRhdGEKPiA+ID4gICAgICAgICAgaW4KPiA+ID4gICAgICAg
ICAgICogb3JkZXIgdG8gYXZvaWQgZGF0YSBzdGFsbCBpbnRvIGJ1ZmZlcnMgaW4gY2FzZSBvZiBt
YW51YWwKPiA+ID4gICAgICAgICAgICogZmx1c2hpbmcKPiA+ID4gKyAgICAgICAgICogV2UgbmVl
ZCB0byBmbHVzaCBhbHNvIGluIGNhc2Ugb2YgYWNrIGFzIGl0IGlzIHBvc3NpYmxlCj4gPiA+ICsg
ICAgICAgICAqIHRoYXQgZm9yIGEgbG9uZyB0cmFpbiBvZiBzbWFsbCBtZXNzYWdlcyB0aGUgbWVz
c2FnZSB0aGF0Cj4gPiA+IHdvdWxkCj4gPiA+ICsgICAgICAgICAqIGNhdXNlIHRoZSBjbGllbnQg
dG8gc2VuZCB0aGUgYWNrIGlzIHN0aWxsIGluIHRoZSBxdWV1ZQo+ID4gPiAgICAgICAgICAgKi8K
PiA+ID4gICAgICAgICAgcmVkX3N0cmVhbV9mbHVzaChyY2MtPnByaXYtPnN0cmVhbSk7Cj4gPiA+
ICAgICAgfQo+ID4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBTcGljZS1kZXZlbEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL3NwaWNlLWRldmVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9z
cGljZS1kZXZlbA==
