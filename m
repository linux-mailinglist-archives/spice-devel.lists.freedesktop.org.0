Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD4DECFC5A
	for <lists+spice-devel@lfdr.de>; Tue,  8 Oct 2019 16:25:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4193389E7C;
	Tue,  8 Oct 2019 14:25:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7A3D6E7D5
 for <spice-devel@lists.freedesktop.org>; Tue,  8 Oct 2019 14:25:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 515277EBAE
 for <spice-devel@lists.freedesktop.org>; Tue,  8 Oct 2019 14:25:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 499185D9CD
 for <spice-devel@lists.freedesktop.org>; Tue,  8 Oct 2019 14:25:51 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3ED9D18089C8;
 Tue,  8 Oct 2019 14:25:51 +0000 (UTC)
Date: Tue, 8 Oct 2019 10:25:51 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <1586257449.5967868.1570544751076.JavaMail.zimbra@redhat.com>
In-Reply-To: <20191008132159.zn6xtxjtuu5ow46n@wingsuit>
References: <20191007103906.30517-1-fziglio@redhat.com>
 <20191007103906.30517-4-fziglio@redhat.com>
 <20191008132159.zn6xtxjtuu5ow46n@wingsuit>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.12, 10.4.195.19]
Thread-Topic: smartcard-channel-client: Remove unused parameter
Thread-Index: ErK6Pandyyl5/+I7Qh11nDiRYGuIRA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Tue, 08 Oct 2019 14:25:51 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 3/8]
 smartcard-channel-client: Remove unused parameter
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

PiAKPiBIaSwKPiAKPiBPbiBNb24sIE9jdCAwNywgMjAxOSBhdCAxMTozOTowMUFNICswMTAwLCBG
cmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gPiAibmFtZSIgcGFyYW1ldGVyIG9mIHNtYXJ0Y2FyZF9j
aGFubmVsX2NsaWVudF9hZGRfcmVhZGVyIGl0J3Mgbm90Cj4gPiB1c2VkLgo+ID4gCj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KPiAKPiBJIGd1
ZXNzIGl0IHdhcyB1c2VkIGZvciBkZWJ1Z2dpbmc/Cj4gCgpBcyBmYXIgYXMgSSBjYW4gc2VlIHdh
cyBuZXZlciB1c2VkIHNpbmNlIHRoZSBpbml0aWFsIGNvbW1pdC4KCj4gICAgIEFja2VkLWJ5OiBW
aWN0b3IgVG9zbyA8dmljdG9ydG9zb0ByZWRoYXQuY29tPgo+IAo+ID4gLS0tCj4gPiAgc2VydmVy
L3NtYXJ0Y2FyZC1jaGFubmVsLWNsaWVudC5jIHwgNSArKy0tLQo+ID4gIDEgZmlsZSBjaGFuZ2Vk
LCAyIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9z
ZXJ2ZXIvc21hcnRjYXJkLWNoYW5uZWwtY2xpZW50LmMKPiA+IGIvc2VydmVyL3NtYXJ0Y2FyZC1j
aGFubmVsLWNsaWVudC5jCj4gPiBpbmRleCAwYjg2NDRjNy4uMDhhZjQ5ZGYgMTAwNjQ0Cj4gPiAt
LS0gYS9zZXJ2ZXIvc21hcnRjYXJkLWNoYW5uZWwtY2xpZW50LmMKPiA+ICsrKyBiL3NlcnZlci9z
bWFydGNhcmQtY2hhbm5lbC1jbGllbnQuYwo+ID4gQEAgLTIxOSw4ICsyMTksNyBAQCBzdGF0aWMg
dm9pZAo+ID4gc21hcnRjYXJkX2NoYW5uZWxfY2xpZW50X3B1c2hfZXJyb3IoUmVkQ2hhbm5lbENs
aWVudCAqcmNjLAo+ID4gICAgICByZWRfY2hhbm5lbF9jbGllbnRfcGlwZV9hZGRfcHVzaChyY2Ms
ICZlcnJvcl9pdGVtLT5iYXNlKTsKPiA+ICB9Cj4gPiAgCj4gPiAtc3RhdGljIHZvaWQgc21hcnRj
YXJkX2NoYW5uZWxfY2xpZW50X2FkZF9yZWFkZXIoU21hcnRDYXJkQ2hhbm5lbENsaWVudAo+ID4g
KnNjYywKPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB1aW50OF90ICpuYW1lKQo+ID4gK3N0YXRpYyB2b2lkIHNtYXJ0Y2FyZF9jaGFubmVsX2NsaWVu
dF9hZGRfcmVhZGVyKFNtYXJ0Q2FyZENoYW5uZWxDbGllbnQKPiA+ICpzY2MpCj4gPiAgewo+ID4g
ICAgICBpZiAoIXNjYy0+cHJpdi0+c21hcnRjYXJkKSB7IC8qIHdlIGFscmVhZHkgdHJpZWQgdG8g
YXR0YWNoIGEgcmVhZGVyIHRvCj4gPiAgICAgIHRoZSBjbGllbnQKPiA+ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB3aGVuIGl0IGNvbm5lY3RlZCAqLwo+ID4gQEAg
LTI4OCw3ICsyODcsNyBAQCBib29sCj4gPiBzbWFydGNhcmRfY2hhbm5lbF9jbGllbnRfaGFuZGxl
X21lc3NhZ2UoUmVkQ2hhbm5lbENsaWVudCAqcmNjLAo+ID4gICAgICBzcGljZV9hc3NlcnQoc2l6
ZSA9PSB2aGVhZGVyLT5sZW5ndGggKyBzaXplb2YoVlNDTXNnSGVhZGVyKSk7Cj4gPiAgICAgIHN3
aXRjaCAodmhlYWRlci0+dHlwZSkgewo+ID4gICAgICAgICAgY2FzZSBWU0NfUmVhZGVyQWRkOgo+
ID4gLSAgICAgICAgICAgIHNtYXJ0Y2FyZF9jaGFubmVsX2NsaWVudF9hZGRfcmVhZGVyKHNjYywg
bXNnICsKPiA+IHNpemVvZihWU0NNc2dIZWFkZXIpKTsKPiA+ICsgICAgICAgICAgICBzbWFydGNh
cmRfY2hhbm5lbF9jbGllbnRfYWRkX3JlYWRlcihzY2MpOwo+ID4gICAgICAgICAgICAgIHJldHVy
biBUUlVFOwo+ID4gICAgICAgICAgICAgIGJyZWFrOwo+ID4gICAgICAgICAgY2FzZSBWU0NfUmVh
ZGVyUmVtb3ZlOgoKRnJlZGlhbm8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL3NwaWNlLWRldmVs
