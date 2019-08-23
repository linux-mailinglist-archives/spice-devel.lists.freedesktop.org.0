Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E449B1F1
	for <lists+spice-devel@lfdr.de>; Fri, 23 Aug 2019 16:28:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60D366ECAD;
	Fri, 23 Aug 2019 14:28:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABCB56ECAD
 for <spice-devel@lists.freedesktop.org>; Fri, 23 Aug 2019 14:28:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 386403090FC7
 for <spice-devel@lists.freedesktop.org>; Fri, 23 Aug 2019 14:28:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2E66F18BB8
 for <spice-devel@lists.freedesktop.org>; Fri, 23 Aug 2019 14:28:53 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 239932551B;
 Fri, 23 Aug 2019 14:28:53 +0000 (UTC)
Date: Fri, 23 Aug 2019 10:28:52 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <1094070142.8643520.1566570532547.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190823065901.fomupblk5nrz5fth@wingsuit>
References: <20190822155312.17926-1-uril@redhat.com>
 <20190823065901.fomupblk5nrz5fth@wingsuit>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.58, 10.4.195.6]
Thread-Topic: test-loop: increment a variable outside of spice_assert
Thread-Index: KWH5rBYUvo6DbnrJaEdh0MMve4rqXg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Fri, 23 Aug 2019 14:28:53 +0000 (UTC)
Subject: Re: [Spice-devel] [server patch v2] test-loop: increment a variable
 outside of spice_assert
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

