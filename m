Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B44389AA1
	for <lists+spice-devel@lfdr.de>; Mon, 12 Aug 2019 11:57:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAD886E4C9;
	Mon, 12 Aug 2019 09:57:49 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 835AF6E4C9
 for <spice-devel@lists.freedesktop.org>; Mon, 12 Aug 2019 09:57:48 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id f72so11545384wmf.5
 for <spice-devel@lists.freedesktop.org>; Mon, 12 Aug 2019 02:57:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=yp9oiQnbL75B2sTbPSCfBjZ0GOEbX7t6V1u78RMRA1c=;
 b=Su1N+o46vGlTXKknX58HW8LBnASQj1BYgHo0uTUfjKcoO5xyTBtu6C4jiMSnp25F+i
 bpYzv98S4edykeBG/xHMZz3der5Styn7ZHGyojSw7ICSqeGITXL4qOpAr45FvmNJabgP
 kdSfxNRAJRs4iumhH6pA7ZYQ9NONwzjL+TvUlrB9F0Xm5Mp8o+bb/5ALIJ4lgBvkQhbA
 PljJkjn/HCI+JTSZtA2VhDj+ceH+zBlN+jVcmWVo3j12B6mOytbOTg7vPfTcKnSKg+VH
 Wno5ORPCXU293adrPllCjLEUhElSFFurUvZO5md8bG55SBRFOWKJYQP/eLzpZuMCtG4f
 F9ag==
X-Gm-Message-State: APjAAAVXE0jENEG8KONEkq+725fv0rFonvudgaVKN4J/qeIv+aH01/by
 ObzAl+ITZkPP1tOgoEi4Br0emwlf03o=
X-Google-Smtp-Source: APXvYqxHv6xWtmlWnr06FZ7wXC/X3OyzznmcjBCI+7U0lIoG6qFm/L6nEcLPh0Zq5Us4XGet5sltZw==
X-Received: by 2002:a7b:c929:: with SMTP id h9mr28194485wml.1.1565603866904;
 Mon, 12 Aug 2019 02:57:46 -0700 (PDT)
Received: from f2.redhat.com (bzq-79-182-115-245.red.bezeqint.net.
 [79.182.115.245])
 by smtp.gmail.com with ESMTPSA id g14sm11930659wrb.38.2019.08.12.02.57.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 12 Aug 2019 02:57:46 -0700 (PDT)
From: Yuri Benditovich <yuri.benditovich@daynix.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 12 Aug 2019 12:57:24 +0300
Message-Id: <20190812095729.32692-5-yuri.benditovich@daynix.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190812095729.32692-1-yuri.benditovich@daynix.com>
References: <20190812095729.32692-1-yuri.benditovich@daynix.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=yp9oiQnbL75B2sTbPSCfBjZ0GOEbX7t6V1u78RMRA1c=;
 b=Y47f4OondMbqHkhrnF6kMODxH8cmn6f3mT4Hrxf7s5levb4TBv7Gy6zRDiKKiDtYuA
 ERFxNuY38TSZxiCivty9r1kuKAo1odbahD/m+9r2a9oCdkW4i2NOoS6T/YobHfgTe02z
 x7AjayDi5MAWbdSp7MkwkaS8cKfkXsA6rARLL9rieLGnj5Q3CDziYzIJ3Oad9vL/sWtr
 zS/HI0Lr0fsFRlWb4fOaXykgREj+EMkg6PerAP5g0tUhTPqry+Fl3cyRMSBd4+gI5joF
 MBemmjJqoRTwS4gAbw9d/JnvxQeOuecHdYpyWVVN1v27UfNFrpukDwNQFA67WZwJ3m6P
 JoYA==
