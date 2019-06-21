Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20BCF4E145
	for <lists+spice-devel@lfdr.de>; Fri, 21 Jun 2019 09:34:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A13516E846;
	Fri, 21 Jun 2019 07:34:27 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A163E6E846
 for <spice-devel@lists.freedesktop.org>; Fri, 21 Jun 2019 07:34:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4E102308FC4D
 for <spice-devel@lists.freedesktop.org>; Fri, 21 Jun 2019 07:34:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 441BE5C221
 for <spice-devel@lists.freedesktop.org>; Fri, 21 Jun 2019 07:34:25 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3CC671806B18
 for <spice-devel@lists.freedesktop.org>; Fri, 21 Jun 2019 07:34:25 +0000 (UTC)
Date: Fri, 21 Jun 2019 03:34:25 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <297374572.23872965.1561102465194.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190530142254.28937-6-fziglio@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-6-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.12, 10.4.195.2]
Thread-Topic: red-channel: Inline red_channel_pipes_create_batch
Thread-Index: gmWxtUSwKR8lDtBeC0m6mS0ZE+RvUQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Fri, 21 Jun 2019 07:34:25 +0000 (UTC)
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

cGluZwoKPiAKPiBUaGUgZnVuY3Rpb24gaXMgY2FsbGVkIG9ubHkgYnkgcmVkX2NoYW5uZWxfcGlw
ZXNfbmV3X2FkZC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9A
cmVkaGF0LmNvbT4KPiAtLS0KPiAgc2VydmVyL3JlZC1jaGFubmVsLmMgfCAyMCArKysrLS0tLS0t
LS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlv
bnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvc2VydmVyL3JlZC1jaGFubmVsLmMgYi9zZXJ2ZXIvcmVk
LWNoYW5uZWwuYwo+IGluZGV4IDgyZTUyMjM5NS4uNDg3MmQyODA3IDEwMDY0NAo+IC0tLSBhL3Nl
cnZlci9yZWQtY2hhbm5lbC5jCj4gKysrIGIvc2VydmVyL3JlZC1jaGFubmVsLmMKPiBAQCAtNTk4
LDMyICs1OTgsMjcgQEAgc3RhdGljIGJvb2wgcmVkX2NoYW5uZWxfbm9faXRlbV9iZWluZ19zZW50
KFJlZENoYW5uZWwKPiAqY2hhbm5lbCkKPiAgICogVE9ETyAtIGlubGluZT8gbWFjcm8/IHJpZ2h0
IG5vdyB0aGlzIGlzIHRoZSBzaW1wbGVzdCBmcm9tIGNvZGUgYW1vdW50Cj4gICAqLwo+ICAKPiAt
dHlwZWRlZiB2b2lkICgqcmNjX2l0ZW1fdCkoUmVkQ2hhbm5lbENsaWVudCAqcmNjLCBSZWRQaXBl
SXRlbSAqaXRlbSk7Cj4gLQo+ICAvKioKPiAtICogcmVkX2NoYW5uZWxfcGlwZXNfY3JlYXRlX2Jh
dGNoOgo+ICsgKiByZWRfY2hhbm5lbF9waXBlc19uZXdfYWRkOgo+ICAgKiBAY2hhbm5lbDogYSBj
aGFubmVsCj4gICAqIEBjcmVhdG9yOiBhIGNhbGxiYWNrIHRvIGNyZWF0ZSBwaXBlIGl0ZW0gKG5v
dCBudWxsKQo+ICAgKiBAZGF0YTogdGhlIGRhdGEgdG8gcGFzcyB0byB0aGUgY3JlYXRvcgo+IC0g
KiBAcGlwZV9hZGQ6IGEgY2FsbGJhY2sgdG8gYWRkIG5vbi1udWxsIHBpcGUgaXRlbXMgKG5vdCBu
dWxsKQo+ICAgKgo+ICAgKiBSZXR1cm5zOiB0aGUgbnVtYmVyIG9mIGFkZGVkIGl0ZW1zCj4gICAq
Ki8KPiAtc3RhdGljIGludCByZWRfY2hhbm5lbF9waXBlc19jcmVhdGVfYmF0Y2goUmVkQ2hhbm5l
bCAqY2hhbm5lbCwKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBuZXdfcGlwZV9p
dGVtX3QgY3JlYXRvciwgdm9pZCAqZGF0YSwKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICByY2NfaXRlbV90IHBpcGVfYWRkKQo+ICtpbnQgcmVkX2NoYW5uZWxfcGlwZXNfbmV3X2Fk
ZChSZWRDaGFubmVsICpjaGFubmVsLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBu
ZXdfcGlwZV9pdGVtX3QgY3JlYXRvciwgdm9pZCAqZGF0YSkKPiAgewo+ICAgICAgUmVkQ2hhbm5l
bENsaWVudCAqcmNjOwo+ICAgICAgUmVkUGlwZUl0ZW0gKml0ZW07Cj4gICAgICBpbnQgbnVtID0g
MCwgbiA9IDA7Cj4gIAo+ICAgICAgc3BpY2VfYXNzZXJ0KGNyZWF0b3IgIT0gTlVMTCk7Cj4gLSAg
ICBzcGljZV9hc3NlcnQocGlwZV9hZGQgIT0gTlVMTCk7Cj4gIAo+ICAgICAgRk9SRUFDSF9DTElF
TlQoY2hhbm5lbCwgcmNjKSB7Cj4gICAgICAgICAgaXRlbSA9ICgqY3JlYXRvcikocmNjLCBkYXRh
LCBudW0rKyk7Cj4gICAgICAgICAgaWYgKGl0ZW0pIHsKPiAtICAgICAgICAgICAgKCpwaXBlX2Fk
ZCkocmNjLCBpdGVtKTsKPiArICAgICAgICAgICAgcmVkX2NoYW5uZWxfY2xpZW50X3BpcGVfYWRk
KHJjYywgaXRlbSk7Cj4gICAgICAgICAgICAgIG4rKzsKPiAgICAgICAgICB9Cj4gICAgICB9Cj4g
QEAgLTYzMSwxMyArNjI2LDYgQEAgc3RhdGljIGludCByZWRfY2hhbm5lbF9waXBlc19jcmVhdGVf
YmF0Y2goUmVkQ2hhbm5lbAo+ICpjaGFubmVsLAo+ICAgICAgcmV0dXJuIG47Cj4gIH0KPiAgCj4g
LWludCByZWRfY2hhbm5lbF9waXBlc19uZXdfYWRkKFJlZENoYW5uZWwgKmNoYW5uZWwsCj4gLSAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIG5ld19waXBlX2l0ZW1fdCBjcmVhdG9yLCB2b2lk
ICpkYXRhKQo+IC17Cj4gLSAgICByZXR1cm4gcmVkX2NoYW5uZWxfcGlwZXNfY3JlYXRlX2JhdGNo
KGNoYW5uZWwsIGNyZWF0b3IsIGRhdGEsCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHJlZF9jaGFubmVsX2NsaWVudF9waXBlX2FkZCk7Cj4gLX0KPiAtCj4gIHVp
bnQzMl90IHJlZF9jaGFubmVsX21heF9waXBlX3NpemUoUmVkQ2hhbm5lbCAqY2hhbm5lbCkKPiAg
ewo+ICAgICAgUmVkQ2hhbm5lbENsaWVudCAqcmNjOwpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
