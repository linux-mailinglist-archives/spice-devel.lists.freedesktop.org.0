Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E3ABD61586
	for <lists+spice-devel@lfdr.de>; Sun,  7 Jul 2019 18:26:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB29289A91;
	Sun,  7 Jul 2019 16:26:33 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D14C89A91
 for <spice-devel@lists.freedesktop.org>; Sun,  7 Jul 2019 16:26:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 775DF308620F
 for <spice-devel@lists.freedesktop.org>; Sun,  7 Jul 2019 16:26:31 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.2])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2A4F39F76;
 Sun,  7 Jul 2019 16:26:29 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Sun,  7 Jul 2019 17:26:24 +0100
Message-Id: <20190707162624.12059-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Sun, 07 Jul 2019 16:26:31 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server v2] test-codecs-parsing: On bad
 codec string spice_server_set_video_codecs can fail
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

VGhlIDAgcmVzdWx0IG1lYW5zIHN1Y2Nlc3MgaG93ZXZlciB0aGUgZnVuY3Rpb24gKGNvcnJlY3Rs
eSkgY291bGQKcmVwb3J0IGEgZmFpbHVyZSBpZiB0aGUgc3RyaW5nIGlzIGluY29ycmVjdC4KVGhp
cyBmaXhlcyB0aGUgdGVzdCBhZnRlciBjb21taXQgYjQxNTBkZTNjZDBlNTZkNGNlNDNhOTllZjVj
M2M1ZjVjYmRmYzRhMwooInNwaWNlX3NlcnZlcl9zZXRfdmlkZW9fY29kZWNzOiBmYWlsIHdoZW4g
bm8gY29kZWMgY2FuIGJlIGluc3RhbGxlZCIpLgoKU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmln
bGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQogc2VydmVyL3Rlc3RzL3Rlc3QtY29kZWNzLXBh
cnNpbmcuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlv
bigtKQoKQ2hhbmdlcyBzaW5jZSB2MToKLSBjaGVjayBhbHdheXMgZXJyb3Igc2V0dGluZyBjb2Rl
Y3MuCgpkaWZmIC0tZ2l0IGEvc2VydmVyL3Rlc3RzL3Rlc3QtY29kZWNzLXBhcnNpbmcuYyBiL3Nl
cnZlci90ZXN0cy90ZXN0LWNvZGVjcy1wYXJzaW5nLmMKaW5kZXggNzk5ODUwMWM5Li4wMDM3YzA1
OGYgMTAwNjQ0Ci0tLSBhL3NlcnZlci90ZXN0cy90ZXN0LWNvZGVjcy1wYXJzaW5nLmMKKysrIGIv
c2VydmVyL3Rlc3RzL3Rlc3QtY29kZWNzLXBhcnNpbmcuYwpAQCAtMTQwLDcgKzE0MCw3IEBAIHN0
YXRpYyB2b2lkIGNvZGVjc19iYWQodm9pZCkKICAgICAgICAgZ190ZXN0X2V4cGVjdF9tZXNzYWdl
KEdfTE9HX0RPTUFJTiwgdGVzdF9jYXNlc1tpXS5sb2dfbGV2ZWwsIHRlc3RfY2FzZXNbaV0uZXJy
b3JfbWVzc2FnZSk7CiAgICAgICAgIGlmICh0ZXN0X2Nhc2VzW2ldLmRlZmF1bHRfZXJyX21lc3Nh
Z2UpCiAgICAgICAgICAgICBnX3Rlc3RfZXhwZWN0X21lc3NhZ2UoR19MT0dfRE9NQUlOLCBHX0xP
R19MRVZFTF9XQVJOSU5HLCAiKkZhaWxlZCB0byBzZXQgdmlkZW8gY29kZWNzKiIpOwotICAgICAg
ICBnX2Fzc2VydF9jbXBpbnQoc3BpY2Vfc2VydmVyX3NldF92aWRlb19jb2RlY3Moc2VydmVyLCB0
ZXN0X2Nhc2VzW2ldLmNvZGVjcyksID09LCAwKTsKKyAgICAgICAgZ19hc3NlcnRfY21waW50KHNw
aWNlX3NlcnZlcl9zZXRfdmlkZW9fY29kZWNzKHNlcnZlciwgdGVzdF9jYXNlc1tpXS5jb2RlY3Mp
LCAhPSwgMCk7CiAgICAgICAgIGdfdGVzdF9hc3NlcnRfZXhwZWN0ZWRfbWVzc2FnZXMoKTsKICAg
ICB9CiAKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L3NwaWNlLWRldmVs