PiAKPiBIaSwKPiAKPiBPbiBUaHUsIEF1ZyAyMiwgMjAxOSBhdCAwNjo1MzoxMlBNICswMzAwLCBV
cmkgTHVibGluIHdyb3RlOgo+ID4gc3BpY2VfYXNzZXJ0IGlzIGEgbWFjcm8gYW5kIGNvdnNjYW4g
cmVwb3J0cyB0aGF0Ogo+ID4gICBBcmd1bWVudCAiKyt0d2ljZV9yZW1vdmVfY2FsbGVkIiBvZiBz
cGljZV9hc3NlcnQoKSBoYXMgYSBzaWRlIGVmZmVjdC4KPiA+IAo+ID4gRG9lc24ndCBtYXR0ZXIg
aWYgdGhlcmUgaXMgYSBzaWRlIGVmZmVjdHMgb3Igbm90LAo+ID4gaXQncyBhIGdvb2QgcHJhY3Rp
Y2UgYW5kIGl0IG1ha2VzIGNvdnNjYW4gaGFwcHksIHNvCj4gPiBpbmNyZW1lbnQgdGhlIHZhcmlh
YmxlIG9uZSBsaW5lIGFib3ZlLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBVcmkgTHVibGluIDx1
cmlsQHJlZGhhdC5jb20+Cj4gPiAtLS0KPiA+IAo+ID4gdjEtPnYyOiBjaGFuZ2UgY29tbWl0IGxv
ZyAoRnJlZGlhbm8pCj4gPiAKPiA+IC0tLQo+ID4gIHNlcnZlci90ZXN0cy90ZXN0LWxvb3AuYyB8
IDMgKystCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigt
KQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvc2VydmVyL3Rlc3RzL3Rlc3QtbG9vcC5jIGIvc2VydmVy
L3Rlc3RzL3Rlc3QtbG9vcC5jCj4gPiBpbmRleCA4MmFmODBhYjMuLjRkZjNhN2QyMCAxMDA2NDQK
PiA+IC0tLSBhL3NlcnZlci90ZXN0cy90ZXN0LWxvb3AuYwo+ID4gKysrIGIvc2VydmVyL3Rlc3Rz
L3Rlc3QtbG9vcC5jCj4gPiBAQCAtNzgsNyArNzgsOCBAQCBzdGF0aWMgU3BpY2VUaW1lciAqdHdp
Y2VfdGltZXJzX3JlbW92ZVsyXSA9IHsgTlVMTCwgTlVMTAo+ID4gfTsKPiA+ICBzdGF0aWMgaW50
IHR3aWNlX3JlbW92ZV9jYWxsZWQgPSAwOwo+ID4gIHN0YXRpYyB2b2lkIHRpbWVyX25vdF90d2lj
ZV9yZW1vdmUodm9pZCAqb3BhcXVlKQo+ID4gIHsKPiA+IC0gICAgc3BpY2VfYXNzZXJ0KCsrdHdp
Y2VfcmVtb3ZlX2NhbGxlZCA9PSAxKTsKPiA+ICsgICAgKyt0d2ljZV9yZW1vdmVfY2FsbGVkOwo+
IAo+IFNpbGx5IHF1ZXN0aW9uIGhlcmUgYnV0IGlzIHRoZXJlIGEgcmVhc29uIHdoeSBwcmUtaW5j
cmVtZW50IHdvdWxkCj4gYmUgcHJlZmVycmVkIGluIHRoaXMgY2FzZT8KPiAKCkl0J3Mgbm90IHNp
bGx5LiBJIHRoaW5rIGZyb20gbXkgc2lkZSBjb21pbmcgZnJvbSBhIHBhc3QgQysrIGFuZCBrbm93
aW5nCnRoZXJlJ3Mgbm8gbXVjaCBkaWZmZXJlbmNlIGluIHRoaXMgY2FzZSBmcm9tIHBvc3QgYW5k
IHByZSBJIGRpZG4ndCBwYXkgbXVjaAphdHRlbnRpb24gKG5vdCBtdWNoIGltcG9ydGFudCksIHBh
dGNoIHdhcyBmaW5lLgpJIHN1cHBvc2UgdGhlIGNoYW5nZSBpcyBtaW5vciBhcyBwcmV2aW91c2x5
IHdhcyBwcmUgaW5jcmVtZW50IGFuZCBzbwp0aGlzIHdhcyBwcmVzZXJ2ZWQgKGluIHByZXZpb3Vz
IGNvZGUgcHJlIGFuZCBwb3N0IG1hdHRlcmVkKS4KQW5kIHBlcnNvbmFsbHkgdGhlc2UgdG9vbHMg
YXJlIHNvbWV0aW1lcyB1c2VmdWwgYnV0IGFmdGVyIHlvdSByZW1vdmUgdGhlCm1haW4gdGhpbmdz
IHdoYXQncyBsZWZ0IGFyZSBtb3N0bHkgZmFsc2UgcG9zaXRpdmUgd2hpY2ggYXJlIG1vcmUgYm9y
aW5nCnRoYW4gaGVscGZ1bC4gTm90IHRoYXQgdGhleSBkb24ndCBkbyBhIGdvb2Qgam9iLCBpdCdz
IGp1c3QgbWF0aCwgaWYgdGhleQp3ZXJlIDk1JSBhY2N1cmF0ZSAodGhleSBhcmUgbXVjaCBsZXNz
LCBDb3Zlcml0eSBzdGF0ZWQgYSA2MCUgaW4gdGhlIHBhc3QpCmFuZCB5b3UgcmVtb3ZlZCB0aGF0
IDk1JSB3aGF0J3MgbGVmdCBhcmUgZmFsc2UgcG9zaXRpdmUgc28gbmV4dCB0aW1lIHByb2JhYmx5
CnRoZXJlIHdpbGwgYmUgOTUlIGZhbHNlIHBvc2l0aXZlLgoKPiA+ICsgICAgc3BpY2VfYXNzZXJ0
KHR3aWNlX3JlbW92ZV9jYWxsZWQgPT0gMSk7Cj4gPiAgCj4gPiAgICAgIC8qIGRlbGV0ZSB0aW1l
cnMsIHNob3VsZCBub3QgaGF2ZSBhbm90aGVyIGNhbGwgKi8KPiA+ICAgICAgY29yZS0+dGltZXJf
cmVtb3ZlKHR3aWNlX3RpbWVyc19yZW1vdmVbMF0pOwoKRnJlZGlhbm8KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0
ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
