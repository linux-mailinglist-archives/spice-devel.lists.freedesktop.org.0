Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 173191147C9
	for <lists+spice-devel@lfdr.de>; Thu,  5 Dec 2019 20:43:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09C1C6F8EF;
	Thu,  5 Dec 2019 19:42:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 518C06F8D4
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Dec 2019 17:43:45 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id t2so4715028wrr.1
 for <spice-devel@lists.freedesktop.org>; Thu, 05 Dec 2019 09:43:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9U7l6JBmoETlxJ16ctSdvStIIpVjM2vUvaRTtPOBaQk=;
 b=uUFAluhpFh/Chg87fKa/cj56lSzqIzTiPXF+tUzqW+W+WzbaW0SmnpimJ3dx60XA8I
 UmTITtTvbbqKIAoxjGELcaEZq1DS3wi5DRGi/DlQIGPdE68wa4n1egToiLdkO1V/S+2s
 QY3jAkCN7JUN4S9v3KhA1mEGtrhP4FkVGpVFzUIcHY9242+hOtPizHErLcVAPqMJzxg7
 AoIxRVOocgMPt/BuGp0GS4Qicoj2/9atILMWiRRfT0MrzXWz2rxKQ1y9Ei9klHU+bwIg
 FU6+rsnVxnfs5l1299ntPkgEoLYYfFaQlIa5ZpCFUo97wFvzm8TpdZrBBJ/6RMH+/IqD
 7rYg==
X-Gm-Message-State: APjAAAXaKpaDQ+dhZIjpkPdwdxD7IdtHfxuEWGvqyCryYdM5abeFyzA1
 SBHAR7zbLr1LPf3qJ8PjkU363Vajy2b26w==
X-Google-Smtp-Source: APXvYqwEPqDRc4qoD8xSRJQmRM/X/SYZeow39nE2NLPqDdVr53OKdDsAIgy9vvEp02RnlQICntm2kg==
X-Received: by 2002:adf:f802:: with SMTP id s2mr11464234wrp.201.1575567823814; 
 Thu, 05 Dec 2019 09:43:43 -0800 (PST)
Received: from localhost.localdomain ([94.188.175.54])
 by smtp.gmail.com with ESMTPSA id j12sm13888954wrw.54.2019.12.05.09.43.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2019 09:43:43 -0800 (PST)
From: alexander@daynix.com
X-Google-Original-From: anezhins@redhat.com
To: spice-devel@lists.freedesktop.org
Date: Thu,  5 Dec 2019 19:49:07 +0200
Message-Id: <20191205174915.24546-2-anezhins@redhat.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191205174915.24546-1-anezhins@redhat.com>
References: <20191205174915.24546-1-anezhins@redhat.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 05 Dec 2019 19:42:56 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9U7l6JBmoETlxJ16ctSdvStIIpVjM2vUvaRTtPOBaQk=;
 b=FZ9jzo3tM04aenwlloVof0zFWGsQKt3lYcvt0kAh1uNxVC0VRs4fOJvUU9C6wqAoEh
 wBf4aFaPuty9b70LgKSi/m64UUGUFYhB4+ECXwTw6nM5nKtGo/3FSCznxPEEzWuWlcyL
 BgKWwmpbsHYfNSkvxISgwqxvH+jHVQ+CncV0N7rgWMt39Ks4iyoGl4lBoE34FPoUTFhM
 ULRt5Q88W12oaJkP6+VlSQCMiXMFHZbqUNWnQCXORAXguwU5IzAq5js5Hhjor+Gyn7NG
 /E//ymZ2JFsmyS4T0BQOyWTqIlgChXCZ7IvtYTDaXjgJpnMshQO7+3KP99Uy/SEVQ3cI
 FyjA==
Subject: [Spice-devel] [PATCH 1/9] move
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
