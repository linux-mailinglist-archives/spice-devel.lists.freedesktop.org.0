Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 125A24B5C2
	for <lists+spice-devel@lfdr.de>; Wed, 19 Jun 2019 12:01:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97E496E348;
	Wed, 19 Jun 2019 10:01:16 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5AAD6E348
 for <spice-devel@lists.freedesktop.org>; Wed, 19 Jun 2019 10:01:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5D4B73092671
 for <spice-devel@lists.freedesktop.org>; Wed, 19 Jun 2019 10:01:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4A41960166
 for <spice-devel@lists.freedesktop.org>; Wed, 19 Jun 2019 10:01:14 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 39E4F1806B16;
 Wed, 19 Jun 2019 10:01:14 +0000 (UTC)
Date: Wed, 19 Jun 2019 06:01:14 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Jakub =?utf-8?Q?Jank=C5=AF?= <jjanku@redhat.com>
Message-ID: <84277386.23631034.1560938474184.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190617204630.22420-3-jjanku@redhat.com>
References: <20190617204630.22420-1-jjanku@redhat.com>
 <20190617204630.22420-3-jjanku@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.205.183, 10.4.195.4]
Thread-Topic: webdav: don't start client on empty message
Thread-Index: gkbTJWz0HnhOOX66gAMijnU6O2vOUw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Wed, 19 Jun 2019 10:01:14 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk 3/5] webdav: don't start client
 on empty message
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

PiAKPiBJZiB0aGUgY2xpZW50IG9uIHRoZSByZW1vdGUgc2lkZSBkaXNjb25uZWN0cywKPiBzcGlj
ZS13ZWJkYXYgZGFlbW9uIHNlbmRzIGEgbWVzc2FnZSB3aXRoIG5vIGRhdGEuCj4gCj4gSG93ZXZl
ciwgaWYgdGhlIHBob2RhdiBzZXJ2ZXIgYWxyZWFkeSBjbG9zZWQKPiB0aGUgY2xpZW50IGNvbm5l
Y3Rpb24sIGNsaWVudCBsb29rdXAgZmFpbHMgYW5kCj4gd2Ugb3BlbiBhIG5ldyBjb25uZWN0aW9u
IHRvIHBob2RhdiwgYnV0IGRvbid0IHdyaXRlCj4gYW55dGhpbmcgdG8gaXQgLSB0aGlzIHNob3Vs
ZCBub3QgaGFwcGVuLAo+IHNvIGluIHN1Y2ggY2FzZSwgaWdub3JlIHRoZSBtZXNzYWdlIGFuZCBz
dGFydAo+IGRlbXV4aW5nIGFnYWluLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEpha3ViIEphbmvFryA8
amphbmt1QHJlZGhhdC5jb20+Cj4gLS0tCj4gIHNyYy9jaGFubmVsLXdlYmRhdi5jIHwgNiArKysr
Ky0KPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+
IGRpZmYgLS1naXQgYS9zcmMvY2hhbm5lbC13ZWJkYXYuYyBiL3NyYy9jaGFubmVsLXdlYmRhdi5j
Cj4gaW5kZXggODIyZmVlMC4uZWEyODdmMSAxMDA2NDQKPiAtLS0gYS9zcmMvY2hhbm5lbC13ZWJk
YXYuYwo+ICsrKyBiL3NyYy9jaGFubmVsLXdlYmRhdi5jCj4gQEAgLTQyMSw4ICs0MjEsMTIgQEAg
c3RhdGljIHZvaWQgZGF0YV9yZWFkX2NiKEdPYmplY3QgKnNvdXJjZV9vYmplY3QsCj4gIAo+ICAg
ICAgaWYgKGNsaWVudCkKPiAgICAgICAgICBkZW11eF90b19jbGllbnQoY2xpZW50KTsKPiAtICAg
IGVsc2UKPiArICAgIGVsc2UgaWYgKHNpemUgPiAwKQo+ICAgICAgICAgIHN0YXJ0X2NsaWVudChz
ZWxmKTsKClN0eWxlOiBhbHdheXMgYnJhY2tldHMKCj4gKyAgICBlbHNlIHsKPiArICAgICAgICBj
LT5kZW11eGluZyA9IEZBTFNFOwo+ICsgICAgICAgIHN0YXJ0X2RlbXV4KHNlbGYpOwo+ICsgICAg
fQo+ICB9Cj4gIAo+ICAKCk90aGVyd2lzZSBwYXRjaCBpcyBmaW5lLgoKRnJlZGlhbm8KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFp
bGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
