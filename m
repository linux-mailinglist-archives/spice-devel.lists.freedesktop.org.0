Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02F08A0B06F
	for <lists+spice-devel@lfdr.de>; Mon, 13 Jan 2025 09:00:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B14410E264;
	Mon, 13 Jan 2025 08:00:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=163.com header.i=@163.com header.b="JCISy2Zi";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.5])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5159410E24C;
 Mon, 13 Jan 2025 03:54:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
 s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
 Message-ID; bh=eemiIfpJILwOwTzjnZMeRKg1K3cifJJEv104WN7Ptf8=; b=J
 CISy2Zi4WrKmoei+W04SElMfBUZbXsY2n+xpFOCqDmNHtyexlDrgrdshJr2bSKLl
 P7T4CJE7Qo1SvA9EIwv7dmzQkavXi3jFYVYDqoIHIRZGv1dLejGYHHEfnDQtQRE3
 0VYGm1B27i9cq78tLx+8WoWRmp3FsjWETp5TF+zyWA=
Received: from andyshrk$163.com ( [103.29.142.67] ) by
 ajax-webmail-wmsvr-40-117 (Coremail) ; Mon, 13 Jan 2025 11:53:59 +0800
 (CST)
X-Originating-IP: [103.29.142.67]
Date: Mon, 13 Jan 2025 11:53:59 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Cc: maarten.lankhorst@linux.intel.com, mripard@kernel.org, airlied@gmail.com, 
 simona@ffwll.ch, dri-devel@lists.freedesktop.org, 
 linux-mediatek@lists.infradead.org, freedreno@lists.freedesktop.org, 
 linux-arm-msm@vger.kernel.org, imx@lists.linux.dev, 
 linux-samsung-soc@vger.kernel.org, nouveau@lists.freedesktop.org, 
 virtualization@lists.linux.dev, spice-devel@lists.freedesktop.org, 
 linux-renesas-soc@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-tegra@vger.kernel.org, 
 intel-xe@lists.freedesktop.org, xen-devel@lists.xenproject.org
Subject: Re:Re: [PATCH v2 02/25] drm/dumb-buffers: Provide helper to set
 pitch and size
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2025 www.mailtech.cn 163com
In-Reply-To: <e800ebc2-39b5-46d5-89ec-883ed1c7626b@suse.de>
References: <20250109150310.219442-1-tzimmermann@suse.de>
 <20250109150310.219442-3-tzimmermann@suse.de>
 <94f78e1.19bf.1944de709b0.Coremail.andyshrk@163.com>
 <e800ebc2-39b5-46d5-89ec-883ed1c7626b@suse.de>
X-NTES-SC: AL_Qu2YBPufv0wo7yKeZulS/DNQ2YpmHKvs4olgqcQkZd0qqTHPyz4QZ0BuLUbI3d4WuFSnvoMCEgbKZbJt8QVJ
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=UTF-8
MIME-Version: 1.0
Message-ID: <443491d4.4087.1945dcc04e3.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: dSgvCgCXH4lXjoRnjolVAA--.27065W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqAHTXmeEidhe-AACs2
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-Mailman-Approved-At: Mon, 13 Jan 2025 08:00:27 +0000
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

