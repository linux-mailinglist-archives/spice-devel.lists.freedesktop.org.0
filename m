Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E08C2111
	for <lists+spice-devel@lfdr.de>; Mon, 30 Sep 2019 14:59:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C0236E415;
	Mon, 30 Sep 2019 12:59:17 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5F696E415
 for <spice-devel@lists.freedesktop.org>; Mon, 30 Sep 2019 12:59:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9137F58E23
 for <spice-devel@lists.freedesktop.org>; Mon, 30 Sep 2019 12:59:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 89DE160126
 for <spice-devel@lists.freedesktop.org>; Mon, 30 Sep 2019 12:59:15 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 811201803517
 for <spice-devel@lists.freedesktop.org>; Mon, 30 Sep 2019 12:59:15 +0000 (UTC)
Date: Mon, 30 Sep 2019 08:59:15 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <2019997874.3688528.1569848355476.JavaMail.zimbra@redhat.com>
In-Reply-To: <419948550.2493672.1568884333206.JavaMail.zimbra@redhat.com>
References: <20190814170825.11903-1-fziglio@redhat.com>
 <65750014.9954197.1567004590530.JavaMail.zimbra@redhat.com>
 <2106530969.11342442.1568108491723.JavaMail.zimbra@redhat.com>
 <419948550.2493672.1568884333206.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.17, 10.4.195.23]
