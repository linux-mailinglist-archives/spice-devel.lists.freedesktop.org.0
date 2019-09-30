Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B0F8C25C8
	for <lists+spice-devel@lfdr.de>; Mon, 30 Sep 2019 19:30:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 816F26E4AA;
	Mon, 30 Sep 2019 17:30:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 780DE6E4AA
 for <spice-devel@lists.freedesktop.org>; Mon, 30 Sep 2019 17:30:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 135DC30833B0
 for <spice-devel@lists.freedesktop.org>; Mon, 30 Sep 2019 17:30:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0B6A35D9CA
 for <spice-devel@lists.freedesktop.org>; Mon, 30 Sep 2019 17:30:46 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 02EAE4E589
 for <spice-devel@lists.freedesktop.org>; Mon, 30 Sep 2019 17:30:46 +0000 (UTC)
Date: Mon, 30 Sep 2019 13:30:45 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1394890379.3737526.1569864645820.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190929110336.9613-1-fziglio@redhat.com>
References: <20190929110336.9613-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.17, 10.4.195.9]
Thread-Topic: red-channel-client: Use SpiceMsgcAckSync structure
Thread-Index: Zidu4QQhVND+dKfMS77OruOp/NoD+A==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Mon, 30 Sep 2019 17:30:46 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] red-channel-client: Use
 SpiceMsgcAckSync structure
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

PiAKPiByZWRfY2hhbm5lbF9jbGllbnRfaGFuZGxlX21lc3NhZ2UgaXMgY2FsbGVkIGFmdGVyIHBh
cnNpbmcgdGhlCj4gbWVzc2FnZSBzbyBpdCdzIG5vdCBuZWNlc3NhcnkgdG8gY2hlY2sgaXQgYWdh
aW4gb3IgcGFyc2UgbWFudWFsbHkuCj4gCj4gU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlv
IDxmemlnbGlvQHJlZGhhdC5jb20+Cj4gLS0tCj4gIHNlcnZlci9yZWQtY2hhbm5lbC1jbGllbnQu
YyB8IDYgKy0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgNSBkZWxldGlv
bnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvc2VydmVyL3JlZC1jaGFubmVsLWNsaWVudC5jIGIvc2Vy
dmVyL3JlZC1jaGFubmVsLWNsaWVudC5jCj4gaW5kZXggNjZiOGZkNGEuLmY4NjFjY2U1IDEwMDY0
NAo+IC0tLSBhL3NlcnZlci9yZWQtY2hhbm5lbC1jbGllbnQuYwo+ICsrKyBiL3NlcnZlci9yZWQt
Y2hhbm5lbC1jbGllbnQuYwo+IEBAIC0xNDczLDExICsxNDczLDcgQEAgYm9vbAo+IHJlZF9jaGFu
bmVsX2NsaWVudF9oYW5kbGVfbWVzc2FnZShSZWRDaGFubmVsQ2xpZW50ICpyY2MsIHVpbnQxNl90
IHR5cGUsCj4gIHsKPiAgICAgIHN3aXRjaCAodHlwZSkgewo+ICAgICAgY2FzZSBTUElDRV9NU0dD
X0FDS19TWU5DOgo+IC0gICAgICAgIGlmIChzaXplICE9IHNpemVvZih1aW50MzJfdCkpIHsKPiAt
ICAgICAgICAgICAgcmVkX2NoYW5uZWxfd2FybmluZyhyZWRfY2hhbm5lbF9jbGllbnRfZ2V0X2No
YW5uZWwocmNjKSwgImJhZAo+IG1lc3NhZ2Ugc2l6ZSIpOwo+IC0gICAgICAgICAgICByZXR1cm4g
RkFMU0U7Cj4gLSAgICAgICAgfQo+IC0gICAgICAgIHJjYy0+cHJpdi0+YWNrX2RhdGEuY2xpZW50
X2dlbmVyYXRpb24gPSAqKHVpbnQzMl90ICopKG1lc3NhZ2UpOwo+ICsgICAgICAgIHJjYy0+cHJp
di0+YWNrX2RhdGEuY2xpZW50X2dlbmVyYXRpb24gPSAoKFNwaWNlTXNnY0Fja1N5bmMgKikKPiBt
ZXNzYWdlKS0+Z2VuZXJhdGlvbjsKClRoaXMgbGFzdCBsaW5lIGlzIGZpbmUgYnV0IEkgcmVhbGl6
ZWQgdGhhdCBmb3Igc29tZSByZWFzb25zIHNtYXJ0Y2FyZApjaGFubmVsIGlzIG5vdCBzZXR0aW5n
IHRoZSBwYXJzZXIgc28gd291bGQgYmUgYmV0dGVyIHRvIGxlYXZlIHRoZSBjaGVjay4KRXZlbiBi
ZXR0ZXIgdG8gdXNlIHRoZSBwYXJzZXIgbWF5YmUuCgo+ICAgICAgICAgIGJyZWFrOwo+ICAgICAg
Y2FzZSBTUElDRV9NU0dDX0FDSzoKPiAgICAgICAgICBpZiAocmNjLT5wcml2LT5hY2tfZGF0YS5j
bGllbnRfZ2VuZXJhdGlvbiA9PQo+ICAgICAgICAgIHJjYy0+cHJpdi0+YWNrX2RhdGEuZ2VuZXJh
dGlvbikgewoKRnJlZGlhbm8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L3NwaWNlLWRldmVs
