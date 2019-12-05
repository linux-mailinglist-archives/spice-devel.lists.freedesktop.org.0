Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8970D1147CA
	for <lists+spice-devel@lfdr.de>; Thu,  5 Dec 2019 20:43:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7542B6F8F7;
	Thu,  5 Dec 2019 19:42:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7DE76E150
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Dec 2019 17:43:50 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id t2so4715363wrr.1
 for <spice-devel@lists.freedesktop.org>; Thu, 05 Dec 2019 09:43:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iDZ9QbEFTKcP69g0Tf29zykZAAY/5XgfB2i/cLFXFHc=;
 b=H5D9KxHY8emLzB9XYH1U9g00qyIjH1WRgx/MRvySmIzYCeLcfwL6+VauVFcWTR4BA1
 n72Qg+P+MofVPUkhZ5qWefvpp7t2imIRcb4ospvE6RB+VRo5nduDBSOd9pYPPgcC+H3B
 HXKIou8UcHml8zkmM4X1oUUM/xJIde0GZG20kP6Cz3HB7uWP1p+4rrIPV85uad/KiuGu
 0psVmitHb/pF6mayduiH6YVAV1s0V8y4Gife3dH5hll4PwWvG/JyYSMVzfhYUSU6iJxz
 oXnAPbJdl8ilKbS4M954JtJ48f0xMo+bqOlHmd/SO85clcdK5GpW4BjPA9V51+mG74sD
 s+YQ==
X-Gm-Message-State: APjAAAWLzmAxNec8erjC7o6Il/47Th2lgXB2fUIlW9fLCex+7ZGtJJLS
 jhWZo5+/DbYWJvnJhkNIK3fvVLK2OiPmCg==
X-Google-Smtp-Source: APXvYqza76ePczjs8tasFRQhEgj80dvl5ByqWJERPQK6usrvXGG7GhtQkuuEs+jT/9yKuvvMDUFsjg==
X-Received: by 2002:a5d:5308:: with SMTP id e8mr11523651wrv.77.1575567829291; 
 Thu, 05 Dec 2019 09:43:49 -0800 (PST)
Received: from localhost.localdomain ([94.188.175.54])
 by smtp.gmail.com with ESMTPSA id j12sm13888954wrw.54.2019.12.05.09.43.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2019 09:43:48 -0800 (PST)
From: alexander@daynix.com
X-Google-Original-From: anezhins@redhat.com
To: spice-devel@lists.freedesktop.org
Date: Thu,  5 Dec 2019 19:49:12 +0200
Message-Id: <20191205174915.24546-7-anezhins@redhat.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191205174915.24546-1-anezhins@redhat.com>
References: <20191205174915.24546-1-anezhins@redhat.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 05 Dec 2019 19:42:56 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iDZ9QbEFTKcP69g0Tf29zykZAAY/5XgfB2i/cLFXFHc=;
 b=iyI7FK2QwhGDzLs06u/gvJo6C7ZSta9RCul8r5zsIHmg49zPgssIYIKp16mTSi9RBF
 rxs9zis++mH8bhgNdcW8/+1v4tOYVEDU/9e/9AvuiLatxXXsRhVYXboJ+TP8JVJDqrC5
 65wDq4vfPSUiTEEaPEXOM2zH9HbsUZlOs3p3DzcVf4Gf0sFvCAaWMT7YT9XUof6eTro2
 P4km5w6xpfv+e+FmlGmJmx8m8ZHUDXBgLzDdMy2Pr0npYU9x8ZhF0IW2WZuQ1xwKjUH7
 AlN1HnnIzNYptCsK226Ct5+UDmBGxTzy6zqZZ2VKAEuR5TlzlI5vFrRg4HHrwfNCZ0eO
 GmqA==
