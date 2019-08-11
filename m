Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 312F1892A3
	for <lists+spice-devel@lfdr.de>; Sun, 11 Aug 2019 18:38:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0B606E378;
	Sun, 11 Aug 2019 16:38:25 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78C5E6E378
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 16:38:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0FEED12BD
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 16:38:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 081CC60CCD
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 16:38:24 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id EDFC918089C8;
 Sun, 11 Aug 2019 16:38:23 +0000 (UTC)
Date: Sun, 11 Aug 2019 12:38:23 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: uril@redhat.com
Message-ID: <1598866728.5458206.1565541503419.JavaMail.zimbra@redhat.com>
In-Reply-To: <0e13da85-f667-8ff2-e021-9815fe52c1c7@redhat.com>
References: <20190811114723.22360-1-uril@redhat.com>
 <20190811114723.22360-2-uril@redhat.com>
 <833667726.5453453.1565524619663.JavaMail.zimbra@redhat.com>
 <0e13da85-f667-8ff2-e021-9815fe52c1c7@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.45, 10.4.195.8]
Thread-Topic: test-loop: increment a variable outside of spice_assert
Thread-Index: GQM+dcMdzxpPDjXYqkXRQ36qI56kHQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Sun, 11 Aug 2019 16:38:24 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-server PATCH 2/3] test-loop: increment a
 variable outside of spice_assert
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

PiAKPiBPbiA4LzExLzE5IDI6NTYgUE0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPiA+Pgo+ID4+
IHNwaWNlX2Fzc2VydCBpcyBhIG1hY3JvIGFuZCBpdCBtYXkgYmUgdGhhdCB2YXJpYWJsZSB3aWxs
Cj4gPj4gYmUgaW5jcmVtZW50ZWQgdHdpY2UgKGluIHRoZW9yeSwgcG9zc2libHkgbm90IGluIHBy
YWN0aWNlKS4KPiA+Pgo+ID4gCj4gPiBObywgdGhlIGlzc3VlIGlzIHRoYXQgQ292ZXJpdHkgYXNz
dW1lIHRoYXQgY29kZSBjYW4gYmUgc3RyaXBwZWQgb3V0Cj4gPiBhcyB1c3VhbGx5IGFzc2VydCBj
YW4gYmUgc3RyaXBwZWQgb3V0IChkZWZpbmluZyBOREVCVUcgZm9yIG5vcm1hbAo+ID4gYXNzZXJ0
KS4KPiAKPiBZb3UgYXJlIGNvcnJlY3QgdGhhdCB0aGlzIGlzIHdoYXQgdGhlIGNvdnNjYW4gY29t
cGxhaW5zIGFib3V0Ogo+ICJUaGUgY29udGFpbmluZyBmdW5jdGlvbiBtaWdodCB3b3JrIGRpZmZl
cmVudGx5IGluIGEgbm9uLWRlYnVnIGJ1aWxkLiIKPiAKPiBCdXQgc3BpY2VfYXNzZXJ0IGRlZmlu
aXRpb24gZG9lcyBub3QgZGVwZW5kIG9uIE5ERUJVRy4KPiBPbiB0aGUgb3RoZXIgaGFuZCBpdCBk
b2VzIG5vdCBoYXBwZW4gaW4gcmVhbGl0eSB0aGF0Cj4gdGhlIHZhcmlhYmxlIGlzIGluY3JlbWVu
dGVkIHR3aWNlLgo+IAo+IEknbGwgY2hhbmdlIHRoZSBhYm92ZSBjb21tZW50IHRvIHNheQo+ICAg
IHNwaWNlX2Fzc2VydCBpcyBhIG1hY3JvIHNvIHByZXZlbnQgc2lkZS1lZmZlY3RzIGJ5Cj4gICAg
bm90IGNoYW5naW5nIHRoZSB2YXJpYWJsZSBpbiBpdC4KPiAKCldoeSBub3QgdGVsbGluZyB0aGUg
dHJ1dGg/IFRoYXQgaXMgdG8gcmVtb3ZlIGEgQ292ZXJpdHkgZmFsc2UKcG9zaXRpdmUgc3BlY2lm
eWluZyB3aGljaCBvbmU/Cgo+IFVyaS4KPiAKPiA+IAo+ID4+IFNpbXBseSBkbyBpdCBvbmUgbGlu
ZSBhYm92ZS4KPiA+Pgo+ID4+IEZvdW5kIGJ5IGNvdnNjYW4KPiA+Pgo+ID4+IFNpZ25lZC1vZmYt
Ynk6IFVyaSBMdWJsaW4gPHVyaWxAcmVkaGF0LmNvbT4KPiAKPiAKPiA+IAo+ID4gQmVzaWRlIHRo
ZSBjb21taXQgbWVzc2FnZSBubyBjb21wbGFpbnMgdG8gbWFrZSBDb3Zlcml0eSBoYXBweQo+ID4g
Cj4gPj4gLS0tCj4gPj4gICBzZXJ2ZXIvdGVzdHMvdGVzdC1sb29wLmMgfCAzICsrLQo+ID4+ICAg
MSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+ID4+Cj4gPj4g
ZGlmZiAtLWdpdCBhL3NlcnZlci90ZXN0cy90ZXN0LWxvb3AuYyBiL3NlcnZlci90ZXN0cy90ZXN0
LWxvb3AuYwo+ID4+IGluZGV4IDgyYWY4MGFiMy4uNGRmM2E3ZDIwIDEwMDY0NAo+ID4+IC0tLSBh
L3NlcnZlci90ZXN0cy90ZXN0LWxvb3AuYwo+ID4+ICsrKyBiL3NlcnZlci90ZXN0cy90ZXN0LWxv
b3AuYwo+ID4+IEBAIC03OCw3ICs3OCw4IEBAIHN0YXRpYyBTcGljZVRpbWVyICp0d2ljZV90aW1l
cnNfcmVtb3ZlWzJdID0geyBOVUxMLCBOVUxMCj4gPj4gfTsKPiA+PiAgIHN0YXRpYyBpbnQgdHdp
Y2VfcmVtb3ZlX2NhbGxlZCA9IDA7Cj4gPj4gICBzdGF0aWMgdm9pZCB0aW1lcl9ub3RfdHdpY2Vf
cmVtb3ZlKHZvaWQgKm9wYXF1ZSkKPiA+PiAgIHsKPiA+PiAtICAgIHNwaWNlX2Fzc2VydCgrK3R3
aWNlX3JlbW92ZV9jYWxsZWQgPT0gMSk7Cj4gPj4gKyAgICArK3R3aWNlX3JlbW92ZV9jYWxsZWQ7
Cj4gPj4gKyAgICBzcGljZV9hc3NlcnQodHdpY2VfcmVtb3ZlX2NhbGxlZCA9PSAxKTsKPiA+PiAg
IAo+ID4+ICAgICAgIC8qIGRlbGV0ZSB0aW1lcnMsIHNob3VsZCBub3QgaGF2ZSBhbm90aGVyIGNh
bGwgKi8KPiA+PiAgICAgICBjb3JlLT50aW1lcl9yZW1vdmUodHdpY2VfdGltZXJzX3JlbW92ZVsw
XSk7Cj4gPiAKPiA+IEZyZWRpYW5vCj4gPiAKPiAKPiAKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRl
dmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
