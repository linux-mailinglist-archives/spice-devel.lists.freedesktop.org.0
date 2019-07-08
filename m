Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 165C661B48
	for <lists+spice-devel@lfdr.de>; Mon,  8 Jul 2019 09:30:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B47F89B97;
	Mon,  8 Jul 2019 07:30:01 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB0FD89B97
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 07:30:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 95B41308621E
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 07:30:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8C5352C003
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 07:30:00 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8363C1833001
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 07:30:00 +0000 (UTC)
Date: Mon, 8 Jul 2019 03:30:00 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1492833640.26606047.1562571000489.JavaMail.zimbra@redhat.com>
In-Reply-To: <2087001786.25082796.1561708014941.JavaMail.zimbra@redhat.com>
References: <1321EDAF-9A69-490E-955D-2FD0AF7EB8FF@redhat.com>
 <20190617163456.12359-1-fziglio@redhat.com>
 <2087001786.25082796.1561708014941.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.10, 10.4.195.6]
Thread-Topic: spice-char: Add some documentation to SpiceCharDeviceInterface
Thread-Index: XEfUT0tktyBqrdAvxYN628z+lZCkpwBKSRLg
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Mon, 08 Jul 2019 07:30:00 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server v2] spice-char: Add some
 documentation to SpiceCharDeviceInterface
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

