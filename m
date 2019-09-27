Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98ED9C0043
	for <lists+spice-devel@lfdr.de>; Fri, 27 Sep 2019 09:47:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 106966EE93;
	Fri, 27 Sep 2019 07:47:21 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B27696EE93
 for <spice-devel@lists.freedesktop.org>; Fri, 27 Sep 2019 07:47:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5703D3082E44
 for <spice-devel@lists.freedesktop.org>; Fri, 27 Sep 2019 07:47:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4DE6660BF4
 for <spice-devel@lists.freedesktop.org>; Fri, 27 Sep 2019 07:47:19 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 463594E589;
 Fri, 27 Sep 2019 07:47:19 +0000 (UTC)
Date: Fri, 27 Sep 2019 03:47:19 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Uri Lublin <uril@redhat.com>
Message-ID: <1794021205.3459013.1569570439243.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190926151320.18868-5-uril@redhat.com>
References: <20190926151320.18868-1-uril@redhat.com>
 <20190926151320.18868-5-uril@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.20, 10.4.195.17]
Thread-Topic: Prepare for v0.3 release
Thread-Index: u+ajr9sNXQwANIxqWU07cnC1VYgIUA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Fri, 27 Sep 2019 07:47:19 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-streaming-agent PATCH 4/4] Prepare for
 v0.3 release
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

PiAKPiAxLiB1cGRhdGUgTkVXUwo+IDIuIHVwZGF0ZSBjb25maWd1cmUuYWMKPiAzLiB1cGRhdGUg
c3BlYyBmaWxlCj4gCj4gU2lnbmVkLW9mZi1ieTogVXJpIEx1YmxpbiA8dXJpbEByZWRoYXQuY29t
Pgo+IC0tLQo+ICBORVdTICAgICAgICAgICAgICAgICAgICAgICAgICB8IDE3ICsrKysrKysrKysr
KysrKysrCj4gIGNvbmZpZ3VyZS5hYyAgICAgICAgICAgICAgICAgIHwgIDIgKy0KPiAgc3BpY2Ut
c3RyZWFtaW5nLWFnZW50LnNwZWMuaW4gfCAgMyArKysKPiAgMyBmaWxlcyBjaGFuZ2VkLCAyMSBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL05FV1MgYi9ORVdT
Cj4gaW5kZXggYWVkZjA3YS4uMmJkNmIxOCAxMDA2NDQKPiAtLS0gYS9ORVdTCj4gKysrIGIvTkVX
Uwo+IEBAIC0xLDMgKzEsMjAgQEAKPiArTWFqb3IgY2hhbmdlcyBpbiAwLjM6Cj4gKz09PT09PT09
PT09PT09PT09PT09PQo+ICstIEltcHJvdmUgdGhlIGludmFsaWQgb3B0aW9uIGFyZ3VtZW50ICgt
YykgZXJyb3IgbWVzc2FnZQo+ICstIEltcHJvdmUgdGhlIGZyYW1lIGxvZyBtZXNzYWdlcwo+ICst
IE1ha2UgdGhlIHRyeS1jYXRjaCBibG9jayBpbiBtYWluKCkgYSBjYXRjaC1hbGwKPiArLSBTZXQg
ZGVmYXVsdCBzeXNsb2cgbWFzayB0byBhIGxvd2VyIGxldmVsCj4gKy0gRml4IHNvbWUgY2xhbmcg
YnVpbGQgZXJyb3JzCj4gKy0gQWRkaW5nIGdzdHJlYW1lciBiYXNlZCBwbHVnaW4KPiArLSBNYWtl
IGVycm9yLmhwcCBhbmQgdGhlIEVycm9yIGNsYXNzIGEgcHVibGljIEFQSQo+ICstIEV4cG9ydCBz
eW1ib2xzIGluIHRoZSBiaW5hcnkgdG8gYmUgdXNlZCBieSBwbHVnaW5zCj4gKy0gSW50ZXJmYWNl
ICsgaW1wbGVtZW50YXRpb24gb2YgZ2V0dGluZyBkZXZpY2UgZGlzcGxheSBpbmZvCj4gKy0gU2Vu
ZCB0aGUgR3JhcGhpY3NEZXZpY2VJbmZvIHRvIHRoZSBzZXJ2ZXIKPiArLSBBZGQgc3VwcG9ydCBm
b3IgbG9nZ2luZyBzdGF0aXN0aWNzIGZyb20gcGx1Z2lucwo+ICstIEVuYWJsZSBidWlsZGluZyB3
aXRoIEdDQyA5Cj4gKy0gQWRkIGEgbWFuIHBhZ2UKPiArCj4gKwo+ICBNYWpvciBjaGFuZ2VzIGlu
IDAuMjoKPiAgPT09PT09PT09PT09PT09PT09PT09Cj4gIC0gRmlyc3QgcmVsZWFzZQo+IGRpZmYg
LS1naXQgYS9jb25maWd1cmUuYWMgYi9jb25maWd1cmUuYWMKPiBpbmRleCAxYzc3ODhiLi5iYWIx
Y2M3IDEwMDY0NAo+IC0tLSBhL2NvbmZpZ3VyZS5hYwo+ICsrKyBiL2NvbmZpZ3VyZS5hYwo+IEBA
IC0xLDYgKzEsNiBAQAo+ICBBQ19QUkVSRVEoWzIuNTddKQo+ICAKPiAtQUNfSU5JVChzcGljZS1z
dHJlYW1pbmctYWdlbnQsIDAuMiwKPiArQUNfSU5JVChzcGljZS1zdHJlYW1pbmctYWdlbnQsIDAu
MywKPiAgICAgICAgICBbc3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnXSkKPiAgCj4g
IEFNX0NPTkZJR19IRUFERVIoW2NvbmZpZy5oXSkKPiBkaWZmIC0tZ2l0IGEvc3BpY2Utc3RyZWFt
aW5nLWFnZW50LnNwZWMuaW4gYi9zcGljZS1zdHJlYW1pbmctYWdlbnQuc3BlYy5pbgo+IGluZGV4
IGZjYjgyMzEuLjhmYWVlY2YgMTAwNjQ0Cj4gLS0tIGEvc3BpY2Utc3RyZWFtaW5nLWFnZW50LnNw
ZWMuaW4KPiArKysgYi9zcGljZS1zdHJlYW1pbmctYWdlbnQuc3BlYy5pbgo+IEBAIC03Nyw2ICs3
Nyw5IEBAIGZpCj4gICV7X2xpYmRpcn0vcGtnY29uZmlnCj4gIAo+ICAlY2hhbmdlbG9nCj4gKyog
VGh1IFNlcCAxOSAyMDE5IFVyaSBMdWJsaW4gPHVyaWxAcmVkaGF0LmNvbT4gLSAwLjMtMQo+ICst
IFVwZGF0ZSB0byAwLjMgcmVsZWFzZQo+ICsKPiAgKiBUaHUgTWF5IDMxIDIwMTggVXJpIEx1Ymxp
biA8dXJpbEByZWRoYXQuY29tPiAtIDAuMi0xCj4gIC0gRmlyc3QgcmVsZWFzZQo+ICAKClN1cmUg
dGhlIHVwZGF0ZSB0byBzcGVjIGlzIG5lY2Vzc2FyeT8KCk90aGVyd2lzZSwKICAgQWNrZWQtYnk6
IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgoKRnJlZGlhbm8KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGlu
ZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
