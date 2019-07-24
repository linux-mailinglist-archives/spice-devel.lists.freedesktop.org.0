Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2066F72CAB
	for <lists+spice-devel@lfdr.de>; Wed, 24 Jul 2019 12:54:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A67366E50D;
	Wed, 24 Jul 2019 10:54:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02F266E501
 for <spice-devel@lists.freedesktop.org>; Wed, 24 Jul 2019 10:54:04 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id p17so46427815wrf.11
 for <spice-devel@lists.freedesktop.org>; Wed, 24 Jul 2019 03:54:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=9W5+k/tdRIPJzXa1KYHuqSBzs3MZk6cil6HNCy+V4XM=;
 b=K385QTDkkfgYXPY1yEnBofGXvjBjsIF5OMVGjHVZO7iqDVGiPhWgrEKSx7y8hiNFtt
 tYAcEB4spol4SHfaoh3SvOm8WmGS6/glbVZvqluzwhZsYfeA1xx2uG+6VpXmSADUcGVs
 Aydx7qp4D1tHKvQmmnga129FBeso8tv3yYY1kbybhIuh+Cva1AEeDktIc1ld0QdbnfDG
 a1SWgwH1jrSE9leZW3x/ezW82IKEDllv7FyjUQxBj8AyEJigNtEUusRDEecouzPTk89V
 A/0/125GbtIbEec+qMTyzWlkOewybTWMEevnFVeKZo0zOQKSjGbcSWt6LtNcRvI83jrW
 kK9Q==
X-Gm-Message-State: APjAAAUdIRGlvi8tllTZiPe8YyFx5hRrCc+0cSSwgpvb74NPLzJkKPwY
 VJdgwgV9H8Jn2IkNRm73JZ40eEp6
X-Google-Smtp-Source: APXvYqxqjjg3v4Oph6V9HSwMzEQwhSuSYVqcBwrKTKUJKOFw9z41gsUaViy/5wuxcupqo8BLFHlxDQ==
X-Received: by 2002:adf:dd8e:: with SMTP id x14mr86044441wrl.344.1563965642451; 
 Wed, 24 Jul 2019 03:54:02 -0700 (PDT)
Received: from f2.redhat.com (bzq-79-182-115-245.red.bezeqint.net.
 [79.182.115.245])
 by smtp.gmail.com with ESMTPSA id r12sm53542137wrt.95.2019.07.24.03.54.01
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 24 Jul 2019 03:54:02 -0700 (PDT)
From: Yuri Benditovich <yuri.benditovich@daynix.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 24 Jul 2019 13:53:46 +0300
Message-Id: <20190724105351.13753-5-yuri.benditovich@daynix.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190724105351.13753-1-yuri.benditovich@daynix.com>
References: <20190724105351.13753-1-yuri.benditovich@daynix.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=9W5+k/tdRIPJzXa1KYHuqSBzs3MZk6cil6HNCy+V4XM=;
 b=PQeX0nOPjYwzNNgiJxwOL6cLcaLL324uayJAXOczml2AgA01cxyDcN5e2PLT3pcPzR
 OSerttke8PB7UROYkwXYLcY06CiIQeaUJUtXT0Abj5dN7sZeKsHV+2RkL98xM9s7aFYg
 4D+I8dywBVdVNiAn3srCfxrC6/feEZjyGVvdvMOItERUoB6d6r7rxiqUYZMW+VML1yY6
 M9UN0uc3q+6QFH8wCqZSEPYiB6QYZaj6ZgMFIoJl3NErXXsODCbPMVH6JXUSYmK8yxxw
 5kW0tWKdlz4dXhZHyQcb0AmnFFNM4Yy6bgcpkensOHKncR1hhHdqJ4m07916AW9Sb7fN
 5j4g==
Subject: [Spice-devel] [spice-gtk 4/9] usb-redir: device description for
 emulated devices
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

