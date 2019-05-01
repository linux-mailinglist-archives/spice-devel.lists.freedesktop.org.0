Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4535C10B35
	for <lists+spice-devel@lfdr.de>; Wed,  1 May 2019 18:18:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFCD4892BB;
	Wed,  1 May 2019 16:18:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDA69892BB
 for <spice-devel@lists.freedesktop.org>; Wed,  1 May 2019 16:18:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 512E18665F
 for <spice-devel@lists.freedesktop.org>; Wed,  1 May 2019 16:18:36 +0000 (UTC)
Received: from lub.tlv (unknown [10.35.206.36])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A51A44B6;
 Wed,  1 May 2019 16:18:35 +0000 (UTC)
From: Uri Lublin <uril@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
References: <20190501112054.26512-1-uril@redhat.com>
 <1744324258.15802457.1556710203093.JavaMail.zimbra@redhat.com>
Organization: Red Hat
Message-ID: <868ebd33-d5b9-2480-daa7-04081bff39c9@redhat.com>
Date: Wed, 1 May 2019 19:18:32 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1744324258.15802457.1556710203093.JavaMail.zimbra@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Wed, 01 May 2019 16:18:36 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server V2] gitlab-ci: build
 out-of-tree too
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
Cc: spice-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gNS8xLzE5IDI6MzAgUE0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPj4KPj4gT25lIHRlc3Qg
aXMgZW5vdWdoIC0tIGRvIGl0IGluIG1ha2VjaGVjay4KPj4KPj4gTXVzdCBnaXQgY2xlYW4gZmly
c3QgYW55IHByZXZpb3VzIGJ1aWxkcy4KPiAKPiBObywgbm90IGF0IHRoZSBiZWdpbm5pbmcuCj4g
c3BpY2UtZ3RrIENJIHNjcmlwdCBleGVjdXRlIG11bHRpcGxlIHRlc3QgaW4gYSBzaW5nbGUgam9i
Cj4gc28gYmV0d2VlbiBqb2JzIGNsZWFuIGV2ZXJ5dGhpbmcuCgpXZWxsLCBpdCBmYWlscyB3aXRo
b3V0IGl0LCB3aXRoIHRoZSBmb2xsb3dpbmcgZXJyb3IgbWVzc2FnZXM6CiAgIGNvbmZpZ3VyZTog
ZXJyb3I6IHNvdXJjZSBkaXJlY3RvcnkgYWxyZWFkeSBjb25maWd1cmVkOyBydW4gIm1ha2UKICAg
ICAgICAgICAgICBkaXN0Y2xlYW4iIHRoZXJlIGZpcnN0CiAgIGNvbmZpZ3VyZTogZXJyb3I6IC4u
Ly4uLy4uL3N1YnByb2plY3RzL3NwaWNlLWNvbW1vbi9jb25maWd1cmUgZmFpbGVkCiAgICAgICAg
ICAgICAgZm9yIHN1YnByb2plY3RzL3NwaWNlLWNvbW1vbgoKaHR0cHM6Ly9naXRsYWIuZnJlZWRl
c2t0b3Aub3JnL3VyaWwvc3BpY2UvLS9qb2JzLzI3MTAyOQoKPiAKPj4KPj4gU2lnbmVkLW9mZi1i
eTogVXJpIEx1YmxpbiA8dXJpbEByZWRoYXQuY29tPgo+PiAtLS0KPj4KPj4gU2luY2UgVjE6Cj4+
ICAgICAtIEFkZCBhIGNvbW1lbnQgYWJvdXQgb3V0LW9mLXRyZWUKPj4gICAgIC0gY2xlYW51cCBw
cmV2aW91cyBidWlsZHMgdXNpbmcgZ2l0IGNsZWFuCj4+Cj4+IHBpcGVsaW5lIHRhc2s6Cj4+IGh0
dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy91cmlsL3NwaWNlLy0vam9icy8yNzI2NTkKPj4K
Pj4gQlRXLCBzaG91bGQgd2UgY2xlYW51cCBiZWZvcmUvYWZ0ZXIgZXZlcnkgdGFzayA/Cj4+ICAg
ICAgIHNob3VsZCB3ZSBybSAtcmYgYnVpbGRkaXIgPyBzcGljZS1wcm90b2NvbCA/Cj4gCj4gV2Vs
bCwgd2Ugc2hvdWxkIGNsZWFuIGJldHdlZW4sIG5vdCBhdCB0aGUgYmVnaW5uaW5nLCBhdAo+IHRo
ZSBiZWdpbm5pbmcgcmVwb3NpdG9yeSBpcyBzdXBwb3NlZCB0byBjYW1lIGZyb20gYSBnaXQgY2xv
bmUuCgpJIHNlZSAiRmV0Y2hpbmcgY2hhbmdlcy4uLiIsIHdoaWNoIHNlZW1zIHRvIG1lIGxpa2Ug
dGhlcmUgaXMgbm8KbmV3IGNsb25lLCBidXQgYSBnaXQgZmV0Y2guCgpJJ20gbm90IHN1cmUgeWV0
IHdoeSBpdCB3b3JrcyBpbiBzcGljZS1ndGsuCgpUaGFua3MsCiAgICAgVXJpLgoKPiAKPj4KPj4g
LS0tCj4+ICAgLmdpdGxhYi1jaS55bWwgfCA4ICsrKysrKystCj4+ICAgMSBmaWxlIGNoYW5nZWQs
IDcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvLmdpdGxh
Yi1jaS55bWwgYi8uZ2l0bGFiLWNpLnltbAo+PiBpbmRleCA5Y2U5NWMwMGUuLjJjMWY0NmFkZiAx
MDA2NDQKPj4gLS0tIGEvLmdpdGxhYi1jaS55bWwKPj4gKysrIGIvLmdpdGxhYi1jaS55bWwKPj4g
QEAgLTE0LDEyICsxNCwxOCBAQCBiZWZvcmVfc2NyaXB0Ogo+PiAgIAo+PiAgIG1ha2VjaGVjazoK
Pj4gICAgIHNjcmlwdDoKPj4gKyAgIyBBbHNvIGNoZWNrIG91dC1vZi10cmVlIGJ1aWxkCj4+ICsg
IC0gZ2l0IGNsZWFuIC1mZHggIyBjbGVhbnVwIGFmdGVyIHByZXZpb3VzIGJ1aWxkcwo+PiArICAt
IGdpdCBzdWJtb2R1bGUgZm9yZWFjaCAtLXJlY3Vyc2l2ZSBnaXQgY2xlYW4gLWZkeAo+IAo+IFRo
ZXJlIDIgbGluZXMgaGVyZSBhcmUgdXNlbGVzcy4KPiAKPj4gKyAgLSBta2RpciBidWlsZGRpcgo+
PiArICAtIGNkIGJ1aWxkZGlyCj4+ICAgICAtID4KPj4gICAgICAgQ0ZMQUdTPSctTzIgLXBpcGUg
LWcgLWZzYW5pdGl6ZT1hZGRyZXNzIC1mbm8tb21pdC1mcmFtZS1wb2ludGVyCj4+ICAgICAgIC1X
ZnJhbWUtbGFyZ2VyLXRoYW49NDA5MjAnCj4+ICAgICAgIExERkxBR1M9Jy1mc2FuaXRpemU9YWRk
cmVzcyAtbGFzYW4nCj4+IC0gICAgLi9hdXRvZ2VuLnNoIC0tZW5hYmxlLWNlbHQwNTEKPj4gKyAg
ICAuLi9hdXRvZ2VuLnNoIC0tZW5hYmxlLWNlbHQwNTEKPj4gICAgIC0gbWFrZQo+PiAgICAgLSBt
YWtlIC1DIHNlcnZlciBjaGVjayB8fCAoY2F0IHNlcnZlci90ZXN0cy90ZXN0LXN1aXRlLmxvZyAm
JiBleGl0IDEpCj4+ICsgIC0gY2QgLi4KPj4gICAKPj4gICBtZXNvbi1tYWtlY2hlY2s6Cj4+ICAg
ICBzY3JpcHQ6Cj4gCj4gT3RoZXJ3aXNlLAo+IAo+IEFja2VkLWJ5OiBGcmVkaWFubyBaaWdsaW8g
PGZ6aWdsaW9AcmVkaGF0LmNvbT4KPiAKPiBGcmVkaWFubwo+IAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNw
aWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
