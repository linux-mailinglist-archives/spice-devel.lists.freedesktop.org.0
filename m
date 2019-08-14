Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1377A8D731
	for <lists+spice-devel@lfdr.de>; Wed, 14 Aug 2019 17:29:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55BB66E635;
	Wed, 14 Aug 2019 15:29:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A53706E635
 for <spice-devel@lists.freedesktop.org>; Wed, 14 Aug 2019 15:29:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 43A5E2F3667
 for <spice-devel@lists.freedesktop.org>; Wed, 14 Aug 2019 15:29:36 +0000 (UTC)
Received: from lub.tlv (dhcp-4-135.tlv.redhat.com [10.35.4.135])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A577B84F6;
 Wed, 14 Aug 2019 15:29:35 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>, spice-devel@lists.freedesktop.org
References: <20190813165608.32249-1-fziglio@redhat.com>
 <20190813165608.32249-4-fziglio@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <8e594e82-39a5-da8d-328d-d91b57be752a@redhat.com>
Date: Wed, 14 Aug 2019 18:29:33 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190813165608.32249-4-fziglio@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Wed, 14 Aug 2019 15:29:36 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-common 4/4] codegen: Check validity
 of array members
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gOC8xMy8xOSA3OjU2IFBNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gQ2hlY2sgdGhhdCBj
b21iaW5hdGlvbiBvZiBmaWVsZHMgZm9yIGFuIGFycmF5IGRvZXMgbm90Cj4gbGVhZCB0byB1bnNh
ZmUgY29kZS4KPiBjaGVja192YWxpZCBtZXRob2QgY2FtZSBmcm9tIGdlbmVyYXRlX2NfZGVjbGFy
YXRpb24gd2l0aAo+IHNvbWUgbW9yZSBjaGVjayBhbmQgaXQncyB1c2UgaW4gZGVtYXJzaGFsbGVy
IHRvIHZhbGlkYXRlCj4gdGhlIGFycmF5IGlmIHRoZSBzdHJ1Y3R1cmUgaXMgbm90IGdlbmVyYXRl
ZC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNv
bT4KPiAtLS0KPiAgIHB5dGhvbl9tb2R1bGVzL2RlbWFyc2hhbC5weSB8ICAyICsrCj4gICBweXRo
b25fbW9kdWxlcy9wdHlwZXMucHkgICAgfCAxOCArKysrKysrKysrKysrKysrKy0KPiAgIDIgZmls
ZXMgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1n
aXQgYS9weXRob25fbW9kdWxlcy9kZW1hcnNoYWwucHkgYi9weXRob25fbW9kdWxlcy9kZW1hcnNo
YWwucHkKPiBpbmRleCBhY2Q0YjZmLi4zNzM2OTc2IDEwMDY0NAo+IC0tLSBhL3B5dGhvbl9tb2R1
bGVzL2RlbWFyc2hhbC5weQo+ICsrKyBiL3B5dGhvbl9tb2R1bGVzL2RlbWFyc2hhbC5weQo+IEBA
IC0zMTUsNiArMzE1LDggQEAgZGVmIHdyaXRlX3ZhbGlkYXRlX3BvaW50ZXJfaXRlbSh3cml0ZXIs
IGNvbnRhaW5lciwgaXRlbSwgc2NvcGUsIHBhcmVudF9zY29wZSwgc3QKPiAgIGRlZiB3cml0ZV92
YWxpZGF0ZV9hcnJheV9pdGVtKHdyaXRlciwgY29udGFpbmVyLCBpdGVtLCBzY29wZSwgcGFyZW50
X3Njb3BlLCBzdGFydCwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHdhbnRfbndf
c2l6ZSwgd2FudF9tZW1fc2l6ZSwgd2FudF9leHRyYV9zaXplKToKPiAgICAgICBhcnJheSA9IGl0
ZW0udHlwZQo+ICsgICAgaWYgaXRlbS5tZW1iZXI6Cj4gKyAgICAgICAgYXJyYXkuY2hlY2tfdmFs
aWQoaXRlbS5tZW1iZXIpCj4gICAgICAgaXNfYnl0ZV9zaXplID0gRmFsc2UKPiAgICAgICBlbGVt
ZW50X3R5cGUgPSBhcnJheS5lbGVtZW50X3R5cGUKPiAgICAgICBpZiBhcnJheS5pc19ieXRlc19s
ZW5ndGgoKToKPiBkaWZmIC0tZ2l0IGEvcHl0aG9uX21vZHVsZXMvcHR5cGVzLnB5IGIvcHl0aG9u
X21vZHVsZXMvcHR5cGVzLnB5Cj4gaW5kZXggMzExY2UzZC4uN2EyM2JjYSAxMDA2NDQKPiAtLS0g
YS9weXRob25fbW9kdWxlcy9wdHlwZXMucHkKPiArKysgYi9weXRob25fbW9kdWxlcy9wdHlwZXMu
cHkKPiBAQCAtNDg1LDcgKzQ4NSwyMyBAQCBjbGFzcyBBcnJheVR5cGUoVHlwZSk6Cj4gICAgICAg
ZGVmIGNfdHlwZShzZWxmKToKPiAgICAgICAgICAgcmV0dXJuIHNlbGYuZWxlbWVudF90eXBlLmNf
dHlwZSgpCj4gICAKCldvdWxkIGJlIG5pY2UgdG8gYWRkIGEgY29tbWVudCBzYXlpbmcgd2hhdCBj
aGVja3MgYXJlIG1hZGUuCihFdmVuIHRob3VnaCB0aGVyZSBhcmUgbm90IG1hbnkgY29tbWVudHMK
PiArICAgIGRlZiBjaGVja192YWxpZChzZWxmLCBtZW1iZXIpOgo+ICsgICAgICAgIGlmIG1lbWJl
ci5oYXNfYXR0cigiY2h1bmsiKSBvciBtZW1iZXIuaGFzX2F0dHIoImFzX3B0ciIpOgo+ICsgICAg
ICAgICAgICByZXR1cm4KPiArICAgICAgICBpZiBtZW1iZXIuaGFzX2F0dHIoInRvX3B0ciIpIG9y
IG1lbWJlci5oYXNfYXR0cigicHRyX2FycmF5Iik6CgpEb2VzICd0b19wdHInIGhhdmUgaWRlbnRp
Zmllci9jb25zdGFudF9sZW5ndGggPyAgSXQncyBqdXN0IGEgcG9pbnRlci4KCgpVcmkuCgo+ICsg
ICAgICAgICAgICBpZiBub3QgKHNlbGYuaXNfaWRlbnRpZmllcl9sZW5ndGgoKSBvciBzZWxmLmlz
X2NvbnN0YW50X2xlbmd0aCgpKToKPiArICAgICAgICAgICAgICAgIHJhaXNlIEV4Y2VwdGlvbigi
VW5zZWN1cmUsIG5vIGxlbmd0aCBvZiBhcnJheSIpCj4gKyAgICAgICAgICAgIHJldHVybgo+ICsg
ICAgICAgIGlmIG1lbWJlci5oYXNfZW5kX2F0dHIoKToKPiArICAgICAgICAgICAgcmV0dXJuCj4g
KyAgICAgICAgaWYgc2VsZi5pc19yZW1haW5pbmdfbGVuZ3RoKCk6Cj4gKyAgICAgICAgICAgIHJh
aXNlIEV4Y2VwdGlvbignQyBvdXRwdXQgYXJyYXkgaXMgbm90IGFsbG9jYXRlZCcpCj4gKyAgICAg
ICAgaWYgc2VsZi5pc19jb25zdGFudF9sZW5ndGgoKSBvciBzZWxmLmlzX2lkZW50aWZpZXJfbGVu
Z3RoKCk6Cj4gKyAgICAgICAgICAgIHJldHVybgo+ICsgICAgICAgIHJhaXNlIE5vdEltcGxlbWVu
dGVkRXJyb3IoJ3Vua25vd24gYXJyYXkgJXMnICUgc3RyKHNlbGYpKQo+ICsKPiAgICAgICBkZWYg
Z2VuZXJhdGVfY19kZWNsYXJhdGlvbihzZWxmLCB3cml0ZXIsIG1lbWJlcik6Cj4gKyAgICAgICAg
c2VsZi5jaGVja192YWxpZChtZW1iZXIpCj4gICAgICAgICAgIG5hbWUgPSBtZW1iZXIubmFtZQo+
ICAgICAgICAgICBpZiBtZW1iZXIuaGFzX2F0dHIoImNodW5rIik6Cj4gICAgICAgICAgICAgICBy
ZXR1cm4gd3JpdGVyLndyaXRlbG4oJ1NwaWNlQ2h1bmtzIColczsnICUgbmFtZSkKPiBAQCAtNDk3
LDcgKzUxMyw3IEBAIGNsYXNzIEFycmF5VHlwZShUeXBlKToKPiAgICAgICAgICAgICAgIHJldHVy
biB3cml0ZXIud3JpdGVsbignJXMgKiVzOycgJSAoc2VsZi5jX3R5cGUoKSwgbmFtZSkpCj4gICAg
ICAgICAgIGlmIG1lbWJlci5oYXNfYXR0cigicHRyX2FycmF5Iik6Cj4gICAgICAgICAgICAgICBy
ZXR1cm4gd3JpdGVyLndyaXRlbG4oJyVzIColc1swXTsnICUgKHNlbGYuY190eXBlKCksIG5hbWUp
KQo+IC0gICAgICAgIGlmIG1lbWJlci5oYXNfZW5kX2F0dHIoKSBvciBzZWxmLmlzX3JlbWFpbmlu
Z19sZW5ndGgoKToKPiArICAgICAgICBpZiBtZW1iZXIuaGFzX2VuZF9hdHRyKCk6Cj4gICAgICAg
ICAgICAgICByZXR1cm4gd3JpdGVyLndyaXRlbG4oJyVzICVzWzBdOycgJSAoc2VsZi5jX3R5cGUo
KSwgbmFtZSkpCj4gICAgICAgICAgIGlmIHNlbGYuaXNfY29uc3RhbnRfbGVuZ3RoKCk6Cj4gICAg
ICAgICAgICAgICByZXR1cm4gd3JpdGVyLndyaXRlbG4oJyVzICVzWyVzXTsnICUgKHNlbGYuY190
eXBlKCksIG5hbWUsIHNlbGYuc2l6ZSkpCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
