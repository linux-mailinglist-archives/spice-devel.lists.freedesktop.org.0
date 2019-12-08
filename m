Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7404011621D
	for <lists+spice-devel@lfdr.de>; Sun,  8 Dec 2019 14:57:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7876E6E08E;
	Sun,  8 Dec 2019 13:57:55 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38A346E03E
 for <spice-devel@lists.freedesktop.org>; Sun,  8 Dec 2019 13:57:54 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id y17so13059804wrh.5
 for <spice-devel@lists.freedesktop.org>; Sun, 08 Dec 2019 05:57:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9U7l6JBmoETlxJ16ctSdvStIIpVjM2vUvaRTtPOBaQk=;
 b=liVfbMUXHhxCnl7wq+9c8SQ8XYiGdrbz5Oe+a84j3XVMKg1zfSAn05gTfIvE73nxFc
 c/Ls0BKEL8h1GpScMoOhzwSE1qXjZ6YKKDSEDb5RJlk1l2F+30q0xeNc8/r+wi+iOZ67
 /L3yTQauzkLI1y1fEeV1rwc5ia+PiiskkIAPr5UmHYgn3QqxQtNGN5yRmlPgIoROPObu
 4waI7K/W6ky2GXEyqitpAqf4okmSxJ2auu+pgqvssPhIb5fVoGoJJNGSl/lJmX5sCuFh
 7wo5eEQ20WO9w1J5v5nHvBachB+t3TsICWh8Npu1AtFSRfSGzRUoo4mMAcAicAVEtuGM
 mO2A==
X-Gm-Message-State: APjAAAV7nnaP/AtwJ96u5dPrB6N4tVp1eaLjhhMEvQ2uBQ0mO1LThflG
 n89u4ENkDYzTs9jzUOHnICFLcQnJUj3X8A==
X-Google-Smtp-Source: APXvYqz6rY0YwL6Ey1GZwCqXZrmwSyA+7Tg98ooLUxLSFU4lZdbtJ1qY9zLK8u89nXDApU8hqsT2hg==
X-Received: by 2002:a5d:4752:: with SMTP id o18mr25218282wrs.330.1575813472685; 
 Sun, 08 Dec 2019 05:57:52 -0800 (PST)
Received: from localhost.localdomain ([94.188.175.54])
 by smtp.gmail.com with ESMTPSA id l17sm23139280wro.77.2019.12.08.05.57.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 Dec 2019 05:57:52 -0800 (PST)
From: alexander@daynix.com
X-Google-Original-From: anezhins@redhat.com
To: spice-devel@lists.freedesktop.org
Date: Sun,  8 Dec 2019 16:03:11 +0200
Message-Id: <20191208140319.22172-2-anezhins@redhat.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191208140319.22172-1-anezhins@redhat.com>
References: <20191208140319.22172-1-anezhins@redhat.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9U7l6JBmoETlxJ16ctSdvStIIpVjM2vUvaRTtPOBaQk=;
 b=OnG2lMn76YGQhZiHA5qZTO+9o4Ti9b8kgILVhk/pZdPK4olO/Ao9Wc8iyPv6OP52iN
 DTpusn6aoyaj7bimjGFj/aVYHZTgQP1csnEVaTMOJ5HgeYglTYwe0GYyMq/SbYrOLakt
 J8V+Hb3v3PrBBHYZB8I9gBk9+2iuNmhmmRqVnKtiihKKvlxXQrJHMM3GcFI5FU/KCd6L
 lwZhTr5HsV1Bwl7vi6XmyET3OtcjJk433ZKGwh4XHxryosvwtk2EeYqtzDrUJhLxY3vz
 SFgZcKZRVf24fxlwb1l/l0jlCoPNTOP7fDJMjYlPG1i7cm5D+oIqzLCPF7uQitCdZnOQ
 /yRA==
Subject: [Spice-devel] [PATCH shared-cd v1 1/9] move
 spice_usb_backend_device_{eject|report_change} to usb_backend.h
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

