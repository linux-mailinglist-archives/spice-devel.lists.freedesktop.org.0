Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B2238977E
	for <lists+spice-devel@lfdr.de>; Mon, 12 Aug 2019 09:04:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CB3D6E4AA;
	Mon, 12 Aug 2019 07:04:12 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 285776E4AA
 for <spice-devel@lists.freedesktop.org>; Mon, 12 Aug 2019 07:04:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D20762D6A0D
 for <spice-devel@lists.freedesktop.org>; Mon, 12 Aug 2019 07:04:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id CA12A17ADC
 for <spice-devel@lists.freedesktop.org>; Mon, 12 Aug 2019 07:04:09 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id BF3EB4A486;
 Mon, 12 Aug 2019 07:04:09 +0000 (UTC)
Date: Mon, 12 Aug 2019 03:04:07 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Uri Lublin <uril@redhat.com>
Message-ID: <617918635.5481937.1565593447950.JavaMail.zimbra@redhat.com>
In-Reply-To: <1125589139.5453928.1565527725223.JavaMail.zimbra@redhat.com>
References: <20190811114723.22360-1-uril@redhat.com>
 <1125589139.5453928.1565527725223.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.153, 10.4.195.14]
Thread-Topic: compress_seg: comment out unused assignment
Thread-Index: 6ayMrLlGhoiOse7lxEyUrs8xYYgVqtX1lZgl
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Mon, 12 Aug 2019 07:04:09 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-server PATCH 1/3] compress_seg: comment
 out unused assignment
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

