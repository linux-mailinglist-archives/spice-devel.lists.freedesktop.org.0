Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1D82FD9F
	for <lists+spice-devel@lfdr.de>; Thu, 30 May 2019 16:23:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D9F36E35F;
	Thu, 30 May 2019 14:23:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D25776E35D
 for <spice-devel@lists.freedesktop.org>; Thu, 30 May 2019 14:23:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7E15D3005159
 for <spice-devel@lists.freedesktop.org>; Thu, 30 May 2019 14:23:01 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.22])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6F2081001E86;
 Thu, 30 May 2019 14:23:00 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 30 May 2019 15:22:43 +0100
Message-Id: <20190530142254.28937-2-fziglio@redhat.com>
In-Reply-To: <20190530142254.28937-1-fziglio@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Thu, 30 May 2019 14:23:01 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 02/13] char-device: Pull more
 code into red_char_device_send_to_client_tokens_absorb
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

VGhlIDIgY2FsbGVycyByZWRfY2hhcl9kZXZpY2Vfc2VuZF90b19jbGllbnRfdG9rZW5zX3NldCBh
bmQKcmVkX2NoYXJfZGV2aWNlX3NlbmRfdG9fY2xpZW50X3Rva2Vuc19hZGQgYXJlIGRvaW5nIG1v
c3RseQp0aGUgc2FtZSB0aGluZyBzbyBwdXQgY29tbW9uIGNvZGUgdG8KcmVkX2NoYXJfZGV2aWNl
X3NlbmRfdG9fY2xpZW50X3Rva2Vuc19hYnNvcmIuCgpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBa
aWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KLS0tCiBzZXJ2ZXIvY2hhci1kZXZpY2UuYyB8IDQy
ICsrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDE5IGluc2VydGlvbnMoKyksIDIzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NlcnZl
ci9jaGFyLWRldmljZS5jIGIvc2VydmVyL2NoYXItZGV2aWNlLmMKaW5kZXggMGY2YTI5ZDZmLi44
OTU4MWVhNDIgMTAwNjQ0Ci0tLSBhL3NlcnZlci9jaGFyLWRldmljZS5jCisrKyBiL3NlcnZlci9j
aGFyLWRldmljZS5jCkBAIC0zNzcsMTAgKzM3NywyNCBAQCBzdGF0aWMgdm9pZCByZWRfY2hhcl9k
ZXZpY2VfY2xpZW50X3NlbmRfcXVldWVfcHVzaChSZWRDaGFyRGV2aWNlQ2xpZW50ICpkZXZfY2xp
ZQogICAgIH0KIH0KIAotc3RhdGljIHZvaWQgcmVkX2NoYXJfZGV2aWNlX3NlbmRfdG9fY2xpZW50
X3Rva2Vuc19hYnNvcmIoUmVkQ2hhckRldmljZUNsaWVudCAqZGV2X2NsaWVudCwKLSAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVpbnQzMl90
IHRva2VucykKK3N0YXRpYyB2b2lkCityZWRfY2hhcl9kZXZpY2Vfc2VuZF90b19jbGllbnRfdG9r
ZW5zX2Fic29yYihSZWRDaGFyRGV2aWNlICpkZXYsCisgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBSZWRDbGllbnQgKmNsaWVudCwKKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVpbnQzMl90IHRva2VucywKKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGJvb2wgcmVzZXQpCiB7Ci0gICAgUmVk
Q2hhckRldmljZSAqZGV2ID0gZGV2X2NsaWVudC0+ZGV2OworICAgIFJlZENoYXJEZXZpY2VDbGll
bnQgKmRldl9jbGllbnQ7CisKKyAgICBkZXZfY2xpZW50ID0gcmVkX2NoYXJfZGV2aWNlX2NsaWVu
dF9maW5kKGRldiwgY2xpZW50KTsKKworICAgIGlmICghZGV2X2NsaWVudCkgeworICAgICAgICBz
cGljZV9lcnJvcigiY2xpZW50IHdhc24ndCBmb3VuZCBkZXYgJXAgY2xpZW50ICVwIiwgZGV2LCBj
bGllbnQpOworICAgICAgICByZXR1cm47CisgICAgfQorCisgICAgaWYgKHJlc2V0KSB7CisgICAg
ICAgIGRldl9jbGllbnQtPm51bV9zZW5kX3Rva2VucyA9IDA7CisgICAgfQogICAgIGRldl9jbGll
bnQtPm51bV9zZW5kX3Rva2VucyArPSB0b2tlbnM7CiAKICAgICBpZiAoZ19xdWV1ZV9nZXRfbGVu
Z3RoKGRldl9jbGllbnQtPnNlbmRfcXVldWUpKSB7CkBAIC00MDMsMzIgKzQxNywxNCBAQCB2b2lk
IHJlZF9jaGFyX2RldmljZV9zZW5kX3RvX2NsaWVudF90b2tlbnNfYWRkKFJlZENoYXJEZXZpY2Ug
KmRldiwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUmVk
Q2xpZW50ICpjbGllbnQsCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHVpbnQzMl90IHRva2VucykKIHsKLSAgICBSZWRDaGFyRGV2aWNlQ2xpZW50ICpkZXZf
Y2xpZW50OwotCi0gICAgZGV2X2NsaWVudCA9IHJlZF9jaGFyX2RldmljZV9jbGllbnRfZmluZChk
ZXYsIGNsaWVudCk7Ci0KLSAgICBpZiAoIWRldl9jbGllbnQpIHsKLSAgICAgICAgc3BpY2VfZXJy
b3IoImNsaWVudCB3YXNuJ3QgZm91bmQgZGV2ICVwIGNsaWVudCAlcCIsIGRldiwgY2xpZW50KTsK
LSAgICAgICAgcmV0dXJuOwotICAgIH0KLSAgICByZWRfY2hhcl9kZXZpY2Vfc2VuZF90b19jbGll
bnRfdG9rZW5zX2Fic29yYihkZXZfY2xpZW50LCB0b2tlbnMpOworICAgIHJlZF9jaGFyX2Rldmlj
ZV9zZW5kX3RvX2NsaWVudF90b2tlbnNfYWJzb3JiKGRldiwgY2xpZW50LCB0b2tlbnMsIGZhbHNl
KTsKIH0KIAogdm9pZCByZWRfY2hhcl9kZXZpY2Vfc2VuZF90b19jbGllbnRfdG9rZW5zX3NldChS
ZWRDaGFyRGV2aWNlICpkZXYsCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIFJlZENsaWVudCAqY2xpZW50LAogICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICB1aW50MzJfdCB0b2tlbnMpCiB7Ci0gICAgUmVkQ2hhckRldmlj
ZUNsaWVudCAqZGV2X2NsaWVudDsKLQotICAgIGRldl9jbGllbnQgPSByZWRfY2hhcl9kZXZpY2Vf
Y2xpZW50X2ZpbmQoZGV2LCBjbGllbnQpOwotCi0gICAgaWYgKCFkZXZfY2xpZW50KSB7Ci0gICAg
ICAgIHNwaWNlX2Vycm9yKCJjbGllbnQgd2Fzbid0IGZvdW5kIGRldiAlcCBjbGllbnQgJXAiLCBk
ZXYsIGNsaWVudCk7Ci0gICAgICAgIHJldHVybjsKLSAgICB9Ci0KLSAgICBkZXZfY2xpZW50LT5u
dW1fc2VuZF90b2tlbnMgPSAwOwotICAgIHJlZF9jaGFyX2RldmljZV9zZW5kX3RvX2NsaWVudF90
b2tlbnNfYWJzb3JiKGRldl9jbGllbnQsIHRva2Vucyk7CisgICAgcmVkX2NoYXJfZGV2aWNlX3Nl
bmRfdG9fY2xpZW50X3Rva2Vuc19hYnNvcmIoZGV2LCBjbGllbnQsIHRva2VucywgdHJ1ZSk7CiB9
CiAKIC8qKioqKioqKioqKioqKioqKioqKioqKioqKgotLSAKMi4yMC4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxp
c3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
