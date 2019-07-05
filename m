Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2666069C
	for <lists+spice-devel@lfdr.de>; Fri,  5 Jul 2019 15:32:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A8076E4BA;
	Fri,  5 Jul 2019 13:32:21 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 339CA6E4BA
 for <spice-devel@lists.freedesktop.org>; Fri,  5 Jul 2019 13:32:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C76E581F0E
 for <spice-devel@lists.freedesktop.org>; Fri,  5 Jul 2019 13:32:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id BD220806B7
 for <spice-devel@lists.freedesktop.org>; Fri,  5 Jul 2019 13:32:18 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id B314341F40
 for <spice-devel@lists.freedesktop.org>; Fri,  5 Jul 2019 13:32:18 +0000 (UTC)
Date: Fri, 5 Jul 2019 09:32:18 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <96521433.26515657.1562333538668.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190617154011.20310-1-fziglio@redhat.com>
References: <20190617154011.20310-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.13, 10.4.195.2]
Thread-Topic: spicevmc: Do not use RedCharDevice pipe items handling
Thread-Index: 92Ny9gl7tgMnPq/kej+eqPSVBsw+pg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Fri, 05 Jul 2019 13:32:18 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server v2 1/4] spicevmc: Do not use
 RedCharDevice pipe items handling
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

cGluZyB0aGUgc2VyaWVzCgo+IAo+IEFzIHdlIGRvbid0IHVzZSBhbnkgdG9rZW4gdGhlcmUncyBu
byByZWFzb24gdG8gbm90IHF1ZXVlIGRpcmVjdGx5IGluc3RlYWQKPiBvZiBwYXNzaW5nIHRocm91
Z2ggUmVkQ2hhckRldmljZS4KPiBUaGlzIHdpbGwgbWFrZSBlYXNpZXIgdG8gbGltaXQgdGhlIHF1
ZXVlIHdoaWNoIGN1cnJlbnRseSBpcyB1bmxpbWl0ZWQuCj4gCj4gUmVkQ2hhckRldmljZSBmbG93
IGNvbnRyb2wgaGFzIHNvbWUgcHJvYmxlbXM6Cj4gLSBpdCdzIHJlYWxseSBkZXNpZ25lZCB3aXRo
IFZESSBpbiBtaW5kLiBUaGlzIGZvciBTcGljZVZNQyB3b3VsZCBjYXVzZQo+ICAgY29kZSBpbXBs
ZW1lbnRhdGlvbiB0byBiZSBjb25mdXNpbmcgaGF2aW5nIHRvIHNhdGlzZnkgdGhlIGFnZW50IHRv
a2VuCj4gICBoYW5kbGluZzsKPiAtIGl0J3MgdXNpbmcgaXRlbXMgYXMgdW5pdCBub3QgYWxsb3dp
bmcgY291bnRpbmcgYnl0ZXM7Cj4gLSBpdCBkdXBsaWNhdGVzIHNvbWUgcXVldWUgbWFuYWdlbWVu
dCBiZXR3ZWVuIFJlZENoYW5uZWxDbGllbnQ7Cj4gLSBpdCdzIGJyb2tlbiAoc2VlIGNvbW1lbnRz
IGluIGNoYXItZGV2aWNlLmgpOwo+IC0gaXQgZm9yY2VzICJjbGllbnRzIiB0byBiZWhhdmUgaW4g
c29tZSB3YXkgbm90IGFsdGVyaW5nIGZvciBpbnN0YW5jZSB0aGUKPiAgIHF1ZXVlZCBpdGVtcyAo
d2hpY2ggaXMgdmVyeSB1c2VmdWwgaWYgaXRlbXMgY2FuIGJlIGNvbGxhcHNlZCB0b2dldGhlcik7
Cj4gLSBpdCByZXBsaWNhdGVzIHRoZSB0b2tlbiBoYW5kbGluZyBvbiB0aGUgZGV2aWNlIHF1ZXVl
IHRvby4gVGhpcyBjb3VsZAo+ICAgc2VlbXMgcmlnaHQgYnV0IGlzIG5vdCB0aGF0IGlmIHlvdSBo
YXZlIGEgbmV0d29yayBjYXJkIGdvaW5nIEAgMSBHQml0L3MKPiAgIHlvdSBhcmUgYWJsZSB0byB1
cGxvYWQgbW9yZSB0aGFuIDEgR2JpdC9zIGp1c3QgdXNpbmcgbXVsdGlwbGUKPiAgIGNvbm5lY3Rp
b25zLiBUaGUga2VybmVsIHdpbGwgdXNlIGEgc2luZ2xlIHF1ZXVlIGZvciB0aGUgbmV0d29yayBp
bnRlcmZhY2UKPiAgIGxpbWl0aW5nIGFuZCBzaGFyaW5nIGRlIGZhY3RvIHRoZSB2YXJpb3VzIGJ1
ZmZlcnMgYmV0d2VlbiB0aGUgbXVsdGlwbGUKPiAgIGNvbm5lY3Rpb25zLgo+IAo+IFNpZ25lZC1v
ZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgo+IC0tLQo+IENoYW5n
ZXMgaW4gdjI6Cj4gLSBtb3JlIGNvbW1pdCBtZXNzYWdlIGNvbW1lbnRzCj4gLS0tCj4gIHNlcnZl
ci9zcGljZXZtYy5jIHwgMTUgKysrKystLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGlu
c2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvc3Bp
Y2V2bWMuYyBiL3NlcnZlci9zcGljZXZtYy5jCj4gaW5kZXggODRiYmI3M2MyLi44YzQxNTczYWUg
MTAwNjQ0Cj4gLS0tIGEvc2VydmVyL3NwaWNldm1jLmMKPiArKysgYi9zZXJ2ZXIvc3BpY2V2bWMu
Ywo+IEBAIC0zNjAsMjkgKzM2MCwyNCBAQCBzdGF0aWMgUmVkUGlwZUl0ZW0KPiAqc3BpY2V2bWNf
Y2hhcmRldl9yZWFkX21zZ19mcm9tX2RldihSZWRDaGFyRGV2aWNlICpzZWxmLAo+ICAKPiAgICAg
ICAgICBtc2dfaXRlbV9jb21wcmVzc2VkID0gdHJ5X2NvbXByZXNzX2x6NChjaGFubmVsLCBuLCBt
c2dfaXRlbSk7Cj4gICAgICAgICAgaWYgKG1zZ19pdGVtX2NvbXByZXNzZWQgIT0gTlVMTCkgewo+
IC0gICAgICAgICAgICByZXR1cm4gJm1zZ19pdGVtX2NvbXByZXNzZWQtPmJhc2U7Cj4gKyAgICAg
ICAgICAgIHJlZF9jaGFubmVsX2NsaWVudF9waXBlX2FkZF9wdXNoKGNoYW5uZWwtPnJjYywKPiAm
bXNnX2l0ZW1fY29tcHJlc3NlZC0+YmFzZSk7Cj4gKyAgICAgICAgICAgIHJldHVybiBOVUxMOwo+
ICAgICAgICAgIH0KPiAgI2VuZGlmCj4gICAgICAgICAgc3RhdF9pbmNfY291bnRlcihjaGFubmVs
LT5vdXRfZGF0YSwgbik7Cj4gICAgICAgICAgbXNnX2l0ZW0tPnVuY29tcHJlc3NlZF9kYXRhX3Np
emUgPSBuOwo+ICAgICAgICAgIG1zZ19pdGVtLT5idWZfdXNlZCA9IG47Cj4gLSAgICAgICAgcmV0
dXJuICZtc2dfaXRlbS0+YmFzZTsKPiAtICAgIH0gZWxzZSB7Cj4gLSAgICAgICAgY2hhbm5lbC0+
cGlwZV9pdGVtID0gbXNnX2l0ZW07Cj4gKyAgICAgICAgcmVkX2NoYW5uZWxfY2xpZW50X3BpcGVf
YWRkX3B1c2goY2hhbm5lbC0+cmNjLCAmbXNnX2l0ZW0tPmJhc2UpOwo+ICAgICAgICAgIHJldHVy
biBOVUxMOwo+ICAgICAgfQo+ICsgICAgY2hhbm5lbC0+cGlwZV9pdGVtID0gbXNnX2l0ZW07Cj4g
KyAgICByZXR1cm4gTlVMTDsKPiAgfQo+ICAKPiAgc3RhdGljIHZvaWQgc3BpY2V2bWNfY2hhcmRl
dl9zZW5kX21zZ190b19jbGllbnQoUmVkQ2hhckRldmljZSAqc2VsZiwKPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUmVkUGlwZUl0ZW0gKm1zZywKPiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUmVkQ2xpZW50
ICpjbGllbnQpCj4gIHsKPiAtICAgIFJlZENoYXJEZXZpY2VTcGljZVZtYyAqdm1jID0gUkVEX0NI
QVJfREVWSUNFX1NQSUNFVk1DKHNlbGYpOwo+IC0gICAgUmVkVm1jQ2hhbm5lbCAqY2hhbm5lbCA9
IFJFRF9WTUNfQ0hBTk5FTCh2bWMtPmNoYW5uZWwpOwo+IC0KPiAtICAgIHNwaWNlX2Fzc2VydChy
ZWRfY2hhbm5lbF9jbGllbnRfZ2V0X2NsaWVudChjaGFubmVsLT5yY2MpID09IGNsaWVudCk7Cj4g
LSAgICByZWRfcGlwZV9pdGVtX3JlZihtc2cpOwo+IC0gICAgcmVkX2NoYW5uZWxfY2xpZW50X3Bp
cGVfYWRkX3B1c2goY2hhbm5lbC0+cmNjLCBtc2cpOwo+ICB9Cj4gIAo+ICBzdGF0aWMgdm9pZCBy
ZWRfcG9ydF9pbml0X2l0ZW1fZnJlZShzdHJ1Y3QgUmVkUGlwZUl0ZW0gKmJhc2UpCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxp
bmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
