Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F44C57E3B
	for <lists+spice-devel@lfdr.de>; Thu, 27 Jun 2019 10:31:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B237F6E834;
	Thu, 27 Jun 2019 08:31:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF42A6E833
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 08:31:52 +0000 (UTC)
Received: by mail-wr1-f50.google.com with SMTP id k11so1501748wrl.1
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 01:31:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=P2hzOZdphlt1i06Ksn8MsNXkbtwpdcDx5/koC17O2Rk=;
 b=silI6nyc4wDe7G/oUBzApRsSxrvMBHeasr2acu73B/6oSPaPewQtOTjhoAyAPYobXs
 X3TwqGa2dWMOT4f8dqLfVD4zu7Ku3lTYZBr3F7c7DiblBdTk5xIjOTsLXDSHzWSYQXn3
 scDPd+RBstL33H1U46yNeIWWJD8gM1PQ25BMsIaMBnPNXi+148M+IUoxxOYaK+bEjkol
 FZkVfcTZjrrQEvp307VGsdkUUzCcMbxUpSVra1vspH6sMml3CwKdZjnmzJFTjK6USN2/
 oNNFKldzEz5rMHtOjGNftAkI5U+EVYerTdTeqfmE0HuvIV3OjpX4TBTxpVKrxNRfCC7W
 uRiA==
X-Gm-Message-State: APjAAAWKm8GPvHccS0Qy32dIleR79amyAcuIxqB0SH/hH6sSBHVvIwtg
 gT1aF5+0bn74FElUKMoFNPf+4I8//+A=
X-Google-Smtp-Source: APXvYqxWCzLv7w9po+mrMshmeHqA/rH1uvUCG4hDyQvLIaOEvWhdsiK5c9iFvprwJmjUoguB7/6Jmg==
X-Received: by 2002:adf:8183:: with SMTP id 3mr2113335wra.181.1561624311466;
 Thu, 27 Jun 2019 01:31:51 -0700 (PDT)
Received: from pinea.redhat.com ([2001:861:3440:6a0:71b6:dd5f:657d:58e3])
 by smtp.gmail.com with ESMTPSA id c4sm1360490wrt.86.2019.06.27.01.31.50
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 27 Jun 2019 01:31:51 -0700 (PDT)
From: Kevin Pouget <kpouget@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 27 Jun 2019 10:31:48 +0200
Message-Id: <20190627083149.23283-2-kpouget@redhat.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190627083149.23283-1-kpouget@redhat.com>
References: <20190627083149.23283-1-kpouget@redhat.com>
MIME-Version: 1.0
Subject: [Spice-devel] [RFC spice-server 1/2] streaming: Restart streams on
 video-codec changes
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

