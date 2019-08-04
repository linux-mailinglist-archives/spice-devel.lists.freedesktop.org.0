Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D453F80C1C
	for <lists+spice-devel@lfdr.de>; Sun,  4 Aug 2019 21:16:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83E6A89DA7;
	Sun,  4 Aug 2019 19:16:38 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC9A889D9B
 for <spice-devel@lists.freedesktop.org>; Sun,  4 Aug 2019 19:16:36 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id r1so82194327wrl.7
 for <spice-devel@lists.freedesktop.org>; Sun, 04 Aug 2019 12:16:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=yDGJgYA0HvpVP5CYLfzijGPrOR6O4l7gud6981fJnsY=;
 b=REZV9VtVpyW3yfXS/BIWmi9aF6ZHaxB/OOi7Ua3y//6PLYcZMGgt3E1XrVPbKAEeGT
 2tW8Fz7UGRR+u1jmyT7eagpVJR3i/EC6nmeN3wxv5VcnirUzzrobHp9ifuuwrjTur2gA
 ndRZeTbbEuw8Pb2XWz4/mX3lHTsiN7x2b+MgC7SS7JVPB+4pzDDkK+WvU+AxPe0rRuU6
 4daLzb6HRvaWUh5t4R5isTPGz/qkSX6azz693nIfOWvop4hgSncUvfGqBo18DMwxPyTD
 J73n7IZYTas8RIg5nKUVXtnkY+RbpsjBiE7B7qJ52cfWXMPRhaUKzGn6nHppNfONKczg
 fbZw==
X-Gm-Message-State: APjAAAUEWq5kj/9JfRpIjvuM7Fpay0rTcA1Pduujk62oPpmCYrP4f3Ax
 pzqM3yaMMJlFi3mNXE56GW4PdVe4
X-Google-Smtp-Source: APXvYqzQrBoDjoTHZq/j6WCJO0bemrij+FulL3DmHXDWq8ZN3RRvUX4EBoViTTnzyfDXaGaNjtXJ6w==
X-Received: by 2002:adf:cf02:: with SMTP id o2mr10699458wrj.352.1564946195095; 
 Sun, 04 Aug 2019 12:16:35 -0700 (PDT)
Received: from f2.redhat.com (bzq-79-182-115-245.red.bezeqint.net.
 [79.182.115.245])
 by smtp.gmail.com with ESMTPSA id f204sm136527687wme.18.2019.08.04.12.16.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 04 Aug 2019 12:16:34 -0700 (PDT)
From: Yuri Benditovich <yuri.benditovich@daynix.com>
To: spice-devel@lists.freedesktop.org
Date: Sun,  4 Aug 2019 22:16:19 +0300
Message-Id: <20190804191624.29235-4-yuri.benditovich@daynix.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190804191624.29235-1-yuri.benditovich@daynix.com>
References: <20190804191624.29235-1-yuri.benditovich@daynix.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=yDGJgYA0HvpVP5CYLfzijGPrOR6O4l7gud6981fJnsY=;
 b=IIWxnuYhxwuvSPCNxTJ989oH/9W44Iodl1qhHAghr6FmNDk2zVnNqKWpvPx83oR1LB
 BoGIng69lIlvCixgQ1CHML6/PHHxIbF+z7R4ImDu45u459ZuXn9BgMKS9ePuWyG0zxsk
 iHEFqGeYKeDV75ynPIdoPqcSQcj4ifNGc7O1A24z6fojjuuuwrUZEwkM9CazUSWxvmqT
 UF9WZbi+W+/Cxl66Kfu+f7qExv/iJBc9I92rB0pGXaUCrkMld0vQm6zqxPvEEcxz08Ai
 Hruruo9//qiq+S2IWAAjm/Nsuolqw3rkiEm+pLvoOvEedm4D4gcnzwvRTLN2gy6AnA+J
 cwSw==
