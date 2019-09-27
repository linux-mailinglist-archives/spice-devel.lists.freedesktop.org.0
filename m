Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96062C003D
	for <lists+spice-devel@lfdr.de>; Fri, 27 Sep 2019 09:46:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A71116EE92;
	Fri, 27 Sep 2019 07:46:17 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B45F6EE92
 for <spice-devel@lists.freedesktop.org>; Fri, 27 Sep 2019 07:46:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id EC92310C0931
 for <spice-devel@lists.freedesktop.org>; Fri, 27 Sep 2019 07:46:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E2A6160BE2
 for <spice-devel@lists.freedesktop.org>; Fri, 27 Sep 2019 07:46:15 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id D8CA14E589;
 Fri, 27 Sep 2019 07:46:15 +0000 (UTC)
Date: Fri, 27 Sep 2019 03:46:15 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Uri Lublin <uril@redhat.com>
Message-ID: <233293650.3458969.1569570375708.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190926151320.18868-4-uril@redhat.com>
References: <20190926151320.18868-1-uril@redhat.com>
 <20190926151320.18868-4-uril@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.20, 10.4.195.17]
Thread-Topic: Add a man page
Thread-Index: qJDTYFVeke2PqBDdbaOiTey7o4X/0Q==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.66]); Fri, 27 Sep 2019 07:46:15 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-streaming-agent PATCH 3/4] Add a man page
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

