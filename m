Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 812644AB3C
	for <lists+spice-devel@lfdr.de>; Tue, 18 Jun 2019 21:54:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 649396E237;
	Tue, 18 Jun 2019 19:54:19 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 395A66E237
 for <spice-devel@lists.freedesktop.org>; Tue, 18 Jun 2019 19:54:18 +0000 (UTC)
Received: from jwhite.mn.codeweavers.com ([10.69.137.101])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1hdKBw-0008ES-16
 for spice-devel@lists.freedesktop.org; Tue, 18 Jun 2019 14:54:52 -0500
From: Jeremy White <jwhite@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 18 Jun 2019 14:54:15 -0500
Message-Id: <20190618195415.23965-1-jwhite@codeweavers.com>
X-Mailer: git-send-email 2.11.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Message-Id:Date:Subject:To:From:Sender:
 Reply-To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FWeK5EwZOJk4WdzwU5DHw3RaKMVmukz7tsEqyaByavc=; b=xi4Va4Kll9FxQAS9FqxnXMfoiY
 Rt3OSxNJO6aIYnQgm47t+wPwlGJ4e2F8l/15EkFznLkRM+rEoDoT40gH3uzDejvkiwMQb6f2s37YF
 K52ZazaeDmzbQU3lBhApxFLoSIUCoLgaevzZW+ti5nyYGfPBJWP45i4jDIyPmEfgymBQ=;
Subject: [Spice-devel] [PATCH x11spice v3] Changes to build on the 32 bit
 raspberry pi.
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

