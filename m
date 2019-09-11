Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4FF2AF843
	for <lists+spice-devel@lfdr.de>; Wed, 11 Sep 2019 10:51:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EAFE6EA5E;
	Wed, 11 Sep 2019 08:51:29 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 128946EA5E
 for <spice-devel@lists.freedesktop.org>; Wed, 11 Sep 2019 08:51:28 +0000 (UTC)
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8F0C09D0DA
 for <spice-devel@lists.freedesktop.org>; Wed, 11 Sep 2019 08:51:27 +0000 (UTC)
Received: by mail-wm1-f70.google.com with SMTP id n3so372015wmf.3
 for <spice-devel@lists.freedesktop.org>; Wed, 11 Sep 2019 01:51:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SPrYlg9W+JPqD8VFEERHIjzPBJHBDhlZUa++Gmz251g=;
 b=Zhq1Qm4rsy7NC6EuHmJWR/paYtWd1ES3aW/omNthVEYuWA5kNoErBekFOqnDgosKlN
 MIowU3mKQxvXTV98nNHGK/ygRhXNw3HCdZMFZ0OSMyxTeNejvPCSg2KdF8M/58vWK1hf
 blDDBvlGgGwe1W+Q9FMYnGjiR4R5wJuFNEdv+BgJYkoY3DnrXI+AAMhTsctNzrvD4m8G
 99MPdEKez2L0T23W2XdkNvPC9f6A+3HlxPI/JdoIAntpwnacasAJ/eb2LLV+m+BkAAJn
 /gAXCELerlsPgTbgVi748zi2U+tdkkWnmbDPZZKeNYHs7WCA8t77a6bLm+8EIvuqx2NT
 ZKTw==
X-Gm-Message-State: APjAAAXR5Disd/sjwOWi9J7k7Mjg0A/cruj/3HpIB+Wke39DCRXNuL+Y
 3XSasITnfBkR2xHixb1GNRwZ9Z8Sp7jQlv2LmDpikduQvHupq0wJOBDMC0CD219tb4EBcbAOaZf
 ikzcMMnG6U5ZB/YhndBKYerpdu00e3Ls=
X-Received: by 2002:a1c:eb06:: with SMTP id j6mr3155882wmh.76.1568191886036;
 Wed, 11 Sep 2019 01:51:26 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxkdrtAHHJDznZc7AZQx/mL9M/DsIUr57dKLjZTAmXwZtlalbY0RZIsjsVNellVS41fwBkYSA==
X-Received: by 2002:a1c:eb06:: with SMTP id j6mr3155875wmh.76.1568191885895;
 Wed, 11 Sep 2019 01:51:25 -0700 (PDT)
Received: from pinea.redhat.com ([2001:861:3440:6a0:2cf1:592d:314d:825])
 by smtp.gmail.com with ESMTPSA id c6sm35754769wrb.60.2019.09.11.01.51.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Sep 2019 01:51:25 -0700 (PDT)
From: Kevin Pouget <kpouget@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 11 Sep 2019 10:51:20 +0200
Message-Id: <20190911085120.6239-1-kpouget@redhat.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <392846067.11493336.1568187825565.JavaMail.zimbra@redhat.com>
References: <392846067.11493336.1568187825565.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Subject: [Spice-devel] [PATCH spice-common v2] common/recorder.h: do not
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
bW9uL3JlY29yZGVyLmggfCAzICsrLQogdGVzdHMvTWFrZWZpbGUuYW0gfCAxICsKIDIgZmlsZXMg
Y2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvY29t
bW9uL3JlY29yZGVyLmggYi9jb21tb24vcmVjb3JkZXIuaAppbmRleCA5OGI4Nzk3Li44NDQ4ZTAy
IDEwMDY0NAotLS0gYS9jb21tb24vcmVjb3JkZXIuaAorKysgYi9jb21tb24vcmVjb3JkZXIuaApA
QCAtMjAsNiArMjAsNyBAQAogCiAjaW5jbHVkZSA8c3RkaW8uaD4KICNpbmNsdWRlIDxzdGRpbnQu
aD4KKyNpbmNsdWRlIDxzcGljZS9tYWNyb3MuaD4KIAogLyogUmVwbGFjZW1lbnQgZGVjbGFyYXRp
b25zLgogICogVGhlcmUgZGVjbGFyYXRpb25zIHNob3VsZCBnZW5lcmF0ZSBubyBjb2RlIChiZXNp
ZGUgd2hlbiBubyBvcHRpbWl6YXRpb24gYXJlCkBAIC00NSw3ICs0Niw3IEBAIHR5cGVkZWYgc3Ry
dWN0IFNwaWNlRHVtbXlUd2VhayB7CiAjZGVmaW5lIFJFQ09SREVSKHJlYywgbnVtX3JpbmdzLCBj
b21tZW50KSBcCiAgICAgUkVDT1JERVJfREVGSU5FKHJlYywgbnVtX3JpbmdzLCBjb21tZW50KQog
I2RlZmluZSBSRUNPUkRFUl9ERUZJTkUocmVjLCBudW1fcmluZ3MsIGNvbW1lbnQpIFwKLSAgICBj
b25zdCBTcGljZUVtcHR5U3RydWN0IHNwaWNlX3JlY29yZGVyXyAjIyByZWMgPSB7fQorICAgIGNv
bnN0IFNwaWNlRW1wdHlTdHJ1Y3QgU1BJQ0VfR05VQ19VTlVTRUQgc3BpY2VfcmVjb3JkZXJfICMj
IHJlYyA9IHt9CiAjZGVmaW5lIFJFQ09SREVSX1RSQUNFKHJlYykgXAogICAgIChzaXplb2Yoc3Bp
Y2VfcmVjb3JkZXJfICMjIHJlYykgIT0gc2l6ZW9mKFNwaWNlRW1wdHlTdHJ1Y3QpKQogI2RlZmlu
ZSBSRUNPUkRFUl9UV0VBS19ERUNMQVJFKHJlYykgXApkaWZmIC0tZ2l0IGEvdGVzdHMvTWFrZWZp
bGUuYW0gYi90ZXN0cy9NYWtlZmlsZS5hbQppbmRleCA0YjhiY2Y0Li4wZDc1ZDZiIDEwMDY0NAot
LS0gYS90ZXN0cy9NYWtlZmlsZS5hbQorKysgYi90ZXN0cy9NYWtlZmlsZS5hbQpAQCAtNzMsNiAr
NzMsNyBAQCB0ZXN0X2R1bW15X3JlY29yZGVyX1NPVVJDRVMgPQkJXAogCSQoTlVMTCkKIHRlc3Rf
ZHVtbXlfcmVjb3JkZXJfQ0ZMQUdTID0JCVwKIAktSSQodG9wX3NyY2RpcikJCQlcCisJJChQUk9U
T0NPTF9DRkxBR1MpICAgICAgICAgICAgICBcCiAJJChOVUxMKQogdGVzdF9kdW1teV9yZWNvcmRl
cl9MREFERCA9CQkJCVwKIAkkKHRvcF9idWlsZGRpcikvY29tbW9uL2xpYnNwaWNlLWNvbW1vbi5s
YQlcCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9z
cGljZS1kZXZlbA==
