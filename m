Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E1E289AA3
	for <lists+spice-devel@lfdr.de>; Mon, 12 Aug 2019 11:57:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF8D96E4CA;
	Mon, 12 Aug 2019 09:57:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8071189E52
 for <spice-devel@lists.freedesktop.org>; Mon, 12 Aug 2019 09:57:47 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id s3so11579094wms.2
 for <spice-devel@lists.freedesktop.org>; Mon, 12 Aug 2019 02:57:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Rsd9tkGAXAGOqHHtvsYvqvoDYKPxuj9Uw9VSBLFEyiE=;
 b=ltbliX5yjgTOV53qn4JhTYSLFmD7CDqIX8I5gYtIvBpw9BowrbUIr6KsS97jIV6nYM
 Thkn1Pg86izu+yu5FNWxZGX0iVn5p3aj5d8iJrkxLqeB7G9Wd6IWurRxPqA38uE/QBgR
 SQxz11Z91ljROtDbJ5crSWvPAPgIFpMZzOZx64Ucu2a7sSApjXjjAkGPRC4iRUzDNT4R
 rkKLZdXavrIAHpiFI4XdWkEzVg00cPhQHkQBeVgut14DJiWsysO/QSrhn805PkDvMHHi
 AlqQrvEFBtcknpXW9Gcbdb/ul8Lk8owgsPpnJn32fEZCGE/0aUcCCtxwlBYtNedYd7pc
 qsPQ==
X-Gm-Message-State: APjAAAVIAPnqDm+73kAQEuzK2I19lLqaaIzxvtvaI9oGnfe9rEiDxW9s
 z8DgD0bxIRP0Whf2LVDj+1Ih9xyPR3k=
X-Google-Smtp-Source: APXvYqw2l13MJGkUwiU1uJHO335cxMR8UB0z1Iid3F5avd0DUBOX2yIGtsufx6D+Mx3B0IcqlzAeIg==
X-Received: by 2002:a1c:6a03:: with SMTP id f3mr25443938wmc.35.1565603865957; 
 Mon, 12 Aug 2019 02:57:45 -0700 (PDT)
Received: from f2.redhat.com (bzq-79-182-115-245.red.bezeqint.net.
 [79.182.115.245])
 by smtp.gmail.com with ESMTPSA id g14sm11930659wrb.38.2019.08.12.02.57.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 12 Aug 2019 02:57:45 -0700 (PDT)
From: Yuri Benditovich <yuri.benditovich@daynix.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 12 Aug 2019 12:57:23 +0300
Message-Id: <20190812095729.32692-4-yuri.benditovich@daynix.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190812095729.32692-1-yuri.benditovich@daynix.com>
References: <20190812095729.32692-1-yuri.benditovich@daynix.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Rsd9tkGAXAGOqHHtvsYvqvoDYKPxuj9Uw9VSBLFEyiE=;
 b=clvsodzq2w9P/64JSYcERA65QkjPYqyray1uviB+15wAQg1UrQVIojmBDyKCseKuMP
 K7zGsxe6WIax9TT/v5vBXkq4Ci5+gUBPd9JCI4MVEEP7YZSeFLvCGr3qPiHff8O+mGia
 Cj92xxQkDh8U9VRKMe/PZ+j/Qy9MyZL4vM/bsOnzTwogDnKTtfVjO7mKCjYUyPC46fTv
 EDUcH6rY25tAltXzGJdgV15VHsk2G9Ziphb5N6dPR0IrfQKk+x78mwqPVqxogLA7jytz
 4BLNhhh+G6a3MXTiOGeOpbMLCwXaxKBPrcjCozqj+Mz1m3UnlpngPS1Rnuh9Vq+0XA6u
 HFHA==
Subject: [Spice-devel] [spice-gtk v3 3/9] usb-redir: move implementation of
 device description to USB backend
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

