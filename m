Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D753BDAEB
	for <lists+spice-devel@lfdr.de>; Wed, 25 Sep 2019 11:27:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 013876EB5A;
	Wed, 25 Sep 2019 09:27:30 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7A016EB5D
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:27:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6FE0C18CB90D
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:27:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 63E47600C8
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:27:28 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 58A264EDA5;
 Wed, 25 Sep 2019 09:27:28 +0000 (UTC)
Date: Wed, 25 Sep 2019 05:27:28 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <1563896349.3205140.1569403648329.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190925090701.19130-3-victortoso@redhat.com>
References: <20190925090701.19130-1-victortoso@redhat.com>
 <20190925090701.19130-3-victortoso@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.18, 10.4.195.21]
Thread-Topic: tests: migrate: use uri for default's spicy client
Thread-Index: uy9MafW2QWH5o6p0wFxCRZ4wg7rVqQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.63]); Wed, 25 Sep 2019 09:27:28 +0000 (UTC)
Subject: Re: [Spice-devel] [spice 2/8] tests: migrate: use uri for default's
 spicy client
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

PiAKPiBGcm9tOiBWaWN0b3IgVG9zbyA8bWVAdmljdG9ydG9zby5jb20+Cj4gCj4gU2lnbmVkLW9m
Zi1ieTogVmljdG9yIFRvc28gPHZpY3RvcnRvc29AcmVkaGF0LmNvbT4KPiAtLS0KPiAgdGVzdHMv
bWlncmF0ZS5weSB8IDQgKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS90ZXN0cy9taWdyYXRlLnB5IGIvdGVzdHMv
bWlncmF0ZS5weQo+IGluZGV4IDBjMzAyYzkyLi41YTBmNTkzMCAxMDA3NTUKPiAtLS0gYS90ZXN0
cy9taWdyYXRlLnB5Cj4gKysrIGIvdGVzdHMvbWlncmF0ZS5weQo+IEBAIC05Niw4ICs5Niw4IEBA
IGRlZiBzdGFydF9xZW11KHFlbXVfZXhlYywgaW1hZ2UsIHNwaWNlX3BvcnQsIHFtcF9maWxlbmFt
ZSwKPiBpbmNvbWluZ19wb3J0PU5vbmUsIGUKPiAgICAgIHJldHVybiBwcm9jCj4gIAo+ICBkZWYg
c3RhcnRfY2xpZW50KGNsaWVudCwgc3BpY2VfcG9ydCk6Cj4gLSAgICByZXR1cm4gUG9wZW4oKCIl
KGNsaWVudClzIC1oIGxvY2FsaG9zdCAtcCAlKHBvcnQpZCIgJQo+IGRpY3QocG9ydD1zcGljZV9w
b3J0LAo+IC0gICAgICAgIGNsaWVudD1jbGllbnQpKS5zcGxpdCgpLCBleGVjdXRhYmxlPWNsaWVu
dCkKPiArICAgIGNsaWVudF9jbWQgPSAic3BpY3kgLS11cmkgc3BpY2U6Ly9sb2NhbGhvc3Q6JXMi
ICUgKHNwaWNlX3BvcnQpCj4gKyAgICByZXR1cm4gUG9wZW4oY2xpZW50X2NtZC5zcGxpdCgpLCBl
eGVjdXRhYmxlPWNsaWVudCkKPiAgCj4gIGRlZiB3YWl0X2FjdGl2ZShxLCBhY3RpdmUpOgo+ICAg
ICAgZXZlbnRzID0gWyJSRVNVTUUiXSBpZiBhY3RpdmUgZWxzZSBbIlNUT1AiXQoKQWNrZWQtYnk6
IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgoKRnJlZGlhbm8KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGlu
ZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
