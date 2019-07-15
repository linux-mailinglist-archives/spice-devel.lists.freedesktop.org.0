Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E9F6860E
	for <lists+spice-devel@lfdr.de>; Mon, 15 Jul 2019 11:11:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C61289709;
	Mon, 15 Jul 2019 09:11:23 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 974B889709
 for <spice-devel@lists.freedesktop.org>; Mon, 15 Jul 2019 09:11:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1A4184E919
 for <spice-devel@lists.freedesktop.org>; Mon, 15 Jul 2019 09:11:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 10696611A0
 for <spice-devel@lists.freedesktop.org>; Mon, 15 Jul 2019 09:11:21 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 01F1D184365F;
 Mon, 15 Jul 2019 09:11:21 +0000 (UTC)
Date: Mon, 15 Jul 2019 05:11:20 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <1349161022.67081.1563181880754.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190712091242.13214-3-victortoso@redhat.com>
References: <20190712091242.13214-1-victortoso@redhat.com>
 <20190712091242.13214-3-victortoso@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.11, 10.4.195.3]
Thread-Topic: vdagent: fix memory leak of g_memdup()
Thread-Index: xSoowwfiTvKkHWFXP9ZRrmbN5Aexmg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Mon, 15 Jul 2019 09:11:21 +0000 (UTC)
Subject: Re: [Spice-devel] [linux/vd-agent v1 2/7] vdagent: fix memory leak
 of g_memdup()
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