Subject: [Spice-devel] [spice-gtk v2 3/8] usb-redir: do not use
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
Y29tPgotLS0KIHNyYy9jaGFubmVsLXVzYnJlZGlyLmMgfCAzMSArKysrKysrKysrKysrKystLS0t
LS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwgMTYgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL2NoYW5uZWwtdXNicmVkaXIuYyBiL3NyYy9jaGFubmVs
LXVzYnJlZGlyLmMKaW5kZXggOGQ0Y2Q2Ni4uOGZkNmI0MSAxMDA2NDQKLS0tIGEvc3JjL2NoYW5u
ZWwtdXNicmVkaXIuYworKysgYi9zcmMvY2hhbm5lbC11c2JyZWRpci5jCkBAIC0zMDEsNyArMzAx
LDYgQEAgc3RhdGljIHZvaWQgc3BpY2VfdXNicmVkaXJfY2hhbm5lbF9vcGVuX2FjbF9jYigKIH0K
ICNlbmRpZgogCi0jaWZuZGVmIFVTRV9QT0xLSVQKIHN0YXRpYyB2b2lkCiBfb3Blbl9kZXZpY2Vf
YXN5bmNfY2IoR1Rhc2sgKnRhc2ssCiAgICAgICAgICAgICAgICAgICAgICAgZ3BvaW50ZXIgb2Jq
ZWN0LApAQCAtMzI4LDcgKzMyNyw2IEBAIF9vcGVuX2RldmljZV9hc3luY19jYihHVGFzayAqdGFz
aywKICAgICAgICAgZ190YXNrX3JldHVybl9ib29sZWFuKHRhc2ssIFRSVUUpOwogICAgIH0KIH0K
LSNlbmRpZgogCiBHX0dOVUNfSU5URVJOQUwKIHZvaWQgc3BpY2VfdXNicmVkaXJfY2hhbm5lbF9j
b25uZWN0X2RldmljZV9hc3luYygKQEAgLTM3MywyMSArMzcxLDIyIEBAIHZvaWQgc3BpY2VfdXNi
cmVkaXJfY2hhbm5lbF9jb25uZWN0X2RldmljZV9hc3luYygKICAgICBwcml2LT5zcGljZV9kZXZp
Y2UgPSBnX2JveGVkX2NvcHkoc3BpY2VfdXNiX2RldmljZV9nZXRfdHlwZSgpLAogICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzcGljZV9kZXZpY2UpOwogI2lmZGVmIFVTRV9Q
T0xLSVQKLSAgICBwcml2LT50YXNrID0gdGFzazsKLSAgICBwcml2LT5zdGF0ZSAgPSBTVEFURV9X
QUlUSU5HX0ZPUl9BQ0xfSEVMUEVSOwotICAgIHByaXYtPmFjbF9oZWxwZXIgPSBzcGljZV91c2Jf
YWNsX2hlbHBlcl9uZXcoKTsKLSAgICBnX29iamVjdF9zZXQoc3BpY2VfY2hhbm5lbF9nZXRfc2Vz
c2lvbihTUElDRV9DSEFOTkVMKGNoYW5uZWwpKSwKLSAgICAgICAgICAgICAgICAgImluaGliaXQt
a2V5Ym9hcmQtZ3JhYiIsIFRSVUUsIE5VTEwpOwotICAgIHNwaWNlX3VzYl9hY2xfaGVscGVyX29w
ZW5fYWNsX2FzeW5jKHByaXYtPmFjbF9oZWxwZXIsCi0gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgaW5mby0+YnVzLAotICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIGluZm8tPmFkZHJlc3MsCi0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgY2FuY2VsbGFibGUsCi0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgc3BpY2VfdXNicmVkaXJfY2hhbm5lbF9vcGVuX2FjbF9jYiwKLSAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBjaGFubmVsKTsKLSAgICByZXR1cm47Ci0jZWxzZQot
ICAgIGdfdGFza19ydW5faW5fdGhyZWFkKHRhc2ssIF9vcGVuX2RldmljZV9hc3luY19jYik7Cisg
ICAgaWYgKGluZm8tPmJ1cyAhPSBCVVNfTlVNQkVSX0ZPUl9FTVVMQVRFRF9VU0IpIHsKKyAgICAg
ICAgcHJpdi0+dGFzayA9IHRhc2s7CisgICAgICAgIHByaXYtPnN0YXRlICA9IFNUQVRFX1dBSVRJ
TkdfRk9SX0FDTF9IRUxQRVI7CisgICAgICAgIHByaXYtPmFjbF9oZWxwZXIgPSBzcGljZV91c2Jf
YWNsX2hlbHBlcl9uZXcoKTsKKyAgICAgICAgZ19vYmplY3Rfc2V0KHNwaWNlX2NoYW5uZWxfZ2V0
X3Nlc3Npb24oU1BJQ0VfQ0hBTk5FTChjaGFubmVsKSksCisgICAgICAgICAgICAgICAgICAgICJp
bmhpYml0LWtleWJvYXJkLWdyYWIiLCBUUlVFLCBOVUxMKTsKKyAgICAgICAgc3BpY2VfdXNiX2Fj
bF9oZWxwZXJfb3Blbl9hY2xfYXN5bmMocHJpdi0+YWNsX2hlbHBlciwKKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaW5mby0+YnVzLAorICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpbmZvLT5hZGRyZXNzLAorICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjYW5jZWxsYWJsZSwKKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3BpY2VfdXNicmVkaXJfY2hhbm5lbF9v
cGVuX2FjbF9jYiwKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
Y2hhbm5lbCk7CisgICAgICAgIHJldHVybjsKKyAgICB9CiAjZW5kaWYKKyAgICBnX3Rhc2tfcnVu
X2luX3RocmVhZCh0YXNrLCBfb3Blbl9kZXZpY2VfYXN5bmNfY2IpOwogCiBkb25lOgogICAgIGdf
b2JqZWN0X3VucmVmKHRhc2spOwotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
