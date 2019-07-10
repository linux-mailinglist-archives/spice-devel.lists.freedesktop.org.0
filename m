Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 764E56444C
	for <lists+spice-devel@lfdr.de>; Wed, 10 Jul 2019 11:24:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB73389DFB;
	Wed, 10 Jul 2019 09:24:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C14BF89DFB
 for <spice-devel@lists.freedesktop.org>; Wed, 10 Jul 2019 09:24:02 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id c2so1626550wrm.8
 for <spice-devel@lists.freedesktop.org>; Wed, 10 Jul 2019 02:24:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=3T0VHdYp4dXAmKA5CghwIFia5gF7tXlyV3laUgFVNSA=;
 b=d9PqVZd3VlMdN10jG5+F20CXj+Hr5RAQXcCVYLrI6qC7hfJMzEVp/zGS8NdEETWjbr
 lU3q50E/yJAEYweNBZUuUIHqdcE3sd8feuBuKrKEdPGizwGYWXc0IoxsGskI/flhzx5i
 7HfK+0Qo70rHHOUb+mBIyZ6zihWYVkFrKytCJIP49XcG+pA9HFrCookhNhkPEYVdqugc
 HFvD5pm5+sA1879xfR/Ix6mP3RxKVz9PD3K+9OuCoxCOqG7GuNTjp3xBrAiDahq56eUU
 1OMu7t7FDrDEu7PFxncFVtvVIiuNIswVFG28guvpZuodMUoXJ00w/yBBXHMkur/ZrhkF
 6SsQ==
X-Gm-Message-State: APjAAAX3+/yfSb8jLX/Kjd5R6pv9YRI7M5Rtq60aCs8BaZS2KjmMSNs1
 u2eHgjicVd5sWXTIYZvynNdynGcu28Y=
X-Google-Smtp-Source: APXvYqxKiKQjV+KRQwl+dok7VdfRqZgBB2ZRYq1R7nFI0XzzZH6es9a4gES2KAEEloBTa7JUgVzK1g==
X-Received: by 2002:adf:e2cb:: with SMTP id d11mr30648787wrj.66.1562750641237; 
 Wed, 10 Jul 2019 02:24:01 -0700 (PDT)
Received: from f2.redhat.com (bzq-79-182-115-245.red.bezeqint.net.
 [79.182.115.245])
 by smtp.gmail.com with ESMTPSA id a12sm1577151wrt.46.2019.07.10.02.24.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 10 Jul 2019 02:24:00 -0700 (PDT)
From: Yuri Benditovich <yuri.benditovich@daynix.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 10 Jul 2019 12:23:44 +0300
Message-Id: <20190710092345.5750-3-yuri.benditovich@daynix.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190710092345.5750-1-yuri.benditovich@daynix.com>
References: <20190710092345.5750-1-yuri.benditovich@daynix.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=3T0VHdYp4dXAmKA5CghwIFia5gF7tXlyV3laUgFVNSA=;
 b=IdKhH+Ot51xya2cmUIfBeaH3nCPJqM1JPeu7MVwQKqXOdtWgNqmwcfGQpldSnMxCOX
 goUZErHKH58A0XuO0Q45VuqeXeUwr4wUlSW0uvnjatI7j/xFqZBYI3JAJE30cGOhMwLS
 0MtoVt5g7tb1Phv89O60lNG34Tp7+VacsmtfdCNhCIJE+u0OUVg6YKH0yHWvupBjZ2oU
 nVvouXH41ntcIrZKcadFzBQv7ajKbDsxOKeO0VKXQaFkmSF951rlqe/7atGxUNoW3tX0
 WJjbTVhgbLVLpIPxM6xPc/PQJeJ/Xh+BmtO6+g60qnWtZJe5L++/I3Izllg/3zq+TnWn
 ZjWA==
Subject: [Spice-devel] [spice-gtk v2 2/3] usb-redirection: do not duplicate
 USB device properties
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

