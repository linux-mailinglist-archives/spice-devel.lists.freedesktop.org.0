Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C1447A783
	for <lists+spice-devel@lfdr.de>; Tue, 30 Jul 2019 14:04:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4ADB6E4E1;
	Tue, 30 Jul 2019 12:04:16 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21B7C6E4E6
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:04:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C0C26796E0
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:04:14 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E4FDF5D6B0;
 Tue, 30 Jul 2019 12:04:13 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Jul 2019 13:03:11 +0100
Message-Id: <20190730120331.17967-23-fziglio@redhat.com>
In-Reply-To: <20190730120331.17967-1-fziglio@redhat.com>
References: <20190730120331.17967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Tue, 30 Jul 2019 12:04:14 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 23/44] fixup! usb-redir: add files
 for SCSI and USB MSC implementation
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

VXNlIGNvbnN0cnVjdG9yIHRvIGluaXRpYWxpemUgc3RydWN0dXJlLCBhdm9pZCBtdWx0aXBsZSBj
YWxscwp0byBjZF9zY3NpX2NtZF9uYW1lc19pbml0IGFuZCBhIHZhcmlhYmxlLgotLS0KIHNyYy9j
ZC1zY3NpLmMgfCAxMSArLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCAxMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zcmMvY2Qtc2NzaS5jIGIvc3JjL2NkLXNj
c2kuYwppbmRleCA5OTYzNzYyZi4uMmEzNTk1YmIgMTAwNjQ0Ci0tLSBhL3NyYy9jZC1zY3NpLmMK
KysrIGIvc3JjL2NkLXNjc2kuYwpAQCAtMTEyLDcgKzExMiw2IEBAIHN0cnVjdCBDZFNjc2lUYXJn
ZXQgewogICAgIENkU2NzaUxVIHVuaXRzW01BWF9MVU5TXTsKIH07CiAKLXN0YXRpYyBnYm9vbGVh
biBjbWRfbmFtZXNfaW5pdGlhbGl6ZWQgPSBGQUxTRTsKIHN0YXRpYyBjb25zdCBjaGFyKiBzY3Np
X2NtZF9uYW1lWzI1Nl07CiAKIC8qIFByZWRlZmluZWQgc2Vuc2UgY29kZXMgKi8KQEAgLTM3MSwx
NCArMzcwLDEwIEBAIHN0YXRpYyB2b2lkIGNkX3Njc2lfY21kX2NvbXBsZXRlX2dvb2QoQ2RTY3Np
TFUgKmRldiwgQ2RTY3NpUmVxdWVzdCAqcmVxKQogCiAvKiBTQ1NJIFRhcmdldCAqLwogCi1zdGF0
aWMgdm9pZCBjZF9zY3NpX2NtZF9uYW1lc19pbml0KHZvaWQpCitTUElDRV9DT05TVFJVQ1RPUl9G
VU5DKGNkX3Njc2lfY21kX25hbWVzX2luaXQpCiB7CiAgICAgdWludDMyX3Qgb3Bjb2RlOwogCi0g
ICAgaWYgKGNtZF9uYW1lc19pbml0aWFsaXplZCkgewotICAgICAgICByZXR1cm47Ci0gICAgfQot
CiAgICAgZm9yIChvcGNvZGUgPSAwOyBvcGNvZGUgPCAyNTY7IG9wY29kZSsrKSB7CiAgICAgICAg
IHNjc2lfY21kX25hbWVbb3Bjb2RlXSA9ICJVTlNVUFBPUlRFRCI7CiAgICAgfQpAQCAtNDA3LDgg
KzQwMiw2IEBAIHN0YXRpYyB2b2lkIGNkX3Njc2lfY21kX25hbWVzX2luaXQodm9pZCkKICAgICBz
Y3NpX2NtZF9uYW1lW1NUQVJUX1NUT1BdID0gIlNUQVJUIFNUT1AgVU5JVCI7CiAgICAgc2NzaV9j
bWRfbmFtZVtNTUNfR0VUX1BFUkZPUk1BTkNFXSA9ICJHRVQgUEVSRk9STUFOQ0UiOwogICAgIHNj
c2lfY21kX25hbWVbTU1DX01FQ0hBTklTTV9TVEFUVVNdID0gIk1FQ0hBTklTTSBTVEFUVVMiOwot
Ci0gICAgY21kX25hbWVzX2luaXRpYWxpemVkID0gVFJVRTsKIH0KIAogQ2RTY3NpVGFyZ2V0ICpj
ZF9zY3NpX3RhcmdldF9hbGxvYyh2b2lkICp0YXJnZXRfdXNlcl9kYXRhLCB1aW50MzJfdCBtYXhf
bHVucykKQEAgLTQyOCw4ICs0MjEsNiBAQCBDZFNjc2lUYXJnZXQgKmNkX3Njc2lfdGFyZ2V0X2Fs
bG9jKHZvaWQgKnRhcmdldF91c2VyX2RhdGEsIHVpbnQzMl90IG1heF9sdW5zKQogICAgIHN0LT5j
YW5jZWxsYWJsZSA9IGdfY2FuY2VsbGFibGVfbmV3KCk7CiAgICAgc3QtPm1heF9sdW5zID0gbWF4
X2x1bnM7CiAKLSAgICBjZF9zY3NpX2NtZF9uYW1lc19pbml0KCk7Ci0KICAgICByZXR1cm4gc3Q7
CiB9CiAKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L3NwaWNlLWRldmVs