RnJvbTogQWxleGFuZGVyIE5lemhpbnNreSA8YW5lemhpbnNAcmVkaGF0LmNvbT4KClRoZXNlIGZ1
bmN0aW9ucyBiZWxvbmcgdG8gdXNiX2JhY2tlbmRfZGV2aWNlIGFwaQoKU2lnbmVkLW9mZi1ieTog
QWxleGFuZGVyIE5lemhpbnNreSA8YW5lemhpbnNAcmVkaGF0LmNvbT4KLS0tCiBzcmMvdXNiLWJh
Y2tlbmQuaCAgIHwgMiArKwogc3JjL3VzYi1lbXVsYXRpb24uaCB8IDMgKy0tCiAyIGZpbGVzIGNo
YW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zcmMv
dXNiLWJhY2tlbmQuaCBiL3NyYy91c2ItYmFja2VuZC5oCmluZGV4IDQ2NzEzYzEuLjRlODZmZGYg
MTAwNjQ0Ci0tLSBhL3NyYy91c2ItYmFja2VuZC5oCisrKyBiL3NyYy91c2ItYmFja2VuZC5oCkBA
IC03MCw2ICs3MCw4IEBAIHZvaWQgc3BpY2VfdXNiX2JhY2tlbmRfZGV2aWNlX3VucmVmKFNwaWNl
VXNiQmFja2VuZERldmljZSAqZGV2KTsKIGdjb25zdHBvaW50ZXIgc3BpY2VfdXNiX2JhY2tlbmRf
ZGV2aWNlX2dldF9saWJkZXYoY29uc3QgU3BpY2VVc2JCYWNrZW5kRGV2aWNlICpkZXYpOwogY29u
c3QgVXNiRGV2aWNlSW5mb3JtYXRpb24qIHNwaWNlX3VzYl9iYWNrZW5kX2RldmljZV9nZXRfaW5m
byhjb25zdCBTcGljZVVzYkJhY2tlbmREZXZpY2UgKmRldik7CiBnYm9vbGVhbiBzcGljZV91c2Jf
YmFja2VuZF9kZXZpY2VfaXNvY2goU3BpY2VVc2JCYWNrZW5kRGV2aWNlICpkZXYpOwordm9pZCBz
cGljZV91c2JfYmFja2VuZF9kZXZpY2VfZWplY3QoU3BpY2VVc2JCYWNrZW5kICpiZSwgU3BpY2VV
c2JCYWNrZW5kRGV2aWNlICpkZXZpY2UpOwordm9pZCBzcGljZV91c2JfYmFja2VuZF9kZXZpY2Vf
cmVwb3J0X2NoYW5nZShTcGljZVVzYkJhY2tlbmQgKmJlLCBTcGljZVVzYkJhY2tlbmREZXZpY2Ug
KmRldmljZSk7CiAKIC8qIHJldHVybnMgMCBpZiB0aGUgZGV2aWNlIHBhc3NlcyB0aGUgZmlsdGVy
IG90aGVyd2lzZSByZXR1cm5zIHRoZSBlcnJvciB2YWx1ZSBmcm9tCiAgKiB1c2JyZWRpcmhvc3Rf
Y2hlY2tfZGV2aWNlX2ZpbHRlcigpIHN1Y2ggYXMgLUVJTyBvciAtRU5PTUVNICovCmRpZmYgLS1n
aXQgYS9zcmMvdXNiLWVtdWxhdGlvbi5oIGIvc3JjL3VzYi1lbXVsYXRpb24uaAppbmRleCBhYzNk
OGUwLi41ZDY3ZmVlIDEwMDY0NAotLS0gYS9zcmMvdXNiLWVtdWxhdGlvbi5oCisrKyBiL3NyYy91
c2ItZW11bGF0aW9uLmgKQEAgLTg0LDUgKzg0LDQgQEAgc3BpY2VfdXNiX2JhY2tlbmRfY3JlYXRl
X2VtdWxhdGVkX2RldmljZShTcGljZVVzYkJhY2tlbmQgKmJlLAogICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBTcGljZVVzYkVtdWxhdGVkRGV2aWNlQ3JlYXRlIGNyZWF0
ZV9wcm9jLAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB2b2lkICpj
cmVhdGVfcGFyYW1zLAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBH
RXJyb3IgKiplcnIpOwotdm9pZCBzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfZWplY3QoU3BpY2VV
c2JCYWNrZW5kICpiZSwgU3BpY2VVc2JCYWNrZW5kRGV2aWNlICpkZXZpY2UpOwotdm9pZCBzcGlj
ZV91c2JfYmFja2VuZF9kZXZpY2VfcmVwb3J0X2NoYW5nZShTcGljZVVzYkJhY2tlbmQgKmJlLCBT
cGljZVVzYkJhY2tlbmREZXZpY2UgKmRldmljZSk7CisKLS0gCjIuMjAuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBs
aXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
