Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A2491147CC
	for <lists+spice-devel@lfdr.de>; Thu,  5 Dec 2019 20:43:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 013406F8FB;
	Thu,  5 Dec 2019 19:42:59 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECDB76E150
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Dec 2019 17:43:51 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id f129so4628783wmf.2
 for <spice-devel@lists.freedesktop.org>; Thu, 05 Dec 2019 09:43:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=doRJzYEkX9Jy+JDAN8uCXjuTNC5gdGk2et11Pgt121s=;
 b=ZflLikyVxFQHIwifygICnFZXXbT8MGbKcRv9BG0mH+hfrFCwgmVtLB7CcGAuG2QIYW
 VdBMCqi23IdFjW9NZTQiDG/ePq1MW6n8WqOs4bgODBiesJp/SETqewgQ918Q16HGrcgI
 mZ3GpI5R3kCYynnk68NEjWlqci23ySkXK7DLAl66ewfcJ8+7K9xkc/+Ww05ap6WKuZDA
 Bu2YpNtOA9ATCfuWc82Xb/KIS7WixRNwxsZZblnqm8QUskMoXRRP1HjrCUiXL5c6bkHi
 20xeZmCHi/tHH6D56Lj+o0FA0s+QCLVdO2St67bDeZ+XR2TmpV6bXdfKkvu5Rma3a3ND
 81IQ==
X-Gm-Message-State: APjAAAUAKx7VyR7fSyx6n8Q4/IE5sHlX2OFpLy8f9s/Z0oajF1cIRhKV
 anUUrpB+oH+6XlewBbRrAORW13DpQ/5QMw==
X-Google-Smtp-Source: APXvYqyslXeClTOkvOxchm9Gb9UYdvcKc4wU7XVBPb4aSX9fXpk01weIb3jgZ0Y0x+ey6gpiA/CcdA==
X-Received: by 2002:a1c:731a:: with SMTP id d26mr6208388wmb.130.1575567830449; 
 Thu, 05 Dec 2019 09:43:50 -0800 (PST)
Received: from localhost.localdomain ([94.188.175.54])
 by smtp.gmail.com with ESMTPSA id j12sm13888954wrw.54.2019.12.05.09.43.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2019 09:43:49 -0800 (PST)
From: alexander@daynix.com
X-Google-Original-From: anezhins@redhat.com
To: spice-devel@lists.freedesktop.org
Date: Thu,  5 Dec 2019 19:49:13 +0200
Message-Id: <20191205174915.24546-8-anezhins@redhat.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191205174915.24546-1-anezhins@redhat.com>
References: <20191205174915.24546-1-anezhins@redhat.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 05 Dec 2019 19:42:56 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=doRJzYEkX9Jy+JDAN8uCXjuTNC5gdGk2et11Pgt121s=;
 b=jlBSI9/omxBxO5OZSvv0lDD8CSLDgTe7qT+xqKjnxI6xB8ykOJpUqx7x7Lj2mIm3ne
 iOkCktbPJ1hyZ/kBBZr4/SoAEZebJTOdxMH0KE/YUDxRAk0WhN8urtAsewsFrkVO3KN7
 1y+C17XfY8QuCtSkL/4M/6zPzhDDts6MCKPN5flKOqZUx2LCc6ClHBP9cL4uCwiNmnSX
 w4gLM180lLRyV6V49EWPKJLsl5uR43wcnpqpfQM2DgsrsLn9z9L2WtQ7UEcfw0ce+ooH
 jPUUQ4qkAGOOkggsbjocWwRwOJ/WVqWtSwGXsqiZpyiYlG1i5OtZ6C3so4Y2gydQLL/g
 fC6w==
Subject: [Spice-devel] [PATCH 7/9] remove shared CD device on connect-fail
 during USB redirect attempt
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
ZXZpY2Utd2lkZ2V0LmMgYi9zcmMvdXNiLWRldmljZS13aWRnZXQuYwppbmRleCBhNzcyYWUwLi43
MjRiN2I1IDEwMDY0NAotLS0gYS9zcmMvdXNiLWRldmljZS13aWRnZXQuYworKysgYi9zcmMvdXNi
LWRldmljZS13aWRnZXQuYwpAQCAtNTU3LDYgKzU1Nyw3IEBAIHN0YXRpYyB2b2lkIGNvbm5lY3Rf
Y2IoR09iamVjdCAqZ29iamVjdCwgR0FzeW5jUmVzdWx0ICpyZXMsIGdwb2ludGVyIHVzZXJfZGF0
YSkKICAgICBTcGljZVVzYkRldmljZSAqZGV2aWNlOwogICAgIEdFcnJvciAqZXJyID0gTlVMTDsK
ICAgICBnY2hhciAqZGVzYzsKKyAgICBnYm9vbGVhbiByYzsKIAogICAgIHNwaWNlX3VzYl9kZXZp
Y2VfbWFuYWdlcl9jb25uZWN0X2RldmljZV9maW5pc2gobWFuYWdlciwgcmVzLCAmZXJyKTsKICAg
ICBpZiAoZXJyKSB7CkBAIC01NjgsNyArNTY5LDcgQEAgc3RhdGljIHZvaWQgY29ubmVjdF9jYihH
T2JqZWN0ICpnb2JqZWN0LCBHQXN5bmNSZXN1bHQgKnJlcywgZ3BvaW50ZXIgdXNlcl9kYXRhKQog
CiAgICAgICAgIFNQSUNFX0RFQlVHKCIlcyIsIGVyci0+bWVzc2FnZSk7CiAgICAgICAgIGdfc2ln
bmFsX2VtaXQoc2VsZiwgc2lnbmFsc1tDT05ORUNUX0ZBSUxFRF0sIDAsIGRldmljZSwgZXJyKTsK
LSAgICAgICAgZ19lcnJvcl9mcmVlKGVycik7CisgICAgICAgIGdfY2xlYXJfZXJyb3IoJmVycik7
CiAKICAgICAgICAgLyogZG9uJ3QgdHJpZ2dlciBhIGRpc2Nvbm5lY3QgaWYgY29ubmVjdCBmYWls
ZWQgKi8KICAgICAgICAgZ19zaWduYWxfaGFuZGxlcnNfYmxvY2tfYnlfZnVuYyhHVEtfVE9HR0xF
X0JVVFRPTihkYXRhLT5jaGVjayksCkBAIC01NzYsNiArNTc3LDE4IEBAIHN0YXRpYyB2b2lkIGNv
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
