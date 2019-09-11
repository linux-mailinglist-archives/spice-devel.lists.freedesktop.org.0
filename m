Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF0BAF899
	for <lists+spice-devel@lfdr.de>; Wed, 11 Sep 2019 11:12:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 458AD6EA69;
	Wed, 11 Sep 2019 09:12:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 617536EA69
 for <spice-devel@lists.freedesktop.org>; Wed, 11 Sep 2019 09:12:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 015001DA7
 for <spice-devel@lists.freedesktop.org>; Wed, 11 Sep 2019 09:12:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E92DD10016EB
 for <spice-devel@lists.freedesktop.org>; Wed, 11 Sep 2019 09:12:34 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id D86D0180221D;
 Wed, 11 Sep 2019 09:12:34 +0000 (UTC)
Date: Wed, 11 Sep 2019 05:12:34 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Kevin Pouget <kpouget@redhat.com>
Message-ID: <1496564183.11503580.1568193154714.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190911085120.6239-1-kpouget@redhat.com>
References: <392846067.11493336.1568187825565.JavaMail.zimbra@redhat.com>
 <20190911085120.6239-1-kpouget@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.8, 10.4.195.3]
Thread-Topic: common/recorder.h: do not complain on unused (dummy) recorders
Thread-Index: xDUlE72sgr88VvcwjvuFVWXl/6ZMVQ==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.71]); Wed, 11 Sep 2019 09:12:35 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-common v2] common/recorder.h: do not
 complain on unused (dummy) recorders
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

PiAKPiBTaWduZWQtb2ZmLWJ5OiBLZXZpbiBQb3VnZXQgPGtwb3VnZXRAcmVkaGF0LmNvbT4KCkFj
a2VkCgo+IC0tLQo+ICBjb21tb24vcmVjb3JkZXIuaCB8IDMgKystCj4gIHRlc3RzL01ha2VmaWxl
LmFtIHwgMSArCj4gIDIgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL2NvbW1vbi9yZWNvcmRlci5oIGIvY29tbW9uL3JlY29yZGVy
LmgKPiBpbmRleCA5OGI4Nzk3Li44NDQ4ZTAyIDEwMDY0NAo+IC0tLSBhL2NvbW1vbi9yZWNvcmRl
ci5oCj4gKysrIGIvY29tbW9uL3JlY29yZGVyLmgKPiBAQCAtMjAsNiArMjAsNyBAQAo+ICAKPiAg
I2luY2x1ZGUgPHN0ZGlvLmg+Cj4gICNpbmNsdWRlIDxzdGRpbnQuaD4KPiArI2luY2x1ZGUgPHNw
aWNlL21hY3Jvcy5oPgo+ICAKPiAgLyogUmVwbGFjZW1lbnQgZGVjbGFyYXRpb25zLgo+ICAgKiBU
aGVyZSBkZWNsYXJhdGlvbnMgc2hvdWxkIGdlbmVyYXRlIG5vIGNvZGUgKGJlc2lkZSB3aGVuIG5v
IG9wdGltaXphdGlvbgo+ICAgYXJlCj4gQEAgLTQ1LDcgKzQ2LDcgQEAgdHlwZWRlZiBzdHJ1Y3Qg
U3BpY2VEdW1teVR3ZWFrIHsKPiAgI2RlZmluZSBSRUNPUkRFUihyZWMsIG51bV9yaW5ncywgY29t
bWVudCkgXAo+ICAgICAgUkVDT1JERVJfREVGSU5FKHJlYywgbnVtX3JpbmdzLCBjb21tZW50KQo+
ICAjZGVmaW5lIFJFQ09SREVSX0RFRklORShyZWMsIG51bV9yaW5ncywgY29tbWVudCkgXAo+IC0g
ICAgY29uc3QgU3BpY2VFbXB0eVN0cnVjdCBzcGljZV9yZWNvcmRlcl8gIyMgcmVjID0ge30KPiAr
ICAgIGNvbnN0IFNwaWNlRW1wdHlTdHJ1Y3QgU1BJQ0VfR05VQ19VTlVTRUQgc3BpY2VfcmVjb3Jk
ZXJfICMjIHJlYyA9IHt9Cj4gICNkZWZpbmUgUkVDT1JERVJfVFJBQ0UocmVjKSBcCj4gICAgICAo
c2l6ZW9mKHNwaWNlX3JlY29yZGVyXyAjIyByZWMpICE9IHNpemVvZihTcGljZUVtcHR5U3RydWN0
KSkKPiAgI2RlZmluZSBSRUNPUkRFUl9UV0VBS19ERUNMQVJFKHJlYykgXAo+IGRpZmYgLS1naXQg
YS90ZXN0cy9NYWtlZmlsZS5hbSBiL3Rlc3RzL01ha2VmaWxlLmFtCj4gaW5kZXggNGI4YmNmNC4u
MGQ3NWQ2YiAxMDA2NDQKPiAtLS0gYS90ZXN0cy9NYWtlZmlsZS5hbQo+ICsrKyBiL3Rlc3RzL01h
a2VmaWxlLmFtCj4gQEAgLTczLDYgKzczLDcgQEAgdGVzdF9kdW1teV9yZWNvcmRlcl9TT1VSQ0VT
ID0JCVwKPiAgCSQoTlVMTCkKPiAgdGVzdF9kdW1teV9yZWNvcmRlcl9DRkxBR1MgPQkJXAo+ICAJ
LUkkKHRvcF9zcmNkaXIpCQkJXAo+ICsJJChQUk9UT0NPTF9DRkxBR1MpICAgICAgICAgICAgICBc
Cj4gIAkkKE5VTEwpCj4gIHRlc3RfZHVtbXlfcmVjb3JkZXJfTERBREQgPQkJCQlcCj4gIAkkKHRv
cF9idWlsZGRpcikvY29tbW9uL2xpYnNwaWNlLWNvbW1vbi5sYQlcCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QK
U3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
