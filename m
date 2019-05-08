Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DED81770C
	for <lists+spice-devel@lfdr.de>; Wed,  8 May 2019 13:30:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79FD18979D;
	Wed,  8 May 2019 11:30:18 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7853897CD
 for <spice-devel@lists.freedesktop.org>; Wed,  8 May 2019 11:30:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 462D8301E11B
 for <spice-devel@lists.freedesktop.org>; Wed,  8 May 2019 11:30:16 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3A5175D9C8
 for <spice-devel@lists.freedesktop.org>; Wed,  8 May 2019 11:30:16 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2BE373FB10;
 Wed,  8 May 2019 11:30:16 +0000 (UTC)
Date: Wed, 8 May 2019 07:30:14 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <330270567.17353909.1557315014791.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190506103156.14925-2-victortoso@redhat.com>
References: <20190506103156.14925-1-victortoso@redhat.com>
 <20190506103156.14925-2-victortoso@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.3, 10.4.195.30]
Thread-Topic: channel-webdav: do not handle vmc_data message twice
Thread-Index: qacQRWTmqck5OBAJ+jEsuY8jgpRY4w==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Wed, 08 May 2019 11:30:16 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk v1 2/2] channel-webdav: do not handle
 vmc_data message twice
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

PiAKPiBGcm9tOiBWaWN0b3IgVG9zbyA8bWVAdmljdG9ydG9zby5jb20+Cj4gCj4gVGhpcyBpcyBh
IHJlZ3Jlc3Npb24gZnJvbSBjb21taXQgYWFlMDdmYiBpbiAyMDE3LTAzLTI3IGJ5IFZpY3RvciBU
b3NvCj4gPG1lQHZpY3RvcnRvc28uY29tPi4gVGhlIG1lc3NhZ2UgaXMgaGFuZGxlZCBieSBjaGFu
bmVsLXdlYmRhdiBhbmQKPiBzaG91bGQgbm90IGJlIGV4cG9zZWQgbm9yIGhhbmRsZWQgZWxzZXdo
ZXJlLgo+IAo+IEZvdW5kIHRoaXMgd2hpbGUgaW5zcGVjdGluZyB0aGUgY29kZSwgdGhlcmUgaXMg
bm90IHJlYWwgc2lkZSBlZmZlY3QKPiBhcyBubyBvbmUgdHJ5aW5nIHRvIGhhbmRsZSBwb3J0LWRh
dGEgZnJvbSB3ZWJkYXYncyBjaGFubmVsLXBvcnQuCj4gCj4gU2lnbmVkLW9mZi1ieTogVmljdG9y
IFRvc28gPHZpY3RvcnRvc29AcmVkaGF0LmNvbT4KCkFja2VkCgo+IC0tLQo+ICBzcmMvY2hhbm5l
bC13ZWJkYXYuYyB8IDQgKysrLQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAx
IGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3NyYy9jaGFubmVsLXdlYmRhdi5jIGIvc3Jj
L2NoYW5uZWwtd2ViZGF2LmMKPiBpbmRleCAxOTVhZTM0Li5iNWFmNWE5IDEwMDY0NAo+IC0tLSBh
L3NyYy9jaGFubmVsLXdlYmRhdi5jCj4gKysrIGIvc3JjL2NoYW5uZWwtd2ViZGF2LmMKPiBAQCAt
NjA3LDggKzYwNywxMCBAQCBzdGF0aWMgdm9pZCBzcGljZV93ZWJkYXZfaGFuZGxlX21zZyhTcGlj
ZUNoYW5uZWwKPiAqY2hhbm5lbCwgU3BpY2VNc2dJbiAqbXNnKQo+ICAKPiAgICAgIHBhcmVudF9j
bGFzcyA9IFNQSUNFX0NIQU5ORUxfQ0xBU1Moc3BpY2Vfd2ViZGF2X2NoYW5uZWxfcGFyZW50X2Ns
YXNzKTsKPiAgCj4gLSAgICBpZiAodHlwZSA9PSBTUElDRV9NU0dfU1BJQ0VWTUNfREFUQSkKPiAr
ICAgIGlmICh0eXBlID09IFNQSUNFX01TR19TUElDRVZNQ19EQVRBKSB7Cj4gICAgICAgICAgd2Vi
ZGF2X2hhbmRsZV9kYXRhX21zZyhjaGFubmVsLCBtc2cpOwo+ICsgICAgICAgIHJldHVybjsKPiAr
ICAgIH0KPiAgCj4gICAgICAvKiBUaGUgb25seSBtZXNzYWdlIHRoYXQgd2UgbmVlZCB0byBoYW5k
bGUgb3Vyc2VsdmVzIGlzCj4gICAgICBTUElDRV9NU0dfU1BJQ0VWTUNfREFUQQo+ICAgICAgICog
YXMgd2Ugd2FudCB0byByZWFkIGl0IHdpdGggc3BpY2Vfdm1jX2lucHV0L291dHB1dF9zdHJlYW0g
dG8gaGFuZGxlCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1k
ZXZlbA==
