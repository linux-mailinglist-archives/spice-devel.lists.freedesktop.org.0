Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 338DF1B65E
	for <lists+spice-devel@lfdr.de>; Mon, 13 May 2019 14:49:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2ECE889C99;
	Mon, 13 May 2019 12:49:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 880B189C99
 for <spice-devel@lists.freedesktop.org>; Mon, 13 May 2019 12:49:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 276E0882F5
 for <spice-devel@lists.freedesktop.org>; Mon, 13 May 2019 12:49:37 +0000 (UTC)
Received: from lub.tlv (dhcp-4-208.tlv.redhat.com [10.35.4.208])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8C8226843C;
 Mon, 13 May 2019 12:49:36 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>, spice-devel@lists.freedesktop.org
References: <20190508130659.4756-1-fziglio@redhat.com>
 <20190508130659.4756-2-fziglio@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <0107878e-8244-0394-3a4f-b22751bc1591@redhat.com>
Date: Mon, 13 May 2019 15:49:35 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190508130659.4756-2-fziglio@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Mon, 13 May 2019 12:49:37 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 2/2] dcc: Avoid usage of not
 aligned GlzEncDictRestoreData structure
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
Reply-To: uril@redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gNS84LzE5IDQ6MDYgUE0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPiBDb3B5IHRvL2Zyb20g
dW5hbGlnbmVkIGZpZWxkIHRvIGF2b2lkIHBvdGVudGlhbCB1bmFsaWduZWQgYWNjZXNzLgo+IEFs
dGhvdWdoIGl0IGFkZHMgYSBjb3B5IGl0J3Mgbm90IGluIGEgaG90IHBhdGggKG1pZ3JhdGlvbikg
YW5kCj4gdGhlIHN0cnVjdHVyZSBpcyBwcmV0dHkgc21hbGwuCj4gCj4gU2lnbmVkLW9mZi1ieTog
RnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+CgpBY2ssIGJ1dCBzZWUgb25lIGNv
bW1lbnQgYmVsb3cuCgpJIHdyb3RlIGEgc2ltaWxhciBwYXRjaCwgeW91IHNlbnQgaXQgZmFzdGVy
IDopCgo+IC0tLQo+ICAgc2VydmVyL2RjYy1zZW5kLmMgfCA0ICsrKy0KPiAgIHNlcnZlci9kY2Mu
YyAgICAgIHwgMyArKy0KPiAgIDIgZmlsZXMgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAyIGRl
bGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvZGNjLXNlbmQuYyBiL3NlcnZlci9k
Y2Mtc2VuZC5jCj4gaW5kZXggZTliMDFiMzguLjlmYzU0MDQ2IDEwMDY0NAo+IC0tLSBhL3NlcnZl
ci9kY2Mtc2VuZC5jCj4gKysrIGIvc2VydmVyL2RjYy1zZW5kLmMKPiBAQCAtMTg0NSw4ICsxODQ1
LDEwIEBAIHN0YXRpYyB2b2lkIGRpc3BsYXlfY2hhbm5lbF9tYXJzaGFsbF9taWdyYXRlX2RhdGEo
UmVkQ2hhbm5lbENsaWVudCAqcmNjLAo+ICAgICAgIG1lbWNweShkaXNwbGF5X2RhdGEucGl4bWFw
X2NhY2hlX2NsaWVudHMsIGRjYy0+cHJpdi0+cGl4bWFwX2NhY2hlLT5zeW5jLAo+ICAgICAgICAg
ICAgICBzaXplb2YoZGlzcGxheV9kYXRhLnBpeG1hcF9jYWNoZV9jbGllbnRzKSk7Cj4gICAKPiAr
ICAgIEdsekVuY0RpY3RSZXN0b3JlRGF0YSBnbHpfZGljdF9kYXRhOwoKUGVyaGFwcyBtb3ZlIGl0
IHRvIHRoZSBiZWdpbm5pbmcgb2YgdGhlIGZ1bmN0aW9uIGxpa2UgYWxsIHRoZQpvdGhlciBsb2Nh
bCB2YXJpYWJsZXMuCgpVcmkuCgo+ICAgICAgIGltYWdlX2VuY29kZXJzX2dsel9nZXRfcmVzdG9y
ZV9kYXRhKGVuY29kZXJzLCAmZGlzcGxheV9kYXRhLmdsel9kaWN0X2lkLAo+IC0gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJmRpc3BsYXlfZGF0YS5nbHpfZGljdF9kYXRh
KTsKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICZnbHpfZGljdF9k
YXRhKTsKPiArICAgIGRpc3BsYXlfZGF0YS5nbHpfZGljdF9kYXRhID0gZ2x6X2RpY3RfZGF0YTsK
PiAgIAo+ICAgICAgIC8qIGFsbCBkYXRhIGJlc2lkZWQgdGhlIHN1cmZhY2VzIHJlZiAqLwo+ICAg
ICAgIHNwaWNlX21hcnNoYWxsZXJfYWRkKGJhc2VfbWFyc2hhbGxlciwKPiBkaWZmIC0tZ2l0IGEv
c2VydmVyL2RjYy5jIGIvc2VydmVyL2RjYy5jCj4gaW5kZXggZmRiMGZiZjEuLjI3MWE0NjZiIDEw
MDY0NAo+IC0tLSBhL3NlcnZlci9kY2MuYwo+ICsrKyBiL3NlcnZlci9kY2MuYwo+IEBAIC0xMjUx
LDEwICsxMjUxLDExIEBAIGJvb2wgZGNjX2hhbmRsZV9tZXNzYWdlKFJlZENoYW5uZWxDbGllbnQg
KnJjYywgdWludDE2X3QgdHlwZSwgdWludDMyX3Qgc2l6ZSwgdm9pCj4gICBzdGF0aWMgaW50IGRj
Y19oYW5kbGVfbWlncmF0ZV9nbHpfZGljdGlvbmFyeShEaXNwbGF5Q2hhbm5lbENsaWVudCAqZGNj
LAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgU3BpY2VN
aWdyYXRlRGF0YURpc3BsYXkgKm1pZ3JhdGUpCj4gICB7Cj4gKyAgICBHbHpFbmNEaWN0UmVzdG9y
ZURhdGEgZ2x6X2RpY3RfZGF0YSA9IG1pZ3JhdGUtPmdsel9kaWN0X2RhdGE7Cj4gICAgICAgcmV0
dXJuIGltYWdlX2VuY29kZXJzX3Jlc3RvcmVfZ2x6X2RpY3Rpb25hcnkoJmRjYy0+cHJpdi0+ZW5j
b2RlcnMsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgcmVkX2NoYW5uZWxfY2xpZW50X2dldF9jbGllbnQoUkVEX0NIQU5ORUxfQ0xJRU5UKGRjYykp
LAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG1p
Z3JhdGUtPmdsel9kaWN0X2lkLAo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgJm1pZ3JhdGUtPmdsel9kaWN0X2RhdGEpOwo+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJmdsel9kaWN0X2RhdGEpOwo+ICAg
fQo+ICAgCj4gICBzdGF0aWMgYm9vbCByZXN0b3JlX3N1cmZhY2UoRGlzcGxheUNoYW5uZWxDbGll
bnQgKmRjYywgdWludDMyX3Qgc3VyZmFjZV9pZCkKPiAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1k
ZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
