Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB14789A05
	for <lists+spice-devel@lfdr.de>; Mon, 12 Aug 2019 11:41:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B5196E4C1;
	Mon, 12 Aug 2019 09:40:59 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CBD96E4BB
 for <spice-devel@lists.freedesktop.org>; Mon, 12 Aug 2019 09:40:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 47C55301D671
 for <spice-devel@lists.freedesktop.org>; Mon, 12 Aug 2019 09:40:58 +0000 (UTC)
Received: from lub.tlv (unknown [10.35.206.44])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 81DD65D6B2;
 Mon, 12 Aug 2019 09:40:57 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>, spice-devel@lists.freedesktop.org
References: <20190812071458.8946-1-fziglio@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <5f35c53a-18eb-9495-5c3f-a0713ae461d6@redhat.com>
Date: Mon, 12 Aug 2019 12:40:55 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190812071458.8946-1-fziglio@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Mon, 12 Aug 2019 09:40:58 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] glz-encode: Remove obsolete
 reference segment
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

T24gOC8xMi8xOSAxMDoxNCBBTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+IFRoZSBHTFogY29k
ZSBpcyBiYXNpY2FsbHkgTFogY29kZSBzaGFyaW5nIGltYWdlIHNlZ21lbnRzIGJldHdlZW4KPiBt
dWx0aXBsZSBpbWFnZXMuCj4gVGhlIGNvZGUgZm9yIFJMRSBjaGVjayBpbiBMWiBpcyBkZWFsaW5n
IHdpdGggYm90aCBSTEUgYW5kIGRpY3Rpb25hcnkKPiBtYXRjaGVzIGJlaW5nOiA+Cj4gICAgICBp
ZiAoIWRpc3RhbmNlKSB7Cj4gICAgICAgICAgLyogemVybyBkaXN0YW5jZSBtZWFucyBhIHJ1biAq
Lwo+ICAgICAgICAgIFBJWEVMIHggPSAqcmVmOwo+ICAgICAgICAgIHdoaWxlICgoaXAgPCBpcF9i
b3VuZCkgJiYgKHJlZiA8IHJlZl9saW1pdCkpIHsgLy8gVE9ETzogbWF5YmUgc2VwYXJhdGUgYSBy
dW4gZnJvbQo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgLy8gICAgICAgdGhlIHNhbWUgc2VnIG9yIGZyb20gZGlmZmVyZW50Cj4gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAvLyAgICAg
ICBvbmVzIGluIG9yZGVyIHRvIHNwYXJlCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAvLyAgICAgICByZWYgPCByZWZfbGltaXQKPiAKPiBp
biBHTFogdGhhdCBwYXJ0IHdhcyBjb3BpZWQgdG8gUkxFIHBhcnQgcmVtb3ZpbmcgdGhlIG5lZWQg
Zm9yIHRoZQo+IHNlY29uZCBzZWdtZW50ICgicmVmIikuIEhvd2V2ZXIgdGhlIGNvbW1lbnQgYW5k
IHNldHRpbmcgcmVmIHZhcmlhYmxlcwo+IHdlcmUgbm90IHJlbW92ZWQuIFJlbW92ZSB0aGUgb2xk
IGNvZGUgdG8gYXZvaWQgY29uZnVzaW9ucy4KPiAKPiBUaGlzIGFsc28gcmVtb3ZlIGEgQ292ZXJp
dHkgd2FybmluZyBhcyByZWZfbGltaXQgd2FzIHNldCBub3Qgbm90IHVzZWQKPiAocmVwb3J0ZWQg
YnkgVXJpIEx1YmxpbikuCj4gVGhlIHdhcm5pbmcgd2FzOgo+IAo+IENMQU5HIHdhcm5pbmc6ICJW
YWx1ZSBzdG9yZWQgdG8gJ3JlZl9saW1pdCcgaXMgbmV2ZXIgcmVhZCIKPiAKPiBTaWduZWQtb2Zm
LWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KCkFjay4KClVyaS4KCj4g
LS0tCj4gICBzZXJ2ZXIvZ2x6LWVuY29kZS50bXBsLmMgfCAxMCArKystLS0tLS0tCj4gICAxIGZp
bGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1n
aXQgYS9zZXJ2ZXIvZ2x6LWVuY29kZS50bXBsLmMgYi9zZXJ2ZXIvZ2x6LWVuY29kZS50bXBsLmMK
PiBpbmRleCA0OGJhYjUwYmMuLjkyZGViMGUxMiAxMDA2NDQKPiAtLS0gYS9zZXJ2ZXIvZ2x6LWVu
Y29kZS50bXBsLmMKPiArKysgYi9zZXJ2ZXIvZ2x6LWVuY29kZS50bXBsLmMKPiBAQCAtMjc2LDE5
ICsyNzYsMTUgQEAgc3RhdGljIHZvaWQgRk5BTUUoY29tcHJlc3Nfc2VnKShFbmNvZGVyICplbmNv
ZGVyLCB1aW50MzJfdCBzZWdfaWR4LCBQSVhFTCAqZnJvbSwKPiAgIAo+ICAgICAgICAgICBpZiAo
TFpfRVhQRUNUX0NPTkRJVElPTkFMKGlwID4gKFBJWEVMICopKHNlZy0+bGluZXMpKSkgewo+ICAg
ICAgICAgICAgICAgaWYgKFNBTUVfUElYRUwoaXBbLTFdLCBpcFswXSkgJiYgU0FNRV9QSVhFTChp
cFswXSwgaXBbMV0pICYmIFNBTUVfUElYRUwoaXBbMV0sIGlwWzJdKSkgewo+IC0gICAgICAgICAg
ICAgICAgUElYRUwgeDsKPiArICAgICAgICAgICAgICAgIFBJWEVMIHggPSBpcFsyXTsKPiArCj4g
ICAgICAgICAgICAgICAgICAgcGl4X2Rpc3QgPSAxOwo+ICAgICAgICAgICAgICAgICAgIGltYWdl
X2Rpc3QgPSAwOwo+ICAgCj4gICAgICAgICAgICAgICAgICAgaXAgKz0gMzsKPiAtICAgICAgICAg
ICAgICAgIHJlZiA9IGFuY2hvciArIDI7Cj4gLSAgICAgICAgICAgICAgICByZWZfbGltaXQgPSAo
UElYRUwgKikoc2VnLT5saW5lc19lbmQpOwo+ICAgICAgICAgICAgICAgICAgIGxlbiA9IDM7Cj4g
ICAKPiAtICAgICAgICAgICAgICAgIHggPSAqcmVmOwo+IC0KPiAtICAgICAgICAgICAgICAgIHdo
aWxlIChpcCA8IGlwX2JvdW5kKSB7IC8vIFRPRE86IG1heWJlIHNlcGFyYXRlIGEgcnVuIGZyb20g
dGhlIHNhbWUgc2VnIG9yIGZyb20KPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgLy8gZGlmZmVyZW50IG9uZXMgaW4gb3JkZXIgdG8gc3BhcmUgcmVmIDwgcmVmX2xpbWl0
Cj4gKyAgICAgICAgICAgICAgICB3aGlsZSAoaXAgPCBpcF9ib3VuZCkgewo+ICAgICAgICAgICAg
ICAgICAgICAgICBpZiAoIVNBTUVfUElYRUwoKmlwLCB4KSkgewo+ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgaXArKzsKPiAgICAgICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+IAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwg
bWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
