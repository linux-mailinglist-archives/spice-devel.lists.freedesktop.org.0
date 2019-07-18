Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B25C6D12A
	for <lists+spice-devel@lfdr.de>; Thu, 18 Jul 2019 17:30:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF1B06E3F7;
	Thu, 18 Jul 2019 15:30:49 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 524EA6E3F7
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 15:30:48 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id p74so26013876wme.4
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 08:30:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=J+BVexWcbINDDwjVD/OgF0qR7GxtPmTLE+AmQHoXhks=;
 b=tkbQu1HDoyfP8NSKOHZG6NYu4cDj4IWLiTWTGZ8fZxArItnsnZcrlv65yOqaLHh/2K
 YqWFWU3TJvw5MFgLWR4Z6k5QBYjq2xb89l5Gyn814k7sY0MuOU94ASUdpqfDmWLa1yLV
 eGa3X5Aljoq+mO9a7neCR8/Eoglf92m550tkiyi1pzLnWG06CZV6mD+RB4XK3+tVY78u
 PV6XnuSqoQSFpSeNhbf1CZ147LxTZ8TJlYi6PE0mrBvUirbNrEDpWfthH6DsRM9FoGJD
 wVOE5jiMeXYnDqUY3+mHyBbVDa90u1gi6rxLYhfq+kZkXI5x6i2bklD3bcVNZyeJ1DPz
 w5Bw==
X-Gm-Message-State: APjAAAVCpCMP16lIAQBlZtFzKLq8kCvULIU/S8n8WKQfjzNpFctKwhoI
 Q4Fc7bfIPJuxMKIv0HuPpb4m2TtQa/k=
X-Google-Smtp-Source: APXvYqzg1pmgbu82eT93SxFZvpWE20uI7V0NYnVngZqbIYcBnS1K1Yo2REQLNnqj3LxRzs3XFEy7jQ==
X-Received: by 2002:a1c:343:: with SMTP id 64mr38661454wmd.116.1563463846611; 
 Thu, 18 Jul 2019 08:30:46 -0700 (PDT)
Received: from dhcp-4-93.tlv.redhat.com (bzq-82-81-161-50.red.bezeqint.net.
 [82.81.161.50])
 by smtp.gmail.com with ESMTPSA id w23sm28673682wmi.45.2019.07.18.08.30.45
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 18 Jul 2019 08:30:45 -0700 (PDT)
To: Frediano Ziglio <fziglio@redhat.com>
References: <20190704135610.15771-1-fziglio@redhat.com>
 <fae68717-218f-afdb-f854-f9f1a5472e82@redhat.com>
 <1392117468.781754.1563461511661.JavaMail.zimbra@redhat.com>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <5e1f0a8e-93cf-cdb9-e37e-0c7b755058f0@redhat.com>