PiAKPiAtLS0KPiAgTWFrZWZpbGUuYW0gICAgICAgICAgICAgICAgICAgfCAgMiArCj4gIHNwaWNl
LXN0cmVhbWluZy1hZ2VudC4xICAgICAgIHwgNzggKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysKPiAgc3BpY2Utc3RyZWFtaW5nLWFnZW50LnNwZWMuaW4gfCAgMSArCj4gIDMgZmls
ZXMgY2hhbmdlZCwgODEgaW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgc3BpY2Ut
c3RyZWFtaW5nLWFnZW50LjEKPiAKPiBkaWZmIC0tZ2l0IGEvTWFrZWZpbGUuYW0gYi9NYWtlZmls
ZS5hbQo+IGluZGV4IDk5YzEzMDguLmU1NzgzOWQgMTAwNjQ0Cj4gLS0tIGEvTWFrZWZpbGUuYW0K
PiArKysgYi9NYWtlZmlsZS5hbQo+IEBAIC0yNSwzICsyNSw1IEBAIEVYVFJBX0RJU1QgPSBcCj4g
IAlkYXRhLzkwLXNwaWNlLWd1ZXN0LXN0cmVhbWluZy5ydWxlcyBcCj4gIAlkYXRhL3NwaWNlLXN0
cmVhbWluZy5kZXNrdG9wIFwKPiAgCSQoTlVMTCkKPiArCj4gK2Rpc3RfbWFuX01BTlMgPSBzcGlj
ZS1zdHJlYW1pbmctYWdlbnQuMQo+IGRpZmYgLS1naXQgYS9zcGljZS1zdHJlYW1pbmctYWdlbnQu
MSBiL3NwaWNlLXN0cmVhbWluZy1hZ2VudC4xCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRl
eCAwMDAwMDAwLi44MTkyNmZjCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL3NwaWNlLXN0cmVhbWlu
Zy1hZ2VudC4xCj4gQEAgLTAsMCArMSw3OCBAQAo+ICsuVEggU1BJQ0UtU1RSRUFNSU5HLUFHRU5U
IDEKPiArLlNIIE5BTUUKPiArc3BpY2Utc3RyZWFtaW5nLWFnZW50IFwtIEFuIGFnZW50LCBydW5u
aW5nIG9uIGEgZ3Vlc3QsIHNlbmRpbmcgdmlkZW8KPiArc3RyZWFtIG9mIFggZGlzcGxheSB0byBh
IHJlbW90ZSBjbGllbnQgKG92ZXIgU1BJQ0UpCj4gKwo+ICsuU0ggU1lOT1BTSVMKPiArLkIgc3Bp
Y2Utc3RyZWFtaW5nLWFnZW50IFsgPG9wdGlvbnM+IF0KPiArCj4gKy5TSCBERVNDUklQVElPTgo+
ICsuQiBzcGljZS1zdHJlYW1pbmctYWdlbnQKPiAraXMgYW4gYWdlbnQsIHJ1bm5pbmcgb24gYSBn
dWVzdCwgc2VuZGluZyB2aWRlbyBzdHJlYW0gb2YgWCBkaXNwbGF5IHRvCj4gK2EgcmVtb3RlIGNs
aWVudCAob3ZlciBTUElDRSkKPiArCj4gK1RoZSB2aWRlbyBzdHJlYW0gaXRzZWxmIGRlcGVuZHMg
b24gcGx1Z2lucy9jb2RlY3MgaW5zdGFsbGVkIG9uIHRoZSBndWVzdAo+ICsoYW5kIHRoZSBjbGll
bnQpLgo+ICsKPiArQ3VycmVudGx5IG9ubHkgc3VwcG9ydHMgWCBkaXNwbGF5IChYb3JnL1gxMSku
Cj4gKwo+ICtSZXF1aXJlcyBhIHZpcnRpby1wb3J0IGRldmljZSB0byBjb21tdW5pY2F0ZSBhbmQg
YSByZWNlbnQgZW5vdWdoCj4gK3NwaWNlLXNlcnZlci4KPiArCj4gKy5CIHNwaWNlLXN0cmVhbWlu
Zy1hZ2VudAo+ICtzaG91bGQgc3RhcnQgYXV0b21hdGljYWxseSB3aXRoIHlvdXIgWCBzZXNzaW9u
Lgo+ICsKPiArLlwiIFRvRG86IGFkZCBxZW11LWt2bSBjb21tYW5kIGxpbmUgb3B0aW9uIGV4YW1w
bGUKPiArLlwiICAgICAgIG9yIHJlZmVyIHRvIFJFQURNRSBmaWxlCj4gKwo+ICsuU0ggT1BUSU9O
Uwo+ICsuVFAKPiArLkJSIFwtcCAiICIgXGZJcG9ydG5hbWVcZlIKPiArVGhlIHZpcnRpby1zZXJp
YWwgcG9ydCB0byB1c2UKPiArKGRlZmF1bHQgaXMgL2Rldi92aXJ0aW8tcG9ydHMvb3JnLnNwaWNl
LXNwYWNlLnN0cmVhbS4wKQo+ICsuVFAKPiArLkJSIFwtbCAiICIgXGZJZmlsZVxmUgo+ICtsb2cg
ZnJhbWVzIHRvIGZpbGUKPiArCj4gKy5UUAo+ICsuQlIgXC1cLWxvZy1iaW5hcnkKPiArbG9nIGJp
bmFyeSBmcmFtZXMgKGZvbGxvd2luZyAtbCkKPiArCj4gKy5UUAo+ICsuQlIgXC1cLWxvZy1jYXRl
Z29yaWVzCj4gK2xvZyBjYXRlZ29yaWVzLCBzZXBhcmF0ZWQgYnkgJzonIChjdXJyZW50bHk6IGZy
YW1lcykKPiArCj4gKy5UUAo+ICsuQlIgXC1cLXBsdWdpbnMtZGlyICIgIiBwYXRoCj4gK2NoYW5n
ZSBwbHVnaW5zIGRpcmVjdG9yeQo+ICsKPiArLlRQCj4gKy5CUiBcLWQKPiArZW5hYmxlIGRlYnVn
IGxvZ3MKPiArCj4gKy5UUAo+ICsuQlIgXC1jICAiICIgXGZJdmFyaWFibGU9dmFsdWVcZlIKPiAr
QSBnZW5lcmljIHdheSB0byBjaGFuZ2UgcGx1Z2lucy9jb2RlY3Mgc2V0dGluZ3MuCj4gK1RoaXMg
b25seSBhZmZlY3RzIHBsdWdpbnMgdGhhdCBzdXBwb3J0IHRoaXMgdmFyaWFibGUKPiArYW5kIHRo
aXMgdmFsdWUgKGFuZCBpZ25vcmVkIG90aGVyd2lzZSkuCj4gKwo+ICsuVFAKPiArLkJSIFwtYyAg
IiAiIFxmSWZyYW1lcmF0ZT0xLTEwMFxmUgo+ICsKPiArLlwiIFRvRG86IG1vcmUgLWMgb3B0aW9u
cyByZWxhdGVkIHRvIHBsdWdpbnMKPiArCj4gKy5TSCBFWEFNUExFUwo+ICsuVFAKPiArcnVuIHNw
aWNlLXN0cmVhbWluZy1hZ2VudCB3aXRoIGEgZnJhbWVyYXRlIG9mIDIwIGZyYW1lcyBwZXIgc2Vj
b25kCj4gK3NwaWNlLXN0cmVhbWluZy1hZ2VudCAtYyBmcmFtZXJhdGU9MjAKPiArCj4gKy5UUAo+
ICtydW4gYW5kIGxvZyBiaW5hcnkgZnJhbWVzIHRvIC90bXAvc3NhLmxvZwo+ICtzcGljZS1zdHJl
YW1pbmctYWdlbnQgLWwgL3RtcC9zc2EubG9nIC0tbG9nLWJpbmFyeQo+ICsKPiArLlRQCj4gK3J1
biBhbmQgcHJpbnQgYSBsb3Qgb2YgZGVidWcgaW5mb3JtYXRpb24KPiArc3BpY2Utc3RyZWFtaW5n
LWFnZW50IC1kCj4gKwo+ICsuU0ggU0VFIEFMU08KPiArcWVtdS1rdm0oMSkKPiBkaWZmIC0tZ2l0
IGEvc3BpY2Utc3RyZWFtaW5nLWFnZW50LnNwZWMuaW4gYi9zcGljZS1zdHJlYW1pbmctYWdlbnQu
c3BlYy5pbgo+IGluZGV4IGEyNjdjNTQuLmZjYjgyMzEgMTAwNjQ0Cj4gLS0tIGEvc3BpY2Utc3Ry
ZWFtaW5nLWFnZW50LnNwZWMuaW4KPiArKysgYi9zcGljZS1zdHJlYW1pbmctYWdlbnQuc3BlYy5p
bgo+IEBAIC02OSw2ICs2OSw3IEBAIGZpCj4gICV7X2JpbmRpcn0vc3BpY2Utc3RyZWFtaW5nLWFn
ZW50Cj4gICV7X3N5c2NvbmZkaXJ9L3hkZy9hdXRvc3RhcnQvc3BpY2Utc3RyZWFtaW5nLmRlc2t0
b3AKPiAgJXtfZGF0YWRpcn0vZ2RtL2dyZWV0ZXIvYXV0b3N0YXJ0L3NwaWNlLXN0cmVhbWluZy5k
ZXNrdG9wCj4gKyV7X21hbmRpcn0vbWFuMS9zcGljZS1zdHJlYW1pbmctYWdlbnQuMS5nego+ICAK
PiAgJWZpbGVzIGRldmVsCj4gICVkZWZhdHRyKC0scm9vdCxyb290LC0pCgpBY2tlZC1ieTogRnJl
ZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+CgpGcmVkaWFubwpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxp
c3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
