Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDCE06540C
	for <lists+spice-devel@lfdr.de>; Thu, 11 Jul 2019 11:44:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C8FB6E077;
	Thu, 11 Jul 2019 09:44:52 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEF9C6E077
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 09:44:50 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id f9so5489021wre.12
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 02:44:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RdbYiIfZqJpJ0wSaoFW3wrkkpefzHuO/4SWT0W+MX5g=;
 b=TJLVfnbV2sZpxe6ZtVzyNZSr5mz0mbe+uGut2nYhLlaBWGrXsak0YxMbiHY3wZty4d
 svl7I0R4mcG3rkDoFgxlPZvOMSNpokakzFs61p/tY2uM+rS+KLJU2Knxxx1gE1iI2tIb
 iF96skcROT18Kg5VgCqhxnBkpqWrXo8UkCmExLZEZCU8RjdEZsKuu3IsoZgiageFWmCQ
 GNb+3Z4Hj2ELVzxzDcmtg+wH/VMZ/b+/4eiDE8Vyxk2nx/dkIgPnlL+1GbXfCXyqySLA
 Og/cBaJMu9a6Nk1vyagOQcasDkZ7kWlIpJUAFQdT1fpoIZ+/PxpJLZi1Wcgot1FWdf1N
 rv6w==
X-Gm-Message-State: APjAAAU+TY1TTQSBLG91Slhzkbf0obQmHOpDfGFwzLIcnySRwHpaBkJa
 ncUNOOj0/ERv/KPga0KZePDEEQ4C8gk=
X-Google-Smtp-Source: APXvYqwrfWVNxo0tWk3F2WZNrcl/kDKFFHh+HHxCB8XC9EIXWzDk5+VraAidTOs1wRtjYp1M+uPcaQ==
X-Received: by 2002:adf:f884:: with SMTP id u4mr3819318wrp.264.1562838288980; 
 Thu, 11 Jul 2019 02:44:48 -0700 (PDT)
Received: from pinea.redhat.com ([2001:861:3440:6a0:71b6:dd5f:657d:58e3])
 by smtp.gmail.com with ESMTPSA id e19sm6566237wra.71.2019.07.11.02.44.47
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 11 Jul 2019 02:44:48 -0700 (PDT)
From: Kevin Pouget <kpouget@redhat.com>
To: Spice devel <spice-devel@lists.freedesktop.org>
Date: Thu, 11 Jul 2019 11:44:47 +0200
Message-Id: <20190711094447.15734-1-kpouget@redhat.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190711072200.emoa3sfn4ymppgxf@wingsuit>
References: <20190711072200.emoa3sfn4ymppgxf@wingsuit>
MIME-Version: 1.0
Subject: [Spice-devel] [PATCH spice-gtk 1/2] spice-client-gtk-module: allow
 sending multiple preferred video codecs
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

