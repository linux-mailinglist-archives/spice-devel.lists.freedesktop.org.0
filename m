Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FE406F249
	for <lists+spice-devel@lfdr.de>; Sun, 21 Jul 2019 10:41:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 782A889C05;
	Sun, 21 Jul 2019 08:41:51 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6112E89C05
 for <spice-devel@lists.freedesktop.org>; Sun, 21 Jul 2019 08:41:49 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id w9so26585703wmd.1
 for <spice-devel@lists.freedesktop.org>; Sun, 21 Jul 2019 01:41:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=Qgu9S2YN7xoe1wvc49lJs3li6z81wWhUHIreOupDcRo=;
 b=Rb4sv2yQcrZBug1mAltXYjsg25A8hN/fP5+qo9sVjTaecWru16MFgyj3LquOKNabyS
 ESbmnYE+PkI1FInrOT31g+1ZkW4WiuNf06MZMCLEoRAjQbX0RQZrrgV6Lq60uCHErBxv
 kkRfSuTCxQozpPPbjR+uLtCZX2aEw/W1LHA91JpGU13jJfAFxEl7EQe9GvGVijlsnOYr
 c+T4B5VjLZuoldDTIKjcrl9E9LvPazY3TPFO1cPb1p/gz9zeDdjw7BRl7ayD0XA6ftmD
 YVKHiXbGub8KnCI/AqAab69iIJYesninjAcjeh8BtfbXBIM3BE7UuI+7mM3fVaJkpK/3
 qIpQ==
X-Gm-Message-State: APjAAAVaRSrFwr6reZEKykpgJp+WWUSwmu0fqFuyrZq8i82ZA9Ru/6ME
 QXTOWx0JlilEvd++3Rc3+/SMd38V8Js=
X-Google-Smtp-Source: APXvYqzSuD/0GcImGyf+KXNONBJB0fW7M5HT57qeYdihv7nLr6zM9I7nrIbVCk5pUOARkDf9Atb33Q==
X-Received: by 2002:a1c:7c11:: with SMTP id x17mr53990608wmc.22.1563698507445; 
 Sun, 21 Jul 2019 01:41:47 -0700 (PDT)
Received: from dhcp-4-93.tlv.redhat.com (bzq-82-81-161-50.red.bezeqint.net.
 [82.81.161.50])
 by smtp.gmail.com with ESMTPSA id o20sm90047382wrh.8.2019.07.21.01.41.45
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Sun, 21 Jul 2019 01:41:46 -0700 (PDT)
To: Frediano Ziglio <fziglio@redhat.com>
References: <20190704135610.15771-1-fziglio@redhat.com>
 <fae68717-218f-afdb-f854-f9f1a5472e82@redhat.com>
 <1392117468.781754.1563461511661.JavaMail.zimbra@redhat.com>
 <5e1f0a8e-93cf-cdb9-e37e-0c7b755058f0@redhat.com>
 <1856377649.803441.1563464231763.JavaMail.zimbra@redhat.com>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <41737d67-d7e7-8520-bc30-6bfe03bd7d14@redhat.com>
Date: Sun, 21 Jul 2019 11:41:44 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1856377649.803441.1563464231763.JavaMail.zimbra@redhat.com>
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

