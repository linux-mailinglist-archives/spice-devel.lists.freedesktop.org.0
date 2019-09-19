Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6202B7DB1
	for <lists+spice-devel@lfdr.de>; Thu, 19 Sep 2019 17:10:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 826706F446;
	Thu, 19 Sep 2019 15:10:33 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F5846F446
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 15:10:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2C2838A1C97
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 15:10:32 +0000 (UTC)
Received: from dhcp-4-140.tlv.redhat.com (dhcp-4-140.tlv.redhat.com
 [10.35.4.140])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8F24B5D9E5
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 15:10:31 +0000 (UTC)
From: Snir Sheriber <ssheribe@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 19 Sep 2019 18:10:29 +0300
Message-Id: <20190919151029.12840-1-ssheribe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.69]); Thu, 19 Sep 2019 15:10:32 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-streaming-agent] gst-plugin: Changing
 framerate crash when ximagesrc is used
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

V2hlbiBYTElCX0NBUFRVUkUgaXMgc2V0IHRvIDAgYW5kIGZyYW1lcmF0ZSBpcyBzZXQgdG8gYW55
dGhpbmcKb3RoZXIgdGhhbiAyNSBzdHJlYW1pbmctYWdlbnQgY3Jhc2hlcwoKVGhpcyBpcyBhIHJl
Z3JlcnNzaW9uIGNhdXNlZCBieSBlMGNmNzY0YmFmZjlkNjc4YTZlNzU5MTY0NTczMDBkMWZmMzli
MTY5CkZpeGluZyBpdCBpcyBkb25lIGJ5IGFkZGluZyB0aGUgZnJhbWVyYXRlIHZhbHVlIHRvIGNv
bnZlcnRpb24gY2FwcwoKU2lnbmVkLW9mZi1ieTogU25pciBTaGVyaWJlciA8c3NoZXJpYmVAcmVk
aGF0LmNvbT4KLS0tCiBzcmMvZ3N0LXBsdWdpbi5jcHAgfCA1ICsrKystCiAxIGZpbGUgY2hhbmdl
ZCwgNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL2dzdC1w
bHVnaW4uY3BwIGIvc3JjL2dzdC1wbHVnaW4uY3BwCmluZGV4IDcwYmM2YzguLjkyMmI5MGQgMTAw
NjQ0Ci0tLSBhL3NyYy9nc3QtcGx1Z2luLmNwcAorKysgYi9zcmMvZ3N0LXBsdWdpbi5jcHAKQEAg
LTIzNyw3ICsyMzcsMTAgQEAgdm9pZCBHc3RyZWFtZXJGcmFtZUNhcHR1cmU6OnBpcGVsaW5lX2lu
aXQoY29uc3QgR3N0cmVhbWVyRW5jb2RlclNldHRpbmdzICZzZXR0aW4KICAgICBnc3RfYmluX2Fk
ZChiaW4sIHNpbmspOwoKICAgICBHc3RDYXBzVVB0ciBjYXBzKGdzdF9jYXBzX2Zyb21fc3RyaW5n
KCJ2aWRlby94LXJhdyhBTlkpIikpOwotICAgIGxpbmsgPSBnc3RfZWxlbWVudF9saW5rKGNhcHR1
cmUuZ2V0KCksIGNvbnZlcnQuZ2V0KCkpICYmCisgICAgR3N0Q2Fwc1VQdHIgY29udmVydF9jYXBz
KGdzdF9jYXBzX25ld19zaW1wbGUoInZpZGVvL3gtcmF3IiwKKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAiZnJhbWVyYXRlIiwgR1NUX1RZUEVfRlJBQ1RJ
T04sIHNldHRpbmdzLmZwcywgMSwKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBudWxscHRyKSk7CisgICAgbGluayA9IGdzdF9lbGVtZW50X2xpbmtfZmls
dGVyZWQoY2FwdHVyZS5nZXQoKSwgY29udmVydC5nZXQoKSwgY29udmVydF9jYXBzLmdldCgpKSAm
JgogICAgICAgICAgICBnc3RfZWxlbWVudF9saW5rX2ZpbHRlcmVkKGNvbnZlcnQuZ2V0KCksIGVu
Y29kZXIuZ2V0KCksIGNhcHMuZ2V0KCkpICYmCiAgICAgICAgICAgIGdzdF9lbGVtZW50X2xpbmtf
ZmlsdGVyZWQoZW5jb2Rlci5nZXQoKSwgc2luay5nZXQoKSwgc2lua19jYXBzLmdldCgpKTsKICAg
ICBpZiAoIWxpbmspIHsKLS0gCjIuMjEuMApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vc3BpY2UtZGV2ZWw=
