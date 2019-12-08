Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E05DF116223
	for <lists+spice-devel@lfdr.de>; Sun,  8 Dec 2019 14:58:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 459256E2D1;
	Sun,  8 Dec 2019 13:58:02 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6AB26E219
 for <spice-devel@lists.freedesktop.org>; Sun,  8 Dec 2019 13:58:00 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id y23so13393087wma.0
 for <spice-devel@lists.freedesktop.org>; Sun, 08 Dec 2019 05:58:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zOyUYrO/ZY3AGKzB/oVuE9QAOeLyzmLDKfDXdwxbE0A=;
 b=RV3C6VbbwEse3ddZPySTgDS0LUwh5FLu/xyW1QwZ6PRt38NFBJUG8Yc+DyGAS2KYtW
 jTgjCEfvf+FWa/Mc6+DnynTSLYGSb2LWmtWfsLU6gpfwSkdXoCpyAj3iGEfDiQaxJVJ5
 S77PylVlPLRcSch6EuLgHbq7xDa4H6xRVXn1BdV5FD/PKUJxYcXSZjvA1spjBfTDL96A
 o59/cEn0enOR2Q9M2v5cnhuaEUsttQy/rVS4DauFDXsqx24EWrISeoRIGd7gwQ0bEffC
 kREAtv1pavXTcVR+thLY3lY/zGAepH1Hks3cdGXDq7Hj+3fThzuxm9cLfV6EHWVKb/c6
 s/9A==
X-Gm-Message-State: APjAAAW2FZJPG7ReWgHsCr8p3xhSxPpLHpq0nudkT0YNASW+UTvFjgBN
 ccVfK1LVXW0wVZkbGTCIet3UUNRlewMNGg==
X-Google-Smtp-Source: APXvYqyD7NFUXOqL7GRTMO/R4FN0InJQJVc6Xib7SXo09R1QU0+lgQrlOljFIcOmchjHLYbR1fMVWw==
X-Received: by 2002:a7b:cf2d:: with SMTP id m13mr20303769wmg.163.1575813479049; 
 Sun, 08 Dec 2019 05:57:59 -0800 (PST)
Received: from localhost.localdomain ([94.188.175.54])
 by smtp.gmail.com with ESMTPSA id l17sm23139280wro.77.2019.12.08.05.57.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 Dec 2019 05:57:58 -0800 (PST)
From: alexander@daynix.com
X-Google-Original-From: anezhins@redhat.com
To: spice-devel@lists.freedesktop.org
Date: Sun,  8 Dec 2019 16:03:17 +0200
Message-Id: <20191208140319.22172-8-anezhins@redhat.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191208140319.22172-1-anezhins@redhat.com>
References: <20191208140319.22172-1-anezhins@redhat.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zOyUYrO/ZY3AGKzB/oVuE9QAOeLyzmLDKfDXdwxbE0A=;
 b=QMJuZnTWtPxDAeuD/08FOTkej7Gtt5BsmFExJ2KF0IEJu0dP5jO9TgF0KV77PmfLCp
 dU5a4TbWmBYiE2l3LM/aG5kYup/eQplmCQINOuhIHIkHi9CHYn5HuXhrqVkmbVGtnKGe
 kEg0WeIeeDEo18j7k0SqY1Sz9JeX5zyX6UfTo8DPb77ZkpZhAlXDsYKqfDdcKkPkobAb
 tr8pD5QsTyN9zIaK3LeI+yGavcxdR8VhtVV77ee1reIRY2Mg9K8Jcs354Qn3CeXYB7vY
 DB33aFyFGqIFyJ6eW/UHhbC0r+fbyy8w69qTEeDi6Dm1Zc5/pYOwCNXKvZpNhC0O9IC2
 1fdQ==
Subject: [Spice-devel] [PATCH shared-cd v1 7/9] remove shared CD device on
 connect-fail during USB redirect attempt
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
Cc: Yan Vugenfirer <yan@daynix.com>, Alexander Nezhinsky <anezhins@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

