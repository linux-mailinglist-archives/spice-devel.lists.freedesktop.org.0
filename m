Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F28DF83565
	for <lists+spice-devel@lfdr.de>; Tue,  6 Aug 2019 17:35:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BC546E3F7;
	Tue,  6 Aug 2019 15:35:09 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
 [209.85.128.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B01996E3F7
 for <spice-devel@lists.freedesktop.org>; Tue,  6 Aug 2019 15:35:07 +0000 (UTC)
Received: by mail-wm1-f49.google.com with SMTP id h19so9206715wme.0
 for <spice-devel@lists.freedesktop.org>; Tue, 06 Aug 2019 08:35:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/Hw9JcnMVTjWbqec6JUDtlBwV+VDwy7Tyob8ghrZtN4=;
 b=qB7gwxzFosmUdE8U5y2irm3M3tExwnLxvvLZt/Y90MB0RhlLWqrqX0mHN9KlJuWpLh
 YpehZzlwCgb0NVNikLbbzKIcBwHejnX8gwpePtk2vrrGfL0OZ1EdzrpflvzlpgwW1uJf
 bvCRX+lWNm5ZnNWjSErnlWpJ2lk32K15iC1JAEDr8DwBVSsorEjPSIkwUSUL2ou3vwgZ
 n4fDV6UQgp9Ch/RltHknvnEECgVwfN0j3VdHKnJdwJH7KJBRv21q9TPhlG8/3fepa2CJ
 aYtGi7/k/RO70h91IFOWfaXedNZZrcQkUr8yBmPooKF5E011dD/RRkSQrRqwxkSt/s/H
 mDDQ==
X-Gm-Message-State: APjAAAWAjEdZ+TRhJagTKDPuAX1oa2XX8+3XuL2PnlgHlhr0o9a24qov
 8HRzSw8ALx00f9lsMeAAMzGygwIivQjqRg==
X-Google-Smtp-Source: APXvYqxoxOaa8pRIxyHHLiarR0DshywJLcW+xlS+dSOneu3/Mhir9pDIxfnxuVbOTCiVoMFZQADoeg==
X-Received: by 2002:a7b:c1c1:: with SMTP id a1mr5638479wmj.31.1565105706072;
 Tue, 06 Aug 2019 08:35:06 -0700 (PDT)
Received: from pinea.redhat.com (25.119.19.109.rev.sfr.net. [109.19.119.25])
 by smtp.gmail.com with ESMTPSA id y18sm84860282wmi.23.2019.08.06.08.35.04
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 08:35:05 -0700 (PDT)
From: Kevin Pouget <kpouget@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue,  6 Aug 2019 17:34:53 +0200
Message-Id: <20190806153453.20616-10-kpouget@redhat.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190806153453.20616-1-kpouget@redhat.com>
References: <20190806153453.20616-1-kpouget@redhat.com>
MIME-Version: 1.0
Subject: [Spice-devel] [RFC spice-gtk 2/2] channel-display: fix bug when
 sending preferred video codecs
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

VGhlIHRyYW5zZmVyIGJldHdlZW4gdGhlIGNvZGVjcyBhcnJheSBhbmQgdGhlIG1lc3NhZ2UgcGF5
bG9hZCBjYW5ub3QKYmUgZG9uZSB3aXRoIG1lbWNweSBiZWNhdXNlIHRoZSBkYXRhLXR5cGUgbGVu
Z3RocyBhcmUgZGlmZmVyZW50CihnaW50L3VpbnQ4X3QpLgoKU2lnbmVkLW9mZi1ieTogS2V2aW4g
UG91Z2V0IDxrcG91Z2V0QHJlZGhhdC5jb20+Ci0tLQogc3JjL2NoYW5uZWwtZGlzcGxheS5jIHwg
OCArKysrKysrLQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigt
KQoKZGlmZiAtLWdpdCBhL3NyYy9jaGFubmVsLWRpc3BsYXkuYyBiL3NyYy9jaGFubmVsLWRpc3Bs
YXkuYwppbmRleCA0NDU1NWUzLi4zN2ZkYmNlIDEwMDY0NAotLS0gYS9zcmMvY2hhbm5lbC1kaXNw
bGF5LmMKKysrIGIvc3JjL2NoYW5uZWwtZGlzcGxheS5jCkBAIC02MTUsMTEgKzYxNSwxNyBAQCBz
dGF0aWMgdm9pZCBzcGljZV9kaXNwbGF5X3NlbmRfY2xpZW50X3ByZWZlcnJlZF92aWRlb19jb2Rl
Y3MoU3BpY2VDaGFubmVsICpjaGFubgogewogICAgIFNwaWNlTXNnT3V0ICpvdXQ7CiAgICAgU3Bp
Y2VNc2djRGlzcGxheVByZWZlcnJlZFZpZGVvQ29kZWNUeXBlICptc2c7CisgICAgaW50IGk7Cgog
ICAgIG1zZyA9IGdfbWFsbG9jMChzaXplb2YoU3BpY2VNc2djRGlzcGxheVByZWZlcnJlZFZpZGVv
Q29kZWNUeXBlKSArCiAgICAgICAgICAgICAgICAgICAgIChzaXplb2YoU3BpY2VWaWRlb0NvZGVj
VHlwZSkgKiBuY29kZWNzKSk7CiAgICAgbXNnLT5udW1fb2ZfY29kZWNzID0gbmNvZGVjczsKLSAg
ICBtZW1jcHkobXNnLT5jb2RlY3MsIGNvZGVjcywgc2l6ZW9mKCpjb2RlY3MpICogbmNvZGVjcyk7
CisKKyAgICAvKiBjYW5ub3QgbWVtY3B5IGJlY2F1c2UgY29kZWNzIGlzIGdpbnQsIGJ1dCBtc2ct
PmNvZGVjcyBpcyB1aW50OF90CisgICAgICogYnV0IHNhZmUgYmVjYXVzZSBjb2RlY3NbaV0gPD0g
MjU1ICovCisgICAgZm9yIChpID0gMDsgaSA8IG5jb2RlY3M7IGkrKykgeworICAgICAgICBtc2ct
PmNvZGVjc1tpXSA9IGNvZGVjc1tpXTsKKyAgICB9CgogICAgIG91dCA9IHNwaWNlX21zZ19vdXRf
bmV3KGNoYW5uZWwsIFNQSUNFX01TR0NfRElTUExBWV9QUkVGRVJSRURfVklERU9fQ09ERUNfVFlQ
RSk7CiAgICAgb3V0LT5tYXJzaGFsbGVycy0+bXNnY19kaXNwbGF5X3ByZWZlcnJlZF92aWRlb19j
b2RlY190eXBlKG91dC0+bWFyc2hhbGxlciwgbXNnKTsKLS0KMi4yMS4wCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlz
dApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
