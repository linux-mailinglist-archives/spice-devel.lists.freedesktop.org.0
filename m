Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C7F592D8C5
	for <lists+spice-devel@lfdr.de>; Wed, 29 May 2019 11:16:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C3AE6E037;
	Wed, 29 May 2019 09:16:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 091916E037
 for <spice-devel@lists.freedesktop.org>; Wed, 29 May 2019 09:16:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A4FC330C0DFA
 for <spice-devel@lists.freedesktop.org>; Wed, 29 May 2019 09:16:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 92BDC1A4D9
 for <spice-devel@lists.freedesktop.org>; Wed, 29 May 2019 09:16:02 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 862EC1806B12
 for <spice-devel@lists.freedesktop.org>; Wed, 29 May 2019 09:16:02 +0000 (UTC)
Date: Wed, 29 May 2019 05:16:02 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1708019240.20497733.1559121362503.JavaMail.zimbra@redhat.com>
In-Reply-To: <1094050931.18993317.1558342635607.JavaMail.zimbra@redhat.com>
References: <20190513094556.14035-1-fziglio@redhat.com>
 <20190513094556.14035-2-fziglio@redhat.com>
 <1094050931.18993317.1558342635607.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.3, 10.4.195.11]
Thread-Topic: qxl_dev: Fix alignment for QXLReleaseInfo
Thread-Index: PLj9rM9LIj7bcjiBJXa27vRLE5QkWuZGaN5Z
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Wed, 29 May 2019 09:16:02 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-protocol 2/3] qxl_dev: Fix alignment
 for QXLReleaseInfo
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

cGluZwoKPiAKPiBwaW5nCj4gCj4gPiAKPiA+IERvIG5vdCBkZWNsYXJlIHRoZSBzdHJ1Y3R1cmUg
YXMgYWxpZ25lZC4KPiA+IFRoZSBzdGFydC9lbmQtcGFja2VkLmggaGVhZGVycyBhZmZlY3RzIG9u
bHkgTWluZ1cgb3IgTWljcm9zb2Z0Cj4gPiBjb21waWxlcnMuIFRvIGhhdmUgdW5hbGlnbmVkIHN0
cnVjdHVyZSB3aXRoIEdDQyBjb21waWxlciB5b3UgaGF2ZQo+ID4gdG8gdXNlIFNQSUNFX0FUVFJf
UEFDS0VELiBUaGlzIHdheSB0aGUgZGVmaW5pdGlvbiBhcmUgdGhlIHNhbWUgZm9yCj4gPiBhbGwg
Y29tcGlsZXIuCj4gPiBUaGlzIHN0cnVjdHVyZSBpcyB1c2VkIGluIGEgbG90IG9mIFFYTCBzdHJ1
Y3R1cmVzIHdoaWNoIGFyZSBub3QKPiA+IGFsaWduZWQgY2F1c2luZyB0byBoYXZlIGFuIGFsaWdu
ZWQgc3RydWN0dXJlIHRvIGJlIHBvdGVudGlhbGx5Cj4gPiB1bmFsaWduZWQuCj4gPiBBcyB0aGlz
IHN0cnVjdHVyZSBoYXMgbm8gaG9sZXMgdGhpcyBjaGFuZ2UgZG9lcyBub3QgbWFrZSBhbnkgc2l6
ZQo+ID4gY2hhbmdlIHVzaW5nIGFueSBjb21waWxlci4KPiA+IFRoZSBjaGFuZ2Ugd2lsbCBvbmx5
IGNoYW5nZSB0aGUgYWxpZ25tZW50IGZyb20gNC84IHRvIDEuCj4gPiBUaGlzIGNvdWxkIGFmZmVj
dCBzdHJ1Y3R1cmVzIGNvbnRhaW5pbmcgdGhpcyB1bmlvbiBob3dldmVyIGJlc2lkZQo+ID4gcGFj
a2VkIHN0cnVjdHVyZSBpbiBxeGxfZGV2LmggKHdoaWNoIGFyZSBub3QgYWZmZWN0ZWQpIHRoZXJl
IGFyZSBubwo+ID4gb3RoZXIgdXNhZ2VzIGFzIHN1Y2ggYnkgc3BpY2UtZ3RrLCBRZW11IG9yIHNw
aWNlLXNlcnZlci4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemln
bGlvQHJlZGhhdC5jb20+Cj4gPiAtLS0KPiA+ICBzcGljZS9xeGxfZGV2LmggfCAyICstCj4gPiAg
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gPiAKPiA+IGRp
ZmYgLS1naXQgYS9zcGljZS9xeGxfZGV2LmggYi9zcGljZS9xeGxfZGV2LmgKPiA+IGluZGV4IGE5
Y2M0ZjQuLjY1OWY5MzAgMTAwNjQ0Cj4gPiAtLS0gYS9zcGljZS9xeGxfZGV2LmgKPiA+ICsrKyBi
L3NwaWNlL3F4bF9kZXYuaAo+ID4gQEAgLTI3NSw3ICsyNzUsNyBAQCB0eXBlZGVmIHN0cnVjdCBT
UElDRV9BVFRSX0FMSUdORUQoNCkgU1BJQ0VfQVRUUl9QQUNLRUQKPiA+IFFYTFJhbSB7Cj4gPiAg
Cj4gPiAgfSBRWExSYW07Cj4gPiAgCj4gPiAtdHlwZWRlZiB1bmlvbiBRWExSZWxlYXNlSW5mbyB7
Cj4gPiArdHlwZWRlZiB1bmlvbiBTUElDRV9BVFRSX1BBQ0tFRCBRWExSZWxlYXNlSW5mbyB7Cj4g
PiAgICAgIHVpbnQ2NF90IGlkOyAgICAgIC8vIGluCj4gPiAgICAgIHVpbnQ2NF90IG5leHQ7ICAg
IC8vIG91dAo+ID4gIH0gUVhMUmVsZWFzZUluZm87Cj4gCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1k
ZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
