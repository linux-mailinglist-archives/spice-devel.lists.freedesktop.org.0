Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A2AD1618A
	for <lists+spice-devel@lfdr.de>; Tue,  7 May 2019 11:53:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2201589FD1;
	Tue,  7 May 2019 09:53:48 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8314889FD1
 for <spice-devel@lists.freedesktop.org>; Tue,  7 May 2019 09:53:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2D7A13091761
 for <spice-devel@lists.freedesktop.org>; Tue,  7 May 2019 09:53:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 234E627BA4
 for <spice-devel@lists.freedesktop.org>; Tue,  7 May 2019 09:53:47 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1799018089CA;
 Tue,  7 May 2019 09:53:47 +0000 (UTC)
Date: Tue, 7 May 2019 05:53:45 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Uri Lublin <uril@redhat.com>
Message-ID: <899502649.17159706.1557222825756.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190507094855.20634-1-uril@redhat.com>
References: <20190507094855.20634-1-uril@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.17, 10.4.195.11]
Thread-Topic: build: do not warn about address-of-packed-member
Thread-Index: VBcK+w0GobbZWeQL+5lKO6dw2r6Fqg==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Tue, 07 May 2019 09:53:47 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] build: do not warn about
 address-of-packed-member
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

PiAKPiBUaGUgZ2NjIHdhcm5pbmcgYWRkcmVzcy1vZi1wYWNrZWQtbWVtYmVyIGlzIG5ldyBhbmQg
b24gYnkKPiBkZWZhdWx0IGluIGdjYyA5Lgo+IAo+IE1hbnkgb2YgdGhlIHN0cnVjdHVyZXMgc2Vu
dCBvdmVyIHRoZSBuZXR3b3JrIGFyZSBwYWNrZWQKPiBhbmQgd2l0aCB1bmFsaWduZWQgZmllbGRz
Lgo+IAo+IFRoaXMgYnJlYWtzIHRoZSBidWlsZCAtLSBkdWUgdG8gLVdlcnJvci4KPiBUZWxsIGdj
YyB0byBub3Qgd2FybiBhYm91dCBpdC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBVcmkgTHVibGluIDx1
cmlsQHJlZGhhdC5jb20+CgpXaGF0IGFyZSB0aGUgd2FybmluZyBleGFjdGx5IGZvcj8KU3VyZSB3
ZSBkb24ndCB3YW50IHRvIGZpeCB0aGVtPwoKPiAtLS0KPiAgbTQvbWFueXdhcm5pbmdzLm00IHwg
MSArCj4gIG1lc29uLmJ1aWxkICAgICAgICB8IDEgKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDIgaW5z
ZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9tNC9tYW55d2FybmluZ3MubTQgYi9tNC9tYW55
d2FybmluZ3MubTQKPiBpbmRleCA0ZjcwMWY0ZWEuLjIwNTQzZDRhNCAxMDA2NDQKPiAtLS0gYS9t
NC9tYW55d2FybmluZ3MubTQKPiArKysgYi9tNC9tYW55d2FybmluZ3MubTQKPiBAQCAtMTc0LDYg
KzE3NCw3IEBAIEFDX0RFRlVOKFtnbF9NQU5ZV0FSTl9BTExfR0NDXSwKPiAgICAgIC1XbXVsdGlj
aGFyIFwKPiAgICAgIC1XbmFycm93aW5nIFwKPiAgICAgIC1XbmVzdGVkLWV4dGVybnMgXAo+ICsg
ICAgLVduby1hZGRyZXNzLW9mLXBhY2tlZC1tZW1iZXIgXAo+ICAgICAgLVdub25udWxsIFwKPiAg
ICAgIC1Xbm9ubnVsbC1jb21wYXJlIFwKPiAgICAgIC1XbnVsbC1kZXJlZmVyZW5jZSBcCj4gZGlm
ZiAtLWdpdCBhL21lc29uLmJ1aWxkIGIvbWVzb24uYnVpbGQKPiBpbmRleCA5M2ZiZGZmZjkuLmI4
ZGRlOTZhOCAxMDA2NDQKPiAtLS0gYS9tZXNvbi5idWlsZAo+ICsrKyBiL21lc29uLmJ1aWxkCj4g
QEAgLTQyLDYgKzQyLDcgQEAgc3BpY2Vfc2VydmVyX2dsb2JhbF9jZmxhZ3MgPSBbJy1EU1BJQ0Vf
U0VSVkVSX0lOVEVSTkFMJywKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJy1XYWxs
JywKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJy1XZXh0cmEnLAo+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAnLVduby1zaWduLWNvbXBhcmUnLAo+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAnLVduby1hZGRyZXNzLW9mLXBhY2tlZC1tZW1iZXInLAo+ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAnLVduby11bnVzZWQtcGFyYW1ldGVyJ10KPiAg
Cj4gIGNvbXBpbGVyID0gbWVzb24uZ2V0X2NvbXBpbGVyKCdjJykKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNw
aWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
