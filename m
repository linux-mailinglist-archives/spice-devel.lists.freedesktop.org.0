Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ED7AB7A60
	for <lists+spice-devel@lfdr.de>; Thu, 19 Sep 2019 15:24:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 243086F4C5;
	Thu, 19 Sep 2019 13:24:38 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B256B6F4C5
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 13:24:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 51F1A18C4271
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 13:24:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4A1BA5D9CC
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 13:24:36 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3FC0A4EE95;
 Thu, 19 Sep 2019 13:24:36 +0000 (UTC)
Date: Thu, 19 Sep 2019 09:24:36 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>, dgilbert@redhat.com
Message-ID: <992634810.2527448.1568899476026.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190919130409.i4ubnvr7lw2obnp3@wingsuit>
References: <20190919101725.20686-1-fziglio@redhat.com>
 <20190919130409.i4ubnvr7lw2obnp3@wingsuit>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.17, 10.4.195.3]
Thread-Topic: red-qxl: Make sure we have at least one monitor
Thread-Index: YYj9XuqRYck0G3zbr2S3O1KS5BCBxQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.62]); Thu, 19 Sep 2019 13:24:36 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] red-qxl: Make sure we have
 at least one monitor
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

PiAKPiBPbiBUaHUsIFNlcCAxOSwgMjAxOSBhdCAxMToxNzoyNUFNICswMTAwLCBGcmVkaWFubyBa
aWdsaW8gd3JvdGU6Cj4gPiBJdCBkb2VzIG5vdCBtYWtlIHNlbnNlIHRvIGhhdmUgYSBncmFwaGlj
IGNhcmQgd2l0aG91dCBhIG1vbml0b3IuCj4gPiBJbiBzcGljZV9xeGxfc2V0X21heF9tb25pdG9y
cyB3ZSBwcmV2ZW50IHRvIHNldCAwIG1vbml0b3JzLCBkbwo+ID4gdGhlIHNhbWUgaW4gc3BpY2Vf
cXhsX3NldF9kZXZpY2VfaW5mby4KPiA+IAo+ID4gVGhpcyBmaXhlcyBodHRwczovL2J1Z3ppbGxh
LnJlZGhhdC5jb20vc2hvd19idWcuY2dpP2lkPTE2OTE3MjEuCj4gPiAKPiA+IFNpZ25lZC1vZmYt
Ynk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgo+IAo+IEFja2VkLWJ5OiBW
aWN0b3IgVG9zbyA8dmljdG9ydG9zb0ByZWRoYXQuY29tPgo+IAoKQ2FuIEkgYWRkIGEgCgpUZXN0
ZWQtYnk6IERyLiBEYXZpZCBBbGFuIEdpbGJlcnQgPGRnaWxiZXJ0QHJlZGhhdC5jb20+Cgo/CgoK
PiA+IC0tLQo+ID4gIHNlcnZlci9yZWQtcXhsLmMgfCAyICstCj4gPiAgMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9zZXJ2
ZXIvcmVkLXF4bC5jIGIvc2VydmVyL3JlZC1xeGwuYwo+ID4gaW5kZXggMDMzNDgyNzAuLmRiZmNk
NDQwIDEwMDY0NAo+ID4gLS0tIGEvc2VydmVyL3JlZC1xeGwuYwo+ID4gKysrIGIvc2VydmVyL3Jl
ZC1xeGwuYwo+ID4gQEAgLTgwNCw3ICs4MDQsNyBAQCB2b2lkIHNwaWNlX3F4bF9zZXRfZGV2aWNl
X2luZm8oUVhMSW5zdGFuY2UgKmluc3RhbmNlLAo+ID4gICAgICB9Cj4gPiAgCj4gPiAgICAgIGlu
c3RhbmNlLT5zdC0+bW9uaXRvcnNfY291bnQgPSBkZXZpY2VfZGlzcGxheV9pZF9jb3VudDsKPiA+
IC0gICAgaW5zdGFuY2UtPnN0LT5tYXhfbW9uaXRvcnMgPSBkZXZpY2VfZGlzcGxheV9pZF9jb3Vu
dDsKPiA+ICsgICAgaW5zdGFuY2UtPnN0LT5tYXhfbW9uaXRvcnMgPSBNQVgoMXUsIGRldmljZV9k
aXNwbGF5X2lkX2NvdW50KTsKPiA+ICAKPiA+ICAgICAgcmVkc19zZW5kX2RldmljZV9kaXNwbGF5
X2luZm8ocmVkX3F4bF9nZXRfc2VydmVyKGluc3RhbmNlLT5zdCkpOwo+ID4gIH0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGlu
ZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