Rm9yIGxvY2FsIFVTQiBkZXZpY2UgdGhlIFVTQiBiYWNrZW5kIHJldHVybnMgdGhlIHNhbWUgZGV2
aWNlCmRlc2NyaXB0aW9uIGFzIHNwaWNlLXVzYi1tYW5hZ2VyIGRpZCwgZm9yIGVtdWxhdGVkIGRl
dmljZXMgaXQKdXNlcyB0aGUgZGVzY3JpcHRpb24gcHJvdmlkZWQgYnkgZGV2aWNlJ3MgaW1wbGVt
ZW50YXRpb24uCgpTaWduZWQtb2ZmLWJ5OiBZdXJpIEJlbmRpdG92aWNoIDx5dXJpLmJlbmRpdG92
aWNoQGRheW5peC5jb20+CkFja2VkLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0
LmNvbT4KLS0tCiBzcmMvdXNiLWJhY2tlbmQuYyAgICAgICAgfCA0MSArKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrCiBzcmMvdXNiLWJhY2tlbmQuaCAgICAgICAgfCAgMSAr
CiBzcmMvdXNiLWRldmljZS1tYW5hZ2VyLmMgfCAyOSArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tCiAzIGZpbGVzIGNoYW5nZWQsIDQzIGluc2VydGlvbnMoKyksIDI4IGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL3NyYy91c2ItYmFja2VuZC5jIGIvc3JjL3VzYi1iYWNrZW5kLmMKaW5kZXgg
N2Y5ZmNjMS4uYWExMWM3OSAxMDA2NDQKLS0tIGEvc3JjL3VzYi1iYWNrZW5kLmMKKysrIGIvc3Jj
L3VzYi1iYWNrZW5kLmMKQEAgLTQyLDYgKzQyLDcgQEAKICNpbmNsdWRlICJ1c2ItZW11bGF0aW9u
LmgiCiAjaW5jbHVkZSAiY2hhbm5lbC11c2JyZWRpci1wcml2LmgiCiAjaW5jbHVkZSAic3BpY2Ut
Y2hhbm5lbC1wcml2LmgiCisjaW5jbHVkZSAidXNidXRpbC5oIgogCiAjZGVmaW5lIExPVURfREVC
VUcoeCwgLi4uKQogCkBAIC04NDQsNiArODQ1LDQ2IEBAIHNwaWNlX3VzYl9iYWNrZW5kX2NoYW5u
ZWxfZ2V0X2d1ZXN0X2ZpbHRlcihTcGljZVVzYkJhY2tlbmRDaGFubmVsICpjaCwKICAgICB9CiB9
CiAKK2djaGFyICogc3BpY2VfdXNiX2JhY2tlbmRfZGV2aWNlX2dldF9kZXNjcmlwdGlvbihTcGlj
ZVVzYkJhY2tlbmREZXZpY2UgKmRldiwKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBjb25zdCBnY2hhciAqZm9ybWF0KQoreworICAgIGd1aW50MTYgYnVz
LCBhZGRyZXNzLCB2aWQsIHBpZDsKKyAgICBnY2hhciAqZGVzY3JpcHRpb24sICpkZXNjcmlwdG9y
LCAqbWFudWZhY3R1cmVyID0gTlVMTCwgKnByb2R1Y3QgPSBOVUxMOworCisgICAgZ19yZXR1cm5f
dmFsX2lmX2ZhaWwoZGV2ICE9IE5VTEwsIE5VTEwpOworCisgICAgYnVzICAgICA9IGRldi0+ZGV2
aWNlX2luZm8uYnVzOworICAgIGFkZHJlc3MgPSBkZXYtPmRldmljZV9pbmZvLmFkZHJlc3M7Cisg
ICAgdmlkICAgICA9IGRldi0+ZGV2aWNlX2luZm8udmlkOworICAgIHBpZCAgICAgPSBkZXYtPmRl
dmljZV9pbmZvLnBpZDsKKworICAgIGlmICgodmlkID4gMCkgJiYgKHBpZCA+IDApKSB7CisgICAg
ICAgIGRlc2NyaXB0b3IgPSBnX3N0cmR1cF9wcmludGYoIlslMDR4OiUwNHhdIiwgdmlkLCBwaWQp
OworICAgIH0gZWxzZSB7CisgICAgICAgIGRlc2NyaXB0b3IgPSBnX3N0cmR1cCgiIik7CisgICAg
fQorCisgICAgaWYgKGRldi0+bGlidXNiX2RldmljZSkgeworICAgICAgICBzcGljZV91c2JfdXRp
bF9nZXRfZGV2aWNlX3N0cmluZ3MoYnVzLCBhZGRyZXNzLCB2aWQsIHBpZCwKKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICZtYW51ZmFjdHVyZXIsICZwcm9kdWN0KTsK
KyAgICB9IGVsc2UgeworICAgICAgICBwcm9kdWN0ID0gZGV2aWNlX29wcyhkZXYtPmVkZXYpLT5n
ZXRfcHJvZHVjdF9kZXNjcmlwdGlvbihkZXYtPmVkZXYpOworICAgIH0KKworICAgIGlmICghZm9y
bWF0KSB7CisgICAgICAgIGZvcm1hdCA9IF8oIiVzICVzICVzIGF0ICVkLSVkIik7CisgICAgfQor
CisgICAgZGVzY3JpcHRpb24gPSBnX3N0cmR1cF9wcmludGYoZm9ybWF0LCBtYW51ZmFjdHVyZXIg
PyBtYW51ZmFjdHVyZXIgOiAiIiwKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBw
cm9kdWN0LCBkZXNjcmlwdG9yLCBidXMsIGFkZHJlc3MpOworCisgICAgZ19mcmVlKG1hbnVmYWN0
dXJlcik7CisgICAgZ19mcmVlKGRlc2NyaXB0b3IpOworICAgIGdfZnJlZShwcm9kdWN0KTsKKwor
ICAgIHJldHVybiBkZXNjcmlwdGlvbjsKK30KKwogdm9pZCBzcGljZV91c2JfYmFja2VuZF9kZXZp
Y2VfcmVwb3J0X2NoYW5nZShTcGljZVVzYkJhY2tlbmQgKmJlLAogICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBTcGljZVVzYkJhY2tlbmREZXZpY2UgKmRldikKIHsK
ZGlmZiAtLWdpdCBhL3NyYy91c2ItYmFja2VuZC5oIGIvc3JjL3VzYi1iYWNrZW5kLmgKaW5kZXgg
Y2QzZmYwOS4uYzY5NGRiYiAxMDA2NDQKLS0tIGEvc3JjL3VzYi1iYWNrZW5kLmgKKysrIGIvc3Jj
L3VzYi1iYWNrZW5kLmgKQEAgLTkwLDUgKzkwLDYgQEAgdm9pZCBzcGljZV91c2JfYmFja2VuZF9j
aGFubmVsX2dldF9ndWVzdF9maWx0ZXIoU3BpY2VVc2JCYWNrZW5kQ2hhbm5lbCAqY2gsCiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb25zdCBzdHJ1Y3Qg
dXNicmVkaXJmaWx0ZXJfcnVsZSAgKipydWxlcywKICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIGludCAqY291bnQpOwogdm9pZCBzcGljZV91c2JfYmFja2Vu
ZF9yZXR1cm5fd3JpdGVfZGF0YShTcGljZVVzYkJhY2tlbmRDaGFubmVsICpjaCwgdm9pZCAqZGF0
YSk7CitnY2hhciAqc3BpY2VfdXNiX2JhY2tlbmRfZGV2aWNlX2dldF9kZXNjcmlwdGlvbihTcGlj
ZVVzYkJhY2tlbmREZXZpY2UgKmRldiwgY29uc3QgZ2NoYXIgKmZvcm1hdCk7CiAKIEdfRU5EX0RF
Q0xTCmRpZmYgLS1naXQgYS9zcmMvdXNiLWRldmljZS1tYW5hZ2VyLmMgYi9zcmMvdXNiLWRldmlj
ZS1tYW5hZ2VyLmMKaW5kZXggYjNkYjVkZS4uNTgzNGUwMyAxMDA2NDQKLS0tIGEvc3JjL3VzYi1k
ZXZpY2UtbWFuYWdlci5jCisrKyBiL3NyYy91c2ItZGV2aWNlLW1hbmFnZXIuYwpAQCAtMzIsNyAr
MzIsNiBAQAogI2VuZGlmCiAKICNpbmNsdWRlICJjaGFubmVsLXVzYnJlZGlyLXByaXYuaCIKLSNp
bmNsdWRlICJ1c2J1dGlsLmgiCiAjZW5kaWYKIAogI2luY2x1ZGUgInNwaWNlLXNlc3Npb24tcHJp
di5oIgpAQCAtMTQzOSwzNSArMTQzOCw5IEBAIHNwaWNlX3VzYl9kZXZpY2VfbWFuYWdlcl9jYW5f
cmVkaXJlY3RfZGV2aWNlKFNwaWNlVXNiRGV2aWNlTWFuYWdlciAgKnNlbGYsCiBnY2hhciAqc3Bp
Y2VfdXNiX2RldmljZV9nZXRfZGVzY3JpcHRpb24oU3BpY2VVc2JEZXZpY2UgKmRldmljZSwgY29u
c3QgZ2NoYXIgKmZvcm1hdCkKIHsKICNpZmRlZiBVU0VfVVNCUkVESVIKLSAgICBndWludDE2IGJ1
cywgYWRkcmVzcywgdmlkLCBwaWQ7Ci0gICAgZ2NoYXIgKmRlc2NyaXB0aW9uLCAqZGVzY3JpcHRv
ciwgKm1hbnVmYWN0dXJlciA9IE5VTEwsICpwcm9kdWN0ID0gTlVMTDsKLQogICAgIGdfcmV0dXJu
X3ZhbF9pZl9mYWlsKGRldmljZSAhPSBOVUxMLCBOVUxMKTsKIAotICAgIGJ1cyAgICAgPSBzcGlj
ZV91c2JfZGV2aWNlX2dldF9idXNudW0oZGV2aWNlKTsKLSAgICBhZGRyZXNzID0gc3BpY2VfdXNi
X2RldmljZV9nZXRfZGV2YWRkcihkZXZpY2UpOwotICAgIHZpZCAgICAgPSBzcGljZV91c2JfZGV2
aWNlX2dldF92aWQoZGV2aWNlKTsKLSAgICBwaWQgICAgID0gc3BpY2VfdXNiX2RldmljZV9nZXRf
cGlkKGRldmljZSk7Ci0KLSAgICBpZiAoKHZpZCA+IDApICYmIChwaWQgPiAwKSkgewotICAgICAg
ICBkZXNjcmlwdG9yID0gZ19zdHJkdXBfcHJpbnRmKCJbJTA0eDolMDR4XSIsIHZpZCwgcGlkKTsK
LSAgICB9IGVsc2UgewotICAgICAgICBkZXNjcmlwdG9yID0gZ19zdHJkdXAoIiIpOwotICAgIH0K
LQotICAgIHNwaWNlX3VzYl91dGlsX2dldF9kZXZpY2Vfc3RyaW5ncyhidXMsIGFkZHJlc3MsIHZp
ZCwgcGlkLAotICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAmbWFudWZhY3R1
cmVyLCAmcHJvZHVjdCk7Ci0KLSAgICBpZiAoIWZvcm1hdCkKLSAgICAgICAgZm9ybWF0ID0gXygi
JXMgJXMgJXMgYXQgJWQtJWQiKTsKLQotICAgIGRlc2NyaXB0aW9uID0gZ19zdHJkdXBfcHJpbnRm
KGZvcm1hdCwgbWFudWZhY3R1cmVyLCBwcm9kdWN0LCBkZXNjcmlwdG9yLCBidXMsIGFkZHJlc3Mp
OwotCi0gICAgZ19mcmVlKG1hbnVmYWN0dXJlcik7Ci0gICAgZ19mcmVlKGRlc2NyaXB0b3IpOwot
ICAgIGdfZnJlZShwcm9kdWN0KTsKLQotICAgIHJldHVybiBkZXNjcmlwdGlvbjsKKyAgICByZXR1
cm4gc3BpY2VfdXNiX2JhY2tlbmRfZGV2aWNlX2dldF9kZXNjcmlwdGlvbihkZXZpY2UtPmJkZXYs
IGZvcm1hdCk7CiAjZWxzZQogICAgIHJldHVybiBOVUxMOwogI2VuZGlmCi0tIAoyLjE3LjEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVs
IG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
