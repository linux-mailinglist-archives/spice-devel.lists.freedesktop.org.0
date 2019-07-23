Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41ED6712D6
	for <lists+spice-devel@lfdr.de>; Tue, 23 Jul 2019 09:27:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EAF16E149;
	Tue, 23 Jul 2019 07:27:45 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F29776E13F
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 07:27:43 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id p17so41928375wrf.11
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 00:27:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=H/18gZesxqXdhYVj5zgpuptWODEyOQluipyxcyU9T3k=;
 b=n0ym1lnj21UIiCnJI8clxiVkLptZw5l55pn5JDYErRPD4VCTelyf24H2uD+bqmncLl
 UHb7D/UQd6BPbdthfyGGKumsq6XXMzUbYgpFQJvEWuZhUGHXDghUt3onh2VC/pop3Dm1
 3T7jqqoisZfyvykZza7OvRvZzeF3Yv6PzwA8iftMbxRCGrefzY6bIWOddyY9+fM1e2HE
 rlQ4a6t2oWWmNYC5F6ArTm/rWfbMzUop7vaFu+ogxiiHKg6OyfGto0rVhV2/5V/bkdK6
 Rnv72bbp37Ilo8Uh1buwG/oDRwS2UKd0tQ0N/GbZYWngZQx26/nfQXB224pvBfgelS4O
 z33A==
X-Gm-Message-State: APjAAAWcy6OgvZVfPkZHE/2/LnPjqBFrKQECRCtZoADL0BRfwV5YEvPP
 Kvn2tBTT04pEq3MdoHgQ/MbWOj5y
X-Google-Smtp-Source: APXvYqxNoWzFZGIR9h3ud+80Qnja8/0RREM2ZefpRJC7NidqIitVq8mQ8Mg7Czv0y23y4+COieIEfg==
X-Received: by 2002:a05:6000:1189:: with SMTP id
 g9mr41403743wrx.51.1563866862436; 
 Tue, 23 Jul 2019 00:27:42 -0700 (PDT)
Received: from f2.redhat.com (bzq-79-182-115-245.red.bezeqint.net.
 [79.182.115.245])
 by smtp.gmail.com with ESMTPSA id y7sm31495613wmm.19.2019.07.23.00.27.41
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 23 Jul 2019 00:27:42 -0700 (PDT)
From: Yuri Benditovich <yuri.benditovich@daynix.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 23 Jul 2019 10:27:04 +0300
Message-Id: <20190723072708.2575-6-yuri.benditovich@daynix.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190723072708.2575-1-yuri.benditovich@daynix.com>
References: <20190723072708.2575-1-yuri.benditovich@daynix.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=H/18gZesxqXdhYVj5zgpuptWODEyOQluipyxcyU9T3k=;
 b=2PS5CvkOk2QPiRKh5kbiLltiT6dEKIce4vNIFE0ZBNf6zGHlMeYw01kxiWzJCkSZft
 kCWrT2ncvNdf1zXykCYKktty1hsCEzbXx7VhL+qclV2z/FomLmHLH6hZPkLJyECD0+e2
 6ckfeba+lTTQRv+dXTMeWALINio5FBHF8OwWGRhw9OxnxY10duXrC19wctjo1oB7k7tY
 Wb0qncpqLJtAWESmAu33Cj9DjjfT5IuQ1/wHYrtvzCgVewcynE72tS6FquTvjUL6DBE+
 Dew8ggQocpsKlsAZhafssZP0b3kOLhWyeWffKhvSIZHrf6DaiJyEf3bdz57Pju511ONd
 4/9A==
Subject: [Spice-devel] [spice-gtk v2 5/9] usb-redir: cosmetic changes in
 hotplug_callback
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