Thread-Topic: codegen: Check validity of array members
Thread-Index: 46T75oy+xcMrOod+Rqr1lrWZTO++5q0GGMiu0OQP8GHVzoODhA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Mon, 30 Sep 2019 12:59:15 +0000 (UTC)
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
ID4gPiAKPiA+ID4gPiAKPiA+ID4gPiBDaGVjayB0aGF0IGNvbWJpbmF0aW9uIG9mIGZpZWxkcyBm
b3IgYW4gYXJyYXkgZG9lcyBub3QKPiA+ID4gPiBsZWFkIHRvIHVuc2FmZSBjb2RlLgo+ID4gPiA+
IGNoZWNrX3ZhbGlkIG1ldGhvZCBjYW1lIGZyb20gZ2VuZXJhdGVfY19kZWNsYXJhdGlvbiB3aXRo
Cj4gPiA+ID4gc29tZSBtb3JlIGNoZWNrIGFuZCBpdCdzIHVzZSBpbiBkZW1hcnNoYWxsZXIgdG8g
dmFsaWRhdGUKPiA+ID4gPiB0aGUgYXJyYXkgaWYgdGhlIHN0cnVjdHVyZSBpcyBub3QgZ2VuZXJh
dGVkLgo+ID4gPiA+IAo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8Znpp
Z2xpb0ByZWRoYXQuY29tPgo+ID4gPiA+IC0tLQo+ID4gPiA+ICBweXRob25fbW9kdWxlcy9kZW1h
cnNoYWwucHkgfCAgMiArKwo+ID4gPiA+ICBweXRob25fbW9kdWxlcy9wdHlwZXMucHkgICAgfCAz
MSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKystCj4gPiA+ID4gIDIgZmlsZXMgY2hhbmdl
ZCwgMzIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+ID4gPiA+IAo+ID4gPiA+IENoYW5n
ZXMgc2luY2UgdjE6Cj4gPiA+ID4gLSBhZGQgY29tbWVudHMgdG8gZXhwbGFpbiB0aGUgY2hlY2tz
IGRvbmUKPiA+ID4gPiAKPiA+ID4gPiBkaWZmIC0tZ2l0IGEvcHl0aG9uX21vZHVsZXMvZGVtYXJz
aGFsLnB5IGIvcHl0aG9uX21vZHVsZXMvZGVtYXJzaGFsLnB5Cj4gPiA+ID4gaW5kZXggYWNkNGI2
Zi4uMzczNjk3NiAxMDA2NDQKPiA+ID4gPiAtLS0gYS9weXRob25fbW9kdWxlcy9kZW1hcnNoYWwu
cHkKPiA+ID4gPiArKysgYi9weXRob25fbW9kdWxlcy9kZW1hcnNoYWwucHkKPiA+ID4gPiBAQCAt
MzE1LDYgKzMxNSw4IEBAIGRlZiB3cml0ZV92YWxpZGF0ZV9wb2ludGVyX2l0ZW0od3JpdGVyLCBj
b250YWluZXIsCj4gPiA+ID4gaXRlbSwKPiA+ID4gPiBzY29wZSwgcGFyZW50X3Njb3BlLCBzdAo+
ID4gPiA+ICBkZWYgd3JpdGVfdmFsaWRhdGVfYXJyYXlfaXRlbSh3cml0ZXIsIGNvbnRhaW5lciwg
aXRlbSwgc2NvcGUsCj4gPiA+ID4gIHBhcmVudF9zY29wZSwKPiA+ID4gPiAgc3RhcnQsCj4gPiA+
ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHdhbnRfbndfc2l6ZSwgd2FudF9tZW1f
c2l6ZSwKPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgd2FudF9leHRyYV9z
aXplKToKPiA+ID4gPiAgICAgIGFycmF5ID0gaXRlbS50eXBlCj4gPiA+ID4gKyAgICBpZiBpdGVt
Lm1lbWJlcjoKPiA+ID4gPiArICAgICAgICBhcnJheS5jaGVja192YWxpZChpdGVtLm1lbWJlcikK
PiA+ID4gPiAgICAgIGlzX2J5dGVfc2l6ZSA9IEZhbHNlCj4gPiA+ID4gICAgICBlbGVtZW50X3R5
cGUgPSBhcnJheS5lbGVtZW50X3R5cGUKPiA+ID4gPiAgICAgIGlmIGFycmF5LmlzX2J5dGVzX2xl
bmd0aCgpOgo+ID4gPiA+IGRpZmYgLS1naXQgYS9weXRob25fbW9kdWxlcy9wdHlwZXMucHkgYi9w
eXRob25fbW9kdWxlcy9wdHlwZXMucHkKPiA+ID4gPiBpbmRleCAzMTFjZTNkLi5lYmUwMDFjIDEw
MDY0NAo+ID4gPiA+IC0tLSBhL3B5dGhvbl9tb2R1bGVzL3B0eXBlcy5weQo+ID4gPiA+ICsrKyBi
L3B5dGhvbl9tb2R1bGVzL3B0eXBlcy5weQo+ID4gPiA+IEBAIC00ODUsNyArNDg1LDM2IEBAIGNs
YXNzIEFycmF5VHlwZShUeXBlKToKPiA+ID4gPiAgICAgIGRlZiBjX3R5cGUoc2VsZik6Cj4gPiA+
ID4gICAgICAgICAgcmV0dXJuIHNlbGYuZWxlbWVudF90eXBlLmNfdHlwZSgpCj4gPiA+ID4gIAo+
ID4gPiA+ICsgICAgZGVmIGNoZWNrX3ZhbGlkKHNlbGYsIG1lbWJlcik6Cj4gPiA+ID4gKyAgICAg
ICAgIyBUaGVzZSBhdHRyaWJ1dGUgY29ycmVzcG9uZHMgdG8gc3BlY2lmaWMgc3RydWN0dXJlIHNp
emUKPiA+ID4gPiArICAgICAgICBpZiBtZW1iZXIuaGFzX2F0dHIoImNodW5rIikgb3IgbWVtYmVy
Lmhhc19hdHRyKCJhc19wdHIiKToKPiA+ID4gPiArICAgICAgICAgICAgcmV0dXJuCj4gPiA+ID4g
KyAgICAgICAgIyBUaGVzZSBhdHRyaWJ1dGUgaW5kaWNhdGUgdGhhdCB0aGUgYXJyYXkgaXMgc3Rv
cmVkIGluIHRoZQo+ID4gPiA+IHN0cnVjdHVyZQo+ID4gPiA+ICsgICAgICAgICMgYXMgYSBwb2lu
dGVyIG9mIHRoZSBhcnJheS4gSWYgdGhlcmUncyBubyB3YXkgdG8gcmV0cmlldmUgdGhlCj4gPiA+
ID4gbGVuZ3RoCj4gPiA+ID4gKyAgICAgICAgIyBvZiB0aGUgYXJyYXkgZ2l2ZSBlcnJvciwgYXMg
dGhlIHVzZXIgaGFzIG5vIHdheSB0byBkbyBib3VuZAo+ID4gPiA+IGNoZWNrcwo+ID4gPiA+ICsg
ICAgICAgIGlmIG1lbWJlci5oYXNfYXR0cigidG9fcHRyIikgb3IgbWVtYmVyLmhhc19hdHRyKCJw
dHJfYXJyYXkiKToKPiA+ID4gPiArICAgICAgICAgICAgaWYgbm90IChzZWxmLmlzX2lkZW50aWZp
ZXJfbGVuZ3RoKCkgb3IKPiA+ID4gPiBzZWxmLmlzX2NvbnN0YW50X2xlbmd0aCgpKToKPiA+ID4g
PiArICAgICAgICAgICAgICAgIHJhaXNlIEV4Y2VwdGlvbigiVW5zZWN1cmUsIG5vIGxlbmd0aCBv
ZiBhcnJheSIpCj4gPiA+ID4gKyAgICAgICAgICAgIHJldHVybgo+ID4gPiA+ICsgICAgICAgICMg
VGhpcyBhdHRyaWJ1dGUgaW5kaWNhdGUgdGhhdCB0aGUgYXJyYXkgaXMgc3RvcmUgYXQgdGhlIGVu
ZAo+ID4gPiA+ICsgICAgICAgICMgb2YgdGhlIHN0cnVjdHVyZSwgdGhlIHVzZXIgd2lsbCBjb21w
dXRlIHRoZSBsZW5ndGggZnJvbSB0aGUKPiA+ID4gPiArICAgICAgICAjIGVudGlyZSBtZXNzYWdl
IHNpemUKPiA+ID4gPiArICAgICAgICBpZiBtZW1iZXIuaGFzX2VuZF9hdHRyKCk6Cj4gPiA+ID4g
KyAgICAgICAgICAgIHJldHVybgo+ID4gPiA+ICsgICAgICAgICMgQXZvaWQgYnVnLCB0aGUgYXJy
YXkgaGFzIG5vIGxlbmd0aCBzcGVjaWZpZWQgYW5kIG5vIHNwYWNlCj4gPiA+ID4gKyAgICAgICAg
IyB3b3VsZCBiZSBhbGxvY2F0ZWQKPiA+ID4gPiArICAgICAgICBpZiBzZWxmLmlzX3JlbWFpbmlu
Z19sZW5ndGgoKToKPiA+ID4gPiArICAgICAgICAgICAgcmFpc2UgRXhjZXB0aW9uKCdDIG91dHB1
dCBhcnJheSBpcyBub3QgYWxsb2NhdGVkJykKPiA+ID4gPiArICAgICAgICAjIEZvciBjb25zdGFu
dCBsZW5ndGggKGxpa2UgImZvb1s1XSIpIHRoZSBmaWVsZCBpcyBhIHNpemVkCj4gPiA+ID4gYXJy
YXkKPiA+ID4gPiArICAgICAgICAjIEZvciBpZGVudGlmaWVyIGF1dG9tYXRpY2FsbHkgYSBwb2lu
dGVyIHRvIGFsbG9jYXRlZCBkYXRhIGlzCj4gPiA+ID4gc3RvcmUsCj4gPiA+ID4gKyAgICAgICAg
IyBpbiB0aGlzIGNhc2UgdXNlciBjYW4gcmVhZCB0aGUgc2l6ZSB1c2luZyB0aGUgb3RoZXIgZmll
bGQKPiA+ID4gPiBzcGVjaWZpZWQKPiA+ID4gPiArICAgICAgICAjIGJ5IHRoZSBpZGVudGlmaWVy
Cj4gPiA+ID4gKyAgICAgICAgaWYgc2VsZi5pc19jb25zdGFudF9sZW5ndGgoKSBvciBzZWxmLmlz
X2lkZW50aWZpZXJfbGVuZ3RoKCk6Cj4gPiA+ID4gKyAgICAgICAgICAgIHJldHVybgo+ID4gPiA+
ICsgICAgICAgIHJhaXNlIE5vdEltcGxlbWVudGVkRXJyb3IoJ3Vua25vd24gYXJyYXkgJXMnICUg
c3RyKHNlbGYpKQo+ID4gPiA+ICsKPiA+ID4gPiAgICAgIGRlZiBnZW5lcmF0ZV9jX2RlY2xhcmF0
aW9uKHNlbGYsIHdyaXRlciwgbWVtYmVyKToKPiA+ID4gPiArICAgICAgICBzZWxmLmNoZWNrX3Zh
bGlkKG1lbWJlcikKPiA+ID4gPiAgICAgICAgICBuYW1lID0gbWVtYmVyLm5hbWUKPiA+ID4gPiAg
ICAgICAgICBpZiBtZW1iZXIuaGFzX2F0dHIoImNodW5rIik6Cj4gPiA+ID4gICAgICAgICAgICAg
IHJldHVybiB3cml0ZXIud3JpdGVsbignU3BpY2VDaHVua3MgKiVzOycgJSBuYW1lKQo+ID4gPiA+
IEBAIC00OTcsNyArNTI2LDcgQEAgY2xhc3MgQXJyYXlUeXBlKFR5cGUpOgo+ID4gPiA+ICAgICAg
ICAgICAgICByZXR1cm4gd3JpdGVyLndyaXRlbG4oJyVzIColczsnICUgKHNlbGYuY190eXBlKCks
IG5hbWUpKQo+ID4gPiA+ICAgICAgICAgIGlmIG1lbWJlci5oYXNfYXR0cigicHRyX2FycmF5Iik6
Cj4gPiA+ID4gICAgICAgICAgICAgIHJldHVybiB3cml0ZXIud3JpdGVsbignJXMgKiVzWzBdOycg
JSAoc2VsZi5jX3R5cGUoKSwKPiA+ID4gPiAgICAgICAgICAgICAgbmFtZSkpCj4gPiA+ID4gLSAg
ICAgICAgaWYgbWVtYmVyLmhhc19lbmRfYXR0cigpIG9yIHNlbGYuaXNfcmVtYWluaW5nX2xlbmd0
aCgpOgo+ID4gPiA+ICsgICAgICAgIGlmIG1lbWJlci5oYXNfZW5kX2F0dHIoKToKPiA+ID4gPiAg
ICAgICAgICAgICAgcmV0dXJuIHdyaXRlci53cml0ZWxuKCclcyAlc1swXTsnICUgKHNlbGYuY190
eXBlKCksIG5hbWUpKQo+ID4gPiA+ICAgICAgICAgIGlmIHNlbGYuaXNfY29uc3RhbnRfbGVuZ3Ro
KCk6Cj4gPiA+ID4gICAgICAgICAgICAgIHJldHVybiB3cml0ZXIud3JpdGVsbignJXMgJXNbJXNd
OycgJSAoc2VsZi5jX3R5cGUoKSwgbmFtZSwKPiA+ID4gPiAgICAgICAgICAgICAgc2VsZi5zaXpl
KSkKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2Ut
ZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