Subject: [Spice-devel] [spice-gtk v3 4/9] usb-redir: do not use
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
Y29tPgpBY2tlZC1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQog
c3JjL2NoYW5uZWwtdXNicmVkaXIuYyB8IDMxICsrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0t
LS0KIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9zcmMvY2hhbm5lbC11c2JyZWRpci5jIGIvc3JjL2NoYW5uZWwtdXNicmVkaXIu
YwppbmRleCA4ZDRjZDY2Li44ZmQ2YjQxIDEwMDY0NAotLS0gYS9zcmMvY2hhbm5lbC11c2JyZWRp
ci5jCisrKyBiL3NyYy9jaGFubmVsLXVzYnJlZGlyLmMKQEAgLTMwMSw3ICszMDEsNiBAQCBzdGF0
aWMgdm9pZCBzcGljZV91c2JyZWRpcl9jaGFubmVsX29wZW5fYWNsX2NiKAogfQogI2VuZGlmCiAK
LSNpZm5kZWYgVVNFX1BPTEtJVAogc3RhdGljIHZvaWQKIF9vcGVuX2RldmljZV9hc3luY19jYihH
VGFzayAqdGFzaywKICAgICAgICAgICAgICAgICAgICAgICBncG9pbnRlciBvYmplY3QsCkBAIC0z
MjgsNyArMzI3LDYgQEAgX29wZW5fZGV2aWNlX2FzeW5jX2NiKEdUYXNrICp0YXNrLAogICAgICAg
ICBnX3Rhc2tfcmV0dXJuX2Jvb2xlYW4odGFzaywgVFJVRSk7CiAgICAgfQogfQotI2VuZGlmCiAK
IEdfR05VQ19JTlRFUk5BTAogdm9pZCBzcGljZV91c2JyZWRpcl9jaGFubmVsX2Nvbm5lY3RfZGV2
aWNlX2FzeW5jKApAQCAtMzczLDIxICszNzEsMjIgQEAgdm9pZCBzcGljZV91c2JyZWRpcl9jaGFu
bmVsX2Nvbm5lY3RfZGV2aWNlX2FzeW5jKAogICAgIHByaXYtPnNwaWNlX2RldmljZSA9IGdfYm94
ZWRfY29weShzcGljZV91c2JfZGV2aWNlX2dldF90eXBlKCksCiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHNwaWNlX2RldmljZSk7CiAjaWZkZWYgVVNFX1BPTEtJVAotICAg
IHByaXYtPnRhc2sgPSB0YXNrOwotICAgIHByaXYtPnN0YXRlICA9IFNUQVRFX1dBSVRJTkdfRk9S
X0FDTF9IRUxQRVI7Ci0gICAgcHJpdi0+YWNsX2hlbHBlciA9IHNwaWNlX3VzYl9hY2xfaGVscGVy
X25ldygpOwotICAgIGdfb2JqZWN0X3NldChzcGljZV9jaGFubmVsX2dldF9zZXNzaW9uKFNQSUNF
X0NIQU5ORUwoY2hhbm5lbCkpLAotICAgICAgICAgICAgICAgICAiaW5oaWJpdC1rZXlib2FyZC1n
cmFiIiwgVFJVRSwgTlVMTCk7Ci0gICAgc3BpY2VfdXNiX2FjbF9oZWxwZXJfb3Blbl9hY2xfYXN5
bmMocHJpdi0+YWNsX2hlbHBlciwKLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBpbmZvLT5idXMsCi0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
aW5mby0+YWRkcmVzcywKLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBj
YW5jZWxsYWJsZSwKLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzcGlj
ZV91c2JyZWRpcl9jaGFubmVsX29wZW5fYWNsX2NiLAotICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGNoYW5uZWwpOwotICAgIHJldHVybjsKLSNlbHNlCi0gICAgZ190YXNr
X3J1bl9pbl90aHJlYWQodGFzaywgX29wZW5fZGV2aWNlX2FzeW5jX2NiKTsKKyAgICBpZiAoaW5m
by0+YnVzICE9IEJVU19OVU1CRVJfRk9SX0VNVUxBVEVEX1VTQikgeworICAgICAgICBwcml2LT50
YXNrID0gdGFzazsKKyAgICAgICAgcHJpdi0+c3RhdGUgID0gU1RBVEVfV0FJVElOR19GT1JfQUNM
X0hFTFBFUjsKKyAgICAgICAgcHJpdi0+YWNsX2hlbHBlciA9IHNwaWNlX3VzYl9hY2xfaGVscGVy
X25ldygpOworICAgICAgICBnX29iamVjdF9zZXQoc3BpY2VfY2hhbm5lbF9nZXRfc2Vzc2lvbihT
UElDRV9DSEFOTkVMKGNoYW5uZWwpKSwKKyAgICAgICAgICAgICAgICAgICAgImluaGliaXQta2V5
Ym9hcmQtZ3JhYiIsIFRSVUUsIE5VTEwpOworICAgICAgICBzcGljZV91c2JfYWNsX2hlbHBlcl9v
cGVuX2FjbF9hc3luYyhwcml2LT5hY2xfaGVscGVyLAorICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBpbmZvLT5idXMsCisgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGluZm8tPmFkZHJlc3MsCisgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIGNhbmNlbGxhYmxlLAorICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBzcGljZV91c2JyZWRpcl9jaGFubmVsX29wZW5fYWNsX2Ni
LAorICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjaGFubmVsKTsK
KyAgICAgICAgcmV0dXJuOworICAgIH0KICNlbmRpZgorICAgIGdfdGFza19ydW5faW5fdGhyZWFk
KHRhc2ssIF9vcGVuX2RldmljZV9hc3luY19jYik7CiAKIGRvbmU6CiAgICAgZ19vYmplY3RfdW5y
ZWYodGFzayk7Ci0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9zcGljZS1kZXZlbA==