VW5pZnkgcGFyYW1ldGVyIG5hbWUgZm9yIGxpYnVzYl9kZXZpY2UuClVzZSBnX3JldHVybl92YWxf
aWZfZmFpbCBmb3IgZXhwZWN0ZWQgY29uZGl0aW9uLgpSZW1vdmUgcmVkdW5kYW50IGNhc3Rpbmcu
CgpTaWduZWQtb2ZmLWJ5OiBZdXJpIEJlbmRpdG92aWNoIDx5dXJpLmJlbmRpdG92aWNoQGRheW5p
eC5jb20+Ci0tLQogc3JjL3VzYi1iYWNrZW5kLmMgfCAyNSArKysrKysrKysrKysrLS0tLS0tLS0t
LS0tCiAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvc3JjL3VzYi1iYWNrZW5kLmMgYi9zcmMvdXNiLWJhY2tlbmQuYwppbmRleCA1
M2FjNDMwLi5lODM3NTc5IDEwMDY0NAotLS0gYS9zcmMvdXNiLWJhY2tlbmQuYworKysgYi9zcmMv
dXNiLWJhY2tlbmQuYwpAQCAtMTA4LDIxICsxMDgsMjIgQEAgc3RhdGljIFNwaWNlVXNiQmFja2Vu
ZERldmljZSAqYWxsb2NhdGVfYmFja2VuZF9kZXZpY2UobGlidXNiX2RldmljZSAqbGliZGV2KQog
fQogCiBzdGF0aWMgaW50IExJQlVTQl9DQUxMIGhvdHBsdWdfY2FsbGJhY2sobGlidXNiX2NvbnRl
eHQgKmN0eCwKLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBsaWJ1c2Jf
ZGV2aWNlICpkZXZpY2UsCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
bGlidXNiX2RldmljZSAqbGliZGV2LAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIGxpYnVzYl9ob3RwbHVnX2V2ZW50IGV2ZW50LAogICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHZvaWQgKnVzZXJfZGF0YSkKIHsKLSAgICBTcGljZVVzYkJhY2tl
bmQgKmJlID0gKFNwaWNlVXNiQmFja2VuZCAqKXVzZXJfZGF0YTsKLSAgICBpZiAoYmUtPmhvdHBs
dWdfY2FsbGJhY2spIHsKLSAgICAgICAgU3BpY2VVc2JCYWNrZW5kRGV2aWNlICpkZXY7Ci0gICAg
ICAgIGdib29sZWFuIHZhbCA9IGV2ZW50ID09IExJQlVTQl9IT1RQTFVHX0VWRU5UX0RFVklDRV9B
UlJJVkVEOwotICAgICAgICBkZXYgPSBhbGxvY2F0ZV9iYWNrZW5kX2RldmljZShkZXZpY2UpOwot
ICAgICAgICBpZiAoZGV2KSB7Ci0gICAgICAgICAgICBTUElDRV9ERUJVRygiY3JlYXRlZCBkZXYg
JXAsIHVzYmxpYiBkZXYgJXAiLCBkZXYsIGRldmljZSk7Ci0gICAgICAgICAgICBsaWJ1c2JfcmVm
X2RldmljZShkZXZpY2UpOwotICAgICAgICAgICAgYmUtPmhvdHBsdWdfY2FsbGJhY2soYmUtPmhv
dHBsdWdfdXNlcl9kYXRhLCBkZXYsIHZhbCk7Ci0gICAgICAgICAgICBzcGljZV91c2JfYmFja2Vu
ZF9kZXZpY2VfdW5yZWYoZGV2KTsKLSAgICAgICAgfQorICAgIFNwaWNlVXNiQmFja2VuZCAqYmUg
PSB1c2VyX2RhdGE7CisgICAgU3BpY2VVc2JCYWNrZW5kRGV2aWNlICpkZXY7CisgICAgZ2Jvb2xl
YW4gYXJyaXZlZCA9IGV2ZW50ID09IExJQlVTQl9IT1RQTFVHX0VWRU5UX0RFVklDRV9BUlJJVkVE
OworCisgICAgZ19yZXR1cm5fdmFsX2lmX2ZhaWwoYmUtPmhvdHBsdWdfY2FsbGJhY2sgIT0gTlVM
TCwgMCk7CisKKyAgICBkZXYgPSBhbGxvY2F0ZV9iYWNrZW5kX2RldmljZShsaWJkZXYpOworICAg
IGlmIChkZXYpIHsKKyAgICAgICAgU1BJQ0VfREVCVUcoImNyZWF0ZWQgZGV2ICVwLCB1c2JsaWIg
ZGV2ICVwIiwgZGV2LCBsaWJkZXYpOworICAgICAgICBsaWJ1c2JfcmVmX2RldmljZShsaWJkZXYp
OworICAgICAgICBiZS0+aG90cGx1Z19jYWxsYmFjayhiZS0+aG90cGx1Z191c2VyX2RhdGEsIGRl
diwgYXJyaXZlZCk7CisgICAgICAgIHNwaWNlX3VzYl9iYWNrZW5kX2RldmljZV91bnJlZihkZXYp
OwogICAgIH0KICAgICByZXR1cm4gMDsKIH0KLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNw
aWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
