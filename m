Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B94A7C854
	for <lists+spice-devel@lfdr.de>; Wed, 31 Jul 2019 18:15:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77B4189D8E;
	Wed, 31 Jul 2019 16:15:36 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7C2089D8E
 for <spice-devel@lists.freedesktop.org>; Wed, 31 Jul 2019 16:15:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 79DA33091785;
 Wed, 31 Jul 2019 16:15:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 6E8F660BEC;
 Wed, 31 Jul 2019 16:15:34 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6488D180B536;
 Wed, 31 Jul 2019 16:15:34 +0000 (UTC)
Date: Wed, 31 Jul 2019 12:15:34 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Jeremy White <jwhite@codeweavers.com>
Message-ID: <718369149.4034857.1564589734041.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190731153507.26085-1-jwhite@codeweavers.com>
References: <20190731153507.26085-1-jwhite@codeweavers.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.8, 10.4.195.19]
Thread-Topic: Provide compatibility for Glamor in Xorg 1.17.
Thread-Index: hgOq13+Q6iXcOrE4bmDsbT6Og5C5gw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Wed, 31 Jul 2019 16:15:34 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH x11spice 1/2] Provide compatibility for
 Glamor in Xorg 1.17.
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

PiAKPiBTaWduZWQtb2ZmLWJ5OiBKZXJlbXkgV2hpdGUgPGp3aGl0ZUBjb2Rld2VhdmVycy5jb20+
Cj4gLS0tCj4gIHNwaWNlLXZpZGVvLWR1bW15L3NyYy9kdW1teS5oICAgICAgICAgICAgIHwgIDQg
KystLQo+ICBzcGljZS12aWRlby1kdW1teS9zcmMvc3BpY2VkdW1teV9kcml2ZXIuYyB8IDExICsr
KysrKysrKystCj4gIDIgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlv
bnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvc3BpY2UtdmlkZW8tZHVtbXkvc3JjL2R1bW15LmggYi9z
cGljZS12aWRlby1kdW1teS9zcmMvZHVtbXkuaAo+IGluZGV4IGEyNTAyOTAyLi5hZjc3YzE3NyAx
MDA2NDQKPiAtLS0gYS9zcGljZS12aWRlby1kdW1teS9zcmMvZHVtbXkuaAo+ICsrKyBiL3NwaWNl
LXZpZGVvLWR1bW15L3NyYy9kdW1teS5oCj4gQEAgLTExLDExICsxMSwxMSBAQAo+ICAjZW5kaWYK
PiAgI2luY2x1ZGUgPHN0cmluZy5oPgo+ICAKPiAtI2luY2x1ZGUgImNvbXBhdC1hcGkuaCIKPiAt
Cj4gICNkZWZpbmUgR0xBTU9SX0ZPUl9YT1JHIDEKPiAgI2luY2x1ZGUgImdsYW1vci5oIgo+ICAK
PiArI2luY2x1ZGUgImNvbXBhdC1hcGkuaCIKPiArCj4gIC8qIFN1cHBvcnRlZCBjaGlwc2V0cyAq
Lwo+ICB0eXBlZGVmIGVudW0gewo+ICAgICAgRFVNTVlfQ0hJUAoKSSBkb24ndCB1bmRlcnN0YW5k
IHRoaXMgaHVuayBhbmQgdGhlIHJlbGF0aW9uc2hpcCB3aXRoIHRoZQpzdWJqZWN0cy4KCj4gZGlm
ZiAtLWdpdCBhL3NwaWNlLXZpZGVvLWR1bW15L3NyYy9zcGljZWR1bW15X2RyaXZlci5jCj4gYi9z
cGljZS12aWRlby1kdW1teS9zcmMvc3BpY2VkdW1teV9kcml2ZXIuYwo+IGluZGV4IGZjMzU1Zjg1
Li40MTVmMDdkYyAxMDA2NDQKPiAtLS0gYS9zcGljZS12aWRlby1kdW1teS9zcmMvc3BpY2VkdW1t
eV9kcml2ZXIuYwo+ICsrKyBiL3NwaWNlLXZpZGVvLWR1bW15L3NyYy9zcGljZWR1bW15X2RyaXZl
ci5jCj4gQEAgLTU1OCw2ICs1NTgsMTUgQEAgRFVNTVlTY3JlZW5Jbml0KFNDUkVFTl9JTklUX0FS
R1NfREVDTCkKPiAgICAgIGludCByZXQ7Cj4gICAgICBWaXN1YWxQdHIgdmlzdWFsOwo+ICAgICAg
dm9pZCAqcGl4ZWxzOwo+ICsgICAgaW50IGdsYW1vcl9mbGFncyA9IEdMQU1PUl9VU0VfRUdMX1ND
UkVFTjsKPiArCj4gKyAgICAvKiBXaXRoIFhvcmcgcHJpb3IgdG8gMS4xOCwgd2Ugd2FudCBtb3Jl
IG1vcmUgZmxhZ3MgaW4gZ2xhbW9yX2luaXQgKi8KPiArI2lmIGRlZmluZWQoR0xBTU9SX1VTRV9T
Q1JFRU4pCj4gKyAgICBnbGFtb3JfZmxhZ3MgfD0gR0xBTU9SX1VTRV9TQ1JFRU47Cj4gKyNlbmRp
Zgo+ICsjaWYgZGVmaW5lZChHTEFNT1JfVVNFX1BJQ1RVUkVfU0NSRUVOKQo+ICsgICAgZ2xhbW9y
X2ZsYWdzIHw9IEdMQU1PUl9VU0VfUElDVFVSRV9TQ1JFRU47Cj4gKyNlbmRpZgo+ICAKPiAgICAg
IC8qCj4gICAgICAgKiB3ZSBuZWVkIHRvIGdldCB0aGUgU2NybkluZm9SZWMgZm9yIHRoaXMgc2Ny
ZWVuLCBzbyBsZXQncyBhbGxvY2F0ZQo+IEBAIC02MTgsNyArNjI3LDcgQEAgRFVNTVlTY3JlZW5J
bml0KFNDUkVFTl9JTklUX0FSR1NfREVDTCkKPiAgICAgIC8qIG11c3QgYmUgYWZ0ZXIgUkdCIG9y
ZGVyaW5nIGZpeGVkICovCj4gICAgICBmYlBpY3R1cmVJbml0KHBTY3JlZW4sIDAsIDApOwo+ICAK
PiAtICAgIGlmIChkUHRyLT5nbGFtb3IgJiYgIWdsYW1vcl9pbml0KHBTY3JlZW4sIEdMQU1PUl9V
U0VfRUdMX1NDUkVFTikpIHsKPiArICAgIGlmIChkUHRyLT5nbGFtb3IgJiYgIWdsYW1vcl9pbml0
KHBTY3JlZW4sIGdsYW1vcl9mbGFncykpIHsKPiAgICAgICAgICB4Zjg2RHJ2TXNnKHBTY3JuLT5z
Y3JuSW5kZXgsIFhfRVJST1IsCj4gICAgICAgICAgICAgICAgICAgICAiRmFpbGVkIHRvIGluaXRp
YWxpc2UgZ2xhbW9yIGF0IFNjcmVlbkluaXQoKSB0aW1lLlxuIik7Cj4gICAgICAgICAgcmV0dXJu
IEZBTFNFOwoKVGhhdCBwYXJ0IGlzIGNsZWFyLiBCdXQgSSB3b3VsZCBhZGQgYWxzbyB3aHkgeW91
IHdhbnQgdGhlc2UgYWRkaXRpb25hbApmbGFncy4gTm90ZSB0aGF0IGR1ZSB0byBBQkkgY2hhbmdl
cyBjb3VsZCBiZSB0aGF0IHlvdSB3aWxsIHVzZSBuZXcgR2xhbW9yCndpdGggb2xkIGZsYWdzLiBT
byBJIHN1cHBvc2UgdGhhdCB0aGUgYWRkaXRpb25hbCBmbGFncyB0dXJucyBvbiBzb21lCmZlYXR1
cmUgbm90IHJlcXVpcmVkLiBJdCdzIHdlaXJkIHRoYXQgdGhlIGNvbW1lbnQgaXMgc3RhdGluZyB0
aGF0IHRoZXNlCmZsYWdzIGFyZSBmb3IgZWFybGllciB2ZXJzaW9uLCBsaWtlIHRoZXkgcmVtb3Zl
ZCBmcm9tIEdsYW1vci4KU28gdGhhdCBtZWFucyB0aGF0IHRoZXkgKFhvcmcpIHJlbW92ZWQgQVBJ
IGNvbXBhdGliaWxpdHkgcmVtb3ZpbmcgdGhlc2UKbWFjcm9zPwpXZXJlIHRoZXNlIGZsYWdzIGVu
YWJsaW5nIHNvbWUgb2xkIHNjcmVlbiByZW5kZXJpbmcgbm93IGFsbCByZXBsYWNlZApieSBFR0wg
PwoKRnJlZGlhbm8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNl
LWRldmVs
