Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9784B2FA
	for <lists+spice-devel@lfdr.de>; Sat, 27 Apr 2019 08:49:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A042E89289;
	Sat, 27 Apr 2019 06:49:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 593 seconds by postgrey-1.36 at gabe;
 Fri, 26 Apr 2019 15:52:25 UTC
Received: from pio-pvt-msa3.bahnhof.se (pio-pvt-msa3.bahnhof.se [79.136.2.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2C3B89310;
 Fri, 26 Apr 2019 15:52:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by pio-pvt-msa3.bahnhof.se (Postfix) with ESMTP id 945BE4391E;
 Fri, 26 Apr 2019 17:42:30 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -3.1
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 tagged_above=-999 required=6.31
 tests=[ALL_TRUSTED=-1, BAYES_00=-1.9, DKIM_SIGNED=0.1,
 DKIM_VALID=-0.1, DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1]
 autolearn=ham autolearn_force=no
Received: from pio-pvt-msa3.bahnhof.se ([127.0.0.1])
 by localhost (pio-pvt-msa3.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VuvOqvhRsIjG; Fri, 26 Apr 2019 17:42:25 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by pio-pvt-msa3.bahnhof.se (Postfix) with ESMTPA id 65A473F2EF;
 Fri, 26 Apr 2019 17:42:24 +0200 (CEST)
Received: from localhost.localdomain (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35])
 by mail1.shipmail.org (Postfix) with ESMTPSA id C746036030C;
 Fri, 26 Apr 2019 17:42:23 +0200 (CEST)
To: Daniel Vetter <daniel@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>
References: <20190426053324.26443-1-kraxel@redhat.com>
 <CAKMK7uG+vMU0hqqiKAswu=LqpkcXtLPqbYLRWgoAPpsQQV4qzA@mail.gmail.com>
From: Thomas Hellstrom <thomas@shipmail.org>
Message-ID: <8ae152fe-7811-4de3-e26f-350650a8f992@shipmail.org>
Date: Fri, 26 Apr 2019 17:42:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAKMK7uG+vMU0hqqiKAswu=LqpkcXtLPqbYLRWgoAPpsQQV4qzA@mail.gmail.com>
Content-Language: en-US
X-Mailman-Approved-At: Sat, 27 Apr 2019 06:49:53 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=shipmail.org; s=mail; 
 t=1556293343; bh=mJTS0CQsweYfMQdGyho/lewnbiCcAlZeP2iIfxcMNyM=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=Fmm8HafNbU9b2pNnz/IT3Otk/LE5bt0Z0vyZerlU+W/EcOoSLYSsoltEqI8+HUr9z
 RYzI4Z5W3rs4woZXdEQmDeSAnNiBvCGF4gzRy+M5wTSdfj2HsJlkV+wn3sTfSaNJYT
 P2pZ93DOKTFgJmFzLiMAuqR6azUqrNPGml1i3aZU=
X-Mailman-Original-Authentication-Results: pio-pvt-msa3.bahnhof.se;
 dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=Fmm8HafN; 
 dkim-atps=neutral
Subject: Re: [Spice-devel] [PATCH] Revert "drm/qxl: drop prime import/export
 callbacks"
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
Cc: David Airlie <airlied@linux.ie>, open list <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:DRM DRIVER FOR QXL VIRTUAL GPU"
 <virtualization@lists.linux-foundation.org>, David Airlie <airlied@redhat.com>,
 "open list:DRM DRIVER FOR QXL VIRTUAL GPU" <spice-devel@lists.freedesktop.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gNC8yNi8xOSA0OjIxIFBNLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+IE9uIEZyaSwgQXByIDI2
LCAyMDE5IGF0IDc6MzMgQU0gR2VyZCBIb2ZmbWFubiA8a3JheGVsQHJlZGhhdC5jb20+IHdyb3Rl
Ogo+PiBUaGlzIHJldmVydHMgY29tbWl0IGY0YzM0YjFlMmEzN2Q1Njc2MTgwOTAxZmE2ZmYxODhi
Y2I2MzcxZjguCj4+Cj4+IFNpbWxpYXIgdG8gY29tbWl0IGEwY2VjYzIzY2ZjYiBSZXZlcnQgImRy
bS92aXJ0aW86IGRyb3AgcHJpbWUKPj4gaW1wb3J0L2V4cG9ydCBjYWxsYmFja3MiLiAgV2UgaGF2
ZSB0byBkbyB0aGUgc2FtZSB3aXRoIHF4bCwKPj4gZm9yIHRoZSBzYW1lIHJlYXNvbnMgKGl0IGJy
ZWFrcyBEUkkzKS4KPj4KPj4gRHJvcCB0aGUgV0FSTl9PTl9PTkNFKCkuCj4+Cj4+IEZpeGVzOiBm
NGMzNGIxZTJhMzdkNTY3NjE4MDkwMWZhNmZmMTg4YmNiNjM3MWY4Cj4+IFNpZ25lZC1vZmYtYnk6
IEdlcmQgSG9mZm1hbm4gPGtyYXhlbEByZWRoYXQuY29tPgo+IE1heWJlIHdlIG5lZWQgc29tZSBo
ZWxwZXJzIGZvciB2aXJ0dWFsIGRyaXZlcnMgd2hpY2ggb25seSBhbGxvdwo+IHNlbGYtcmVpbXBv
cnQgYW5kIG5vdGhpbmcgZWxzZSBhdCBhbGw/IEkgdGhpbmsgdGhlcmUncyBxeGwsIHZpcmdsLAo+
IHZtd2dmeCBhbmQgbWF5YmUgYWxzbyB2Ym94IG9uZSB3aG8gY291bGQgdXNlIHRoaXMgLi4uIEp1
c3QgYSBxdWljawo+IGlkZWEuCj4gLURhbmllbAoKSSB0aGluayB2bXdnZnggY291bGQsIGluIHRo
ZW9yeSwgc3VwcG9ydCB0aGUgZnVsbCByYW5nZSBvZiBvcGVyYXRpb25zLAphdCBsZWFzdCBmb3Ig
cmVhc29uYWJseSByZWNlbnQgZGV2aWNlIHZlcnNpb25zLiBIb3dldmVyLCBpdCB3b3VsZG4ndCBi
ZSAKdGVycmlibHkgZWZmaWNpZW50IHNpbmNlIHRoZSBleHBvcnRlZCBkbWEtYnVmIHNnbGlzdCB3
b3VsZCBiYXNpY2FsbHkgYmUgCmEgYm91bmNlLWJ1ZmZlci4KCi9UaG9tYXMKCgo+PiAtLS0KPj4g
ICBkcml2ZXJzL2dwdS9kcm0vcXhsL3F4bF9kcnYuYyAgIHwgIDQgKysrKwo+PiAgIGRyaXZlcnMv
Z3B1L2RybS9xeGwvcXhsX3ByaW1lLmMgfCAxMiArKysrKysrKysrKysKPj4gICAyIGZpbGVzIGNo
YW5nZWQsIDE2IGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9xeGwvcXhsX2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL3F4bC9xeGxfZHJ2LmMKPj4gaW5kZXgg
NTc4ZDg2N2E4MWQ1Li5mMzNlMzQ5YzRlYzUgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9xeGwvcXhsX2Rydi5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9xeGwvcXhsX2Rydi5jCj4+
IEBAIC0yNTUsMTAgKzI1NSwxNCBAQCBzdGF0aWMgc3RydWN0IGRybV9kcml2ZXIgcXhsX2RyaXZl
ciA9IHsKPj4gICAjaWYgZGVmaW5lZChDT05GSUdfREVCVUdfRlMpCj4+ICAgICAgICAgIC5kZWJ1
Z2ZzX2luaXQgPSBxeGxfZGVidWdmc19pbml0LAo+PiAgICNlbmRpZgo+PiArICAgICAgIC5wcmlt
ZV9oYW5kbGVfdG9fZmQgPSBkcm1fZ2VtX3ByaW1lX2hhbmRsZV90b19mZCwKPj4gKyAgICAgICAu
cHJpbWVfZmRfdG9faGFuZGxlID0gZHJtX2dlbV9wcmltZV9mZF90b19oYW5kbGUsCj4+ICAgICAg
ICAgIC5nZW1fcHJpbWVfZXhwb3J0ID0gZHJtX2dlbV9wcmltZV9leHBvcnQsCj4+ICAgICAgICAg
IC5nZW1fcHJpbWVfaW1wb3J0ID0gZHJtX2dlbV9wcmltZV9pbXBvcnQsCj4+ICAgICAgICAgIC5n
ZW1fcHJpbWVfcGluID0gcXhsX2dlbV9wcmltZV9waW4sCj4+ICAgICAgICAgIC5nZW1fcHJpbWVf
dW5waW4gPSBxeGxfZ2VtX3ByaW1lX3VucGluLAo+PiArICAgICAgIC5nZW1fcHJpbWVfZ2V0X3Nn
X3RhYmxlID0gcXhsX2dlbV9wcmltZV9nZXRfc2dfdGFibGUsCj4+ICsgICAgICAgLmdlbV9wcmlt
ZV9pbXBvcnRfc2dfdGFibGUgPSBxeGxfZ2VtX3ByaW1lX2ltcG9ydF9zZ190YWJsZSwKPj4gICAg
ICAgICAgLmdlbV9wcmltZV92bWFwID0gcXhsX2dlbV9wcmltZV92bWFwLAo+PiAgICAgICAgICAu
Z2VtX3ByaW1lX3Z1bm1hcCA9IHF4bF9nZW1fcHJpbWVfdnVubWFwLAo+PiAgICAgICAgICAuZ2Vt
X3ByaW1lX21tYXAgPSBxeGxfZ2VtX3ByaW1lX21tYXAsCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vcXhsL3F4bF9wcmltZS5jIGIvZHJpdmVycy9ncHUvZHJtL3F4bC9xeGxfcHJpbWUu
Ywo+PiBpbmRleCA4YjQ0OGVjYTFjZDkuLjExNDY1M2I0NzFjNiAxMDA2NDQKPj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL3F4bC9xeGxfcHJpbWUuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcXhs
L3F4bF9wcmltZS5jCj4+IEBAIC00Miw2ICs0MiwxOCBAQCB2b2lkIHF4bF9nZW1fcHJpbWVfdW5w
aW4oc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmopCj4+ICAgICAgICAgIHF4bF9ib191bnBpbihi
byk7Cj4+ICAgfQo+Pgo+PiArc3RydWN0IHNnX3RhYmxlICpxeGxfZ2VtX3ByaW1lX2dldF9zZ190
YWJsZShzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaikKPj4gK3sKPj4gKyAgICAgICByZXR1cm4g
RVJSX1BUUigtRU5PU1lTKTsKPj4gK30KPj4gKwo+PiArc3RydWN0IGRybV9nZW1fb2JqZWN0ICpx
eGxfZ2VtX3ByaW1lX2ltcG9ydF9zZ190YWJsZSgKPj4gKyAgICAgICBzdHJ1Y3QgZHJtX2Rldmlj
ZSAqZGV2LCBzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gsCj4+ICsgICAgICAgc3Ry
dWN0IHNnX3RhYmxlICp0YWJsZSkKPj4gK3sKPj4gKyAgICAgICByZXR1cm4gRVJSX1BUUigtRU5P
U1lTKTsKPj4gK30KPj4gKwo+PiAgIHZvaWQgKnF4bF9nZW1fcHJpbWVfdm1hcChzdHJ1Y3QgZHJt
X2dlbV9vYmplY3QgKm9iaikKPj4gICB7Cj4+ICAgICAgICAgIHN0cnVjdCBxeGxfYm8gKmJvID0g
Z2VtX3RvX3F4bF9ibyhvYmopOwo+PiAtLQo+PiAyLjE4LjEKPj4KPgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0
ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
