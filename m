Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9889EA045E
	for <lists+spice-devel@lfdr.de>; Wed, 28 Aug 2019 16:14:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7872896E4;
	Wed, 28 Aug 2019 14:14:27 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC99B896E4
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 14:14:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3A6757FDCC
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 14:14:26 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.21])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7A34D60C5D;
 Wed, 28 Aug 2019 14:14:25 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 28 Aug 2019 15:14:03 +0100
Message-Id: <20190828141421.18902-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Wed, 28 Aug 2019 14:14:26 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v5 00/18] added feature of sharing
 CD image
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

Q2hhbmdlcyBzaW5jZSB2NDoKLSB1cGRhdGVkICJBY2tlZC1ieSIgY29tbWVudHM7Ci0gZml4ZWQg
YSBzbWFsbCBmb3JtYXR0aW5nIGlzc3VlIChmaXh1cCk7Ci0gYWRkZWQgc29tZSBjb21tZW50Owot
IHVwZGF0ZWQgc29tZSBjb21taXQgbWVzc2FnZXMgYXMgcmVxdWlyZWQ7Ci0gcmVtb3ZlIGEgZGVi
dWcgbWVzc2FnZSBpbiBjZC1lbXUgdGVzdDsKLSBwcmVmZXIgcG9zdC1maXhlZCBpbmNyZW1lbnQv
ZGVjcmVtZW50OwotIG1lcmdlZCBtYW55IGFja2VkIGZpeHVwczsKLSBjbGVhbnVwIHRlbXBvcmFy
eSBmaWxlIGluIGNkLWVtdSB0ZXN0LgoKRnJlZGlhbm8gWmlnbGlvICgxMCk6CiAgZml4dXAhIHVz
Yi1yZWRpcjogYWRkIGZpbGVzIGZvciBTQ1NJIGFuZCBVU0IgTVNDIGltcGxlbWVudGF0aW9uCiAg
Y2Qtc2NzaTogRG8gbm90IGV4cG9ydCBzZW5zZSBjb2RlIGNvbnN0YW50cwogIGJ1aWxkOiBEbyBu
b3QgYnVpbGQgdXNicmVkaXIgZGVwZW5kZW50IGZpbGUgaXMgdXNicmVkaXIgZGlzYWJsZWQKICB0
ZXN0LWNkLWVtdTogQWRkIGJhc2UgdGVzdCBmb3IgY2QtZW11bGF0aW9uCiAgdXNiLWJhY2tlbmQ6
IFJld3JpdGUgVVNCIGVtdWxhdGlvbiBzdXBwb3J0CiAgYnVpbGQ6IFVzZSBhIGNvbnZlbmllbmNl
IGxpYnJhcnkgZm9yIHRlc3RzCiAgdGVzdC1jZC1lbXU6IFRlc3QgYXR0YWNoL2RldGFjaCBlbXVs
YXRlZCBkZXZpY2UKICB0ZXN0LWNkLWVtdTogVGVzdCBkZXRhY2ggYW5kIHJlYXR0YWNoCiAgdGVz
dC1jZC1lbXU6IE1ha2Ugc3VyZSB3ZSBjYW4gY2FsbAogICAgc3BpY2VfdXNiX2JhY2tlbmRfY2hh
bm5lbF9mbHVzaF93cml0ZXMKICB0ZXN0LWNkLWVtdTogVGVzdCBubyBsaWJ1c2IgY29udGV4dCBz
dXBwb3J0CgpZdXJpIEJlbmRpdG92aWNoICg4KToKICB1c2ItcmVkaXI6IGRlZmluZSBpbnRlcmZh
Y2VzIHRvIHN1cHBvcnQgZW11bGF0ZWQgZGV2aWNlcwogIHVzYi1yZWRpcjogbW92ZSBpbXBsZW1l
bnRhdGlvbiBvZiBkZXZpY2UgZGVzY3JpcHRpb24gdG8gVVNCIGJhY2tlbmQKICB1c2ItcmVkaXI6
IGRvIG5vdCB1c2Ugc3BpY2VfdXNiX2FjbF9oZWxwZXIgZm9yIGVtdWxhdGVkIGRldmljZXMKICB1
c2ItcmVkaXI6IGV4dGVuZCBVU0IgYmFja2VuZCB0byBzdXBwb3J0IGVtdWxhdGVkIGRldmljZXMK
ICB1c2ItcmVkaXI6IGFkZCBmaWxlcyBmb3IgU0NTSSBhbmQgVVNCIE1TQyBpbXBsZW1lbnRhdGlv
bgogIHVzYi1yZWRpcjogYWRkIGltcGxlbWVudGF0aW9uIG9mIGVtdWxhdGVkIENEIGRldmljZQog
IHVzYi1yZWRpcjogZW5hYmxlIHJlZGlyZWN0aW9uIG9mIGVtdWxhdGVkIENEIGRyaXZlCiAgdXNi
LXJlZGlyOiBjb21tYW5kLWxpbmUgb3B0aW9uIHRvIGNyZWF0ZSBlbXVsYXRlZCBDRCBkcml2ZQoK
IHNyYy9jZC1zY3NpLWRldi1wYXJhbXMuaCB8ICAgNDYgKwogc3JjL2NkLXNjc2kuYyAgICAgICAg
ICAgIHwgMjc0MiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwogc3JjL2Nk
LXNjc2kuaCAgICAgICAgICAgIHwgIDExNyArKwogc3JjL2NkLXVzYi1idWxrLW1zZC5jICAgIHwg
IDU0MyArKysrKysrKwogc3JjL2NkLXVzYi1idWxrLW1zZC5oICAgIHwgIDEzMSArKwogc3JjL2No
YW5uZWwtdXNicmVkaXIuYyAgIHwgICAzMSArLQogc3JjL21lc29uLmJ1aWxkICAgICAgICAgIHwg
ICAyMSArLQogc3JjL3Njc2ktY29uc3RhbnRzLmggICAgIHwgIDMyMSArKysrKwogc3JjL3NwaWNl
LW9wdGlvbi5jICAgICAgIHwgICAxNyArCiBzcmMvdXNiLWJhY2tlbmQuYyAgICAgICAgfCAgNzcy
ICsrKysrKysrKystCiBzcmMvdXNiLWJhY2tlbmQuaCAgICAgICAgfCAgICA0ICsKIHNyYy91c2It
ZGV2aWNlLWNkLmMgICAgICB8ICA3ODQgKysrKysrKysrKysKIHNyYy91c2ItZGV2aWNlLWNkLmgg
ICAgICB8ICAgMzQgKwogc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jIHwgICA2MyArLQogc3JjL3Vz
Yi1lbXVsYXRpb24uaCAgICAgIHwgICA4OCArKwogc3JjL3VzYnV0aWwuYyAgICAgICAgICAgIHwg
ICAgMyAtCiBzcmMvdXNidXRpbC5oICAgICAgICAgICAgfCAgICA0IC0KIHRlc3RzL2NkLWVtdS5j
ICAgICAgICAgICB8ICAzMjAgKysrKysKIHRlc3RzL21lc29uLmJ1aWxkICAgICAgICB8ICAgMTIg
Ky0KIDE5IGZpbGVzIGNoYW5nZWQsIDU5NTIgaW5zZXJ0aW9ucygrKSwgMTAxIGRlbGV0aW9ucygt
KQogY3JlYXRlIG1vZGUgMTAwNjQ0IHNyYy9jZC1zY3NpLWRldi1wYXJhbXMuaAogY3JlYXRlIG1v
ZGUgMTAwNjQ0IHNyYy9jZC1zY3NpLmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBzcmMvY2Qtc2NzaS5o
CiBjcmVhdGUgbW9kZSAxMDA2NDQgc3JjL2NkLXVzYi1idWxrLW1zZC5jCiBjcmVhdGUgbW9kZSAx
MDA2NDQgc3JjL2NkLXVzYi1idWxrLW1zZC5oCiBjcmVhdGUgbW9kZSAxMDA2NDQgc3JjL3Njc2kt
Y29uc3RhbnRzLmgKIGNyZWF0ZSBtb2RlIDEwMDY0NCBzcmMvdXNiLWRldmljZS1jZC5jCiBjcmVh
dGUgbW9kZSAxMDA2NDQgc3JjL3VzYi1kZXZpY2UtY2QuaAogY3JlYXRlIG1vZGUgMTAwNjQ0IHNy
Yy91c2ItZW11bGF0aW9uLmgKIGNyZWF0ZSBtb2RlIDEwMDY0NCB0ZXN0cy9jZC1lbXUuYwoKLS0g
CjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
U3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRl
dmVs
