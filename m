Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA07AF67B
	for <lists+spice-devel@lfdr.de>; Wed, 11 Sep 2019 09:12:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CFB26EA2E;
	Wed, 11 Sep 2019 07:12:14 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 048B26EA2E
 for <spice-devel@lists.freedesktop.org>; Wed, 11 Sep 2019 07:12:13 +0000 (UTC)
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 589CEC04B2DD
 for <spice-devel@lists.freedesktop.org>; Wed, 11 Sep 2019 07:12:12 +0000 (UTC)
Received: by mail-wr1-f71.google.com with SMTP id s5so10030682wrv.23
 for <spice-devel@lists.freedesktop.org>; Wed, 11 Sep 2019 00:12:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XLRsOc35nL9vhvH9CkSnWa7Jm0cHotxoPjPBp/AkD9g=;
 b=kt/hka6gwaHxmpOjq0423srY/HWaUTjBlBJnRL+g1htJ1fJW/5SqTUZ+Dy8aT88Fum
 dyfbut/k/bv/wKLcenD85m3V0cG9m5xeFP3LevQ5A3+y0UYAjyoPOWX67vd5h7yhJZ3Y
 GBYdQngal7AATL0d5GcsT9vQrnqbDiixbBa5a9tVdAMfpIaGxDZitSM/wWirXzobD9mm
 FZ+gEKdRAQUQxjsKDxswwxLnwet1NZEBELxmpDSFG/i905DH1UwBafFCaqyQfhCc53aE
 sD9iaHFaFq4d7FdWcBkbuF+bC5Ut7ojU85LHREQO+/G9wPwqwHY/tNIEHuwF4Mt/tkWK
 VmHg==
X-Gm-Message-State: APjAAAWPFdjuyIORK31QCbpLg4fVATT+MW8eL+pQwVcDY5F7bckTwSx1
 G/LOPq/mSk3iSTNXC0Ewd1GuvZKzIB+8aLYUiRrTDQhiZdYYi/Ct/jStkR5dlxmzRWvD74it7lH
 UVgJK97pZXt50k18FucQu/TDKP6twO5E=
X-Received: by 2002:a7b:c92d:: with SMTP id h13mr2706914wml.86.1568185930947; 
 Wed, 11 Sep 2019 00:12:10 -0700 (PDT)
X-Google-Smtp-Source: APXvYqynOYZd2pgYJX/yzXIn9Ef0r3yXp7hOPq+M7UQormogDf8kBwFkEsWMl68k36EQO9GzOinSXw==
X-Received: by 2002:a7b:c92d:: with SMTP id h13mr2706905wml.86.1568185930808; 
 Wed, 11 Sep 2019 00:12:10 -0700 (PDT)
Received: from pinea.redhat.com ([2001:861:3440:6a0:2cf1:592d:314d:825])
 by smtp.gmail.com with ESMTPSA id u10sm1698168wmm.43.2019.09.11.00.12.09
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Sep 2019 00:12:10 -0700 (PDT)
From: Kevin Pouget <kpouget@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 11 Sep 2019 09:12:06 +0200
Message-Id: <20190911071206.7345-1-kpouget@redhat.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Spice-devel] [PATCH spice-common] common/recorder.h: do not
 complain on unused (dummy) recorders
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

U2lnbmVkLW9mZi1ieTogS2V2aW4gUG91Z2V0IDxrcG91Z2V0QHJlZGhhdC5jb20+Ci0tLQogY29t
bW9uL3JlY29yZGVyLmggfCAzICsrLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2NvbW1vbi9yZWNvcmRlci5oIGIvY29tbW9uL3Jl
Y29yZGVyLmgKaW5kZXggOThiODc5Ny4uODQ0OGUwMiAxMDA2NDQKLS0tIGEvY29tbW9uL3JlY29y
ZGVyLmgKKysrIGIvY29tbW9uL3JlY29yZGVyLmgKQEAgLTIwLDYgKzIwLDcgQEAKIAogI2luY2x1
ZGUgPHN0ZGlvLmg+CiAjaW5jbHVkZSA8c3RkaW50Lmg+CisjaW5jbHVkZSA8c3BpY2UvbWFjcm9z
Lmg+CiAKIC8qIFJlcGxhY2VtZW50IGRlY2xhcmF0aW9ucy4KICAqIFRoZXJlIGRlY2xhcmF0aW9u
cyBzaG91bGQgZ2VuZXJhdGUgbm8gY29kZSAoYmVzaWRlIHdoZW4gbm8gb3B0aW1pemF0aW9uIGFy
ZQpAQCAtNDUsNyArNDYsNyBAQCB0eXBlZGVmIHN0cnVjdCBTcGljZUR1bW15VHdlYWsgewogI2Rl
ZmluZSBSRUNPUkRFUihyZWMsIG51bV9yaW5ncywgY29tbWVudCkgXAogICAgIFJFQ09SREVSX0RF
RklORShyZWMsIG51bV9yaW5ncywgY29tbWVudCkKICNkZWZpbmUgUkVDT1JERVJfREVGSU5FKHJl
YywgbnVtX3JpbmdzLCBjb21tZW50KSBcCi0gICAgY29uc3QgU3BpY2VFbXB0eVN0cnVjdCBzcGlj
ZV9yZWNvcmRlcl8gIyMgcmVjID0ge30KKyAgICBjb25zdCBTcGljZUVtcHR5U3RydWN0IFNQSUNF
X0dOVUNfVU5VU0VEIHNwaWNlX3JlY29yZGVyXyAjIyByZWMgPSB7fQogI2RlZmluZSBSRUNPUkRF
Ul9UUkFDRShyZWMpIFwKICAgICAoc2l6ZW9mKHNwaWNlX3JlY29yZGVyXyAjIyByZWMpICE9IHNp
emVvZihTcGljZUVtcHR5U3RydWN0KSkKICNkZWZpbmUgUkVDT1JERVJfVFdFQUtfREVDTEFSRShy
ZWMpIFwKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L3NwaWNlLWRldmVs
