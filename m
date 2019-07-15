Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC826861A
	for <lists+spice-devel@lfdr.de>; Mon, 15 Jul 2019 11:14:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 997988934B;
	Mon, 15 Jul 2019 09:14:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67E0A8934B
 for <spice-devel@lists.freedesktop.org>; Mon, 15 Jul 2019 09:14:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0FB97309174E
 for <spice-devel@lists.freedesktop.org>; Mon, 15 Jul 2019 09:14:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 062AC608CD
 for <spice-devel@lists.freedesktop.org>; Mon, 15 Jul 2019 09:14:38 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id F15941843729;
 Mon, 15 Jul 2019 09:14:37 +0000 (UTC)
Date: Mon, 15 Jul 2019 05:14:37 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <225066849.67801.1563182077962.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190712091242.13214-5-victortoso@redhat.com>
References: <20190712091242.13214-1-victortoso@redhat.com>
 <20190712091242.13214-5-victortoso@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.11, 10.4.195.3]
Thread-Topic: x11-randr: use glib's MAX and MIN
Thread-Index: 3+yFL3kg02UsjP2hudS717ZGXmRrzA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Mon, 15 Jul 2019 09:14:38 +0000 (UTC)
Subject: Re: [Spice-devel] [linux/vd-agent v1 4/7] x11-randr: use glib's MAX
 and MIN
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

PiAKPiBGcm9tOiBWaWN0b3IgVG9zbyA8bWVAdmljdG9ydG9zby5jb20+Cj4gCj4gU2luY2UgMjg2
MTg2OCAicmFuZHI6IHJlbW92ZSBtb25pdG9ycy54bWwgb24gYXV0by1jb25maWd1cmF0aW9uIiBp
bgo+IDIwMTUtMDQtMTAgYnkgTWFyYy1BbmRyZSBMdXJlYXUgPG1hcmNhbmRyZS5sdXJlYXVAcmVk
aGF0LmNvbT4gdGhpcwo+IGZpbGUgaW5jbHVkZXMgZ2xpYi5oIGFuZCBjYW4gcmVtb3ZlIHRob3Nl
IGhlbHBlcnMuCj4gCj4gU2lnbmVkLW9mZi1ieTogVmljdG9yIFRvc28gPHZpY3RvcnRvc29AcmVk
aGF0LmNvbT4KPiAtLS0KPiAgc3JjL3ZkYWdlbnQveDExLXJhbmRyLmMgfCAxOCArKysrLS0tLS0t
LS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25z
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL3NyYy92ZGFnZW50L3gxMS1yYW5kci5jIGIvc3JjL3ZkYWdl
bnQveDExLXJhbmRyLmMKPiBpbmRleCA4ODg1N2M4Li5kMDAwZTI4IDEwMDY0NAo+IC0tLSBhL3Ny
Yy92ZGFnZW50L3gxMS1yYW5kci5jCj4gKysrIGIvc3JjL3ZkYWdlbnQveDExLXJhbmRyLmMKPiBA
QCAtNTU1LDE2ICs1NTUsNiBAQCBpbnQgdmRhZ2VudF94MTFfcmFuZHJfaGFuZGxlX2V2ZW50KHN0
cnVjdCB2ZGFnZW50X3gxMQo+ICp4MTEsCj4gICAgICByZXR1cm4gaGFuZGxlZDsKPiAgfQo+ICAK
PiAtc3RhdGljIGludCBtaW5faW50KGludCB4LCBpbnQgeSkKPiAtewo+IC0gICAgcmV0dXJuIHgg
PiB5ID8geSA6IHg7Cj4gLX0KPiAtCj4gLXN0YXRpYyBpbnQgbWF4X2ludChpbnQgeCwgaW50IHkp
Cj4gLXsKPiAtICAgIHJldHVybiB4ID4geSA/IHggOiB5Owo+IC19Cj4gLQo+ICBzdGF0aWMgaW50
IGNvbnN0cmFpbl90b19yYW5nZShpbnQgbG93LCBpbnQgKnZhbCwgaW50IGhpZ2gpCj4gIHsKPiAg
ICAgIGlmIChsb3cgPD0gKnZhbCAmJiAqdmFsIDw9IGhpZ2gpIHsKPiBAQCAtNjMxLDEwICs2MjEs
MTAgQEAgc3RhdGljIHZvaWQgemVyb19iYXNlX21vbml0b3JzKHN0cnVjdCB2ZGFnZW50X3gxMSAq
eDExLAo+ICAgICAgICAgIG1vbl93aWR0aCA9IChpbnQgKikmbW9uX2NvbmZpZy0+bW9uaXRvcnNb
aV0ud2lkdGg7Cj4gICAgICAgICAgbW9uX2hlaWdodCA9IChpbnQgKikmbW9uX2NvbmZpZy0+bW9u
aXRvcnNbaV0uaGVpZ2h0Owo+ICAgICAgICAgIGNvbnN0cmFpbl90b19zY3JlZW4oeDExLCBtb25f
d2lkdGgsIG1vbl9oZWlnaHQpOwo+IC0gICAgICAgIG1pbl94ID0gbWluX2ludChtb25fY29uZmln
LT5tb25pdG9yc1tpXS54LCBtaW5feCk7Cj4gLSAgICAgICAgbWluX3kgPSBtaW5faW50KG1vbl9j
b25maWctPm1vbml0b3JzW2ldLnksIG1pbl95KTsKPiAtICAgICAgICBtYXhfeCA9IG1heF9pbnQo
bW9uX2NvbmZpZy0+bW9uaXRvcnNbaV0ueCArICptb25fd2lkdGgsIG1heF94KTsKPiAtICAgICAg
ICBtYXhfeSA9IG1heF9pbnQobW9uX2NvbmZpZy0+bW9uaXRvcnNbaV0ueSArICptb25faGVpZ2h0
LCBtYXhfeSk7Cj4gKyAgICAgICAgbWluX3ggPSBNSU4obW9uX2NvbmZpZy0+bW9uaXRvcnNbaV0u
eCwgbWluX3gpOwo+ICsgICAgICAgIG1pbl95ID0gTUlOKG1vbl9jb25maWctPm1vbml0b3JzW2ld
LnksIG1pbl95KTsKPiArICAgICAgICBtYXhfeCA9IE1BWChtb25fY29uZmlnLT5tb25pdG9yc1tp
XS54ICsgKm1vbl93aWR0aCwgbWF4X3gpOwo+ICsgICAgICAgIG1heF95ID0gTUFYKG1vbl9jb25m
aWctPm1vbml0b3JzW2ldLnkgKyAqbW9uX2hlaWdodCwgbWF4X3kpOwo+ICAgICAgfQo+ICAgICAg
aWYgKG1pbl94ICE9IDAgfHwgbWluX3kgIT0gMCkgewo+ICAgICAgICAgIHN5c2xvZyhMT0dfRVJS
LCAiJXM6IGFnZW50IGNvbmZpZyAlZCwlZCByb290ZWQsIGFkanVzdGluZyB0byAwLDAuIiwKCkFj
a2VkCgpGcmVkaWFubwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3Bp
Y2UtZGV2ZWw=
