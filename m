Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 125726065A
	for <lists+spice-devel@lfdr.de>; Fri,  5 Jul 2019 15:09:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72E3189A67;
	Fri,  5 Jul 2019 13:09:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF15089A67
 for <spice-devel@lists.freedesktop.org>; Fri,  5 Jul 2019 13:09:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 338E03079B60
 for <spice-devel@lists.freedesktop.org>; Fri,  5 Jul 2019 13:09:27 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.13])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3A9689A061;
 Fri,  5 Jul 2019 13:09:25 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri,  5 Jul 2019 14:09:22 +0100
Message-Id: <20190705130922.12132-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Fri, 05 Jul 2019 13:09:27 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server] test-codecs-parsing: On bad
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
bigtKQoKZGlmZiAtLWdpdCBhL3NlcnZlci90ZXN0cy90ZXN0LWNvZGVjcy1wYXJzaW5nLmMgYi9z
ZXJ2ZXIvdGVzdHMvdGVzdC1jb2RlY3MtcGFyc2luZy5jCmluZGV4IDc5OTg1MDFjOS4uMDhkODNj
YzJiIDEwMDY0NAotLS0gYS9zZXJ2ZXIvdGVzdHMvdGVzdC1jb2RlY3MtcGFyc2luZy5jCisrKyBi
L3NlcnZlci90ZXN0cy90ZXN0LWNvZGVjcy1wYXJzaW5nLmMKQEAgLTE0MCw3ICsxNDAsNyBAQCBz
dGF0aWMgdm9pZCBjb2RlY3NfYmFkKHZvaWQpCiAgICAgICAgIGdfdGVzdF9leHBlY3RfbWVzc2Fn
ZShHX0xPR19ET01BSU4sIHRlc3RfY2FzZXNbaV0ubG9nX2xldmVsLCB0ZXN0X2Nhc2VzW2ldLmVy
cm9yX21lc3NhZ2UpOwogICAgICAgICBpZiAodGVzdF9jYXNlc1tpXS5kZWZhdWx0X2Vycl9tZXNz
YWdlKQogICAgICAgICAgICAgZ190ZXN0X2V4cGVjdF9tZXNzYWdlKEdfTE9HX0RPTUFJTiwgR19M
T0dfTEVWRUxfV0FSTklORywgIipGYWlsZWQgdG8gc2V0IHZpZGVvIGNvZGVjcyoiKTsKLSAgICAg
ICAgZ19hc3NlcnRfY21waW50KHNwaWNlX3NlcnZlcl9zZXRfdmlkZW9fY29kZWNzKHNlcnZlciwg
dGVzdF9jYXNlc1tpXS5jb2RlY3MpLCA9PSwgMCk7CisgICAgICAgIHNwaWNlX3NlcnZlcl9zZXRf
dmlkZW9fY29kZWNzKHNlcnZlciwgdGVzdF9jYXNlc1tpXS5jb2RlY3MpOwogICAgICAgICBnX3Rl
c3RfYXNzZXJ0X2V4cGVjdGVkX21lc3NhZ2VzKCk7CiAgICAgfQogCi0tIAoyLjIwLjEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1h
aWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
