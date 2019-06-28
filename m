Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F3485954A
	for <lists+spice-devel@lfdr.de>; Fri, 28 Jun 2019 09:45:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3E466E88A;
	Fri, 28 Jun 2019 07:45:12 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DEFA6E88A
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:45:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 18F173084242
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:45:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 04B8A5D705
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:45:11 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id EDCAB4EBC0
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:45:10 +0000 (UTC)
Date: Fri, 28 Jun 2019 03:45:09 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1390010896.25082674.1561707909392.JavaMail.zimbra@redhat.com>
In-Reply-To: <450966702.23631627.1560938727478.JavaMail.zimbra@redhat.com>
References: <20190513094556.14035-1-fziglio@redhat.com>
 <20190513094556.14035-2-fziglio@redhat.com>
 <1094050931.18993317.1558342635607.JavaMail.zimbra@redhat.com>
 <1708019240.20497733.1559121362503.JavaMail.zimbra@redhat.com>
 <701010203.22408113.1560318869184.JavaMail.zimbra@redhat.com>
 <450966702.23631627.1560938727478.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.3, 10.4.195.27]
Thread-Topic: qxl_dev: Fix alignment for QXLReleaseInfo
Thread-Index: PLj9rM9LIj7bcjiBJXa27vRLE5QkWuZGaN5Z6du95bzzCXrJJhO4EM6W
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Fri, 28 Jun 2019 07:45:11 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-protocol 2/3] qxl_dev: Fix alignment
 for QXLReleaseInfo
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

cGluZyA1Cgo+IAo+IHBpbmcgNAo+IAo+ID4gCj4gPiBwaW5nIDMKPiA+IAo+ID4gPiAKPiA+ID4g
cGluZwo+ID4gPiAKPiA+ID4gPiAKPiA+ID4gPiBwaW5nCj4gPiA+ID4gCj4gPiA+ID4gPiAKPiA+
ID4gPiA+IERvIG5vdCBkZWNsYXJlIHRoZSBzdHJ1Y3R1cmUgYXMgYWxpZ25lZC4KPiA+ID4gPiA+
IFRoZSBzdGFydC9lbmQtcGFja2VkLmggaGVhZGVycyBhZmZlY3RzIG9ubHkgTWluZ1cgb3IgTWlj
cm9zb2Z0Cj4gPiA+ID4gPiBjb21waWxlcnMuIFRvIGhhdmUgdW5hbGlnbmVkIHN0cnVjdHVyZSB3
aXRoIEdDQyBjb21waWxlciB5b3UgaGF2ZQo+ID4gPiA+ID4gdG8gdXNlIFNQSUNFX0FUVFJfUEFD
S0VELiBUaGlzIHdheSB0aGUgZGVmaW5pdGlvbiBhcmUgdGhlIHNhbWUgZm9yCj4gPiA+ID4gPiBh
bGwgY29tcGlsZXIuCj4gPiA+ID4gPiBUaGlzIHN0cnVjdHVyZSBpcyB1c2VkIGluIGEgbG90IG9m
IFFYTCBzdHJ1Y3R1cmVzIHdoaWNoIGFyZSBub3QKPiA+ID4gPiA+IGFsaWduZWQgY2F1c2luZyB0
byBoYXZlIGFuIGFsaWduZWQgc3RydWN0dXJlIHRvIGJlIHBvdGVudGlhbGx5Cj4gPiA+ID4gPiB1
bmFsaWduZWQuCj4gPiA+ID4gPiBBcyB0aGlzIHN0cnVjdHVyZSBoYXMgbm8gaG9sZXMgdGhpcyBj
aGFuZ2UgZG9lcyBub3QgbWFrZSBhbnkgc2l6ZQo+ID4gPiA+ID4gY2hhbmdlIHVzaW5nIGFueSBj
b21waWxlci4KPiA+ID4gPiA+IFRoZSBjaGFuZ2Ugd2lsbCBvbmx5IGNoYW5nZSB0aGUgYWxpZ25t
ZW50IGZyb20gNC84IHRvIDEuCj4gPiA+ID4gPiBUaGlzIGNvdWxkIGFmZmVjdCBzdHJ1Y3R1cmVz
IGNvbnRhaW5pbmcgdGhpcyB1bmlvbiBob3dldmVyIGJlc2lkZQo+ID4gPiA+ID4gcGFja2VkIHN0
cnVjdHVyZSBpbiBxeGxfZGV2LmggKHdoaWNoIGFyZSBub3QgYWZmZWN0ZWQpIHRoZXJlIGFyZSBu
bwo+ID4gPiA+ID4gb3RoZXIgdXNhZ2VzIGFzIHN1Y2ggYnkgc3BpY2UtZ3RrLCBRZW11IG9yIHNw
aWNlLXNlcnZlci4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8g
WmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Cj4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+ICBzcGlj
ZS9xeGxfZGV2LmggfCAyICstCj4gPiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspLCAxIGRlbGV0aW9uKC0pCj4gPiA+ID4gPiAKPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9zcGlj
ZS9xeGxfZGV2LmggYi9zcGljZS9xeGxfZGV2LmgKPiA+ID4gPiA+IGluZGV4IGE5Y2M0ZjQuLjY1
OWY5MzAgMTAwNjQ0Cj4gPiA+ID4gPiAtLS0gYS9zcGljZS9xeGxfZGV2LmgKPiA+ID4gPiA+ICsr
KyBiL3NwaWNlL3F4bF9kZXYuaAo+ID4gPiA+ID4gQEAgLTI3NSw3ICsyNzUsNyBAQCB0eXBlZGVm
IHN0cnVjdCBTUElDRV9BVFRSX0FMSUdORUQoNCkKPiA+ID4gPiA+IFNQSUNFX0FUVFJfUEFDS0VE
Cj4gPiA+ID4gPiBRWExSYW0gewo+ID4gPiA+ID4gIAo+ID4gPiA+ID4gIH0gUVhMUmFtOwo+ID4g
PiA+ID4gIAo+ID4gPiA+ID4gLXR5cGVkZWYgdW5pb24gUVhMUmVsZWFzZUluZm8gewo+ID4gPiA+
ID4gK3R5cGVkZWYgdW5pb24gU1BJQ0VfQVRUUl9QQUNLRUQgUVhMUmVsZWFzZUluZm8gewo+ID4g
PiA+ID4gICAgICB1aW50NjRfdCBpZDsgICAgICAvLyBpbgo+ID4gPiA+ID4gICAgICB1aW50NjRf
dCBuZXh0OyAgICAvLyBvdXQKPiA+ID4gPiA+ICB9IFFYTFJlbGVhc2VJbmZvOwo+ID4gPiA+IAo+
ID4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4g
PiBTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKPiA+ID4gU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCj4gPiA+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vc3BpY2UtZGV2ZWwKPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gPiBTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKPiA+IFNwaWNlLWRldmVs
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0Cj4gU3BpY2Ut
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbApfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
