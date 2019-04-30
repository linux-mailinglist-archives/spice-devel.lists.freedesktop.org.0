Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C6FF8D1
	for <lists+spice-devel@lfdr.de>; Tue, 30 Apr 2019 14:25:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FBB18921D;
	Tue, 30 Apr 2019 12:25:02 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BCD98921D
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 12:25:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B9CC83091783
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 12:25:00 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.22])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 721C52B3AB;
 Tue, 30 Apr 2019 12:24:58 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Apr 2019 13:24:17 +0100
Message-Id: <20190430122419.16241-18-fziglio@redhat.com>
In-Reply-To: <20190430122419.16241-1-fziglio@redhat.com>
References: <20190430122419.16241-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Tue, 30 Apr 2019 12:25:00 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server v6 17/19] Disable recording
 filtering for Windows
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

QWx0aG91Z2ggdGhpcyBmZWF0dXJlIGNhbiBiZSBwb3J0ZWQgdG8gV2luZG93cyBkb2luZyBzbyB3
b3VsZApyZXF1aXJlIHRoZSB1c2FnZSBvZiBnX3NwYXduX2FzeW5jX3dpdGhfZmRzLCB3aGljaCBp
cyBvbmx5IGF2YWlsYWJsZQppbiBHTGliIDIuNTggb3Igc29tZSBzcGVjaWZpYyBXaW4zMiBjb2Rl
LgoKU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0t
LQogc2VydmVyL3JlZC1yZWNvcmQtcXhsLmMgICAgfCA3ICsrKysrKysKIHNlcnZlci90ZXN0cy90
ZXN0LXJlY29yZC5jIHwgNyArKysrKy0tCiAyIGZpbGVzIGNoYW5nZWQsIDEyIGluc2VydGlvbnMo
KyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc2VydmVyL3JlZC1yZWNvcmQtcXhsLmMg
Yi9zZXJ2ZXIvcmVkLXJlY29yZC1xeGwuYwppbmRleCBmNmE2MjdmZC4uNmFlNWYyMTMgMTAwNjQ0
Ci0tLSBhL3NlcnZlci9yZWQtcmVjb3JkLXF4bC5jCisrKyBiL3NlcnZlci9yZWQtcmVjb3JkLXF4
bC5jCkBAIC04MTUsNiArODE1LDcgQEAgdm9pZCByZWRfcmVjb3JkX3F4bF9jb21tYW5kKFJlZFJl
Y29yZCAqcmVjb3JkLCBSZWRNZW1TbG90SW5mbyAqc2xvdHMsCiAgICAgcHRocmVhZF9tdXRleF91
bmxvY2soJnJlY29yZC0+bG9jayk7CiB9CiAKKyNpZm5kZWYgX1dJTjMyCiAvKioKICAqIFJlZGly
ZWN0cyBjaGlsZCBvdXRwdXQgdG8gdGhlIGZpbGUgc3BlY2lmaWVkCiAgKi8KQEAgLTgyNyw2ICs4
MjgsNyBAQCBzdGF0aWMgdm9pZCBjaGlsZF9vdXRwdXRfc2V0dXAoZ3BvaW50ZXIgdXNlcl9kYXRh
KQogICAgIH0KICAgICBjbG9zZShmZCk7CiB9CisjZW5kaWYKIAogUmVkUmVjb3JkICpyZWRfcmVj
b3JkX25ldyhjb25zdCBjaGFyICpmaWxlbmFtZSkKIHsKQEAgLTg0Myw2ICs4NDUsNyBAQCBSZWRS
ZWNvcmQgKnJlZF9yZWNvcmRfbmV3KGNvbnN0IGNoYXIgKmZpbGVuYW1lKQogCiAgICAgZmlsdGVy
ID0gZ2V0ZW52KCJTUElDRV9XT1JLRVJfUkVDT1JEX0ZJTFRFUiIpOwogICAgIGlmIChmaWx0ZXIp
IHsKKyNpZm5kZWYgX1dJTjMyCiAgICAgICAgIGdpbnQgYXJnYzsKICAgICAgICAgZ2NoYXIgKiph
cmd2ID0gTlVMTDsKICAgICAgICAgR0Vycm9yICplcnJvciA9IE5VTEw7CkBAIC04NjgsNiArODcx
LDEwIEBAIFJlZFJlY29yZCAqcmVkX3JlY29yZF9uZXcoY29uc3QgY2hhciAqZmlsZW5hbWUpCiAg
ICAgICAgIH0KICAgICAgICAgY2xvc2UoZmRfaW4pOwogICAgICAgICBnX3NwYXduX2Nsb3NlX3Bp
ZChjaGlsZF9waWQpOworI2Vsc2UKKyAgICAgICAgLy8gVE9ETworICAgICAgICBzcGljZV93YXJu
aW5nKCJyZWNvcmRlciBmaWx0ZXIgbm90IHN1cHBvcnRlZCB1bmRlciBXaW5kb3dzIik7CisjZW5k
aWYKICAgICB9CiAKICAgICBpZiAoZndyaXRlKGhlYWRlciwgc2l6ZW9mKGhlYWRlciktMSwgMSwg
ZikgIT0gMSkgewpkaWZmIC0tZ2l0IGEvc2VydmVyL3Rlc3RzL3Rlc3QtcmVjb3JkLmMgYi9zZXJ2
ZXIvdGVzdHMvdGVzdC1yZWNvcmQuYwppbmRleCBkZTNjNmY1Yi4uOGVlMzZjZWIgMTAwNjQ0Ci0t
LSBhL3NlcnZlci90ZXN0cy90ZXN0LXJlY29yZC5jCisrKyBiL3NlcnZlci90ZXN0cy90ZXN0LXJl
Y29yZC5jCkBAIC0zNSw5ICszNSw5IEBAIHRlc3RfcmVjb3JkKGJvb2wgY29tcHJlc3MpCiAgICAg
UmVkUmVjb3JkICpyZWM7CiAgICAgY29uc3QgY2hhciAqZm4gPSBPVVRQVVRfRklMRU5BTUU7CiAK
LSAgICB1bnNldGVudigiU1BJQ0VfV09SS0VSX1JFQ09SRF9GSUxURVIiKTsKKyAgICBnX3Vuc2V0
ZW52KCJTUElDRV9XT1JLRVJfUkVDT1JEX0ZJTFRFUiIpOwogICAgIGlmIChjb21wcmVzcykgewot
ICAgICAgICBzZXRlbnYoIlNQSUNFX1dPUktFUl9SRUNPUkRfRklMVEVSIiwgImd6aXAiLCAxKTsK
KyAgICAgICAgZ19zZXRlbnYoIlNQSUNFX1dPUktFUl9SRUNPUkRfRklMVEVSIiwgImd6aXAiLCAx
KTsKICAgICB9CiAKICAgICAvLyBkZWxldGUgcG9zc2libGUgc3RhbGUgdGVzdCBvdXRwdXQKQEAg
LTk1LDYgKzk1LDkgQEAgaW50CiBtYWluKHZvaWQpCiB7CiAgICAgdGVzdF9yZWNvcmQoZmFsc2Up
OworICAgIC8vIFRPRE8gaW1wbGVtZW50IG9uIFdpbmRvd3MKKyNpZm5kZWYgX1dJTjMyCiAgICAg
dGVzdF9yZWNvcmQodHJ1ZSk7CisjZW5kaWYKICAgICByZXR1cm4gMDsKIH0KLS0gCjIuMjAuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
