Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B9098361C
	for <lists+spice-devel@lfdr.de>; Tue,  6 Aug 2019 18:02:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDFD56E3D8;
	Tue,  6 Aug 2019 16:02:18 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F9E36E3D8
 for <spice-devel@lists.freedesktop.org>; Tue,  6 Aug 2019 16:02:17 +0000 (UTC)
Received: from cpe-107-184-2-226.socal.res.rr.com ([107.184.2.226]
 helo=brendan-dell.bslabs.net)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <bshanks@codeweavers.com>)
 id 1hv1uw-0006Ni-Pn; Tue, 06 Aug 2019 11:02:31 -0500
From: Brendan Shanks <bshanks@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Tue,  6 Aug 2019 09:02:07 -0700
Message-Id: <20190806160207.6240-1-bshanks@codeweavers.com>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: -106.0
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The 'display->fullscreen' SHM segment was previously being
 used for both x11spice's internal change scanning and as the spice primary
 surface. I don't think spice wants anything else writing to the pr [...] 
 Content analysis details:   (-106.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -100 USER_IN_WHITELIST      From: address is in the user's white-list
 -6.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Message-Id:Date:Subject:Cc:To:From:Sender:
 Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZrPw3pnvqDv7oyF8E6IXdZpayH6hhj6BG3OaUeGccuI=; b=vC1n1sQxOD30d5vtayVYXcwIiW
 uSU+rYawyAsix/CDBvj0aqoOKOheJnCPt9z70vaDwwQ8v++U4k33aP7OOWLQoQ4ierDaK09toZpTM
 d8cQOg6mppTm0DBZzKIvYOLjFsm/TTSiNudIPhdNtsN/YAoA8ACOAUI1pO8QF8aF+D1w=;
Subject: [Spice-devel] [PATCH x11spice v2] Use separate buffer for primary
 surface to fix graphical corruption
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

VGhlICdkaXNwbGF5LT5mdWxsc2NyZWVuJyBTSE0gc2VnbWVudCB3YXMgcHJldmlvdXNseSBiZWlu
ZyB1c2VkIGZvciBib3RoCngxMXNwaWNlJ3MgaW50ZXJuYWwgY2hhbmdlIHNjYW5uaW5nIGFuZCBh
cyB0aGUgc3BpY2UgcHJpbWFyeSBzdXJmYWNlLgpJIGRvbid0IHRoaW5rIHNwaWNlIHdhbnRzIGFu
eXRoaW5nIGVsc2Ugd3JpdGluZyB0byB0aGUgcHJpbWFyeSBzdXJmYWNlLAphbmQgdGhpcyBjYXVz
ZWQgc3BvcmFkaWMgdGVzdCBmYWlsdXJlcyBhbmQgZ3JhcGhpY2FsIGNvcnJ1cHRpb24uCgpDcmVh
dGUgYSBzZXBhcmF0ZSBTSE0gc2VnbWVudCAnZGlzcGxheS0+cHJpbWFyeScgYW5kIHVzZSBpdCBv
bmx5IGZvciB0aGUKcHJpbWFyeSBzdXJmYWNlLgoKU2lnbmVkLW9mZi1ieTogQnJlbmRhbiBTaGFu
a3MgPGJzaGFua3NAY29kZXdlYXZlcnMuY29tPgotLS0KdjI6IFJlbmFtZSBsb2NhbCB2YXJpYWJs
ZSAnZnVsbHNjcmVlbicgdG8gJ3ByaW1hcnknIGluIHNwaWNlX3N0YXJ0KCkKLS0tCiBzcmMvZGlz
cGxheS5jICAgICB8IDIwICsrKysrKysrKysrKysrKysrKystCiBzcmMvZGlzcGxheS5oICAgICB8
ICAxICsKIHNyYy9sb2NhbF9zcGljZS5oIHwgIDIgKy0KIHNyYy9tYWluLmMgICAgICAgIHwgIDIg
Ky0KIHNyYy9zZXNzaW9uLmMgICAgIHwgIDIgKy0KIHNyYy9zcGljZS5jICAgICAgIHwgIDYgKysr
LS0tCiA2IGZpbGVzIGNoYW5nZWQsIDI2IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvc3JjL2Rpc3BsYXkuYyBiL3NyYy9kaXNwbGF5LmMKaW5kZXggMDFlMGU4NS4u
NzdiNGQ0ZSAxMDA2NDQKLS0tIGEvc3JjL2Rpc3BsYXkuYworKysgYi9zcmMvZGlzcGxheS5jCkBA
IC00NjEsMTIgKzQ2MSwyNSBAQCB2b2lkIGRlc3Ryb3lfc2htX2ltYWdlKGRpc3BsYXlfdCAqZCwg
c2htX2ltYWdlX3QgKnNobWkpCiAKIGludCBkaXNwbGF5X2NyZWF0ZV9zY3JlZW5faW1hZ2VzKGRp
c3BsYXlfdCAqZCkKIHsKKyAgICAvKiAncHJpbWFyeScgYW5kICdmdWxsc2NyZWVuJyBkb24ndCBu
ZWVkIHRvIGJlIFNITSwgbm9ybWFsIGJ1ZmZlcnMgd291bGQgd29yaworICAgICAqIGZpbmUuIFVz
aW5nIFNITSBmb3IgYWxsIGJ1ZmZlcnMgaXMgc2ltcGxlciB0aG91Z2gsIGFuZCBoYXMgbm8gcmVh
bCBkb3duc2lkZXMuCisgICAgICovCisgICAgZC0+cHJpbWFyeSA9IGNyZWF0ZV9zaG1faW1hZ2Uo
ZCwgMCwgMCk7CisgICAgaWYgKCFkLT5wcmltYXJ5KSB7CisgICAgICAgIHJldHVybiBYMTFTUElD
RV9FUlJfTk9TSE07CisgICAgfQorCiAgICAgZC0+ZnVsbHNjcmVlbiA9IGNyZWF0ZV9zaG1faW1h
Z2UoZCwgMCwgMCk7Ci0gICAgaWYgKCFkLT5mdWxsc2NyZWVuKQorICAgIGlmICghZC0+ZnVsbHNj
cmVlbikgeworICAgICAgICBkZXN0cm95X3NobV9pbWFnZShkLCBkLT5wcmltYXJ5KTsKKyAgICAg
ICAgZC0+cHJpbWFyeSA9IE5VTEw7CiAgICAgICAgIHJldHVybiBYMTFTUElDRV9FUlJfTk9TSE07
CisgICAgfQogCiAgICAgZC0+c2NhbmxpbmUgPSBjcmVhdGVfc2htX2ltYWdlKGQsIDAsIDEpOwog
ICAgIGlmICghZC0+c2NhbmxpbmUpIHsKKyAgICAgICAgZGVzdHJveV9zaG1faW1hZ2UoZCwgZC0+
cHJpbWFyeSk7CisgICAgICAgIGQtPnByaW1hcnkgPSBOVUxMOwogICAgICAgICBkZXN0cm95X3No
bV9pbWFnZShkLCBkLT5mdWxsc2NyZWVuKTsKICAgICAgICAgZC0+ZnVsbHNjcmVlbiA9IE5VTEw7
CiAgICAgICAgIHJldHVybiBYMTFTUElDRV9FUlJfTk9TSE07CkBAIC00NzcsNiArNDkwLDExIEBA
IGludCBkaXNwbGF5X2NyZWF0ZV9zY3JlZW5faW1hZ2VzKGRpc3BsYXlfdCAqZCkKIAogdm9pZCBk
aXNwbGF5X2Rlc3Ryb3lfc2NyZWVuX2ltYWdlcyhkaXNwbGF5X3QgKmQpCiB7CisgICAgaWYgKGQt
PnByaW1hcnkpIHsKKyAgICAgICAgZGVzdHJveV9zaG1faW1hZ2UoZCwgZC0+cHJpbWFyeSk7Cisg
ICAgICAgIGQtPnByaW1hcnkgPSBOVUxMOworICAgIH0KKwogICAgIGlmIChkLT5mdWxsc2NyZWVu
KSB7CiAgICAgICAgIGRlc3Ryb3lfc2htX2ltYWdlKGQsIGQtPmZ1bGxzY3JlZW4pOwogICAgICAg
ICBkLT5mdWxsc2NyZWVuID0gTlVMTDsKZGlmZiAtLWdpdCBhL3NyYy9kaXNwbGF5LmggYi9zcmMv
ZGlzcGxheS5oCmluZGV4IGRjNDI1NGIuLjI3YmM4MjkgMTAwNjQ0Ci0tLSBhL3NyYy9kaXNwbGF5
LmgKKysrIGIvc3JjL2Rpc3BsYXkuaApAQCAtNTUsNiArNTUsNyBAQCB0eXBlZGVmIHN0cnVjdCB7
CiAKICAgICBjb25zdCB4Y2JfcXVlcnlfZXh0ZW5zaW9uX3JlcGx5X3QgKnhmaXhlc19leHQ7CiAK
KyAgICBzaG1faW1hZ2VfdCAqcHJpbWFyeTsKICAgICBzaG1faW1hZ2VfdCAqZnVsbHNjcmVlbjsK
ICAgICBzaG1faW1hZ2VfdCAqc2NhbmxpbmU7CiAKZGlmZiAtLWdpdCBhL3NyYy9sb2NhbF9zcGlj
ZS5oIGIvc3JjL2xvY2FsX3NwaWNlLmgKaW5kZXggOWQ1ZTk4OS4uMDU3MzUwMCAxMDA2NDQKLS0t
IGEvc3JjL2xvY2FsX3NwaWNlLmgKKysrIGIvc3JjL2xvY2FsX3NwaWNlLmgKQEAgLTYxLDcgKzYx
LDcgQEAgdHlwZWRlZiBzdHJ1Y3QgewogLyotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAqKiAgUHJvdG90
eXBlcwogKiotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSovCi1pbnQgc3BpY2Vfc3RhcnQoc3BpY2VfdCAqcywg
b3B0aW9uc190ICpvcHRpb25zLCBzaG1faW1hZ2VfdCAqZnVsbHNjcmVlbik7CitpbnQgc3BpY2Vf
c3RhcnQoc3BpY2VfdCAqcywgb3B0aW9uc190ICpvcHRpb25zLCBzaG1faW1hZ2VfdCAqcHJpbWFy
eSk7CiB2b2lkIHNwaWNlX2VuZChzcGljZV90ICpzKTsKIGludCBzcGljZV9jcmVhdGVfcHJpbWFy
eShzcGljZV90ICpzLCBpbnQgdywgaW50IGgsIGludCBieXRlc19wZXJfbGluZSwgdm9pZCAqc2ht
YWRkcik7CiB2b2lkIHNwaWNlX2Rlc3Ryb3lfcHJpbWFyeShzcGljZV90ICpzKTsKZGlmZiAtLWdp
dCBhL3NyYy9tYWluLmMgYi9zcmMvbWFpbi5jCmluZGV4IGNlY2FkYzguLjcxY2JiNDYgMTAwNjQ0
Ci0tLSBhL3NyYy9tYWluLmMKKysrIGIvc3JjL21haW4uYwpAQCAtMTA4LDcgKzEwOCw3IEBAIGlu
dCBtYWluKGludCBhcmdjLCBjaGFyICphcmd2W10pCiAgICAgLyotLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KICAg
ICAqKiAgU3RhcnQgdXAgYSBzcGljZSBzZXJ2ZXIKICAgICAqKi0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0qLwotICAg
IHJjID0gc3BpY2Vfc3RhcnQoJnNlc3Npb24uc3BpY2UsICZzZXNzaW9uLm9wdGlvbnMsIHNlc3Np
b24uZGlzcGxheS5mdWxsc2NyZWVuKTsKKyAgICByYyA9IHNwaWNlX3N0YXJ0KCZzZXNzaW9uLnNw
aWNlLCAmc2Vzc2lvbi5vcHRpb25zLCBzZXNzaW9uLmRpc3BsYXkucHJpbWFyeSk7CiAgICAgaWYg
KHJjKQogICAgICAgICBnb3RvIGV4aXQ7CiAgICAgc3BpY2Vfc3RhcnRlZCA9IDE7CmRpZmYgLS1n
aXQgYS9zcmMvc2Vzc2lvbi5jIGIvc3JjL3Nlc3Npb24uYwppbmRleCAxZTU5NDE1Li40ZDcyZTE0
IDEwMDY0NAotLS0gYS9zcmMvc2Vzc2lvbi5jCisrKyBiL3NyYy9zZXNzaW9uLmMKQEAgLTM1Miw3
ICszNTIsNyBAQCBpbnQgc2Vzc2lvbl9yZWNyZWF0ZV9wcmltYXJ5KHNlc3Npb25fdCAqcykKIAog
ICAgIHJjID0gZGlzcGxheV9jcmVhdGVfc2NyZWVuX2ltYWdlcygmcy0+ZGlzcGxheSk7CiAgICAg
aWYgKHJjID09IDApIHsKLSAgICAgICAgc2htX2ltYWdlX3QgKmYgPSBzLT5kaXNwbGF5LmZ1bGxz
Y3JlZW47CisgICAgICAgIHNobV9pbWFnZV90ICpmID0gcy0+ZGlzcGxheS5wcmltYXJ5OwogICAg
ICAgICByYyA9IHNwaWNlX2NyZWF0ZV9wcmltYXJ5KCZzLT5zcGljZSwgZi0+dywgZi0+aCwgZi0+
Ynl0ZXNfcGVyX2xpbmUsIGYtPnNobWFkZHIpOwogICAgIH0KIApkaWZmIC0tZ2l0IGEvc3JjL3Nw
aWNlLmMgYi9zcmMvc3BpY2UuYwppbmRleCA0MzBkZjQwLi5jZjcxMThmIDEwMDY0NAotLS0gYS9z
cmMvc3BpY2UuYworKysgYi9zcmMvc3BpY2UuYwpAQCAtNjMzLDcgKzYzMyw3IEBAIHN0YXRpYyBp
bnQgdHJ5X2xpc3RlbihzcGljZV90ICpzLCBvcHRpb25zX3QgKm9wdGlvbnMpCiAgICAgcmV0dXJu
IDA7CiB9CiAKLWludCBzcGljZV9zdGFydChzcGljZV90ICpzLCBvcHRpb25zX3QgKm9wdGlvbnMs
IHNobV9pbWFnZV90ICpmdWxsc2NyZWVuKQoraW50IHNwaWNlX3N0YXJ0KHNwaWNlX3QgKnMsIG9w
dGlvbnNfdCAqb3B0aW9ucywgc2htX2ltYWdlX3QgKnByaW1hcnkpCiB7CiAgICAgaW50IHJjOwog
CkBAIC02NzgsOCArNjc4LDggQEAgaW50IHNwaWNlX3N0YXJ0KHNwaWNlX3QgKnMsIG9wdGlvbnNf
dCAqb3B0aW9ucywgc2htX2ltYWdlX3QgKmZ1bGxzY3JlZW4pCiAKICAgICBzcGljZV9zZXJ2ZXJf
dm1fc3RhcnQocy0+c2VydmVyKTsKIAotICAgIHJjID0gc3BpY2VfY3JlYXRlX3ByaW1hcnkocywg
ZnVsbHNjcmVlbi0+dywgZnVsbHNjcmVlbi0+aCwKLSAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIGZ1bGxzY3JlZW4tPmJ5dGVzX3Blcl9saW5lLCBmdWxsc2NyZWVuLT5zaG1hZGRyKTsKKyAg
ICByYyA9IHNwaWNlX2NyZWF0ZV9wcmltYXJ5KHMsIHByaW1hcnktPncsIHByaW1hcnktPmgsCisg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwcmltYXJ5LT5ieXRlc19wZXJfbGluZSwgcHJp
bWFyeS0+c2htYWRkcik7CiAKICAgICByZXR1cm4gcmM7CiB9Ci0tIAoyLjE3LjEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxp
bmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