Date: Thu, 18 Jul 2019 18:30:44 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1392117468.781754.1563461511661.JavaMail.zimbra@redhat.com>
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
Cc: spice-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Ck9uIDcvMTgvMTkgNTo1MSBQTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+PiBIaSwKPj4KPj4K
Pj4gSUlSQyB0aGlzIHdhcyByZWxhdGVkIHRvIHNvbWUgY29tcGlsZXIgd2FybmluZywgbm8/Cj4g
WWVzLCByZWNlbnQgY29tcGlsZXJzIGFyZSByZXBvcnRpbmcgaXQsIHNlZSBiZWxvdy4KPgo+PiBJ
ZiBpdCBpcyBJJ2QgbWVudGlvbmluZyBpdCAsIG90aGVyd2lzZSwgYWNrLgo+Pgo+IEp1c3QgdGhp
cyBwYXRjaCBvciB0aGUgZW50aXJlIHNlcmllcz8KCgpObywgYWN0dWFsbHkgaSBzdGFydGVkIGxv
b2tpbmcgYXQgdGhlIHNlY29uZCBvbmUgYW5kIHdvbmRlcmVkIHdoeQp3ZSBhcmUgdXNpbmcgI2lu
Y2x1ZGUgZW5kL3N0YXJ0LXBhY2tlZC5oCgpJdCBpcyBtZW50aW9uZWQgaW4gc3RhcnQtcGFja2Vk
LmggaXQncyBiZWNhdXNlICJpdHMgbm90IHBvc3NpYmxlIHRvIHB1dCAKcHJhZ21hcyBpbnRvIGhl
YWRlciBmaWxlcyIKYW5kIGp1c3QgYWZ0ZXIgdGhhdCB3ZSBwdXQgcHJhZ21hLCBpbnRvIHRoaXMg
aGVhZGVyIGZpbGUuCldoYXQgYW0gaSBtaXNzaW5nPyBvciB0aGUgY29tbWVudCBpcyB3cm9uZz8K
Cgo+Cj4+IFNuaXIuCj4+Cj4+Cj4+IE9uIDcvNC8xOSA0OjU2IFBNLCBGcmVkaWFubyBaaWdsaW8g
d3JvdGU6Cj4+PiBEbyBub3QgZGVjbGFyZSB0aGUgc3RydWN0dXJlIGFzIGFsaWduZWQuCj4+PiBU
aGUgc3RhcnQvZW5kLXBhY2tlZC5oIGhlYWRlcnMgYWZmZWN0cyBzdHJ1Y3R1cmVzIHdpdGhvdXQK
Pj4+IHNwZWNpZmljYXRpb24gb25seSB1c2luZyBNaW5nVyBvciBNaWNyb3NvZnQgY29tcGlsZXJz
LiBGb3Igb3RoZXIKPj4+IHBsYXRmb3JtIFNQSUNFX0FUVFJfUEFDS0VEIG1hY3JvIHNob3VsZCBi
ZSB1c2VkLiAgVGhpcyB3YXkgdGhlCj4+PiBkZWZpbml0aW9uIGFyZSB0aGUgc2FtZSBmb3IgYWxs
IGNvbXBpbGVyLgo+Pj4gVGhpcyBzdHJ1Y3R1cmUgaXMgdXNlZCBpbiBhIGxvdCBvZiBRWEwgc3Ry
dWN0dXJlcyB3aGljaCBhcmUgbm90Cj4+PiBhbGlnbmVkIGNhdXNpbmcgdG8gaGF2ZSBhbiBhbGln
bmVkIHN0cnVjdHVyZSB0byBiZSBwb3RlbnRpYWxseQo+Pj4gdW5hbGlnbmVkLgo+IFdoYXQgYWJv
dXQgY2hhbmdpbmcgdGhpcyBwYXJhZ3JhcGggdG86Cj4KPiAiVGhpcyBzdHJ1Y3R1cmUgaXMgdXNl
ZCBpbiBhIGxvdCBvZiBRWEwgc3RydWN0dXJlcyB3aGljaCBhcmUgbm90Cj4gICBhbGlnbmVkIGNh
dXNpbmcgdG8gaGF2ZSBhbiBhbGlnbmVkIHN0cnVjdHVyZSB0byBiZSBwb3RlbnRpYWxseQo+ICAg
dW5hbGlnbmVkLiBTb21lIGNvbXBpbGVycyByZXBvcnQgYSB3YXJuaW5nIGZvciBzb21lIHVzYWdl
LiIKCgpOb3QgYSBiaWcgZGVhbCBidXQgbWF5YmUgIlNvbWUgY29tcGlsZXJzIG1heSByZXBvcnQg
YSB3YXJuaW5nIj8KCkFueXdheSwgYWNrIGZvciB0aGUgY2hhbmdlLgoKPgo+Pj4gQXMgdGhpcyBz
dHJ1Y3R1cmUgaGFzIG5vIGhvbGVzIHRoaXMgY2hhbmdlIGRvZXMgbm90IG1ha2UgYW55IHNpemUK
Pj4+IGNoYW5nZSB1c2luZyBhbnkgY29tcGlsZXIuCj4+PiBUaGUgY2hhbmdlIHdpbGwgb25seSBj
aGFuZ2UgdGhlIGFsaWdubWVudCBmcm9tIDQvOCB0byAxLgo+Pj4gVGhpcyBjb3VsZCBhZmZlY3Qg
c3RydWN0dXJlcyBjb250YWluaW5nIHRoaXMgdW5pb24gaG93ZXZlciBiZXNpZGUKPj4+IHBhY2tl
ZCBzdHJ1Y3R1cmUgaW4gcXhsX2Rldi5oICh3aGljaCBhcmUgbm90IGFmZmVjdGVkKSB0aGVyZSBh
cmUgbm8KPj4+IG90aGVyIHVzYWdlcyBhZmZlY3RpbmcgQUJJIGJ5IHNwaWNlLWd0aywgUWVtdSBv
ciBzcGljZS1zZXJ2ZXIuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxm
emlnbGlvQHJlZGhhdC5jb20+Cj4+PiAtLS0KPj4+IENoYW5nZXMgc2luY2UgdjE6Cj4+PiAtIHVw
ZGF0ZSBjb21taXQgbWVzc2FnZQo+Pj4gLS0tCj4+PiAgICBzcGljZS9xeGxfZGV2LmggfCAyICst
Cj4+PiAgICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPj4+
Cj4+PiBkaWZmIC0tZ2l0IGEvc3BpY2UvcXhsX2Rldi5oIGIvc3BpY2UvcXhsX2Rldi5oCj4+PiBp
bmRleCBhOWNjNGY0Li42NTlmOTMwIDEwMDY0NAo+Pj4gLS0tIGEvc3BpY2UvcXhsX2Rldi5oCj4+
PiArKysgYi9zcGljZS9xeGxfZGV2LmgKPj4+IEBAIC0yNzUsNyArMjc1LDcgQEAgdHlwZWRlZiBz
dHJ1Y3QgU1BJQ0VfQVRUUl9BTElHTkVEKDQpIFNQSUNFX0FUVFJfUEFDS0VECj4+PiBRWExSYW0g
ewo+Pj4gICAgCj4+PiAgICB9IFFYTFJhbTsKPj4+ICAgIAo+Pj4gLXR5cGVkZWYgdW5pb24gUVhM
UmVsZWFzZUluZm8gewo+Pj4gK3R5cGVkZWYgdW5pb24gU1BJQ0VfQVRUUl9QQUNLRUQgUVhMUmVs
ZWFzZUluZm8gewo+Pj4gICAgICAgIHVpbnQ2NF90IGlkOyAgICAgIC8vIGluCj4+PiAgICAgICAg
dWludDY0X3QgbmV4dDsgICAgLy8gb3V0Cj4+PiAgICB9IFFYTFJlbGVhc2VJbmZvOwo+IEZyZWRp
YW5vCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNl
LWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
