Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C6185018
	for <lists+spice-devel@lfdr.de>; Wed,  7 Aug 2019 17:40:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D4D06E72D;
	Wed,  7 Aug 2019 15:40:02 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4F0A6E72D
 for <spice-devel@lists.freedesktop.org>; Wed,  7 Aug 2019 15:40:00 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id b3so743026wro.4
 for <spice-devel@lists.freedesktop.org>; Wed, 07 Aug 2019 08:40:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KD2KOhoVCDC6KSDFqnnPJBTAMNIUkQ0ccEmOWgH1ZGc=;
 b=Ikm1SRuAE6o+METIf5MH9NHW4E9j5xzrObhp2FaQj1gcqt0k0D1LBol3HjXzrZjpwG
 52U+KEQlIbfJlVkRVNQkWPVwO+qQFTmyOs5kJV4myIV1AZbfIEOKwoowXIIUyVSDWL2D
 +RvkJC9qH2ETnVb3ntYLO4WbcNbGnXxe1NZTblyEOk7Mn++Il+T549kLCgTBGc4iKrpm
 wIn9/KXiWrBRPeb0A8wDCN8XNfSZe+yebNeocPJZ/4YEEmVlCgyfmjigonFjag9Qrm3K
 wi4dnegoYkKRIwGVOIE/AzpJUimiWOsdtehiozSJIg4UH8pbx9/k0y4xPwmJO/o/oYao
 5Hgg==
X-Gm-Message-State: APjAAAX071fWnrqjwCQz+BxOhyk8FlTsXt9WSQ0hJZvxSAktld82eZFf
 TZWdepQeYsSJbSI+enkymHUYPHUiWAeUZw==
X-Google-Smtp-Source: APXvYqycbbWjeLNBnzK2UXRGeZ6HJ9GZx2ChhaMcwv5Xm7b6ijH+G5DQe1guPpC8mwxWEjiOrqTaMw==
X-Received: by 2002:adf:df0f:: with SMTP id y15mr11668415wrl.155.1565192399096; 
 Wed, 07 Aug 2019 08:39:59 -0700 (PDT)
Received: from pinea.redhat.com (25.119.19.109.rev.sfr.net. [109.19.119.25])
 by smtp.gmail.com with ESMTPSA id u18sm354716wmd.19.2019.08.07.08.39.57
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 07 Aug 2019 08:39:58 -0700 (PDT)
From: Kevin Pouget <kpouget@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed,  7 Aug 2019 17:39:42 +0200
Message-Id: <20190807153942.21971-1-kpouget@redhat.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Spice-devel] [RFC spice-server] fixup! streaming: Restart guest
 video streams on video-codec changes
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

