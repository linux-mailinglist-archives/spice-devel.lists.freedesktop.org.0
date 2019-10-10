Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99740D2609
	for <lists+spice-devel@lfdr.de>; Thu, 10 Oct 2019 11:16:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03D626E338;
	Thu, 10 Oct 2019 09:16:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F6F56E338
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Oct 2019 09:16:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4591F307D989
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Oct 2019 09:16:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3BE8960A35
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Oct 2019 09:16:03 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3379918089DC
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Oct 2019 09:16:03 +0000 (UTC)
Date: Thu, 10 Oct 2019 05:16:03 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1310985888.6239065.1570698963174.JavaMail.zimbra@redhat.com>
In-Reply-To: <2019997874.3688528.1569848355476.JavaMail.zimbra@redhat.com>
References: <20190814170825.11903-1-fziglio@redhat.com>
 <65750014.9954197.1567004590530.JavaMail.zimbra@redhat.com>
 <2106530969.11342442.1568108491723.JavaMail.zimbra@redhat.com>
 <419948550.2493672.1568884333206.JavaMail.zimbra@redhat.com>
 <2019997874.3688528.1569848355476.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.18, 10.4.195.1]
Thread-Topic: codegen: Check validity of array members
Thread-Index: 46T75oy+xcMrOod+Rqr1lrWZTO++5q0GGMiu0OQP8GHVzoODhLBWuSDz
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Thu, 10 Oct 2019 09:16:03 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-common v2] codegen: Check validity
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

