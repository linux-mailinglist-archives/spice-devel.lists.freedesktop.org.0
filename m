Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 224DB7A77F
	for <lists+spice-devel@lfdr.de>; Tue, 30 Jul 2019 14:04:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 771CE6E4DD;
	Tue, 30 Jul 2019 12:04:09 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 086D96E4DD
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:04:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A420F30C62A4
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:04:08 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AED885D6B2;
 Tue, 30 Jul 2019 12:04:07 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Jul 2019 13:03:08 +0100
Message-Id: <20190730120331.17967-20-fziglio@redhat.com>
In-Reply-To: <20190730120331.17967-1-fziglio@redhat.com>
References: <20190730120331.17967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Tue, 30 Jul 2019 12:04:08 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 20/44] fixup! usb-redir: add files
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

VXNlIHByb3BlciB0eXBlIGZvciBDZFNjc2lUYXJnZXQgYW5kIFVzYkNkQnVsa01zZERldmljZSB1
c2luZwpmb3J3YXJkIGRlY2xhcmF0aW9ucywgbm8gcmVhc29ucyB0byBoaWRlLgpBdm9pZHMgdXNl
bGVzcyBjYXN0cyBhbmQgaW1wcm92ZSB0eXBlIHNhZmV0eS4KLS0tCiBzcmMvY2Qtc2NzaS5jICAg
ICAgICAgfCA0NiArKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiBz
cmMvY2Qtc2NzaS5oICAgICAgICAgfCAzMCArKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tCiBz
cmMvY2QtdXNiLWJ1bGstbXNkLmMgfCA0NCArKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLQogc3JjL2NkLXVzYi1idWxrLW1zZC5oIHwgMjkgKysrKysrKysrKysrKystLS0t
LS0tLS0tLS0tCiA0IGZpbGVzIGNoYW5nZWQsIDYxIGluc2VydGlvbnMoKyksIDg4IGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL3NyYy9jZC1zY3NpLmMgYi9zcmMvY2Qtc2NzaS5jCmluZGV4IDcx
NWZlMWM2Li4zOTY5MjU3NiAxMDA2NDQKLS0tIGEvc3JjL2NkLXNjc2kuYworKysgYi9zcmMvY2Qt
c2NzaS5jCkBAIC0zNyw4ICszNyw2IEBACiAKICNkZWZpbmUgTUFYX0xVTlMgICAzMgogCi10eXBl
ZGVmIHN0cnVjdCBDZFNjc2lUYXJnZXQgQ2RTY3NpVGFyZ2V0OwotCiB0eXBlZGVmIGVudW0gQ2RT
Y3NpUG93ZXJDb25kaXRpb24gewogICAgIENEX1NDU0lfUE9XRVJfU1RPUFBFRCwKICAgICBDRF9T
Q1NJX1BPV0VSX0FDVElWRSwKQEAgLTQxMiw3ICs0MTAsNyBAQCBzdGF0aWMgdm9pZCBjZF9zY3Np
X2NtZF9uYW1lc19pbml0KHZvaWQpCiAgICAgY21kX25hbWVzX2luaXRpYWxpemVkID0gVFJVRTsK
IH0KIAotdm9pZCAqY2Rfc2NzaV90YXJnZXRfYWxsb2Modm9pZCAqdGFyZ2V0X3VzZXJfZGF0YSwg
dWludDMyX3QgbWF4X2x1bnMpCitDZFNjc2lUYXJnZXQgKmNkX3Njc2lfdGFyZ2V0X2FsbG9jKHZv
aWQgKnRhcmdldF91c2VyX2RhdGEsIHVpbnQzMl90IG1heF9sdW5zKQogewogICAgIENkU2NzaVRh
cmdldCAqc3Q7CiAKQEAgLTQzMSwxMCArNDI5LDEwIEBAIHZvaWQgKmNkX3Njc2lfdGFyZ2V0X2Fs
bG9jKHZvaWQgKnRhcmdldF91c2VyX2RhdGEsIHVpbnQzMl90IG1heF9sdW5zKQogCiAgICAgY2Rf
c2NzaV9jbWRfbmFtZXNfaW5pdCgpOwogCi0gICAgcmV0dXJuICh2b2lkICopc3Q7CisgICAgcmV0
dXJuIHN0OwogfQogCi12b2lkIGNkX3Njc2lfdGFyZ2V0X2ZyZWUodm9pZCAqc2NzaV90YXJnZXQp
Cit2b2lkIGNkX3Njc2lfdGFyZ2V0X2ZyZWUoQ2RTY3NpVGFyZ2V0ICpzY3NpX3RhcmdldCkKIHsK
ICAgICBjZF9zY3NpX3RhcmdldF9yZXNldChzY3NpX3RhcmdldCk7CiAgICAgZ19mcmVlKHNjc2lf
dGFyZ2V0KTsKQEAgLTQ1MiwxMCArNDUwLDkgQEAgc3RhdGljIGlubGluZSBnYm9vbGVhbiBjZF9z
Y3NpX3RhcmdldF9sdW5fcmVhbGl6ZWQoQ2RTY3NpVGFyZ2V0ICpzdCwgdWludDMyX3QgbHUKICAg
ICByZXR1cm4gKHN0LT5udW1fbHVucyA9PSAwIHx8ICFzdC0+dW5pdHNbbHVuXS5yZWFsaXplZCkg
PyBGQUxTRSA6IFRSVUU7CiB9CiAKLWludCBjZF9zY3NpX2Rldl9yZWFsaXplKHZvaWQgKnNjc2lf
dGFyZ2V0LCB1aW50MzJfdCBsdW4sCitpbnQgY2Rfc2NzaV9kZXZfcmVhbGl6ZShDZFNjc2lUYXJn
ZXQgKnN0LCB1aW50MzJfdCBsdW4sCiAgICAgICAgICAgICAgICAgICAgICAgICBjb25zdCBDZFNj
c2lEZXZpY2VQYXJhbWV0ZXJzICpkZXZfcGFyYW1zKQogewotICAgIENkU2NzaVRhcmdldCAqc3Qg
PSAoQ2RTY3NpVGFyZ2V0ICopc2NzaV90YXJnZXQ7CiAgICAgQ2RTY3NpTFUgKmRldjsKIAogICAg
IGlmICghY2Rfc2NzaV90YXJnZXRfbHVuX2xlZ2FsKHN0LCBsdW4pKSB7CkBAIC01MDksOSArNTA2
LDggQEAgc3RhdGljIHZvaWQgY2Rfc2NzaV9sdV9tZWRpYV9yZXNldChDZFNjc2lMVSAqZGV2KQog
ICAgIGRldi0+bnVtX2Jsb2NrcyA9IDA7CiB9CiAKLWludCBjZF9zY3NpX2Rldl9sb2NrKHZvaWQg
KnNjc2lfdGFyZ2V0LCB1aW50MzJfdCBsdW4sIGdib29sZWFuIGxvY2spCitpbnQgY2Rfc2NzaV9k
ZXZfbG9jayhDZFNjc2lUYXJnZXQgKnN0LCB1aW50MzJfdCBsdW4sIGdib29sZWFuIGxvY2spCiB7
Ci0gICAgQ2RTY3NpVGFyZ2V0ICpzdCA9IChDZFNjc2lUYXJnZXQgKilzY3NpX3RhcmdldDsKICAg
ICBDZFNjc2lMVSAqZGV2OwogCiAgICAgaWYgKCFjZF9zY3NpX3RhcmdldF9sdW5fbGVnYWwoc3Qs
IGx1bikpIHsKQEAgLTU1MSwxMCArNTQ3LDkgQEAgc3RhdGljIHZvaWQgY2Rfc2NzaV9sdV91bmxv
YWQoQ2RTY3NpTFUgKmRldikKICAgICBkZXYtPmxvYWRlZCA9IEZBTFNFOwogfQogCi1pbnQgY2Rf
c2NzaV9kZXZfbG9hZCh2b2lkICpzY3NpX3RhcmdldCwgdWludDMyX3QgbHVuLAoraW50IGNkX3Nj
c2lfZGV2X2xvYWQoQ2RTY3NpVGFyZ2V0ICpzdCwgdWludDMyX3QgbHVuLAogICAgICAgICAgICAg
ICAgICAgICAgY29uc3QgQ2RTY3NpTWVkaWFQYXJhbWV0ZXJzICptZWRpYV9wYXJhbXMpCiB7Ci0g
ICAgQ2RTY3NpVGFyZ2V0ICpzdCA9IChDZFNjc2lUYXJnZXQgKilzY3NpX3RhcmdldDsKICAgICBD
ZFNjc2lMVSAqZGV2OwogCiAgICAgaWYgKCFjZF9zY3NpX3RhcmdldF9sdW5fbGVnYWwoc3QsIGx1
bikpIHsKQEAgLTU3OSw5ICs1NzQsOCBAQCBpbnQgY2Rfc2NzaV9kZXZfbG9hZCh2b2lkICpzY3Np
X3RhcmdldCwgdWludDMyX3QgbHVuLAogICAgIHJldHVybiAwOwogfQogCi1pbnQgY2Rfc2NzaV9k
ZXZfZ2V0X2luZm8odm9pZCAqc2NzaV90YXJnZXQsIHVpbnQzMl90IGx1biwgQ2RTY3NpRGV2aWNl
SW5mbyAqbHVuX2luZm8pCitpbnQgY2Rfc2NzaV9kZXZfZ2V0X2luZm8oQ2RTY3NpVGFyZ2V0ICpz
dCwgdWludDMyX3QgbHVuLCBDZFNjc2lEZXZpY2VJbmZvICpsdW5faW5mbykKIHsKLSAgICBDZFNj
c2lUYXJnZXQgKnN0ID0gKENkU2NzaVRhcmdldCAqKXNjc2lfdGFyZ2V0OwogICAgIENkU2NzaUxV
ICpkZXY7CiAKICAgICBpZiAoIWNkX3Njc2lfdGFyZ2V0X2x1bl9sZWdhbChzdCwgbHVuKSkgewpA
QCAtNjA2LDkgKzYwMCw4IEBAIGludCBjZF9zY3NpX2Rldl9nZXRfaW5mbyh2b2lkICpzY3NpX3Rh
cmdldCwgdWludDMyX3QgbHVuLCBDZFNjc2lEZXZpY2VJbmZvICpsdW5fCiAgICAgcmV0dXJuIDA7
CiB9CiAKLWludCBjZF9zY3NpX2Rldl91bmxvYWQodm9pZCAqc2NzaV90YXJnZXQsIHVpbnQzMl90
IGx1bikKK2ludCBjZF9zY3NpX2Rldl91bmxvYWQoQ2RTY3NpVGFyZ2V0ICpzdCwgdWludDMyX3Qg
bHVuKQogewotICAgIENkU2NzaVRhcmdldCAqc3QgPSAoQ2RTY3NpVGFyZ2V0ICopc2NzaV90YXJn
ZXQ7CiAgICAgQ2RTY3NpTFUgKmRldjsKIAogICAgIGlmICghY2Rfc2NzaV90YXJnZXRfbHVuX2xl
Z2FsKHN0LCBsdW4pKSB7CkBAIC02MzksOSArNjMyLDggQEAgaW50IGNkX3Njc2lfZGV2X3VubG9h
ZCh2b2lkICpzY3NpX3RhcmdldCwgdWludDMyX3QgbHVuKQogICAgIHJldHVybiAwOwogfQogCi1p
bnQgY2Rfc2NzaV9kZXZfdW5yZWFsaXplKHZvaWQgKnNjc2lfdGFyZ2V0LCB1aW50MzJfdCBsdW4p
CitpbnQgY2Rfc2NzaV9kZXZfdW5yZWFsaXplKENkU2NzaVRhcmdldCAqc3QsIHVpbnQzMl90IGx1
bikKIHsKLSAgICBDZFNjc2lUYXJnZXQgKnN0ID0gKENkU2NzaVRhcmdldCAqKXNjc2lfdGFyZ2V0
OwogICAgIENkU2NzaUxVICpkZXY7CiAKICAgICBpZiAoIWNkX3Njc2lfdGFyZ2V0X2x1bl9sZWdh
bChzdCwgbHVuKSkgewpAQCAtNjgxLDkgKzY3Myw4IEBAIGludCBjZF9zY3NpX2Rldl91bnJlYWxp
emUodm9pZCAqc2NzaV90YXJnZXQsIHVpbnQzMl90IGx1bikKICAgICByZXR1cm4gMDsKIH0KIAot
aW50IGNkX3Njc2lfZGV2X3Jlc2V0KHZvaWQgKnNjc2lfdGFyZ2V0LCB1aW50MzJfdCBsdW4pCitp
bnQgY2Rfc2NzaV9kZXZfcmVzZXQoQ2RTY3NpVGFyZ2V0ICpzdCwgdWludDMyX3QgbHVuKQogewot
ICAgIENkU2NzaVRhcmdldCAqc3QgPSAoQ2RTY3NpVGFyZ2V0ICopc2NzaV90YXJnZXQ7CiAgICAg
Q2RTY3NpTFUgKmRldjsKIAogICAgIGlmICghY2Rfc2NzaV90YXJnZXRfbHVuX2xlZ2FsKHN0LCBs
dW4pKSB7CkBAIC03MjQsMTAgKzcxNSw4IEBAIHN0YXRpYyB2b2lkIGNkX3Njc2lfdGFyZ2V0X2Rv
X3Jlc2V0KENkU2NzaVRhcmdldCAqc3QpCiAgICAgY2Rfc2NzaV90YXJnZXRfcmVzZXRfY29tcGxl
dGUoc3QtPnVzZXJfZGF0YSk7CiB9CiAKLWludCBjZF9zY3NpX3RhcmdldF9yZXNldCh2b2lkICpz
Y3NpX3RhcmdldCkKK2ludCBjZF9zY3NpX3RhcmdldF9yZXNldChDZFNjc2lUYXJnZXQgKnN0KQog
ewotICAgIENkU2NzaVRhcmdldCAqc3QgPSAoQ2RTY3NpVGFyZ2V0ICopc2NzaV90YXJnZXQ7Ci0K
ICAgICBpZiAoc3QtPnN0YXRlID09IENEX1NDU0lfVEdUX1NUQVRFX1JFU0VUKSB7CiAgICAgICAg
IFNQSUNFX0RFQlVHKCJUYXJnZXQgYWxyZWFkeSBpbiByZXNldCIpOwogICAgICAgICByZXR1cm4g
LTE7CkBAIC03MzYsNyArNzI1LDcgQEAgaW50IGNkX3Njc2lfdGFyZ2V0X3Jlc2V0KHZvaWQgKnNj
c2lfdGFyZ2V0KQogICAgIHN0LT5zdGF0ZSA9IENEX1NDU0lfVEdUX1NUQVRFX1JFU0VUOwogCiAg
ICAgaWYgKHN0LT5jdXJfcmVxICE9IE5VTEwpIHsKLSAgICAgICAgY2Rfc2NzaV9kZXZfcmVxdWVz
dF9jYW5jZWwoc2NzaV90YXJnZXQsIHN0LT5jdXJfcmVxKTsKKyAgICAgICAgY2Rfc2NzaV9kZXZf
cmVxdWVzdF9jYW5jZWwoc3QsIHN0LT5jdXJfcmVxKTsKICAgICAgICAgaWYgKHN0LT5jdXJfcmVx
ICE9IE5VTEwpIHsKICAgICAgICAgICAgIFNQSUNFX0RFQlVHKCJUYXJnZXQgcmVzZXQgaW4gcHJv
Z3Jlc3MuLi4iKTsKICAgICAgICAgICAgIHJldHVybiAwOwpAQCAtMjU3Niw5ICsyNTY1LDggQEAg
c3RhdGljIHZvaWQgY2Rfc2NzaV9jbWRfcmVhZChDZFNjc2lMVSAqZGV2LCBDZFNjc2lSZXF1ZXN0
ICpyZXEpCiAgICAgY2Rfc2NzaV9yZWFkX2FzeW5jX3N0YXJ0KGRldiwgcmVxKTsKIH0KIAotdm9p
ZCBjZF9zY3NpX2Rldl9yZXF1ZXN0X3N1Ym1pdCh2b2lkICpzY3NpX3RhcmdldCwgQ2RTY3NpUmVx
dWVzdCAqcmVxKQordm9pZCBjZF9zY3NpX2Rldl9yZXF1ZXN0X3N1Ym1pdChDZFNjc2lUYXJnZXQg
KnN0LCBDZFNjc2lSZXF1ZXN0ICpyZXEpCiB7Ci0gICAgQ2RTY3NpVGFyZ2V0ICpzdCA9IChDZFNj
c2lUYXJnZXQgKilzY3NpX3RhcmdldDsKICAgICB1aW50MzJfdCBsdW4gPSByZXEtPmx1bjsKICAg
ICB1aW50MzJfdCBvcGNvZGUgPSAodWludDMyX3QpcmVxLT5jZGJbMF07CiAgICAgY29uc3QgY2hh
ciAqY21kX25hbWUgPSBzY3NpX2NtZF9uYW1lW29wY29kZV07CkBAIC0yNzM0LDEwICsyNzIyLDgg
QEAgZG9uZToKICAgICB9CiB9CiAKLXZvaWQgY2Rfc2NzaV9kZXZfcmVxdWVzdF9jYW5jZWwodm9p
ZCAqc2NzaV90YXJnZXQsIENkU2NzaVJlcXVlc3QgKnJlcSkKK3ZvaWQgY2Rfc2NzaV9kZXZfcmVx
dWVzdF9jYW5jZWwoQ2RTY3NpVGFyZ2V0ICpzdCwgQ2RTY3NpUmVxdWVzdCAqcmVxKQogewotICAg
IENkU2NzaVRhcmdldCAqc3QgPSAoQ2RTY3NpVGFyZ2V0ICopc2NzaV90YXJnZXQ7Ci0KICAgICBp
ZiAoc3QtPmN1cl9yZXEgPT0gcmVxKSB7CiAgICAgICAgIGlmIChyZXEtPnJlcV9zdGF0ZSA9PSBT
Q1NJX1JFUV9SVU5OSU5HKSB7CiAgICAgICAgICAgICBTUElDRV9ERUJVRygicmVxdWVzdF9jYW5j
ZWw6IGx1bjogJSIgR19HVUlOVDMyX0ZPUk1BVApAQCAtMjc1MiwxMCArMjczOCw4IEBAIHZvaWQg
Y2Rfc2NzaV9kZXZfcmVxdWVzdF9jYW5jZWwodm9pZCAqc2NzaV90YXJnZXQsIENkU2NzaVJlcXVl
c3QgKnJlcSkKICAgICB9CiB9CiAKLXZvaWQgY2Rfc2NzaV9kZXZfcmVxdWVzdF9yZWxlYXNlKHZv
aWQgKnNjc2lfdGFyZ2V0LCBDZFNjc2lSZXF1ZXN0ICpyZXEpCit2b2lkIGNkX3Njc2lfZGV2X3Jl
cXVlc3RfcmVsZWFzZShDZFNjc2lUYXJnZXQgKnN0LCBDZFNjc2lSZXF1ZXN0ICpyZXEpCiB7Ci0g
ICAgQ2RTY3NpVGFyZ2V0ICpzdCA9IChDZFNjc2lUYXJnZXQgKilzY3NpX3RhcmdldDsKLQogICAg
IHN0LT5jdXJfcmVxID0gTlVMTDsKICAgICBjZF9zY3NpX3JlcV9pbml0KHJlcSk7CiAKZGlmZiAt
LWdpdCBhL3NyYy9jZC1zY3NpLmggYi9zcmMvY2Qtc2NzaS5oCmluZGV4IDBmZDdiOTBiLi4wYjZh
YjljMSAxMDA2NDQKLS0tIGEvc3JjL2NkLXNjc2kuaAorKysgYi9zcmMvY2Qtc2NzaS5oCkBAIC04
NSwyNSArODUsMjkgQEAgdHlwZWRlZiBzdHJ1Y3QgQ2RTY3NpUmVxdWVzdCB7CiBDZFNjc2lSZXFT
dGF0ZSBjZF9zY3NpX2dldF9yZXFfc3RhdGUoQ2RTY3NpUmVxdWVzdCAqcmVxKTsKIAogLyogU0NT
SSB0YXJnZXQvZGV2aWNlIEFQSSAqLwordHlwZWRlZiBzdHJ1Y3QgQ2RTY3NpVGFyZ2V0IENkU2Nz
aVRhcmdldDsKIAotdm9pZCAqY2Rfc2NzaV90YXJnZXRfYWxsb2Modm9pZCAqdGFyZ2V0X3VzZXJf
ZGF0YSwgdWludDMyX3QgbWF4X2x1bnMpOyAvKiB0byBiZSB1c2VkIGluIGNhbGxiYWNrcyAqLwot
dm9pZCBjZF9zY3NpX3RhcmdldF9mcmVlKHZvaWQgKnNjc2lfdGFyZ2V0KTsKKy8qIHRvIGJlIHVz
ZWQgaW4gY2FsbGJhY2tzICovCitDZFNjc2lUYXJnZXQgKmNkX3Njc2lfdGFyZ2V0X2FsbG9jKHZv
aWQgKnRhcmdldF91c2VyX2RhdGEsIHVpbnQzMl90IG1heF9sdW5zKTsKK3ZvaWQgY2Rfc2NzaV90
YXJnZXRfZnJlZShDZFNjc2lUYXJnZXQgKnNjc2lfdGFyZ2V0KTsKIAotaW50IGNkX3Njc2lfZGV2
X3JlYWxpemUodm9pZCAqc2NzaV90YXJnZXQsIHVpbnQzMl90IGx1biwgY29uc3QgQ2RTY3NpRGV2
aWNlUGFyYW1ldGVycyAqZGV2X3BhcmFtcyk7Ci1pbnQgY2Rfc2NzaV9kZXZfdW5yZWFsaXplKHZv
aWQgKnNjc2lfdGFyZ2V0LCB1aW50MzJfdCBsdW4pOworaW50IGNkX3Njc2lfZGV2X3JlYWxpemUo
Q2RTY3NpVGFyZ2V0ICpzY3NpX3RhcmdldCwgdWludDMyX3QgbHVuLAorICAgICAgICAgICAgICAg
ICAgICAgICAgY29uc3QgQ2RTY3NpRGV2aWNlUGFyYW1ldGVycyAqZGV2X3BhcmFtcyk7CitpbnQg
Y2Rfc2NzaV9kZXZfdW5yZWFsaXplKENkU2NzaVRhcmdldCAqc2NzaV90YXJnZXQsIHVpbnQzMl90
IGx1bik7CiAKLWludCBjZF9zY3NpX2Rldl9sb2NrKHZvaWQgKnNjc2lfdGFyZ2V0LCB1aW50MzJf
dCBsdW4sIGdib29sZWFuIGxvY2spOwotaW50IGNkX3Njc2lfZGV2X2xvYWQodm9pZCAqc2NzaV90
YXJnZXQsIHVpbnQzMl90IGx1biwgY29uc3QgQ2RTY3NpTWVkaWFQYXJhbWV0ZXJzICptZWRpYV9w
YXJhbXMpOwotaW50IGNkX3Njc2lfZGV2X2dldF9pbmZvKHZvaWQgKnNjc2lfdGFyZ2V0LCB1aW50
MzJfdCBsdW4sIENkU2NzaURldmljZUluZm8gKmx1bl9pbmZvKTsKLWludCBjZF9zY3NpX2Rldl91
bmxvYWQodm9pZCAqc2NzaV90YXJnZXQsIHVpbnQzMl90IGx1bik7CitpbnQgY2Rfc2NzaV9kZXZf
bG9jayhDZFNjc2lUYXJnZXQgKnNjc2lfdGFyZ2V0LCB1aW50MzJfdCBsdW4sIGdib29sZWFuIGxv
Y2spOworaW50IGNkX3Njc2lfZGV2X2xvYWQoQ2RTY3NpVGFyZ2V0ICpzY3NpX3RhcmdldCwgdWlu
dDMyX3QgbHVuLAorICAgICAgICAgICAgICAgICAgICAgY29uc3QgQ2RTY3NpTWVkaWFQYXJhbWV0
ZXJzICptZWRpYV9wYXJhbXMpOworaW50IGNkX3Njc2lfZGV2X2dldF9pbmZvKENkU2NzaVRhcmdl
dCAqc2NzaV90YXJnZXQsIHVpbnQzMl90IGx1biwgQ2RTY3NpRGV2aWNlSW5mbyAqbHVuX2luZm8p
OworaW50IGNkX3Njc2lfZGV2X3VubG9hZChDZFNjc2lUYXJnZXQgKnNjc2lfdGFyZ2V0LCB1aW50
MzJfdCBsdW4pOwogCi12b2lkIGNkX3Njc2lfZGV2X3JlcXVlc3Rfc3VibWl0KHZvaWQgKnNjc2lf
dGFyZ2V0LCBDZFNjc2lSZXF1ZXN0ICpyZXF1ZXN0KTsKLXZvaWQgY2Rfc2NzaV9kZXZfcmVxdWVz
dF9jYW5jZWwodm9pZCAqc2NzaV90YXJnZXQsIENkU2NzaVJlcXVlc3QgKnJlcXVlc3QpOwotdm9p
ZCBjZF9zY3NpX2Rldl9yZXF1ZXN0X3JlbGVhc2Uodm9pZCAqc2NzaV90YXJnZXQsIENkU2NzaVJl
cXVlc3QgKnJlcXVlc3QpOwordm9pZCBjZF9zY3NpX2Rldl9yZXF1ZXN0X3N1Ym1pdChDZFNjc2lU
YXJnZXQgKnNjc2lfdGFyZ2V0LCBDZFNjc2lSZXF1ZXN0ICpyZXF1ZXN0KTsKK3ZvaWQgY2Rfc2Nz
aV9kZXZfcmVxdWVzdF9jYW5jZWwoQ2RTY3NpVGFyZ2V0ICpzY3NpX3RhcmdldCwgQ2RTY3NpUmVx
dWVzdCAqcmVxdWVzdCk7Cit2b2lkIGNkX3Njc2lfZGV2X3JlcXVlc3RfcmVsZWFzZShDZFNjc2lU
YXJnZXQgKnNjc2lfdGFyZ2V0LCBDZFNjc2lSZXF1ZXN0ICpyZXF1ZXN0KTsKIAotaW50IGNkX3Nj
c2lfZGV2X3Jlc2V0KHZvaWQgKnNjc2lfdGFyZ2V0LCB1aW50MzJfdCBsdW4pOworaW50IGNkX3Nj
c2lfZGV2X3Jlc2V0KENkU2NzaVRhcmdldCAqc2NzaV90YXJnZXQsIHVpbnQzMl90IGx1bik7CiAK
LWludCBjZF9zY3NpX3RhcmdldF9yZXNldCh2b2lkICpzY3NpX3RhcmdldCk7CitpbnQgY2Rfc2Nz
aV90YXJnZXRfcmVzZXQoQ2RTY3NpVGFyZ2V0ICpzY3NpX3RhcmdldCk7CiAKIC8qIENhbGxiYWNr
cyAqLwogCmRpZmYgLS1naXQgYS9zcmMvY2QtdXNiLWJ1bGstbXNkLmMgYi9zcmMvY2QtdXNiLWJ1
bGstbXNkLmMKaW5kZXggYzFhM2E4YzMuLjg5ZTk0ZjhlIDEwMDY0NAotLS0gYS9zcmMvY2QtdXNi
LWJ1bGstbXNkLmMKKysrIGIvc3JjL2NkLXVzYi1idWxrLW1zZC5jCkBAIC04Myw3ICs4Myw3IEBA
IHR5cGVkZWYgc3RydWN0IFVzYkNkQnVsa01zZFJlcXVlc3QgewogCiB0eXBlZGVmIHN0cnVjdCBV
c2JDZEJ1bGtNc2REZXZpY2UgewogICAgIFVzYkNkU3RhdGUgc3RhdGU7Ci0gICAgdm9pZCAqc2Nz
aV90YXJnZXQ7IC8qIHNjc2kgaGFuZGxlICovCisgICAgQ2RTY3NpVGFyZ2V0ICpzY3NpX3Rhcmdl
dDsgLyogc2NzaSBoYW5kbGUgKi8KICAgICB2b2lkICp1c2JfdXNlcl9kYXRhOyAvKiB1c2VkIGlu
IGNhbGxiYWNrcyB0byB1c2IgKi8KICAgICBVc2JDZEJ1bGtNc2RSZXF1ZXN0IHVzYl9yZXE7IC8q
IG5vdyBzdXBwb3J0aW5nIGEgc2luZ2xlIGNtZCAqLwogICAgIHVpbnQ4X3QgKmRhdGFfYnVmOwpA
QCAtMTIwLDExICsxMjAsOSBAQCBzdGF0aWMgdm9pZCBjZF91c2JfYnVsa19tc2Rfc2V0X3N0YXRl
KFVzYkNkQnVsa01zZERldmljZSAqY2QsIFVzYkNkU3RhdGUgc3RhdGUpCiAgICAgY2QtPnN0YXRl
ID0gc3RhdGU7CiB9CiAKLXZvaWQgKmNkX3VzYl9idWxrX21zZF9hbGxvYyh2b2lkICp1c2JfdXNl
cl9kYXRhLCB1aW50MzJfdCBtYXhfbHVucykKK1VzYkNkQnVsa01zZERldmljZSAqY2RfdXNiX2J1
bGtfbXNkX2FsbG9jKHZvaWQgKnVzYl91c2VyX2RhdGEsIHVpbnQzMl90IG1heF9sdW5zKQogewot
ICAgIFVzYkNkQnVsa01zZERldmljZSAqY2Q7Ci0KLSAgICBjZCA9IGdfbWFsbG9jMChzaXplb2Yo
KmNkKSk7CisgICAgVXNiQ2RCdWxrTXNkRGV2aWNlICpjZCA9IGdfbmV3MChVc2JDZEJ1bGtNc2RE
ZXZpY2UsIDEpOwogCiAgICAgY2QtPmRhdGFfYnVmX2xlbiA9IDI1NiAqIDEwMjQ7CiAgICAgY2Qt
PmRhdGFfYnVmID0gZ19tYWxsb2MoY2QtPmRhdGFfYnVmX2xlbik7CkBAIC0xNDEsMTAgKzEzOSw5
IEBAIHZvaWQgKmNkX3VzYl9idWxrX21zZF9hbGxvYyh2b2lkICp1c2JfdXNlcl9kYXRhLCB1aW50
MzJfdCBtYXhfbHVucykKICAgICByZXR1cm4gY2Q7CiB9CiAKLWludCBjZF91c2JfYnVsa19tc2Rf
cmVhbGl6ZSh2b2lkICpkZXZpY2UsIHVpbnQzMl90IGx1biwKK2ludCBjZF91c2JfYnVsa19tc2Rf
cmVhbGl6ZShVc2JDZEJ1bGtNc2REZXZpY2UgKmNkLCB1aW50MzJfdCBsdW4sCiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgY29uc3QgQ2RTY3NpRGV2aWNlUGFyYW1ldGVycyAqZGV2X3BhcmFt
cykKIHsKLSAgICBVc2JDZEJ1bGtNc2REZXZpY2UgKmNkID0gKFVzYkNkQnVsa01zZERldmljZSAq
KWRldmljZTsKICAgICBDZFNjc2lEZXZpY2VQYXJhbWV0ZXJzIHNjc2lfZGV2X3BhcmFtczsKICAg
ICBpbnQgcmM7CiAKQEAgLTE2OCw5ICsxNjUsOCBAQCBpbnQgY2RfdXNiX2J1bGtfbXNkX3JlYWxp
emUodm9pZCAqZGV2aWNlLCB1aW50MzJfdCBsdW4sCiAgICAgcmV0dXJuIDA7CiB9CiAKLWludCBj
ZF91c2JfYnVsa19tc2RfbG9jayh2b2lkICpkZXZpY2UsIHVpbnQzMl90IGx1biwgZ2Jvb2xlYW4g
bG9jaykKK2ludCBjZF91c2JfYnVsa19tc2RfbG9jayhVc2JDZEJ1bGtNc2REZXZpY2UgKmNkLCB1
aW50MzJfdCBsdW4sIGdib29sZWFuIGxvY2spCiB7Ci0gICAgVXNiQ2RCdWxrTXNkRGV2aWNlICpj
ZCA9IChVc2JDZEJ1bGtNc2REZXZpY2UgKilkZXZpY2U7CiAgICAgaW50IHJjOwogCiAgICAgcmMg
PSBjZF9zY3NpX2Rldl9sb2NrKGNkLT5zY3NpX3RhcmdldCwgbHVuLCBsb2NrKTsKQEAgLTE4Mywx
MCArMTc5LDkgQEAgaW50IGNkX3VzYl9idWxrX21zZF9sb2NrKHZvaWQgKmRldmljZSwgdWludDMy
X3QgbHVuLCBnYm9vbGVhbiBsb2NrKQogICAgIHJldHVybiAwOwogfQogCi1pbnQgY2RfdXNiX2J1
bGtfbXNkX2xvYWQodm9pZCAqZGV2aWNlLCB1aW50MzJfdCBsdW4sCitpbnQgY2RfdXNiX2J1bGtf
bXNkX2xvYWQoVXNiQ2RCdWxrTXNkRGV2aWNlICpjZCwgdWludDMyX3QgbHVuLAogICAgICAgICAg
ICAgICAgICAgICAgICAgIGNvbnN0IENkU2NzaU1lZGlhUGFyYW1ldGVycyAqbWVkaWFfcGFyYW1z
KQogewotICAgIFVzYkNkQnVsa01zZERldmljZSAqY2QgPSAoVXNiQ2RCdWxrTXNkRGV2aWNlICop
ZGV2aWNlOwogICAgIGludCByYzsKIAogICAgIHJjID0gY2Rfc2NzaV9kZXZfbG9hZChjZC0+c2Nz
aV90YXJnZXQsIGx1biwgbWVkaWFfcGFyYW1zKTsKQEAgLTE5OSw5ICsxOTQsOCBAQCBpbnQgY2Rf
dXNiX2J1bGtfbXNkX2xvYWQodm9pZCAqZGV2aWNlLCB1aW50MzJfdCBsdW4sCiAgICAgcmV0dXJu
IDA7CiB9CiAKLWludCBjZF91c2JfYnVsa19tc2RfZ2V0X2luZm8odm9pZCAqZGV2aWNlLCB1aW50
MzJfdCBsdW4sIENkU2NzaURldmljZUluZm8gKmx1bl9pbmZvKQoraW50IGNkX3VzYl9idWxrX21z
ZF9nZXRfaW5mbyhVc2JDZEJ1bGtNc2REZXZpY2UgKmNkLCB1aW50MzJfdCBsdW4sIENkU2NzaURl
dmljZUluZm8gKmx1bl9pbmZvKQogewotICAgIFVzYkNkQnVsa01zZERldmljZSAqY2QgPSAoVXNi
Q2RCdWxrTXNkRGV2aWNlICopZGV2aWNlOwogICAgIGludCByYzsKIAogICAgIHJjID0gY2Rfc2Nz
aV9kZXZfZ2V0X2luZm8oY2QtPnNjc2lfdGFyZ2V0LCBsdW4sIGx1bl9pbmZvKTsKQEAgLTIxMyw5
ICsyMDcsOCBAQCBpbnQgY2RfdXNiX2J1bGtfbXNkX2dldF9pbmZvKHZvaWQgKmRldmljZSwgdWlu
dDMyX3QgbHVuLCBDZFNjc2lEZXZpY2VJbmZvICpsdW5faQogICAgIHJldHVybiAwOwogfQogCi1p
bnQgY2RfdXNiX2J1bGtfbXNkX3VubG9hZCh2b2lkICpkZXZpY2UsIHVpbnQzMl90IGx1bikKK2lu
dCBjZF91c2JfYnVsa19tc2RfdW5sb2FkKFVzYkNkQnVsa01zZERldmljZSAqY2QsIHVpbnQzMl90
IGx1bikKIHsKLSAgICBVc2JDZEJ1bGtNc2REZXZpY2UgKmNkID0gKFVzYkNkQnVsa01zZERldmlj
ZSAqKWRldmljZTsKICAgICBpbnQgcmM7CiAKICAgICByYyA9IGNkX3Njc2lfZGV2X3VubG9hZChj
ZC0+c2NzaV90YXJnZXQsIGx1bik7CkBAIC0yMjgsOSArMjIxLDggQEAgaW50IGNkX3VzYl9idWxr
X21zZF91bmxvYWQodm9pZCAqZGV2aWNlLCB1aW50MzJfdCBsdW4pCiAgICAgcmV0dXJuIDA7CiB9
CiAKLWludCBjZF91c2JfYnVsa19tc2RfdW5yZWFsaXplKHZvaWQgKmRldmljZSwgdWludDMyX3Qg
bHVuKQoraW50IGNkX3VzYl9idWxrX21zZF91bnJlYWxpemUoVXNiQ2RCdWxrTXNkRGV2aWNlICpj
ZCwgdWludDMyX3QgbHVuKQogewotICAgIFVzYkNkQnVsa01zZERldmljZSAqY2QgPSAoVXNiQ2RC
dWxrTXNkRGV2aWNlICopZGV2aWNlOwogICAgIGludCByYzsKIAogICAgIHJjID0gY2Rfc2NzaV9k
ZXZfdW5yZWFsaXplKGNkLT5zY3NpX3RhcmdldCwgbHVuKTsKQEAgLTI0MywyMCArMjM1LDE2IEBA
IGludCBjZF91c2JfYnVsa19tc2RfdW5yZWFsaXplKHZvaWQgKmRldmljZSwgdWludDMyX3QgbHVu
KQogICAgIHJldHVybiAwOwogfQogCi12b2lkIGNkX3VzYl9idWxrX21zZF9mcmVlKHZvaWQgKmRl
dmljZSkKK3ZvaWQgY2RfdXNiX2J1bGtfbXNkX2ZyZWUoVXNiQ2RCdWxrTXNkRGV2aWNlICpjZCkK
IHsKLSAgICBVc2JDZEJ1bGtNc2REZXZpY2UgKmNkID0gKFVzYkNkQnVsa01zZERldmljZSAqKWRl
dmljZTsKLQogICAgIGNkX3Njc2lfdGFyZ2V0X2ZyZWUoY2QtPnNjc2lfdGFyZ2V0KTsKICAgICBn
X2ZyZWUoY2QpOwogCiAgICAgU1BJQ0VfREVCVUcoIkZyZWUiKTsKIH0KIAotaW50IGNkX3VzYl9i
dWxrX21zZF9yZXNldCh2b2lkICpkZXZpY2UpCitpbnQgY2RfdXNiX2J1bGtfbXNkX3Jlc2V0KFVz
YkNkQnVsa01zZERldmljZSAqY2QpCiB7Ci0gICAgVXNiQ2RCdWxrTXNkRGV2aWNlICpjZCA9IChV
c2JDZEJ1bGtNc2REZXZpY2UgKilkZXZpY2U7Ci0KICAgICBjZF9zY3NpX3RhcmdldF9yZXNldChj
ZC0+c2NzaV90YXJnZXQpOwogICAgIGNkX3VzYl9idWxrX21zZF9zZXRfc3RhdGUoY2QsIFVTQl9D
RF9TVEFURV9DQlcpOwogCkBAIC0zOTUsOSArMzgzLDggQEAgc3RhdGljIHZvaWQgdXNiX2NkX3Nl
bmRfZGF0YV9pbihVc2JDZEJ1bGtNc2REZXZpY2UgKmNkLCB1aW50MzJfdCBtYXhfbGVuKQogICAg
IH0KIH0KIAotaW50IGNkX3VzYl9idWxrX21zZF9yZWFkKHZvaWQgKmRldmljZSwgdWludDMyX3Qg
bWF4X2xlbikKK2ludCBjZF91c2JfYnVsa19tc2RfcmVhZChVc2JDZEJ1bGtNc2REZXZpY2UgKmNk
LCB1aW50MzJfdCBtYXhfbGVuKQogewotICAgIFVzYkNkQnVsa01zZERldmljZSAqY2QgPSAoVXNi
Q2RCdWxrTXNkRGV2aWNlICopZGV2aWNlOwogICAgIFVzYkNkQnVsa01zZFJlcXVlc3QgKnVzYl9y
ZXEgPSAmY2QtPnVzYl9yZXE7CiAgICAgQ2RTY3NpUmVxdWVzdCAqc2NzaV9yZXEgPSAmdXNiX3Jl
cS0+c2NzaV9yZXE7CiAKQEAgLTQ4Nyw5ICs0NzQsOCBAQCB2b2lkIGNkX3Njc2lfZGV2X3JlcXVl
c3RfY29tcGxldGUodm9pZCAqdGFyZ2V0X3VzZXJfZGF0YSwgQ2RTY3NpUmVxdWVzdCAqc2NzaV9y
ZQogICAgIH0KIH0KIAotaW50IGNkX3VzYl9idWxrX21zZF9jYW5jZWxfcmVhZCh2b2lkICpkZXZp
Y2UpCitpbnQgY2RfdXNiX2J1bGtfbXNkX2NhbmNlbF9yZWFkKFVzYkNkQnVsa01zZERldmljZSAq
Y2QpCiB7Ci0gICAgVXNiQ2RCdWxrTXNkRGV2aWNlICpjZCA9IChVc2JDZEJ1bGtNc2REZXZpY2Ug
KilkZXZpY2U7CiAgICAgVXNiQ2RCdWxrTXNkUmVxdWVzdCAqdXNiX3JlcSA9ICZjZC0+dXNiX3Jl
cTsKICAgICBDZFNjc2lSZXF1ZXN0ICpzY3NpX3JlcSA9ICZ1c2JfcmVxLT5zY3NpX3JlcTsKIApA
QCAtNDk3LDEwICs0ODMsOCBAQCBpbnQgY2RfdXNiX2J1bGtfbXNkX2NhbmNlbF9yZWFkKHZvaWQg
KmRldmljZSkKICAgICByZXR1cm4gMDsKIH0KIAotaW50IGNkX3VzYl9idWxrX21zZF93cml0ZSh2
b2lkICpkZXZpY2UsIHVpbnQ4X3QgKmJ1Zl9vdXQsIHVpbnQzMl90IGJ1Zl9vdXRfbGVuKQoraW50
IGNkX3VzYl9idWxrX21zZF93cml0ZShVc2JDZEJ1bGtNc2REZXZpY2UgKmNkLCB1aW50OF90ICpi
dWZfb3V0LCB1aW50MzJfdCBidWZfb3V0X2xlbikKIHsKLSAgICBVc2JDZEJ1bGtNc2REZXZpY2Ug
KmNkID0gKFVzYkNkQnVsa01zZERldmljZSAqKWRldmljZTsKLQogICAgIHN3aXRjaCAoY2QtPnN0
YXRlKSB7CiAgICAgY2FzZSBVU0JfQ0RfU1RBVEVfQ0JXOiAvKiBDb21tYW5kIEJsb2NrICovCiAg
ICAgICAgIHBhcnNlX3VzYl9tc2RfY21kKGNkLCBidWZfb3V0LCBidWZfb3V0X2xlbik7CmRpZmYg
LS1naXQgYS9zcmMvY2QtdXNiLWJ1bGstbXNkLmggYi9zcmMvY2QtdXNiLWJ1bGstbXNkLmgKaW5k
ZXggOTc2YjQyMmEuLjQ5MmE0OWI4IDEwMDY0NAotLS0gYS9zcmMvY2QtdXNiLWJ1bGstbXNkLmgK
KysrIGIvc3JjL2NkLXVzYi1idWxrLW1zZC5oCkBAIC0zNSw2ICszNSw4IEBAIHR5cGVkZWYgZW51
bSBDZFVzYkJ1bGtTdGF0dXMgewogICAgIEJVTEtfU1RBVFVTX1NUQUxMLAogfSBDZFVzYkJ1bGtT
dGF0dXM7CiAKK3R5cGVkZWYgc3RydWN0IFVzYkNkQnVsa01zZERldmljZSBVc2JDZEJ1bGtNc2RE
ZXZpY2U7CisKIC8qIFVTQiBiYWNrZW5kIGNhbGxiYWNrcyAqLwogCiAvKiBjYWxsZWQgb24gY29t
cGxldGVkIHJlYWQgZGF0YSBidWxrIHRyYW5zZmVyCkBAIC02MCw1NiArNjIsNTUgQEAgdm9pZCBj
ZF91c2JfYnVsa19tc2RfcmVzZXRfY29tcGxldGUodm9pZCAqdXNlcl9kYXRhLAogLyogTVNEIGJh
Y2tlbmQgYXBpICovCiAKIC8qIGFsbG9jYXRlIG5ldyBkZXZpY2UgZGVzY3JpcHRvciAqLwotdm9p
ZCAqY2RfdXNiX2J1bGtfbXNkX2FsbG9jKHZvaWQgKnVzZXJfZGF0YSwgdWludDMyX3QgbWF4X2x1
bik7CitVc2JDZEJ1bGtNc2REZXZpY2UgKmNkX3VzYl9idWxrX21zZF9hbGxvYyh2b2lkICp1c2Vy
X2RhdGEsIHVpbnQzMl90IG1heF9sdW4pOwogCiAvKiBmcmVlIGRldmljZSBkZXNjcmlwdG9yICov
Ci12b2lkIGNkX3VzYl9idWxrX21zZF9mcmVlKHZvaWQgKmRldmljZSk7Cit2b2lkIGNkX3VzYl9i
dWxrX21zZF9mcmVlKFVzYkNkQnVsa01zZERldmljZSAqZGV2aWNlKTsKIAotLyogY29uZmlndXJl
IGEgbmV3IExvZ2ljYWwgVW5pdCB0byBiZSByZXByZXNlbnRlZCBieSB0aGUgZGV2aWNlCisvKiBj
b25maWd1cmUgYSBuZXcgTG9naWNhbCBVbml0IHRvIGJlIHJlcHJlc2VuIHRlZCBieSB0aGUgZGV2
aWNlCiAgKiAgcmV0dXJuczogZXJyb3IgY29kZQogICovCi1pbnQgY2RfdXNiX2J1bGtfbXNkX3Jl
YWxpemUodm9pZCAqZGV2aWNlLCB1aW50MzJfdCBsdW4sCitpbnQgY2RfdXNiX2J1bGtfbXNkX3Jl
YWxpemUoVXNiQ2RCdWxrTXNkRGV2aWNlICpkZXZpY2UsIHVpbnQzMl90IGx1biwKICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBjb25zdCBDZFNjc2lEZXZpY2VQYXJhbWV0ZXJzICpkZXZfcGFy
YW1zKTsKIAogLyogbG9jayB0aGUgZGV2aWNlLCBwcmV2ZW50IHVubG9hZGluZwogICogcmV0dXJu
czogZXJyb3IgY29kZQogICovCi1pbnQgY2RfdXNiX2J1bGtfbXNkX2xvY2sodm9pZCAqZGV2aWNl
LCB1aW50MzJfdCBsdW4sIGdib29sZWFuIGxvY2spOworaW50IGNkX3VzYl9idWxrX21zZF9sb2Nr
KFVzYkNkQnVsa01zZERldmljZSAqZGV2aWNlLCB1aW50MzJfdCBsdW4sIGdib29sZWFuIGxvY2sp
OwogCiAvKiBsb2FkIG5ldyBtZWRpYSwgaWYgYWxyZWFkeSBsb2FkZWQsIHNpbXVsYXRlIG1lZGlh
IGNoYW5nZQogICogcmV0dXJuczogZXJyb3IgY29kZQogICovCi1pbnQgY2RfdXNiX2J1bGtfbXNk
X2xvYWQodm9pZCAqZGV2aWNlLCB1aW50MzJfdCBsdW4sCitpbnQgY2RfdXNiX2J1bGtfbXNkX2xv
YWQoVXNiQ2RCdWxrTXNkRGV2aWNlICpkZXZpY2UsIHVpbnQzMl90IGx1biwKICAgICAgICAgICAg
ICAgICAgICAgICAgICBjb25zdCBDZFNjc2lNZWRpYVBhcmFtZXRlcnMgKm1lZGlhX3BhcmFtcyk7
CiAKIC8qIHF1ZXJ5IHVuaXQgcGFyYW1ldGVycyBhbmQgc3RhdHVzCiAgKiByZXR1cm5zOiBlcnJv
ciBjb2RlCiAgKi8KLWludCBjZF91c2JfYnVsa19tc2RfZ2V0X2luZm8odm9pZCAqZGV2aWNlLCB1
aW50MzJfdCBsdW4sCitpbnQgY2RfdXNiX2J1bGtfbXNkX2dldF9pbmZvKFVzYkNkQnVsa01zZERl
dmljZSAqZGV2aWNlLCB1aW50MzJfdCBsdW4sCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IENkU2NzaURldmljZUluZm8gKmx1bl9pbmZvKTsKIAogLyogdW5sb2FkIHRoZSBtZWRpYQogICog
cmV0dXJuczogZXJyb3IgY29kZQogICovCi1pbnQgY2RfdXNiX2J1bGtfbXNkX3VubG9hZCh2b2lk
ICpkZXZpY2UsIHVpbnQzMl90IGx1bik7CitpbnQgY2RfdXNiX2J1bGtfbXNkX3VubG9hZChVc2JD
ZEJ1bGtNc2REZXZpY2UgKmRldmljZSwgdWludDMyX3QgbHVuKTsKIAogLyogZGV0YWNoIGEgTG9n
aWNhbCBVbml0CiAgKiByZXR1cm5zOiBlcnJvciBjb2RlCiAgKi8KLWludCBjZF91c2JfYnVsa19t
c2RfdW5yZWFsaXplKHZvaWQgKmRldmljZSwgdWludDMyX3QgbHVuKTsKK2ludCBjZF91c2JfYnVs
a19tc2RfdW5yZWFsaXplKFVzYkNkQnVsa01zZERldmljZSAqZGV2aWNlLCB1aW50MzJfdCBsdW4p
OwogCiAvKiByZXNldCB0aGUgZGV2aWNlIGluc3RhbmNlOyBjYW5jZWwgYWxsIElPIG9wcywgcmVz
ZXQgc3RhdGUKICAqIHJldHVybnM6IGVycm9yIGNvZGUKICAqLwotaW50IGNkX3VzYl9idWxrX21z
ZF9yZXNldCh2b2lkICpkZXZpY2UpOworaW50IGNkX3VzYl9idWxrX21zZF9yZXNldChVc2JDZEJ1
bGtNc2REZXZpY2UgKmRldmljZSk7CiAKIAogLyogcGVyZm9ybSBhIHdyaXRlIGRhdGEgYnVsayB0
cmFuc2ZlcgogICogZGF0YV9sZW4gLSBsZW5ndGggb2YgYXZhaWxhYmxlIGRhdGEgdG8gd3JpdGUK
ICAqIHJldHVybnM6IGVycm9yIGNvZGUKICAqLwotaW50IGNkX3VzYl9idWxrX21zZF93cml0ZSh2
b2lkICpkZXZpY2UsCi0gICAgICAgICAgICAgICAgICAgICAgICAgIHVpbnQ4X3QgKmJ1ZiwgdWlu
dDMyX3QgZGF0YV9sZW4pOworaW50IGNkX3VzYl9idWxrX21zZF93cml0ZShVc2JDZEJ1bGtNc2RE
ZXZpY2UqZGV2aWNlLCB1aW50OF90ICpidWYsIHVpbnQzMl90IGRhdGFfbGVuKTsKIAogCiAvKiBw
ZXJmb3JtIGEgcmVhZCBkYXRhIGJ1bGsgdHJhbnNmZXIKQEAgLTEyMSwxMiArMTIyLDEyIEBAIGlu
dCBjZF91c2JfYnVsa19tc2Rfd3JpdGUodm9pZCAqZGV2aWNlLAogICoKICAqIHJldHVybnM6IDAg
LSBzdWNjZXNzLCAtMSAtIGVycm9yCiAgKi8KLWludCBjZF91c2JfYnVsa19tc2RfcmVhZCh2b2lk
ICpkZXZpY2UsIHVpbnQzMl90IG1heF9sZW4pOworaW50IGNkX3VzYl9idWxrX21zZF9yZWFkKFVz
YkNkQnVsa01zZERldmljZSAqZGV2aWNlLCB1aW50MzJfdCBtYXhfbGVuKTsKIAogLyogY2FuY2Vs
cyBwZW5kaW5nIHJlYWQgZGF0YSBidWxrIHRyYW5zZmVyCiAgKiByZXR1cm5zOiBlcnJvciBjb2Rl
CiAgKi8KLWludCBjZF91c2JfYnVsa19tc2RfY2FuY2VsX3JlYWQodm9pZCAqZGV2aWNlKTsKK2lu
dCBjZF91c2JfYnVsa19tc2RfY2FuY2VsX3JlYWQoVXNiQ2RCdWxrTXNkRGV2aWNlICpkZXZpY2Up
OwogCiBHX0VORF9ERUNMUwogCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZl
bEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
