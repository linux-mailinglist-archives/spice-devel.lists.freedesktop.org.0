Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED0B8D8C6
	for <lists+spice-devel@lfdr.de>; Wed, 14 Aug 2019 19:02:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90BC76E76F;
	Wed, 14 Aug 2019 17:02:31 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C11316E76F
 for <spice-devel@lists.freedesktop.org>; Wed, 14 Aug 2019 17:02:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 68F373066F49
 for <spice-devel@lists.freedesktop.org>; Wed, 14 Aug 2019 17:02:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 6046D80A26
 for <spice-devel@lists.freedesktop.org>; Wed, 14 Aug 2019 17:02:30 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5623324F2F;
 Wed, 14 Aug 2019 17:02:30 +0000 (UTC)
Date: Wed, 14 Aug 2019 13:02:30 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: uril@redhat.com
Message-ID: <1953944641.5841818.1565802150179.JavaMail.zimbra@redhat.com>
In-Reply-To: <8e594e82-39a5-da8d-328d-d91b57be752a@redhat.com>
References: <20190813165608.32249-1-fziglio@redhat.com>
 <20190813165608.32249-4-fziglio@redhat.com>
 <8e594e82-39a5-da8d-328d-d91b57be752a@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.205.155, 10.4.195.14]
Thread-Topic: codegen: Check validity of array members
Thread-Index: e/+Qh1FUkC+q/ocFUrFV/yhPufZ21g==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Wed, 14 Aug 2019 17:02:30 +0000 (UTC)
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBPbiA4LzEzLzE5IDc6NTYgUE0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPiA+IENoZWNr
IHRoYXQgY29tYmluYXRpb24gb2YgZmllbGRzIGZvciBhbiBhcnJheSBkb2VzIG5vdAo+ID4gbGVh
ZCB0byB1bnNhZmUgY29kZS4KPiA+IGNoZWNrX3ZhbGlkIG1ldGhvZCBjYW1lIGZyb20gZ2VuZXJh
dGVfY19kZWNsYXJhdGlvbiB3aXRoCj4gPiBzb21lIG1vcmUgY2hlY2sgYW5kIGl0J3MgdXNlIGlu
IGRlbWFyc2hhbGxlciB0byB2YWxpZGF0ZQo+ID4gdGhlIGFycmF5IGlmIHRoZSBzdHJ1Y3R1cmUg
aXMgbm90IGdlbmVyYXRlZC4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlv
IDxmemlnbGlvQHJlZGhhdC5jb20+Cj4gPiAtLS0KPiA+ICAgcHl0aG9uX21vZHVsZXMvZGVtYXJz
aGFsLnB5IHwgIDIgKysKPiA+ICAgcHl0aG9uX21vZHVsZXMvcHR5cGVzLnB5ICAgIHwgMTggKysr
KysrKysrKysrKysrKystCj4gPiAgIDIgZmlsZXMgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvcHl0aG9uX21vZHVsZXMvZGVtYXJz
aGFsLnB5IGIvcHl0aG9uX21vZHVsZXMvZGVtYXJzaGFsLnB5Cj4gPiBpbmRleCBhY2Q0YjZmLi4z
NzM2OTc2IDEwMDY0NAo+ID4gLS0tIGEvcHl0aG9uX21vZHVsZXMvZGVtYXJzaGFsLnB5Cj4gPiAr
KysgYi9weXRob25fbW9kdWxlcy9kZW1hcnNoYWwucHkKPiA+IEBAIC0zMTUsNiArMzE1LDggQEAg
ZGVmIHdyaXRlX3ZhbGlkYXRlX3BvaW50ZXJfaXRlbSh3cml0ZXIsIGNvbnRhaW5lciwKPiA+IGl0
ZW0sIHNjb3BlLCBwYXJlbnRfc2NvcGUsIHN0Cj4gPiAgIGRlZiB3cml0ZV92YWxpZGF0ZV9hcnJh
eV9pdGVtKHdyaXRlciwgY29udGFpbmVyLCBpdGVtLCBzY29wZSwKPiA+ICAgcGFyZW50X3Njb3Bl
LCBzdGFydCwKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgd2FudF9ud19zaXpl
LCB3YW50X21lbV9zaXplLAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB3YW50
X2V4dHJhX3NpemUpOgo+ID4gICAgICAgYXJyYXkgPSBpdGVtLnR5cGUKPiA+ICsgICAgaWYgaXRl
bS5tZW1iZXI6Cj4gPiArICAgICAgICBhcnJheS5jaGVja192YWxpZChpdGVtLm1lbWJlcikKPiA+
ICAgICAgIGlzX2J5dGVfc2l6ZSA9IEZhbHNlCj4gPiAgICAgICBlbGVtZW50X3R5cGUgPSBhcnJh
eS5lbGVtZW50X3R5cGUKPiA+ICAgICAgIGlmIGFycmF5LmlzX2J5dGVzX2xlbmd0aCgpOgo+ID4g
ZGlmZiAtLWdpdCBhL3B5dGhvbl9tb2R1bGVzL3B0eXBlcy5weSBiL3B5dGhvbl9tb2R1bGVzL3B0
eXBlcy5weQo+ID4gaW5kZXggMzExY2UzZC4uN2EyM2JjYSAxMDA2NDQKPiA+IC0tLSBhL3B5dGhv
bl9tb2R1bGVzL3B0eXBlcy5weQo+ID4gKysrIGIvcHl0aG9uX21vZHVsZXMvcHR5cGVzLnB5Cj4g
PiBAQCAtNDg1LDcgKzQ4NSwyMyBAQCBjbGFzcyBBcnJheVR5cGUoVHlwZSk6Cj4gPiAgICAgICBk
ZWYgY190eXBlKHNlbGYpOgo+ID4gICAgICAgICAgIHJldHVybiBzZWxmLmVsZW1lbnRfdHlwZS5j
X3R5cGUoKQo+ID4gICAKPiAKPiBXb3VsZCBiZSBuaWNlIHRvIGFkZCBhIGNvbW1lbnQgc2F5aW5n
IHdoYXQgY2hlY2tzIGFyZSBtYWRlLgo+IChFdmVuIHRob3VnaCB0aGVyZSBhcmUgbm90IG1hbnkg
Y29tbWVudHMKPiA+ICsgICAgZGVmIGNoZWNrX3ZhbGlkKHNlbGYsIG1lbWJlcik6Cj4gPiArICAg
ICAgICBpZiBtZW1iZXIuaGFzX2F0dHIoImNodW5rIikgb3IgbWVtYmVyLmhhc19hdHRyKCJhc19w
dHIiKToKPiA+ICsgICAgICAgICAgICByZXR1cm4KPiA+ICsgICAgICAgIGlmIG1lbWJlci5oYXNf
YXR0cigidG9fcHRyIikgb3IgbWVtYmVyLmhhc19hdHRyKCJwdHJfYXJyYXkiKToKPiAKPiBEb2Vz
ICd0b19wdHInIGhhdmUgaWRlbnRpZmllci9jb25zdGFudF9sZW5ndGggPyAgSXQncyBqdXN0IGEg
cG9pbnRlci4KPiAKCnRvX3B0ciBtZWFucyB0aGF0IHRoZSBhcnJheSBpcyBzdG9yZWQgaW4gdGhl
IHN0cnVjdHVyZSBhcyBhIHBvaW50ZXIuClRoZSBpc3N1ZSBoZXJlIGlzIHRoYXQgdGhlIGRlY2xh
cmF0aW9uIGlzIHBvdGVudGlhbGx5IGJ1Z2d5IGFzIHRoZXJlJ3MKbm8gd2F5IHRvIGtub3cgdGhl
IGxlbmd0aCBvZiB0aGUgYXJyYXkgc28gYnVmZmVyIG92ZXJmbG93Li4uCkknbGwgZXhwbGFpbiB0
aGUgcmVhc29ucyBhZGRpbmcgY29tbWVudHMKCj4gCj4gVXJpLgo+IAo+ID4gKyAgICAgICAgICAg
IGlmIG5vdCAoc2VsZi5pc19pZGVudGlmaWVyX2xlbmd0aCgpIG9yCj4gPiBzZWxmLmlzX2NvbnN0
YW50X2xlbmd0aCgpKToKPiA+ICsgICAgICAgICAgICAgICAgcmFpc2UgRXhjZXB0aW9uKCJVbnNl
Y3VyZSwgbm8gbGVuZ3RoIG9mIGFycmF5IikKPiA+ICsgICAgICAgICAgICByZXR1cm4KPiA+ICsg
ICAgICAgIGlmIG1lbWJlci5oYXNfZW5kX2F0dHIoKToKPiA+ICsgICAgICAgICAgICByZXR1cm4K
PiA+ICsgICAgICAgIGlmIHNlbGYuaXNfcmVtYWluaW5nX2xlbmd0aCgpOgo+ID4gKyAgICAgICAg
ICAgIHJhaXNlIEV4Y2VwdGlvbignQyBvdXRwdXQgYXJyYXkgaXMgbm90IGFsbG9jYXRlZCcpCj4g
PiArICAgICAgICBpZiBzZWxmLmlzX2NvbnN0YW50X2xlbmd0aCgpIG9yIHNlbGYuaXNfaWRlbnRp
Zmllcl9sZW5ndGgoKToKPiA+ICsgICAgICAgICAgICByZXR1cm4KPiA+ICsgICAgICAgIHJhaXNl
IE5vdEltcGxlbWVudGVkRXJyb3IoJ3Vua25vd24gYXJyYXkgJXMnICUgc3RyKHNlbGYpKQo+ID4g
Kwo+ID4gICAgICAgZGVmIGdlbmVyYXRlX2NfZGVjbGFyYXRpb24oc2VsZiwgd3JpdGVyLCBtZW1i
ZXIpOgo+ID4gKyAgICAgICAgc2VsZi5jaGVja192YWxpZChtZW1iZXIpCj4gPiAgICAgICAgICAg
bmFtZSA9IG1lbWJlci5uYW1lCj4gPiAgICAgICAgICAgaWYgbWVtYmVyLmhhc19hdHRyKCJjaHVu
ayIpOgo+ID4gICAgICAgICAgICAgICByZXR1cm4gd3JpdGVyLndyaXRlbG4oJ1NwaWNlQ2h1bmtz
IColczsnICUgbmFtZSkKPiA+IEBAIC00OTcsNyArNTEzLDcgQEAgY2xhc3MgQXJyYXlUeXBlKFR5
cGUpOgo+ID4gICAgICAgICAgICAgICByZXR1cm4gd3JpdGVyLndyaXRlbG4oJyVzIColczsnICUg
KHNlbGYuY190eXBlKCksIG5hbWUpKQo+ID4gICAgICAgICAgIGlmIG1lbWJlci5oYXNfYXR0cigi
cHRyX2FycmF5Iik6Cj4gPiAgICAgICAgICAgICAgIHJldHVybiB3cml0ZXIud3JpdGVsbignJXMg
KiVzWzBdOycgJSAoc2VsZi5jX3R5cGUoKSwgbmFtZSkpCj4gPiAtICAgICAgICBpZiBtZW1iZXIu
aGFzX2VuZF9hdHRyKCkgb3Igc2VsZi5pc19yZW1haW5pbmdfbGVuZ3RoKCk6Cj4gPiArICAgICAg
ICBpZiBtZW1iZXIuaGFzX2VuZF9hdHRyKCk6Cj4gPiAgICAgICAgICAgICAgIHJldHVybiB3cml0
ZXIud3JpdGVsbignJXMgJXNbMF07JyAlIChzZWxmLmNfdHlwZSgpLCBuYW1lKSkKPiA+ICAgICAg
ICAgICBpZiBzZWxmLmlzX2NvbnN0YW50X2xlbmd0aCgpOgo+ID4gICAgICAgICAgICAgICByZXR1
cm4gd3JpdGVyLndyaXRlbG4oJyVzICVzWyVzXTsnICUgKHNlbGYuY190eXBlKCksIG5hbWUsCj4g
PiAgICAgICAgICAgICAgIHNlbGYuc2l6ZSkpCj4gPiAKPiAKPiAKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNw
aWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