PiAKPiA+IAo+ID4gQ0xBTkcgd2FybmluZzogIlZhbHVlIHN0b3JlZCB0byAncmVmX2xpbWl0JyBp
cyBuZXZlciByZWFkIgo+ID4gCj4gPiBDb21tZW50aW5nIG91dCBzaW5jZSB0aGVyZSBpcyBhIFRv
RG8gdGhhdCByZWZlcnMgdG8gcmVmX2xpbWl0Cj4gPiAKPiA+IEZvdW5kIGJ5IENvdnNjYW4uCj4g
PiAKPiA+IFNpZ25lZC1vZmYtYnk6IFVyaSBMdWJsaW4gPHVyaWxAcmVkaGF0LmNvbT4KPiA+IC0t
LQo+ID4gCj4gPiBTaG91bGQgdGhlIGNvbW1lbnQgYmUgZGVsZXRlZCB0b28gPwo+ID4gCj4gCj4g
SSB0aGluayB3b3VsZCBiZSB0aW1lIHRvIHJldmlzZSB0aGUgY29tbWVudCBhbmQgbWF5YmUgdGhl
IGNvZGUuCj4gCj4gVGhlIGNvbW1lbnQgaXMgKEkgc3VwcG9zZSk6Cj4gICAgIHdoaWxlIChpcCA8
IGlwX2JvdW5kKSB7IC8vIFRPRE86IG1heWJlIHNlcGFyYXRlIGEgcnVuIGZyb20gdGhlIHNhbWUg
c2VnCj4gICAgIG9yIGZyb20KPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAvLyBkaWZmZXJl
bnQgb25lcyBpbiBvcmRlciB0byBzcGFyZSByZWYgPAo+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHJlZl9saW1pdAo+IAo+IGJ1dCB0aGlzIGNhbWUgZnJvbSBjb21taXQ6Cj4gY29tbWl0IGMx
Yjc5ZWIwMzVmYTE1OGZiMmFjM2JjOGU1NTk4MDk2MTEwNzAwMTYKPiBBdXRob3I6IFlhbml2IEth
bWF5IDx5a2FtYXlAcmVkaGF0LmNvbT4KPiBEYXRlOiAgIFNhdCBTZXAgMTkgMjE6MjU6NDYgMjAw
OSArMDMwMAo+IAo+ICAgICBmcmVzaCBzdGFydAo+IAo+IHdpdGggbm8gZnVydGhlciBoaXN0b3J5
IDotKAo+IElzIHRoZSBmb3JtZXIgaGlzdG9yeSBzb21ld2hlcmU/Cj4gCj4gU29tZXRoaW5nIGlz
IHN1Z2dlc3RpbmcgbWUgdGhhdCB0aGUgbG9vcCB3YXMgIndoaWxlIChyZWYgPCByZWZfbGltaXQp
Igo+IGluc3RlYWQgb2YgdGhlIGN1cnJlbnQgIndoaWxlIChpcCA8IGlwX2JvdW5kKSIuIEFsc28g
d29uZGVyaW5nIHdoeQo+IGlwX2JvdW5kIGlzIHJlZl9saW1pdCAoc2VnLT5saW5lc19lbmQpIG1p
bnVzIDIgcGl4ZWxzIGFuZCBzbyB3aHkgUkxFCj4gY2hlY2sgaWdub3JlcyBsYXN0IDIgcGl4ZWxz
LiBCdXQgSSBoYXZlIHNpbWlsYXIgcXVlc3Rpb25zIGZvciBpcF9saW1pdC4KPiAKPiA+IC0tLQo+
ID4gIHNlcnZlci9nbHotZW5jb2RlLnRtcGwuYyB8IDIgKy0KPiA+ICAxIGZpbGUgY2hhbmdlZCwg
MSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL3NlcnZl
ci9nbHotZW5jb2RlLnRtcGwuYyBiL3NlcnZlci9nbHotZW5jb2RlLnRtcGwuYwo+ID4gaW5kZXgg
NDhiYWI1MGJjLi5hZDQ4Yzg2YzggMTAwNjQ0Cj4gPiAtLS0gYS9zZXJ2ZXIvZ2x6LWVuY29kZS50
bXBsLmMKPiA+ICsrKyBiL3NlcnZlci9nbHotZW5jb2RlLnRtcGwuYwo+ID4gQEAgLTI4Miw3ICsy
ODIsNyBAQCBzdGF0aWMgdm9pZCBGTkFNRShjb21wcmVzc19zZWcpKEVuY29kZXIgKmVuY29kZXIs
Cj4gPiB1aW50MzJfdCBzZWdfaWR4LCBQSVhFTCAqZnJvbSwKPiA+ICAKPiA+ICAgICAgICAgICAg
ICAgICAgaXAgKz0gMzsKPiA+ICAgICAgICAgICAgICAgICAgcmVmID0gYW5jaG9yICsgMjsKPiA+
IC0gICAgICAgICAgICAgICAgcmVmX2xpbWl0ID0gKFBJWEVMICopKHNlZy0+bGluZXNfZW5kKTsK
PiA+ICsgICAgICAgICAgICAgICAgLy9yZWZfbGltaXQgPSAoUElYRUwgKikoc2VnLT5saW5lc19l
bmQpOwo+ID4gICAgICAgICAgICAgICAgICBsZW4gPSAzOwo+ID4gIAo+ID4gICAgICAgICAgICAg
ICAgICB4ID0gKnJlZjsKPiAKCkkgcmVhbGl6ZWQgdGhhdCBHTFogaXMganVzdCBMWiB3aXRoIHRo
ZSBkaWN0aW9uYXJ5IHNoYXJlZCBiZXR3ZWVuCm11bHRpcGxlIGltYWdlcy4gU28gSSBsb29rZWQg
YXQgTFogY29kZSAoc3BpY2UtY29tbW9uKSB0byBmaW5kIHRoZQptaXNzaW5nIGNsdWVzLgpJbiB0
aGUgTFogY29kZSB0aGF0IHBhcnQgaXMgdXNlZCBmb3IgYm90aCBSTEUgYW5kIGRpY3Rpb25hcnku
IFNvIHRoZQpsb29wIGluIExaIGNvZGUgKGNvbW1vbi9sel9jb21wcmVzc190bXBsLmMpIGlzCgog
ICAgd2hpbGUgKChpcCA8IGlwX2JvdW5kKSAmJiAocmVmIDwgcmVmX2xpbWl0KSkgeyAvLyBUT0RP
OiBtYXliZSBzZXBhcmF0ZSBhIHJ1biBmcm9tCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIC8vICAgICAgIHRoZSBzYW1lIHNlZyBvciBmcm9tIGRpZmZl
cmVudAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAv
LyAgICAgICBvbmVzIGluIG9yZGVyIHRvIHNwYXJlCiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIC8vICAgICAgIHJlZiA8IHJlZl9saW1pdAoKc28gaGVy
ZSB0aGUgY29tbWVudCBtYWtlIHNlbnNlLiBIb3dldmVyIHRoaXMgd2FzIGNvcGllZCB2ZXJiYXRp
bQppbiBHTFogYnV0IHJlZiA8IHJlZl9saW1pdCBjaGVjayB3YXMgcmVtb3ZlZCBhcyB0aGUgc2Ft
ZSBzZWdtZW50IGlzIHVzZWQuCkkgc3VwcG9zZSB0aGF0IHRoZSBMWiBjb2RlIGhhdmluZyByZWYg
PT0gaXAgLSAxIGluIHRoZSBSTEUgY2FzZSBpcyBjb21wYXJpbmcKYW4gYWRkaXRpb25hbCBwaXhl
bCBsZWF2aW5nIG91dCBvbmx5IDEgcGl4ZWwgYnV0IHRoaXMgaXMgT1QgZm9yIHRoaXMgY2FzZS4K
SSdsbCB3cml0ZSBhIHBhdGNoICh3aWxsIGJlIG1vcmUgdGltZSBjb25zdW1pbmcgdG8gd3JpdGUg
dGhlIGNvbW1lbnQhKS4KCkZyZWRpYW5vCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9zcGljZS1kZXZlbA==
