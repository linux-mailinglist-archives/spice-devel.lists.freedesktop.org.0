Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE34F7632F
	for <lists+spice-devel@lfdr.de>; Fri, 26 Jul 2019 12:09:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33BA789358;
	Fri, 26 Jul 2019 10:09:23 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA92A8915F
 for <spice-devel@lists.freedesktop.org>; Fri, 26 Jul 2019 10:09:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 80E50C0AF071
 for <spice-devel@lists.freedesktop.org>; Fri, 26 Jul 2019 10:09:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 7921960C44
 for <spice-devel@lists.freedesktop.org>; Fri, 26 Jul 2019 10:09:21 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7133318089C8
 for <spice-devel@lists.freedesktop.org>; Fri, 26 Jul 2019 10:09:21 +0000 (UTC)
Date: Fri, 26 Jul 2019 06:09:21 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <814894840.3099749.1564135761429.JavaMail.zimbra@redhat.com>
In-Reply-To: <1870435311.688167.1563435698433.JavaMail.zimbra@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-13-fziglio@redhat.com>
 <787765103.22408096.1560318843235.JavaMail.zimbra@redhat.com>
 <1624039014.23041945.1560770916546.JavaMail.zimbra@redhat.com>
 <1177362725.25084675.1561708379499.JavaMail.zimbra@redhat.com>
 <1140148103.26605858.1562570922978.JavaMail.zimbra@redhat.com>
 <1870435311.688167.1563435698433.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.15, 10.4.195.26]
