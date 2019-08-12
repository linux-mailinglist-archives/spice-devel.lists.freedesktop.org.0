Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3214589A9E
	for <lists+spice-devel@lfdr.de>; Mon, 12 Aug 2019 11:57:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A8466E4DE;
	Mon, 12 Aug 2019 09:57:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com
 [IPv6:2a00:1450:4864:20::435])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF6DD6E4C9
 for <spice-devel@lists.freedesktop.org>; Mon, 12 Aug 2019 09:57:43 +0000 (UTC)
Received: by mail-wr1-x435.google.com with SMTP id n9so104134564wru.0
 for <spice-devel@lists.freedesktop.org>; Mon, 12 Aug 2019 02:57:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=OG/SY4mPnreH0dxbJap9KLe0D0Yu+3JDy/n1mB4x/XQ=;
 b=lt9rsdRBt+BT1TDCvwlvuJzQ4osQcwH46ryloUKZzejNd+YbzyVPcLf0+dUDwBxzV3
 trv5nkzEbmuN1bwGbIBDBmNV5VgNBeL4KRkNnRB6W9Z9E+o69DcWlJJjLrB1PZSUzQKJ
 95mNreSULNWlm/6L/y3EI0x5/ba4aK+NlJtFq3vxR9ngIZanOo+WVRJb6wYHyU2tKF5V
 dd9RUXgihR713YuB+eTMPfvb4HSSawQ9E0ZIWxx4buXchVsF4dQuqLNOQt9Bzw/uye4l
 bofNqcko/dr0G5szzSUtFIy8N5hE3nP40v1CqJC6AM+jVilqdHF6UoqqlB2bi61d0dBB
 jOuQ==
X-Gm-Message-State: APjAAAV3oMyPlQovF/1FyltEzVNWK/akFaSrLDsMWEP8BhD0eAitL8TG
 atPxq2+eeorqW68Axak0QJqOoQKLj+k=
X-Google-Smtp-Source: APXvYqx4+ljv8Rn/UgXhdL6zr1i/zkZlPSE2SwJZVaBkETnHEXybP5WivKuSI5UbQQuSFDYMSRpaSA==
X-Received: by 2002:adf:da4d:: with SMTP id r13mr41301576wrl.281.1565603862402; 
 Mon, 12 Aug 2019 02:57:42 -0700 (PDT)
Received: from f2.redhat.com (bzq-79-182-115-245.red.bezeqint.net.
 [79.182.115.245])
 by smtp.gmail.com with ESMTPSA id g14sm11930659wrb.38.2019.08.12.02.57.41
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 12 Aug 2019 02:57:41 -0700 (PDT)
From: Yuri Benditovich <yuri.benditovich@daynix.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 12 Aug 2019 12:57:20 +0300
Message-Id: <20190812095729.32692-1-yuri.benditovich@daynix.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=OG/SY4mPnreH0dxbJap9KLe0D0Yu+3JDy/n1mB4x/XQ=;
 b=lkOYP7+RUXjfo8VpK8HG86Y2DD4GlJOv0P0oAf/YBpKyfCdX7pCbVVFv6YzSpgeuBQ
 1Hdo8aH+H9Wh2YoNTKgemZDacC2AXHk+8IWK4pHAmZ2184acJdGjZbmME3K4gkRgWebG
 EqR6o/uFzO4e+OJnoTdzne6ws65sFe6ayTHear7Rats+oOl0Jkv2ltKkDlBTvNHXvrKE
 apxrv5xE6JehyrTEUH5U4fO34Xfh3wIZkl22t84+Db/jzs+qewY9OJWx6uU14vrJzjnu
 mjVdt4H+DlhtEKfeJLwRKLnXIQUYuakDUEFRXz3YCgXFEE5xZyegbQYODDsPO2yGf+Sq
 beqQ==
Subject: [Spice-devel] [spice-gtk v3 0/9] added feature of sharing CD image
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

