Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A6D7F8CE
	for <lists+spice-devel@lfdr.de>; Tue, 30 Apr 2019 14:24:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A70A89214;
	Tue, 30 Apr 2019 12:24:55 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC7748921D
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 12:24:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6A525C4EDB
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 12:24:53 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.22])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A25872B3B8;
 Tue, 30 Apr 2019 12:24:51 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Apr 2019 13:24:14 +0100
Message-Id: <20190430122419.16241-15-fziglio@redhat.com>
In-Reply-To: <20190430122419.16241-1-fziglio@redhat.com>
References: <20190430122419.16241-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Tue, 30 Apr 2019 12:24:53 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server v6 14/19] dispatcher: Port to
 Windows
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

UmVwbGFjZSBwb2xsIGNhbGwgd2l0aCBzZWxlY3QuCkFzIHNvY2tldCBpcyBzZXQgdG8gbm9uLWJs
b2NraW5nIHdlIG11c3Qgc3VwcG9ydCBpdCBzbyBpZgp3ZSBkZXRlY3QgYW4gRUFHQUlOIGVycm9y
IHdhaXQgZm9yIGRhdGEuCgpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9A
cmVkaGF0LmNvbT4KLS0tCiBzZXJ2ZXIvZGlzcGF0Y2hlci5jIHwgMjAgKysrKysrKysrKysrKysr
KysrKysKIDEgZmlsZSBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvc2Vy
dmVyL2Rpc3BhdGNoZXIuYyBiL3NlcnZlci9kaXNwYXRjaGVyLmMKaW5kZXggYTFmYjcwNWMuLjYw
MmYzMGE4IDEwMDY0NAotLS0gYS9zZXJ2ZXIvZGlzcGF0Y2hlci5jCisrKyBiL3NlcnZlci9kaXNw
YXRjaGVyLmMKQEAgLTE5OSw2ICsxOTksNyBAQCBzdGF0aWMgaW50IHJlYWRfc2FmZShpbnQgZmQs
IHVpbnQ4X3QgKmJ1Ziwgc2l6ZV90IHNpemUsIGludCBibG9jaykKICAgICB9CiAKICAgICBpZiAo
IWJsb2NrKSB7CisjaWZuZGVmIF9XSU4zMgogICAgICAgICBzdHJ1Y3QgcG9sbGZkIHBvbGxmZCA9
IHsuZmQgPSBmZCwgLmV2ZW50cyA9IFBPTExJTiwgLnJldmVudHMgPSAwfTsKICAgICAgICAgd2hp
bGUgKChyZXQgPSBwb2xsKCZwb2xsZmQsIDEsIDApKSA9PSAtMSkgewogICAgICAgICAgICAgaWYg
KGVycm5vID09IEVJTlRSKSB7CkBAIC0yMTEsNiArMjEyLDE1IEBAIHN0YXRpYyBpbnQgcmVhZF9z
YWZlKGludCBmZCwgdWludDhfdCAqYnVmLCBzaXplX3Qgc2l6ZSwgaW50IGJsb2NrKQogICAgICAg
ICBpZiAoIShwb2xsZmQucmV2ZW50cyAmIFBPTExJTikpIHsKICAgICAgICAgICAgIHJldHVybiAw
OwogICAgICAgICB9CisjZWxzZQorICAgICAgICBzdHJ1Y3QgdGltZXZhbCB0diA9IHsgMCwgMCB9
OworICAgICAgICBmZF9zZXQgZmRzOworICAgICAgICBGRF9aRVJPKCZmZHMpOworICAgICAgICBG
RF9TRVQoZmQsICZmZHMpOworICAgICAgICBpZiAoc2VsZWN0KDEsICZmZHMsIE5VTEwsIE5VTEws
ICZ0dikgPCAxKSB7CisgICAgICAgICAgICByZXR1cm4gMDsKKyAgICAgICAgfQorI2VuZGlmCiAg
ICAgfQogICAgIHdoaWxlIChyZWFkX3NpemUgPCBzaXplKSB7CiAgICAgICAgIHJldCA9IHNvY2tl
dF9yZWFkKGZkLCBidWYgKyByZWFkX3NpemUsIHNpemUgLSByZWFkX3NpemUpOwpAQCAtMjE5LDYg
KzIyOSwxNiBAQCBzdGF0aWMgaW50IHJlYWRfc2FmZShpbnQgZmQsIHVpbnQ4X3QgKmJ1Ziwgc2l6
ZV90IHNpemUsIGludCBibG9jaykKICAgICAgICAgICAgICAgICBzcGljZV9kZWJ1ZygiRUlOVFIg
aW4gcmVhZCIpOwogICAgICAgICAgICAgICAgIGNvbnRpbnVlOwogICAgICAgICAgICAgfQorI2lm
ZGVmIF9XSU4zMgorICAgICAgICAgICAgLy8gV2luZG93cyB0dXJucyB0aGlzIHNvY2tldCBub3Qt
YmxvY2tpbmcKKyAgICAgICAgICAgIGlmIChlcnJubyA9PSBFQUdBSU4pIHsKKyAgICAgICAgICAg
ICAgICBmZF9zZXQgZmRzOworICAgICAgICAgICAgICAgIEZEX1pFUk8oJmZkcyk7CisgICAgICAg
ICAgICAgICAgRkRfU0VUKGZkLCAmZmRzKTsKKyAgICAgICAgICAgICAgICBzZWxlY3QoMSwgJmZk
cywgTlVMTCwgTlVMTCwgTlVMTCk7CisgICAgICAgICAgICAgICAgY29udGludWU7CisgICAgICAg
ICAgICB9CisjZW5kaWYKICAgICAgICAgICAgIHJldHVybiAtMTsKICAgICAgICAgfQogICAgICAg
ICBpZiAocmV0ID09IDApIHsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVs
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
