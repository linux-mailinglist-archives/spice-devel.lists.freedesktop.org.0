Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F8AE80C1E
	for <lists+spice-devel@lfdr.de>; Sun,  4 Aug 2019 21:16:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1942F89E57;
	Sun,  4 Aug 2019 19:16:42 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4107F89E3B
 for <spice-devel@lists.freedesktop.org>; Sun,  4 Aug 2019 19:16:41 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id r1so82194454wrl.7
 for <spice-devel@lists.freedesktop.org>; Sun, 04 Aug 2019 12:16:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=w+Gj8KV8t0nU6sxPj4sz0mre8/cxliLUc2u0kEQBroI=;
 b=PXXkb2oVHIZboQEpf8mrTeEYfLFLCA1MwZTwSUQQELKJF4QQaTHG2qRgRVfuW4wccy
 RoheosROxpTesxBGIUvSoO1S6Ykc3/AAV8FNUERaBFNT0ui6/1gVHUSqYXamh3wpfOcC
 qbMKHZY90u19iZ59i/+c+YK0gqIo0vfcX0hzfr8Y5hnO7obylFKlQ++HLTIRxS3KXA9d
 OTsclOpsl+H9Uarwf1SAU0tDrHehnTOA2kbukiSXIl10RMHnUxiKASZbcjy8rBn7Vzye
 qO1a0BFAm13wU/7/XzZHzwa6hpdLUrI8KFyuSVWCiLf0ZJBj8RbLnLKsUUD46jTj+V7A
 4WHg==
X-Gm-Message-State: APjAAAUXb8Ttj34ETcgN6dH3zBeIMoJb5K9h/i7hEkvaaJ+URAYp56+c
 IbXdZzzxLSxj4J5qDKmTqTDEcpTT
X-Google-Smtp-Source: APXvYqx15Q+UqPgxcBvtRiqCYs42HSedHKaTWAS8FTKpsPy8OO8UfC7tQhRxeACm1zu0XQiuUhjHoA==
X-Received: by 2002:adf:c594:: with SMTP id
 m20mr135068312wrg.126.1564946199210; 
 Sun, 04 Aug 2019 12:16:39 -0700 (PDT)
Received: from f2.redhat.com (bzq-79-182-115-245.red.bezeqint.net.
 [79.182.115.245])
 by smtp.gmail.com with ESMTPSA id f204sm136527687wme.18.2019.08.04.12.16.38
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 04 Aug 2019 12:16:38 -0700 (PDT)
From: Yuri Benditovich <yuri.benditovich@daynix.com>
To: spice-devel@lists.freedesktop.org
Date: Sun,  4 Aug 2019 22:16:22 +0300
Message-Id: <20190804191624.29235-7-yuri.benditovich@daynix.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190804191624.29235-1-yuri.benditovich@daynix.com>
References: <20190804191624.29235-1-yuri.benditovich@daynix.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=w+Gj8KV8t0nU6sxPj4sz0mre8/cxliLUc2u0kEQBroI=;
 b=JSXIEGUbnX/xKzXqss8TYFN2N+osz3IIBAFiKyhOqqBhh9MWGFa0cryQrKYZSKHOeL
 h4oyYoQlEhdzgAnk8gjEbGmTyR6ushEIcyB5/l+ffGk9GXbywo9ScXq2sa2y69z+4dj6
 hxnPRkkKxEfvt82qBpnTSs+XGdG2pAAks0MolAZsVZl3SscMn0DDaeBGFW4eg/f6rkeW
 Lq/zB8d8mg1KGIAhXcgTMZCV0K8Gpz+XX4+hAlmjKiIjA9vCu70H03AmZc07x+75F4r9
 u/LnHWfYaqOaIXpGslFIrKg2YZU2bt7YNKOEQmrtv2ouOy1nDm+3nDhk+l5TJYiPNnCS
 2e1g==
Subject: [Spice-devel] [spice-gtk v2 6/8] usb-redir: add implementation of
 emulated CD device
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