cGluZwoKPiAKPiBwaW5nCj4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6
aWdsaW9AcmVkaGF0LmNvbT4KPiA+IC0tLQo+ID4gIHNlcnZlci9zcGljZS1jaGFyLmggfCAyNiAr
KysrKysrKysrKysrKysrKysrKysrKysrKwo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyNiBpbnNlcnRp
b25zKCspCj4gPiAKPiA+IENoYW5nZXMgc2luY2UgdjE6Cj4gPiAtIHVwZGF0ZWQgY29tbWVudHMK
PiA+IAo+ID4gZGlmZiAtLWdpdCBhL3NlcnZlci9zcGljZS1jaGFyLmggYi9zZXJ2ZXIvc3BpY2Ut
Y2hhci5oCj4gPiBpbmRleCAxYThhMDMxZDIuLmEzYjlkMjZiZiAxMDA2NDQKPiA+IC0tLSBhL3Nl
cnZlci9zcGljZS1jaGFyLmgKPiA+ICsrKyBiL3NlcnZlci9zcGljZS1jaGFyLmgKPiA+IEBAIC00
MCw5ICs0MCwzNSBAQCB0eXBlZGVmIGVudW0gewo+ID4gIHN0cnVjdCBTcGljZUNoYXJEZXZpY2VJ
bnRlcmZhY2Ugewo+ID4gICAgICBTcGljZUJhc2VJbnRlcmZhY2UgYmFzZTsKPiA+ICAKPiA+ICsg
ICAgLyogU2V0IHRoZSBzdGF0ZSBvZiB0aGUgZGV2aWNlLgo+ID4gKyAgICAgKiBjb25uZWN0ZWQg
c2hvdWxkIGJlIDAgb3IgMS4KPiA+ICsgICAgICogU2V0dGluZyBzdGF0ZSB0byAwIGNhdXNlcyB0
aGUgZGV2aWNlIHRvIGJlIGRpc2FibGVkLgo+ID4gKyAgICAgKiBUaGlzIGNhbiBiZSB1c2VkIGJ5
IFNQSUNFIHNlcnZlciB0byB0ZWxsIGd1ZXN0IHRoYXQgZGV2aWNlIGlzIG5vdAo+ID4gKyAgICAg
KiB3b3JraW5nIGFueW1vcmUgKGZvciBpbnN0YW5jZSBiZWNhdXNlIHRoZSBndWVzdCBpdHNlbGYg
c2VudCBzb21lCj4gPiArICAgICAqIHdyb25nIHJlcXVlc3QpLgo+ID4gKyAgICAgKi8KPiA+ICAg
ICAgdm9pZCAoKnN0YXRlKShTcGljZUNoYXJEZXZpY2VJbnN0YW5jZSAqc2luLCBpbnQgY29ubmVj
dGVkKTsKPiA+ICsKPiA+ICsgICAgLyogV3JpdGUgc29tZSBieXRlcyB0byB0aGUgY2hhcmFjdGVy
IGRldmljZS4KPiA+ICsgICAgICogUmV0dXJucyBieXRlcyBjb3BpZWQgZnJvbSBidWYgb3IgYSB2
YWx1ZSA8IDAgb24gZXJyb3JzLgo+ID4gKyAgICAgKiBJZiBhYmxlIHRvIHdyaXRlIHNvbWUgYnl0
ZXMgdGhlIGZ1bmN0aW9uIHNob3VsZCByZXR1cm4gdGhlIGFtb3VudAo+ID4gb2YKPiA+ICsgICAg
ICogYnl0ZXMgc3VjY2Vzc2Z1bGx5IHdyaXR0ZW4uCj4gPiArICAgICAqIEZ1bmN0aW9uIGNhbiBy
ZXR1cm4gYSB2YWx1ZSA8IGxlbiwgZXZlbiAwLgo+ID4gKyAgICAgKiBlcnJubyBpcyBub3QgZGV0
ZXJtaW5lZCBhZnRlciBjYWxsaW5nIHRoaXMgZnVuY3Rpb24uCj4gPiArICAgICAqIEZ1bmN0aW9u
IHNob3VsZCBiZSBpbXBsZW1lbnRlZCBhcyBuby1ibG9ja2luZy4KPiA+ICsgICAgICogQSBsZW4g
PCAwIGNhdXNlcyBpbmRldGVybWluYXRlIHJlc3VsdHMuCj4gPiArICAgICAqLwo+ID4gICAgICBp
bnQgKCp3cml0ZSkoU3BpY2VDaGFyRGV2aWNlSW5zdGFuY2UgKnNpbiwgY29uc3QgdWludDhfdCAq
YnVmLCBpbnQKPiA+ICAgICAgbGVuKTsKPiA+ICsKPiA+ICsgICAgLyogUmVhZCBzb21lIGJ5dGVz
IGZyb20gdGhlIGNoYXJhY3RlciBkZXZpY2UuCj4gPiArICAgICAqIFJldHVybnMgYnl0ZXMgY29w
aWVkIGludG8gYnVmIG9yIGEgdmFsdWUgPCAwIG9uIGVycm9ycy4KPiA+ICsgICAgICogRnVuY3Rp
b24gY2FuIHJldHVybiAwIGlmIG5vIGRhdGEgaXMgYXZhaWxhYmxlIG9yIGxlbiBpcyAwLgo+ID4g
KyAgICAgKiBlcnJubyBpcyBub3QgZGV0ZXJtaW5lZCBhZnRlciBjYWxsaW5nIHRoaXMgZnVuY3Rp
b24uCj4gPiArICAgICAqIEZ1bmN0aW9uIHNob3VsZCBiZSBpbXBsZW1lbnRlZCBhcyBuby1ibG9j
a2luZy4KPiA+ICsgICAgICogQSBsZW4gPCAwIGNhdXNlcyBpbmRldGVybWluYXRlIHJlc3VsdHMu
Cj4gPiArICAgICAqLwo+ID4gICAgICBpbnQgKCpyZWFkKShTcGljZUNoYXJEZXZpY2VJbnN0YW5j
ZSAqc2luLCB1aW50OF90ICpidWYsIGludCBsZW4pOwo+ID4gKwo+ID4gICAgICB2b2lkICgqZXZl
bnQpKFNwaWNlQ2hhckRldmljZUluc3RhbmNlICpzaW4sIHVpbnQ4X3QgZXZlbnQpOwo+ID4gICAg
ICBzcGljZV9jaGFyX2RldmljZV9mbGFncyBmbGFnczsKPiA+ICB9Owo+IAo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gU3BpY2UtZGV2ZWwgbWFpbGlu
ZyBsaXN0Cj4gU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5n
IGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
