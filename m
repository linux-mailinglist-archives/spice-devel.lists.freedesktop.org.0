Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 983CB8BF12
	for <lists+spice-devel@lfdr.de>; Tue, 13 Aug 2019 18:58:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB8146E1C4;
	Tue, 13 Aug 2019 16:58:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 564556E1C4
 for <spice-devel@lists.freedesktop.org>; Tue, 13 Aug 2019 16:58:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 039FA81127
 for <spice-devel@lists.freedesktop.org>; Tue, 13 Aug 2019 16:58:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id EF704271B7
 for <spice-devel@lists.freedesktop.org>; Tue, 13 Aug 2019 16:58:44 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id E83144A460;
 Tue, 13 Aug 2019 16:58:44 +0000 (UTC)
Date: Tue, 13 Aug 2019 12:58:44 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Uri Lublin <uril@redhat.com>
Message-ID: <1995926842.5706172.1565715524744.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190813164512.30917-1-uril@redhat.com>
References: <20190813164512.30917-1-uril@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.205.69, 10.4.195.28]
Thread-Topic: test-marshallers.proto: ArrayMessage: make space for name
Thread-Index: wyPtcYcwzaIiIKynJEK1ECi2zTYqVg==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Tue, 13 Aug 2019 16:58:45 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-common PATCH] test-marshallers.proto:
 ArrayMessage: make space for name
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

PiAKPiBEbyBpdCBieSBhZGRpbmcgQGVuZCB0YWcuCj4gV2l0aG91dCBpdCB0aGUgYWxsb2NhdGVk
IG1lbW9yeSBoYXMgbm8gc3BhY2UgZm9yICduYW1lJy4KPiAKPiBBbHNvIGZpeCBTcGljZU1zZ01h
aW5BcnJheU1lc3NhZ2UgdGVzdHMvdGVzdC1tYXJzaGFsbGVycy5oLAo+IHJlcGxhY2luZyBpbnQ4
X3QqIG5hbWUgd2l0aCBpbnQ4X3QgbmFtZVtdLgoKbmFtZVswXSA/Cgo+IFRoaXMgbWFrZXMgbmFt
ZSBhbiAiaW4tc3RydWN0dXJlIiBhcnJheSB3aXRoIG5vIHByZS1kZWZpbmVkIHNpemUKPiBpbnN0
ZWFkIG9mIGEgcG9pbnRlci4KPiBUaGUgc2l6ZSBpcyBkZWZpbmVkIGJ5IHRoZSBtZXNzYWdlIHNp
emUuCj4gCj4gU2lnbmVkLW9mZi1ieTogVXJpIEx1YmxpbiA8dXJpbEByZWRoYXQuY29tPgoKT3Ro
ZXJ3aXNlLAogIEFja2VkLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4K
CkkgdGVzdGVkIGFuZCB0aGUgY2hhbmdlIGRvZXMgbm90IGFmZmVjdCB0aGUgaW5pdGlhbCByZWFz
b24gZm9yIHRoaXMgdHlwZQpkZWNsYXJhdGlvbi4KCj4gLS0tCj4gCj4gU2luY2UgdjE6Cj4gICAg
LSBmaXggJ25hbWUnIGluIHRlc3RzL3Rlc3QtbWFyc2hhbGxlcnMuaCB0b28KPiAgICAtIG1vcmUg
aW5mb3JtYXRpb24gaW4gdGhlIGNvbW1pdCBsb2cKPiAKPiAtLS0KPiAgdGVzdHMvdGVzdC1tYXJz
aGFsbGVycy5oICAgICB8IDIgKy0KPiAgdGVzdHMvdGVzdC1tYXJzaGFsbGVycy5wcm90byB8IDIg
Ky0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4g
Cj4gZGlmZiAtLWdpdCBhL3Rlc3RzL3Rlc3QtbWFyc2hhbGxlcnMuaCBiL3Rlc3RzL3Rlc3QtbWFy
c2hhbGxlcnMuaAo+IGluZGV4IDc2ODYwNjcuLjhjYTczNmUgMTAwNjQ0Cj4gLS0tIGEvdGVzdHMv
dGVzdC1tYXJzaGFsbGVycy5oCj4gKysrIGIvdGVzdHMvdGVzdC1tYXJzaGFsbGVycy5oCj4gQEAg
LTEwLDcgKzEwLDcgQEAgdHlwZWRlZiBzdHJ1Y3Qgewo+ICB9IFNwaWNlTXNnTWFpblNob3J0RGF0
YVN1Yk1hcnNoYWxsOwo+ICAKPiAgdHlwZWRlZiBzdHJ1Y3Qgewo+IC0gICAgaW50OF90ICpuYW1l
Owo+ICsgICAgaW50OF90IG5hbWVbMF07Cj4gIH0gU3BpY2VNc2dNYWluQXJyYXlNZXNzYWdlOwo+
ICAKPiAgdHlwZWRlZiBzdHJ1Y3Qgewo+IGRpZmYgLS1naXQgYS90ZXN0cy90ZXN0LW1hcnNoYWxs
ZXJzLnByb3RvIGIvdGVzdHMvdGVzdC1tYXJzaGFsbGVycy5wcm90bwo+IGluZGV4IDM0Y2M4OTIu
LmVhYmQ0ODcgMTAwNjQ0Cj4gLS0tIGEvdGVzdHMvdGVzdC1tYXJzaGFsbGVycy5wcm90bwo+ICsr
KyBiL3Rlc3RzL3Rlc3QtbWFyc2hhbGxlcnMucHJvdG8KPiBAQCAtNiw3ICs2LDcgQEAgY2hhbm5l
bCBUZXN0Q2hhbm5lbCB7Cj4gICAgIH0gU2hvcnREYXRhU3ViTWFyc2hhbGw7Cj4gIAo+ICAgICBt
ZXNzYWdlIHsKPiAtICAgICAgaW50OCBuYW1lW107Cj4gKyAgICAgIGludDggbmFtZVtdIEBlbmQ7
Cj4gICAgIH0gQXJyYXlNZXNzYWdlOwo+ICAKPiAgICAgIG1lc3NhZ2UgewpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxp
c3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