cGluZwoKPiAKPiBwaW5nCj4gCj4gPiAKPiA+IHBpbmcKPiA+IAo+ID4gPiAKPiA+ID4gcGluZwo+
ID4gPiAKPiA+ID4gPiAKPiA+ID4gPiBwaW5nCj4gPiA+ID4gCj4gPiA+ID4gPiAKPiA+ID4gPiA+
IENoZWNrIHRoYXQgY29tYmluYXRpb24gb2YgZmllbGRzIGZvciBhbiBhcnJheSBkb2VzIG5vdAo+
ID4gPiA+ID4gbGVhZCB0byB1bnNhZmUgY29kZS4KPiA+ID4gPiA+IGNoZWNrX3ZhbGlkIG1ldGhv
ZCBjYW1lIGZyb20gZ2VuZXJhdGVfY19kZWNsYXJhdGlvbiB3aXRoCj4gPiA+ID4gPiBzb21lIG1v
cmUgY2hlY2sgYW5kIGl0J3MgdXNlIGluIGRlbWFyc2hhbGxlciB0byB2YWxpZGF0ZQo+ID4gPiA+
ID4gdGhlIGFycmF5IGlmIHRoZSBzdHJ1Y3R1cmUgaXMgbm90IGdlbmVyYXRlZC4KPiA+ID4gPiA+
IAo+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhh
dC5jb20+Cj4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+ICBweXRob25fbW9kdWxlcy9kZW1hcnNoYWwu
cHkgfCAgMiArKwo+ID4gPiA+ID4gIHB5dGhvbl9tb2R1bGVzL3B0eXBlcy5weSAgICB8IDMxICsr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKy0KPiA+ID4gPiA+ICAyIGZpbGVzIGNoYW5nZWQs
IDMyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiA+ID4gPiA+IAo+ID4gPiA+ID4gQ2hh
bmdlcyBzaW5jZSB2MToKPiA+ID4gPiA+IC0gYWRkIGNvbW1lbnRzIHRvIGV4cGxhaW4gdGhlIGNo
ZWNrcyBkb25lCj4gPiA+ID4gPiAKPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9weXRob25fbW9kdWxl
cy9kZW1hcnNoYWwucHkKPiA+ID4gPiA+IGIvcHl0aG9uX21vZHVsZXMvZGVtYXJzaGFsLnB5Cj4g
PiA+ID4gPiBpbmRleCBhY2Q0YjZmLi4zNzM2OTc2IDEwMDY0NAo+ID4gPiA+ID4gLS0tIGEvcHl0
aG9uX21vZHVsZXMvZGVtYXJzaGFsLnB5Cj4gPiA+ID4gPiArKysgYi9weXRob25fbW9kdWxlcy9k
ZW1hcnNoYWwucHkKPiA+ID4gPiA+IEBAIC0zMTUsNiArMzE1LDggQEAgZGVmIHdyaXRlX3ZhbGlk
YXRlX3BvaW50ZXJfaXRlbSh3cml0ZXIsCj4gPiA+ID4gPiBjb250YWluZXIsCj4gPiA+ID4gPiBp
dGVtLAo+ID4gPiA+ID4gc2NvcGUsIHBhcmVudF9zY29wZSwgc3QKPiA+ID4gPiA+ICBkZWYgd3Jp
dGVfdmFsaWRhdGVfYXJyYXlfaXRlbSh3cml0ZXIsIGNvbnRhaW5lciwgaXRlbSwgc2NvcGUsCj4g
PiA+ID4gPiAgcGFyZW50X3Njb3BlLAo+ID4gPiA+ID4gIHN0YXJ0LAo+ID4gPiA+ID4gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHdhbnRfbndfc2l6ZSwgd2FudF9tZW1fc2l6ZSwKPiA+
ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB3YW50X2V4dHJhX3NpemUpOgo+
ID4gPiA+ID4gICAgICBhcnJheSA9IGl0ZW0udHlwZQo+ID4gPiA+ID4gKyAgICBpZiBpdGVtLm1l
bWJlcjoKPiA+ID4gPiA+ICsgICAgICAgIGFycmF5LmNoZWNrX3ZhbGlkKGl0ZW0ubWVtYmVyKQo+
ID4gPiA+ID4gICAgICBpc19ieXRlX3NpemUgPSBGYWxzZQo+ID4gPiA+ID4gICAgICBlbGVtZW50
X3R5cGUgPSBhcnJheS5lbGVtZW50X3R5cGUKPiA+ID4gPiA+ICAgICAgaWYgYXJyYXkuaXNfYnl0
ZXNfbGVuZ3RoKCk6Cj4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvcHl0aG9uX21vZHVsZXMvcHR5cGVz
LnB5IGIvcHl0aG9uX21vZHVsZXMvcHR5cGVzLnB5Cj4gPiA+ID4gPiBpbmRleCAzMTFjZTNkLi5l
YmUwMDFjIDEwMDY0NAo+ID4gPiA+ID4gLS0tIGEvcHl0aG9uX21vZHVsZXMvcHR5cGVzLnB5Cj4g
PiA+ID4gPiArKysgYi9weXRob25fbW9kdWxlcy9wdHlwZXMucHkKPiA+ID4gPiA+IEBAIC00ODUs
NyArNDg1LDM2IEBAIGNsYXNzIEFycmF5VHlwZShUeXBlKToKPiA+ID4gPiA+ICAgICAgZGVmIGNf
dHlwZShzZWxmKToKPiA+ID4gPiA+ICAgICAgICAgIHJldHVybiBzZWxmLmVsZW1lbnRfdHlwZS5j
X3R5cGUoKQo+ID4gPiA+ID4gIAo+ID4gPiA+ID4gKyAgICBkZWYgY2hlY2tfdmFsaWQoc2VsZiwg
bWVtYmVyKToKPiA+ID4gPiA+ICsgICAgICAgICMgVGhlc2UgYXR0cmlidXRlIGNvcnJlc3BvbmRz
IHRvIHNwZWNpZmljIHN0cnVjdHVyZSBzaXplCj4gPiA+ID4gPiArICAgICAgICBpZiBtZW1iZXIu
aGFzX2F0dHIoImNodW5rIikgb3IgbWVtYmVyLmhhc19hdHRyKCJhc19wdHIiKToKPiA+ID4gPiA+
ICsgICAgICAgICAgICByZXR1cm4KPiA+ID4gPiA+ICsgICAgICAgICMgVGhlc2UgYXR0cmlidXRl
IGluZGljYXRlIHRoYXQgdGhlIGFycmF5IGlzIHN0b3JlZCBpbiB0aGUKPiA+ID4gPiA+IHN0cnVj
dHVyZQo+ID4gPiA+ID4gKyAgICAgICAgIyBhcyBhIHBvaW50ZXIgb2YgdGhlIGFycmF5LiBJZiB0
aGVyZSdzIG5vIHdheSB0byByZXRyaWV2ZQo+ID4gPiA+ID4gdGhlCj4gPiA+ID4gPiBsZW5ndGgK
PiA+ID4gPiA+ICsgICAgICAgICMgb2YgdGhlIGFycmF5IGdpdmUgZXJyb3IsIGFzIHRoZSB1c2Vy
IGhhcyBubyB3YXkgdG8gZG8KPiA+ID4gPiA+IGJvdW5kCj4gPiA+ID4gPiBjaGVja3MKPiA+ID4g
PiA+ICsgICAgICAgIGlmIG1lbWJlci5oYXNfYXR0cigidG9fcHRyIikgb3IKPiA+ID4gPiA+IG1l
bWJlci5oYXNfYXR0cigicHRyX2FycmF5Iik6Cj4gPiA+ID4gPiArICAgICAgICAgICAgaWYgbm90
IChzZWxmLmlzX2lkZW50aWZpZXJfbGVuZ3RoKCkgb3IKPiA+ID4gPiA+IHNlbGYuaXNfY29uc3Rh
bnRfbGVuZ3RoKCkpOgo+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICByYWlzZSBFeGNlcHRpb24o
IlVuc2VjdXJlLCBubyBsZW5ndGggb2YgYXJyYXkiKQo+ID4gPiA+ID4gKyAgICAgICAgICAgIHJl
dHVybgo+ID4gPiA+ID4gKyAgICAgICAgIyBUaGlzIGF0dHJpYnV0ZSBpbmRpY2F0ZSB0aGF0IHRo
ZSBhcnJheSBpcyBzdG9yZSBhdCB0aGUgZW5kCj4gPiA+ID4gPiArICAgICAgICAjIG9mIHRoZSBz
dHJ1Y3R1cmUsIHRoZSB1c2VyIHdpbGwgY29tcHV0ZSB0aGUgbGVuZ3RoIGZyb20KPiA+ID4gPiA+
IHRoZQo+ID4gPiA+ID4gKyAgICAgICAgIyBlbnRpcmUgbWVzc2FnZSBzaXplCj4gPiA+ID4gPiAr
ICAgICAgICBpZiBtZW1iZXIuaGFzX2VuZF9hdHRyKCk6Cj4gPiA+ID4gPiArICAgICAgICAgICAg
cmV0dXJuCj4gPiA+ID4gPiArICAgICAgICAjIEF2b2lkIGJ1ZywgdGhlIGFycmF5IGhhcyBubyBs
ZW5ndGggc3BlY2lmaWVkIGFuZCBubyBzcGFjZQo+ID4gPiA+ID4gKyAgICAgICAgIyB3b3VsZCBi
ZSBhbGxvY2F0ZWQKPiA+ID4gPiA+ICsgICAgICAgIGlmIHNlbGYuaXNfcmVtYWluaW5nX2xlbmd0
aCgpOgo+ID4gPiA+ID4gKyAgICAgICAgICAgIHJhaXNlIEV4Y2VwdGlvbignQyBvdXRwdXQgYXJy
YXkgaXMgbm90IGFsbG9jYXRlZCcpCj4gPiA+ID4gPiArICAgICAgICAjIEZvciBjb25zdGFudCBs
ZW5ndGggKGxpa2UgImZvb1s1XSIpIHRoZSBmaWVsZCBpcyBhIHNpemVkCj4gPiA+ID4gPiBhcnJh
eQo+ID4gPiA+ID4gKyAgICAgICAgIyBGb3IgaWRlbnRpZmllciBhdXRvbWF0aWNhbGx5IGEgcG9p
bnRlciB0byBhbGxvY2F0ZWQgZGF0YQo+ID4gPiA+ID4gaXMKPiA+ID4gPiA+IHN0b3JlLAo+ID4g
PiA+ID4gKyAgICAgICAgIyBpbiB0aGlzIGNhc2UgdXNlciBjYW4gcmVhZCB0aGUgc2l6ZSB1c2lu
ZyB0aGUgb3RoZXIgZmllbGQKPiA+ID4gPiA+IHNwZWNpZmllZAo+ID4gPiA+ID4gKyAgICAgICAg
IyBieSB0aGUgaWRlbnRpZmllcgo+ID4gPiA+ID4gKyAgICAgICAgaWYgc2VsZi5pc19jb25zdGFu
dF9sZW5ndGgoKSBvciBzZWxmLmlzX2lkZW50aWZpZXJfbGVuZ3RoKCk6Cj4gPiA+ID4gPiArICAg
ICAgICAgICAgcmV0dXJuCj4gPiA+ID4gPiArICAgICAgICByYWlzZSBOb3RJbXBsZW1lbnRlZEVy
cm9yKCd1bmtub3duIGFycmF5ICVzJyAlIHN0cihzZWxmKSkKPiA+ID4gPiA+ICsKPiA+ID4gPiA+
ICAgICAgZGVmIGdlbmVyYXRlX2NfZGVjbGFyYXRpb24oc2VsZiwgd3JpdGVyLCBtZW1iZXIpOgo+
ID4gPiA+ID4gKyAgICAgICAgc2VsZi5jaGVja192YWxpZChtZW1iZXIpCj4gPiA+ID4gPiAgICAg
ICAgICBuYW1lID0gbWVtYmVyLm5hbWUKPiA+ID4gPiA+ICAgICAgICAgIGlmIG1lbWJlci5oYXNf
YXR0cigiY2h1bmsiKToKPiA+ID4gPiA+ICAgICAgICAgICAgICByZXR1cm4gd3JpdGVyLndyaXRl
bG4oJ1NwaWNlQ2h1bmtzIColczsnICUgbmFtZSkKPiA+ID4gPiA+IEBAIC00OTcsNyArNTI2LDcg
QEAgY2xhc3MgQXJyYXlUeXBlKFR5cGUpOgo+ID4gPiA+ID4gICAgICAgICAgICAgIHJldHVybiB3
cml0ZXIud3JpdGVsbignJXMgKiVzOycgJSAoc2VsZi5jX3R5cGUoKSwgbmFtZSkpCj4gPiA+ID4g
PiAgICAgICAgICBpZiBtZW1iZXIuaGFzX2F0dHIoInB0cl9hcnJheSIpOgo+ID4gPiA+ID4gICAg
ICAgICAgICAgIHJldHVybiB3cml0ZXIud3JpdGVsbignJXMgKiVzWzBdOycgJSAoc2VsZi5jX3R5
cGUoKSwKPiA+ID4gPiA+ICAgICAgICAgICAgICBuYW1lKSkKPiA+ID4gPiA+IC0gICAgICAgIGlm
IG1lbWJlci5oYXNfZW5kX2F0dHIoKSBvciBzZWxmLmlzX3JlbWFpbmluZ19sZW5ndGgoKToKPiA+
ID4gPiA+ICsgICAgICAgIGlmIG1lbWJlci5oYXNfZW5kX2F0dHIoKToKPiA+ID4gPiA+ICAgICAg
ICAgICAgICByZXR1cm4gd3JpdGVyLndyaXRlbG4oJyVzICVzWzBdOycgJSAoc2VsZi5jX3R5cGUo
KSwKPiA+ID4gPiA+ICAgICAgICAgICAgICBuYW1lKSkKPiA+ID4gPiA+ICAgICAgICAgIGlmIHNl
bGYuaXNfY29uc3RhbnRfbGVuZ3RoKCk6Cj4gPiA+ID4gPiAgICAgICAgICAgICAgcmV0dXJuIHdy
aXRlci53cml0ZWxuKCclcyAlc1slc107JyAlIChzZWxmLmNfdHlwZSgpLAo+ID4gPiA+ID4gICAg
ICAgICAgICAgIG5hbWUsCj4gPiA+ID4gPiAgICAgICAgICAgICAgc2VsZi5zaXplKSkKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFp
bGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
