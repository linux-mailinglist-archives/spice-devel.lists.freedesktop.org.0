Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 159606CF9F
	for <lists+spice-devel@lfdr.de>; Thu, 18 Jul 2019 16:25:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A142E6E2B8;
	Thu, 18 Jul 2019 14:25:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D15036E2B8
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 14:25:04 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id g67so21805241wme.1
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 07:25:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=m0xghWfzgDPlY7RIacQe17DE+RuPwrAugt57towsk/s=;
 b=IP6Aq/UirZRhjgN7+jV7qIhZDeIuz0Fj6uoE7XzS6CZPtKYXGu/QduoagpgSPM+BJ8
 YLs7Av3PkWfcK4o5E2TT/WxjIMeMKYOzYk3+FvnruZOjdjt5x+nZJZDY4IUCRLXPBqM6
 STCj+VaClBDiIPpFHs6SVb1Oq35JktAybbfjCaceCYbx16+1k8ElJDVGoPYoAhI0rgXS
 GuHUOhTzZsOkAtfkN2zX4oCDI7Luy5+HXEJVngYM/jheym0eUp8GQ4siimke2V8Nyf3u
 1YCs7J8sS0h1Iu7FhZpOcBCyMPDmj1jq40Oo/2UrQtUbkbuIORId20yXDfy/9ZPXuhUz
 7Aqg==
X-Gm-Message-State: APjAAAXqvqN+6DJ9Zp74tbM9xzV3NfO47b7li6eIl+Y1B3MpgN2iLzpM
 FbJVpdnX8ax7kixNQOdDuXL1D68WYKY=
X-Google-Smtp-Source: APXvYqwZLjMcrUzPlG3/hbgefVpqPMWnaVpYEhupNsCBLiJlLizSKVZwMJEfjNsnOa3fUlkR/nFTcg==
X-Received: by 2002:a05:600c:1150:: with SMTP id
 z16mr41550616wmz.168.1563459903093; 
 Thu, 18 Jul 2019 07:25:03 -0700 (PDT)
Received: from dhcp-4-93.tlv.redhat.com (bzq-82-81-161-50.red.bezeqint.net.
 [82.81.161.50])
 by smtp.gmail.com with ESMTPSA id g19sm47520813wrb.52.2019.07.18.07.25.01
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 18 Jul 2019 07:25:01 -0700 (PDT)
To: spice-devel@lists.freedesktop.org
References: <20190704135610.15771-1-fziglio@redhat.com>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <fae68717-218f-afdb-f854-f9f1a5472e82@redhat.com>
Date: Thu, 18 Jul 2019 17:24:59 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190704135610.15771-1-fziglio@redhat.com>
Content-Language: en-US
Subject: Re: [Spice-devel] [PATCH spice-protocol 1/2 v2] qxl_dev: Fix
 alignment for QXLReleaseInfo
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SGksCgoKSUlSQyB0aGlzIHdhcyByZWxhdGVkIHRvIHNvbWUgY29tcGlsZXIgd2FybmluZywgbm8/
CklmIGl0IGlzIEknZCBtZW50aW9uaW5nIGl0ICwgb3RoZXJ3aXNlLCBhY2suCgpTbmlyLgoKCk9u
IDcvNC8xOSA0OjU2IFBNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gRG8gbm90IGRlY2xhcmUg
dGhlIHN0cnVjdHVyZSBhcyBhbGlnbmVkLgo+IFRoZSBzdGFydC9lbmQtcGFja2VkLmggaGVhZGVy
cyBhZmZlY3RzIHN0cnVjdHVyZXMgd2l0aG91dAo+IHNwZWNpZmljYXRpb24gb25seSB1c2luZyBN
aW5nVyBvciBNaWNyb3NvZnQgY29tcGlsZXJzLiBGb3Igb3RoZXIKPiBwbGF0Zm9ybSBTUElDRV9B
VFRSX1BBQ0tFRCBtYWNybyBzaG91bGQgYmUgdXNlZC4gIFRoaXMgd2F5IHRoZQo+IGRlZmluaXRp
b24gYXJlIHRoZSBzYW1lIGZvciBhbGwgY29tcGlsZXIuCj4gVGhpcyBzdHJ1Y3R1cmUgaXMgdXNl
ZCBpbiBhIGxvdCBvZiBRWEwgc3RydWN0dXJlcyB3aGljaCBhcmUgbm90Cj4gYWxpZ25lZCBjYXVz
aW5nIHRvIGhhdmUgYW4gYWxpZ25lZCBzdHJ1Y3R1cmUgdG8gYmUgcG90ZW50aWFsbHkKPiB1bmFs
aWduZWQuCj4gQXMgdGhpcyBzdHJ1Y3R1cmUgaGFzIG5vIGhvbGVzIHRoaXMgY2hhbmdlIGRvZXMg
bm90IG1ha2UgYW55IHNpemUKPiBjaGFuZ2UgdXNpbmcgYW55IGNvbXBpbGVyLgo+IFRoZSBjaGFu
Z2Ugd2lsbCBvbmx5IGNoYW5nZSB0aGUgYWxpZ25tZW50IGZyb20gNC84IHRvIDEuCj4gVGhpcyBj
b3VsZCBhZmZlY3Qgc3RydWN0dXJlcyBjb250YWluaW5nIHRoaXMgdW5pb24gaG93ZXZlciBiZXNp
ZGUKPiBwYWNrZWQgc3RydWN0dXJlIGluIHF4bF9kZXYuaCAod2hpY2ggYXJlIG5vdCBhZmZlY3Rl
ZCkgdGhlcmUgYXJlIG5vCj4gb3RoZXIgdXNhZ2VzIGFmZmVjdGluZyBBQkkgYnkgc3BpY2UtZ3Rr
LCBRZW11IG9yIHNwaWNlLXNlcnZlci4KPgo+IFNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xp
byA8ZnppZ2xpb0ByZWRoYXQuY29tPgo+IC0tLQo+IENoYW5nZXMgc2luY2UgdjE6Cj4gLSB1cGRh
dGUgY29tbWl0IG1lc3NhZ2UKPiAtLS0KPiAgIHNwaWNlL3F4bF9kZXYuaCB8IDIgKy0KPiAgIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdp
dCBhL3NwaWNlL3F4bF9kZXYuaCBiL3NwaWNlL3F4bF9kZXYuaAo+IGluZGV4IGE5Y2M0ZjQuLjY1
OWY5MzAgMTAwNjQ0Cj4gLS0tIGEvc3BpY2UvcXhsX2Rldi5oCj4gKysrIGIvc3BpY2UvcXhsX2Rl
di5oCj4gQEAgLTI3NSw3ICsyNzUsNyBAQCB0eXBlZGVmIHN0cnVjdCBTUElDRV9BVFRSX0FMSUdO
RUQoNCkgU1BJQ0VfQVRUUl9QQUNLRUQgUVhMUmFtIHsKPiAgIAo+ICAgfSBRWExSYW07Cj4gICAK
PiAtdHlwZWRlZiB1bmlvbiBRWExSZWxlYXNlSW5mbyB7Cj4gK3R5cGVkZWYgdW5pb24gU1BJQ0Vf
QVRUUl9QQUNLRUQgUVhMUmVsZWFzZUluZm8gewo+ICAgICAgIHVpbnQ2NF90IGlkOyAgICAgIC8v
IGluCj4gICAgICAgdWludDY0X3QgbmV4dDsgICAgLy8gb3V0Cj4gICB9IFFYTFJlbGVhc2VJbmZv
OwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1k
ZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
