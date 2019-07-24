Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4491772CAA
	for <lists+spice-devel@lfdr.de>; Wed, 24 Jul 2019 12:54:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C904C6E509;
	Wed, 24 Jul 2019 10:54:05 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com
 [IPv6:2a00:1450:4864:20::332])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F24E36E509
 for <spice-devel@lists.freedesktop.org>; Wed, 24 Jul 2019 10:54:04 +0000 (UTC)
Received: by mail-wm1-x332.google.com with SMTP id s15so19831033wmj.3
 for <spice-devel@lists.freedesktop.org>; Wed, 24 Jul 2019 03:54:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/kbXJD4QvXHON9aow6CNJkLH3KVVB5xj8zmGnuFPLRA=;
 b=bLqGQyw9PsLIDDuyNBFDVDjumZNmWn+z4Y8tmvMvsiWRizO1BkGqM1lUew7w5EJaYQ
 qq8qCDZKOJqshF7W3DkZg7ZYviLRAyOdrcw4aJrv53ntGaNvrzKBb3qj4q6eANtdd/QJ
 Z8FHTToyxTJ7XNY1LG4yF7t2/rb4/ZmdqW8THgnBwV9jb/mIrKj7AJQi+D90fHQeCyIA
 LUpvnuIJj1O/nNhQ0BsTSzCF5T/2EBek66vbHkhr66OJySllPOnOxK0AJZOVp9/YvIZr
 i09bZn48wLO4BIjP2OSvR/Brt3tokhNrZMT9Es+H8xf6/3t7UAJQn7DSa49OUzdAIv6y
 Rh9Q==
X-Gm-Message-State: APjAAAXYVUogMRTTFpyZnw6ddUbR6/jfGtJuNJxlfs5HCvYi+MS64ARx
 E1/tvXJZ4tCh6kcjooMca3Rvs3qO
X-Google-Smtp-Source: APXvYqyqpKLgcDgwA3V1+Nl8LKGMpzy9a8uybA69FbwdIlCiYc7aFk2dzneflCfaESZJF/qpA240Jw==
X-Received: by 2002:a7b:cbcb:: with SMTP id n11mr71599605wmi.146.1563965643412; 
 Wed, 24 Jul 2019 03:54:03 -0700 (PDT)
Received: from f2.redhat.com (bzq-79-182-115-245.red.bezeqint.net.
 [79.182.115.245])
 by smtp.gmail.com with ESMTPSA id r12sm53542137wrt.95.2019.07.24.03.54.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 24 Jul 2019 03:54:03 -0700 (PDT)
From: Yuri Benditovich <yuri.benditovich@daynix.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 24 Jul 2019 13:53:47 +0300
Message-Id: <20190724105351.13753-6-yuri.benditovich@daynix.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190724105351.13753-1-yuri.benditovich@daynix.com>
References: <20190724105351.13753-1-yuri.benditovich@daynix.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/kbXJD4QvXHON9aow6CNJkLH3KVVB5xj8zmGnuFPLRA=;
 b=YrqBvwtFZlBrSAKp/SHQtcOBvk9jC2YHp/KAY+2zSYtUwOearIlCgU/GYoAnNAwcO5
 aJlkzl8DOhT+N2rl6btuMhmF2GAst6RtSU5kRZgEkvY9OsApuXB4S5AP5fCvfJdF9pbd
 zoEjsc6I5nTZTp2U1md98lJQOyr8CIdOat3tmy5IVWRMRPvxCfwnzHqOyjSyk/iSbYes
 Wgt5St7H6k6lniF0B1uxJHmqnd29rqJIX+fg/thmcwGoiizYmiwhc0yk5IXUIlsCa+FM
 pvsD7xZN5q/2JJ2/yVx5cFu64jgiXsY5PB4XfkoC41lIUSJuCi8jyNp1k1dMFPp7t9PZ
 qKpg==
Subject: [Spice-devel] [spice-gtk 5/9] usb-redir: do not use
 spice_usb_acl_helper for emulated devices
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
Cc: yan@daynix.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

