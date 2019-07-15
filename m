Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB15687FC
	for <lists+spice-devel@lfdr.de>; Mon, 15 Jul 2019 13:13:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 980A989996;
	Mon, 15 Jul 2019 11:13:16 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B11D89471
 for <spice-devel@lists.freedesktop.org>; Mon, 15 Jul 2019 11:13:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 469A4307D910
 for <spice-devel@lists.freedesktop.org>; Mon, 15 Jul 2019 11:13:15 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.11])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 493935C231;
 Mon, 15 Jul 2019 11:13:14 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 15 Jul 2019 12:13:08 +0100
Message-Id: <20190715111308.22291-3-fziglio@redhat.com>
In-Reply-To: <20190715111308.22291-1-fziglio@redhat.com>
References: <20190715111308.22291-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Mon, 15 Jul 2019 11:13:15 +0000 (UTC)
Subject: [Spice-devel] [PATCH vd_agent_linux 3/3] x11: Constify XEvent
 argument
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

Tm8gcmVhc29ucyB0byBoYXZlIGl0IG11dGFibGUuCgpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBa
aWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KLS0tCiBzcmMvdmRhZ2VudC94MTEuYyB8IDIzICsr
KysrKysrKysrKy0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwg
MTEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL3ZkYWdlbnQveDExLmMgYi9zcmMvdmRh
Z2VudC94MTEuYwppbmRleCA0MmY0MmU3Li45NjZlYTYyIDEwMDY0NAotLS0gYS9zcmMvdmRhZ2Vu
dC94MTEuYworKysgYi9zcmMvdmRhZ2VudC94MTEuYwpAQCAtNTksMTIgKzU5LDEyIEBAIGludCB2
ZGFnZW50X3gxMV9jYXVnaHRfZXJyb3I7CiAKICNpZm5kZWYgV0lUSF9HVEsKIHN0YXRpYyB2b2lk
IHZkYWdlbnRfeDExX2hhbmRsZV9zZWxlY3Rpb25fbm90aWZ5KHN0cnVjdCB2ZGFnZW50X3gxMSAq
eDExLAotICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgWEV2
ZW50ICpldmVudCwgaW50IGluY3IpOworICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgY29uc3QgWEV2ZW50ICpldmVudCwgaW50IGluY3IpOwogc3RhdGljIHZv
aWQgdmRhZ2VudF94MTFfaGFuZGxlX3NlbGVjdGlvbl9yZXF1ZXN0KHN0cnVjdCB2ZGFnZW50X3gx
MSAqeDExKTsKIHN0YXRpYyB2b2lkIHZkYWdlbnRfeDExX2hhbmRsZV90YXJnZXRzX25vdGlmeShz
dHJ1Y3QgdmRhZ2VudF94MTEgKngxMSwKLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBYRXZlbnQgKmV2ZW50KTsKKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBjb25zdCBYRXZlbnQgKmV2ZW50KTsKIHN0YXRpYyB2b2lkIHZk
YWdlbnRfeDExX2hhbmRsZV9wcm9wZXJ0eV9kZWxldGVfbm90aWZ5KHN0cnVjdCB2ZGFnZW50X3gx
MSAqeDExLAotICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgWEV2ZW50ICpkZWxfZXZlbnQpOworICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgY29uc3QgWEV2ZW50ICpkZWxfZXZlbnQpOwogc3RhdGlj
IHZvaWQgdmRhZ2VudF94MTFfc2VuZF9zZWxlY3Rpb25fbm90aWZ5KHN0cnVjdCB2ZGFnZW50X3gx
MSAqeDExLAogICAgICAgICAgICAgICAgIEF0b20gcHJvcCwgc3RydWN0IHZkYWdlbnRfeDExX3Nl
bGVjdGlvbl9yZXF1ZXN0ICpyZXF1ZXN0KTsKIHN0YXRpYyB2b2lkIHZkYWdlbnRfeDExX3NldF9j
bGlwYm9hcmRfb3duZXIoc3RydWN0IHZkYWdlbnRfeDExICp4MTEsCkBAIC00NjUsMTIgKzQ2NSwx
MyBAQCBzdGF0aWMgaW50IHZkYWdlbnRfeDExX2dldF9jbGlwYm9hcmRfYXRvbShzdHJ1Y3QgdmRh
Z2VudF94MTEgKngxMSwgdWludDhfdCBzZWxlYwogfQogCiBzdGF0aWMgaW50IHZkYWdlbnRfeDEx
X2dldF9jbGlwYm9hcmRfc2VsZWN0aW9uKHN0cnVjdCB2ZGFnZW50X3gxMSAqeDExLAotICAgIFhF
dmVudCAqZXZlbnQsIHVpbnQ4X3QgKnNlbGVjdGlvbikKKyAgICBjb25zdCBYRXZlbnQgKmV2ZW50
LCB1aW50OF90ICpzZWxlY3Rpb24pCiB7CiAgICAgQXRvbSBhdG9tOwogCiAgICAgaWYgKGV2ZW50
LT50eXBlID09IHgxMS0+eGZpeGVzX2V2ZW50X2Jhc2UpIHsKLSAgICAgICAgWEZpeGVzU2VsZWN0
aW9uTm90aWZ5RXZlbnQgKnhmZXYgPSAoWEZpeGVzU2VsZWN0aW9uTm90aWZ5RXZlbnQgKilldmVu
dDsKKyAgICAgICAgY29uc3QgWEZpeGVzU2VsZWN0aW9uTm90aWZ5RXZlbnQgKnhmZXYgPQorICAg
ICAgICAgICAgKGNvbnN0IFhGaXhlc1NlbGVjdGlvbk5vdGlmeUV2ZW50ICopZXZlbnQ7CiAgICAg
ICAgIGF0b20gPSB4ZmV2LT5zZWxlY3Rpb247CiAgICAgfSBlbHNlIGlmIChldmVudC0+dHlwZSA9
PSBTZWxlY3Rpb25Ob3RpZnkpIHsKICAgICAgICAgYXRvbSA9IGV2ZW50LT54c2VsZWN0aW9uLnNl
bGVjdGlvbjsKQEAgLTQ5NCw3ICs0OTUsNyBAQCBzdGF0aWMgaW50IHZkYWdlbnRfeDExX2dldF9j
bGlwYm9hcmRfc2VsZWN0aW9uKHN0cnVjdCB2ZGFnZW50X3gxMSAqeDExLAogfQogI2VuZGlmCiAK
LXN0YXRpYyB2b2lkIHZkYWdlbnRfeDExX2hhbmRsZV9ldmVudChzdHJ1Y3QgdmRhZ2VudF94MTEg
KngxMSwgWEV2ZW50ICpldmVudCkKK3N0YXRpYyB2b2lkIHZkYWdlbnRfeDExX2hhbmRsZV9ldmVu
dChzdHJ1Y3QgdmRhZ2VudF94MTEgKngxMSwgY29uc3QgWEV2ZW50ICpldmVudCkKIHsKICAgICBp
bnQgaSwgaGFuZGxlZCA9IDA7CiAjaWZuZGVmIFdJVEhfR1RLCkBAIC02NTAsNyArNjUxLDcgQEAg
c3RhdGljIGNvbnN0IGNoYXIgKnZkYWdlbnRfeDExX2dldF9hdG9tX25hbWUoc3RydWN0IHZkYWdl
bnRfeDExICp4MTEsIEF0b20gYSkKICAgICByZXR1cm4gWEdldEF0b21OYW1lKHgxMS0+ZGlzcGxh
eSwgYSk7CiB9CiAKLXN0YXRpYyBpbnQgdmRhZ2VudF94MTFfZ2V0X3NlbGVjdGlvbihzdHJ1Y3Qg
dmRhZ2VudF94MTEgKngxMSwgWEV2ZW50ICpldmVudCwKK3N0YXRpYyBpbnQgdmRhZ2VudF94MTFf
Z2V0X3NlbGVjdGlvbihzdHJ1Y3QgdmRhZ2VudF94MTEgKngxMSwgY29uc3QgWEV2ZW50ICpldmVu
dCwKICAgICB1aW50OF90IHNlbGVjdGlvbiwgQXRvbSB0eXBlLCBBdG9tIHByb3AsIGludCBmb3Jt
YXQsCiAgICAgdW5zaWduZWQgY2hhciAqKmRhdGFfcmV0LCBpbnQgaW5jcikKIHsKQEAgLTg0Miw3
ICs4NDMsNyBAQCBzdGF0aWMgdm9pZCB2ZGFnZW50X3gxMV9oYW5kbGVfY29udmVyc2lvbl9yZXF1
ZXN0KHN0cnVjdCB2ZGFnZW50X3gxMSAqeDExKQogfQogCiBzdGF0aWMgdm9pZCB2ZGFnZW50X3gx
MV9oYW5kbGVfc2VsZWN0aW9uX25vdGlmeShzdHJ1Y3QgdmRhZ2VudF94MTEgKngxMSwKLSAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFhFdmVudCAqZXZlbnQs
IGludCBpbmNyKQorICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgY29uc3QgWEV2ZW50ICpldmVudCwgaW50IGluY3IpCiB7CiAgICAgaW50IGxlbiA9IDA7CiAg
ICAgdW5zaWduZWQgY2hhciAqZGF0YSA9IE5VTEw7CkBAIC05MjcsNyArOTI4LDcgQEAgc3RhdGlj
IHZvaWQgdmRhZ2VudF94MTFfcHJpbnRfdGFyZ2V0cyhzdHJ1Y3QgdmRhZ2VudF94MTEgKngxMSwK
IH0KIAogc3RhdGljIHZvaWQgdmRhZ2VudF94MTFfaGFuZGxlX3RhcmdldHNfbm90aWZ5KHN0cnVj
dCB2ZGFnZW50X3gxMSAqeDExLAotICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIFhFdmVudCAqZXZlbnQpCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgY29uc3QgWEV2ZW50ICpldmVudCkKIHsKICAgICBpbnQgaSwgbGVuOwog
ICAgIEF0b20gYXRvbSwgKmF0b21zID0gTlVMTDsKQEAgLTEwMjYsNyArMTAyNyw3IEBAIHN0YXRp
YyB2b2lkIHZkYWdlbnRfeDExX3NlbmRfc2VsZWN0aW9uX25vdGlmeShzdHJ1Y3QgdmRhZ2VudF94
MTEgKngxMSwKIH0KIAogc3RhdGljIHZvaWQgdmRhZ2VudF94MTFfc2VuZF90YXJnZXRzKHN0cnVj
dCB2ZGFnZW50X3gxMSAqeDExLAotICAgIHVpbnQ4X3Qgc2VsZWN0aW9uLCBYRXZlbnQgKmV2ZW50
KQorICAgIHVpbnQ4X3Qgc2VsZWN0aW9uLCBjb25zdCBYRXZlbnQgKmV2ZW50KQogewogICAgIEF0
b20gcHJvcCwgdGFyZ2V0c1syNTZdID0geyB4MTEtPnRhcmdldHNfYXRvbSwgfTsKICAgICBpbnQg
aSwgaiwgaywgdGFyZ2V0X2NvdW50ID0gMTsKQEAgLTExMjMsNyArMTEyNCw3IEBAIHN0YXRpYyB2
b2lkIHZkYWdlbnRfeDExX2hhbmRsZV9zZWxlY3Rpb25fcmVxdWVzdChzdHJ1Y3QgdmRhZ2VudF94
MTEgKngxMSkKIH0KIAogc3RhdGljIHZvaWQgdmRhZ2VudF94MTFfaGFuZGxlX3Byb3BlcnR5X2Rl
bGV0ZV9ub3RpZnkoc3RydWN0IHZkYWdlbnRfeDExICp4MTEsCi0gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBYRXZlbnQgKmRlbF9ldmVudCkKKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnN0
IFhFdmVudCAqZGVsX2V2ZW50KQogewogICAgIFhFdmVudCAqc2VsX2V2ZW50OwogICAgIGludCBs
ZW47Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9z
cGljZS1kZXZlbA==