CkhpIFRob21hcywKCkF0IDIwMjUtMDEtMTAgMjE6MjM6NDgsICJUaG9tYXMgWmltbWVybWFubiIg
PHR6aW1tZXJtYW5uQHN1c2UuZGU+IHdyb3RlOgo+SGkKPgo+Cj5BbSAxMC4wMS4yNSB1bSAwMjo0
OSBzY2hyaWViIEFuZHkgWWFuOgo+PiBIaSBUaG9tYXMsCj4+Cj4+IEF0IDIwMjUtMDEtMDkgMjI6
NTY6NTYsICJUaG9tYXMgWmltbWVybWFubiIgPHR6aW1tZXJtYW5uQHN1c2UuZGU+IHdyb3RlOgo+
Pj4gQWRkIGRybV9tb2Rlc19zaXplX2R1bWIoKSwgYSBoZWxwZXIgdG8gY2FsY3VsYXRlIHRoZSBk
dW1iLWJ1ZmZlcgo+Pj4gc2NhbmxpbmUgcGl0Y2ggYW5kIGFsbG9jYXRpb24gc2l6ZS4gSW1wbGVt
ZW50YXRpb25zIG9mIHN0cnVjdAo+Pj4gZHJtX2RyaXZlci5kdW1iX2NyZWF0ZSBjYW4gY2FsbCB0
aGUgbmV3IGhlbHBlciBmb3IgdGhlaXIgc2l6ZQo+Pj4gY29tcHV0YXRpb25zLiBUaGVyZSdzIGN1
cnJlbnRseSBxdWl0ZSBhIGJpdCBvZiBjb2RlIGR1cGxpY2F0aW9uCj4+PiBhbW9uZyBEUk0ncyBt
ZW1vcnkgbWFuYWdlcnMuIEVhY2ggY2FsY3VsYXRlcyBzY2FubGluZSBwaXRjaCBhbmQKPj4+IGJ1
ZmZlciBzaXplIGZyb20gdGhlIGdpdmVuIGFyZ3VtZW50cywgYnV0IHRoZSBpbXBsZW1lbnRhdGlv
bnMgYXJlCj4+PiBpbmNvbnNpc3RlbnQgaW4gaG93IHRoZXkgdHJlYXQgYWxpZ25tZW50IGFuZCBm
b3JtYXQgc3VwcG9ydC4gTGF0ZXIKPj4+IHBhdGNoZXMgd2lsbCB1bmlmeSB0aGlzIGNvZGUgb24g
dG9wIG9mIGRybV9tb2RlX3NpemVfZHVtYigpIGFzCj4+PiBtdWNoIGFzIHBvc3NpYmxlLgo+Pj4K
Pj4+IGRybV9tb2RlX3NpemVfZHVtYigpIHVzZXMgZXhpc3RpbmcgNENDIGZvcm1hdCBoZWxwZXJz
IHRvIGludGVycHJldCB0aGUKPj4+IGdpdmVuIGNvbG9yIG1vZGUuIFRoaXMgbWFrZXMgdGhlIGR1
bWItYnVmZmVyIGludGVyZmFjZSBiZWhhdmUgc2ltaWxhcgo+Pj4gdGhlIGtlcm5lbCdzIHZpZGVv
PSBwYXJhbWV0ZXIuIEFnYWluLCBjdXJyZW50IHBlci1kcml2ZXIgaW1wbGVtZW50YXRpb25zCj4+
PiBsaWtlbHkgaGF2ZSBzdWJ0bGUgZGlmZmVyZW5jZXMgb3IgYnVncyBpbiBob3cgdGhleSBzdXBw
b3J0IGNvbG9yIG1vZGVzLgo+Pj4KPj4+IEZ1dHVyZSBkaXJlY3Rpb25zOiBvbmUgYnVnIGlzIHBy
ZXNlbnQgaW4gdGhlIGN1cnJlbnQgaW5wdXQgdmFsaWRhdGlvbgo+Pj4gaW4gZHJtX21vZGVfY3Jl
YXRlX2R1bWIoKS4gVGhlIGR1bWItYnVmZmVyIG92ZXJmbG93IHRlc3RzIHJvdW5kIHVwIGFueQo+
Pj4gZ2l2ZW4gYml0cy1wZXItcGl4ZWwgdmFsdWUgdG8gYSBtdWx0aXBsZSBvZiA4LiBTbyBldmVu
IG9uZS1iaXQgZm9ybWF0cywKPj4+IHN1Y2ggYXMgRFJNX0ZPUk1BVF9DMSwgcmVxdWlyZSA4IGJp
dHMgcGVyIHBpeGVsLiBXaGlsZSBub3QgY29tbW9uLAo+Pj4gbG93LWVuZCBkaXNwbGF5cyB1c2Ug
c3VjaCBmb3JtYXRzOyB3aXRoIGEgcG9zc2libGUgb3ZlcmNvbW1pdG1lbnQgb2YKPj4+IG1lbW9y
eS4gQXQgc29tZSBwb2ludCwgdGhlIHZhbGlkYXRpb24gbG9naWMgaW4gZHJtX21vZGVfc2l6ZV9k
dW1iKCkgaXMKPj4+IHN1cHBvc2VkIHRvIHJlcGxhY2UgdGhlIGVycm9ub3VzIGNvZGUuCj4+Pgo+
Pj4gU2lnbmVkLW9mZi1ieTogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+
Cj4+PiAtLS0KPj4+IGRyaXZlcnMvZ3B1L2RybS9kcm1fZHVtYl9idWZmZXJzLmMgfCA5MyArKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysKPj4+IGluY2x1ZGUvZHJtL2RybV9kdW1iX2J1ZmZl
cnMuaCAgICAgfCAxNCArKysrKwo+Pj4gMiBmaWxlcyBjaGFuZ2VkLCAxMDcgaW5zZXJ0aW9ucygr
KQo+Pj4gY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvZHJtL2RybV9kdW1iX2J1ZmZlcnMuaAo+
Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2R1bWJfYnVmZmVycy5jIGIv
ZHJpdmVycy9ncHUvZHJtL2RybV9kdW1iX2J1ZmZlcnMuYwo+Pj4gaW5kZXggOTkxNmFhZjViM2Yy
Li5mZDM5NzIwYmQ2MTcgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2R1bWJf
YnVmZmVycy5jCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2R1bWJfYnVmZmVycy5jCj4+
PiBAQCAtMjUsNiArMjUsOCBAQAo+Pj4KPj4+ICNpbmNsdWRlIDxkcm0vZHJtX2RldmljZS5oPgo+
Pj4gI2luY2x1ZGUgPGRybS9kcm1fZHJ2Lmg+Cj4+PiArI2luY2x1ZGUgPGRybS9kcm1fZHVtYl9i
dWZmZXJzLmg+Cj4+PiArI2luY2x1ZGUgPGRybS9kcm1fZm91cmNjLmg+Cj4+PiAjaW5jbHVkZSA8
ZHJtL2RybV9nZW0uaD4KPj4+ICNpbmNsdWRlIDxkcm0vZHJtX21vZGUuaD4KPj4+Cj4+PiBAQCAt
NTcsNiArNTksOTcgQEAKPj4+ICAgKiBhIGhhcmR3YXJlLXNwZWNpZmljIGlvY3RsIHRvIGFsbG9j
YXRlIHN1aXRhYmxlIGJ1ZmZlciBvYmplY3RzLgo+Pj4gICAqLwo+Pj4KPj4+ICtzdGF0aWMgaW50
IGRybV9tb2RlX2FsaWduX2R1bWIoc3RydWN0IGRybV9tb2RlX2NyZWF0ZV9kdW1iICphcmdzLAo+
Pj4gKwkJCSAgICAgICB1bnNpZ25lZCBsb25nIHBpdGNoX2FsaWduLAo+Pj4gKwkJCSAgICAgICB1
bnNpZ25lZCBsb25nIHNpemVfYWxpZ24pCj4+PiArewo+Pj4gKwl1MzIgcGl0Y2ggPSBhcmdzLT5w
aXRjaDsKPj4+ICsJdTMyIHNpemU7Cj4+PiArCj4+PiArCWlmICghcGl0Y2gpCj4+PiArCQlyZXR1
cm4gLUVJTlZBTDsKPj4+ICsKPj4+ICsJaWYgKHBpdGNoX2FsaWduKQo+Pj4gKwkJcGl0Y2ggPSBy
b3VuZHVwKHBpdGNoLCBwaXRjaF9hbGlnbik7Cj4+PiArCj4+PiArCS8qIG92ZXJmbG93IGNoZWNr
cyBmb3IgMzJiaXQgc2l6ZSBjYWxjdWxhdGlvbnMgKi8KPj4+ICsJaWYgKGFyZ3MtPmhlaWdodCA+
IFUzMl9NQVggLyBwaXRjaCkKPj4+ICsJCXJldHVybiAtRUlOVkFMOwo+Pj4gKwo+Pj4gKwlpZiAo
IXNpemVfYWxpZ24pCj4+PiArCQlzaXplX2FsaWduID0gUEFHRV9TSVpFOwo+Pj4gKwllbHNlIGlm
ICghSVNfQUxJR05FRChzaXplX2FsaWduLCBQQUdFX1NJWkUpKQo+Pj4gKwkJcmV0dXJuIC1FSU5W
QUw7Cj4+PiArCj4+PiArCXNpemUgPSBBTElHTihhcmdzLT5oZWlnaHQgKiBwaXRjaCwgc2l6ZV9h
bGlnbik7Cj4+PiArCWlmICghc2l6ZSkKPj4+ICsJCXJldHVybiAtRUlOVkFMOwo+Pj4gKwo+Pj4g
KwlhcmdzLT5waXRjaCA9IHBpdGNoOwo+Pj4gKwlhcmdzLT5zaXplID0gc2l6ZTsKPj4+ICsKPj4+
ICsJcmV0dXJuIDA7Cj4+PiArfQo+Pj4gKwo+Pj4gKy8qKgo+Pj4gKyAqIGRybV9tb2RlX3NpemVf
ZHVtYiAtIENhbGN1bGF0ZXMgdGhlIHNjYW5saW5lIGFuZCBidWZmZXIgc2l6ZXMgZm9yIGR1bWIg
YnVmZmVycwo+Pj4gKyAqIEBkZXY6IERSTSBkZXZpY2UKPj4+ICsgKiBAYXJnczogUGFyYW1ldGVy
cyBmb3IgdGhlIGR1bWIgYnVmZmVyCj4+PiArICogQHBpdGNoX2FsaWduOiBTY2FubGluZSBhbGln
bm1lbnQgaW4gYnl0ZXMKPj4+ICsgKiBAc2l6ZV9hbGlnbjogQnVmZmVyLXNpemUgYWxpZ25tZW50
IGluIGJ5dGVzCj4+PiArICoKPj4+ICsgKiBUaGUgaGVscGVyIGRybV9tb2RlX3NpemVfZHVtYigp
IGNhbGN1bGF0ZXMgdGhlIHNpemUgb2YgdGhlIGJ1ZmZlcgo+Pj4gKyAqIGFsbG9jYXRpb24gYW5k
IHRoZSBzY2FubGluZSBzaXplIGZvciBhIGR1bWIgYnVmZmVyLiBDYWxsZXJzIGhhdmUgdG8KPj4+
ICsgKiBzZXQgdGhlIGJ1ZmZlcnMgd2lkdGgsIGhlaWdodCBhbmQgY29sb3IgbW9kZSBpbiB0aGUg
YXJndW1lbnQgQGFyZy4KPj4+ICsgKiBUaGUgaGVscGVyIHZhbGlkYXRlcyB0aGUgY29ycmVjdG5l
c3Mgb2YgdGhlIGlucHV0IGFuZCB0ZXN0cyBmb3IKPj4+ICsgKiBwb3NzaWJsZSBvdmVyZmxvd3Mu
IElmIHN1Y2Nlc3NmdWwsIGl0IHJldHVybnMgdGhlIGR1bWIgYnVmZmVyJ3MKPj4+ICsgKiByZXF1
aXJlZCBzY2FubGluZSBwaXRjaCBhbmQgc2l6ZSBpbiAmYXJncy4KPj4+ICsgKgo+Pj4gKyAqIFRo
ZSBwYXJhbWV0ZXIgQHBpdGNoX2FsaWduIGFsbG93cyB0aGUgZHJpdmVyIHRvIHNwZWNpZmllcyBh
bgo+Pj4gKyAqIGFsaWdubWVudCBmb3IgdGhlIHNjYW5saW5lIHBpdGNoLCBpZiB0aGUgaGFyZHdh
cmUgcmVxdWlyZXMgYW55LiBUaGUKPj4+ICsgKiBjYWxjdWxhdGVkIHBpdGNoIHdpbGwgYmUgYSBt
dWx0aXBsZSBvZiB0aGUgYWxpZ25tZW50LiBUaGUgcGFyYW1ldGVyCj4+PiArICogQHNpemVfYWxp
Z24gYWxsb3dzIHRvIHNwZWNpZnkgYW4gYWxpZ25tZW50IGZvciBidWZmZXIgc2l6ZXMuIFRoZQo+
Pj4gKyAqIHJldHVybmVkIHNpemUgaXMgYWx3YXlzIGEgbXVsdGlwbGUgb2YgUEFHRV9TSVpFLgo+
Pj4gKyAqCj4+PiArICogUmV0dXJuczoKPj4+ICsgKiBaZXJvIG9uIHN1Y2Nlc3MsIG9yIGEgbmVn
YXRpdmUgZXJyb3IgY29kZSBvdGhlcndpc2UuCj4+PiArICovCj4+PiAraW50IGRybV9tb2RlX3Np
emVfZHVtYihzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAo+Pj4gKwkJICAgICAgIHN0cnVjdCBkcm1f
bW9kZV9jcmVhdGVfZHVtYiAqYXJncywKPj4+ICsJCSAgICAgICB1bnNpZ25lZCBsb25nIHBpdGNo
X2FsaWduLAo+Pj4gKwkJICAgICAgIHVuc2lnbmVkIGxvbmcgc2l6ZV9hbGlnbikKPj4+ICt7Cj4+
PiArCXUzMiBmb3VyY2M7Cj4+PiArCWNvbnN0IHN0cnVjdCBkcm1fZm9ybWF0X2luZm8gKmluZm87
Cj4+PiArCXU2NCBwaXRjaDsKPj4+ICsKPj4+ICsJLyoKPj4+ICsJICogVGhlIHNjYW5saW5lIHBp
dGNoIGRlcGVuZHMgb24gdGhlIGJ1ZmZlciB3aWR0aCBhbmQgdGhlIGNvbG9yCj4+PiArCSAqIGZv
cm1hdC4gVGhlIGxhdHRlciBpcyBzcGVjaWZpZWQgYXMgYSBjb2xvci1tb2RlIGNvbnN0YW50IGZv
cgo+Pj4gKwkgKiB3aGljaCB3ZSBmaXJzdCBoYXZlIHRvIGZpbmQgdGhlIGNvcnJlc3BvbmRpbmcg
Y29sb3IgZm9ybWF0Lgo+Pj4gKwkgKgo+Pj4gKwkgKiBEaWZmZXJlbnQgY29sb3IgZm9ybWF0cyBj
YW4gaGF2ZSB0aGUgc2FtZSBjb2xvci1tb2RlIGNvbnN0YW50Lgo+Pj4gKwkgKiBGb3IgZXhhbXBs
ZSBYUkdCODg4OCBhbmQgQkdSWDg4ODggYm90aCBoYXZlIGEgY29sb3IgbW9kZSBvZiAzMi4KPj4+
ICsJICogSXQgaXMgcG9zc2libGUgdG8gdXNlIGRpZmZlcmVudCBmb3JtYXRzIGZvciBkdW1iLWJ1
ZmZlciBhbGxvY2F0aW9uCj4+PiArCSAqIGFuZCByZW5kZXJpbmcgYXMgbG9uZyBhcyBhbGwgaW52
b2x2ZWQgZm9ybWF0cyBzaGFyZSB0aGUgc2FtZQo+Pj4gKwkgKiBjb2xvci1tb2RlIGNvbnN0YW50
Lgo+Pj4gKwkgKi8KPj4+ICsJZm91cmNjID0gZHJtX2RyaXZlcl9jb2xvcl9tb2RlX2Zvcm1hdChk
ZXYsIGFyZ3MtPmJwcCk7Cj4+IFRoaXMgd2lsbCByZXR1cm4gLUVJTlZBTCB3aXRoIGJwcCBkcm1f
bW9kZV9sZWdhY3lfZmJfZm9ybWF0IGRvZXNuJ3Qgc3VwcG9ydCwKPj4gc3VjaCBhcyhOVjE1LCBO
VjIwLCBOVjMwLCBicHAgaXMgMTApWzBdCj4KPlRoYW5rcyBmb3IgdGFraW5nIGEgbG9vay4gVGhh
dCBOVi1yZWxhdGVkIGNvZGUgYXQgWzBdIGlzIGEgJ3NvbWV3aGF0IAo+bm9uLWlkaW9tYXRpYyB1
c2UnIG9mIHRoZSBVQVBJLiBUaGUgZHVtYi1idWZmZXIgaW50ZXJmYWNlIHJlYWxseSBqdXN0IAo+
c3VwcG9ydHMgYSBzaW5nbGUgcGxhbmUuIFRoZSBmaXggd291bGQgYmUgYSBuZXcgaW9jdGwgdGhh
dCB0YWtlcyBhIERSTSAKPjRjYyBjb25zdGFudCBhbmQgcmV0dXJucyBhIGJ1ZmZlciBoYW5kbGUv
cGl0Y2gvc2l6ZSBmb3IgZWFjaCBwbGFuZS4gQnV0IAo+dGhhdCdzIHNlcGFyYXRlIHNlcmllcyB0
aHJvdWdob3V0IHRoZSB2YXJpb3VzIGNvbXBvbmVudHMuCgpTbyBpcyB0aGVyZSBhIHN0YW5kYXJk
IHdheSB0byBjcmVhdGUgYnVmZmVyIGZvciBOVi1yZWxhdGVkIGZvcm1hdCBub3cgPwpXaXRoIGEg
cXVpY2sgc2VhcmNoLCBJIGNhbiBzZWUgbWFueSB1c2VyIHNwYWNlIHVzZSBkdW1iLWJ1ZmZlciBm
b3IgTlYtcmVsZWF0ZWQKYnVmZmVyIGFsbG9jOgoKWzBdaHR0cHM6Ly9naXRodWIuY29tL3RvbWJh
L2ttc3h4L2Jsb2IvbWFzdGVyL2ttcyUyQiUyQi9zcmMvcGl4ZWxmb3JtYXRzLmNwcApbMV1odHRw
czovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2lndC1ncHUtdG9vbHMvLS9ibG9iL21hc3Rl
ci9saWIvaWd0X2ZiLmM/cmVmX3R5cGU9aGVhZHMKWzJdaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0
b3Aub3JnL2dzdHJlYW1lci9nc3RyZWFtZXIvLS9ibG9iL21haW4vc3VicHJvamVjdHMvZ3N0LXBs
dWdpbnMtYmFkL3N5cy9rbXMvZ3N0a21zdXRpbHMuYz9yZWZfdHlwZT1oZWFkcyNMMTE2Cgo+Cj5U
aGVyZSdzIGFsc28gY29kZSBYUkdCMTYxNjE2MTZGLiBUaGlzIGlzIGEgdmlhYmxlIGZvcm1hdCBm
b3IgdGhlIFVBUEksIAo+YnV0IHNlZW1zIG5vdCB2ZXJ5IHVzZWZ1bCBpbiBwcmFjdGljZS4KPgo+
Pgo+PiBBbmQgdGhlcmUgYXJlIGFsc28gc29tZSBBRkJDIGJhc2VkIGZvcm1hdCB3aXRoIGJwcCBj
YW4ndCBiZSBoYW5kbGVkIGhlcmUsIHNlZToKPj4gc3RhdGljIF9fdTMyIGRybV9nZW1fYWZiY19n
ZXRfYnBwKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCj4+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgY29uc3Qgc3RydWN0IGRybV9tb2RlX2ZiX2NtZDIgKm1vZGVfY21kKQo+PiB7
Cj4+ICAgICAgICAgIGNvbnN0IHN0cnVjdCBkcm1fZm9ybWF0X2luZm8gKmluZm87Cj4+ICAgICAg
ICAgICAgICAgICAgCj4+ICAgICAgICAgIGluZm8gPSBkcm1fZ2V0X2Zvcm1hdF9pbmZvKGRldiwg
bW9kZV9jbWQpOwo+PiAgICAgICAgICAgICAgICAgIAo+PiAgICAgICAgICBzd2l0Y2ggKGluZm8t
PmZvcm1hdCkgewo+PiAgICAgICAgICBjYXNlIERSTV9GT1JNQVRfWVVWNDIwXzhCSVQ6Cj4+ICAg
ICAgICAgICAgICAgICAgcmV0dXJuIDEyOwo+PiAgICAgICAgICBjYXNlIERSTV9GT1JNQVRfWVVW
NDIwXzEwQklUOgo+PiAgICAgICAgICAgICAgICAgIHJldHVybiAxNTsKPj4gICAgICAgICAgY2Fz
ZSBEUk1fRk9STUFUX1ZVWTEwMTAxMDoKPj4gICAgICAgICAgICAgICAgICByZXR1cm4gMzA7Cj4+
ICAgICAgICAgIGRlZmF1bHQ6Cj4+ICAgICAgICAgICAgICAgICAgcmV0dXJuIGRybV9mb3JtYXRf
aW5mb19icHAoaW5mbywgMCk7Cj4+ICAgICAgICAgIH0KPj4gfQo+Cj5TYW1lIHByb2JsZW0gaGVy
ZS4gVGhlc2UgWVVWIGZvcm1hdHMgYXJlIG11bHRpLXBsYW5hciBhbmQgdGhlcmUgc2hvdWxkIAo+
YmUgbm8gZHVtYiBidWZmZXJzIGZvciB0aGVtLgoKVGhlc2UgYWZiYyBiYXNlZCBmb3JtYXQgYXJl
IG9uZSBwbGFuZSwgc2VlOgoKLyoKICogMS1wbGFuZSBZVVYgNDoyOjAKICogSW4gdGhlc2UgZm9y
bWF0cywgdGhlIGNvbXBvbmVudCBvcmRlcmluZyBpcyBzcGVjaWZpZWQgKFksIGZvbGxvd2VkIGJ5
IFUKICogdGhlbiBWKSwgYnV0IHRoZSBleGFjdCBMaW5lYXIgbGF5b3V0IGlzIHVuZGVmaW5lZC4K
ICogVGhlc2UgZm9ybWF0cyBjYW4gb25seSBiZSB1c2VkIHdpdGggYSBub24tTGluZWFyIG1vZGlm
aWVyLgogKi8KI2RlZmluZSBEUk1fRk9STUFUX1lVVjQyMF84QklUICBmb3VyY2NfY29kZSgnWScs
ICdVJywgJzAnLCAnOCcpCiNkZWZpbmUgRFJNX0ZPUk1BVF9ZVVY0MjBfMTBCSVQgZm91cmNjX2Nv
ZGUoJ1knLCAnVScsICcxJywgJzAnKQoKPgo+QXMgd2Ugc3RpbGwgaGF2ZSB0byBzdXBwb3J0IHRo
ZXNlIGFsbCB1c2UgY2FzZXMsIEkndmUgbW9kaWZpZWQgdGhlIG5ldyAKPmhlbHBlciB0byBmYWxs
YmFjayB0byBjb21wdXRpbmcgdGhlIHBpdGNoIGZyb20gdGhlIGdpdmVuIGJwcCB2YWx1ZS4gCj5U
aGF0J3Mgd2hhdCBkcml2ZXJzIGN1cnJlbnRseSBkby4gQ291bGQgeW91IHBsZWFzZSBhcHBseSB0
aGUgYXR0YWNoZWQgCj5wYXRjaCBvbiB0b3Agb2YgdGhlIHNlcmllcyBhbmQgcmVwb3J0IGJhY2sg
dGhlIHJlc3VsdCBvZiB0aGUgdGVzdD8gWW91IAo+c2hvdWxkIHNlZSBhIGtlcm5lbCB3YXJuaW5n
IGFib3V0IHRoZSB1bmtub3duIGNvbG9yIG1vZGUsIGJ1dCBhbGxvY2F0aW9uIAo+c2hvdWxkIHN1
Y2NlZWQuCgpZZXMsIHRoZSBhdHRhY2hlZCBwYXRjaCB3b3JrcyBmb3IgbXkgdGVzdCBjYXNlLgoK
Pgo+QmVzdCByZWdhcmRzCj5UaG9tYXMKPgo+Pgo+Pgo+PiBbMF1odHRwczovL2dpdGxhYi5mcmVl
ZGVza3RvcC5vcmcvbWVzYS9kcm0vLS9ibG9iL21haW4vdGVzdHMvbW9kZXRlc3QvYnVmZmVycy5j
P3JlZl90eXBlPWhlYWRzI0wxNTkKPj4KPj4gVGhpcyBpbnRyb2R1Y2UgYSBtb2RldGVzdCBmYWls
dXJlIG9uIHJvY2tjaGlwIHBsYXRmb3JtOgo+PiAjIG1vZGV0ZXN0IC1NIHJvY2tjaGlwIC1zIDcw
QDY4OjE5MjB4MTA4MCAtUCAzMkA2ODoxOTIweDEwODBATlYzMAo+PiBzZXR0aW5nIG1vZGUgMTky
MHgxMDgwLTYwLjAwSHogb24gY29ubmVjdG9ycyA3MCwgY3J0YyA2OAo+PiB0ZXN0aW5nIDE5MjB4
MTA4MEBOVjMwIG92ZXJsYXkgcGxhbmUgMzIKPj4gZmFpbGVkIHRvIGNyZWF0ZSBkdW1iIGJ1ZmZl
cjogSW52YWxpZCBhcmd1bWVudAo+Pgo+PiBJIHRoaW5rIG90aGVyIHBsYXRmb3JtIHdpdGggYnBw
IGNhbid0IGhhbmRsZXIgYnkgIGRybV9tb2RlX2xlZ2FjeV9mYl9mb3JtYXQgd2lsbAo+PiBhbHNv
IHNlZSB0aGlzIGtpbmQgb2YgZmFpbHVyZToKPj4KPj4KPj4KPj4+ICsJaWYgKGZvdXJjYyA9PSBE
Uk1fRk9STUFUX0lOVkFMSUQpCj4+PiArCQlyZXR1cm4gLUVJTlZBTDsKPj4+ICsJaW5mbyA9IGRy
bV9mb3JtYXRfaW5mbyhmb3VyY2MpOwo+Pj4gKwlpZiAoIWluZm8pCj4+PiArCQlyZXR1cm4gLUVJ
TlZBTDsKPj4+ICsJcGl0Y2ggPSBkcm1fZm9ybWF0X2luZm9fbWluX3BpdGNoKGluZm8sIDAsIGFy
Z3MtPndpZHRoKTsKPj4+ICsJaWYgKCFwaXRjaCB8fCBwaXRjaCA+IFUzMl9NQVgpCj4+PiArCQly
ZXR1cm4gLUVJTlZBTDsKPj4+ICsKPj4+ICsJYXJncy0+cGl0Y2ggPSBwaXRjaDsKPj4+ICsKPj4+
ICsJcmV0dXJuIGRybV9tb2RlX2FsaWduX2R1bWIoYXJncywgcGl0Y2hfYWxpZ24sIHNpemVfYWxp
Z24pOwo+Pj4gK30KPj4+ICtFWFBPUlRfU1lNQk9MKGRybV9tb2RlX3NpemVfZHVtYik7Cj4+PiAr
Cj4+PiBpbnQgZHJtX21vZGVfY3JlYXRlX2R1bWIoc3RydWN0IGRybV9kZXZpY2UgKmRldiwKPj4+
IAkJCSBzdHJ1Y3QgZHJtX21vZGVfY3JlYXRlX2R1bWIgKmFyZ3MsCj4+PiAJCQkgc3RydWN0IGRy
bV9maWxlICpmaWxlX3ByaXYpCj4+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vZHJtX2R1bWJf
YnVmZmVycy5oIGIvaW5jbHVkZS9kcm0vZHJtX2R1bWJfYnVmZmVycy5oCj4+PiBuZXcgZmlsZSBt
b2RlIDEwMDY0NAo+Pj4gaW5kZXggMDAwMDAwMDAwMDAwLi42ZmUzNjAwNGIxOWQKPj4+IC0tLSAv
ZGV2L251bGwKPj4+ICsrKyBiL2luY2x1ZGUvZHJtL2RybV9kdW1iX2J1ZmZlcnMuaAo+Pj4gQEAg
LTAsMCArMSwxNCBAQAo+Pj4gKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQgKi8KPj4+
ICsKPj4+ICsjaWZuZGVmIF9fRFJNX0RVTUJfQlVGRkVSU19IX18KPj4+ICsjZGVmaW5lIF9fRFJN
X0RVTUJfQlVGRkVSU19IX18KPj4+ICsKPj4+ICtzdHJ1Y3QgZHJtX2RldmljZTsKPj4+ICtzdHJ1
Y3QgZHJtX21vZGVfY3JlYXRlX2R1bWI7Cj4+PiArCj4+PiAraW50IGRybV9tb2RlX3NpemVfZHVt
YihzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAo+Pj4gKwkJICAgICAgIHN0cnVjdCBkcm1fbW9kZV9j
cmVhdGVfZHVtYiAqYXJncywKPj4+ICsJCSAgICAgICB1bnNpZ25lZCBsb25nIHBpdGNoX2FsaWdu
LAo+Pj4gKwkJICAgICAgIHVuc2lnbmVkIGxvbmcgc2l6ZV9hbGlnbik7Cj4+PiArCj4+PiArI2Vu
ZGlmCj4+PiAtLSAKPj4+IDIuNDcuMQo+Pj4KPj4+Cj4+PiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
Cj4+PiBMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4+PiBodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCj4KPi0tIAo+LS0K
PlRob21hcyBaaW1tZXJtYW5uCj5HcmFwaGljcyBEcml2ZXIgRGV2ZWxvcGVyCj5TVVNFIFNvZnR3
YXJlIFNvbHV0aW9ucyBHZXJtYW55IEdtYkgKPkZyYW5rZW5zdHJhc3NlIDE0NiwgOTA0NjEgTnVl
cm5iZXJnLCBHZXJtYW55Cj5HRjogSXZvIFRvdGV2LCBBbmRyZXcgTXllcnMsIEFuZHJldyBNY0Rv
bmFsZCwgQm91ZGllbiBNb2VybWFuCj5IUkIgMzY4MDkgKEFHIE51ZXJuYmVyZykK
