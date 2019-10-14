Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09974D60DB
	for <lists+spice-devel@lfdr.de>; Mon, 14 Oct 2019 13:02:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AB856E25F;
	Mon, 14 Oct 2019 11:02:07 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D1666E25F
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Oct 2019 11:02:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 351D5C05683F
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Oct 2019 11:02:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 28DCF1001B0B
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Oct 2019 11:02:05 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1E87E180B761;
 Mon, 14 Oct 2019 11:02:05 +0000 (UTC)
Date: Mon, 14 Oct 2019 07:02:05 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <1916106819.6531694.1571050925073.JavaMail.zimbra@redhat.com>
In-Reply-To: <20191014103624.jknw2x4b4volp6jv@wingsuit>
References: <20191010145630.23553-1-fziglio@redhat.com>
 <20191014103624.jknw2x4b4volp6jv@wingsuit>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.20, 10.4.195.25]
Thread-Topic: spice_protocol: Update many names
Thread-Index: AlbCI7rLwqeuv6a1OO3SUaXVtOfr+g==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Mon, 14 Oct 2019 11:02:05 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] spice_protocol: Update many
 names
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

Cj4gSGksCj4gCj4gT24gVGh1LCBPY3QgMTAsIDIwMTkgYXQgMDM6NTY6MzBQTSArMDEwMCwgRnJl
ZGlhbm8gWmlnbGlvIHdyb3RlOgo+ID4gVXNpbmcgYW4gb2xkICJyZW5hbWVzIiBmaWxlIGZvdW5k
IGluIHNwaWNlLXByb3RvY29sIHJlcG9zaXRvcnkKPiA+IEkgdXBkYXRlIHNvbWUgb2xkIG5hbWVz
IGluIHRoZSBkb2N1bWVudGF0aW9uIHByb3RvY29sLgo+ID4gQWxzbyB1cGRhdGVkIHNvbWUgb3Ro
ZXIgbmFtZXMgbWFudWFsbHkuCj4gPiBJIHByb2Nlc3NlZCB0aGUgZmlsZSBhbmQgZml4ZWQgc29t
ZSBjb2RlIGluZGVudGF0aW9uLgo+ID4gRmlsZSBsb29rcyBtdWNoIG1vcmUgdXAgdG8gZGF0ZS4K
PiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5j
b20+Cj4gCj4gSSdkIGFkZCBkb2M6IGFzIHByZWZpeCBvZiBzaG9ydGxvZyB0byBiZSBjbGVhciB0
aGF0IGNvbW1pdAo+IHB1cnBvc2UgaXMgb24gZG9jcy4gSSBoYWQgYSBxdWljayBsb29rIGFuZCBi
dWlsdCBhbmQgY2hlY2tlZCB0aGUKPiBodG1sLCBsb29rcyBva2F5LiBJJ3ZlIGFsc28gc2VudCBh
IHBhdGNoIHRvIGFkZCB0aGlzIGFuZCBvdGhlcnMKPiBpbiBtZXNvbi5idWlsZAo+IAoKU28sIGJl
dHRlciB0byBjaGFuZ2Ugc2hvcnRsb2cgdG86Cgpkb2NzOiBVcGRhdGUgbWFueSBuYW1lcyBpbiBz
cGljZV9wcm90b2NvbC50eHQKCj8/Cgo+IEFja2VkLWJ5OiBWaWN0b3IgVG9zbyA8dmljdG9ydG9z
b0ByZWRoYXQuY29tPgo+IAo+ID4gLS0tCj4gPiAgZG9jcy9zcGljZV9wcm90b2NvbC50eHQgfCA4
MDggKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLQo+ID4gIDEgZmlsZSBj
aGFuZ2VkLCA0MDQgaW5zZXJ0aW9ucygrKSwgNDA0IGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZm
IC0tZ2l0IGEvZG9jcy9zcGljZV9wcm90b2NvbC50eHQgYi9kb2NzL3NwaWNlX3Byb3RvY29sLnR4
dAo+ID4gaW5kZXggNThiYzAxNjY0Li5kMTkxNDYyZDEgMTAwNjQ0Cj4gPiAtLS0gYS9kb2NzL3Nw
aWNlX3Byb3RvY29sLnR4dAo+ID4gKysrIGIvZG9jcy9zcGljZV9wcm90b2NvbC50eHQKPiA+IEBA
IC01MSwxMCArNTEsMTAgQEAgaXMgaW4gbGl0dGxlIGVuZGlhbiBmb3JtYXQuCj4gPiAgLi4gVUlO
VDMyIOKAkyAzMiBiaXRzIHVuc2lnbmVkICBpbnRlZ2VyCj4gPiAgLi4gSU5UMzIgLSAzMiBiaXRz
IHNpZ25lZCBpbnRlZ2VyCj4gPiAgLi4gVUlOVDY0IOKAkyA2NCBiaXRzIHVuc2lnbmVkICBpbnRl
Z2VyCj4gPiAtLi4gQUREUkVTUyAtIDY0IGJpdHMgdW5zaWduZWQgaW50ZWdlciwgdmFsdWUgaXMg
dGhlIG9mZnNldCBvZiB0aGUKPiA+IGFkZHJlc3NlZAo+ID4gKy4uIFNQSUNFX0FERFJFU1MgLSA2
NCBiaXRzIHVuc2lnbmVkIGludGVnZXIsIHZhbHVlIGlzIHRoZSBvZmZzZXQgb2YgdGhlCj4gPiBh
ZGRyZXNzZWQKPiA+ICBkYXRhIGZyb20gdGhlIGJlZ2lubmluZyBvZiBzcGljZSBwcm90b2NvbCBt
ZXNzYWdlIGJvZHkgKGkuZS4sIGRhdGEKPiA+ICBmb2xsb3dpbmcKPiA+IC1SZWREYXRhSGVhZGVy
IG9yIFJlZFN1Yk1lc3NhZ2UpLgo+ID4gLS4uIEZJWEVEMjhfNCDigJMgMzIgYml0cyBmaXhlZCBw
b2ludCBudW1iZXIuIDI4IGhpZ2ggYml0cyBhcmUgc2lnbmVkCj4gPiBpbnRlZ2VyLiBMb3cKPiA+
ICtTcGljZURhdGFIZWFkZXIgb3IgU3BpY2VkU3ViTWVzc2FnZSkuCj4gPiArLi4gU1BJQ0VfRklY
RUQyOF80IOKAkyAzMiBiaXRzIGZpeGVkIHBvaW50IG51bWJlci4gMjggaGlnaCBiaXRzIGFyZSBz
aWduZWQKPiA+IGludGVnZXIuIExvdwoKLi4uIG9taXNzaXMgLi4uCgpGcmVkaWFubwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWls
aW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
