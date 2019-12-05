Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9195F1147C3
	for <lists+spice-devel@lfdr.de>; Thu,  5 Dec 2019 20:42:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2321D6E99C;
	Thu,  5 Dec 2019 19:42:57 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0AE36F8D4
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Dec 2019 17:43:52 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id q9so4851938wmj.5
 for <spice-devel@lists.freedesktop.org>; Thu, 05 Dec 2019 09:43:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=K007IPtBnCGyxnlNHm9+sVHa6XJxOynwAa966KAL5mw=;
 b=Vo9Inx9ya/NMjmgLOUmLC/AGQTU6t4ShiFZibFQ2muVjnMKkW3CD4usB7Y+yOPJDLC
 n1xiE6CxXx+GicElZ+op7vpPmALk+TzeXNQMFWBR8mZMIC6+GMM2kCdAU3o/fdaPkylv
 nmdIHSSoeyPY6JeGYsS959H/eHaMkqshYBsXUV9J+bu+opeJRSDjw7kTnjNKCF1P9Qoj
 HOtT71fBy8YHRK3nWQJb6FLnZf5ZYashyVUnCb32UCt058/lUhm/JXaVkFp0z45K+TXU
 x0d0iQXB0X8Td3k3GUwIzZd3wl9PCZ8UGoE1Ke7wf1gf72g4PK2dDRo7U5fg4VTrpMzy
 gVMQ==
X-Gm-Message-State: APjAAAWswDyEaerIqF8/wW4RhnFr7BRQs457l25Pz4CH/Q+LKQWF7l6c
 iyWV6llrLPAgADqrXZMhnKnsnOlvrjvHJw==
X-Google-Smtp-Source: APXvYqyjHBLS1wVUqumnQ/wYhdHPbB5vt1jLgzFGfh6/XNH0TRHzyx319MWTOYcP/nCmDVxODfGoPw==
X-Received: by 2002:a1c:7dc4:: with SMTP id y187mr6359417wmc.161.1575567831388; 
 Thu, 05 Dec 2019 09:43:51 -0800 (PST)
Received: from localhost.localdomain ([94.188.175.54])
 by smtp.gmail.com with ESMTPSA id j12sm13888954wrw.54.2019.12.05.09.43.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2019 09:43:50 -0800 (PST)
From: alexander@daynix.com
X-Google-Original-From: anezhins@redhat.com
To: spice-devel@lists.freedesktop.org
Date: Thu,  5 Dec 2019 19:49:14 +0200
Message-Id: <20191205174915.24546-9-anezhins@redhat.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191205174915.24546-1-anezhins@redhat.com>
References: <20191205174915.24546-1-anezhins@redhat.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 05 Dec 2019 19:42:56 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=K007IPtBnCGyxnlNHm9+sVHa6XJxOynwAa966KAL5mw=;
 b=O3qave3/dK0TBrdfITsBH9PYqq4GpEnsYOSAFGqmnMpIuXJ3UGwg3ZU6lg7jA4wMFo
 KBZHROsIiiGae9ZXzNiSQkKqjZtH8TPrO4YX6e8ziKf/5KGkMadysPHuy9xMhUdiVtrI
 Ox0GCiKyVySguY7ECulRsc/HhWCG61cBqUeEwUEr5iH4vGvfcCHD3Xeknz7POdMoi+tF
 RgWXxOtNHI+zX84RuF9QnHEI69ZhFmRrBAk3PdhH8zDxaNPLcfkYNSAmtLJu4QuboxM+
 ZP8HrfLTTvZIMp9vyVbVag4Z9sUvUOBWW+DD7YAd6ZUN0+L1rUYrz5VBqxWlBeyeoVO5
 ScsQ==
Subject: [Spice-devel] [PATCH 8/9] auto-connect shared CD devices added
 using command line
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