Ck9uIDcvMTgvMTkgNjozNyBQTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+Pgo+PiBPbiA3LzE4
LzE5IDU6NTEgUE0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPj4+PiBIaSwKPj4+Pgo+Pj4+Cj4+
Pj4gSUlSQyB0aGlzIHdhcyByZWxhdGVkIHRvIHNvbWUgY29tcGlsZXIgd2FybmluZywgbm8/Cj4+
PiBZZXMsIHJlY2VudCBjb21waWxlcnMgYXJlIHJlcG9ydGluZyBpdCwgc2VlIGJlbG93Lgo+Pj4K
Pj4+PiBJZiBpdCBpcyBJJ2QgbWVudGlvbmluZyBpdCAsIG90aGVyd2lzZSwgYWNrLgo+Pj4+Cj4+
PiBKdXN0IHRoaXMgcGF0Y2ggb3IgdGhlIGVudGlyZSBzZXJpZXM/Cj4+Cj4+IE5vLCBhY3R1YWxs
eSBpIHN0YXJ0ZWQgbG9va2luZyBhdCB0aGUgc2Vjb25kIG9uZSBhbmQgd29uZGVyZWQgd2h5Cj4+
IHdlIGFyZSB1c2luZyAjaW5jbHVkZSBlbmQvc3RhcnQtcGFja2VkLmgKPj4KPj4gSXQgaXMgbWVu
dGlvbmVkIGluIHN0YXJ0LXBhY2tlZC5oIGl0J3MgYmVjYXVzZSAiaXRzIG5vdCBwb3NzaWJsZSB0
byBwdXQKPj4gcHJhZ21hcyBpbnRvIGhlYWRlciBmaWxlcyIKPiBJIHRoaW5rIGluc3RlYWQgb2YK
Pgo+IC8qIElkZWFsbHkgdGhpcyBzaG91bGQgYWxsIGhhdmUgYmVlbiBtYWNyb3MgaW4gYSBjb21t
b24gaGVhZGVycywgYnV0Cj4gICAqIGl0cyBub3QgcG9zc2libGUgdG8gcHV0IHByYWdtYXMgaW50
byBoZWFkZXIgZmlsZXMsIHNvIHdlIGhhdmUKPiAgICogdG8gdXNlIGluY2x1ZGUgbWFnaWMuCj4K
PiBzaG91bGQgYmUKPgo+IC8qIElkZWFsbHkgdGhpcyBzaG91bGQgYWxsIGhhdmUgYmVlbiBtYWNy
b3MgaW4gYSBjb21tb24gaGVhZGVycywgYnV0Cj4gICAqIGl0cyBub3QgcG9zc2libGUgdG8gcHV0
IHByYWdtYXMgaW50byBNQUNST1MsIHNvIHdlIGhhdmUKPiAgICogdG8gdXNlIGluY2x1ZGUgbWFn
aWMuCj4KPiBhbmQgd2l0aCBDOTkgeW91IGNhbiB1c2UgX1ByYWdtYSBpbnN0ZWFkLCBidXQgZm9y
IGNvaGVyZW5jZSB0aGlzCj4gbWV0aG9kIGlzIHN0aWxsIGZpbmUuCj4KPj4gYW5kIGp1c3QgYWZ0
ZXIgdGhhdCB3ZSBwdXQgcHJhZ21hLCBpbnRvIHRoaXMgaGVhZGVyIGZpbGUuCj4+IFdoYXQgYW0g
aSBtaXNzaW5nPyBvciB0aGUgY29tbWVudCBpcyB3cm9uZz8KPj4KPiBIZWFkZXIgY29kZSBpcyBm
aW5lLCBjb21tZW50IGlzIHN1cmVseSBtaXNsZWFkaW5nLgo+Cj4+Pj4gU25pci4KPj4+Pgo+Pj4+
Cj4+Pj4gT24gNy80LzE5IDQ6NTYgUE0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPj4+Pj4gRG8g
bm90IGRlY2xhcmUgdGhlIHN0cnVjdHVyZSBhcyBhbGlnbmVkLgo+Pj4+PiBUaGUgc3RhcnQvZW5k
LXBhY2tlZC5oIGhlYWRlcnMgYWZmZWN0cyBzdHJ1Y3R1cmVzIHdpdGhvdXQKPj4+Pj4gc3BlY2lm
aWNhdGlvbiBvbmx5IHVzaW5nIE1pbmdXIG9yIE1pY3Jvc29mdCBjb21waWxlcnMuIEZvciBvdGhl
cgo+Pj4+PiBwbGF0Zm9ybSBTUElDRV9BVFRSX1BBQ0tFRCBtYWNybyBzaG91bGQgYmUgdXNlZC4g
IFRoaXMgd2F5IHRoZQo+Pj4+PiBkZWZpbml0aW9uIGFyZSB0aGUgc2FtZSBmb3IgYWxsIGNvbXBp
bGVyLgo+Pj4+PiBUaGlzIHN0cnVjdHVyZSBpcyB1c2VkIGluIGEgbG90IG9mIFFYTCBzdHJ1Y3R1
cmVzIHdoaWNoIGFyZSBub3QKPj4+Pj4gYWxpZ25lZCBjYXVzaW5nIHRvIGhhdmUgYW4gYWxpZ25l
ZCBzdHJ1Y3R1cmUgdG8gYmUgcG90ZW50aWFsbHkKPj4+Pj4gdW5hbGlnbmVkLgo+Pj4gV2hhdCBh
Ym91dCBjaGFuZ2luZyB0aGlzIHBhcmFncmFwaCB0bzoKPj4+Cj4+PiAiVGhpcyBzdHJ1Y3R1cmUg
aXMgdXNlZCBpbiBhIGxvdCBvZiBRWEwgc3RydWN0dXJlcyB3aGljaCBhcmUgbm90Cj4+PiAgICBh
bGlnbmVkIGNhdXNpbmcgdG8gaGF2ZSBhbiBhbGlnbmVkIHN0cnVjdHVyZSB0byBiZSBwb3RlbnRp
YWxseQo+Pj4gICAgdW5hbGlnbmVkLiBTb21lIGNvbXBpbGVycyByZXBvcnQgYSB3YXJuaW5nIGZv
ciBzb21lIHVzYWdlLiIKPj4KPj4gTm90IGEgYmlnIGRlYWwgYnV0IG1heWJlICJTb21lIGNvbXBp
bGVycyBtYXkgcmVwb3J0IGEgd2FybmluZyI/Cj4+Cj4+IEFueXdheSwgYWNrIGZvciB0aGUgY2hh
bmdlLgo+Pgo+IFRoYW5rcy4KPgo+IEp1c3QgdGhpcyBwYXRjaCBvciBhbHNvIHRoZSBvdGhlciBv
bmU/CgoKWWVzLCBpZiBub3QgcHVzaGVkIHlldCwgSSdkIGFsc28gc3F1YXNoLCBidXQgbm90IG5l
Y2Vzc2FyeQphbnl3YXkgYWNrIGZvciBib3RoIChzcXVzaGVkIG9yIG5vdCkKClNuaXIuCgoKPgo+
Pj4+PiBBcyB0aGlzIHN0cnVjdHVyZSBoYXMgbm8gaG9sZXMgdGhpcyBjaGFuZ2UgZG9lcyBub3Qg
bWFrZSBhbnkgc2l6ZQo+Pj4+PiBjaGFuZ2UgdXNpbmcgYW55IGNvbXBpbGVyLgo+Pj4+PiBUaGUg
Y2hhbmdlIHdpbGwgb25seSBjaGFuZ2UgdGhlIGFsaWdubWVudCBmcm9tIDQvOCB0byAxLgo+Pj4+
PiBUaGlzIGNvdWxkIGFmZmVjdCBzdHJ1Y3R1cmVzIGNvbnRhaW5pbmcgdGhpcyB1bmlvbiBob3dl
dmVyIGJlc2lkZQo+Pj4+PiBwYWNrZWQgc3RydWN0dXJlIGluIHF4bF9kZXYuaCAod2hpY2ggYXJl
IG5vdCBhZmZlY3RlZCkgdGhlcmUgYXJlIG5vCj4+Pj4+IG90aGVyIHVzYWdlcyBhZmZlY3Rpbmcg
QUJJIGJ5IHNwaWNlLWd0aywgUWVtdSBvciBzcGljZS1zZXJ2ZXIuCj4+Pj4+Cj4+Pj4+IFNpZ25l
ZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgo+Pj4+PiAtLS0K
Pj4+Pj4gQ2hhbmdlcyBzaW5jZSB2MToKPj4+Pj4gLSB1cGRhdGUgY29tbWl0IG1lc3NhZ2UKPj4+
Pj4gLS0tCj4+Pj4+ICAgICBzcGljZS9xeGxfZGV2LmggfCAyICstCj4+Pj4+ICAgICAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPj4+Pj4KPj4+Pj4gZGlmZiAt
LWdpdCBhL3NwaWNlL3F4bF9kZXYuaCBiL3NwaWNlL3F4bF9kZXYuaAo+Pj4+PiBpbmRleCBhOWNj
NGY0Li42NTlmOTMwIDEwMDY0NAo+Pj4+PiAtLS0gYS9zcGljZS9xeGxfZGV2LmgKPj4+Pj4gKysr
IGIvc3BpY2UvcXhsX2Rldi5oCj4+Pj4+IEBAIC0yNzUsNyArMjc1LDcgQEAgdHlwZWRlZiBzdHJ1
Y3QgU1BJQ0VfQVRUUl9BTElHTkVEKDQpCj4+Pj4+IFNQSUNFX0FUVFJfUEFDS0VECj4+Pj4+IFFY
TFJhbSB7Cj4+Pj4+ICAgICAKPj4+Pj4gICAgIH0gUVhMUmFtOwo+Pj4+PiAgICAgCj4+Pj4+IC10
eXBlZGVmIHVuaW9uIFFYTFJlbGVhc2VJbmZvIHsKPj4+Pj4gK3R5cGVkZWYgdW5pb24gU1BJQ0Vf
QVRUUl9QQUNLRUQgUVhMUmVsZWFzZUluZm8gewo+Pj4+PiAgICAgICAgIHVpbnQ2NF90IGlkOyAg
ICAgIC8vIGluCj4+Pj4+ICAgICAgICAgdWludDY0X3QgbmV4dDsgICAgLy8gb3V0Cj4+Pj4+ICAg
ICB9IFFYTFJlbGVhc2VJbmZvOwo+Pj4gRnJlZGlhbm8KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRl
dmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