VXBkYXRlIG9mIHRoZSBwcmV2aW91cyBwYXRjaCB0aGF0IHJlc2V0cyBvbmx5IHRoZSBzdHJlYW0g
Y2hhbm5lbCB3aG9zZQpwcmVmZXJyZWQgY29kZWMgbGlzdCBoYXMgYmVlbiB1cGRhdGVkCgpTaWdu
ZWQtb2ZmLWJ5OiBLZXZpbiBQb3VnZXQgPGtwb3VnZXRAcmVkaGF0LmNvbT4KLS0tCiBzZXJ2ZXIv
bWFpbi1kaXNwYXRjaGVyLmMgfCAxMiArKysrKy0tLS0tLS0KIHNlcnZlci9tYWluLWRpc3BhdGNo
ZXIuaCB8ICAyICstCiBzZXJ2ZXIvcmVkcy5jICAgICAgICAgICAgfCAxNSArKysrKysrKysrKyst
LS0KIHNlcnZlci9yZWRzLmggICAgICAgICAgICB8ICAyICstCiBzZXJ2ZXIvc3RyZWFtLWNoYW5u
ZWwuYyAgfCAgNyArKysrKystCiA1IGZpbGVzIGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKyksIDEz
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NlcnZlci9tYWluLWRpc3BhdGNoZXIuYyBiL3Nl
cnZlci9tYWluLWRpc3BhdGNoZXIuYwppbmRleCAwNGY1YWM4OC4uZWYyZDRmYmEgMTAwNjQ0Ci0t
LSBhL3NlcnZlci9tYWluLWRpc3BhdGNoZXIuYworKysgYi9zZXJ2ZXIvbWFpbi1kaXNwYXRjaGVy
LmMKQEAgLTE1MCw3ICsxNTAsNyBAQCB0eXBlZGVmIHN0cnVjdCBNYWluRGlzcGF0Y2hlckNsaWVu
dERpc2Nvbm5lY3RNZXNzYWdlIHsKCgogdHlwZWRlZiBzdHJ1Y3QgTWFpbkRpc3BhdGNoZXJSZXNl
dFN0cmVhbUNoYW5uZWxNZXNzYWdlIHsKLSAgICBSZWRDbGllbnQgKmNsaWVudDsKKyAgICBpbnQz
Ml90IGNoYW5uZWxfaWQ7CiB9IE1haW5EaXNwYXRjaGVyUmVzZXRTdHJlYW1DaGFubmVsTWVzc2Fn
ZTsKCiAvKiBjaGFubmVsX2V2ZW50IC0gY2FsbHMgY29yZS0+Y2hhbm5lbF9ldmVudCwgbXVzdCBi
ZSBkb25lIGluIG1haW4gdGhyZWFkICovCkBAIC0yMTIsMTEgKzIxMiw5IEBAIHN0YXRpYyB2b2lk
IG1haW5fZGlzcGF0Y2hlcl9oYW5kbGVfcmVzZXRfc3RyZWFtX2NoYW5uZWwodm9pZCAqb3BhcXVl
LAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB2b2lkICpwYXlsb2FkKQogewogICAgIFJlZHNTdGF0ZSAqcmVkcyA9IG9wYXF1ZTsKLSAgICBN
YWluRGlzcGF0Y2hlclJlc2V0U3RyZWFtQ2hhbm5lbE1lc3NhZ2UgX19hdHRyaWJ1dGVfXygodW51
c2VkKSkgKm1zZyA9IHBheWxvYWQ7Ci0KLSAgICAvKiBUT0RPOiByZXNldCBvbmx5IHRoZSBjaGFy
IGRldmljZSBsaW5rZWQgdG8gbXNnLmNsaWVudCAqLworICAgIE1haW5EaXNwYXRjaGVyUmVzZXRT
dHJlYW1DaGFubmVsTWVzc2FnZSAqbXNnID0gcGF5bG9hZDsKCi0gICAgcmVkc19yZXNldF9hbGxf
c3RyZWFtX2NoYXJfZGV2aWNlcyhyZWRzKTsKKyAgICByZWRzX3Jlc2V0X3N0cmVhbV9jaGFubmVs
KHJlZHMsIG1zZy0+Y2hhbm5lbF9pZCk7CiB9Cgogdm9pZCBtYWluX2Rpc3BhdGNoZXJfc2VhbWxl
c3NfbWlncmF0ZV9kc3RfY29tcGxldGUoTWFpbkRpc3BhdGNoZXIgKnNlbGYsCkBAIC0yNjMsMTEg
KzI2MSwxMSBAQCB2b2lkIG1haW5fZGlzcGF0Y2hlcl9jbGllbnRfZGlzY29ubmVjdChNYWluRGlz
cGF0Y2hlciAqc2VsZiwgUmVkQ2xpZW50ICpjbGllbnQpCiAgICAgfQogfQoKLXZvaWQgbWFpbl9k
aXNwYXRjaGVyX3Jlc2V0X3N0cmVhbV9jaGFubmVscyhNYWluRGlzcGF0Y2hlciAqc2VsZiwgUmVk
Q2xpZW50ICpjbGllbnQpCit2b2lkIG1haW5fZGlzcGF0Y2hlcl9yZXNldF9zdHJlYW1fY2hhbm5l
bChNYWluRGlzcGF0Y2hlciAqc2VsZiwgaW50MzJfdCBjaGFubmVsX2lkKQogewogICAgIE1haW5E
aXNwYXRjaGVyUmVzZXRTdHJlYW1DaGFubmVsTWVzc2FnZSBtc2c7CgotICAgIG1zZy5jbGllbnQg
PSBjbGllbnQ7CisgICAgbXNnLmNoYW5uZWxfaWQgPSBjaGFubmVsX2lkOwoKICAgICBkaXNwYXRj
aGVyX3NlbmRfbWVzc2FnZShESVNQQVRDSEVSKHNlbGYpLCBNQUlOX0RJU1BBVENIRVJfUkVTRVRf
U1RSRUFNX0NIQU5ORUxTLAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICZtc2cpOwpkaWZm
IC0tZ2l0IGEvc2VydmVyL21haW4tZGlzcGF0Y2hlci5oIGIvc2VydmVyL21haW4tZGlzcGF0Y2hl
ci5oCmluZGV4IDZkNWY1MGEwLi41ZjM4NmJmMiAxMDA2NDQKLS0tIGEvc2VydmVyL21haW4tZGlz
cGF0Y2hlci5oCisrKyBiL3NlcnZlci9tYWluLWRpc3BhdGNoZXIuaApAQCAtNTgsNyArNTgsNyBA
QCB2b2lkIG1haW5fZGlzcGF0Y2hlcl9zZXRfbW1fdGltZV9sYXRlbmN5KE1haW5EaXNwYXRjaGVy
ICpzZWxmLCBSZWRDbGllbnQgKmNsaWVudAogICogdGhhdCB0cmlnZ2VyZWQgdGhlIGNsaWVudCBk
ZXN0cnVjdGlvbi4KICAqLwogdm9pZCBtYWluX2Rpc3BhdGNoZXJfY2xpZW50X2Rpc2Nvbm5lY3Qo
TWFpbkRpc3BhdGNoZXIgKnNlbGYsIFJlZENsaWVudCAqY2xpZW50KTsKLXZvaWQgbWFpbl9kaXNw
YXRjaGVyX3Jlc2V0X3N0cmVhbV9jaGFubmVscyhNYWluRGlzcGF0Y2hlciAqc2VsZiwgUmVkQ2xp
ZW50ICpjbGllbnQpOwordm9pZCBtYWluX2Rpc3BhdGNoZXJfcmVzZXRfc3RyZWFtX2NoYW5uZWwo
TWFpbkRpc3BhdGNoZXIgKnNlbGYsIGludDMyX3QgY2hhbm5lbF9pZCk7CgogTWFpbkRpc3BhdGNo
ZXIqIG1haW5fZGlzcGF0Y2hlcl9uZXcoUmVkc1N0YXRlICpyZWRzKTsKCmRpZmYgLS1naXQgYS9z
ZXJ2ZXIvcmVkcy5jIGIvc2VydmVyL3JlZHMuYwppbmRleCA5YWFlODM4ZC4uZDQ3YTAyMzcgMTAw
NjQ0Ci0tLSBhL3NlcnZlci9yZWRzLmMKKysrIGIvc2VydmVyL3JlZHMuYwpAQCAtMzMwMSwxNSAr
MzMwMSwyNCBAQCBzdGF0aWMgdm9pZCByZWRzX29uX2NoYXJfZGV2aWNlX2Rlc3Ryb3koUmVkc1N0
YXRlICpyZWRzLAogICAgIHJlZHMtPmNoYXJfZGV2aWNlcyA9IGdfbGlzdF9yZW1vdmUocmVkcy0+
Y2hhcl9kZXZpY2VzLCBkZXYpOwogfQoKLXZvaWQgcmVkc19yZXNldF9hbGxfc3RyZWFtX2NoYXJf
ZGV2aWNlcyhSZWRzU3RhdGUgKnJlZHMpCit2b2lkIHJlZHNfcmVzZXRfc3RyZWFtX2NoYW5uZWwo
UmVkc1N0YXRlICpyZWRzLCBpbnQzMl90IGNoYW5uZWxfaWQpCiB7CiAgICAgUmVkQ2hhckRldmlj
ZSAqZGV2OwoKICAgICBHTElTVF9GT1JFQUNIKHJlZHMtPmNoYXJfZGV2aWNlcywgUmVkQ2hhckRl
dmljZSwgZGV2KSB7Ci0gICAgICAgIGlmIChJU19TVFJFQU1fREVWSUNFKGRldikpIHsKLSAgICAg
ICAgICAgIHN0cmVhbV9kZXZpY2VfcmVzZXRfY2hhbm5lbHMoU1RSRUFNX0RFVklDRShkZXYpKTsK
KyAgICAgICAgaWYgKCFJU19TVFJFQU1fREVWSUNFKGRldikpIHsKKyAgICAgICAgICAgIGNvbnRp
bnVlOwogICAgICAgICB9CisKKyAgICAgICAgU3RyZWFtRGV2aWNlICpzdHJlYW1fZGV2ID0gU1RS
RUFNX0RFVklDRShkZXYpOworICAgICAgICBpZiAoc3RyZWFtX2RldmljZV9nZXRfc3RyZWFtX2No
YW5uZWxfaWQoc3RyZWFtX2RldikgIT0gY2hhbm5lbF9pZCkgeworICAgICAgICAgICAgY29udGlu
dWU7CisgICAgICAgIH0KKworICAgICAgICBzdHJlYW1fZGV2aWNlX3Jlc2V0X2NoYW5uZWxzKHN0
cmVhbV9kZXYpOworICAgICAgICByZXR1cm47CiAgICAgfQorICAgIHNwaWNlX3dhcm5pbmcoImNo
YW5uZWwgJWQgbm90IGZvdW5kIiwgY2hhbm5lbF9pZCk7CiB9Cgogc3RhdGljIGludCBzcGljZV9z
ZXJ2ZXJfY2hhcl9kZXZpY2VfYWRkX2ludGVyZmFjZShTcGljZVNlcnZlciAqcmVkcywKZGlmZiAt
LWdpdCBhL3NlcnZlci9yZWRzLmggYi9zZXJ2ZXIvcmVkcy5oCmluZGV4IGVjMTA2Mzk0Li42ZDBl
ZDNlZSAxMDA2NDQKLS0tIGEvc2VydmVyL3JlZHMuaAorKysgYi9zZXJ2ZXIvcmVkcy5oCkBAIC01
Myw3ICs1Myw3IEBAIGJvb2wgcmVkc19jb25maWdfZ2V0X3BsYXliYWNrX2NvbXByZXNzaW9uKFJl
ZHNTdGF0ZSAqcmVkcyk7IC8vIHVzZWQgYnkgcGxheWJhY2sKCiB2b2lkIHJlZHNfc2VuZF9kZXZp
Y2VfZGlzcGxheV9pbmZvKFJlZHNTdGF0ZSAqcmVkcyk7CiB2b2lkIHJlZHNfaGFuZGxlX2FnZW50
X21vdXNlX2V2ZW50KFJlZHNTdGF0ZSAqcmVkcywgY29uc3QgVkRBZ2VudE1vdXNlU3RhdGUgKm1v
dXNlX3N0YXRlKTsgLy8gdXNlZCBieSBpbnB1dHNfY2hhbm5lbAotdm9pZCByZWRzX3Jlc2V0X2Fs
bF9zdHJlYW1fY2hhcl9kZXZpY2VzKFJlZHNTdGF0ZSAqcmVkcyk7Cit2b2lkIHJlZHNfcmVzZXRf
c3RyZWFtX2NoYW5uZWwoUmVkc1N0YXRlICpyZWRzLCBpbnQzMl90IGNoYW5uZWxfaWQpOwogR0Fy
cmF5KiByZWRzX2dldF9yZW5kZXJlcnMoUmVkc1N0YXRlICpyZWRzKTsKIGNoYXIgKnJlZHNfZ2V0
X3ZpZGVvX2NvZGVjX2Z1bGxuYW1lKFJlZFZpZGVvQ29kZWMgKmNvZGVjKTsKCmRpZmYgLS1naXQg
YS9zZXJ2ZXIvc3RyZWFtLWNoYW5uZWwuYyBiL3NlcnZlci9zdHJlYW0tY2hhbm5lbC5jCmluZGV4
IDk5Y2U3YzlhLi5lYTUzYTQ1MSAxMDA2NDQKLS0tIGEvc2VydmVyL3N0cmVhbS1jaGFubmVsLmMK
KysrIGIvc2VydmVyL3N0cmVhbS1jaGFubmVsLmMKQEAgLTQ2OCw4ICs0NjgsMTMgQEAgc3RyZWFt
X2NoYW5uZWxfaGFuZGxlX3ByZWZlcnJlZF92aWRlb19jb2RlY190eXBlKFJlZENoYW5uZWxDbGll
bnQgKnJjYywKICAgICAvKiBSZXNldCB2aWRlbyBzdHJlYW1zICovCiAgICAgUmVkQ2xpZW50ICpj
bGllbnQgPSByZWRfY2hhbm5lbF9jbGllbnRfZ2V0X2NsaWVudChyY2MpOwogICAgIFJlZHNTdGF0
ZSAqcmVkcyA9IHJlZF9jbGllbnRfZ2V0X3NlcnZlcihjbGllbnQpOworICAgIFN0cmVhbUNoYW5u
ZWwgKmNoYW5uZWwgPSBTVFJFQU1fQ0hBTk5FTChyZWRfY2hhbm5lbF9jbGllbnRfZ2V0X2NoYW5u
ZWwocmNjKSk7CisKKyAgICBpbnQzMl90IGNoYW5uZWxfaWQ7CisgICAgZ19vYmplY3RfZ2V0KGNo
YW5uZWwsICJpZCIsICZjaGFubmVsX2lkLCBOVUxMKTsKKyAgICBtYWluX2Rpc3BhdGNoZXJfcmVz
ZXRfc3RyZWFtX2NoYW5uZWwocmVkc19nZXRfbWFpbl9kaXNwYXRjaGVyKHJlZHMpLCBjaGFubmVs
X2lkKTsKCi0gICAgbWFpbl9kaXNwYXRjaGVyX3Jlc2V0X3N0cmVhbV9jaGFubmVscyhyZWRzX2dl
dF9tYWluX2Rpc3BhdGNoZXIocmVkcyksIGNsaWVudCk7CisgICAgLy8gc3RyZWFtX2NoYW5uZWxf
cmVzZXQoY2hhbm5lbCk7ID8KCiAgICAgcmV0dXJuIFRSVUU7CiB9Ci0tCjIuMjEuMApfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWls
aW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
