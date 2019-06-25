Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 844845541B
	for <lists+spice-devel@lfdr.de>; Tue, 25 Jun 2019 18:12:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF0D76E171;
	Tue, 25 Jun 2019 16:12:00 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C2E46E174
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Jun 2019 16:11:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 48911A101D
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Jun 2019 16:11:59 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.4])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 64F175D70D;
 Tue, 25 Jun 2019 16:11:58 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 25 Jun 2019 17:11:31 +0100
Message-Id: <20190625161147.25211-8-fziglio@redhat.com>
In-Reply-To: <20190625161147.25211-1-fziglio@redhat.com>
References: <20190625161147.25211-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Tue, 25 Jun 2019 16:11:59 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 07/23] websocket: Make
 websocket_ack_close static
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

SXQncyB1c2VkIG9ubHkgaW4gd2Vic29ja2V0LmMuCgpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBa
aWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KLS0tCiBzZXJ2ZXIvd2Vic29ja2V0LmMgfCA0ICsr
Ky0KIHNlcnZlci93ZWJzb2NrZXQuaCB8IDEgLQogMiBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlv
bnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc2VydmVyL3dlYnNvY2tldC5jIGIv
c2VydmVyL3dlYnNvY2tldC5jCmluZGV4IGIwZWE4NjdlNi4uMWIxOGFhNjE0IDEwMDY0NAotLS0g
YS9zZXJ2ZXIvd2Vic29ja2V0LmMKKysrIGIvc2VydmVyL3dlYnNvY2tldC5jCkBAIC02Myw2ICs2
Myw4IEBACiAKICNkZWZpbmUgV0VCU09DS0VUX0dVSUQgIjI1OEVBRkE1LUU5MTQtNDdEQS05NUNB
LUM1QUIwREM4NUIxMSIKIAorc3RhdGljIHZvaWQgd2Vic29ja2V0X2Fja19jbG9zZSh2b2lkICpv
cGFxdWUsIHdlYnNvY2tldF93cml0ZV9jYl90IHdyaXRlX2NiKTsKKwogLyogUGVyZm9ybSBhIGNh
c2UgaW5zZW5zaXRpdmUgc2VhcmNoIGZvciBuZWVkbGUgaW4gaGF5c3RhY2suCiAgICBJZiBmb3Vu
ZCwgcmV0dXJuIGEgcG9pbnRlciB0byB0aGUgYnl0ZSBhZnRlciB0aGUgZW5kIG9mIG5lZWRsZS4K
ICAgIE90aGVyd2lzZSwgcmV0dXJuIE5VTEwgKi8KQEAgLTQ0MSw3ICs0NDMsNyBAQCBpbnQgd2Vi
c29ja2V0X3dyaXRlKFJlZHNXZWJTb2NrZXQgKndzLCBjb25zdCB2b2lkICpidWYsIHNpemVfdCBs
ZW4pCiAgICAgcmV0dXJuIHJjOwogfQogCi12b2lkIHdlYnNvY2tldF9hY2tfY2xvc2Uodm9pZCAq
b3BhcXVlLCB3ZWJzb2NrZXRfd3JpdGVfY2JfdCB3cml0ZV9jYikKK3N0YXRpYyB2b2lkIHdlYnNv
Y2tldF9hY2tfY2xvc2Uodm9pZCAqb3BhcXVlLCB3ZWJzb2NrZXRfd3JpdGVfY2JfdCB3cml0ZV9j
YikKIHsKICAgICB1bnNpZ25lZCBjaGFyIGhlYWRlclsyXTsKIApkaWZmIC0tZ2l0IGEvc2VydmVy
L3dlYnNvY2tldC5oIGIvc2VydmVyL3dlYnNvY2tldC5oCmluZGV4IGUzYTYxMDAwNi4uMTczMTA5
MDUwIDEwMDY0NAotLS0gYS9zZXJ2ZXIvd2Vic29ja2V0LmgKKysrIGIvc2VydmVyL3dlYnNvY2tl
dC5oCkBAIC00OCw3ICs0OCw2IEBAIHR5cGVkZWYgc3RydWN0IHsKIAogYm9vbCB3ZWJzb2NrZXRf
aXNfc3RhcnQoY2hhciAqYnVmKTsKIHZvaWQgd2Vic29ja2V0X2NyZWF0ZV9yZXBseShjaGFyICpi
dWYsIGNoYXIgKm91dGJ1Zik7Ci12b2lkIHdlYnNvY2tldF9hY2tfY2xvc2Uodm9pZCAqb3BhcXVl
LCB3ZWJzb2NrZXRfd3JpdGVfY2JfdCB3cml0ZV9jYik7CiBpbnQgd2Vic29ja2V0X3JlYWQoUmVk
c1dlYlNvY2tldCAqd3MsIHVpbnQ4X3QgKmJ1Ziwgc2l6ZV90IGxlbik7CiBpbnQgd2Vic29ja2V0
X3dyaXRlKFJlZHNXZWJTb2NrZXQgKndzLCBjb25zdCB2b2lkICpidWYsIHNpemVfdCBsZW4pOwog
aW50IHdlYnNvY2tldF93cml0ZXYoUmVkc1dlYlNvY2tldCAqd3MsIGNvbnN0IHN0cnVjdCBpb3Zl
YyAqaW92LCBpbnQgaW92Y250KTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRl
dmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