U2lnbmVkLW9mZi1ieTogWXVyaSBCZW5kaXRvdmljaCA8eXVyaS5iZW5kaXRvdmljaEBkYXluaXgu
Y29tPgotLS0KIHNyYy9jaGFubmVsLXVzYnJlZGlyLmMgfCAyOSArKysrKysrKysrKysrKy0tLS0t
LS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDE1IGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL3NyYy9jaGFubmVsLXVzYnJlZGlyLmMgYi9zcmMvY2hhbm5lbC11
c2JyZWRpci5jCmluZGV4IDhkNGNkNjYuLjk2MWE0NjQgMTAwNjQ0Ci0tLSBhL3NyYy9jaGFubmVs
LXVzYnJlZGlyLmMKKysrIGIvc3JjL2NoYW5uZWwtdXNicmVkaXIuYwpAQCAtMzAxLDcgKzMwMSw2
IEBAIHN0YXRpYyB2b2lkIHNwaWNlX3VzYnJlZGlyX2NoYW5uZWxfb3Blbl9hY2xfY2IoCiB9CiAj
ZW5kaWYKIAotI2lmbmRlZiBVU0VfUE9MS0lUCiBzdGF0aWMgdm9pZAogX29wZW5fZGV2aWNlX2Fz
eW5jX2NiKEdUYXNrICp0YXNrLAogICAgICAgICAgICAgICAgICAgICAgIGdwb2ludGVyIG9iamVj
dCwKQEAgLTMyOCw3ICszMjcsNiBAQCBfb3Blbl9kZXZpY2VfYXN5bmNfY2IoR1Rhc2sgKnRhc2ss
CiAgICAgICAgIGdfdGFza19yZXR1cm5fYm9vbGVhbih0YXNrLCBUUlVFKTsKICAgICB9CiB9Ci0j
ZW5kaWYKIAogR19HTlVDX0lOVEVSTkFMCiB2b2lkIHNwaWNlX3VzYnJlZGlyX2NoYW5uZWxfY29u
bmVjdF9kZXZpY2VfYXN5bmMoCkBAIC0zNzMsMjEgKzM3MSwyMiBAQCB2b2lkIHNwaWNlX3VzYnJl
ZGlyX2NoYW5uZWxfY29ubmVjdF9kZXZpY2VfYXN5bmMoCiAgICAgcHJpdi0+c3BpY2VfZGV2aWNl
ID0gZ19ib3hlZF9jb3B5KHNwaWNlX3VzYl9kZXZpY2VfZ2V0X3R5cGUoKSwKICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgc3BpY2VfZGV2aWNlKTsKICNpZmRlZiBVU0VfUE9M
S0lUCi0gICAgcHJpdi0+dGFzayA9IHRhc2s7Ci0gICAgcHJpdi0+c3RhdGUgID0gU1RBVEVfV0FJ
VElOR19GT1JfQUNMX0hFTFBFUjsKLSAgICBwcml2LT5hY2xfaGVscGVyID0gc3BpY2VfdXNiX2Fj
bF9oZWxwZXJfbmV3KCk7Ci0gICAgZ19vYmplY3Rfc2V0KHNwaWNlX2NoYW5uZWxfZ2V0X3Nlc3Np
b24oU1BJQ0VfQ0hBTk5FTChjaGFubmVsKSksCi0gICAgICAgICAgICAgICAgICJpbmhpYml0LWtl
eWJvYXJkLWdyYWIiLCBUUlVFLCBOVUxMKTsKLSAgICBzcGljZV91c2JfYWNsX2hlbHBlcl9vcGVu
X2FjbF9hc3luYyhwcml2LT5hY2xfaGVscGVyLAotICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIGluZm8tPmJ1cywKLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBpbmZvLT5hZGRyZXNzLAotICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIGNhbmNlbGxhYmxlLAotICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHNwaWNlX3VzYnJlZGlyX2NoYW5uZWxfb3Blbl9hY2xfY2IsCi0gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgY2hhbm5lbCk7CisgICAgaWYgKGluZm8tPmRldmljZV90
eXBlID09IFVTQl9ERVZfVFlQRV9OT05FKSB7CisgICAgICAgIHByaXYtPnRhc2sgPSB0YXNrOwor
ICAgICAgICBwcml2LT5zdGF0ZSAgPSBTVEFURV9XQUlUSU5HX0ZPUl9BQ0xfSEVMUEVSOworICAg
ICAgICBwcml2LT5hY2xfaGVscGVyID0gc3BpY2VfdXNiX2FjbF9oZWxwZXJfbmV3KCk7CisgICAg
ICAgIGdfb2JqZWN0X3NldChzcGljZV9jaGFubmVsX2dldF9zZXNzaW9uKFNQSUNFX0NIQU5ORUwo
Y2hhbm5lbCkpLAorICAgICAgICAgICAgICAgICAgICAiaW5oaWJpdC1rZXlib2FyZC1ncmFiIiwg
VFJVRSwgTlVMTCk7CisgICAgICAgIHNwaWNlX3VzYl9hY2xfaGVscGVyX29wZW5fYWNsX2FzeW5j
KHByaXYtPmFjbF9oZWxwZXIsCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIGluZm8tPmJ1cywKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgaW5mby0+YWRkcmVzcywKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgY2FuY2VsbGFibGUsCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHNwaWNlX3VzYnJlZGlyX2NoYW5uZWxfb3Blbl9hY2xfY2IsCisgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNoYW5uZWwpOworICAgIH0KICAgICBy
ZXR1cm47Ci0jZWxzZQotICAgIGdfdGFza19ydW5faW5fdGhyZWFkKHRhc2ssIF9vcGVuX2Rldmlj
ZV9hc3luY19jYik7CiAjZW5kaWYKKyAgICBnX3Rhc2tfcnVuX2luX3RocmVhZCh0YXNrLCBfb3Bl
bl9kZXZpY2VfYXN5bmNfY2IpOwogCiBkb25lOgogICAgIGdfb2JqZWN0X3VucmVmKHRhc2spOwot
LSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2Ut
ZGV2ZWw=