VGhpcyBtb2R1bGUgY29udGFpbnMgaW1wbGVtZW50YXRpb24gb2YgZW11bGF0ZWQgZGV2aWNlCmlu
dGVyZmFjZSBmb3Igc2hhcmVkIENELgoKU2lnbmVkLW9mZi1ieTogWXVyaSBCZW5kaXRvdmljaCA8
eXVyaS5iZW5kaXRvdmljaEBkYXluaXguY29tPgotLS0KIHNyYy91c2ItZGV2aWNlLWNkLmMgfCA3
OTAgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKIHNyYy91c2It
ZGV2aWNlLWNkLmggfCAgMzcgKysrCiAyIGZpbGVzIGNoYW5nZWQsIDgyNyBpbnNlcnRpb25zKCsp
CiBjcmVhdGUgbW9kZSAxMDA2NDQgc3JjL3VzYi1kZXZpY2UtY2QuYwogY3JlYXRlIG1vZGUgMTAw
NjQ0IHNyYy91c2ItZGV2aWNlLWNkLmgKCmRpZmYgLS1naXQgYS9zcmMvdXNiLWRldmljZS1jZC5j
IGIvc3JjL3VzYi1kZXZpY2UtY2QuYwpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAw
Li5iNTE5M2QxCi0tLSAvZGV2L251bGwKKysrIGIvc3JjL3VzYi1kZXZpY2UtY2QuYwpAQCAtMCww
ICsxLDc5MCBAQAorLyogLSotIE1vZGU6IEM7IGMtYmFzaWMtb2Zmc2V0OiA0OyBpbmRlbnQtdGFi
cy1tb2RlOiBuaWwgLSotICovCisvKgorICAgIENvcHlyaWdodCAoQykgMjAxOSBSZWQgSGF0LCBJ
bmMuCisKKyAgICBSZWQgSGF0IEF1dGhvcnM6CisgICAgWXVyaSBCZW5kaXRvdmljaDx5YmVuZGl0
b0ByZWRoYXQuY29tPgorCisgICAgVGhpcyBsaWJyYXJ5IGlzIGZyZWUgc29mdHdhcmU7IHlvdSBj
YW4gcmVkaXN0cmlidXRlIGl0IGFuZC9vcgorICAgIG1vZGlmeSBpdCB1bmRlciB0aGUgdGVybXMg
b2YgdGhlIEdOVSBMZXNzZXIgR2VuZXJhbCBQdWJsaWMKKyAgICBMaWNlbnNlIGFzIHB1Ymxpc2hl
ZCBieSB0aGUgRnJlZSBTb2Z0d2FyZSBGb3VuZGF0aW9uOyBlaXRoZXIKKyAgICB2ZXJzaW9uIDIu
MSBvZiB0aGUgTGljZW5zZSwgb3IgKGF0IHlvdXIgb3B0aW9uKSBhbnkgbGF0ZXIgdmVyc2lvbi4K
KworICAgIFRoaXMgbGlicmFyeSBpcyBkaXN0cmlidXRlZCBpbiB0aGUgaG9wZSB0aGF0IGl0IHdp
bGwgYmUgdXNlZnVsLAorICAgIGJ1dCBXSVRIT1VUIEFOWSBXQVJSQU5UWTsgd2l0aG91dCBldmVu
IHRoZSBpbXBsaWVkIHdhcnJhbnR5IG9mCisgICAgTUVSQ0hBTlRBQklMSVRZIG9yIEZJVE5FU1Mg
Rk9SIEEgUEFSVElDVUxBUiBQVVJQT1NFLiAgU2VlIHRoZSBHTlUKKyAgICBMZXNzZXIgR2VuZXJh
bCBQdWJsaWMgTGljZW5zZSBmb3IgbW9yZSBkZXRhaWxzLgorCisgICAgWW91IHNob3VsZCBoYXZl
IHJlY2VpdmVkIGEgY29weSBvZiB0aGUgR05VIExlc3NlciBHZW5lcmFsIFB1YmxpYworICAgIExp
Y2Vuc2UgYWxvbmcgd2l0aCB0aGlzIGxpYnJhcnk7IGlmIG5vdCwgc2VlIDxodHRwOi8vd3d3Lmdu
dS5vcmcvbGljZW5zZXMvPi4KKyovCisKKyNpbmNsdWRlICJjb25maWcuaCIKKworI2lmZGVmIFVT
RV9VU0JSRURJUgorCisjaW5jbHVkZSA8Z2xpYi1vYmplY3QuaD4KKyNpbmNsdWRlIDxpbnR0eXBl
cy5oPgorI2luY2x1ZGUgPGdpby9naW8uaD4KKyNpbmNsdWRlIDxnbGliL2dpMThuLWxpYi5oPgor
I2luY2x1ZGUgPGVycm5vLmg+CisjaW5jbHVkZSA8bGlidXNiLmg+CisjaW5jbHVkZSA8ZmNudGwu
aD4KKworI2lmZGVmIEdfT1NfV0lOMzIKKyNpbmNsdWRlIDx3aW5kb3dzLmg+CisjaW5jbHVkZSA8
bnRkZGNkcm0uaD4KKyNpbmNsdWRlIDxudGRkbW1jLmg+CisjZWxzZQorI2luY2x1ZGUgPHN5cy9z
dGF0Lmg+CisjaW5jbHVkZSA8c3lzL2lvY3RsLmg+CisjaW5jbHVkZSA8bGludXgvZnMuaD4KKyNp
bmNsdWRlIDxsaW51eC9jZHJvbS5oPgorI2VuZGlmCisKKyNpbmNsdWRlICJ1c2ItZW11bGF0aW9u
LmgiCisjaW5jbHVkZSAidXNiLWRldmljZS1jZC5oIgorI2luY2x1ZGUgImNkLXVzYi1idWxrLW1z
ZC5oIgorCit0eXBlZGVmIHN0cnVjdCBTcGljZUNkTFUgeworICAgIGNoYXIgKmZpbGVuYW1lOwor
ICAgIEdGaWxlICpmaWxlX29iamVjdDsKKyAgICBHRmlsZUlucHV0U3RyZWFtICpzdHJlYW07Cisg
ICAgdWludDY0X3Qgc2l6ZTsKKyAgICB1aW50MzJfdCBibG9ja1NpemU7CisgICAgdWludDMyX3Qg
bG9hZGVkIDogMTsKKyAgICB1aW50MzJfdCBkZXZpY2UgOiAxOworfSBTcGljZUNkTFU7CisKKyNk
ZWZpbmUgTUFYX0xVTl9QRVJfREVWSUNFICAgICAgICAgICAgICAxCisjZGVmaW5lIFVTQjJfQkNE
ICAgICAgICAgICAgICAgICAgICAgICAgMHgyMDAKKyNkZWZpbmUgQ0RfREVWX1ZJRCAgICAgICAg
ICAgICAgICAgICAgICAweDJiMjMKKyNkZWZpbmUgQ0RfREVWX1BJRCAgICAgICAgICAgICAgICAg
ICAgICAweENEQ0QKKyNkZWZpbmUgQ0RfREVWX0NMQVNTICAgICAgICAgICAgICAgICAgICA4Cisj
ZGVmaW5lIENEX0RFVl9TVUJDTEFTUyAgICAgICAgICAgICAgICAgNgorI2RlZmluZSBDRF9ERVZf
UFJPVE9DT0wgICAgICAgICAgICAgICAgIDB4NTAKKyNkZWZpbmUgQ0RfREVWX0JMT0NLX1NJWkUg
ICAgICAgICAgICAgICAweDIwMAorI2RlZmluZSBEVkRfREVWX0JMT0NLX1NJWkUgICAgICAgICAg
ICAgIDB4ODAwCisjZGVmaW5lIE1BWF9CVUxLX0lOX1JFUVVFU1RTICAgICAgICAgICAgNjQKKwor
c3RydWN0IEJ1ZmZlcmVkQnVsa1JlYWQgeworICAgIHN0cnVjdCB1c2JfcmVkaXJfYnVsa19wYWNr
ZXRfaGVhZGVyIGhvdXQ7CisgICAgdWludDY0X3QgaWQ7Cit9OworCitzdHJ1Y3QgU3BpY2VVc2JF
bXVsYXRlZERldmljZSB7CisgICAgVXNiRGV2aWNlT3BzIGRldl9vcHM7CisgICAgU3BpY2VVc2JC
YWNrZW5kICpiYWNrZW5kOworICAgIFNwaWNlVXNiQmFja2VuZERldmljZSAqcGFyZW50OworICAg
IHN0cnVjdCB1c2JyZWRpcnBhcnNlciAqcGFyc2VyOworICAgIFVzYkNkQnVsa01zZERldmljZSog
bXNjOworICAgIFNwaWNlQ2RMVSB1bml0c1tNQVhfTFVOX1BFUl9ERVZJQ0VdOworICAgIGdib29s
ZWFuIGxvY2tlZDsKKyAgICBnYm9vbGVhbiBkZWxldGVfb25fZWplY3Q7CisgICAgZ2Jvb2xlYW4g
ZGVsZXRpbmc7CisgICAgdWludDMyX3QgbnVtX3JlYWRzOworICAgIHN0cnVjdCBCdWZmZXJlZEJ1
bGtSZWFkIHJlYWRfYnVsa1tNQVhfQlVMS19JTl9SRVFVRVNUU107CisgICAgLyogYWNjb3JkaW5n
IHRvIFVTQiBNU0Mgc3BlYyAqLworICAgIHVpbnQxNl90IHNlcmlhbFsxMl07CisgICAgdWludDhf
dCAgbWF4X2x1bl9pbmRleDsKK307CisKK3R5cGVkZWYgc3RydWN0IFNwaWNlVXNiRW11bGF0ZWRE
ZXZpY2UgVXNiQ2Q7CisKKyNpZm5kZWYgR19PU19XSU4zMgorCitzdGF0aWMgaW50IGNkX2Rldmlj
ZV9vcGVuX3N0cmVhbShTcGljZUNkTFUgKnVuaXQsIGNvbnN0IGNoYXIgKmZpbGVuYW1lKQorewor
ICAgIGludCBlcnJvciA9IDA7CisgICAgdW5pdC0+ZGV2aWNlID0gMDsKKworICAgIGlmICghdW5p
dC0+ZmlsZW5hbWUgJiYgIWZpbGVuYW1lKSB7CisgICAgICAgIFNQSUNFX0RFQlVHKCIlczogZmls
ZSBuYW1lIG5vdCBwcm92aWRlZCIsIF9fRlVOQ1RJT05fXyk7CisgICAgICAgIHJldHVybiAtMTsK
KyAgICB9CisgICAgaWYgKHVuaXQtPmZpbGVuYW1lICYmIGZpbGVuYW1lKSB7CisgICAgICAgIGdf
ZnJlZSh1bml0LT5maWxlbmFtZSk7CisgICAgICAgIHVuaXQtPmZpbGVuYW1lID0gTlVMTDsKKyAg
ICB9CisgICAgaWYgKGZpbGVuYW1lKSB7CisgICAgICAgIHVuaXQtPmZpbGVuYW1lID0gZ19zdHJk
dXAoZmlsZW5hbWUpOworICAgIH0KKworICAgIGludCBmZCA9IG9wZW4odW5pdC0+ZmlsZW5hbWUs
IE9fUkRPTkxZIHwgT19OT05CTE9DSyk7CisgICAgaWYgKGZkID4gMCkgeworICAgICAgICBzdHJ1
Y3Qgc3RhdCBmaWxlX3N0YXQgPSB7IDAgfTsKKyAgICAgICAgaWYgKGZzdGF0KGZkLCAmZmlsZV9z
dGF0KSB8fCBmaWxlX3N0YXQuc3Rfc2l6ZSA9PSAwKSB7CisgICAgICAgICAgICBmaWxlX3N0YXQu
c3Rfc2l6ZSA9IDA7CisgICAgICAgICAgICB1bml0LT5kZXZpY2UgPSAxOworICAgICAgICAgICAg
aWYgKCFpb2N0bChmZCwgQkxLR0VUU0laRTY0LCAmZmlsZV9zdGF0LnN0X3NpemUpICYmCisgICAg
ICAgICAgICAgICAgIWlvY3RsKGZkLCBCTEtTU1pHRVQsICZ1bml0LT5ibG9ja1NpemUpKSB7Cisg
ICAgICAgICAgICB9CisgICAgICAgIH0KKyAgICAgICAgdW5pdC0+c2l6ZSA9IGZpbGVfc3RhdC5z
dF9zaXplOworICAgICAgICBjbG9zZShmZCk7CisgICAgICAgIGlmICh1bml0LT5zaXplKSB7Cisg
ICAgICAgICAgICB1bml0LT5maWxlX29iamVjdCA9IGdfZmlsZV9uZXdfZm9yX3BhdGgodW5pdC0+
ZmlsZW5hbWUpOworICAgICAgICAgICAgdW5pdC0+c3RyZWFtID0gZ19maWxlX3JlYWQodW5pdC0+
ZmlsZV9vYmplY3QsIE5VTEwsIE5VTEwpOworICAgICAgICB9CisgICAgICAgIGlmICghdW5pdC0+
c3RyZWFtKSB7CisgICAgICAgICAgICBTUElDRV9ERUJVRygiJXM6IGNhbid0IG9wZW4gc3RyZWFt
IG9uICVzIiwgX19GVU5DVElPTl9fLCB1bml0LT5maWxlbmFtZSk7CisgICAgICAgICAgICBnX2Ns
ZWFyX29iamVjdCgmdW5pdC0+ZmlsZV9vYmplY3QpOworICAgICAgICAgICAgZXJyb3IgPSAtMTsK
KyAgICAgICAgfQorICAgIH0KKyAgICBlbHNlIHsKKyAgICAgICAgU1BJQ0VfREVCVUcoIiVzOiBj
YW4ndCBvcGVuIGZpbGUgJXMiLCBfX0ZVTkNUSU9OX18sIHVuaXQtPmZpbGVuYW1lKTsKKyAgICAg
ICAgZXJyb3IgPSAtMTsKKyAgICB9CisKKyAgICByZXR1cm4gZXJyb3I7Cit9CisKK3N0YXRpYyBp
bnQgY2RfZGV2aWNlX2xvYWQoU3BpY2VDZExVICp1bml0LCBnYm9vbGVhbiBsb2FkKQoreworICAg
IGludCBlcnJvcjsKKyAgICBpZiAoIXVuaXQtPmRldmljZSB8fCAhdW5pdC0+ZmlsZW5hbWUpIHsK
KyAgICAgICAgcmV0dXJuIC0xOworICAgIH0KKyAgICBpbnQgZmQgPSBvcGVuKHVuaXQtPmZpbGVu
YW1lLCBPX1JET05MWSB8IE9fTk9OQkxPQ0spOworICAgIGlmIChmZCA8IDApIHsKKyAgICAgICAg
cmV0dXJuIC0xOworICAgIH0KKyAgICBpZiAobG9hZCkgeworICAgICAgICBlcnJvciA9IGlvY3Rs
KGZkLCBDRFJPTUNMT1NFVFJBWSwgMCk7CisgICAgfSBlbHNlIHsKKyAgICAgICAgZXJyb3IgPSBp
b2N0bChmZCwgQ0RST01fTE9DS0RPT1IsIDApOworICAgICAgICBlcnJvciA9IGlvY3RsKGZkLCBD
RFJPTUVKRUNULCAwKTsKKyAgICB9CisgICAgaWYgKGVycm9yKSB7CisgICAgICAgIC8vIG5vdGUg
dGhhdCBlamVjdGluZyBtaWdodCBiZSBhdmFpbGFibGUgb25seSBmb3Igcm9vdAorICAgICAgICAv
LyBsb2FkaW5nIG1pZ2h0IGJlIGF2YWlsYWJsZSBhbHNvIGZvciByZWd1bGFyIHVzZXIKKyAgICAg
ICAgU1BJQ0VfREVCVUcoIiVzOiBjYW4ndCAlc2xvYWQgJXMsIHJlcyAlZCwgZXJybm8gJWQiLAor
ICAgICAgICAgICAgX19GVU5DVElPTl9fLCBsb2FkID8gIiIgOiAidW4iLCB1bml0LT5maWxlbmFt
ZSwgZXJyb3IsIGVycm5vKTsKKyAgICB9CisgICAgY2xvc2UoZmQpOworICAgIHJldHVybiBlcnJv
cjsKK30KKworc3RhdGljIGludCBjZF9kZXZpY2VfY2hlY2soU3BpY2VDZExVICp1bml0KQorewor
ICAgIGludCBlcnJvcjsKKyAgICBpZiAoIXVuaXQtPmRldmljZSB8fCAhdW5pdC0+ZmlsZW5hbWUp
IHsKKyAgICAgICAgcmV0dXJuIC0xOworICAgIH0KKyAgICBpbnQgZmQgPSBvcGVuKHVuaXQtPmZp
bGVuYW1lLCBPX1JET05MWSB8IE9fTk9OQkxPQ0spOworICAgIGlmIChmZCA8IDApIHsKKyAgICAg
ICAgcmV0dXJuIC0xOworICAgIH0KKyAgICBlcnJvciA9IGlvY3RsKGZkLCBDRFJPTV9EUklWRV9T
VEFUVVMsIDApOworICAgIGVycm9yID0gKGVycm9yID09IENEU19ESVNDX09LKSA/IDAgOiAtMTsK
KyAgICBpZiAoIWVycm9yKSB7CisgICAgICAgIGVycm9yID0gaW9jdGwoZmQsIENEUk9NX0RJU0Nf
U1RBVFVTLCAwKTsKKyAgICAgICAgZXJyb3IgPSAoZXJyb3IgPT0gQ0RTX0RBVEFfMSkgPyAwIDog
LTE7CisgICAgfQorICAgIGNsb3NlKGZkKTsKKyAgICByZXR1cm4gZXJyb3I7Cit9CisKKyNlbHNl
CisKK3N0YXRpYyBnYm9vbGVhbiBpc19kZXZpY2VfbmFtZShjb25zdCBjaGFyICpmaWxlbmFtZSkK
K3sKKyAgICByZXR1cm4gZ19hc2NpaV9pc2FscGhhKGZpbGVuYW1lWzBdKSAmJiBmaWxlbmFtZVsx
XSA9PSAnOicgJiYKKyAgICAgICAgZmlsZW5hbWVbMl0gPT0gMDsKK30KKworc3RhdGljIEhBTkRM
RSBvcGVuX2ZpbGUoY29uc3QgY2hhciAqZmlsZW5hbWUpCit7CisgICAgSEFORExFIGggPSBDcmVh
dGVGaWxlQShmaWxlbmFtZSwKKyAgICAgICAgICAgICAgICAgICAgICAgICAgIEdFTkVSSUNfUkVB
RCwKKyAgICAgICAgICAgICAgICAgICAgICAgICAgIEZJTEVfU0hBUkVfUkVBRCwKKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgIE5VTEwsIE9QRU5fRVhJU1RJTkcsCisgICAgICAgICAgICAgICAg
ICAgICAgICAgICAwLAorICAgICAgICAgICAgICAgICAgICAgICAgICAgTlVMTCk7CisgICAgaWYg
KGggPT0gSU5WQUxJRF9IQU5ETEVfVkFMVUUpIHsKKyAgICAgICAgaCA9IE5VTEw7CisgICAgfQor
ICAgIHJldHVybiBoOworfQorCitzdGF0aWMgdWludDMyX3QgaW9jdGxfb3V0KEhBTkRMRSBoLCB1
aW50MzJfdCBjb2RlLCB2b2lkICpvdXRfYnVmZmVyLCB1aW50MzJfdCBvdXRfc2l6ZSkKK3sKKyAg
ICB1aW50MzJfdCBlcnJvcjsKKyAgICBEV09SRCByZXQ7CisgICAgQk9PTCBiID0gRGV2aWNlSW9D
b250cm9sKGgsIGNvZGUsIE5VTEwsIDAsIG91dF9idWZmZXIsIG91dF9zaXplLCAmcmV0LCBOVUxM
KTsKKyAgICBlcnJvciA9IGIgPyAwIDogR2V0TGFzdEVycm9yKCk7CisgICAgcmV0dXJuIGVycm9y
OworfQorCitzdGF0aWMgdWludDMyX3QgaW9jdGxfbm9uZShIQU5ETEUgaCwgdWludDMyX3QgY29k
ZSkKK3sKKyAgICByZXR1cm4gaW9jdGxfb3V0KGgsIGNvZGUsIE5VTEwsIDApOworfQorCitzdGF0
aWMgZ2Jvb2xlYW4gY2hlY2tfZGV2aWNlKEhBTkRMRSBoKQoreworICAgIEdFVF9DT05GSUdVUkFU
SU9OX0lPQ1RMX0lOUFVUIGNmZ0luID0KKyAgICAgICAgeyBGZWF0dXJlQ2RSZWFkLCBTQ1NJX0dF
VF9DT05GSUdVUkFUSU9OX1JFUVVFU1RfVFlQRV9BTEwsIHt9IH07CisgICAgRFdPUkQgcmV0Owor
ICAgIEdFVF9DT05GSUdVUkFUSU9OX0hFQURFUiBjZmdPdXQ7CisgICAgcmV0dXJuIERldmljZUlv
Q29udHJvbChoLCBJT0NUTF9DRFJPTV9HRVRfQ09ORklHVVJBVElPTiwKKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICZjZmdJbiwgc2l6ZW9mKGNmZ0luKSwgJmNmZ091dCwgc2l6ZW9mKGNmZ091
dCksCisgICAgICAgICAgICAgICAgICAgICAgICAgICAmcmV0LCBOVUxMKTsKK30KKworc3RhdGlj
IGludCBjZF9kZXZpY2Vfb3Blbl9zdHJlYW0oU3BpY2VDZExVICp1bml0LCBjb25zdCBjaGFyICpm
aWxlbmFtZSkKK3sKKyAgICBpbnQgZXJyb3IgPSAwOworICAgIEhBTkRMRSBoOworICAgIHVuaXQt
PmRldmljZSA9IDA7CisgICAgaWYgKCF1bml0LT5maWxlbmFtZSAmJiAhZmlsZW5hbWUpIHsKKyAg
ICAgICAgU1BJQ0VfREVCVUcoIiVzOiB1bm5hbWVkIGZpbGUiLCBfX0ZVTkNUSU9OX18pOworICAg
ICAgICByZXR1cm4gLTE7CisgICAgfQorICAgIGlmICh1bml0LT5maWxlbmFtZSAmJiBmaWxlbmFt
ZSkgeworICAgICAgICBnX2ZyZWUodW5pdC0+ZmlsZW5hbWUpOworICAgICAgICB1bml0LT5maWxl
bmFtZSA9IE5VTEw7CisgICAgfQorICAgIGlmICghZmlsZW5hbWUpIHsKKyAgICAgICAgLy8gcmVv
cGVuaW5nIHRoZSBzdHJlYW0gb24gZXhpc3RpbmcgZmlsZSBuYW1lCisgICAgfSBlbHNlIGlmIChp
c19kZXZpY2VfbmFtZShmaWxlbmFtZSkpIHsKKyAgICAgICAgdW5pdC0+ZmlsZW5hbWUgPSBnX3N0
cmR1cF9wcmludGYoIlxcXFwuXFwlcyIsIGZpbGVuYW1lKTsKKyAgICB9IGVsc2UgeworICAgICAg
ICB1bml0LT5maWxlbmFtZSA9IGdfc3RyZHVwKGZpbGVuYW1lKTsKKyAgICB9CisgICAgaCA9IG9w
ZW5fZmlsZSh1bml0LT5maWxlbmFtZSk7CisgICAgaWYgKGgpIHsKKyAgICAgICAgTEFSR0VfSU5U
RUdFUiBzaXplID0geyAwIH07CisgICAgICAgIGlmICghR2V0RmlsZVNpemVFeChoLCAmc2l6ZSkp
IHsKKyAgICAgICAgICAgIHVpbnQ2NF90IGJ1ZmZlclsyNTZdOworICAgICAgICAgICAgdWludDMy
X3QgcmVzOworICAgICAgICAgICAgdW5pdC0+ZGV2aWNlID0gY2hlY2tfZGV2aWNlKGgpOworICAg
ICAgICAgICAgU1BJQ0VfREVCVUcoIiVzOiBDRCBkZXZpY2UgJXNyZWNvZ25pemVkIG9uICVzIiwK
KyAgICAgICAgICAgICAgICBfX0ZVTkNUSU9OX18sIHVuaXQtPmRldmljZSA/ICIiIDogIk5PVCAi
LCB1bml0LT5maWxlbmFtZSk7CisgICAgICAgICAgICByZXMgPSBpb2N0bF9vdXQoaCwgSU9DVExf
RElTS19HRVRfRFJJVkVfR0VPTUVUUllfRVgsCisgICAgICAgICAgICAgICAgICAgICAgICAgICAg
YnVmZmVyLCBzaXplb2YoYnVmZmVyKSk7CisgICAgICAgICAgICBpZiAoIXJlcykKKyAgICAgICAg
ICAgIHsKKyAgICAgICAgICAgICAgICBESVNLX0dFT01FVFJZX0VYICpwZyA9IChESVNLX0dFT01F
VFJZX0VYICopYnVmZmVyOworICAgICAgICAgICAgICAgIHVuaXQtPmJsb2NrU2l6ZSA9IHBnLT5H
ZW9tZXRyeS5CeXRlc1BlclNlY3RvcjsKKyAgICAgICAgICAgICAgICBzaXplID0gcGctPkRpc2tT
aXplOworICAgICAgICAgICAgfSBlbHNlIHsKKyAgICAgICAgICAgICAgICBTUElDRV9ERUJVRygi
JXM6IGNhbid0IG9idGFpbiBzaXplIG9mICVzIChlcnJvciAldSkiLAorICAgICAgICAgICAgICAg
ICAgICBfX0ZVTkNUSU9OX18sIHVuaXQtPmZpbGVuYW1lLCByZXMpOworICAgICAgICAgICAgfQor
ICAgICAgICB9CisgICAgICAgIHVuaXQtPnNpemUgPSBzaXplLlF1YWRQYXJ0OworICAgICAgICBD
bG9zZUhhbmRsZShoKTsKKyAgICAgICAgaWYgKHVuaXQtPnNpemUpIHsKKyAgICAgICAgICAgIHVu
aXQtPmZpbGVfb2JqZWN0ID0gZ19maWxlX25ld19mb3JfcGF0aCh1bml0LT5maWxlbmFtZSk7Cisg
ICAgICAgICAgICB1bml0LT5zdHJlYW0gPSBnX2ZpbGVfcmVhZCh1bml0LT5maWxlX29iamVjdCwg
TlVMTCwgTlVMTCk7CisgICAgICAgIH0KKyAgICAgICAgaWYgKCF1bml0LT5zdHJlYW0pIHsKKyAg
ICAgICAgICAgIFNQSUNFX0RFQlVHKCIlczogY2FuJ3Qgb3BlbiBzdHJlYW0gb24gJXMiLCBfX0ZV
TkNUSU9OX18sIHVuaXQtPmZpbGVuYW1lKTsKKyAgICAgICAgICAgIGdfY2xlYXJfb2JqZWN0KCZ1
bml0LT5maWxlX29iamVjdCk7CisgICAgICAgICAgICBlcnJvciA9IC0xOworICAgICAgICB9Cisg
ICAgfSBlbHNlIHsKKyAgICAgICAgU1BJQ0VfREVCVUcoIiVzOiBjYW4ndCBvcGVuIGZpbGUgJXMi
LCBfX0ZVTkNUSU9OX18sIHVuaXQtPmZpbGVuYW1lKTsKKyAgICAgICAgZXJyb3IgPSAtMTsKKyAg
ICB9CisgICAgcmV0dXJuIGVycm9yOworfQorCitzdGF0aWMgaW50IGNkX2RldmljZV9sb2FkKFNw
aWNlQ2RMVSAqdW5pdCwgZ2Jvb2xlYW4gbG9hZCkKK3sKKyAgICBpbnQgZXJyb3IgPSAwOworICAg
IEhBTkRMRSBoOworICAgIGlmICghdW5pdC0+ZGV2aWNlIHx8ICF1bml0LT5maWxlbmFtZSkgewor
ICAgICAgICByZXR1cm4gLTE7CisgICAgfQorICAgIGggPSBvcGVuX2ZpbGUodW5pdC0+ZmlsZW5h
bWUpOworICAgIGlmIChoKSB7CisgICAgICAgIHVpbnQzMl90IHJlcyA9IGlvY3RsX25vbmUoaCwg
bG9hZCA/IElPQ1RMX1NUT1JBR0VfTE9BRF9NRURJQSA6IElPQ1RMX1NUT1JBR0VfRUpFQ1RfTUVE
SUEpOworICAgICAgICBpZiAocmVzKSB7CisgICAgICAgICAgICBTUElDRV9ERUJVRygiJXM6IGNh
bid0ICVzbG9hZCAlcywgd2luIGVycm9yICV1IiwKKyAgICAgICAgICAgICAgICAgICAgICAgIF9f
RlVOQ1RJT05fXywgbG9hZCA/ICIiIDogInVuIiwgdW5pdC0+ZmlsZW5hbWUsIHJlcyk7CisgICAg
ICAgICAgICBlcnJvciA9IC0xOworICAgICAgICB9IGVsc2UgeworICAgICAgICAgICAgU1BJQ0Vf
REVCVUcoIiVzOiBkZXZpY2UgJXMgWyVzXSIsCisgICAgICAgICAgICAgICAgICAgICAgICBfX0ZV
TkNUSU9OX18sIGxvYWQgPyAibG9hZGVkIiA6ICJlamVjdGVkIiwgdW5pdC0+ZmlsZW5hbWUpOwor
ICAgICAgICB9CisgICAgICAgIENsb3NlSGFuZGxlKGgpOworICAgIH0KKyAgICByZXR1cm4gZXJy
b3I7Cit9CisKK3N0YXRpYyBpbnQgY2RfZGV2aWNlX2NoZWNrKFNwaWNlQ2RMVSAqdW5pdCkKK3sK
KyAgICBpbnQgZXJyb3IgPSAwOworICAgIENEUk9NX0RJU0tfREFUQSBkYXRhOworICAgIEhBTkRM
RSBoOworICAgIGlmICghdW5pdC0+ZGV2aWNlIHx8ICF1bml0LT5maWxlbmFtZSkgeworICAgICAg
ICByZXR1cm4gLTE7CisgICAgfQorICAgIGggPSBvcGVuX2ZpbGUodW5pdC0+ZmlsZW5hbWUpOwor
ICAgIGlmIChoKSB7CisgICAgICAgIHVpbnQzMl90IHJlcyA9IGlvY3RsX25vbmUoaCwgSU9DVExf
U1RPUkFHRV9DSEVDS19WRVJJRlkpOworICAgICAgICBpZiAoIXJlcykgeworICAgICAgICAgICAg
cmVzID0gaW9jdGxfb3V0KGgsIElPQ1RMX0NEUk9NX0RJU0tfVFlQRSwgJmRhdGEsIHNpemVvZihk
YXRhKSk7CisgICAgICAgIH0KKyAgICAgICAgaWYgKHJlcyAhPSAwIHx8IGRhdGEuRGlza0RhdGEg
IT0gQ0RST01fRElTS19EQVRBX1RSQUNLKSB7CisgICAgICAgICAgICBlcnJvciA9IC0xOworICAg
ICAgICB9CisgICAgICAgIENsb3NlSGFuZGxlKGgpOworICAgIH0KKyAgICByZXR1cm4gZXJyb3I7
Cit9CisKKyNlbmRpZgorCitzdGF0aWMgZ2Jvb2xlYW4gb3Blbl9zdHJlYW0oU3BpY2VDZExVICp1
bml0LCBjb25zdCBjaGFyICpmaWxlbmFtZSkKK3sKKyAgICBnYm9vbGVhbiBiID0gRkFMU0U7Cisg
ICAgYiA9IGNkX2RldmljZV9vcGVuX3N0cmVhbSh1bml0LCBmaWxlbmFtZSkgPT0gMDsKKyAgICBy
ZXR1cm4gYjsKK30KKworc3RhdGljIHZvaWQgY2xvc2Vfc3RyZWFtKFNwaWNlQ2RMVSAqdW5pdCkK
K3sKKyAgICBnX2NsZWFyX29iamVjdCgmdW5pdC0+c3RyZWFtKTsKKyAgICBnX2NsZWFyX29iamVj
dCgmdW5pdC0+ZmlsZV9vYmplY3QpOworfQorCitzdGF0aWMgZ2Jvb2xlYW4gbG9hZF9sdW4oVXNi
Q2QgKmQsIGludCB1bml0LCBnYm9vbGVhbiBsb2FkKQoreworICAgIGdib29sZWFuIGIgPSBUUlVF
OworICAgIGlmIChsb2FkICYmIGQtPnVuaXRzW3VuaXRdLmRldmljZSkgeworICAgICAgICAvLyB0
aGVyZSBpcyBvbmUgcG9zc2libGUgcHJvYmxlbSBpbiBjYXNlIG91ciBiYWNrZW5kIGlzIHRoZQor
ICAgICAgICAvLyBsb2NhbCBDRCBkZXZpY2UgYW5kIGl0IGlzIGVqZWN0ZWQKKyAgICAgICAgY2Rf
ZGV2aWNlX2xvYWQoJmQtPnVuaXRzW3VuaXRdLCBUUlVFKTsKKyAgICAgICAgY2xvc2Vfc3RyZWFt
KCZkLT51bml0c1t1bml0XSk7CisgICAgICAgIGlmIChjZF9kZXZpY2VfY2hlY2soJmQtPnVuaXRz
W3VuaXRdKSB8fCAhb3Blbl9zdHJlYW0oJmQtPnVuaXRzW3VuaXRdLCBOVUxMKSkgeworICAgICAg
ICAgICAgcmV0dXJuIEZBTFNFOworICAgICAgICB9CisgICAgfQorCisgICAgaWYgKGxvYWQpIHsK
KyAgICAgICAgQ2RTY3NpTWVkaWFQYXJhbWV0ZXJzIG1lZGlhX3BhcmFtcyA9IHsgMCB9OworCisg
ICAgICAgIG1lZGlhX3BhcmFtcy5zdHJlYW0gPSBkLT51bml0c1t1bml0XS5zdHJlYW07CisgICAg
ICAgIG1lZGlhX3BhcmFtcy5zaXplID0gZC0+dW5pdHNbdW5pdF0uc2l6ZTsKKyAgICAgICAgbWVk
aWFfcGFyYW1zLmJsb2NrX3NpemUgPSBkLT51bml0c1t1bml0XS5ibG9ja1NpemU7CisgICAgICAg
IGlmIChtZWRpYV9wYXJhbXMuYmxvY2tfc2l6ZSA9PSBDRF9ERVZfQkxPQ0tfU0laRSAmJgorICAg
ICAgICAgICAgbWVkaWFfcGFyYW1zLnNpemUgJSBEVkRfREVWX0JMT0NLX1NJWkUgPT0gMCkgewor
ICAgICAgICAgICAgbWVkaWFfcGFyYW1zLmJsb2NrX3NpemUgPSBEVkRfREVWX0JMT0NLX1NJWkU7
CisgICAgICAgIH0KKyAgICAgICAgU1BJQ0VfREVCVUcoIiVzOiBsb2FkaW5nICVzLCBzaXplICUi
IEdfR1VJTlQ2NF9GT1JNQVQgIiwgYmxvY2sgJXUiLAorICAgICAgICAgICAgICAgICAgICBfX0ZV
TkNUSU9OX18sIGQtPnVuaXRzW3VuaXRdLmZpbGVuYW1lLCBtZWRpYV9wYXJhbXMuc2l6ZSwgbWVk
aWFfcGFyYW1zLmJsb2NrX3NpemUpOworCisgICAgICAgIGIgPSAhY2RfdXNiX2J1bGtfbXNkX2xv
YWQoZC0+bXNjLCB1bml0LCAmbWVkaWFfcGFyYW1zKTsKKworICAgICAgICBkLT51bml0c1t1bml0
XS5sb2FkZWQgPSAhIWI7CisKKyAgICB9IGVsc2UgeworICAgICAgICBTUElDRV9ERUJVRygiJXM6
IHVubG9hZGluZyAlcyIsIF9fRlVOQ1RJT05fXywgZC0+dW5pdHNbdW5pdF0uZmlsZW5hbWUpOwor
ICAgICAgICBjZF91c2JfYnVsa19tc2RfdW5sb2FkKGQtPm1zYywgdW5pdCk7CisgICAgICAgIGQt
PnVuaXRzW3VuaXRdLmxvYWRlZCA9IEZBTFNFOworICAgIH0KKyAgICByZXR1cm4gYjsKK30KKwor
c3RhdGljIHZvaWQgdXNiX2NkX3VucmVhbGl6ZShVc2JDZCAqZCkKK3sKKyAgICB1aW50MzJfdCB1
bml0ID0gMDsKKyAgICBjZF91c2JfYnVsa19tc2RfdW5yZWFsaXplKGQtPm1zYywgdW5pdCk7Cisg
ICAgZ19jbGVhcl9wb2ludGVyKCZkLT51bml0c1t1bml0XS5maWxlbmFtZSwgZ19mcmVlKTsKKyAg
ICBjbG9zZV9zdHJlYW0oJmQtPnVuaXRzW3VuaXRdKTsKKyAgICBnX2NsZWFyX3BvaW50ZXIoJmQt
Pm1zYywgY2RfdXNiX2J1bGtfbXNkX2ZyZWUpOworICAgIGdfZnJlZShkKTsKK30KKworc3RhdGlj
IGdib29sZWFuIHVzYl9jZF9nZXRfZGVzY3JpcHRvcihVc2JDZCAqZCwgdWludDhfdCB0eXBlLCB1
aW50OF90IGluZGV4LAorICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB2b2lk
ICoqYnVmZmVyLCB1aW50MTZfdCAqc2l6ZSkKK3sKKyAgICBzdGF0aWMgc3RydWN0IGxpYnVzYl9k
ZXZpY2VfZGVzY3JpcHRvciBkZXNjID0geworICAgICAgICAuYkxlbmd0aCA9IDE4LAorICAgICAg
ICAuYkRlc2NyaXB0b3JUeXBlID0gTElCVVNCX0RUX0RFVklDRSwKKyAgICAgICAgLmJjZFVTQiA9
IFVTQjJfQkNELAorICAgICAgICAuYkRldmljZUNsYXNzID0gMCwKKyAgICAgICAgLmJEZXZpY2VT
dWJDbGFzcyA9IDAsCisgICAgICAgIC5iRGV2aWNlUHJvdG9jb2wgPSAwLAorICAgICAgICAuYk1h
eFBhY2tldFNpemUwID0gNjQsCisgICAgICAgIC5pZFZlbmRvciA9IENEX0RFVl9WSUQsCisgICAg
ICAgIC5pZFByb2R1Y3QgPSBDRF9ERVZfUElELAorICAgICAgICAuYmNkRGV2aWNlID0gMHgxMDAs
CisgICAgICAgIC5pTWFudWZhY3R1cmVyID0gMSwKKyAgICAgICAgLmlQcm9kdWN0ID0gMiwKKyAg
ICAgICAgLmlTZXJpYWxOdW1iZXIgPSAzLAorICAgICAgICAuYk51bUNvbmZpZ3VyYXRpb25zID0g
MQorICAgIH07CisgICAgc3RhdGljIHVpbnQ4X3QgY2ZnW10gPQorICAgIHsKKyAgICAgICAgOSwg
Ly9sZW4gb2YgY2ZnIGRlc2MKKyAgICAgICAgTElCVVNCX0RUX0NPTkZJRywgLy8gZGVzYyB0eXBl
CisgICAgICAgIDB4MjAsIC8vIHdsZW4KKyAgICAgICAgMCwKKyAgICAgICAgMSwgLy8gbnVtIGlm
CisgICAgICAgIDEsIC8vIGNmZyB2YWwKKyAgICAgICAgMCwgLy8gY2ZnIG5hbWUKKyAgICAgICAg
MHg4MCwgLy8gYnVzIHBvd2VyZWQKKyAgICAgICAgMHgzMiwgLy8gMTAwIG1hCisgICAgICAgIDks
IC8vIGxlbiBvZiBJRiBkZXNjCisgICAgICAgIExJQlVTQl9EVF9JTlRFUkZBQ0UsCisgICAgICAg
IDAsIC8vIG51bSBpZgorICAgICAgICAwLCAvLyBhbHQgc2V0dGluZworICAgICAgICAyLCAvLyBu
dW0gb2YgZW5kcG9pbnRzCisgICAgICAgIENEX0RFVl9DTEFTUywKKyAgICAgICAgQ0RfREVWX1NV
QkNMQVNTLAorICAgICAgICBDRF9ERVZfUFJPVE9DT0wsCisgICAgICAgIDAsIC8vIGlmIG5hbWUK
KyAgICAgICAgNywKKyAgICAgICAgTElCVVNCX0RUX0VORFBPSU5ULAorICAgICAgICAweDgxLCAv
Ly0+RGlyZWN0aW9uIDogSU4gLSBFbmRwb2ludElEIDogMQorICAgICAgICAweDAyLCAvLy0+QnVs
ayBUcmFuc2ZlciBUeXBlCisgICAgICAgIDAsICAgIC8vd01heFBhY2tldFNpemUgOiAweDAyMDAg
PSAweDIwMCBtYXggYnl0ZXMKKyAgICAgICAgMiwKKyAgICAgICAgMCwgICAgLy9iSW50ZXJ2YWwK
KyAgICAgICAgNywKKyAgICAgICAgTElCVVNCX0RUX0VORFBPSU5ULAorICAgICAgICAweDAyLCAv
Ly0+RGlyZWN0aW9uIDogT1VUIC0gRW5kcG9pbnRJRCA6IDIKKyAgICAgICAgMHgwMiwgLy8tPkJ1
bGsgVHJhbnNmZXIgVHlwZQorICAgICAgICAwLCAgICAvL3dNYXhQYWNrZXRTaXplIDogMHgwMjAw
ID0gMHgyMDAgbWF4IGJ5dGVzCisgICAgICAgIDIsCisgICAgICAgIDAsICAgIC8vYkludGVydmFs
CisgICAgfTsKKyAgICBzdGF0aWMgdWludDE2X3QgczBbMl0gPSB7IDB4MzA0LCAweDQwOSB9Owor
ICAgIHN0YXRpYyB1aW50MTZfdCBzMVs4XSA9IHsgMHgzMTAsICdSJywgJ2UnLCAnZCcsICcgJywg
J0gnLCAnYScsICd0JyB9OworICAgIHN0YXRpYyB1aW50MTZfdCBzMls5XSA9IHsgMHgzMTIsICdT
JywgJ3AnLCAnaScsICdjJywgJ2UnLCAnICcsICdDJywgJ0QnIH07CisKKyAgICB2b2lkICpwID0g
TlVMTDsKKyAgICB1aW50MTZfdCBsZW4gPSAwOworCisgICAgc3dpdGNoICh0eXBlKQorICAgIHsK
KyAgICAgICAgY2FzZSBMSUJVU0JfRFRfREVWSUNFOgorICAgICAgICAgICAgcCA9ICZkZXNjOwor
ICAgICAgICAgICAgbGVuID0gc2l6ZW9mKGRlc2MpOworICAgICAgICAgICAgYnJlYWs7CisgICAg
ICAgIGNhc2UgTElCVVNCX0RUX0NPTkZJRzoKKyAgICAgICAgICAgIHAgPSBjZmc7CisgICAgICAg
ICAgICBsZW4gPSBzaXplb2YoY2ZnKTsKKyAgICAgICAgICAgIGJyZWFrOworICAgICAgICBjYXNl
IExJQlVTQl9EVF9TVFJJTkc6CisgICAgICAgICAgICBpZiAoaW5kZXggPT0gMCkgeworICAgICAg
ICAgICAgICAgIHAgPSBzMDsgbGVuID0gc2l6ZW9mKHMwKTsKKyAgICAgICAgICAgIH0gZWxzZSBp
ZiAoaW5kZXggPT0gMSkgeworICAgICAgICAgICAgICAgIHAgPSBzMTsgbGVuID0gc2l6ZW9mKHMx
KTsKKyAgICAgICAgICAgIH0gZWxzZSBpZiAoaW5kZXggPT0gMikgeworICAgICAgICAgICAgICAg
IHAgPSBzMjsgbGVuID0gc2l6ZW9mKHMyKTsKKyAgICAgICAgICAgIH0gZWxzZSBpZiAoaW5kZXgg
PT0gMykgeworICAgICAgICAgICAgICAgIHAgPSBkLT5zZXJpYWw7IGxlbiA9IHNpemVvZihkLT5z
ZXJpYWwpOworICAgICAgICAgICAgfQorICAgICAgICAgICAgYnJlYWs7CisgICAgfQorCisgICAg
aWYgKHApIHsKKyAgICAgICAgKmJ1ZmZlciA9IHA7CisgICAgICAgICpzaXplID0gbGVuOworICAg
IH0KKworICAgIHJldHVybiBwICE9IE5VTEw7Cit9CisKK3N0YXRpYyB2b2lkIHVzYl9jZF9hdHRh
Y2goVXNiQ2QgKmRldmljZSwgc3RydWN0IHVzYnJlZGlycGFyc2VyICpwYXJzZXIpCit7CisgICAg
ZGV2aWNlLT5wYXJzZXIgPSBwYXJzZXI7Cit9CisKK3N0YXRpYyB2b2lkIHVzYl9jZF9kZXRhY2go
VXNiQ2QgKmRldmljZSkKK3sKKyAgICBkZXZpY2UtPnBhcnNlciA9IE5VTEw7Cit9CisKK3N0YXRp
YyB2b2lkIHVzYl9jZF9yZXNldChVc2JDZCAqZGV2aWNlKQoreworICAgIGNkX3VzYl9idWxrX21z
ZF9yZXNldChkZXZpY2UtPm1zYyk7Cit9CisKK3N0YXRpYyB2b2lkIHVzYl9jZF9jb250cm9sX3Jl
cXVlc3QoVXNiQ2QgKmRldmljZSwKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
dWludDhfdCAqZGF0YSwgaW50IGRhdGFfbGVuLAorICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBzdHJ1Y3QgdXNiX3JlZGlyX2NvbnRyb2xfcGFja2V0X2hlYWRlciAqaCwKKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdm9pZCAqKmJ1ZmZlcikKK3sKKyAgICB1aW50
OF90IHJlcXR5cGUgPSBoLT5yZXF1ZXN0dHlwZSAmIDB4N2Y7CisgICAgaWYgKCFkZXZpY2UtPm1z
YykgeworICAgICAgICByZXR1cm47CisgICAgfQorICAgIGlmIChyZXF0eXBlID09IChMSUJVU0Jf
UkVRVUVTVF9UWVBFX1NUQU5EQVJEIHwgTElCVVNCX1JFQ0lQSUVOVF9FTkRQT0lOVCkpIHsKKyAg
ICAgICAgLy8gbWlnaHQgYmUgY2xlYXIgc3RhbGwgcmVxdWVzdAorICAgICAgICBoLT5sZW5ndGgg
PSAwOworICAgICAgICBoLT5zdGF0dXMgPSB1c2JfcmVkaXJfc3VjY2Vzczs7CisgICAgICAgIHJl
dHVybjsKKyAgICB9CisKKyAgICBpZiAocmVxdHlwZSA9PSAoTElCVVNCX1JFUVVFU1RfVFlQRV9D
TEFTUyB8IExJQlVTQl9SRUNJUElFTlRfSU5URVJGQUNFKSkgeworICAgICAgICBzd2l0Y2ggKGgt
PnJlcXVlc3QpIHsKKyAgICAgICAgICAgIGNhc2UgMHhGRjoKKyAgICAgICAgICAgICAgICAvLyBt
YXNzLXN0b3JhZ2UgY2xhc3MgcmVxdWVzdCAncmVzZXQnCisgICAgICAgICAgICAgICAgdXNiX2Nk
X3Jlc2V0KGRldmljZSk7CisgICAgICAgICAgICAgICAgaC0+bGVuZ3RoID0gMDsKKyAgICAgICAg
ICAgICAgICBoLT5zdGF0dXMgPSB1c2JfcmVkaXJfc3VjY2VzczsKKyAgICAgICAgICAgICAgICBi
cmVhazsKKyAgICAgICAgICAgIGNhc2UgMHhGRToKKyAgICAgICAgICAgICAgICAvLyBtYXNzLXN0
b3JhZ2UgY2xhc3MgcmVxdWVzdCAnZ2V0IG1heCBsdW4nCisgICAgICAgICAgICAgICAgLy8gcmV0
dXJuaW5nIG9uZSBieXRlCisgICAgICAgICAgICAgICAgaWYgKGgtPmxlbmd0aCkgeworICAgICAg
ICAgICAgICAgICAgICBoLT5sZW5ndGggPSAxOworICAgICAgICAgICAgICAgICAgICBoLT5zdGF0
dXMgPSB1c2JfcmVkaXJfc3VjY2Vzczs7CisgICAgICAgICAgICAgICAgICAgICpidWZmZXIgPSAm
ZGV2aWNlLT5tYXhfbHVuX2luZGV4OworICAgICAgICAgICAgICAgIH0KKyAgICAgICAgICAgICAg
ICBicmVhazsKKyAgICAgICAgfQorICAgIH0KK30KKworc3RhdGljIHZvaWQgdXNiX2NkX2J1bGtf
b3V0X3JlcXVlc3QoVXNiQ2QgKmRldmljZSwKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHVpbnQ4X3QgZXAsIHVpbnQ4X3QgKmRhdGEsIGludCBkYXRhX2xlbiwKKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVpbnQ4X3QgKnN0YXR1cykKK3sKKyAgICBpZiAo
IWNkX3VzYl9idWxrX21zZF93cml0ZShkZXZpY2UtPm1zYywgZGF0YSwgZGF0YV9sZW4pKSB7Cisg
ICAgICAgICpzdGF0dXMgPSB1c2JfcmVkaXJfc3VjY2VzczsKKyAgICB9Cit9CisKK3ZvaWQgY2Rf
dXNiX2J1bGtfbXNkX3JlYWRfY29tcGxldGUodm9pZCAqdXNlcl9kYXRhLAorICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICB1aW50OF90ICpkYXRhLCB1aW50MzJfdCBsZW5ndGgsIENk
VXNiQnVsa1N0YXR1cyBzdGF0dXMpCit7CisgICAgVXNiQ2QgKmQgPSAoVXNiQ2QgKil1c2VyX2Rh
dGE7CisKKyAgICBpZiAoZC0+ZGVsZXRpbmcpIHsKKyAgICAgICAgZC0+ZGVsZXRpbmcgPSBGQUxT
RTsKKyAgICAgICAgc3BpY2VfdXNiX2JhY2tlbmRfZGV2aWNlX2VqZWN0KGQtPmJhY2tlbmQsIGQt
PnBhcmVudCk7CisgICAgfQorCisgICAgaWYgKGQtPnBhcnNlcikgeworICAgICAgICBpbnQgbnJl
YWQ7CisgICAgICAgIHVpbnQzMl90IG9mZnNldCA9IDA7CisKKyAgICAgICAgZm9yIChucmVhZCA9
IDA7IG5yZWFkIDwgZC0+bnVtX3JlYWRzOyBucmVhZCsrKSB7CisgICAgICAgICAgICB1aW50MzJf
dCBtYXhfbGVuOworICAgICAgICAgICAgbWF4X2xlbiA9IChkLT5yZWFkX2J1bGtbbnJlYWRdLmhv
dXQubGVuZ3RoX2hpZ2ggPDwgMTYpIHwKKyAgICAgICAgICAgICAgICAgICAgICAgIGQtPnJlYWRf
YnVsa1tucmVhZF0uaG91dC5sZW5ndGg7CisgICAgICAgICAgICBpZiAobWF4X2xlbiA+IGxlbmd0
aCkgeworICAgICAgICAgICAgICAgIG1heF9sZW4gPSBsZW5ndGg7CisgICAgICAgICAgICAgICAg
ZC0+cmVhZF9idWxrW25yZWFkXS5ob3V0Lmxlbmd0aCA9IGxlbmd0aDsKKyAgICAgICAgICAgICAg
ICBkLT5yZWFkX2J1bGtbbnJlYWRdLmhvdXQubGVuZ3RoX2hpZ2ggPSBsZW5ndGggPj4gMTY7Cisg
ICAgICAgICAgICB9CisKKyAgICAgICAgICAgIHN3aXRjaCAoc3RhdHVzKSB7CisgICAgICAgICAg
ICBjYXNlIEJVTEtfU1RBVFVTX0dPT0Q6CisgICAgICAgICAgICAgICAgZC0+cmVhZF9idWxrW25y
ZWFkXS5ob3V0LnN0YXR1cyA9IHVzYl9yZWRpcl9zdWNjZXNzOworICAgICAgICAgICAgICAgIGJy
ZWFrOworICAgICAgICAgICAgY2FzZSBCVUxLX1NUQVRVU19DQU5DRUxFRDoKKyAgICAgICAgICAg
ICAgICBkLT5yZWFkX2J1bGtbbnJlYWRdLmhvdXQuc3RhdHVzID0gdXNiX3JlZGlyX2NhbmNlbGxl
ZDsKKyAgICAgICAgICAgICAgICBicmVhazsKKyAgICAgICAgICAgIGNhc2UgQlVMS19TVEFUVVNf
RVJST1I6CisgICAgICAgICAgICAgICAgZC0+cmVhZF9idWxrW25yZWFkXS5ob3V0LnN0YXR1cyA9
IHVzYl9yZWRpcl9pb2Vycm9yOworICAgICAgICAgICAgICAgIGJyZWFrOworICAgICAgICAgICAg
Y2FzZSBCVUxLX1NUQVRVU19TVEFMTDoKKyAgICAgICAgICAgIGRlZmF1bHQ6CisgICAgICAgICAg
ICAgICAgZC0+cmVhZF9idWxrW25yZWFkXS5ob3V0LnN0YXR1cyA9IHVzYl9yZWRpcl9zdGFsbDsK
KyAgICAgICAgICAgICAgICBicmVhazsKKyAgICAgICAgICAgIH0KKworICAgICAgICAgICAgU1BJ
Q0VfREVCVUcoIiVzOiByZXNwb25kaW5nICUiIEdfR1VJTlQ2NF9GT1JNQVQgIiB3aXRoIGxlbiAl
dSBvdXQgb2YgJXUsIHN0YXR1cyAlZCIsCisgICAgICAgICAgICAgICAgICAgICAgICBfX0ZVTkNU
SU9OX18sIGQtPnJlYWRfYnVsa1tucmVhZF0uaWQsIG1heF9sZW4sCisgICAgICAgICAgICAgICAg
ICAgICAgICBsZW5ndGgsIGQtPnJlYWRfYnVsa1tucmVhZF0uaG91dC5zdGF0dXMpOworICAgICAg
ICAgICAgdXNicmVkaXJwYXJzZXJfc2VuZF9idWxrX3BhY2tldChkLT5wYXJzZXIsIGQtPnJlYWRf
YnVsa1tucmVhZF0uaWQsCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICZkLT5yZWFkX2J1bGtbbnJlYWRdLmhvdXQsCisgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIG1heF9sZW4gPyAoZGF0YSArIG9mZnNldCkgOiBOVUxMLAorICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBtYXhfbGVuKTsKKyAgICAg
ICAgICAgIG9mZnNldCArPSBtYXhfbGVuOworICAgICAgICAgICAgbGVuZ3RoIC09IG1heF9sZW47
CisgICAgICAgIH0KKyAgICAgICAgZC0+bnVtX3JlYWRzID0gMDsKKyAgICAgICAgdXNicmVkaXJw
YXJzZXJfZG9fd3JpdGUoZC0+cGFyc2VyKTsKKworICAgICAgICBpZiAobGVuZ3RoKSB7CisgICAg
ICAgICAgICBTUElDRV9ERUJVRygiJXM6IEVSUk9SOiAldSBieXRlcyB3ZXJlIG5vdCByZXBvcnRl
ZCEiLCBfX0ZVTkNUSU9OX18sIGxlbmd0aCk7CisgICAgICAgIH0KKworICAgIH0gZWxzZSB7Cisg
ICAgICAgIFNQSUNFX0RFQlVHKCIlczogYnJva2VuIGRldmljZTwtPmNoYW5uZWwgcmVsYXRpb25z
aGlwISIsIF9fRlVOQ1RJT05fXyk7CisgICAgfQorfQorCisvKiBkZXZpY2UgcmVzZXQgY29tcGxl
dGlvbiBjYWxsYmFjayAqLwordm9pZCBjZF91c2JfYnVsa19tc2RfcmVzZXRfY29tcGxldGUodm9p
ZCAqdXNlcl9kYXRhLCBpbnQgc3RhdHVzKQoreworICAgIC8vIFVzYkNkICpkID0gKFVzYkNkICop
dXNlcl9kYXRhOworfQorCitzdGF0aWMgZ2Jvb2xlYW4gdXNiX2NkX2J1bGtfaW5fcmVxdWVzdChV
c2JDZCAqZCwgdWludDY0X3QgaWQsCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBzdHJ1Y3QgdXNiX3JlZGlyX2J1bGtfcGFja2V0X2hlYWRlciAqaCkKK3sKKyAgICBpbnQg
cmVzOworICAgIHVpbnQzMl90IGxlbiA9IChoLT5sZW5ndGhfaGlnaCA8PCAxNikgfCBoLT5sZW5n
dGg7CisgICAgaWYgKGQtPm51bV9yZWFkcyA+PSBNQVhfQlVMS19JTl9SRVFVRVNUUykgeworICAg
ICAgICBoLT5sZW5ndGggPSBoLT5sZW5ndGhfaGlnaCA9IDA7CisgICAgICAgIFNQSUNFX0RFQlVH
KCIlczogdG9vIG1hbnkgcGVuZGluZyByZWFkcyIsIF9fRlVOQ1RJT05fXyk7CisgICAgICAgIGgt
PnN0YXR1cyA9IHVzYl9yZWRpcl9iYWJibGU7CisgICAgICAgIHJldHVybiBGQUxTRTsKKyAgICB9
CisKKyAgICBpZiAoZC0+bnVtX3JlYWRzKSB7CisgICAgICAgIFNQSUNFX0RFQlVHKCIlczogYWxy
ZWFkeSBoYXMgJXUgcGVuZGluZyByZWFkcyIsIF9fRlVOQ1RJT05fXywgZC0+bnVtX3JlYWRzKTsK
KyAgICB9CisKKyAgICBkLT5yZWFkX2J1bGtbZC0+bnVtX3JlYWRzXS5ob3V0ID0gKmg7CisgICAg
ZC0+cmVhZF9idWxrW2QtPm51bV9yZWFkc10uaWQgPSBpZDsKKyAgICBkLT5udW1fcmVhZHMrKzsK
KyAgICByZXMgPSBjZF91c2JfYnVsa19tc2RfcmVhZChkLT5tc2MsIGxlbik7CisgICAgaWYgKCFy
ZXMpIHsKKyAgICAgICAgcmV0dXJuIFRSVUU7CisgICAgfQorCisgICAgU1BJQ0VfREVCVUcoIiVz
OiBlcnJvciBvbiBidWxrIHJlYWQiLCBfX0ZVTkNUSU9OX18pOworICAgIGQtPm51bV9yZWFkcy0t
OworICAgIGgtPmxlbmd0aCA9IGgtPmxlbmd0aF9oaWdoID0gMDsKKyAgICBoLT5zdGF0dXMgPSB1
c2JfcmVkaXJfaW9lcnJvcjsKKworICAgIHJldHVybiBGQUxTRTsKK30KKworc3RhdGljIHZvaWQg
dXNiX2NkX2NhbmNlbF9yZXF1ZXN0KFVzYkNkICpkLCB1aW50NjRfdCBpZCkKK3sKKyAgICB1aW50
MzJfdCBucmVhZDsKKworICAgIGZvciAobnJlYWQgPSAwOyBucmVhZCA8IGQtPm51bV9yZWFkczsg
bnJlYWQrKykgeworICAgICAgICBpZiAoZC0+cmVhZF9idWxrW25yZWFkXS5pZCA9PSBpZCkgewor
ICAgICAgICAgICAgaWYgKGNkX3VzYl9idWxrX21zZF9jYW5jZWxfcmVhZChkLT5tc2MpKSB7Cisg
ICAgICAgICAgICAgICAgY2RfdXNiX2J1bGtfbXNkX3JlYWRfY29tcGxldGUoZCwgTlVMTCwgMCwg
QlVMS19TVEFUVVNfQ0FOQ0VMRUQpOworICAgICAgICAgICAgfQorICAgICAgICAgICAgcmV0dXJu
OworICAgICAgICB9CisgICAgfQorICAgIFNQSUNFX0RFQlVHKCIlczogRVJST1I6IG5vIHN1Y2gg
aWQgdG8gY2FuY2VsISIsIF9fRlVOQ1RJT05fXyk7Cit9CisKKy8vIGNhbGxlZCB3aGVuIGEgY2hh
bmdlIGhhcHBlbnMgb24gU0NTSSBsYXllcgordm9pZCBjZF91c2JfYnVsa19tc2RfbHVuX2NoYW5n
ZWQodm9pZCAqdXNlcl9kYXRhLCB1aW50MzJfdCBsdW4pCit7CisgICAgVXNiQ2QgKmQgPSAoVXNi
Q2QgKil1c2VyX2RhdGE7CisgICAgQ2RTY3NpRGV2aWNlSW5mbyBjZF9pbmZvOworCisgICAgaWYg
KCFjZF91c2JfYnVsa19tc2RfZ2V0X2luZm8oZC0+bXNjLCBsdW4sICZjZF9pbmZvKSkgeworICAg
ICAgICAvLyBsb2FkIG9yIHVubG9hZCBjb21tYW5kIHJlY2VpdmVkIGZyb20gU0NTSQorICAgICAg
ICBpZiAoZC0+dW5pdHNbbHVuXS5sb2FkZWQgIT0gY2RfaW5mby5sb2FkZWQpIHsKKyAgICAgICAg
ICAgIGlmICghbG9hZF9sdW4oZCwgbHVuLCBjZF9pbmZvLmxvYWRlZCkpIHsKKyAgICAgICAgICAg
ICAgICBTUElDRV9ERUJVRygiJXM6IGxvYWQgZmFpbGVkLCB1bmxvYWRpbmcgdW5pdCIsIF9fRlVO
Q1RJT05fXyk7CisgICAgICAgICAgICAgICAgY2RfdXNiX2J1bGtfbXNkX3VubG9hZChkLT5tc2Ms
IGx1bik7CisgICAgICAgICAgICB9CisgICAgICAgIH0KKyAgICB9CisKKyAgICBpZiAoZC0+ZGVs
ZXRlX29uX2VqZWN0KSB7CisgICAgICAgIGQtPmRlbGV0ZV9vbl9lamVjdCA9IEZBTFNFOworICAg
ICAgICBkLT5kZWxldGluZyA9IFRSVUU7CisgICAgfSBlbHNlIHsKKyAgICAgICAgc3BpY2VfdXNi
X2JhY2tlbmRfZGV2aWNlX3JlcG9ydF9jaGFuZ2UoZC0+YmFja2VuZCwgZC0+cGFyZW50KTsKKyAg
ICB9Cit9CisKK3N0YXRpYyBnY2hhciAqdXNiX2NkX2dldF9wcm9kdWN0X2Rlc2NyaXB0aW9uKFVz
YkNkICpkZXZpY2UpCit7CisgICAgZ2NoYXIgKmJhc2VfbmFtZSA9IGdfcGF0aF9nZXRfYmFzZW5h
bWUoZGV2aWNlLT51bml0c1swXS5maWxlbmFtZSk7CisgICAgZ2NoYXIgKnJlcyA9IGdfc3RyZHVw
X3ByaW50ZigiU1BJQ0UgQ0QgKCVzKSIsIGJhc2VfbmFtZSk7CisgICAgZ19mcmVlKGJhc2VfbmFt
ZSk7CisgICAgcmV0dXJuIHJlczsKK30KKworc3RhdGljIGNvbnN0IFVzYkRldmljZU9wcyBkZXZv
cHMgPQoreworICAgIC5nZXRfZGVzY3JpcHRvciA9IHVzYl9jZF9nZXRfZGVzY3JpcHRvciwKKyAg
ICAuZ2V0X3Byb2R1Y3RfZGVzY3JpcHRpb24gPSB1c2JfY2RfZ2V0X3Byb2R1Y3RfZGVzY3JpcHRp
b24sCisgICAgLmF0dGFjaCA9IHVzYl9jZF9hdHRhY2gsCisgICAgLnJlc2V0ID0gdXNiX2NkX3Jl
c2V0LAorICAgIC5kZXRhY2ggPSB1c2JfY2RfZGV0YWNoLAorICAgIC5jb250cm9sX3JlcXVlc3Qg
PSB1c2JfY2RfY29udHJvbF9yZXF1ZXN0LAorICAgIC5idWxrX291dF9yZXF1ZXN0ID0gdXNiX2Nk
X2J1bGtfb3V0X3JlcXVlc3QsCisgICAgLmJ1bGtfaW5fcmVxdWVzdCA9IHVzYl9jZF9idWxrX2lu
X3JlcXVlc3QsCisgICAgLmNhbmNlbF9yZXF1ZXN0ID0gdXNiX2NkX2NhbmNlbF9yZXF1ZXN0LAor
ICAgIC51bnJlYWxpemUgPSB1c2JfY2RfdW5yZWFsaXplLAorfTsKKworc3RhdGljIFVzYkNkKiB1
c2JfY2RfY3JlYXRlKFNwaWNlVXNiQmFja2VuZCAqYmUsCisgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgU3BpY2VVc2JCYWNrZW5kRGV2aWNlICpwYXJlbnQsCisgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgdm9pZCAqb3BhcXVlX3BhcmFtLAorICAgICAgICAgICAgICAgICAgICAgICAgICAg
IEdFcnJvciAqKmVycikKK3sKKyAgICBDZEVtdWxhdGlvblBhcmFtcyAqcGFyYW0gPSBvcGFxdWVf
cGFyYW07CisgICAgaW50IGVycm9yID0gMCwgaTsKKyAgICB1aW50MzJfdCB1bml0ID0gMDsKKyAg
ICBVc2JDZCAqZCA9IGdfbmV3MChVc2JDZCwgMSk7CisgICAgQ2RTY3NpRGV2aWNlUGFyYW1ldGVy
cyBkZXZfcGFyYW1zID0geyAwIH07CisgICAgdWludDE2X3QgYWRkcmVzcyA9IHNwaWNlX3VzYl9i
YWNrZW5kX2RldmljZV9nZXRfaW5mbyhwYXJlbnQpLT5hZGRyZXNzOworCisgICAgZC0+ZGV2X29w
cyA9IGRldm9wczsKKyAgICBkLT5iYWNrZW5kID0gYmU7CisgICAgZC0+cGFyZW50ICA9IHBhcmVu
dDsKKyAgICBkLT5kZWxldGVfb25fZWplY3QgPSAhIXBhcmFtLT5kZWxldGVfb25fZWplY3Q7Cisg
ICAgZC0+bG9ja2VkID0gIWQtPmRlbGV0ZV9vbl9lamVjdDsKKyAgICBkLT5zZXJpYWxbMF0gPSAw
eDAzMDAgKyBzaXplb2YoZC0+c2VyaWFsKTsKKyAgICBkLT5zZXJpYWxbMV0gPSAnMCcgKyBhZGRy
ZXNzIC8gMTA7CisgICAgZC0+c2VyaWFsWzJdID0gJzAnICsgYWRkcmVzcyAlIDEwOworICAgIGZv
ciAoaSA9IDM7IGkgPCBHX05fRUxFTUVOVFMoZC0+c2VyaWFsKTsgKytpKSB7CisgICAgICAgIGQt
PnNlcmlhbFtpXSA9ICcwJzsKKyAgICB9CisgICAgZC0+bWF4X2x1bl9pbmRleCA9IE1BWF9MVU5f
UEVSX0RFVklDRSAtIDE7CisKKyAgICBkZXZfcGFyYW1zLnZlbmRvciA9ICJSZWQgSGF0IjsKKyAg
ICBkZXZfcGFyYW1zLnByb2R1Y3QgPSAiU1BJQ0UgQ0QiOworICAgIGRldl9wYXJhbXMudmVyc2lv
biA9ICIwIjsKKworICAgIGQtPm1zYyA9IGNkX3VzYl9idWxrX21zZF9hbGxvYyhkLCBNQVhfTFVO
X1BFUl9ERVZJQ0UpOworICAgIGlmICghZC0+bXNjKSB7CisgICAgICAgIGdfY2xlYXJfcG9pbnRl
cigmZCwgZ19mcmVlKTsKKyAgICAgICAgZ19zZXRfZXJyb3IoZXJyLCBTUElDRV9DTElFTlRfRVJS
T1IsIFNQSUNFX0NMSUVOVF9FUlJPUl9GQUlMRUQsCisgICAgICAgICAgICAgICAgICAgIF8oImNh
bid0IGFsbG9jYXRlIGRldmljZSIpKTsKKyAgICAgICAgcmV0dXJuIE5VTEw7CisgICAgfQorICAg
IGQtPnVuaXRzW3VuaXRdLmJsb2NrU2l6ZSA9IENEX0RFVl9CTE9DS19TSVpFOworICAgIGlmICgh
Y2RfdXNiX2J1bGtfbXNkX3JlYWxpemUoZC0+bXNjLCB1bml0LCAmZGV2X3BhcmFtcykpIHsKKyAg
ICAgICAgaWYgKG9wZW5fc3RyZWFtKCZkLT51bml0c1t1bml0XSwgcGFyYW0tPmZpbGVuYW1lKSAm
JgorICAgICAgICAgICAgbG9hZF9sdW4oZCwgdW5pdCwgVFJVRSkpIHsKKyAgICAgICAgICAgIGlm
IChkLT5sb2NrZWQpIHsKKyAgICAgICAgICAgICAgICBjZF91c2JfYnVsa19tc2RfbG9jayhkLT5t
c2MsIHVuaXQsIFRSVUUpOworICAgICAgICAgICAgfQorICAgICAgICB9IGVsc2UgeworICAgICAg
ICAgICAgY2xvc2Vfc3RyZWFtKCZkLT51bml0c1t1bml0XSk7CisgICAgICAgICAgICBjZF91c2Jf
YnVsa19tc2RfdW5yZWFsaXplKGQtPm1zYywgdW5pdCk7CisgICAgICAgICAgICBnX3NldF9lcnJv
cihlcnIsIFNQSUNFX0NMSUVOVF9FUlJPUiwgU1BJQ0VfQ0xJRU5UX0VSUk9SX0ZBSUxFRCwKKyAg
ICAgICAgICAgICAgICAgICAgICAgIF8oImNhbid0IGNyZWF0ZSBkZXZpY2Ugd2l0aCAlcyIpLAor
ICAgICAgICAgICAgICAgICAgICAgICAgcGFyYW0tPmZpbGVuYW1lKTsKKyAgICAgICAgICAgIGVy
cm9yID0gMTsKKyAgICAgICAgfQorICAgIH0gZWxzZSB7CisgICAgICAgIGdfc2V0X2Vycm9yKGVy
ciwgU1BJQ0VfQ0xJRU5UX0VSUk9SLCBTUElDRV9DTElFTlRfRVJST1JfRkFJTEVELAorICAgICAg
ICAgICAgICAgICAgICBfKCJjYW4ndCBhbGxvY2F0ZSBkZXZpY2UiKSk7CisgICAgICAgIGVycm9y
ID0gMTsKKyAgICB9CisgICAgaWYgKGVycm9yKSB7CisgICAgICAgIGdfY2xlYXJfcG9pbnRlcigm
ZC0+bXNjLCBjZF91c2JfYnVsa19tc2RfZnJlZSk7CisgICAgICAgIGdfY2xlYXJfcG9pbnRlcigm
ZCwgZ19mcmVlKTsKKyAgICAgICAgcmV0dXJuIE5VTEw7CisgICAgfQorCisgICAgcmV0dXJuIGQ7
Cit9CisKK1NwaWNlVXNiQmFja2VuZERldmljZSoKK2NyZWF0ZV9lbXVsYXRlZF9jZChTcGljZVVz
YkJhY2tlbmQgKmJlLAorICAgICAgICAgICAgICAgICAgIENkRW11bGF0aW9uUGFyYW1zICpwYXJh
bSwKKyAgICAgICAgICAgICAgICAgICBHRXJyb3IgKiplcnIpCit7CisgICAgcmV0dXJuIHNwaWNl
X3VzYl9iYWNrZW5kX2NyZWF0ZV9lbXVsYXRlZF9kZXZpY2UoYmUsIHVzYl9jZF9jcmVhdGUsIHBh
cmFtLCBlcnIpOworfQorCisjZW5kaWYgLyogVVNFX1VTQlJFRElSICovCmRpZmYgLS1naXQgYS9z
cmMvdXNiLWRldmljZS1jZC5oIGIvc3JjL3VzYi1kZXZpY2UtY2QuaApuZXcgZmlsZSBtb2RlIDEw
MDY0NAppbmRleCAwMDAwMDAwLi5lYjA4MmI3Ci0tLSAvZGV2L251bGwKKysrIGIvc3JjL3VzYi1k
ZXZpY2UtY2QuaApAQCAtMCwwICsxLDM3IEBACisvKiAtKi0gTW9kZTogQzsgYy1iYXNpYy1vZmZz
ZXQ6IDQ7IGluZGVudC10YWJzLW1vZGU6IG5pbCAtKi0gKi8KKy8qCisgICAgQ29weXJpZ2h0IChD
KSAyMDE5IFJlZCBIYXQsIEluYy4KKworICAgIFJlZCBIYXQgQXV0aG9yczoKKyAgICBZdXJpIEJl
bmRpdG92aWNoPHliZW5kaXRvQHJlZGhhdC5jb20+CisKKyAgICBUaGlzIGxpYnJhcnkgaXMgZnJl
ZSBzb2Z0d2FyZTsgeW91IGNhbiByZWRpc3RyaWJ1dGUgaXQgYW5kL29yCisgICAgbW9kaWZ5IGl0
IHVuZGVyIHRoZSB0ZXJtcyBvZiB0aGUgR05VIExlc3NlciBHZW5lcmFsIFB1YmxpYworICAgIExp
Y2Vuc2UgYXMgcHVibGlzaGVkIGJ5IHRoZSBGcmVlIFNvZnR3YXJlIEZvdW5kYXRpb247IGVpdGhl
cgorICAgIHZlcnNpb24gMi4xIG9mIHRoZSBMaWNlbnNlLCBvciAoYXQgeW91ciBvcHRpb24pIGFu
eSBsYXRlciB2ZXJzaW9uLgorCisgICAgVGhpcyBsaWJyYXJ5IGlzIGRpc3RyaWJ1dGVkIGluIHRo
ZSBob3BlIHRoYXQgaXQgd2lsbCBiZSB1c2VmdWwsCisgICAgYnV0IFdJVEhPVVQgQU5ZIFdBUlJB
TlRZOyB3aXRob3V0IGV2ZW4gdGhlIGltcGxpZWQgd2FycmFudHkgb2YKKyAgICBNRVJDSEFOVEFC
SUxJVFkgb3IgRklUTkVTUyBGT1IgQSBQQVJUSUNVTEFSIFBVUlBPU0UuICBTZWUgdGhlIEdOVQor
ICAgIExlc3NlciBHZW5lcmFsIFB1YmxpYyBMaWNlbnNlIGZvciBtb3JlIGRldGFpbHMuCisKKyAg
ICBZb3Ugc2hvdWxkIGhhdmUgcmVjZWl2ZWQgYSBjb3B5IG9mIHRoZSBHTlUgTGVzc2VyIEdlbmVy
YWwgUHVibGljCisgICAgTGljZW5zZSBhbG9uZyB3aXRoIHRoaXMgbGlicmFyeTsgaWYgbm90LCBz
ZWUgPGh0dHA6Ly93d3cuZ251Lm9yZy9saWNlbnNlcy8+LgorKi8KKworI2lmbmRlZiBTUElDRV9H
VEtfVVNCX0RFVklDRV9DRF9IXworI2RlZmluZSBTUElDRV9HVEtfVVNCX0RFVklDRV9DRF9IXwor
CisjaW5jbHVkZSAidXNiLWJhY2tlbmQuaCIKKwordHlwZWRlZiBzdHJ1Y3QgQ2RFbXVsYXRpb25Q
YXJhbXMgeworICAgIGNvbnN0IGNoYXIgKmZpbGVuYW1lOworICAgIHVpbnQzMl90IGRlbGV0ZV9v
bl9lamVjdCA6IDE7Cit9IENkRW11bGF0aW9uUGFyYW1zOworCitTcGljZVVzYkJhY2tlbmREZXZp
Y2UqCitjcmVhdGVfZW11bGF0ZWRfY2QoU3BpY2VVc2JCYWNrZW5kICpiZSwKKyAgICAgICAgICAg
ICAgICAgICBDZEVtdWxhdGlvblBhcmFtcyAqcGFyYW0sCisgICAgICAgICAgICAgICAgICAgR0Vy
cm9yICoqZXJyKTsKKworI2VuZGlmIC8vIFNQSUNFX0dUS19VU0JfREVWSUNFX0NEX0hfCi0tIAoy
LjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNw
aWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZl
bA==