Thread-Topic: red-channel-client: Add some comment on the flush code
Thread-Index: 8X6mZCoxipN0bMwCw5WjFBx/s/a7XrgoxmDNiDeVOK8JlpGUF1MScxnflGVS1Vg=
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Fri, 26 Jul 2019 10:09:21 +0000 (UTC)
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
IHBpbmcKPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTog
RnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Cj4gPiA+ID4gPiA+IC0tLQo+ID4g
PiA+ID4gPiAgc2VydmVyL3JlZC1jaGFubmVsLWNsaWVudC5jIHwgNiArKysrKysKPiA+ID4gPiA+
ID4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKPiA+ID4gPiA+ID4gCj4gPiA+ID4g
PiA+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvcmVkLWNoYW5uZWwtY2xpZW50LmMKPiA+ID4gPiA+ID4g
Yi9zZXJ2ZXIvcmVkLWNoYW5uZWwtY2xpZW50LmMKPiA+ID4gPiA+ID4gaW5kZXggM2ZkNTFkNzhi
Li4zMzc3MzNkNWQgMTAwNjQ0Cj4gPiA+ID4gPiA+IC0tLSBhL3NlcnZlci9yZWQtY2hhbm5lbC1j
bGllbnQuYwo+ID4gPiA+ID4gPiArKysgYi9zZXJ2ZXIvcmVkLWNoYW5uZWwtY2xpZW50LmMKPiA+
ID4gPiA+ID4gQEAgLTEzMTksNiArMTMxOSw5IEBAIHZvaWQgcmVkX2NoYW5uZWxfY2xpZW50X3B1
c2goUmVkQ2hhbm5lbENsaWVudAo+ID4gPiA+ID4gPiAqcmNjKQo+ID4gPiA+ID4gPiAgICAgIC8q
IHByZXBhcmVfcGlwZV9hZGQoKSB3aWxsIHJlZW5hYmxlIFdSSVRFIGV2ZW50cyB3aGVuIHRoZQo+
ID4gPiA+ID4gPiAgICAgIHJjYy0+cHJpdi0+cGlwZSBpcyBlbXB0eQo+ID4gPiA+ID4gPiAgICAg
ICAqIHJlZF9jaGFubmVsX2NsaWVudF9hY2tfemVyb19tZXNzYWdlc193aW5kb3coKSB3aWxsIHJl
ZW5hYmxlCj4gPiA+ID4gPiA+ICAgICAgIFdSSVRFCj4gPiA+ID4gPiA+ICAgICAgIGV2ZW50cwo+
ID4gPiA+ID4gPiAgICAgICAqIGlmIHdlIHdlcmUgd2FpdGluZyBmb3IgYWNrcyB0byBiZSByZWNl
aXZlZAo+ID4gPiA+ID4gPiArICAgICAqIElmIHdlIGRvbid0IHJlbW92ZSBXUklURSBpZiB3ZSBh
cmUgd2FpdGluZyBmb3IgYWNrIHdlIHdpbGwKPiA+ID4gPiA+ID4gYmUKPiA+ID4gPiA+ID4ga2Vl
cAo+ID4gPiA+ID4gPiArICAgICAqIG5vdGlmaWVkIHRoYXQgd2UgY2FuIHdyaXRlIGFuZCB3ZSB0
aGVuIGV4aXQgKHNlZQo+ID4gPiA+ID4gPiBwaXBlX2l0ZW1fZ2V0KQo+ID4gPiA+ID4gPiBhcwo+
ID4gPiA+ID4gPiB3ZQo+ID4gPiA+ID4gPiArICAgICAqIGFyZSB3YWl0aW5nIGZvciB0aGUgYWNr
IGNvbnN1bWluZyBDUFUgaW4gYSB0aWdodCBsb29wCj4gPiA+ID4gPiA+ICAgICAgICovCj4gPiA+
ID4gPiA+ICAgICAgaWYgKChyZWRfY2hhbm5lbF9jbGllbnRfbm9faXRlbV9iZWluZ19zZW50KHJj
YykgJiYKPiA+ID4gPiA+ID4gICAgICBnX3F1ZXVlX2lzX2VtcHR5KCZyY2MtPnByaXYtPnBpcGUp
KSB8fAo+ID4gPiA+ID4gPiAgICAgICAgICByZWRfY2hhbm5lbF9jbGllbnRfd2FpdGluZ19mb3Jf
YWNrKHJjYykpIHsKPiA+ID4gPiA+ID4gQEAgLTEzMjYsNiArMTMyOSw5IEBAIHZvaWQgcmVkX2No
YW5uZWxfY2xpZW50X3B1c2goUmVkQ2hhbm5lbENsaWVudAo+ID4gPiA+ID4gPiAqcmNjKQo+ID4g
PiA+ID4gPiAgICAgICAgICAvKiBjaGFubmVsIGhhcyBubyBwZW5kaW5nIGRhdGEgdG8gc2VuZCBz
byBub3cgd2UgY2FuIGZsdXNoCj4gPiA+ID4gPiA+ICAgICAgICAgIGRhdGEKPiA+ID4gPiA+ID4g
ICAgICAgICAgaW4KPiA+ID4gPiA+ID4gICAgICAgICAgICogb3JkZXIgdG8gYXZvaWQgZGF0YSBz
dGFsbCBpbnRvIGJ1ZmZlcnMgaW4gY2FzZSBvZgo+ID4gPiA+ID4gPiAgICAgICAgICAgbWFudWFs
Cj4gPiA+ID4gPiA+ICAgICAgICAgICAqIGZsdXNoaW5nCj4gPiA+ID4gPiA+ICsgICAgICAgICAq
IFdlIG5lZWQgdG8gZmx1c2ggYWxzbyBpbiBjYXNlIG9mIGFjayBhcyBpdCBpcyBwb3NzaWJsZQo+
ID4gPiA+ID4gPiArICAgICAgICAgKiB0aGF0IGZvciBhIGxvbmcgdHJhaW4gb2Ygc21hbGwgbWVz
c2FnZXMgdGhlIG1lc3NhZ2UKPiA+ID4gPiA+ID4gdGhhdAo+ID4gPiA+ID4gPiB3b3VsZAo+ID4g
PiA+ID4gPiArICAgICAgICAgKiBjYXVzZSB0aGUgY2xpZW50IHRvIHNlbmQgdGhlIGFjayBpcyBz
dGlsbCBpbiB0aGUgcXVldWUKPiA+ID4gPiA+ID4gICAgICAgICAgICovCj4gPiA+ID4gPiA+ICAg
ICAgICAgIHJlZF9zdHJlYW1fZmx1c2gocmNjLT5wcml2LT5zdHJlYW0pOwo+ID4gPiA+ID4gPiAg
ICAgIH0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3Bp
Y2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