Subject: [Spice-devel] [PATCH 6/9] Implement shared CD device auto-removal
 on disconnect, in usb-device-widget
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
L3VzYi1kZXZpY2Utd2lkZ2V0LmMgfCAxOSArKysrKysrKysrKysrKysrKystCiAxIGZpbGUgY2hh
bmdlZCwgMTggaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL3NyYy91
c2ItZGV2aWNlLXdpZGdldC5jIGIvc3JjL3VzYi1kZXZpY2Utd2lkZ2V0LmMKaW5kZXggZTA3NzQ4
Mi4uYTc3MmFlMCAxMDA2NDQKLS0tIGEvc3JjL3VzYi1kZXZpY2Utd2lkZ2V0LmMKKysrIGIvc3Jj
L3VzYi1kZXZpY2Utd2lkZ2V0LmMKQEAgLTUxOSwxMCArNTE5LDI3IEBAIHN0YXRpYyB2b2lkIF9k
aXNjb25uZWN0X2NiKEdPYmplY3QgKmdvYmplY3QsIEdBc3luY1Jlc3VsdCAqcmVzLCBncG9pbnRl
ciB1c2VyX2RhCiB7CiAgICAgU3BpY2VVc2JEZXZpY2VNYW5hZ2VyICptYW5hZ2VyID0gU1BJQ0Vf
VVNCX0RFVklDRV9NQU5BR0VSKGdvYmplY3QpOwogICAgIGNvbm5lY3RfY2JfZGF0YSAqZGF0YSA9
IHVzZXJfZGF0YTsKKyAgICBTcGljZVVzYkRldmljZSAqZGV2aWNlID0gZ19vYmplY3RfZ2V0X2Rh
dGEoR19PQkpFQ1QoZGF0YS0+Y2hlY2spLCAidXNiLWRldmljZSIpOwogICAgIEdFcnJvciAqZXJy
ID0gTlVMTDsKKyAgICBnYm9vbGVhbiByYzsKIAogICAgIHNwaWNlX3VzYl9kZXZpY2VfbWFuYWdl
cl9kaXNjb25uZWN0X2RldmljZV9maW5pc2gobWFuYWdlciwgcmVzLCAmZXJyKTsKLSAgICBpZiAo
ZXJyKSB7CisgICAgaWYgKCFlcnIpIHsKKyAgICAgICAgaWYgKHNwaWNlX3VzYl9kZXZpY2VfbWFu
YWdlcl9pc19kZXZpY2Vfc2hhcmVkX2NkKG1hbmFnZXIsIGRldmljZSkpIHsKKyAgICAgICAgICAg
IHJjID0gc3BpY2VfdXNiX2RldmljZV9tYW5hZ2VyX3JlbW92ZV9zaGFyZWRfY2RfZGV2aWNlKG1h
bmFnZXIsIGRldmljZSwgJmVycik7CisgICAgICAgICAgICBpZiAoIXJjKSB7CisgICAgICAgICAg
ICAgICAgaWYgKGVycikgeworICAgICAgICAgICAgICAgICAgICBTUElDRV9ERUJVRygiRmFpbGVk
IHRvIHJlbW92ZSAlcywgJXMiLAorICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBndGtf
YnV0dG9uX2dldF9sYWJlbChHVEtfQlVUVE9OKGRhdGEtPmNoZWNrKSksCisgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGVyci0+bWVzc2FnZSk7CisgICAgICAgICAgICAgICAgICAgIGdf
ZXJyb3JfZnJlZShlcnIpOworICAgICAgICAgICAgICAgIH0gZWxzZSB7CisgICAgICAgICAgICAg
ICAgICAgIFNQSUNFX0RFQlVHKCJGYWlsZWQgdG8gcmVtb3ZlICVzIiwKKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgZ3RrX2J1dHRvbl9nZXRfbGFiZWwoR1RLX0JVVFRPTihkYXRhLT5j
aGVjaykpKTsKKyAgICAgICAgICAgICAgICB9CisgICAgICAgICAgICB9CisgICAgICAgIH0KKyAg
ICB9IGVsc2UgewogICAgICAgICBTUElDRV9ERUJVRygiRGV2aWNlIGRpc2Nvbm5lY3Rpb24gZmFp
bGVkIik7CiAgICAgICAgIGdfZXJyb3JfZnJlZShlcnIpOwogICAgIH0KLS0gCjIuMjAuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwg
bWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
