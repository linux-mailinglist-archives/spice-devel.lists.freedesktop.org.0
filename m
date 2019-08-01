Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 319037E006
	for <lists+spice-devel@lfdr.de>; Thu,  1 Aug 2019 18:22:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 839076E726;
	Thu,  1 Aug 2019 16:22:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B51B86E726
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 16:22:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 626BD30C8090
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 16:22:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 57A6C60BEC
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 16:22:02 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4D4E319722
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 16:22:02 +0000 (UTC)
Date: Thu, 1 Aug 2019 12:22:02 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <208667148.4230441.1564676522262.JavaMail.zimbra@redhat.com>
In-Reply-To: <1355493655.688340.1563435787889.JavaMail.zimbra@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-6-fziglio@redhat.com>
 <297374572.23872965.1561102465194.JavaMail.zimbra@redhat.com>
 <824031730.26515593.1562333475331.JavaMail.zimbra@redhat.com>
 <1355493655.688340.1563435787889.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.17, 10.4.195.21]
Thread-Topic: red-channel: Inline red_channel_pipes_create_batch
Thread-Index: gmWxtUSwKR8lDtBeC0m6mS0ZE+RvUet58uzLkSBV5crR9ZmhZQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Thu, 01 Aug 2019 16:22:02 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 06/13] red-channel: Inline
 red_channel_pipes_create_batch
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
ID4gPiAKPiA+ID4gPiAKPiA+ID4gPiBUaGUgZnVuY3Rpb24gaXMgY2FsbGVkIG9ubHkgYnkgcmVk
X2NoYW5uZWxfcGlwZXNfbmV3X2FkZC4KPiA+ID4gPiAKPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBG
cmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KPiA+ID4gPiAtLS0KPiA+ID4gPiAg
c2VydmVyL3JlZC1jaGFubmVsLmMgfCAyMCArKysrLS0tLS0tLS0tLS0tLS0tLQo+ID4gPiA+ICAx
IGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMoLSkKPiA+ID4gPiAK
PiA+ID4gPiBkaWZmIC0tZ2l0IGEvc2VydmVyL3JlZC1jaGFubmVsLmMgYi9zZXJ2ZXIvcmVkLWNo
YW5uZWwuYwo+ID4gPiA+IGluZGV4IDgyZTUyMjM5NS4uNDg3MmQyODA3IDEwMDY0NAo+ID4gPiA+
IC0tLSBhL3NlcnZlci9yZWQtY2hhbm5lbC5jCj4gPiA+ID4gKysrIGIvc2VydmVyL3JlZC1jaGFu
bmVsLmMKPiA+ID4gPiBAQCAtNTk4LDMyICs1OTgsMjcgQEAgc3RhdGljIGJvb2wKPiA+ID4gPiBy
ZWRfY2hhbm5lbF9ub19pdGVtX2JlaW5nX3NlbnQoUmVkQ2hhbm5lbAo+ID4gPiA+ICpjaGFubmVs
KQo+ID4gPiA+ICAgKiBUT0RPIC0gaW5saW5lPyBtYWNybz8gcmlnaHQgbm93IHRoaXMgaXMgdGhl
IHNpbXBsZXN0IGZyb20gY29kZQo+ID4gPiA+ICAgYW1vdW50Cj4gPiA+ID4gICAqLwo+ID4gPiA+
ICAKPiA+ID4gPiAtdHlwZWRlZiB2b2lkICgqcmNjX2l0ZW1fdCkoUmVkQ2hhbm5lbENsaWVudCAq
cmNjLCBSZWRQaXBlSXRlbSAqaXRlbSk7Cj4gPiA+ID4gLQo+ID4gPiA+ICAvKioKPiA+ID4gPiAt
ICogcmVkX2NoYW5uZWxfcGlwZXNfY3JlYXRlX2JhdGNoOgo+ID4gPiA+ICsgKiByZWRfY2hhbm5l
bF9waXBlc19uZXdfYWRkOgo+ID4gPiA+ICAgKiBAY2hhbm5lbDogYSBjaGFubmVsCj4gPiA+ID4g
ICAqIEBjcmVhdG9yOiBhIGNhbGxiYWNrIHRvIGNyZWF0ZSBwaXBlIGl0ZW0gKG5vdCBudWxsKQo+
ID4gPiA+ICAgKiBAZGF0YTogdGhlIGRhdGEgdG8gcGFzcyB0byB0aGUgY3JlYXRvcgo+ID4gPiA+
IC0gKiBAcGlwZV9hZGQ6IGEgY2FsbGJhY2sgdG8gYWRkIG5vbi1udWxsIHBpcGUgaXRlbXMgKG5v
dCBudWxsKQo+ID4gPiA+ICAgKgo+ID4gPiA+ICAgKiBSZXR1cm5zOiB0aGUgbnVtYmVyIG9mIGFk
ZGVkIGl0ZW1zCj4gPiA+ID4gICAqKi8KPiA+ID4gPiAtc3RhdGljIGludCByZWRfY2hhbm5lbF9w
aXBlc19jcmVhdGVfYmF0Y2goUmVkQ2hhbm5lbCAqY2hhbm5lbCwKPiA+ID4gPiAtICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBuZXdfcGlwZV9pdGVtX3QgY3JlYXRvciwgdm9pZCAqZGF0
YSwKPiA+ID4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByY2NfaXRlbV90IHBp
cGVfYWRkKQo+ID4gPiA+ICtpbnQgcmVkX2NoYW5uZWxfcGlwZXNfbmV3X2FkZChSZWRDaGFubmVs
ICpjaGFubmVsLAo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBuZXdfcGlw
ZV9pdGVtX3QgY3JlYXRvciwgdm9pZCAqZGF0YSkKPiA+ID4gPiAgewo+ID4gPiA+ICAgICAgUmVk
Q2hhbm5lbENsaWVudCAqcmNjOwo+ID4gPiA+ICAgICAgUmVkUGlwZUl0ZW0gKml0ZW07Cj4gPiA+
ID4gICAgICBpbnQgbnVtID0gMCwgbiA9IDA7Cj4gPiA+ID4gIAo+ID4gPiA+ICAgICAgc3BpY2Vf
YXNzZXJ0KGNyZWF0b3IgIT0gTlVMTCk7Cj4gPiA+ID4gLSAgICBzcGljZV9hc3NlcnQocGlwZV9h
ZGQgIT0gTlVMTCk7Cj4gPiA+ID4gIAo+ID4gPiA+ICAgICAgRk9SRUFDSF9DTElFTlQoY2hhbm5l
bCwgcmNjKSB7Cj4gPiA+ID4gICAgICAgICAgaXRlbSA9ICgqY3JlYXRvcikocmNjLCBkYXRhLCBu
dW0rKyk7Cj4gPiA+ID4gICAgICAgICAgaWYgKGl0ZW0pIHsKPiA+ID4gPiAtICAgICAgICAgICAg
KCpwaXBlX2FkZCkocmNjLCBpdGVtKTsKPiA+ID4gPiArICAgICAgICAgICAgcmVkX2NoYW5uZWxf
Y2xpZW50X3BpcGVfYWRkKHJjYywgaXRlbSk7Cj4gPiA+ID4gICAgICAgICAgICAgIG4rKzsKPiA+
ID4gPiAgICAgICAgICB9Cj4gPiA+ID4gICAgICB9Cj4gPiA+ID4gQEAgLTYzMSwxMyArNjI2LDYg
QEAgc3RhdGljIGludAo+ID4gPiA+IHJlZF9jaGFubmVsX3BpcGVzX2NyZWF0ZV9iYXRjaChSZWRD
aGFubmVsCj4gPiA+ID4gKmNoYW5uZWwsCj4gPiA+ID4gICAgICByZXR1cm4gbjsKPiA+ID4gPiAg
fQo+ID4gPiA+ICAKPiA+ID4gPiAtaW50IHJlZF9jaGFubmVsX3BpcGVzX25ld19hZGQoUmVkQ2hh
bm5lbCAqY2hhbm5lbCwKPiA+ID4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbmV3
X3BpcGVfaXRlbV90IGNyZWF0b3IsIHZvaWQgKmRhdGEpCj4gPiA+ID4gLXsKPiA+ID4gPiAtICAg
IHJldHVybiByZWRfY2hhbm5lbF9waXBlc19jcmVhdGVfYmF0Y2goY2hhbm5lbCwgY3JlYXRvciwg
ZGF0YSwKPiA+ID4gPiAtCj4gPiA+ID4gcmVkX2NoYW5uZWxfY2xpZW50X3BpcGVfYWRkKTsKPiA+
ID4gPiAtfQo+ID4gPiA+IC0KPiA+ID4gPiAgdWludDMyX3QgcmVkX2NoYW5uZWxfbWF4X3BpcGVf
c2l6ZShSZWRDaGFubmVsICpjaGFubmVsKQo+ID4gPiA+ICB7Cj4gPiA+ID4gICAgICBSZWRDaGFu
bmVsQ2xpZW50ICpyY2M7Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiBTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBTcGljZS1kZXZlbEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL3NwaWNlLWRldmVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9zcGljZS1kZXZlbA==
