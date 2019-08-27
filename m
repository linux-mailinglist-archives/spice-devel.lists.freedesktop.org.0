Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E9D9EF90
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 18:00:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4750689B62;
	Tue, 27 Aug 2019 16:00:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE96F89B62
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 16:00:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 587B24FCC7
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 16:00:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4E3B25D6B0
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 16:00:36 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 44B8E4EE50;
 Tue, 27 Aug 2019 16:00:36 +0000 (UTC)
Date: Tue, 27 Aug 2019 12:00:36 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <702618598.9472487.1566921636222.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190827123048.zkau5moc3rheie6i@wingsuit>
References: <20190827092246.10276-1-fziglio@redhat.com>
 <20190827092246.10276-19-fziglio@redhat.com>
 <20190827123048.zkau5moc3rheie6i@wingsuit>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.79, 10.4.195.24]
Thread-Topic: build: Do not build usbredir dependent file is usbredir disabled
Thread-Index: +HxZ7h3El4Tr9DGTUCgpJJSS0LQmIw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Tue, 27 Aug 2019 16:00:36 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk v4 18/29] build: Do not build
 usbredir dependent file is usbredir disabled
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

PiAKPiBIaSwKPiAKPiBPbiBUdWUsIEF1ZyAyNywgMjAxOSBhdCAxMDoyMjozNUFNICswMTAwLCBG
cmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gPiBUaGVzZSBmaWxlcyB3b3VsZCBlbmQgdXAgdG8gY29t
cGlsZSBlbXB0eSBjb2RlLCBubyByZWFzb24KPiA+IHRvIGNvbXBpbGUgYW5kIGxpbmsgdGhlbS4K
PiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5j
b20+Cj4gPiAtLS0KPiA+ICBzcmMvbWVzb24uYnVpbGQgfCAxMCArKysrKy0tLS0tCj4gPiAgMSBm
aWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlm
ZiAtLWdpdCBhL3NyYy9tZXNvbi5idWlsZCBiL3NyYy9tZXNvbi5idWlsZAo+ID4gaW5kZXggMDBl
YjI3NzguLjA0NjFkZWE2IDEwMDY0NAo+ID4gLS0tIGEvc3JjL21lc29uLmJ1aWxkCj4gPiArKysg
Yi9zcmMvbWVzb24uYnVpbGQKPiA+IEBAIC0xMTksMTEgKzExOSw2IEBAIHNwaWNlX2NsaWVudF9n
bGliX3NvdXJjZXMgPSBbCj4gPiAgICAnc3BpY2UtdXJpLXByaXYuaCcsCj4gPiAgICAnc3BpY2Ut
dXRpbC1wcml2LmgnLAo+ID4gICAgJ3VzYi1kZXZpY2UtbWFuYWdlci1wcml2LmgnLAo+ID4gLSAg
J3VzYnV0aWwuYycsCj4gPiAtICAndXNidXRpbC5oJywKPiA+IC0gICd1c2ItYmFja2VuZC5jJywK
PiA+IC0gICd1c2ItZW11bGF0aW9uLmgnLAo+ID4gLSAgJ3VzYi1iYWNrZW5kLmgnLAo+ID4gICAg
J3ZtY3N0cmVhbS5jJywKPiA+ICAgICd2bWNzdHJlYW0uaCcsCj4gPiAgXQo+ID4gQEAgLTE1OSw2
ICsxNTQsMTEgQEAgZW5kaWYKPiA+ICAKPiA+ICBpZiBzcGljZV9ndGtfaGFzX3VzYnJlZGlyCj4g
PiAgICBzcGljZV9jbGllbnRfZ2xpYl9zb3VyY2VzICs9IFsKPiA+ICsgICAgJ3VzYnV0aWwuYycs
Cj4gPiArICAgICd1c2J1dGlsLmgnLAo+ID4gKyAgICAndXNiLWJhY2tlbmQuYycsCj4gPiArICAg
ICd1c2ItZW11bGF0aW9uLmgnLAo+ID4gKyAgICAndXNiLWJhY2tlbmQuaCcsCj4gCj4gWW91IHNo
b3VsZCBiZSBhYmxlIHRvIHJlbW92ZSBzb21lIGlmZGVmL2VuZGlmIFVTRV9VU0JSRURJUiBub3cs
Cj4gcHJvYmFibHkgc2hvdWxkIGJlIGluIHRoZSBzYW1lIHBhdGNoCj4gCgpZZXMsIEknbGwgZG8g
aXQKCj4gPiAgICAgICd1c2ItZGV2aWNlLWNkLmMnLAo+ID4gICAgICAndXNiLWRldmljZS1jZC5o
JywKPiA+ICAgICAgJ2NkLXNjc2kuYycsCgpGcmVkaWFubwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2Ut
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