RnJvbTogQWxleGFuZGVyIE5lemhpbnNreSA8YW5lemhpbnNAcmVkaGF0LmNvbT4KClNpZ25lZC1v
ZmYtYnk6IEFsZXhhbmRlciBOZXpoaW5za3kgPGFuZXpoaW5zQHJlZGhhdC5jb20+Ci0tLQogc3Jj
L3VzYi1kZXZpY2Utd2lkZ2V0LmMgfCAxNSArKysrKysrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2Vk
LCAxNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL3VzYi1k
ZXZpY2Utd2lkZ2V0LmMgYi9zcmMvdXNiLWRldmljZS13aWRnZXQuYwppbmRleCA5MjIxMDhkLi5h
ODIxOWU1IDEwMDY0NAotLS0gYS9zcmMvdXNiLWRldmljZS13aWRnZXQuYworKysgYi9zcmMvdXNi
LWRldmljZS13aWRnZXQuYwpAQCAtNTU2LDYgKzU1Niw3IEBAIHN0YXRpYyB2b2lkIGNvbm5lY3Rf
Y2IoR09iamVjdCAqZ29iamVjdCwgR0FzeW5jUmVzdWx0ICpyZXMsIGdwb2ludGVyIHVzZXJfZGF0
YSkKICAgICBTcGljZVVzYkRldmljZSAqZGV2aWNlOwogICAgIEdFcnJvciAqZXJyID0gTlVMTDsK
ICAgICBnY2hhciAqZGVzYzsKKyAgICBnYm9vbGVhbiByYzsKIAogICAgIHNwaWNlX3VzYl9kZXZp
Y2VfbWFuYWdlcl9jb25uZWN0X2RldmljZV9maW5pc2gobWFuYWdlciwgcmVzLCAmZXJyKTsKICAg
ICBpZiAoZXJyKSB7CkBAIC01NjcsNyArNTY4LDcgQEAgc3RhdGljIHZvaWQgY29ubmVjdF9jYihH
T2JqZWN0ICpnb2JqZWN0LCBHQXN5bmNSZXN1bHQgKnJlcywgZ3BvaW50ZXIgdXNlcl9kYXRhKQog
CiAgICAgICAgIFNQSUNFX0RFQlVHKCIlcyIsIGVyci0+bWVzc2FnZSk7CiAgICAgICAgIGdfc2ln
bmFsX2VtaXQoc2VsZiwgc2lnbmFsc1tDT05ORUNUX0ZBSUxFRF0sIDAsIGRldmljZSwgZXJyKTsK
LSAgICAgICAgZ19lcnJvcl9mcmVlKGVycik7CisgICAgICAgIGdfY2xlYXJfZXJyb3IoJmVycik7
CiAKICAgICAgICAgLyogZG9uJ3QgdHJpZ2dlciBhIGRpc2Nvbm5lY3QgaWYgY29ubmVjdCBmYWls
ZWQgKi8KICAgICAgICAgZ19zaWduYWxfaGFuZGxlcnNfYmxvY2tfYnlfZnVuYyhHVEtfVE9HR0xF
X0JVVFRPTihkYXRhLT5jaGVjayksCkBAIC01NzUsNiArNTc2LDE4IEBAIHN0YXRpYyB2b2lkIGNv
bm5lY3RfY2IoR09iamVjdCAqZ29iamVjdCwgR0FzeW5jUmVzdWx0ICpyZXMsIGdwb2ludGVyIHVz
ZXJfZGF0YSkKICAgICAgICAgZ3RrX3RvZ2dsZV9idXR0b25fc2V0X2FjdGl2ZShHVEtfVE9HR0xF
X0JVVFRPTihkYXRhLT5jaGVjayksIEZBTFNFKTsKICAgICAgICAgZ19zaWduYWxfaGFuZGxlcnNf
dW5ibG9ja19ieV9mdW5jKEdUS19UT0dHTEVfQlVUVE9OKGRhdGEtPmNoZWNrKSwKICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjaGVja2JveF9jbGlja2VkX2NiLCBzZWxm
KTsKKworICAgICAgICBpZiAoc3BpY2VfdXNiX2RldmljZV9tYW5hZ2VyX2lzX2RldmljZV9zaGFy
ZWRfY2QobWFuYWdlciwgZGV2aWNlKSkgeworICAgICAgICAgICAgcmMgPSBzcGljZV91c2JfZGV2
aWNlX21hbmFnZXJfcmVtb3ZlX3NoYXJlZF9jZF9kZXZpY2UobWFuYWdlciwgZGV2aWNlLCAmZXJy
KTsKKyAgICAgICAgICAgIGlmICghcmMpIHsKKyAgICAgICAgICAgICAgICBpZiAoZXJyKSB7Cisg
ICAgICAgICAgICAgICAgICAgIFNQSUNFX0RFQlVHKCJGYWlsZWQgdG8gcmVtb3ZlICVzLCAlcyIs
IGRlc2MsIGVyci0+bWVzc2FnZSk7CisgICAgICAgICAgICAgICAgICAgIGdfY2xlYXJfZXJyb3Io
JmVycik7CisgICAgICAgICAgICAgICAgfSBlbHNlIHsKKyAgICAgICAgICAgICAgICAgICAgU1BJ
Q0VfREVCVUcoIkZhaWxlZCB0byByZW1vdmUgJXMiLCBkZXNjKTsKKyAgICAgICAgICAgICAgICB9
CisgICAgICAgICAgICB9CisgICAgICAgIH0KICAgICB9CiAKICAgICBjb25uZWN0X2NiX2RhdGFf
ZnJlZShkYXRhKTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL3NwaWNlLWRldmVs
