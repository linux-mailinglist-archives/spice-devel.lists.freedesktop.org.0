Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B5B82162
	for <lists+spice-devel@lfdr.de>; Mon,  5 Aug 2019 18:11:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CC7989C21;
	Mon,  5 Aug 2019 16:11:36 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D08989C21
 for <spice-devel@lists.freedesktop.org>; Mon,  5 Aug 2019 16:11:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 962F35AFD9
 for <spice-devel@lists.freedesktop.org>; Mon,  5 Aug 2019 16:11:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8B5235D704
 for <spice-devel@lists.freedesktop.org>; Mon,  5 Aug 2019 16:11:34 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8447B18089C8;
 Mon,  5 Aug 2019 16:11:34 +0000 (UTC)
Date: Mon, 5 Aug 2019 12:11:34 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <1769132116.4756860.1565021494348.JavaMail.zimbra@redhat.com>
In-Reply-To: <9f341c18-6997-ef81-a493-5f16178d0f92@redhat.com>
References: <20190225145647.31675-1-ssheribe@redhat.com>
 <20190225145647.31675-2-ssheribe@redhat.com>
 <9f341c18-6997-ef81-a493-5f16178d0f92@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.18, 10.4.195.18]
Thread-Topic: Add copr Makefile
Thread-Index: F3vvcmOQ+Qjp7QUF6pj3jyRfzPdbhg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Mon, 05 Aug 2019 16:11:34 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH 1/3] Add copr Makefile
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

SGkgU25pciwKICB0aGVyZSB3ZXJlIHNvbWUgbm90ZXMgYXQgCmh0dHBzOi8vcGF0Y2h3b3JrLmZy
ZWVkZXNrdG9wLm9yZy9wYXRjaC8yODg1NjgvP3Nlcmllcz01NzE5OSZyZXY9MQphbmQKaHR0cHM6
Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoLzI4ODU2OS8/c2VyaWVzPTU3MTk5JnJl
dj0xCnNvbWUgbm90IGFkZHJlc3NlZC4KQWxzbyBwYXRjaCAjMyB3YXMgbWVyZ2VkLCBtYXliZSB3
b3VsZCBiZSB3b3J0aCB0byBzZW5kIGFuIHVwZGF0ZWQKdmVyc2lvbi4KKHNlcmllcyBhdCBodHRw
czovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzU3MTk5LykKCldlIGFscmVhZHkg
aGF2ZSBDb3ByIHNldCB1cCBmb3IgU1BJQ0Ugc2VydmVyLiBIb3cgd291bGQgeW91IGxpa2UgdG8K
cHJvY2VlZD8gTW92ZSBhbGwgdG8gR2l0bGFiPyBIb3cgaXMgdGhlIGludGVncmF0aW9uIHdpdGgg
U1BJQ0Ugc2VydmVyPwpZb3UgcmVmZXJyZWQgdG8gYSBob29rIHRvIHNldHVwIG9uIEdpdGxhYiwg
d2hpY2ggc3lzdGVtcyBhcmUgeW91CmdvaW5nIHRvIHVzZT8gRmVkb3JhIENvcHIgSSBpbWFnaW5l
LgoKRnJlZGlhbm8KCj4gCj4gcGluZwo+IAo+IAo+IE9uIDIvMjUvMTkgNDo1NiBQTSwgU25pciBT
aGVyaWJlciB3cm90ZToKPiA+IC0tLQo+ID4gICAuY29wci9NYWtlZmlsZSB8IDIxICsrKysrKysr
KysrKysrKysrKysrKwo+ID4gICAxIGZpbGUgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKQo+ID4g
ICBjcmVhdGUgbW9kZSAxMDA2NDQgLmNvcHIvTWFrZWZpbGUKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEv
LmNvcHIvTWFrZWZpbGUgYi8uY29wci9NYWtlZmlsZQo+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQK
PiA+IGluZGV4IDAwMDAwMDAuLjUzYjFiMWIKPiA+IC0tLSAvZGV2L251bGwKPiA+ICsrKyBiLy5j
b3ByL01ha2VmaWxlCj4gPiBAQCAtMCwwICsxLDIxIEBACj4gPiArUFJPVE9DT0xfR0lUX1JFUE8g
PSBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvc3BpY2Uvc3BpY2UtcHJvdG9jb2wKPiA+
ICtCVUlMRCA9IG1ha2UgYXV0b21ha2UgYXV0b2NvbmYgYXV0b2NvbmYtYXJjaGl2ZSBsaWJ0b29s
IHh6IGdjYy1jKysgZmVkcGtnCj4gPiArCj4gPiArc3JwbToKPiA+ICsJZG5mIGluc3RhbGwgLXkg
JChCVUlMRCkKPiA+ICsKPiA+ICsJIyBnZXQgdXBzdHJlYW0gc3BpY2UgcHJvdG9jb2wKPiA+ICsJ
Z2l0IGNsb25lICQoUFJPVE9DT0xfR0lUX1JFUE8pCj4gPiArCWNkIHNwaWNlLXByb3RvY29sIDsg
Li9hdXRvZ2VuLnNoIDsgbWFrZSBpbnN0YWxsCj4gPiArCj4gPiArCSMgZ2V0IGRlcGVuZGVuY2ll
cwo+ID4gKwlkbmYgaW5zdGFsbCAteSBgZ3JlcCBCdWlsZFJlcXVpcmVzXDogc3BpY2Utc3RyZWFt
aW5nLWFnZW50LnNwZWMuaW4gfCBhd2sKPiA+ICd7JCQxPSIiOyBwcmludCAkJDB9JyB8IHNlZCAi
cy9cYnNwaWNlLXByb3RvY29sXGIvLyA7IHMvPi4qLy8iIHwgdHIgLXMKPiA+ICJcbiIgIiAiYAo+
ID4gKwkjIGJ1aWxkIHRoaXMgcHJvamVjdAo+ID4gKwlQS0dfQ09ORklHX1BBVEg9L3Vzci9sb2Nh
bC9zaGFyZS9wa2djb25maWcgLi9hdXRvZ2VuLnNoCj4gPiArCj4gPiArCSMgY3JlYXRlIHNvdXJj
ZSBycG0KPiA+ICsJc2VkIC1pIC1FICJzLyheUmVsZWFzZTpbWzpzcGFjZTpdXSopKFteJV0qKS9c
MWBkYXRlCj4gPiArJyVZJW0lZCVIJU0uc3BpY2UubmlndGhseSdgLyIgc3BpY2Utc3RyZWFtaW5n
LWFnZW50LnNwZWMKPiA+ICsJbWFrZSBkaXN0Cj4gPiArCW1kNXN1bSAqdGFyKiB8IGhlYWQgLW4x
ID4gInNvdXJjZXMiCj4gPiArCWZlZHBrZyAtLXJlbGVhc2UgImVwZWw3IiAtLXBhdGggLiBzcnBt
Cj4gPiArCWNwICpzcmMucnBtICQob3V0ZGlyKQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0Cj4gU3BpY2Ut
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbApfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
