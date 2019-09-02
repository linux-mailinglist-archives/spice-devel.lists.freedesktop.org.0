Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D5FA5411
	for <lists+spice-devel@lfdr.de>; Mon,  2 Sep 2019 12:34:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE39C89A57;
	Mon,  2 Sep 2019 10:34:19 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70DDE89A57
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Sep 2019 10:34:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1BA043082129
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Sep 2019 10:34:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 105BA19C5B
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Sep 2019 10:34:19 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 06925244E2;
 Mon,  2 Sep 2019 10:34:19 +0000 (UTC)
Date: Mon, 2 Sep 2019 06:34:18 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <632769217.10358946.1567420458838.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190902101923.5liythh2zrmbxgrx@wingsuit>
References: <20190725134353.23174-1-fziglio@redhat.com>
 <20190902101923.5liythh2zrmbxgrx@wingsuit>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.16, 10.4.195.23]
Thread-Topic: usb-backend: Cache isochronous value
Thread-Index: NYk4OdPMIS5b7GFLZ6zZwHMKP1Prjw==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Mon, 02 Sep 2019 10:34:19 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk 1/3] usb-backend: Cache
 isochronous value
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

PiAKPiBIaSwKPiAKPiBPbiBUaHUsIEp1bCAyNSwgMjAxOSBhdCAwMjo0Mzo1MVBNICswMTAwLCBG
cmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gPiBBbGxvd3MgdG8gcmVtb3ZlIF9TcGljZVVzYkRldmlj
ZSBzdHJ1Y3R1cmUuCj4gPiBfU3BpY2VVc2JEZXZpY2UgaXMgb25seSBjYWNoaW5nIHRoaXMgdmFs
dWUgZnJvbSBTcGljZVVzYkJhY2tlbmREZXZpY2UuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IEZy
ZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgo+ID4gLS0tCj4gPiAgc3JjL3VzYi1i
YWNrZW5kLmMgfCA5ICsrKysrKysrKwo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMo
KykKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL3NyYy91c2ItYmFja2VuZC5jIGIvc3JjL3VzYi1iYWNr
ZW5kLmMKPiA+IGluZGV4IDlhYzg1OTVjLi43ZTBlNGE4YSAxMDA2NDQKPiA+IC0tLSBhL3NyYy91
c2ItYmFja2VuZC5jCj4gPiArKysgYi9zcmMvdXNiLWJhY2tlbmQuYwo+ID4gQEAgLTUwLDYgKzUw
LDggQEAgc3RydWN0IF9TcGljZVVzYkJhY2tlbmREZXZpY2UKPiA+ICAgICAgZ2ludCByZWZfY291
bnQ7Cj4gPiAgICAgIFNwaWNlVXNiQmFja2VuZENoYW5uZWwgKmF0dGFjaGVkX3RvOwo+ID4gICAg
ICBVc2JEZXZpY2VJbmZvcm1hdGlvbiBkZXZpY2VfaW5mbzsKPiA+ICsgICAgdWludDhfdCBjYWNo
ZWRfaXNvY2hyb25vdXNfdmFsaWQgOiAxOwo+ID4gKyAgICB1aW50OF90IGNhY2hlZF9pc29jaHJv
bm91cyA6IDE7Cj4gCj4gSSBrbm93IHRoaXMgbWlnaHQgaGF2ZSBiZWVuIGFza2VkIG1vcmUgdGhl
biBvbmNlIGJ1dCB3aHkgbm90Cj4gdXNpbmcgYm9vbCBoZXJlPwo+IAoKSSBjYW4gbW92ZSB0byBi
b29sLCB3b24ndCBiZSBraWxsaW5nIHNvbWUgbW9yZSBzcGFjZSB1c2VkLgpOb3QgdGhhdCBwb3Rl
bnRpYWxseSBiaXQgZmllbGRzIGFuZCBib29sIGNvdWxkIGJlIGNvbWJpbmVkLgoKPiA+ICB9Owo+
ID4gIAo+ID4gIHN0cnVjdCBfU3BpY2VVc2JCYWNrZW5kCj4gPiBAQCAtMzQxLDYgKzM0MywxMCBA
QCBnYm9vbGVhbgo+ID4gc3BpY2VfdXNiX2JhY2tlbmRfZGV2aWNlX2lzb2NoKFNwaWNlVXNiQmFj
a2VuZERldmljZSAqZGV2KQo+ID4gICAgICBnaW50IGksIGosIGs7Cj4gPiAgICAgIGludCByYzsK
PiA+ICAKPiA+ICsgICAgaWYgKGRldi0+Y2FjaGVkX2lzb2Nocm9ub3VzX3ZhbGlkKSB7Cj4gPiAr
ICAgICAgICByZXR1cm4gZGV2LT5jYWNoZWRfaXNvY2hyb25vdXM7Cj4gPiArICAgIH0KPiA+ICsK
PiA+ICAgICAgZ19yZXR1cm5fdmFsX2lmX2ZhaWwobGliZGV2ICE9IE5VTEwsIDApOwo+ID4gIAo+
ID4gICAgICByYyA9IGxpYnVzYl9nZXRfYWN0aXZlX2NvbmZpZ19kZXNjcmlwdG9yKGxpYmRldiwg
JmNvbmZfZGVzYyk7Cj4gPiBAQCAtMzYyLDYgKzM2OCw5IEBAIGdib29sZWFuCj4gPiBzcGljZV91
c2JfYmFja2VuZF9kZXZpY2VfaXNvY2goU3BpY2VVc2JCYWNrZW5kRGV2aWNlICpkZXYpCj4gPiAg
ICAgICAgICB9Cj4gPiAgICAgIH0KPiA+ICAKPiA+ICsgICAgZGV2LT5jYWNoZWRfaXNvY2hyb25v
dXNfdmFsaWQgPSBUUlVFOwo+ID4gKyAgICBkZXYtPmNhY2hlZF9pc29jaHJvbm91cyA9IGlzb2Nf
Zm91bmQ7Cj4gPiArCj4gPiAgICAgIGxpYnVzYl9mcmVlX2NvbmZpZ19kZXNjcmlwdG9yKGNvbmZf
ZGVzYyk7Cj4gPiAgICAgIHJldHVybiBpc29jX2ZvdW5kOwo+ID4gIH0KCkZyZWRpYW5vCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1h
aWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
