Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F25189A0D
	for <lists+spice-devel@lfdr.de>; Mon, 12 Aug 2019 11:43:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D8936E4C7;
	Mon, 12 Aug 2019 09:43:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 295486E4C7
 for <spice-devel@lists.freedesktop.org>; Mon, 12 Aug 2019 09:43:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C8398300DA2C
 for <spice-devel@lists.freedesktop.org>; Mon, 12 Aug 2019 09:43:06 +0000 (UTC)
Received: from lub.tlv (unknown [10.35.206.44])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 908AD1001944;
 Mon, 12 Aug 2019 09:43:04 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>, spice-devel@lists.freedesktop.org
References: <20190812093954.17996-1-fziglio@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <b3eb4d7e-a9b1-69c9-3953-4729022fcc24@redhat.com>
Date: Mon, 12 Aug 2019 12:43:02 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190812093954.17996-1-fziglio@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Mon, 12 Aug 2019 09:43:06 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server v3] glz-encode: Remove
 obsolete reference segment
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

T24gOC8xMi8xOSAxMjozOSBQTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+IFRoZSBHTFogY29k
ZSBpcyBiYXNpY2FsbHkgTFogY29kZSAoaW4gc3BpY2UtY29tbW9uKSBzaGFyaW5nIGltYWdlCj4g
c2VnbWVudHMgYmV0d2VlbiBtdWx0aXBsZSBpbWFnZXMuCj4gVGhlIGNvZGUgZm9yIFJMRSBjaGVj
ayBpbiBMWiAoY29tbW9uL2x6X2NvbXByZXNzX3RtcGwuYykgaXMgZGVhbGluZwo+IHdpdGggYm90
aCBSTEUgYW5kIGRpY3Rpb25hcnkgbWF0Y2hlcyBiZWluZzoKPiAKPiAgICAgIGlmICghZGlzdGFu
Y2UpIHsKPiAgICAgICAgICAvKiB6ZXJvIGRpc3RhbmNlIG1lYW5zIGEgcnVuICovCj4gICAgICAg
ICAgUElYRUwgeCA9ICpyZWY7Cj4gICAgICAgICAgd2hpbGUgKChpcCA8IGlwX2JvdW5kKSAmJiAo
cmVmIDwgcmVmX2xpbWl0KSkgeyAvLyBUT0RPOiBtYXliZSBzZXBhcmF0ZSBhIHJ1biBmcm9tCj4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAv
LyAgICAgICB0aGUgc2FtZSBzZWcgb3IgZnJvbSBkaWZmZXJlbnQKPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8vICAgICAgIG9uZXMgaW4g
b3JkZXIgdG8gc3BhcmUKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIC8vICAgICAgIHJlZiA8IHJlZl9saW1pdAo+IAo+IGluIEdMWiB0aGF0
IHBhcnQgd2FzIGNvcGllZCB0byBSTEUgcGFydCByZW1vdmluZyB0aGUgbmVlZCBmb3IgdGhlCj4g
c2Vjb25kIHNlZ21lbnQgKCJyZWYiKS4gSG93ZXZlciB0aGUgY29tbWVudCBhbmQgc2V0dGluZyBy
ZWYgdmFyaWFibGVzCj4gd2VyZSBub3QgcmVtb3ZlZC4gUmVtb3ZlIHRoZSBvbGQgY29kZSB0byBh
dm9pZCBjb25mdXNpb25zLgo+IAo+IFRoaXMgYWxzbyByZW1vdmUgYSBDb3ZzY2FuIHdhcm5pbmcg
YXMgcmVmX2xpbWl0IHdhcyBzZXQgbm90IG5vdCB1c2VkCj4gKHJlcG9ydGVkIGJ5IFVyaSBMdWJs
aW4pLgo+IFRoZSB3YXJuaW5nIHdhczoKPiAKPiBDTEFORyB3YXJuaW5nOiAiVmFsdWUgc3RvcmVk
IHRvICdyZWZfbGltaXQnIGlzIG5ldmVyIHJlYWQiCj4gCj4gU2lnbmVkLW9mZi1ieTogRnJlZGlh
bm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+CgpBY2suCgo+IC0tLQo+IENoYW5nZXMgc2lu
Y2UgdjI6Cj4gLSBiZXR0ZXIgcmVmZXJlbmNlIHRvIHNwaWNlLWNvbW1vbiBjb2RlCgpUaGFua3Ms
CiAgICAgVXJpCgo+IAo+IENoYW5nZXMgc2luY2UgdjE6Cj4gLSBDb3ZzY2FuIGlzIG5vdCBDb3Zl
cml0eQo+IC0tLQo+ICAgc2VydmVyL2dsei1lbmNvZGUudG1wbC5jIHwgMTAgKysrLS0tLS0tLQo+
ICAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKPiAKPiBk
aWZmIC0tZ2l0IGEvc2VydmVyL2dsei1lbmNvZGUudG1wbC5jIGIvc2VydmVyL2dsei1lbmNvZGUu
dG1wbC5jCj4gaW5kZXggNDhiYWI1MGJjLi45MmRlYjBlMTIgMTAwNjQ0Cj4gLS0tIGEvc2VydmVy
L2dsei1lbmNvZGUudG1wbC5jCj4gKysrIGIvc2VydmVyL2dsei1lbmNvZGUudG1wbC5jCj4gQEAg
LTI3NiwxOSArMjc2LDE1IEBAIHN0YXRpYyB2b2lkIEZOQU1FKGNvbXByZXNzX3NlZykoRW5jb2Rl
ciAqZW5jb2RlciwgdWludDMyX3Qgc2VnX2lkeCwgUElYRUwgKmZyb20sCj4gICAKPiAgICAgICAg
ICAgaWYgKExaX0VYUEVDVF9DT05ESVRJT05BTChpcCA+IChQSVhFTCAqKShzZWctPmxpbmVzKSkp
IHsKPiAgICAgICAgICAgICAgIGlmIChTQU1FX1BJWEVMKGlwWy0xXSwgaXBbMF0pICYmIFNBTUVf
UElYRUwoaXBbMF0sIGlwWzFdKSAmJiBTQU1FX1BJWEVMKGlwWzFdLCBpcFsyXSkpIHsKPiAtICAg
ICAgICAgICAgICAgIFBJWEVMIHg7Cj4gKyAgICAgICAgICAgICAgICBQSVhFTCB4ID0gaXBbMl07
Cj4gKwo+ICAgICAgICAgICAgICAgICAgIHBpeF9kaXN0ID0gMTsKPiAgICAgICAgICAgICAgICAg
ICBpbWFnZV9kaXN0ID0gMDsKPiAgIAo+ICAgICAgICAgICAgICAgICAgIGlwICs9IDM7Cj4gLSAg
ICAgICAgICAgICAgICByZWYgPSBhbmNob3IgKyAyOwo+IC0gICAgICAgICAgICAgICAgcmVmX2xp
bWl0ID0gKFBJWEVMICopKHNlZy0+bGluZXNfZW5kKTsKPiAgICAgICAgICAgICAgICAgICBsZW4g
PSAzOwo+ICAgCj4gLSAgICAgICAgICAgICAgICB4ID0gKnJlZjsKPiAtCj4gLSAgICAgICAgICAg
ICAgICB3aGlsZSAoaXAgPCBpcF9ib3VuZCkgeyAvLyBUT0RPOiBtYXliZSBzZXBhcmF0ZSBhIHJ1
biBmcm9tIHRoZSBzYW1lIHNlZyBvciBmcm9tCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIC8vIGRpZmZlcmVudCBvbmVzIGluIG9yZGVyIHRvIHNwYXJlIHJlZiA8IHJl
Zl9saW1pdAo+ICsgICAgICAgICAgICAgICAgd2hpbGUgKGlwIDwgaXBfYm91bmQpIHsKPiAgICAg
ICAgICAgICAgICAgICAgICAgaWYgKCFTQU1FX1BJWEVMKCppcCwgeCkpIHsKPiAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGlwKys7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICBicmVhazsK
PiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNl
LWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
