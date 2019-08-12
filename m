Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C87C38980A
	for <lists+spice-devel@lfdr.de>; Mon, 12 Aug 2019 09:44:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EA3D89BB2;
	Mon, 12 Aug 2019 07:44:48 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9F2F89BB2
 for <spice-devel@lists.freedesktop.org>; Mon, 12 Aug 2019 07:44:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 56659220C7
 for <spice-devel@lists.freedesktop.org>; Mon, 12 Aug 2019 07:44:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4BABB1D1
 for <spice-devel@lists.freedesktop.org>; Mon, 12 Aug 2019 07:44:46 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 432E524F2F;
 Mon, 12 Aug 2019 07:44:46 +0000 (UTC)
Date: Mon, 12 Aug 2019 03:44:46 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: uril@redhat.com
Message-ID: <2106340770.5487661.1565595886226.JavaMail.zimbra@redhat.com>
In-Reply-To: <1598866728.5458206.1565541503419.JavaMail.zimbra@redhat.com>
References: <20190811114723.22360-1-uril@redhat.com>
 <20190811114723.22360-2-uril@redhat.com>
 <833667726.5453453.1565524619663.JavaMail.zimbra@redhat.com>
 <0e13da85-f667-8ff2-e021-9815fe52c1c7@redhat.com>
 <1598866728.5458206.1565541503419.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.153, 10.4.195.2]
Thread-Topic: test-loop: increment a variable outside of spice_assert
Thread-Index: GQM+dcMdzxpPDjXYqkXRQ36qI56kHfM9m43f
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Mon, 12 Aug 2019 07:44:46 +0000 (UTC)
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

