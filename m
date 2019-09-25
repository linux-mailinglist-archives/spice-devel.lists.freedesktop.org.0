Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B931BDB11
	for <lists+spice-devel@lfdr.de>; Wed, 25 Sep 2019 11:34:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED0FF6EB61;
	Wed, 25 Sep 2019 09:34:33 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AB026EB61
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:34:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3AD7AC059758
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:34:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 326EC60126
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:34:33 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 262CF4EE68;
 Wed, 25 Sep 2019 09:34:33 +0000 (UTC)
Date: Wed, 25 Sep 2019 05:34:33 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <1485282471.3205619.1569404073118.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190925090701.19130-8-victortoso@redhat.com>
References: <20190925090701.19130-1-victortoso@redhat.com>
 <20190925090701.19130-8-victortoso@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.18, 10.4.195.21]
Thread-Topic: tests: migrate: add option to wait user input
Thread-Index: SETqtZQC84OjOxtmU1iFWCqgKhWMrQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Wed, 25 Sep 2019 09:34:33 +0000 (UTC)
Subject: Re: [Spice-devel] [spice 7/8] tests: migrate: add option to wait
 user input
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

PiAKPiBGcm9tOiBWaWN0b3IgVG9zbyA8bWVAdmljdG9ydG9zby5jb20+Cj4gCj4gVGhlIGl0ZXJh
dGUoKSBtZXRob2QgYWxyZWFkeSBjb25zaWRlcnMgaXQuIFRoaXMgaXMgdXNlZnVsIGlmIG9uZSB3
YW50cwo+IHRvIGF0dGFjaCBnZGIgb24gcWVtdSBmb3IgaW5zdGFuY2UuCj4gCj4gU2lnbmVkLW9m
Zi1ieTogVmljdG9yIFRvc28gPHZpY3RvcnRvc29AcmVkaGF0LmNvbT4KPiAtLS0KPiAgdGVzdHMv
bWlncmF0ZS5weSB8IDQgKysrLQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAx
IGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3Rlc3RzL21pZ3JhdGUucHkgYi90ZXN0cy9t
aWdyYXRlLnB5Cj4gaW5kZXggNGFjNjI4OWIuLmZjZjUxYmRiIDEwMDc1NQo+IC0tLSBhL3Rlc3Rz
L21pZ3JhdGUucHkKPiArKysgYi90ZXN0cy9taWdyYXRlLnB5Cj4gQEAgLTYwLDYgKzYwLDggQEAg
ZGVmIGdldF9hcmdzKCk6Cj4gICAgICBwYXJzZXIuYWRkX2FyZ3VtZW50KCctLWNsaWVudCcsIGRl
c3Q9J2NsaWVudCcsIGRlZmF1bHQ9J3NwaWN5JywKPiAgICAgIGNob2ljZXM9WydzcGljeScsICdy
ZW1vdGUtdmlld2VyJ10pCj4gICAgICBwYXJzZXIuYWRkX2FyZ3VtZW50KCctLXZkYWdlbnQnLCBk
ZXN0PSJ2ZGFnZW50IiwgYWN0aW9uPSdzdG9yZV90cnVlJywKPiAgICAgIGRlZmF1bHQ9RmFsc2Us
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgIGhlbHA9IkFwcGVuZCBvcHRpb25zIGZvciBhZ2Vu
dCdzIHZpcnRzZXJpYWxwb3J0IikKPiArICAgIHBhcnNlci5hZGRfYXJndW1lbnQoJy0td2FpdC10
by1zdGFydCcsIGRlc3Q9IndhaXRfdXNlcl9pbnB1dCIsCj4gYWN0aW9uPSdzdG9yZV90cnVlJywg
ZGVmYXVsdD1GYWxzZSwKPiArICAgICAgICAgICAgICAgICAgICAgICAgaGVscD0iV2FpdCB1c2Vy
J3MgaW5wdXQgdG8gc3RhcnQgbWlncmF0aW9uIHRlc3QiKQoKVGhlIHZhcmlhYmxlIG5hbWUgYW5k
IGNvbW1lbnQgYXJlICJ3YWl0IHVzZXIgaW5wdXQiLCB0aGUgb3B0aW9uIGlzCiJ3YWl0IHRvIHN0
YXJ0Ii4gV2h5IGRpZmZlcmVudCA/Cgo+ICAgICAgYXJncyA9IHBhcnNlci5wYXJzZV9hcmdzKHN5
cy5hcmd2WzE6XSkKPiAgICAgIGlmIG9zLnBhdGguZXhpc3RzKGFyZ3MucWVtdSk6Cj4gICAgICAg
ICAgYXJncy5xZW11X2V4ZWMgPSBhcmdzLnFlbXUKPiBAQCAtMjE0LDcgKzIxNiw3IEBAIGRlZiBt
YWluKCk6Cj4gICAgICAgICAgYXJncy5zcGljZV9wb3J0Ml0sIHZkYWdlbnQ9YXJncy52ZGFnZW50
KQo+ICAgICAgYXRleGl0LnJlZ2lzdGVyKGNsZWFudXAsIG1pZ3JhdG9yKQo+ICAgICAgd2hpbGUg
VHJ1ZToKPiAtICAgICAgICBtaWdyYXRvci5pdGVyYXRlKCkKPiArICAgICAgICBtaWdyYXRvci5p
dGVyYXRlKGFyZ3Mud2FpdF91c2VyX2lucHV0KQo+ICAKPiAgaWYgX19uYW1lX18gPT0gJ19fbWFp
bl9fJzoKPiAgICAgIG1haW4oKQoKT3RoZXJ3aXNlLAogIEFja2VkLWJ5OiBGcmVkaWFubyBaaWds
aW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KCkZyZWRpYW5vCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1k
ZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