PiAKPiBGcm9tOiBWaWN0b3IgVG9zbyA8bWVAdmljdG9ydG9zby5jb20+Cj4gCj4gRm91bmQgYnkg
Y292c2NhbjoKPiAKPiAgfCBzcGljZS12ZGFnZW50LTAuMTkuMC9zcmMvdmRhZ2VudC92ZGFnZW50
LmM6NDMyOjk6IHdhcm5pbmc6IFBvdGVudGlhbCBsZWFrCj4gIHwgb2YgbWVtb3J5IHBvaW50ZWQg
dG8gYnkgJ29yaWdfYXJndicKPiAgfCAjICAgICAgICBnX3ByaW50ZXJyKCJJbnZhbGlkIGFyZ3Vt
ZW50cywgJXNcbiIsIGVycm9yLT5tZXNzYWdlKTsKPiAgfCAjICAgICAgICBeCj4gIHwgc3BpY2Ut
dmRhZ2VudC0wLjE5LjAvc3JjL3ZkYWdlbnQvdmRhZ2VudC5jOjQxODoyNDogbm90ZTogTWVtb3J5
IGlzCj4gIHwgYWxsb2NhdGVkCj4gIHwgIyAgICBjaGFyICoqb3JpZ19hcmd2ID0gZ19tZW1kdXAo
YXJndiwgc2l6ZW9mKGNoYXIqKSAqIChhcmdjKzEpKTsKPiAgfCAjICAgICAgICAgICAgICAgICAg
ICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+Cj4gIHwgc3BpY2Ut
dmRhZ2VudC0wLjE5LjAvc3JjL3ZkYWdlbnQvdmRhZ2VudC5jOjQzMTo5OiBub3RlOiBBc3N1bWlu
ZyAnZXJyb3InCj4gIHwgaXMgbm90IGVxdWFsIHRvIE5VTEwKPiAgfCAjICAgIGlmIChlcnJvciAh
PSBOVUxMKSB7Cj4gIHwgIyAgICAgICAgXn5+fn5+fn5+fn5+fgo+ICB8IHNwaWNlLXZkYWdlbnQt
MC4xOS4wL3NyYy92ZGFnZW50L3ZkYWdlbnQuYzo0MzE6NTogbm90ZTogVGFraW5nIHRydWUgYnJh
bmNoCj4gIHwgIyAgICBpZiAoZXJyb3IgIT0gTlVMTCkgewo+ICB8ICMgICAgXgo+ICB8IHNwaWNl
LXZkYWdlbnQtMC4xOS4wL3NyYy92ZGFnZW50L3ZkYWdlbnQuYzo0MzI6OTogbm90ZTogUG90ZW50
aWFsIGxlYWsgb2YKPiAgfCBtZW1vcnkgcG9pbnRlZCB0byBieSAnb3JpZ19hcmd2Jwo+ICB8ICMg
ICAgICAgIGdfcHJpbnRlcnIoIkludmFsaWQgYXJndW1lbnRzLCAlc1xuIiwgZXJyb3ItPm1lc3Nh
Z2UpOwo+ICB8ICMgICAgICAgIF4KPiAgfCAjICA0MzB8Cj4gIHwgIyAgNDMxfCAgICAgICBpZiAo
ZXJyb3IgIT0gTlVMTCkgewo+ICB8ICMgIDQzMnwtPiAgICAgICAgIGdfcHJpbnRlcnIoIkludmFs
aWQgYXJndW1lbnRzLCAlc1xuIiwgZXJyb3ItPm1lc3NhZ2UpOwo+ICB8ICMgIDQzM3wgICAgICAg
ICAgIGdfY2xlYXJfZXJyb3IoJmVycm9yKTsKPiAgfCAjICA0MzR8ICAgICAgICAgICByZXR1cm4g
LTE7Cj4gCj4gU2lnbmVkLW9mZi1ieTogVmljdG9yIFRvc28gPHZpY3RvcnRvc29AcmVkaGF0LmNv
bT4KPiAtLS0KPiAgc3JjL3ZkYWdlbnQvdmRhZ2VudC5jIHwgMiArKwo+ICAxIGZpbGUgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL3NyYy92ZGFnZW50L3ZkYWdlbnQu
YyBiL3NyYy92ZGFnZW50L3ZkYWdlbnQuYwo+IGluZGV4IDEzZWYyOWYuLmQ3OTlkMWYgMTAwNjQ0
Cj4gLS0tIGEvc3JjL3ZkYWdlbnQvdmRhZ2VudC5jCj4gKysrIGIvc3JjL3ZkYWdlbnQvdmRhZ2Vu
dC5jCj4gQEAgLTQzMSw2ICs0MzEsNyBAQCBpbnQgbWFpbihpbnQgYXJnYywgY2hhciAqYXJndltd
KQo+ICAgICAgaWYgKGVycm9yICE9IE5VTEwpIHsKPiAgICAgICAgICBnX3ByaW50ZXJyKCJJbnZh
bGlkIGFyZ3VtZW50cywgJXNcbiIsIGVycm9yLT5tZXNzYWdlKTsKPiAgICAgICAgICBnX2NsZWFy
X2Vycm9yKCZlcnJvcik7Cj4gKyAgICAgICAgZ19mcmVlKG9yaWdfYXJndik7Cj4gICAgICAgICAg
cmV0dXJuIC0xOwo+ICAgICAgfQo+ICAKPiBAQCAtNDQ2LDYgKzQ0Nyw3IEBAIGludCBtYWluKGlu
dCBhcmdjLCBjaGFyICphcmd2W10pCj4gIAo+ICAgICAgaWYgKCFnX2ZpbGVfdGVzdChwb3J0ZGV2
LCBHX0ZJTEVfVEVTVF9FWElTVFMpKSB7Cj4gICAgICAgICAgZ19kZWJ1ZygidmRhZ2VudCB2aXJ0
aW8gY2hhbm5lbCAlcyBkb2VzIG5vdCBleGlzdCwgZXhpdGluZyIsCj4gICAgICAgICAgcG9ydGRl
dik7Cj4gKyAgICAgICAgZ19mcmVlKG9yaWdfYXJndik7Cj4gICAgICAgICAgcmV0dXJuIDA7Cj4g
ICAgICB9Cj4gIAoKTm90IGEgYml0IGRlYWwgYXMgdGhlIHByb2dyYW0gaXMgZ29pbmcgdG8gZXhp
dCBhbmQgZnJlZSB0aGF0IGFueXdheSwKYnV0IGl0IHNlZW1zIGZpbmUuIE1heWJlIHdvdWxkIGJl
IGJldHRlciB0byBkbyB0aGUgY29weSBhbmQgdXNlIHRoYXQKZm9yIHRoZSBwYXJzaW5nIGJ1dCBu
b3QgYSBiaWcgZGVhbCBlaXRoZXIuCgpBY2tlZAoKRnJlZGlhbm8KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNw
aWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