RnJvbTogQWxleGFuZGVyIE5lemhpbnNreSA8YW5lemhpbnNAcmVkaGF0LmNvbT4KClR1cm4gc2hh
cmVkIENEIGRldmljZXMgYWRkZWQgdXNpbmcgY29tbWFuZCBsaW5lIGludG8gaG90LXBsdWdnZWQg
ZGV2aWNlcwp3aGljaCBhcmUgcmVkaXJlY3RlZCBhY2NvcmRpbmcgdG8gJ2F1dG8tY29ubmVjdCcg
ZmlsdGVyIHJ1bGVzLgpCeSBkZWZhdWx0IGNvbW1hbmQgbGluZSBkZXZpY2VzIGFyZSBhZGRlZCB1
c2luZyAncmVkaXJlY3Qtb24tY29ubmVjdCcgZmlsdGVyLAp3aGljaCBkbyBub3QgZml0IHRoZSBz
aGFyZCBDRCBjb25uZWN0aW5nIHJlcXVpcmVtZW50cy4KClNpZ25lZC1vZmYtYnk6IEFsZXhhbmRl
ciBOZXpoaW5za3kgPGFuZXpoaW5zQHJlZGhhdC5jb20+Ci0tLQogc3JjL3VzYi1kZXZpY2UtbWFu
YWdlci5jIHwgMjUgKysrKysrKysrKysrKysrKysrLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE4
IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL3VzYi1kZXZp
Y2UtbWFuYWdlci5jIGIvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jCmluZGV4IDA5NjFlZjkuLmE2
OWEzNDYgMTAwNjQ0Ci0tLSBhL3NyYy91c2ItZGV2aWNlLW1hbmFnZXIuYworKysgYi9zcmMvdXNi
LWRldmljZS1tYW5hZ2VyLmMKQEAgLTg4OSwxMSArODg5LDkgQEAgc3RhdGljIHZvaWQgc3BpY2Vf
dXNiX2RldmljZV9tYW5hZ2VyX2NoZWNrX3JlZGlyX29uX2Nvbm5lY3QoCiAgICAgR1Rhc2sgKnRh
c2s7CiAgICAgU3BpY2VVc2JEZXZpY2UgKmRldmljZTsKICAgICBTcGljZVVzYkJhY2tlbmREZXZp
Y2UgKmJkZXY7CisgICAgZ2Jvb2xlYW4gaXNfY2QsIHNoYWxsX3JlZGlyZWN0OwogICAgIGd1aW50
IGk7CiAKLSAgICBpZiAocHJpdi0+cmVkaXJlY3Rfb25fY29ubmVjdCA9PSBOVUxMKQotICAgICAg
ICByZXR1cm47Ci0KICAgICBmb3IgKGkgPSAwOyBpIDwgcHJpdi0+ZGV2aWNlcy0+bGVuOyBpKysp
IHsKICAgICAgICAgZGV2aWNlID0gZ19wdHJfYXJyYXlfaW5kZXgocHJpdi0+ZGV2aWNlcywgaSk7
CiAKQEAgLTkwMSwxMCArODk5LDIzIEBAIHN0YXRpYyB2b2lkIHNwaWNlX3VzYl9kZXZpY2VfbWFu
YWdlcl9jaGVja19yZWRpcl9vbl9jb25uZWN0KAogICAgICAgICAgICAgY29udGludWU7CiAKICAg
ICAgICAgYmRldiA9IHNwaWNlX3VzYl9kZXZpY2VfbWFuYWdlcl9kZXZpY2VfdG9fYmRldihzZWxm
LCBkZXZpY2UpOwotICAgICAgICBpZiAoc3BpY2VfdXNiX2JhY2tlbmRfZGV2aWNlX2NoZWNrX2Zp
bHRlcigKLSAgICAgICAgICAgICAgICAgICAgICAgICAgICBiZGV2LAotICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHByaXYtPnJlZGlyZWN0X29uX2Nvbm5lY3RfcnVsZXMsCi0gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgcHJpdi0+cmVkaXJlY3Rfb25fY29ubmVjdF9ydWxlc19jb3VudCkg
PT0gMCkgeworICAgICAgICBpc19jZCA9IHNwaWNlX3VzYl9iYWNrZW5kX2RldmljZV9nZXRfbGli
ZGV2KGJkZXYpID09IE5VTEw7CisKKyAgICAgICAgaWYgKHByaXYtPnJlZGlyZWN0X29uX2Nvbm5l
Y3QpIHsKKyAgICAgICAgICAgIHNoYWxsX3JlZGlyZWN0ID0gIXNwaWNlX3VzYl9iYWNrZW5kX2Rl
dmljZV9jaGVja19maWx0ZXIoCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGJkZXYs
CisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHByaXYtPnJlZGlyZWN0X29uX2Nvbm5l
Y3RfcnVsZXMsCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHByaXYtPnJlZGlyZWN0
X29uX2Nvbm5lY3RfcnVsZXNfY291bnQpOworICAgICAgICB9IGVsc2UgaWYgKGlzX2NkKSB7Cisg
ICAgICAgICAgICBzaGFsbF9yZWRpcmVjdCA9ICFzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfY2hl
Y2tfZmlsdGVyKAorICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBiZGV2LAorICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBwcml2LT5hdXRvX2Nvbm5fZmlsdGVyX3J1bGVzLAor
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwcml2LT5hdXRvX2Nvbm5fZmlsdGVyX3J1
bGVzX2NvdW50KTsKKyAgICAgICAgfSBlbHNlIHsKKyAgICAgICAgICAgIHNoYWxsX3JlZGlyZWN0
ID0gRkFMU0U7CisgICAgICAgIH0KKworICAgICAgICBpZiAoc2hhbGxfcmVkaXJlY3QpIHsKICAg
ICAgICAgICAgIC8qIE5vdGU6IHJlLXVzZXMgc3BpY2VfdXNiX2RldmljZV9tYW5hZ2VyX2Nvbm5l
Y3RfZGV2aWNlX2FzeW5jJ3MKICAgICAgICAgICAgICAgIGNvbXBsZXRpb24gaGFuZGxpbmcgY29k
ZSEgKi8KICAgICAgICAgICAgIHRhc2sgPSBnX3Rhc2tfbmV3KHNlbGYsCi0tIAoyLjIwLjEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVs
IG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
