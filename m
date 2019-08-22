Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3188798BFB
	for <lists+spice-devel@lfdr.de>; Thu, 22 Aug 2019 09:01:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 667B86EA65;
	Thu, 22 Aug 2019 07:01:44 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 383B46EA66
 for <spice-devel@lists.freedesktop.org>; Thu, 22 Aug 2019 07:01:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A9EB085539
 for <spice-devel@lists.freedesktop.org>; Thu, 22 Aug 2019 07:01:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 9C92C7E2A
 for <spice-devel@lists.freedesktop.org>; Thu, 22 Aug 2019 07:01:42 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 91A401800202;
 Thu, 22 Aug 2019 07:01:42 +0000 (UTC)
Date: Thu, 22 Aug 2019 03:01:42 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Jakub =?utf-8?Q?Jank=C5=AF?= <jjanku@redhat.com>
Message-ID: <1526286137.8198464.1566457302526.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190820140547.15251-2-jjanku@redhat.com>
References: <20190820140547.15251-1-jjanku@redhat.com>
 <20190820140547.15251-2-jjanku@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.109, 10.4.195.1]
Thread-Topic: webdav: ref client when demuxing
Thread-Index: GD09Gq+tIoEjFHtP3Dss5BFmL3dkpQ==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Thu, 22 Aug 2019 07:01:42 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk 2/2] webdav: ref client when
 demuxing
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

PiAKPiBUaGUgY2xpZW50IGNhbiBiZSB1bnJlZmVkIGJlZm9yZSB0aGUgZGVtdXhfdG9fY2xpZW50
X2NiKCkgaXMgY2FsbGVkCj4gd2hpY2ggY291bGQgbGVhZCB0byBzZWdmYXVsdC4gU28gcmVmIGl0
IGZpcnN0IGJlZm9yZSBzdGFydGluZyB0aGUKPiBhc3luYyB3cml0ZS4KPiAKPiBTaWduZWQtb2Zm
LWJ5OiBKYWt1YiBKYW5rxa8gPGpqYW5rdUByZWRoYXQuY29tPgoKQWNrZWQtYnk6IEZyZWRpYW5v
IFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgoKPiAtLS0KPiAgc3JjL2NoYW5uZWwtd2ViZGF2
LmMgfCAzICsrLQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL3NyYy9jaGFubmVsLXdlYmRhdi5jIGIvc3JjL2NoYW5uZWwt
d2ViZGF2LmMKPiBpbmRleCAwOWVmOWY3Li5mYjI1MDg0IDEwMDY0NAo+IC0tLSBhL3NyYy9jaGFu
bmVsLXdlYmRhdi5jCj4gKysrIGIvc3JjL2NoYW5uZWwtd2ViZGF2LmMKPiBAQCAtMzI5LDYgKzMy
OSw3IEBAIHN0YXRpYyB2b2lkIGRlbXV4X3RvX2NsaWVudF9jYihHT2JqZWN0ICpzb3VyY2UsCj4g
R0FzeW5jUmVzdWx0ICpyZXN1bHQsIGdwb2ludGVyIHUKPiAgICAgIGZhaWwgPSAoc2l6ZSAhPSBj
LT5kZW11eC5zaXplKTsKPiAgICAgIGdfd2Fybl9pZl9mYWlsKHNpemUgPT0gYy0+ZGVtdXguc2l6
ZSk7Cj4gICAgICBkZW11eF90b19jbGllbnRfZmluaXNoKGNsaWVudCwgZmFpbCk7Cj4gKyAgICBj
bGllbnRfdW5yZWYoY2xpZW50KTsKPiAgfQo+ICAjZW5kaWYKPiAgCj4gQEAgLTM0OCw3ICszNDks
NyBAQCBzdGF0aWMgdm9pZCBkZW11eF90b19jbGllbnQoQ2xpZW50ICpjbGllbnQpCj4gIAo+ICAg
ICAgZ19vdXRwdXRfc3RyZWFtX3dyaXRlX2FsbF9hc3luYyhnX2lvX3N0cmVhbV9nZXRfb3V0cHV0
X3N0cmVhbShjbGllbnQtPnBpcGUpLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBjLT5kZW11eC5idWYsIHNpemUsIEdfUFJJT1JJVFlfREVGQVVMVCwKPiAtICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgYy0+Y2FuY2VsbGFibGUsIGRlbXV4X3RvX2NsaWVu
dF9jYiwKPiBjbGllbnQpOwo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBj
LT5jYW5jZWxsYWJsZSwgZGVtdXhfdG9fY2xpZW50X2NiLAo+IGNsaWVudF9yZWYoY2xpZW50KSk7
Cj4gICNlbmRpZgo+ICB9Cj4gIApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vc3BpY2UtZGV2ZWw=