SW50ZXJydXB0L3Jlc3RhcnQgdGhlIHZpZGVvIHN0cmVhbXMgd2hlbiB0aGUgdXNlciBjaGFuZ2Vz
IHRoZQpwcmVmZXJyZWQgdmlkZW8tY29kZWNzIChkY2NfaGFuZGxlX3ByZWZlcnJlZF92aWRlb19j
b2RlY190eXBlKSBvciB3aGVuCnRoZSBob3N0IGFkbWluIHVwZGF0ZXMgdGhlIGxpc3Qgb2Ygdmlk
ZW8tY29kZWNzIGFsbG93ZWQKKGRpc3BsYXlfY2hhbm5lbF9zZXRfdmlkZW9fY29kZWNzKQotLS0K
IHNlcnZlci9kY2MuYyAgICAgICAgICAgICB8IDIgKysKIHNlcnZlci9kaXNwbGF5LWNoYW5uZWwu
YyB8IDIgKysKIHNlcnZlci92aWRlby1zdHJlYW0uYyAgICB8IDUgKysrKysKIDMgZmlsZXMgY2hh
bmdlZCwgOSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvc2VydmVyL2RjYy5jIGIvc2VydmVy
L2RjYy5jCmluZGV4IGE5NGUyN2U4Li4wZGVlZWQ4OCAxMDA2NDQKLS0tIGEvc2VydmVyL2RjYy5j
CisrKyBiL3NlcnZlci9kY2MuYwpAQCAtMTIwMSw2ICsxMjAxLDggQEAgc3RhdGljIGludCBkY2Nf
aGFuZGxlX3ByZWZlcnJlZF92aWRlb19jb2RlY190eXBlKERpc3BsYXlDaGFubmVsQ2xpZW50ICpk
Y2MsCgogICAgIC8qIE5ldyBjbGllbnQgcHJlZmVyZW5jZSAqLwogICAgIGRjY191cGRhdGVfcHJl
ZmVycmVkX3ZpZGVvX2NvZGVjcyhkY2MpOworICAgIHZpZGVvX3N0cmVhbV9kZXRhY2hfYW5kX3N0
b3AoRENDX1RPX0RDKGRjYykpOworCiAgICAgcmV0dXJuIFRSVUU7CiB9CgpkaWZmIC0tZ2l0IGEv
c2VydmVyL2Rpc3BsYXktY2hhbm5lbC5jIGIvc2VydmVyL2Rpc3BsYXktY2hhbm5lbC5jCmluZGV4
IDA3MWMwMTQwLi40YjhlNmU5MCAxMDA2NDQKLS0tIGEvc2VydmVyL2Rpc3BsYXktY2hhbm5lbC5j
CisrKyBiL3NlcnZlci9kaXNwbGF5LWNoYW5uZWwuYwpAQCAtMjU1LDYgKzI1NSw4IEBAIHZvaWQg
ZGlzcGxheV9jaGFubmVsX3NldF92aWRlb19jb2RlY3MoRGlzcGxheUNoYW5uZWwgKmRpc3BsYXks
IEdBcnJheSAqdmlkZW9fY29kCiAgICAgZ19jbGVhcl9wb2ludGVyKCZkaXNwbGF5LT5wcml2LT52
aWRlb19jb2RlY3MsIGdfYXJyYXlfdW5yZWYpOwogICAgIGRpc3BsYXktPnByaXYtPnZpZGVvX2Nv
ZGVjcyA9IGdfYXJyYXlfcmVmKHZpZGVvX2NvZGVjcyk7CiAgICAgZ19vYmplY3Rfbm90aWZ5KEdf
T0JKRUNUKGRpc3BsYXkpLCAidmlkZW8tY29kZWNzIik7CisKKyAgICB2aWRlb19zdHJlYW1fZGV0
YWNoX2FuZF9zdG9wKGRpc3BsYXkpOwogfQoKIEdBcnJheSAqZGlzcGxheV9jaGFubmVsX2dldF92
aWRlb19jb2RlY3MoRGlzcGxheUNoYW5uZWwgKmRpc3BsYXkpCmRpZmYgLS1naXQgYS9zZXJ2ZXIv
dmlkZW8tc3RyZWFtLmMgYi9zZXJ2ZXIvdmlkZW8tc3RyZWFtLmMKaW5kZXggNGFjMjVhZjguLmYy
Mjc3MTNiIDEwMDY0NAotLS0gYS9zZXJ2ZXIvdmlkZW8tc3RyZWFtLmMKKysrIGIvc2VydmVyL3Zp
ZGVvLXN0cmVhbS5jCkBAIC05MjUsNiArOTI1LDExIEBAIHZvaWQgdmlkZW9fc3RyZWFtX2RldGFj
aF9hbmRfc3RvcChEaXNwbGF5Q2hhbm5lbCAqZGlzcGxheSkKICAgICBSaW5nSXRlbSAqc3RyZWFt
X2l0ZW07CgogICAgIHNwaWNlX2RlYnVnKCJ0cmFjZSIpOworCisgICAgaWYgKCFyaW5nX2lzX2lu
aXRpYWxpemVkKCZkaXNwbGF5LT5wcml2LT5zdHJlYW1zKSkgeworICAgICAgICByZXR1cm47Cisg
ICAgfQorCiAgICAgd2hpbGUgKChzdHJlYW1faXRlbSA9IHJpbmdfZ2V0X2hlYWQoJmRpc3BsYXkt
PnByaXYtPnN0cmVhbXMpKSkgewogICAgICAgICBWaWRlb1N0cmVhbSAqc3RyZWFtID0gU1BJQ0Vf
Q09OVEFJTkVST0Yoc3RyZWFtX2l0ZW0sIFZpZGVvU3RyZWFtLCBsaW5rKTsKCi0tCjIuMjEuMApf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZl
bCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