RG8gbm90IGtlZXAgYnVzLCBhZGRyZXNzLCB2aWQgYW5kIHBpZCBvZiB0aGUgVVNCIGRldmljZQpp
biBTcGljZVVzYkRldmljZUluZm8gc3RydWN0dXJlLiBHZXR0ZXJzIGZvciB0aGVzZSBwcm9wZXJ0
aWVzCmNhbiBlYXNpbHkgb2J0YWluIHRoZW0gZnJvbSByZXNwZWN0aXZlIGJhY2tlbmQgZGV2aWNl
LgoKU2lnbmVkLW9mZi1ieTogWXVyaSBCZW5kaXRvdmljaCA8eXVyaS5iZW5kaXRvdmljaEBkYXlu
aXguY29tPgotLS0KIHNyYy91c2ItZGV2aWNlLW1hbmFnZXIuYyB8IDI5ICsrKysrKysrKysrKyst
LS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgMTYgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jIGIvc3JjL3Vz
Yi1kZXZpY2UtbWFuYWdlci5jCmluZGV4IDJiZWU1NWQuLjY4OTg0NzIgMTAwNjQ0Ci0tLSBhL3Ny
Yy91c2ItZGV2aWNlLW1hbmFnZXIuYworKysgYi9zcmMvdXNiLWRldmljZS1tYW5hZ2VyLmMKQEAg
LTEyOSwxMyArMTI5LDkgQEAgZW51bSB7CiAjaWZkZWYgVVNFX1VTQlJFRElSCiAKIHR5cGVkZWYg
c3RydWN0IF9TcGljZVVzYkRldmljZUluZm8gewotICAgIGd1aW50OCAgYnVzbnVtOwotICAgIGd1
aW50OCAgZGV2YWRkcjsKLSAgICBndWludDE2IHZpZDsKLSAgICBndWludDE2IHBpZDsKLSAgICBn
Ym9vbGVhbiBpc29jaHJvbm91czsKICAgICBTcGljZVVzYkJhY2tlbmREZXZpY2UgKmJkZXY7CiAg
ICAgZ2ludCAgICByZWY7CisgICAgZ2Jvb2xlYW4gaXNvY2hyb25vdXM7CiB9IFNwaWNlVXNiRGV2
aWNlSW5mbzsKIAogCkBAIC0xNjEzLDE4ICsxNjA5LDExIEBAIGdjaGFyICpzcGljZV91c2JfZGV2
aWNlX2dldF9kZXNjcmlwdGlvbihTcGljZVVzYkRldmljZSAqZGV2aWNlLCBjb25zdCBnY2hhciAq
Zm9yCiBzdGF0aWMgU3BpY2VVc2JEZXZpY2VJbmZvICpzcGljZV91c2JfZGV2aWNlX25ldyhTcGlj
ZVVzYkJhY2tlbmREZXZpY2UgKmJkZXYpCiB7CiAgICAgU3BpY2VVc2JEZXZpY2VJbmZvICppbmZv
OwotICAgIGNvbnN0IFVzYkRldmljZUluZm9ybWF0aW9uICpiZGV2X2luZm87CiAKICAgICBnX3Jl
dHVybl92YWxfaWZfZmFpbChiZGV2ICE9IE5VTEwsIE5VTEwpOwogCi0gICAgYmRldl9pbmZvID0g
c3BpY2VfdXNiX2JhY2tlbmRfZGV2aWNlX2dldF9pbmZvKGJkZXYpOwotCiAgICAgaW5mbyA9IGdf
bmV3MChTcGljZVVzYkRldmljZUluZm8sIDEpOwogCi0gICAgaW5mby0+YnVzbnVtICA9IGJkZXZf
aW5mby0+YnVzOwotICAgIGluZm8tPmRldmFkZHIgPSBiZGV2X2luZm8tPmFkZHJlc3M7Ci0gICAg
aW5mby0+dmlkID0gYmRldl9pbmZvLT52aWQ7Ci0gICAgaW5mby0+cGlkID0gYmRldl9pbmZvLT5w
aWQ7CiAgICAgaW5mby0+cmVmID0gMTsKICAgICBpbmZvLT5iZGV2ID0gc3BpY2VfdXNiX2JhY2tl
bmRfZGV2aWNlX3JlZihiZGV2KTsKICAgICBpbmZvLT5pc29jaHJvbm91cyA9IHNwaWNlX3VzYl9i
YWNrZW5kX2RldmljZV9pc29jaChiZGV2KTsKQEAgLTE2MzUsMzcgKzE2MjQsNDUgQEAgc3RhdGlj
IFNwaWNlVXNiRGV2aWNlSW5mbyAqc3BpY2VfdXNiX2RldmljZV9uZXcoU3BpY2VVc2JCYWNrZW5k
RGV2aWNlICpiZGV2KQogZ3VpbnQ4IHNwaWNlX3VzYl9kZXZpY2VfZ2V0X2J1c251bShjb25zdCBT
cGljZVVzYkRldmljZSAqZGV2aWNlKQogewogICAgIGNvbnN0IFNwaWNlVXNiRGV2aWNlSW5mbyAq
aW5mbyA9IChjb25zdCBTcGljZVVzYkRldmljZUluZm8gKilkZXZpY2U7CisgICAgY29uc3QgVXNi
RGV2aWNlSW5mb3JtYXRpb24gKmJfaW5mbzsKIAogICAgIGdfcmV0dXJuX3ZhbF9pZl9mYWlsKGlu
Zm8gIT0gTlVMTCwgMCk7CiAKLSAgICByZXR1cm4gaW5mby0+YnVzbnVtOworICAgIGJfaW5mbyA9
IHNwaWNlX3VzYl9iYWNrZW5kX2RldmljZV9nZXRfaW5mbyhpbmZvLT5iZGV2KTsKKyAgICByZXR1
cm4gYl9pbmZvLT5idXM7CiB9CiAKIGd1aW50OCBzcGljZV91c2JfZGV2aWNlX2dldF9kZXZhZGRy
KGNvbnN0IFNwaWNlVXNiRGV2aWNlICpkZXZpY2UpCiB7CiAgICAgY29uc3QgU3BpY2VVc2JEZXZp
Y2VJbmZvICppbmZvID0gKGNvbnN0IFNwaWNlVXNiRGV2aWNlSW5mbyAqKWRldmljZTsKKyAgICBj
b25zdCBVc2JEZXZpY2VJbmZvcm1hdGlvbiAqYl9pbmZvOwogCiAgICAgZ19yZXR1cm5fdmFsX2lm
X2ZhaWwoaW5mbyAhPSBOVUxMLCAwKTsKIAotICAgIHJldHVybiBpbmZvLT5kZXZhZGRyOworICAg
IGJfaW5mbyA9IHNwaWNlX3VzYl9iYWNrZW5kX2RldmljZV9nZXRfaW5mbyhpbmZvLT5iZGV2KTsK
KyAgICByZXR1cm4gYl9pbmZvLT5hZGRyZXNzOwogfQogCiBndWludDE2IHNwaWNlX3VzYl9kZXZp
Y2VfZ2V0X3ZpZChjb25zdCBTcGljZVVzYkRldmljZSAqZGV2aWNlKQogewogICAgIGNvbnN0IFNw
aWNlVXNiRGV2aWNlSW5mbyAqaW5mbyA9IChjb25zdCBTcGljZVVzYkRldmljZUluZm8gKilkZXZp
Y2U7CisgICAgY29uc3QgVXNiRGV2aWNlSW5mb3JtYXRpb24gKmJfaW5mbzsKIAogICAgIGdfcmV0
dXJuX3ZhbF9pZl9mYWlsKGluZm8gIT0gTlVMTCwgMCk7CiAKLSAgICByZXR1cm4gaW5mby0+dmlk
OworICAgIGJfaW5mbyA9IHNwaWNlX3VzYl9iYWNrZW5kX2RldmljZV9nZXRfaW5mbyhpbmZvLT5i
ZGV2KTsKKyAgICByZXR1cm4gYl9pbmZvLT52aWQ7CiB9CiAKIGd1aW50MTYgc3BpY2VfdXNiX2Rl
dmljZV9nZXRfcGlkKGNvbnN0IFNwaWNlVXNiRGV2aWNlICpkZXZpY2UpCiB7CiAgICAgY29uc3Qg
U3BpY2VVc2JEZXZpY2VJbmZvICppbmZvID0gKGNvbnN0IFNwaWNlVXNiRGV2aWNlSW5mbyAqKWRl
dmljZTsKKyAgICBjb25zdCBVc2JEZXZpY2VJbmZvcm1hdGlvbiAqYl9pbmZvOwogCiAgICAgZ19y
ZXR1cm5fdmFsX2lmX2ZhaWwoaW5mbyAhPSBOVUxMLCAwKTsKIAotICAgIHJldHVybiBpbmZvLT5w
aWQ7CisgICAgYl9pbmZvID0gc3BpY2VfdXNiX2JhY2tlbmRfZGV2aWNlX2dldF9pbmZvKGluZm8t
PmJkZXYpOworICAgIHJldHVybiBiX2luZm8tPnBpZDsKIH0KIAogZ2Jvb2xlYW4gc3BpY2VfdXNi
X2RldmljZV9pc19pc29jaHJvbm91cyhjb25zdCBTcGljZVVzYkRldmljZSAqZGV2aWNlKQotLSAK
Mi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpT
cGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2
ZWw=