PiA+IAo+ID4gT24gOC8xMS8xOSAyOjU2IFBNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gPiA+
Pgo+ID4gPj4gc3BpY2VfYXNzZXJ0IGlzIGEgbWFjcm8gYW5kIGl0IG1heSBiZSB0aGF0IHZhcmlh
YmxlIHdpbGwKPiA+ID4+IGJlIGluY3JlbWVudGVkIHR3aWNlIChpbiB0aGVvcnksIHBvc3NpYmx5
IG5vdCBpbiBwcmFjdGljZSkuCj4gPiA+Pgo+ID4gPiAKPiA+ID4gTm8sIHRoZSBpc3N1ZSBpcyB0
aGF0IENvdmVyaXR5IGFzc3VtZSB0aGF0IGNvZGUgY2FuIGJlIHN0cmlwcGVkIG91dAo+ID4gPiBh
cyB1c3VhbGx5IGFzc2VydCBjYW4gYmUgc3RyaXBwZWQgb3V0IChkZWZpbmluZyBOREVCVUcgZm9y
IG5vcm1hbAo+ID4gPiBhc3NlcnQpLgo+ID4gCj4gPiBZb3UgYXJlIGNvcnJlY3QgdGhhdCB0aGlz
IGlzIHdoYXQgdGhlIGNvdnNjYW4gY29tcGxhaW5zIGFib3V0Ogo+ID4gIlRoZSBjb250YWluaW5n
IGZ1bmN0aW9uIG1pZ2h0IHdvcmsgZGlmZmVyZW50bHkgaW4gYSBub24tZGVidWcgYnVpbGQuIgo+
ID4gCj4gPiBCdXQgc3BpY2VfYXNzZXJ0IGRlZmluaXRpb24gZG9lcyBub3QgZGVwZW5kIG9uIE5E
RUJVRy4KPiA+IE9uIHRoZSBvdGhlciBoYW5kIGl0IGRvZXMgbm90IGhhcHBlbiBpbiByZWFsaXR5
IHRoYXQKPiA+IHRoZSB2YXJpYWJsZSBpcyBpbmNyZW1lbnRlZCB0d2ljZS4KPiA+IAo+ID4gSSds
bCBjaGFuZ2UgdGhlIGFib3ZlIGNvbW1lbnQgdG8gc2F5Cj4gPiAgICBzcGljZV9hc3NlcnQgaXMg
YSBtYWNybyBzbyBwcmV2ZW50IHNpZGUtZWZmZWN0cyBieQo+ID4gICAgbm90IGNoYW5naW5nIHRo
ZSB2YXJpYWJsZSBpbiBpdC4KPiA+IAo+IAo+IFdoeSBub3QgdGVsbGluZyB0aGUgdHJ1dGg/IFRo
YXQgaXMgdG8gcmVtb3ZlIGEgQ292ZXJpdHkgZmFsc2UKPiBwb3NpdGl2ZSBzcGVjaWZ5aW5nIHdo
aWNoIG9uZT8KPiAKCklzIGl0IGNvdmVyaXR5IG9yIGNsYW5nID8KSSBqdXN0IHJlYWxpemVkIHRo
YXQgY292c2NhbiBub3cgdXNlcyBib3RoIG9mIHRoZW0uCgo+ID4gVXJpLgo+ID4gCj4gPiA+IAo+
ID4gPj4gU2ltcGx5IGRvIGl0IG9uZSBsaW5lIGFib3ZlLgo+ID4gPj4KPiA+ID4+IEZvdW5kIGJ5
IGNvdnNjYW4KPiA+ID4+Cj4gPiA+PiBTaWduZWQtb2ZmLWJ5OiBVcmkgTHVibGluIDx1cmlsQHJl
ZGhhdC5jb20+Cj4gPiAKPiA+IAo+ID4gPiAKPiA+ID4gQmVzaWRlIHRoZSBjb21taXQgbWVzc2Fn
ZSBubyBjb21wbGFpbnMgdG8gbWFrZSBDb3Zlcml0eSBoYXBweQo+ID4gPiAKPiA+ID4+IC0tLQo+
ID4gPj4gICBzZXJ2ZXIvdGVzdHMvdGVzdC1sb29wLmMgfCAzICsrLQo+ID4gPj4gICAxIGZpbGUg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPiA+Pgo+ID4gPj4gZGlm
ZiAtLWdpdCBhL3NlcnZlci90ZXN0cy90ZXN0LWxvb3AuYyBiL3NlcnZlci90ZXN0cy90ZXN0LWxv
b3AuYwo+ID4gPj4gaW5kZXggODJhZjgwYWIzLi40ZGYzYTdkMjAgMTAwNjQ0Cj4gPiA+PiAtLS0g
YS9zZXJ2ZXIvdGVzdHMvdGVzdC1sb29wLmMKPiA+ID4+ICsrKyBiL3NlcnZlci90ZXN0cy90ZXN0
LWxvb3AuYwo+ID4gPj4gQEAgLTc4LDcgKzc4LDggQEAgc3RhdGljIFNwaWNlVGltZXIgKnR3aWNl
X3RpbWVyc19yZW1vdmVbMl0gPSB7IE5VTEwsCj4gPiA+PiBOVUxMCj4gPiA+PiB9Owo+ID4gPj4g
ICBzdGF0aWMgaW50IHR3aWNlX3JlbW92ZV9jYWxsZWQgPSAwOwo+ID4gPj4gICBzdGF0aWMgdm9p
ZCB0aW1lcl9ub3RfdHdpY2VfcmVtb3ZlKHZvaWQgKm9wYXF1ZSkKPiA+ID4+ICAgewo+ID4gPj4g
LSAgICBzcGljZV9hc3NlcnQoKyt0d2ljZV9yZW1vdmVfY2FsbGVkID09IDEpOwo+ID4gPj4gKyAg
ICArK3R3aWNlX3JlbW92ZV9jYWxsZWQ7Cj4gPiA+PiArICAgIHNwaWNlX2Fzc2VydCh0d2ljZV9y
ZW1vdmVfY2FsbGVkID09IDEpOwo+ID4gPj4gICAKPiA+ID4+ICAgICAgIC8qIGRlbGV0ZSB0aW1l
cnMsIHNob3VsZCBub3QgaGF2ZSBhbm90aGVyIGNhbGwgKi8KPiA+ID4+ICAgICAgIGNvcmUtPnRp
bWVyX3JlbW92ZSh0d2ljZV90aW1lcnNfcmVtb3ZlWzBdKTsKPiA+ID4gCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxp
c3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