QWJpbGl0eSB0byByZXRyaWV2ZSBkZXZpY2UgZGVzY3JpcHRpb24gZm9yIGVtdWxhdGVkIFVTQgpk
ZXZpY2UsIGRlZmluZWQgYnkgaW1wbGVtZW50YXRpb24uIEZvciBleGFtcGxlLCBmb3Igc2hhcmVk
CkNEIHRoZSBpbXBsZW1lbnRhdGlvbiBtYXkgdXNlIGJhc2VuYW1lIG9mIElTTyBmaWxlLgoKU2ln
bmVkLW9mZi1ieTogWXVyaSBCZW5kaXRvdmljaCA8eXVyaS5iZW5kaXRvdmljaEBkYXluaXguY29t
PgotLS0KIHNyYy91c2ItZGV2aWNlLW1hbmFnZXIuYyB8IDEwICsrKysrKystLS0KIDEgZmlsZSBj
aGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc3Jj
L3VzYi1kZXZpY2UtbWFuYWdlci5jIGIvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jCmluZGV4IGIx
MWJiMTUuLjE2NjA5MDUgMTAwNjQ0Ci0tLSBhL3NyYy91c2ItZGV2aWNlLW1hbmFnZXIuYworKysg
Yi9zcmMvdXNiLWRldmljZS1tYW5hZ2VyLmMKQEAgLTE0ODMsMTEgKzE0ODMsMTggQEAgZ2NoYXIg
KnNwaWNlX3VzYl9kZXZpY2VfZ2V0X2Rlc2NyaXB0aW9uKFNwaWNlVXNiRGV2aWNlICpkZXZpY2Us
IGNvbnN0IGdjaGFyICpmb3IKICAgICAgICAgcmV0dXJuIGdfc3RyZHVwKF8oIlVTQiByZWRpcmVj
dGlvbiIpKTsKICAgICB9CiAKKyAgICBpZiAoIWZvcm1hdCkKKyAgICAgICAgZm9ybWF0ID0gXygi
JXMgJXMgJXMgYXQgJWQtJWQiKTsKKwogICAgIGJ1cyAgICAgPSBzcGljZV91c2JfZGV2aWNlX2dl
dF9idXNudW0oZGV2aWNlKTsKICAgICBhZGRyZXNzID0gc3BpY2VfdXNiX2RldmljZV9nZXRfZGV2
YWRkcihkZXZpY2UpOwogICAgIHZpZCAgICAgPSBzcGljZV91c2JfZGV2aWNlX2dldF92aWQoZGV2
aWNlKTsKICAgICBwaWQgICAgID0gc3BpY2VfdXNiX2RldmljZV9nZXRfcGlkKGRldmljZSk7CiAK
KyAgICBpZiAoYnVzID09IEJVU19OVU1CRVJfRk9SX0VNVUxBVEVEX1VTQikgeworICAgICAgICBy
ZXR1cm4gc3BpY2VfdXNiX2JhY2tlbmRfZGV2aWNlX2Rlc2NyaXB0aW9uKGRldmljZS0+YmRldiwg
Zm9ybWF0KTsKKyAgICB9CisKICAgICBpZiAoKHZpZCA+IDApICYmIChwaWQgPiAwKSkgewogICAg
ICAgICBkZXNjcmlwdG9yID0gZ19zdHJkdXBfcHJpbnRmKCJbJTA0eDolMDR4XSIsIHZpZCwgcGlk
KTsKICAgICB9IGVsc2UgewpAQCAtMTQ5Nyw5ICsxNTA0LDYgQEAgZ2NoYXIgKnNwaWNlX3VzYl9k
ZXZpY2VfZ2V0X2Rlc2NyaXB0aW9uKFNwaWNlVXNiRGV2aWNlICpkZXZpY2UsIGNvbnN0IGdjaGFy
ICpmb3IKICAgICBzcGljZV91c2JfdXRpbF9nZXRfZGV2aWNlX3N0cmluZ3MoYnVzLCBhZGRyZXNz
LCB2aWQsIHBpZCwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJm1hbnVm
YWN0dXJlciwgJnByb2R1Y3QpOwogCi0gICAgaWYgKCFmb3JtYXQpCi0gICAgICAgIGZvcm1hdCA9
IF8oIiVzICVzICVzIGF0ICVkLSVkIik7Ci0KICAgICBkZXNjcmlwdGlvbiA9IGdfc3RyZHVwX3By
aW50Zihmb3JtYXQsIG1hbnVmYWN0dXJlciwgcHJvZHVjdCwgZGVzY3JpcHRvciwgYnVzLCBhZGRy
ZXNzKTsKIAogICAgIGdfZnJlZShtYW51ZmFjdHVyZXIpOwotLSAKMi4xNy4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5n
IGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
