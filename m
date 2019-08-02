Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C32517F578
	for <lists+spice-devel@lfdr.de>; Fri,  2 Aug 2019 12:50:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FA3C6EDC2;
	Fri,  2 Aug 2019 10:50:36 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AD396EDC2
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Aug 2019 10:50:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id CA62185542
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Aug 2019 10:50:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C02EA60605
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Aug 2019 10:50:34 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id B434941F40;
 Fri,  2 Aug 2019 10:50:34 +0000 (UTC)
Date: Fri, 2 Aug 2019 06:50:34 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <313564703.4392444.1564743034477.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190802091925.hoief3u2pckeminw@wingsuit>
References: <20190722110841.31711-1-fziglio@redhat.com>
 <20190802091925.hoief3u2pckeminw@wingsuit>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.11, 10.4.195.6]
Thread-Topic: glz-encoder-dict: Remove useless __packed__ attribute
Thread-Index: KdCu6hxEaWjknq+GcKQg3VeXx1Y9zQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Fri, 02 Aug 2019 10:50:34 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 1/3] glz-encoder-dict: Remove
 useless __packed__ attribute
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

PiAKPiBIaSwKPiAKPiBPbiBNb24sIEp1bCAyMiwgMjAxOSBhdCAxMjowODozOVBNICswMTAwLCBG
cmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gPiBUaGUgc3RydWN0dXJlIGhhcyBubyBob2xlcywgYWRk
aW5nIHRoaXMgYXR0cmlidXRlIGNvdWxkIG9ubHkKPiA+IGRlY3JlYXNlIGVmZmljaWVuY3kuCj4g
Cj4gV2h5IGRvZXMgaXQgZGVjcmVhc2UgZWZmaWNpZW5jeT8KPiAKCklmIHRoZSBnaWFudCBhcnJh
eSB0aGF0IGNvbnRhaW5zIHRoZXNlIHN0cnVjdHVyZSBnZXQgdW5hbGlnbmVkIGFzIHRoZQpwcmV2
aW91cyBmaWVsZHMgYXJlIG5vdCA0LzggYnl0ZXMgYWxpZ25lZCB0aGUgYWRkcmVzc2VzIHdvbid0
IGJlIGFsaWduZWQuCkFuZCB1bmFsaWduZWQgYWNjZXNzZXMgYXJlIGxlc3MgZWZmaWNpZW50IChl
dmVuIG1vcmUgZm9yIGEgaGFzaCB0YWJsZQphcyB0aGUgcmVhZC93cml0ZSBhcmUgbm90IHNlcXVl
bnRpYWwpLgpBY3R1YWxseSBiZWluZyBhIGNhY2hlIG1heWJlIHdvdWxkIGJlIHdvcnRoIGZvcmNp
bmcgOCBieXRlcyBvZiBhbGlnbm1lbnQKaW5zdGVhZCBvZiA0LCB0b2RheSBtYW55IGFyY2hpdGVj
dHVyZSBoYXZlIDY0IGJpdCBidXNlcyAod2l0aCBzb21lCkdQVSBoYXZpbmcgMTI4IG9yIGV2ZW4g
MjU2IGJpdHMgYnVzZXMhKS4KCj4gPiBOb3RlIHRoYXQgSGFzaEVudHJ5IHN0cnVjdHVyZSBpcyB1
c2VkIGZvciBhIGxhcmdlICg4TUIpIGFycmF5IHNvCj4gPiB0aGlzIHdvbid0IGFmZmVjdCBtdWNo
IHBvc3NpYmxlIGNvbnRhaW5lciBzaXplLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBGcmVkaWFu
byBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KPiA+IC0tLQo+ID4gIHNlcnZlci9nbHotZW5j
b2Rlci1wcml2LmggfCAyICstCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAx
IGRlbGV0aW9uKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvZ2x6LWVuY29kZXItcHJp
di5oIGIvc2VydmVyL2dsei1lbmNvZGVyLXByaXYuaAo+ID4gaW5kZXggMDhkYzAwN2NlLi43NzU3
ZjIzMmMgMTAwNjQ0Cj4gPiAtLS0gYS9zZXJ2ZXIvZ2x6LWVuY29kZXItcHJpdi5oCj4gPiArKysg
Yi9zZXJ2ZXIvZ2x6LWVuY29kZXItcHJpdi5oCj4gPiBAQCAtNzYsNyArNzYsNyBAQCBzdHJ1Y3Qg
V2luZG93SW1hZ2VTZWdtZW50IHsKPiA+ICB9Owo+ID4gIAo+ID4gIAo+ID4gLXN0cnVjdCAgX19h
dHRyaWJ1dGVfXyAoKF9fcGFja2VkX18pKSBIYXNoRW50cnkgewo+ID4gK3N0cnVjdCBIYXNoRW50
cnkgewo+ID4gICAgICB1aW50MzJfdCBpbWFnZV9zZWdfaWR4Owo+ID4gICAgICB1aW50MzJfdCBy
ZWZfcGl4X2lkeDsKPiA+ICB9Owo+ID4gLS0KPiA+IDIuMjAuMQo+ID4gCj4gPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gU3BpY2UtZGV2ZWwgbWFp
bGluZyBsaXN0Cj4gPiBTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+IGh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWwKPiAK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