U2lnbmVkLW9mZi1ieTogSmVyZW15IFdoaXRlIDxqd2hpdGVAY29kZXdlYXZlcnMuY29tPgotLS0K
djMgVXNlIHRoZSBvYnZpb3VzbHkgYmV0dGVyIFBSSXg2NAp2MiBVc2UgICh1KSAodSkgdGhpbmcg
aW5zdGVhZCBvZiAodSkgKCh1KSB0aGluZykKICAgU2ltcGxpZnkgc29tZSBjYXN0aW5nIHdoZXJl
IHBvc3NpYmxlCi0tLQogc3JjL3NjYW4uYyAgICB8ICA2ICsrKy0tLQogc3JjL3Nlc3Npb24uYyB8
ICA4ICsrKystLS0tCiBzcmMvc3BpY2UuYyAgIHwgMTggKysrKysrKysrKystLS0tLS0tCiAzIGZp
bGVzIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDE0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL3NyYy9zY2FuLmMgYi9zcmMvc2Nhbi5jCmluZGV4IGJiMDIwZGUuLmFhMTBhMDcgMTAwNjQ0
Ci0tLSBhL3NyYy9zY2FuLmMKKysrIGIvc3JjL3NjYW4uYwpAQCAtNzAsNyArNzAsNyBAQCBzdGF0
aWMgUVhMRHJhd2FibGUgKnNobV9pbWFnZV90b19kcmF3YWJsZShzcGljZV90ICpzLCBzaG1faW1h
Z2VfdCAqc2htaSwgaW50IHgsCiAgICAgICAgIHJldHVybiBOVUxMOwogICAgIHF4bF9pbWFnZSA9
IChRWExJbWFnZSAqKSAoZHJhd2FibGUgKyAxKTsKIAotICAgIGRyYXdhYmxlLT5yZWxlYXNlX2lu
Zm8uaWQgPSAodWludDY0X3QpIHNwaWNlX2NyZWF0ZV9yZWxlYXNlKHMsIFJFTEVBU0VfU0hNSSwg
c2htaSk7CisgICAgZHJhd2FibGUtPnJlbGVhc2VfaW5mby5pZCA9ICh1aW50cHRyX3QpIHNwaWNl
X2NyZWF0ZV9yZWxlYXNlKHMsIFJFTEVBU0VfU0hNSSwgc2htaSk7CiAgICAgc2htaS0+ZHJhd2Fi
bGVfcHRyID0gZHJhd2FibGU7CiAKICAgICBkcmF3YWJsZS0+c3VyZmFjZV9pZCA9IDA7CkBAIC05
MSw3ICs5MSw3IEBAIHN0YXRpYyBRWExEcmF3YWJsZSAqc2htX2ltYWdlX3RvX2RyYXdhYmxlKHNw
aWNlX3QgKnMsIHNobV9pbWFnZV90ICpzaG1pLCBpbnQgeCwKICAgICBkcmF3YWJsZS0+dS5jb3B5
LnNyY19hcmVhLmJvdHRvbSA9IHNobWktPmg7CiAgICAgZHJhd2FibGUtPnUuY29weS5yb3BfZGVz
Y3JpcHRvciA9IFNQSUNFX1JPUERfT1BfUFVUOwogCi0gICAgZHJhd2FibGUtPnUuY29weS5zcmNf
Yml0bWFwID0gKFFYTFBIWVNJQ0FMKSBxeGxfaW1hZ2U7CisgICAgZHJhd2FibGUtPnUuY29weS5z
cmNfYml0bWFwID0gKHVpbnRwdHJfdCkgcXhsX2ltYWdlOwogCiAgICAgcXhsX2ltYWdlLT5kZXNj
cmlwdG9yLmlkID0gMDsKICAgICBxeGxfaW1hZ2UtPmRlc2NyaXB0b3IudHlwZSA9IFNQSUNFX0lN
QUdFX1RZUEVfQklUTUFQOwpAQCAtMTA2LDcgKzEwNiw3IEBAIHN0YXRpYyBRWExEcmF3YWJsZSAq
c2htX2ltYWdlX3RvX2RyYXdhYmxlKHNwaWNlX3QgKnMsIHNobV9pbWFnZV90ICpzaG1pLCBpbnQg
eCwKICAgICBxeGxfaW1hZ2UtPmJpdG1hcC55ID0gc2htaS0+aDsKICAgICBxeGxfaW1hZ2UtPmJp
dG1hcC5zdHJpZGUgPSBzaG1pLT5ieXRlc19wZXJfbGluZTsKICAgICBxeGxfaW1hZ2UtPmJpdG1h
cC5wYWxldHRlID0gMDsKLSAgICBxeGxfaW1hZ2UtPmJpdG1hcC5kYXRhID0gKFFYTFBIWVNJQ0FM
KSBzaG1pLT5zaG1hZGRyOworICAgIHF4bF9pbWFnZS0+Yml0bWFwLmRhdGEgPSAodWludHB0cl90
KSBzaG1pLT5zaG1hZGRyOwogCiAgICAgcmV0dXJuIGRyYXdhYmxlOwogfQpkaWZmIC0tZ2l0IGEv
c3JjL3Nlc3Npb24uYyBiL3NyYy9zZXNzaW9uLmMKaW5kZXggZTFiM2MwMC4uMWU1OTQxNSAxMDA2
NDQKLS0tIGEvc3JjL3Nlc3Npb24uYworKysgYi9zcmMvc2Vzc2lvbi5jCkBAIC02MCwxMyArNjAs
MTMgQEAgc2Vzc2lvbl90ICpnbG9iYWxfc2Vzc2lvbiA9IE5VTEw7CiB2b2lkIGZyZWVfY3Vyc29y
X3F1ZXVlX2l0ZW0oZ3BvaW50ZXIgZGF0YSkKIHsKICAgICBRWExDdXJzb3JDbWQgKmNjbWQgPSAo
UVhMQ3Vyc29yQ21kICopIGRhdGE7Ci0gICAgc3BpY2VfZnJlZV9yZWxlYXNlKChzcGljZV9yZWxl
YXNlX3QgKikgY2NtZC0+cmVsZWFzZV9pbmZvLmlkKTsKKyAgICBzcGljZV9mcmVlX3JlbGVhc2Uo
KHNwaWNlX3JlbGVhc2VfdCAqKSAodWludHB0cl90KSBjY21kLT5yZWxlYXNlX2luZm8uaWQpOwog
fQogCiB2b2lkIGZyZWVfZHJhd19xdWV1ZV9pdGVtKGdwb2ludGVyIGRhdGEpCiB7CiAgICAgUVhM
RHJhd2FibGUgKmRyYXdhYmxlID0gKFFYTERyYXdhYmxlICopIGRhdGE7Ci0gICAgc3BpY2VfZnJl
ZV9yZWxlYXNlKChzcGljZV9yZWxlYXNlX3QgKikgZHJhd2FibGUtPnJlbGVhc2VfaW5mby5pZCk7
CisgICAgc3BpY2VfZnJlZV9yZWxlYXNlKChzcGljZV9yZWxlYXNlX3QgKikgKHVpbnRwdHJfdCkg
ZHJhd2FibGUtPnJlbGVhc2VfaW5mby5pZCk7CiB9CiAKIHZvaWQgKnNlc3Npb25fcG9wX2RyYXco
c2Vzc2lvbl90ICpzZXNzaW9uKQpAQCAtNDA3LDEwICs0MDcsMTAgQEAgaW50IHNlc3Npb25fcHVz
aF9jdXJzb3JfaW1hZ2Uoc2Vzc2lvbl90ICpzLAogICAgIGNjbWQtPnR5cGUgPSBRWExfQ1VSU09S
X1NFVDsKICAgICBjY21kLT51LnNldC5wb3NpdGlvbi54ID0geCArIHhob3Q7CiAgICAgY2NtZC0+
dS5zZXQucG9zaXRpb24ueSA9IHkgKyB5aG90OwotICAgIGNjbWQtPnUuc2V0LnNoYXBlID0gKFFY
TFBIWVNJQ0FMKSBjdXJzb3I7CisgICAgY2NtZC0+dS5zZXQuc2hhcGUgPSAodWludHB0cl90KSBj
dXJzb3I7CiAgICAgY2NtZC0+dS5zZXQudmlzaWJsZSA9IFRSVUU7CiAKLSAgICBjY21kLT5yZWxl
YXNlX2luZm8uaWQgPSAodWludDY0X3QpIHNwaWNlX2NyZWF0ZV9yZWxlYXNlKCZzLT5zcGljZSwg
UkVMRUFTRV9NRU1PUlksIGNjbWQpOworICAgIGNjbWQtPnJlbGVhc2VfaW5mby5pZCA9ICh1aW50
cHRyX3QpIHNwaWNlX2NyZWF0ZV9yZWxlYXNlKCZzLT5zcGljZSwgUkVMRUFTRV9NRU1PUlksIGNj
bWQpOwogCiAgICAgZ19hc3luY19xdWV1ZV9wdXNoKHMtPmN1cnNvcl9xdWV1ZSwgY2NtZCk7CiAg
ICAgc3BpY2VfcXhsX3dha2V1cCgmcy0+c3BpY2UuZGlzcGxheV9zaW4pOwpkaWZmIC0tZ2l0IGEv
c3JjL3NwaWNlLmMgYi9zcmMvc3BpY2UuYwppbmRleCA4NDg5YjY3Li44ZWMwYjA3IDEwMDY0NAot
LS0gYS9zcmMvc3BpY2UuYworKysgYi9zcmMvc3BpY2UuYwpAQCAtMzMsNiArMzMsMTAgQEAKICNp
bmNsdWRlIDxuZXRkYi5oPgogI2luY2x1ZGUgPHNwaWNlL21hY3Jvcy5oPgogCisvKiBPYnRhaW4g
ZGVmaW5pdGlvbnMgZm9yIFBSSXg2NCAqLworI2RlZmluZSBfX1NURENfRk9STUFUX01BQ1JPUyAx
CisjaW5jbHVkZSA8aW50dHlwZXMuaD4KKwogI2luY2x1ZGUgImxvY2FsX3NwaWNlLmgiCiAjaW5j
bHVkZSAieDExc3BpY2UuaCIKICNpbmNsdWRlICJkaXNwbGF5LmgiCkBAIC0yNTUsNyArMjU5LDcg
QEAgc3RhdGljIGludCBnZXRfY29tbWFuZChRWExJbnN0YW5jZSAqcWluLCBzdHJ1Y3QgUVhMQ29t
bWFuZEV4dCAqY21kKQogICAgIGNtZC0+ZmxhZ3MgPSAwOwogICAgIGNtZC0+Y21kLnR5cGUgPSBR
WExfQ01EX0RSQVc7CiAgICAgY21kLT5jbWQucGFkZGluZyA9IDA7Ci0gICAgY21kLT5jbWQuZGF0
YSA9IChRWExQSFlTSUNBTCkgZHJhd2FibGU7CisgICAgY21kLT5jbWQuZGF0YSA9ICh1aW50cHRy
X3QpIGRyYXdhYmxlOwogCiAgICAgcmV0dXJuIDE7CiB9CkBAIC0yNzMsNyArMjc3LDcgQEAgc3Rh
dGljIGludCByZXFfY21kX25vdGlmaWNhdGlvbihRWExJbnN0YW5jZSAqcWluKQogc3RhdGljIHZv
aWQgcmVsZWFzZV9yZXNvdXJjZShRWExJbnN0YW5jZSAqcWluIEdfR05VQ19VTlVTRUQsCiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBRWExSZWxlYXNlSW5mb0V4dCByZWxlYXNl
X2luZm8pCiB7Ci0gICAgc3BpY2VfZnJlZV9yZWxlYXNlKChzcGljZV9yZWxlYXNlX3QgKikgcmVs
ZWFzZV9pbmZvLmluZm8tPmlkKTsKKyAgICBzcGljZV9mcmVlX3JlbGVhc2UoKHNwaWNlX3JlbGVh
c2VfdCAqKSAodWludHB0cl90KSByZWxlYXNlX2luZm8uaW5mby0+aWQpOwogfQogCiBzdGF0aWMg
aW50IGdldF9jdXJzb3JfY29tbWFuZChRWExJbnN0YW5jZSAqcWluLCBzdHJ1Y3QgUVhMQ29tbWFu
ZEV4dCAqY21kKQpAQCAtMjg5LDcgKzI5Myw3IEBAIHN0YXRpYyBpbnQgZ2V0X2N1cnNvcl9jb21t
YW5kKFFYTEluc3RhbmNlICpxaW4sIHN0cnVjdCBRWExDb21tYW5kRXh0ICpjbWQpCiAgICAgY21k
LT5mbGFncyA9IDA7CiAgICAgY21kLT5jbWQudHlwZSA9IFFYTF9DTURfQ1VSU09SOwogICAgIGNt
ZC0+Y21kLnBhZGRpbmcgPSAwOwotICAgIGNtZC0+Y21kLmRhdGEgPSAoUVhMUEhZU0lDQUwpIGN1
cnNvcjsKKyAgICBjbWQtPmNtZC5kYXRhID0gKHVpbnRwdHJfdCkgY3Vyc29yOwogCiAgICAgcmV0
dXJuIDE7CiB9CkBAIC0zMTgsOCArMzIyLDggQEAgc3RhdGljIGludCBmbHVzaF9yZXNvdXJjZXMo
UVhMSW5zdGFuY2UgKnFpbiBHX0dOVUNfVU5VU0VEKQogCiBzdGF0aWMgdm9pZCBhc3luY19jb21w
bGV0ZShRWExJbnN0YW5jZSAqcWluIEdfR05VQ19VTlVTRUQsIHVpbnQ2NF90IGNvb2tpZSkKIHsK
LSAgICBnX2RlYnVnKCIlczogY29va2llIDB4JWx4IiwgX19GVU5DVElPTl9fLCBjb29raWUpOwot
ICAgIHNwaWNlX2ZyZWVfcmVsZWFzZSgoc3BpY2VfcmVsZWFzZV90ICopIGNvb2tpZSk7CisgICAg
Z19kZWJ1ZygiJXM6IGNvb2tpZSAlIyIgUFJJeDY0LCBfX0ZVTkNUSU9OX18sIGNvb2tpZSk7Cisg
ICAgc3BpY2VfZnJlZV9yZWxlYXNlKChzcGljZV9yZWxlYXNlX3QgKikgKHVpbnRwdHJfdCkgY29v
a2llKTsKIH0KIAogc3RhdGljIHZvaWQgdXBkYXRlX2FyZWFfY29tcGxldGUoUVhMSW5zdGFuY2Ug
KnFpbiBHX0dOVUNfVU5VU0VELApAQCAtNDYzLDcgKzQ2Nyw3IEBAIHN0YXRpYyBpbnQgc2VuZF9t
b25pdG9yc19jb25maWcoc3BpY2VfdCAqcywgaW50IHcsIGludCBoKQogICAgIG1vbml0b3JzLT5o
ZWFkc1swXS53aWR0aCA9IHc7CiAgICAgbW9uaXRvcnMtPmhlYWRzWzBdLmhlaWdodCA9IGg7CiAK
LSAgICBzcGljZV9xeGxfbW9uaXRvcnNfY29uZmlnX2FzeW5jKCZzLT5kaXNwbGF5X3NpbiwgKFFY
TFBIWVNJQ0FMKSBtb25pdG9ycywgMCwgKHVpbnQ2NF90KSByZWxlYXNlKTsKKyAgICBzcGljZV9x
eGxfbW9uaXRvcnNfY29uZmlnX2FzeW5jKCZzLT5kaXNwbGF5X3NpbiwgKHVpbnRwdHJfdCkgbW9u
aXRvcnMsIDAsICh1aW50cHRyX3QpIHJlbGVhc2UpOwogCiAgICAgcmV0dXJuIDA7CiB9CkBAIC00
ODcsNyArNDkxLDcgQEAgaW50IHNwaWNlX2NyZWF0ZV9wcmltYXJ5KHNwaWNlX3QgKnMsIGludCB3
LCBpbnQgaCwgaW50IGJ5dGVzX3Blcl9saW5lLCB2b2lkICpzaG0KIAogICAgIC8qIFRPRE8gLSBj
b21wdXRlIHRoaXMgZHluYW1pY2FsbHkgKi8KICAgICBzdXJmYWNlLmZvcm1hdCA9IFNQSUNFX1NV
UkZBQ0VfRk1UXzMyX3hSR0I7Ci0gICAgc3VyZmFjZS5tZW0gPSAoUVhMUEhZU0lDQUwpIHNobWFk
ZHI7CisgICAgc3VyZmFjZS5tZW0gPSAodWludHB0cl90KSBzaG1hZGRyOwogCiAgICAgcy0+d2lk
dGggPSB3OwogICAgIHMtPmhlaWdodCA9IGg7Ci0tIAoyLjExLjAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApT
cGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
