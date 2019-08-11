Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E34AD891B3
	for <lists+spice-devel@lfdr.de>; Sun, 11 Aug 2019 14:48:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 106A06E343;
	Sun, 11 Aug 2019 12:48:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AF706E343
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 12:48:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B0C0C3082126
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 12:48:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A5B4019C58
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 12:48:45 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9AC3418089C8;
 Sun, 11 Aug 2019 12:48:45 +0000 (UTC)
Date: Sun, 11 Aug 2019 08:48:45 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Uri Lublin <uril@redhat.com>
Message-ID: <1125589139.5453928.1565527725223.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190811114723.22360-1-uril@redhat.com>
References: <20190811114723.22360-1-uril@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.53, 10.4.195.10]
Thread-Topic: compress_seg: comment out unused assignment
Thread-Index: 6ayMrLlGhoiOse7lxEyUrs8xYYgVqg==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Sun, 11 Aug 2019 12:48:45 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-server PATCH 1/3] compress_seg: comment
 out unused assignment
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

PiAKPiBDTEFORyB3YXJuaW5nOiAiVmFsdWUgc3RvcmVkIHRvICdyZWZfbGltaXQnIGlzIG5ldmVy
IHJlYWQiCj4gCj4gQ29tbWVudGluZyBvdXQgc2luY2UgdGhlcmUgaXMgYSBUb0RvIHRoYXQgcmVm
ZXJzIHRvIHJlZl9saW1pdAo+IAo+IEZvdW5kIGJ5IENvdnNjYW4uCj4gCj4gU2lnbmVkLW9mZi1i
eTogVXJpIEx1YmxpbiA8dXJpbEByZWRoYXQuY29tPgo+IC0tLQo+IAo+IFNob3VsZCB0aGUgY29t
bWVudCBiZSBkZWxldGVkIHRvbyA/Cj4gCgpJIHRoaW5rIHdvdWxkIGJlIHRpbWUgdG8gcmV2aXNl
IHRoZSBjb21tZW50IGFuZCBtYXliZSB0aGUgY29kZS4KClRoZSBjb21tZW50IGlzIChJIHN1cHBv
c2UpOgogICAgd2hpbGUgKGlwIDwgaXBfYm91bmQpIHsgLy8gVE9ETzogbWF5YmUgc2VwYXJhdGUg
YSBydW4gZnJvbSB0aGUgc2FtZSBzZWcgb3IgZnJvbQogICAgICAgICAgICAgICAgICAgICAgICAg
ICAvLyBkaWZmZXJlbnQgb25lcyBpbiBvcmRlciB0byBzcGFyZSByZWYgPCByZWZfbGltaXQKCmJ1
dCB0aGlzIGNhbWUgZnJvbSBjb21taXQ6CmNvbW1pdCBjMWI3OWViMDM1ZmExNThmYjJhYzNiYzhl
NTU5ODA5NjExMDcwMDE2CkF1dGhvcjogWWFuaXYgS2FtYXkgPHlrYW1heUByZWRoYXQuY29tPgpE
YXRlOiAgIFNhdCBTZXAgMTkgMjE6MjU6NDYgMjAwOSArMDMwMAoKICAgIGZyZXNoIHN0YXJ0Cgp3
aXRoIG5vIGZ1cnRoZXIgaGlzdG9yeSA6LSgKSXMgdGhlIGZvcm1lciBoaXN0b3J5IHNvbWV3aGVy
ZT8KClNvbWV0aGluZyBpcyBzdWdnZXN0aW5nIG1lIHRoYXQgdGhlIGxvb3Agd2FzICJ3aGlsZSAo
cmVmIDwgcmVmX2xpbWl0KSIKaW5zdGVhZCBvZiB0aGUgY3VycmVudCAid2hpbGUgKGlwIDwgaXBf
Ym91bmQpIi4gQWxzbyB3b25kZXJpbmcgd2h5CmlwX2JvdW5kIGlzIHJlZl9saW1pdCAoc2VnLT5s
aW5lc19lbmQpIG1pbnVzIDIgcGl4ZWxzIGFuZCBzbyB3aHkgUkxFCmNoZWNrIGlnbm9yZXMgbGFz
dCAyIHBpeGVscy4gQnV0IEkgaGF2ZSBzaW1pbGFyIHF1ZXN0aW9ucyBmb3IgaXBfbGltaXQuCgo+
IC0tLQo+ICBzZXJ2ZXIvZ2x6LWVuY29kZS50bXBsLmMgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9zZXJ2ZXIv
Z2x6LWVuY29kZS50bXBsLmMgYi9zZXJ2ZXIvZ2x6LWVuY29kZS50bXBsLmMKPiBpbmRleCA0OGJh
YjUwYmMuLmFkNDhjODZjOCAxMDA2NDQKPiAtLS0gYS9zZXJ2ZXIvZ2x6LWVuY29kZS50bXBsLmMK
PiArKysgYi9zZXJ2ZXIvZ2x6LWVuY29kZS50bXBsLmMKPiBAQCAtMjgyLDcgKzI4Miw3IEBAIHN0
YXRpYyB2b2lkIEZOQU1FKGNvbXByZXNzX3NlZykoRW5jb2RlciAqZW5jb2RlciwKPiB1aW50MzJf
dCBzZWdfaWR4LCBQSVhFTCAqZnJvbSwKPiAgCj4gICAgICAgICAgICAgICAgICBpcCArPSAzOwo+
ICAgICAgICAgICAgICAgICAgcmVmID0gYW5jaG9yICsgMjsKPiAtICAgICAgICAgICAgICAgIHJl
Zl9saW1pdCA9IChQSVhFTCAqKShzZWctPmxpbmVzX2VuZCk7Cj4gKyAgICAgICAgICAgICAgICAv
L3JlZl9saW1pdCA9IChQSVhFTCAqKShzZWctPmxpbmVzX2VuZCk7Cj4gICAgICAgICAgICAgICAg
ICBsZW4gPSAzOwo+ICAKPiAgICAgICAgICAgICAgICAgIHggPSAqcmVmOwoKRnJlZGlhbm8KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwg
bWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