VGhpcyBzZXJpZXMgb2YgcGF0Y2hlcyBhZGRzIGZlYXR1cmUgb2Ygc2hhcmluZyBDRCBpbWFnZSB2
aWEKcmVkaXJlY3Rpb24gb2YgZW11bGF0ZWQgQ0QgZGV2aWNlLiBDdXJyZW50bHkgdGhlIHRyaWdn
ZXIgdG8KY3JlYXRlIHRoZSBkZXZpY2UgaXMgY29tbWFuZC1saW5lIG9wdGlvbjoKJy0tc3BpY2Ut
c2hhcmUtY2QgPElTTyBmaWxlIG5hbWU+CgpDaGFuZ2VzIGZyb20gdjI6IGZpeGVzIHJlc3VsdGVk
IGJ5IHJldmlld3MgKGJhc2VkIG9uIGZpeHVwcwpvZiBGcmVkaWFubyBaaWdsaW8pCgpDaGFuZ2Vz
IGZyb20gdjE6IGZpeGVzIHJlc3VsdGVkIGJ5IHJldmlld3MgKG1haW5seSBiYXNlZCBvbiBmaXh1
cHMKb2YgRnJlZGlhbm8gWmlnbGlvKQoKRnJlZGlhbm8gWmlnbGlvICgxKToKICB1c2ItcmVkaXI6
IGNvc21ldGljIHN0eWxlIGZpeGVzCgpZdXJpIEJlbmRpdG92aWNoICg4KToKICB1c2ItcmVkaXI6
IGRlZmluZSBpbnRlcmZhY2VzIHRvIHN1cHBvcnQgZW11bGF0ZWQgZGV2aWNlcwogIHVzYi1yZWRp
cjogbW92ZSBpbXBsZW1lbnRhdGlvbiBvZiBkZXZpY2UgZGVzY3JpcHRpb24gdG8gVVNCIGJhY2tl
bmQKICB1c2ItcmVkaXI6IGRvIG5vdCB1c2Ugc3BpY2VfdXNiX2FjbF9oZWxwZXIgZm9yIGVtdWxh
dGVkIGRldmljZXMKICB1c2ItcmVkaXI6IGV4dGVuZCBVU0IgYmFja2VuZCB0byBzdXBwb3J0IGVt
dWxhdGVkIGRldmljZXMKICB1c2ItcmVkaXI6IGFkZCBmaWxlcyBmb3IgU0NTSSBhbmQgVVNCIE1T
QyBpbXBsZW1lbnRhdGlvbgogIHVzYi1yZWRpcjogYWRkIGltcGxlbWVudGF0aW9uIG9mIGVtdWxh
dGVkIENEIGRldmljZQogIHVzYi1yZWRpcjogZW5hYmxlIHJlZGlyZWN0aW9uIG9mIGVtdWxhdGVk
IENEIGRyaXZlCiAgdXNiLXJlZGlyOiBjb21tYW5kLWxpbmUgb3B0aW9uIHRvIGNyZWF0ZSBlbXVs
YXRlZCBDRCBkcml2ZQoKIHNyYy9jZC1zY3NpLWRldi1wYXJhbXMuaCB8ICAgNDkgKwogc3JjL2Nk
LXNjc2kuYyAgICAgICAgICAgIHwgMjc0MCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKwogc3JjL2NkLXNjc2kuaCAgICAgICAgICAgIHwgIDEyMCArKwogc3JjL2NkLXVzYi1i
dWxrLW1zZC5jICAgIHwgIDU0NCArKysrKysrKwogc3JjL2NkLXVzYi1idWxrLW1zZC5oICAgIHwg
IDEzNCArKwogc3JjL2NoYW5uZWwtdXNicmVkaXIuYyAgIHwgICAzMSArLQogc3JjL21lc29uLmJ1
aWxkICAgICAgICAgIHwgICAgOCArCiBzcmMvc2NzaS1jb25zdGFudHMuaCAgICAgfCAgMzI0ICsr
KysrCiBzcmMvc3BpY2Utb3B0aW9uLmMgICAgICAgfCAgIDE3ICsKIHNyYy91c2ItYmFja2VuZC5j
ICAgICAgICB8ICA3NzcgKysrKysrKysrKy0KIHNyYy91c2ItYmFja2VuZC5oICAgICAgICB8ICAg
IDQgKwogc3JjL3VzYi1kZXZpY2UtY2QuYyAgICAgIHwgIDc4MyArKysrKysrKysrKwogc3JjL3Vz
Yi1kZXZpY2UtY2QuaCAgICAgIHwgICAzNCArCiBzcmMvdXNiLWRldmljZS1tYW5hZ2VyLmMgfCAg
IDYzICstCiBzcmMvdXNiLWVtdWxhdGlvbi5oICAgICAgfCAgIDg4ICsrCiAxNSBmaWxlcyBjaGFu
Z2VkLCA1NjI4IGluc2VydGlvbnMoKyksIDg4IGRlbGV0aW9ucygtKQogY3JlYXRlIG1vZGUgMTAw
NjQ0IHNyYy9jZC1zY3NpLWRldi1wYXJhbXMuaAogY3JlYXRlIG1vZGUgMTAwNjQ0IHNyYy9jZC1z
Y3NpLmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBzcmMvY2Qtc2NzaS5oCiBjcmVhdGUgbW9kZSAxMDA2
NDQgc3JjL2NkLXVzYi1idWxrLW1zZC5jCiBjcmVhdGUgbW9kZSAxMDA2NDQgc3JjL2NkLXVzYi1i
dWxrLW1zZC5oCiBjcmVhdGUgbW9kZSAxMDA2NDQgc3JjL3Njc2ktY29uc3RhbnRzLmgKIGNyZWF0
ZSBtb2RlIDEwMDY0NCBzcmMvdXNiLWRldmljZS1jZC5jCiBjcmVhdGUgbW9kZSAxMDA2NDQgc3Jj
L3VzYi1kZXZpY2UtY2QuaAogY3JlYXRlIG1vZGUgMTAwNjQ0IHNyYy91c2ItZW11bGF0aW9uLmgK
Ci0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGlj
ZS1kZXZlbA==
