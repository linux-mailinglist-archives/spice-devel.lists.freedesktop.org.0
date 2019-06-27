Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 978A85826C
	for <lists+spice-devel@lfdr.de>; Thu, 27 Jun 2019 14:23:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1892889817;
	Thu, 27 Jun 2019 12:23:57 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
 [209.85.221.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DC1E89817
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 12:23:55 +0000 (UTC)
Received: by mail-wr1-f41.google.com with SMTP id v14so2338781wrr.4
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 05:23:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=t2kWSz7AZBhgtZvuAWRzaj+wh1M52quklitaOn7sYgE=;
 b=lP3T+CYdL7WVDRtZRumUxLT/VXclxavBi9EkvsQZXHKwhzUdVKRtGgLz77PB093T5+
 mSgOeaOZWo0GgnhUpFP74uhSbF93uG6tvUvXPYLuiMK8mnYw04zFWARNo3YVzKg5rRJR
 GGgsIGU0rLs7gMfgdPP4g14ZdHQUO4nk8o8vg0CkyQzRrPRE+D34iCvxk42tMTqTWU4c
 X9AJFx6RVp2HDWJ7tWY/c3jQ+O1o31uJ34Oy17hxxqWV0e9wZoCeRwwJyb4m9REmgfmU
 XmhwfnLIGFQokgah88OnDPyq/I/r2iRAaqgBtCDV2kg5LCPN7u2q3QlmvErkU7JgBTvV
 8K6w==
X-Gm-Message-State: APjAAAUKssGA9mAHpWmJx6LMunhqv5rSclvg1/7jzPUXYjvKPTSPXhNz
 e/ZbwcVuWYBEP5VIGzLD6IsZ2k8y0QY=
X-Google-Smtp-Source: APXvYqy7imHwL+yOq/jyTWwugU2DOWlSpqi+4EYQjE15woHnbMTpxS2DMlqFRFiQqePLGr6GneQ5ig==
X-Received: by 2002:a5d:468a:: with SMTP id u10mr3065516wrq.177.1561638233763; 
 Thu, 27 Jun 2019 05:23:53 -0700 (PDT)
Received: from pinea.redhat.com ([2001:861:3440:6a0:71b6:dd5f:657d:58e3])
 by smtp.gmail.com with ESMTPSA id o185sm4484206wmo.45.2019.06.27.05.23.52
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 27 Jun 2019 05:23:53 -0700 (PDT)
From: Kevin Pouget <kpouget@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 27 Jun 2019 14:23:52 +0200
Message-Id: <20190627122352.7773-1-kpouget@redhat.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Spice-devel] [PATCH] streaming: Restart streams on video-codec
 changes
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

SW50ZXJydXB0IHRoZSB2aWRlbyBzdHJlYW1zIHdoZW4gdGhlIHVzZXIgY2hhbmdlcyB0aGUgcHJl
ZmVycmVkCnZpZGVvLWNvZGVjcyAoZGNjX2hhbmRsZV9wcmVmZXJyZWRfdmlkZW9fY29kZWNfdHlw
ZSkgb3Igd2hlbiB0aGUgaG9zdAphZG1pbiB1cGRhdGVzIHRoZSBsaXN0IG9mIHZpZGVvLWNvZGVj
cyBhbGxvd2VkCihkaXNwbGF5X2NoYW5uZWxfc2V0X3ZpZGVvX2NvZGVjcykuCgpUaGUgdmlkZW8g
c3RyZWFtaW5nIHdpbGwgYmUgYXV0b21hdGljYWxseSByZXN0YXJ0ZWQgYnkgc3BpY2UKdmlkZW8t
ZGV0ZWN0aW9uIHJ1bGVzLgotLS0KIHNlcnZlci9kY2MuYyAgICAgICAgICAgICB8IDIgKysKIHNl
cnZlci9kaXNwbGF5LWNoYW5uZWwuYyB8IDIgKysKIDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRp
b25zKCspCgpkaWZmIC0tZ2l0IGEvc2VydmVyL2RjYy5jIGIvc2VydmVyL2RjYy5jCmluZGV4IDcx
ZDA5Yjc3Li44Njg5M2ZmZSAxMDA2NDQKLS0tIGEvc2VydmVyL2RjYy5jCisrKyBiL3NlcnZlci9k
Y2MuYwpAQCAtMTE5OCw2ICsxMTk4LDggQEAgc3RhdGljIGludCBkY2NfaGFuZGxlX3ByZWZlcnJl
ZF92aWRlb19jb2RlY190eXBlKERpc3BsYXlDaGFubmVsQ2xpZW50ICpkY2MsCiAKICAgICAvKiBO
ZXcgY2xpZW50IHByZWZlcmVuY2UgKi8KICAgICBkY2NfdXBkYXRlX3ByZWZlcnJlZF92aWRlb19j
b2RlY3MoZGNjKTsKKyAgICB2aWRlb19zdHJlYW1fZGV0YWNoX2FuZF9zdG9wKERDQ19UT19EQyhk
Y2MpKTsKKwogICAgIHJldHVybiBUUlVFOwogfQogCmRpZmYgLS1naXQgYS9zZXJ2ZXIvZGlzcGxh
eS1jaGFubmVsLmMgYi9zZXJ2ZXIvZGlzcGxheS1jaGFubmVsLmMKaW5kZXggNDY3N2MyNjEuLjc1
MjY2NTk4IDEwMDY0NAotLS0gYS9zZXJ2ZXIvZGlzcGxheS1jaGFubmVsLmMKKysrIGIvc2VydmVy
L2Rpc3BsYXktY2hhbm5lbC5jCkBAIC0yNTUsNiArMjU1LDggQEAgdm9pZCBkaXNwbGF5X2NoYW5u
ZWxfc2V0X3ZpZGVvX2NvZGVjcyhEaXNwbGF5Q2hhbm5lbCAqZGlzcGxheSwgR0FycmF5ICp2aWRl
b19jb2QKICAgICBnX2NsZWFyX3BvaW50ZXIoJmRpc3BsYXktPnByaXYtPnZpZGVvX2NvZGVjcywg
Z19hcnJheV91bnJlZik7CiAgICAgZGlzcGxheS0+cHJpdi0+dmlkZW9fY29kZWNzID0gZ19hcnJh
eV9yZWYodmlkZW9fY29kZWNzKTsKICAgICBnX29iamVjdF9ub3RpZnkoR19PQkpFQ1QoZGlzcGxh
eSksICJ2aWRlby1jb2RlY3MiKTsKKworICAgIHZpZGVvX3N0cmVhbV9kZXRhY2hfYW5kX3N0b3Ao
ZGlzcGxheSk7CiB9CiAKIEdBcnJheSAqZGlzcGxheV9jaGFubmVsX2dldF92aWRlb19jb2RlY3Mo
RGlzcGxheUNoYW5uZWwgKmRpc3BsYXkpCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGlj
ZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