c3BpY2VfZGlzcGxheV9jaGFubmVsX2NoYW5nZV9wcmVmZXJyZWRfdmlkZW9fY29kZWNfdHlwZXM6
IG5ldyBmdW5jdGlvbgpmb3Igc2VuZGluZyBhbiBhcnJheSBvZiB2aWRlbyBjb2RlY3MgaW5zdGVh
ZCBvZiBvbmx5IG9uZS4KClNpZ25lZC1vZmYtYnk6IEtldmluIFBvdWdldCA8a3BvdWdldEByZWRo
YXQuY29tPgotLS0KCnRoaXMgaXMgdGhlIHZlcnNpb24gdGhhdCB3YXMgcHVzaGVkCgotLS0KIGRv
Yy9yZWZlcmVuY2Uvc3BpY2UtZ3RrLXNlY3Rpb25zLnR4dCB8ICAxICsKIHNyYy9jaGFubmVsLWRp
c3BsYXkuYyAgICAgICAgICAgICAgICB8IDc3ICsrKysrKysrKysrKysrKysrKysrKysrLS0tLS0K
IHNyYy9jaGFubmVsLWRpc3BsYXkuaCAgICAgICAgICAgICAgICB8ICAyICsKIHNyYy9tYXAtZmls
ZSAgICAgICAgICAgICAgICAgICAgICAgICB8ICAxICsKIHNyYy9zcGljZS1nbGliLXN5bS1maWxl
ICAgICAgICAgICAgICB8ICAxICsKIDUgZmlsZXMgY2hhbmdlZCwgNjkgaW5zZXJ0aW9ucygrKSwg
MTMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZG9jL3JlZmVyZW5jZS9zcGljZS1ndGstc2Vj
dGlvbnMudHh0IGIvZG9jL3JlZmVyZW5jZS9zcGljZS1ndGstc2VjdGlvbnMudHh0CmluZGV4IGEw
MzM2YWEuLjMzZjQwMzggMTAwNjQ0Ci0tLSBhL2RvYy9yZWZlcmVuY2Uvc3BpY2UtZ3RrLXNlY3Rp
b25zLnR4dAorKysgYi9kb2MvcmVmZXJlbmNlL3NwaWNlLWd0ay1zZWN0aW9ucy50eHQKQEAgLTE4
NSw2ICsxODUsNyBAQCBzcGljZV9kaXNwbGF5X2NoYW5nZV9wcmVmZXJyZWRfY29tcHJlc3Npb24K
IHNwaWNlX2Rpc3BsYXlfY2hhbm5lbF9jaGFuZ2VfcHJlZmVycmVkX2NvbXByZXNzaW9uCiBzcGlj
ZV9kaXNwbGF5X2NoYW5nZV9wcmVmZXJyZWRfdmlkZW9fY29kZWNfdHlwZQogc3BpY2VfZGlzcGxh
eV9jaGFubmVsX2NoYW5nZV9wcmVmZXJyZWRfdmlkZW9fY29kZWNfdHlwZQorc3BpY2VfZGlzcGxh
eV9jaGFubmVsX2NoYW5nZV9wcmVmZXJyZWRfdmlkZW9fY29kZWNfdHlwZXMKIHNwaWNlX2dsX3Nj
YW5vdXRfZnJlZQogPFNVQlNFQ1RJT04gU3RhbmRhcmQ+CiBTUElDRV9ESVNQTEFZX0NIQU5ORUwK
ZGlmZiAtLWdpdCBhL3NyYy9jaGFubmVsLWRpc3BsYXkuYyBiL3NyYy9jaGFubmVsLWRpc3BsYXku
YwppbmRleCA5YTgzYzUzLi40NDU1NWUzIDEwMDY0NAotLS0gYS9zcmMvY2hhbm5lbC1kaXNwbGF5
LmMKKysrIGIvc3JjL2NoYW5uZWwtZGlzcGxheS5jCkBAIC0yMCw2ICsyMCw3IEBACiAjaWZkZWYg
SEFWRV9TWVNfVFlQRVNfSAogI2luY2x1ZGUgPHN5cy90eXBlcy5oPgogI2VuZGlmCisjaW5jbHVk
ZSA8Z2xpYi9naTE4bi1saWIuaD4KCiAjaW5jbHVkZSAic3BpY2UtY2xpZW50LmgiCiAjaW5jbHVk
ZSAic3BpY2UtY29tbW9uLmgiCkBAIC02MTAsMTggKzYxMSwxNSBAQCB2b2lkIHNwaWNlX2Rpc3Bs
YXlfY2hhbm5lbF9jaGFuZ2VfcHJlZmVycmVkX2NvbXByZXNzaW9uKFNwaWNlQ2hhbm5lbCAqY2hh
bm5lbCwgZwogfQoKIHN0YXRpYyB2b2lkIHNwaWNlX2Rpc3BsYXlfc2VuZF9jbGllbnRfcHJlZmVy
cmVkX3ZpZGVvX2NvZGVjcyhTcGljZUNoYW5uZWwgKmNoYW5uZWwsCi0gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29uc3QgR0FycmF5
ICpjb2RlY3MpCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgY29uc3QgZ2ludCAqY29kZWNzLCBnc2l6ZSBuY29kZWNzKQogewotICAg
IGd1aW50IGk7CiAgICAgU3BpY2VNc2dPdXQgKm91dDsKICAgICBTcGljZU1zZ2NEaXNwbGF5UHJl
ZmVycmVkVmlkZW9Db2RlY1R5cGUgKm1zZzsKCiAgICAgbXNnID0gZ19tYWxsb2MwKHNpemVvZihT
cGljZU1zZ2NEaXNwbGF5UHJlZmVycmVkVmlkZW9Db2RlY1R5cGUpICsKLSAgICAgICAgICAgICAg
ICAgICAgKHNpemVvZihTcGljZVZpZGVvQ29kZWNUeXBlKSAqIGNvZGVjcy0+bGVuKSk7Ci0gICAg
bXNnLT5udW1fb2ZfY29kZWNzID0gY29kZWNzLT5sZW47Ci0gICAgZm9yIChpID0gMDsgaSA8IGNv
ZGVjcy0+bGVuOyBpKyspIHsKLSAgICAgICAgbXNnLT5jb2RlY3NbaV0gPSBnX2FycmF5X2luZGV4
KGNvZGVjcywgZ2ludCwgaSk7Ci0gICAgfQorICAgICAgICAgICAgICAgICAgICAoc2l6ZW9mKFNw
aWNlVmlkZW9Db2RlY1R5cGUpICogbmNvZGVjcykpOworICAgIG1zZy0+bnVtX29mX2NvZGVjcyA9
IG5jb2RlY3M7CisgICAgbWVtY3B5KG1zZy0+Y29kZWNzLCBjb2RlY3MsIHNpemVvZigqY29kZWNz
KSAqIG5jb2RlY3MpOwoKICAgICBvdXQgPSBzcGljZV9tc2dfb3V0X25ldyhjaGFubmVsLCBTUElD
RV9NU0dDX0RJU1BMQVlfUFJFRkVSUkVEX1ZJREVPX0NPREVDX1RZUEUpOwogICAgIG91dC0+bWFy
c2hhbGxlcnMtPm1zZ2NfZGlzcGxheV9wcmVmZXJyZWRfdmlkZW9fY29kZWNfdHlwZShvdXQtPm1h
cnNoYWxsZXIsIG1zZyk7CkBAIC02NTYsMTEgKzY1NCwxMCBAQCB2b2lkIHNwaWNlX2Rpc3BsYXlf
Y2hhbmdlX3ByZWZlcnJlZF92aWRlb19jb2RlY190eXBlKFNwaWNlQ2hhbm5lbCAqY2hhbm5lbCwg
Z2ludAogICogZGlzcGxheSBjaGFubmVsLgogICoKICAqIFNpbmNlOiAwLjM1CisgKiBEZXByZWNh
dGVkOiAwLjM4OiB1c2Ugc3BpY2VfZGlzcGxheV9jaGFubmVsX2NoYW5nZV9wcmVmZXJyZWRfdmlk
ZW9fY29kZWNfdHlwZXMoKSBpbnN0ZWFkLgogICovCiB2b2lkIHNwaWNlX2Rpc3BsYXlfY2hhbm5l
bF9jaGFuZ2VfcHJlZmVycmVkX3ZpZGVvX2NvZGVjX3R5cGUoU3BpY2VDaGFubmVsICpjaGFubmVs
LCBnaW50IGNvZGVjX3R5cGUpCiB7Ci0gICAgR0FycmF5ICpjb2RlY3M7Ci0KICAgICBnX3JldHVy
bl9pZl9mYWlsKFNQSUNFX0lTX0RJU1BMQVlfQ0hBTk5FTChjaGFubmVsKSk7CiAgICAgZ19yZXR1
cm5faWZfZmFpbChjb2RlY190eXBlID49IFNQSUNFX1ZJREVPX0NPREVDX1RZUEVfTUpQRUcgJiYK
ICAgICAgICAgICAgICAgICAgICAgIGNvZGVjX3R5cGUgPCBTUElDRV9WSURFT19DT0RFQ19UWVBF
X0VOVU1fRU5EKTsKQEAgLTY3NSwxMCArNjcyLDY0IEBAIHZvaWQgc3BpY2VfZGlzcGxheV9jaGFu
bmVsX2NoYW5nZV9wcmVmZXJyZWRfdmlkZW9fY29kZWNfdHlwZShTcGljZUNoYW5uZWwgKmNoYW5u
CiAgICAgICogVGhpcyBhcnJheSBjYW4gYmUgcmVhcnJhbmdlZCB0byBoYXZlIEBjb2RlY190eXBl
IGluIHRoZSBmcm9udCAod2hpY2ggaXMKICAgICAgKiB0aGUgcHJlZmVycmVkIGZvciB0aGUgY2xp
ZW50IHNpZGUpICovCiAgICAgQ0hBTk5FTF9ERUJVRyhjaGFubmVsLCAiY2hhbmdpbmcgcHJlZmVy
cmVkIHZpZGVvIGNvZGVjIHR5cGUgdG8gJXMiLCBnc3Rfb3B0c1tjb2RlY190eXBlXS5uYW1lKTsK
LSAgICBjb2RlY3MgPSBnX2FycmF5X25ldyhGQUxTRSwgRkFMU0UsIHNpemVvZihnaW50KSk7Ci0g
ICAgZ19hcnJheV9hcHBlbmRfdmFsKGNvZGVjcywgY29kZWNfdHlwZSk7Ci0gICAgc3BpY2VfZGlz
cGxheV9zZW5kX2NsaWVudF9wcmVmZXJyZWRfdmlkZW9fY29kZWNzKGNoYW5uZWwsIGNvZGVjcyk7
Ci0gICAgZ19hcnJheV91bnJlZihjb2RlY3MpOworICAgIHNwaWNlX2Rpc3BsYXlfc2VuZF9jbGll
bnRfcHJlZmVycmVkX3ZpZGVvX2NvZGVjcyhjaGFubmVsLCAmY29kZWNfdHlwZSwgMSk7Cit9CisK
Ky8qKgorICogc3BpY2VfZGlzcGxheV9jaGFubmVsX2NoYW5nZV9wcmVmZXJyZWRfdmlkZW9fY29k
ZWNzX3R5cGVzOgorICogQGNoYW5uZWw6IGEgI1NwaWNlRGlzcGxheUNoYW5uZWwKKyAqIEBjb2Rl
Y3M6IGFuIGFycmF5IG9mIEBuY29kZWNzICNTcGljZVZpZGVvQ29kZWNUeXBlIHR5cGVzCisgKiBA
bmNvZGVjczogdGhlIG51bWJlciBvZiBjb2RlYyB0eXBlcyBpbiB0aGUgQGNvZGVjcyBhcnJheQor
ICogQGVycjogI0dFcnJvciBkZXNjcmliaW5nIHRoZSByZWFzb24gd2h5IHRoZSBjaGFuZ2UgZmFp
bGVkCisgKgorICogVGVsbHMgdGhlIHNwaWNlIHNlcnZlciB0aGUgb3JkZXJlZCBwcmVmZXJyZWQg
dmlkZW8gY29kZWMgdHlwZXMgdG8KKyAqIHVzZSBmb3Igc3RyZWFtaW5nIGluIEBjaGFubmVsLgor
ICoKKyAqIFJldHVybnM6ICVUUlVFIGlmIHRoZSBwcmVmZXJyZWQgY29kZWMgbGlzdCB3YXMgc3Vj
Y2Vzc2Z1bGx5IGNoYW5nZWQsIGFuZCAlRkFMU0UKKyAqIG90aGVyd2lzZS4KKyAqCisgKiBTaW5j
ZTogMC4zOAorICovCitnYm9vbGVhbiBzcGljZV9kaXNwbGF5X2NoYW5uZWxfY2hhbmdlX3ByZWZl
cnJlZF92aWRlb19jb2RlY190eXBlcyhTcGljZUNoYW5uZWwgKmNoYW5uZWwsCisgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBj
b25zdCBnaW50ICpjb2RlY3MsIGdzaXplIG5jb2RlY3MsCisgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBHRXJyb3IgKiplcnIp
Cit7CisgICAgZ3NpemUgaTsKKyAgICBHU3RyaW5nICptc2c7CisKKyAgICBnX3JldHVybl92YWxf
aWZfZmFpbChTUElDRV9JU19ESVNQTEFZX0NIQU5ORUwoY2hhbm5lbCksIEZBTFNFKTsKKyAgICBn
X3JldHVybl92YWxfaWZfZmFpbChuY29kZWNzICE9IDAsIEZBTFNFKTsKKworICAgIGlmICghc3Bp
Y2VfY2hhbm5lbF90ZXN0X2NhcGFiaWxpdHkoY2hhbm5lbCwgU1BJQ0VfRElTUExBWV9DQVBfUFJF
Rl9WSURFT19DT0RFQ19UWVBFKSkgeworICAgICAgICBDSEFOTkVMX0RFQlVHKGNoYW5uZWwsICJk
b2VzIG5vdCBoYXZlIGNhcGFiaWxpdHkgdG8gY2hhbmdlIHRoZSBwcmVmZXJyZWQgdmlkZW8gY29k
ZWMgdHlwZSIpOworICAgICAgICBnX3NldF9lcnJvcl9saXRlcmFsKGVyciwgU1BJQ0VfQ0xJRU5U
X0VSUk9SLCBTUElDRV9DTElFTlRfRVJST1JfRkFJTEVELAorICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIF8oIkNoYW5uZWwgZG9lcyBub3QgaGF2ZSBjYXBhYmlsaXR5IHRvIGNoYW5nZSB0aGUg
cHJlZmVycmVkIHZpZGVvIGNvZGVjIHR5cGUiKSk7CisKKyAgICAgICAgcmV0dXJuIEZBTFNFOwor
ICAgIH0KKworICAgIG1zZyA9IGdfc3RyaW5nX25ldygiY2hhbmdpbmcgcHJlZmVycmVkIHZpZGVv
IGNvZGVjIHR5cGUgdG86ICIpOworICAgIGZvciAoaSA9IDA7IGkgPCBuY29kZWNzOyBpKyspIHsK
KyAgICAgICAgZ2ludCBjb2RlY190eXBlID0gY29kZWNzW2ldOworCisgICAgICAgIGlmIChjb2Rl
Y190eXBlIDwgU1BJQ0VfVklERU9fQ09ERUNfVFlQRV9NSlBFRyB8fAorICAgICAgICAgICAgY29k
ZWNfdHlwZSA+PSBTUElDRV9WSURFT19DT0RFQ19UWVBFX0VOVU1fRU5EKSB7CisgICAgICAgICAg
ICBnX3N0cmluZ19mcmVlKG1zZywgVFJVRSk7CisgICAgICAgICAgICBnX3NldF9lcnJvcihlcnIs
IFNQSUNFX0NMSUVOVF9FUlJPUiwgU1BJQ0VfQ0xJRU5UX0VSUk9SX0ZBSUxFRCwKKyAgICAgICAg
ICAgICAgICAgICAgICAgIF8oIkludmFsaWQgY29kZWMtdHlwZSBmb3VuZCAoJWQpIC4uLiAiKSwg
Y29kZWNfdHlwZSk7CisKKyAgICAgICAgICAgIHJldHVybiBGQUxTRTsKKyAgICAgICAgfQorCisg
ICAgICAgIGdfc3RyaW5nX2FwcGVuZF9wcmludGYobXNnLCAiJXMgIiwgZ3N0X29wdHNbY29kZWNf
dHlwZV0ubmFtZSk7CisKKyAgICB9CisgICAgQ0hBTk5FTF9ERUJVRyhjaGFubmVsLCAiJXMiLCBt
c2ctPnN0cik7CisgICAgZ19zdHJpbmdfZnJlZShtc2csIFRSVUUpOworCisgICAgc3BpY2VfZGlz
cGxheV9zZW5kX2NsaWVudF9wcmVmZXJyZWRfdmlkZW9fY29kZWNzKGNoYW5uZWwsIGNvZGVjcywg
bmNvZGVjcyk7CisKKyAgICByZXR1cm4gVFJVRTsKIH0KCiAvKioKZGlmZiAtLWdpdCBhL3NyYy9j
aGFubmVsLWRpc3BsYXkuaCBiL3NyYy9jaGFubmVsLWRpc3BsYXkuaAppbmRleCA1YjQ4ZDJmLi5j
ZjE4NTM4IDEwMDY0NAotLS0gYS9zcmMvY2hhbm5lbC1kaXNwbGF5LmgKKysrIGIvc3JjL2NoYW5u
ZWwtZGlzcGxheS5oCkBAIC0xNTAsNiArMTUwLDggQEAgZ2Jvb2xlYW4gICAgICAgIHNwaWNlX2Rp
c3BsYXlfY2hhbm5lbF9nZXRfcHJpbWFyeShTcGljZUNoYW5uZWwgKmNoYW5uZWwsIGd1aW50MzIK
CiB2b2lkIHNwaWNlX2Rpc3BsYXlfY2hhbm5lbF9jaGFuZ2VfcHJlZmVycmVkX2NvbXByZXNzaW9u
KFNwaWNlQ2hhbm5lbCAqY2hhbm5lbCwgZ2ludCBjb21wcmVzc2lvbik7CiB2b2lkIHNwaWNlX2Rp
c3BsYXlfY2hhbm5lbF9jaGFuZ2VfcHJlZmVycmVkX3ZpZGVvX2NvZGVjX3R5cGUoU3BpY2VDaGFu
bmVsICpjaGFubmVsLCBnaW50IGNvZGVjX3R5cGUpOworZ2Jvb2xlYW4gc3BpY2VfZGlzcGxheV9j
aGFubmVsX2NoYW5nZV9wcmVmZXJyZWRfdmlkZW9fY29kZWNfdHlwZXMoU3BpY2VDaGFubmVsICpj
aGFubmVsLCBjb25zdCBnaW50ICpjb2RlY3MsCisgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBnc2l6ZSBuY29kZWNzLCBHRXJy
b3IgKiplcnIpOwoKIEdUeXBlICAgICAgICAgICBzcGljZV9nbF9zY2Fub3V0X2dldF90eXBlICAg
ICAodm9pZCkgR19HTlVDX0NPTlNUOwogdm9pZCAgICAgICAgICAgIHNwaWNlX2dsX3NjYW5vdXRf
ZnJlZSAgICAgICAgIChTcGljZUdsU2Nhbm91dCAqc2Nhbm91dCk7CmRpZmYgLS1naXQgYS9zcmMv
bWFwLWZpbGUgYi9zcmMvbWFwLWZpbGUKaW5kZXggNTAwNjgzYy4uM2NiOTg3MyAxMDA2NDQKLS0t
IGEvc3JjL21hcC1maWxlCisrKyBiL3NyYy9tYXAtZmlsZQpAQCAtMjUsNiArMjUsNyBAQCBzcGlj
ZV9kaXNwbGF5X2NoYW5nZV9wcmVmZXJyZWRfY29tcHJlc3Npb247CiBzcGljZV9kaXNwbGF5X2No
YW5nZV9wcmVmZXJyZWRfdmlkZW9fY29kZWNfdHlwZTsKIHNwaWNlX2Rpc3BsYXlfY2hhbm5lbF9j
aGFuZ2VfcHJlZmVycmVkX2NvbXByZXNzaW9uOwogc3BpY2VfZGlzcGxheV9jaGFubmVsX2NoYW5n
ZV9wcmVmZXJyZWRfdmlkZW9fY29kZWNfdHlwZTsKK3NwaWNlX2Rpc3BsYXlfY2hhbm5lbF9jaGFu
Z2VfcHJlZmVycmVkX3ZpZGVvX2NvZGVjX3R5cGVzOwogc3BpY2VfZGlzcGxheV9jaGFubmVsX2dl
dF9nbF9zY2Fub3V0Owogc3BpY2VfZGlzcGxheV9jaGFubmVsX2dldF9wcmltYXJ5Owogc3BpY2Vf
ZGlzcGxheV9jaGFubmVsX2dldF90eXBlOwpkaWZmIC0tZ2l0IGEvc3JjL3NwaWNlLWdsaWItc3lt
LWZpbGUgYi9zcmMvc3BpY2UtZ2xpYi1zeW0tZmlsZQppbmRleCAyZGYxY2MwLi5jM2IyNTYxIDEw
MDY0NAotLS0gYS9zcmMvc3BpY2UtZ2xpYi1zeW0tZmlsZQorKysgYi9zcmMvc3BpY2UtZ2xpYi1z
eW0tZmlsZQpAQCAtMjMsNiArMjMsNyBAQCBzcGljZV9kaXNwbGF5X2NoYW5nZV9wcmVmZXJyZWRf
Y29tcHJlc3Npb24KIHNwaWNlX2Rpc3BsYXlfY2hhbmdlX3ByZWZlcnJlZF92aWRlb19jb2RlY190
eXBlCiBzcGljZV9kaXNwbGF5X2NoYW5uZWxfY2hhbmdlX3ByZWZlcnJlZF9jb21wcmVzc2lvbgog
c3BpY2VfZGlzcGxheV9jaGFubmVsX2NoYW5nZV9wcmVmZXJyZWRfdmlkZW9fY29kZWNfdHlwZQor
c3BpY2VfZGlzcGxheV9jaGFubmVsX2NoYW5nZV9wcmVmZXJyZWRfdmlkZW9fY29kZWNfdHlwZXMK
IHNwaWNlX2Rpc3BsYXlfY2hhbm5lbF9nZXRfZ2xfc2Nhbm91dAogc3BpY2VfZGlzcGxheV9jaGFu
bmVsX2dldF9wcmltYXJ5CiBzcGljZV9kaXNwbGF5X2NoYW5uZWxfZ2V0X3R5cGUKLS0KMi4yMS4w
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRl
dmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
