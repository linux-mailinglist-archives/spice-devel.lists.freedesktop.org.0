Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E796B990
	for <lists+spice-devel@lfdr.de>; Wed, 17 Jul 2019 11:49:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A52AE6E0E9;
	Wed, 17 Jul 2019 09:48:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFDC46E0E9
 for <spice-devel@lists.freedesktop.org>; Wed, 17 Jul 2019 09:48:56 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9A0E9C18B2CC
 for <spice-devel@lists.freedesktop.org>; Wed, 17 Jul 2019 09:48:56 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.17])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8BEA5600C8;
 Wed, 17 Jul 2019 09:48:55 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 17 Jul 2019 10:48:51 +0100
Message-Id: <20190717094851.14923-2-fziglio@redhat.com>
In-Reply-To: <20190717094851.14923-1-fziglio@redhat.com>
References: <20190717094851.14923-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Wed, 17 Jul 2019 09:48:56 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 2/2] test-websocket: Reuse
 red_socket_set_non_blocking
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

U2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQog
c2VydmVyL3Rlc3RzL3Rlc3Qtd2Vic29ja2V0LmMgfCAxNSArKystLS0tLS0tLS0tLS0KIDEgZmls
ZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L3NlcnZlci90ZXN0cy90ZXN0LXdlYnNvY2tldC5jIGIvc2VydmVyL3Rlc3RzL3Rlc3Qtd2Vic29j
a2V0LmMKaW5kZXggZTc0Y2I1NDk3Li40MzJhZWVlNWMgMTAwNjQ0Ci0tLSBhL3NlcnZlci90ZXN0
cy90ZXN0LXdlYnNvY2tldC5jCisrKyBiL3NlcnZlci90ZXN0cy90ZXN0LXdlYnNvY2tldC5jCkBA
IC0zOSw2ICszOSw3IEBACiAjaW5jbHVkZSA8Z2xpYi5oPgogI2luY2x1ZGUgPHNpZ25hbC5oPgog
CisjaW5jbHVkZSAibmV0LXV0aWxzLmgiCiAjaW5jbHVkZSAid2Vic29ja2V0LmgiCiAKIC8qCkBA
IC03MywxNiArNzQsNiBAQCBzdGF0aWMgR09wdGlvbkVudHJ5IGNtZF9lbnRyaWVzW10gPSB7CiAK
IHN0YXRpYyB2b2lkIGhhbmRsZV9jbGllbnQoaW50IG5ld19zb2NrKTsKIAotc3RhdGljIHZvaWQK
LXNldF9ub25ibG9ja2luZyhpbnQgc29jaykKLXsKLSAgICAgICAgdW5zaWduZWQgaW50IGlvY3Rs
X25vbmJsb2NraW5nID0gMTsKLQotICAgICAgICBpZiAoaW9jdGwoc29jaywgRklPTkJJTywgJmlv
Y3RsX25vbmJsb2NraW5nKSA8IDApIHsKLSAgICAgICAgICAgIGVycigxLCAiaW9jdGwiKTsKLSAg
ICAgICAgfQotfQotCiBzdGF0aWMgaW50CiB3YWl0X2ZvcihpbnQgc29jaywgc2hvcnQgZXZlbnRz
KQogewpAQCAtMTU4LDcgKzE0OSw3IEBAIG1haW4oaW50IGFyZ2MsIGNoYXIgKiphcmd2KQogICAg
IHNldHNvY2tvcHQoc29jaywgU09MX1NPQ0tFVCwgU09fUkVVU0VBRERSLCAmZW5hYmxlLCBzaXpl
b2YoZW5hYmxlKSk7CiAKICAgICBpZiAobm9uX2Jsb2NraW5nKSB7Ci0gICAgICAgIHNldF9ub25i
bG9ja2luZyhzb2NrKTsKKyAgICAgICAgcmVkX3NvY2tldF9zZXRfbm9uX2Jsb2NraW5nKHNvY2ss
IHRydWUpOwogICAgIH0KIAogICAgIHN0cnVjdCBzb2NrYWRkcl9pbiBzaW47CkBAIC0yMDUsNyAr
MTk2LDcgQEAgc3RhdGljIHZvaWQKIGhhbmRsZV9jbGllbnQoaW50IG5ld19zb2NrKQogewogICAg
IGlmIChub25fYmxvY2tpbmcpIHsKLSAgICAgICAgc2V0X25vbmJsb2NraW5nKG5ld19zb2NrKTsK
KyAgICAgICAgcmVkX3NvY2tldF9zZXRfbm9uX2Jsb2NraW5nKG5ld19zb2NrLCB0cnVlKTsKICAg
ICB9CiAKICAgICBpbnQgZW5hYmxlID0gMTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNw
aWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
