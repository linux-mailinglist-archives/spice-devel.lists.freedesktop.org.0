Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3060CF8D0
	for <lists+spice-devel@lfdr.de>; Tue, 30 Apr 2019 14:25:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C12358921A;
	Tue, 30 Apr 2019 12:24:59 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69C798921A
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 12:24:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 14E8287645
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 12:24:58 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.22])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 10AD72B3B8;
 Tue, 30 Apr 2019 12:24:55 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Apr 2019 13:24:16 +0100
Message-Id: <20190430122419.16241-17-fziglio@redhat.com>
In-Reply-To: <20190430122419.16241-1-fziglio@redhat.com>
References: <20190430122419.16241-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Tue, 30 Apr 2019 12:24:58 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server v6 16/19] red-stream: Fix SSL
 connection for Windows
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

U2V0IGNvcnJlY3RseSBlcnJubyB0byBtYWtlIGNhbGxlcnMgaGFuZGxlIGNvcnJlY3RseSBlbmNy
eXB0ZWQKdHJhZmZpYy4KClNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0By
ZWRoYXQuY29tPgotLS0KIHNlcnZlci9yZWQtc3RyZWFtLmMgfCAyOSArKysrKysrKysrKysrKysr
KysrKysrKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKyksIDQgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvc2VydmVyL3JlZC1zdHJlYW0uYyBiL3NlcnZlci9yZWQtc3Ry
ZWFtLmMKaW5kZXggNDcwNmFjYWUuLjMwNTdkOGJiIDEwMDY0NAotLS0gYS9zZXJ2ZXIvcmVkLXN0
cmVhbS5jCisrKyBiL3NlcnZlci9yZWQtc3RyZWFtLmMKQEAgLTE1NiwxNSArMTU2LDM3IEBAIHN0
YXRpYyBzc2l6ZV90IHN0cmVhbV9yZWFkX2NiKFJlZFN0cmVhbSAqcywgdm9pZCAqYnVmLCBzaXpl
X3Qgc2l6ZSkKICAgICByZXR1cm4gc29ja2V0X3JlYWQocy0+c29ja2V0LCBidWYsIHNpemUpOwog
fQogCitzdGF0aWMgc3NpemVfdCBzdHJlYW1fc3NsX2Vycm9yKFJlZFN0cmVhbSAqcywgaW50IHJl
dHVybl9jb2RlKQoreworICAgIFNQSUNFX0dOVUNfVU5VU0VEIGludCBzc2xfZXJyb3I7CisKKyAg
ICBzc2xfZXJyb3IgPSBTU0xfZ2V0X2Vycm9yKHMtPnByaXYtPnNzbCwgcmV0dXJuX2NvZGUpOwor
CisgICAgLy8gT3BlblNTTCBjYW4gdG8gcmV0dXJuIFNTTF9FUlJPUl9XQU5UX1JFQUQgaWYgd2Ug
YXR0ZW1wdCB0byByZWFkCisgICAgLy8gZGF0YSBhbmQgdGhlIHNvY2tldCBkaWQgbm90IHJlY2Vp
dmUgYWxsIFNTTCBwYWNrZXQuCisgICAgLy8gVW5kZXIgV2luZG93cyBlcnJubyBpcyBub3Qgc2V0
IHNvIHBvdGVudGlhbGx5IGNhbGxlciBjYW4gZGV0ZWN0CisgICAgLy8gdGhlIHdyb25nIGVycm9y
IHNvIHdlIG5lZWQgdG8gc2V0IGVycm5vLgorI2lmZGVmIF9XSU4zMgorICAgIGlmIChzc2xfZXJy
b3IgPT0gU1NMX0VSUk9SX1dBTlRfUkVBRCB8fCBzc2xfZXJyb3IgPT0gU1NMX0VSUk9SX1dBTlRf
V1JJVEUpIHsKKyAgICAgICAgZXJybm8gPSBFQUdBSU47CisgICAgfSBlbHNlIHsKKyAgICAgICAg
ZXJybm8gPSBFUElQRTsKKyAgICB9CisjZW5kaWYKKworICAgIC8vIHJlZF9wZWVyX3JlY2VpdmUg
aXMgZXhwZWN0ZWQgdG8gcmVjZWl2ZSAtMSBvbiBlcnJvcnMgd2hpbGUKKyAgICAvLyBPcGVuU1NM
IGRvY3VtZW50YXRpb24ganVzdCBzdGF0ZSBhIDwwIHZhbHVlCisgICAgcmV0dXJuIC0xOworfQor
CiBzdGF0aWMgc3NpemVfdCBzdHJlYW1fc3NsX3dyaXRlX2NiKFJlZFN0cmVhbSAqcywgY29uc3Qg
dm9pZCAqYnVmLCBzaXplX3Qgc2l6ZSkKIHsKICAgICBpbnQgcmV0dXJuX2NvZGU7Ci0gICAgU1BJ
Q0VfR05VQ19VTlVTRUQgaW50IHNzbF9lcnJvcjsKIAogICAgIHJldHVybl9jb2RlID0gU1NMX3dy
aXRlKHMtPnByaXYtPnNzbCwgYnVmLCBzaXplKTsKIAogICAgIGlmIChyZXR1cm5fY29kZSA8IDAp
IHsKLSAgICAgICAgc3NsX2Vycm9yID0gU1NMX2dldF9lcnJvcihzLT5wcml2LT5zc2wsIHJldHVy
bl9jb2RlKTsKKyAgICAgICAgcmV0dXJuIHN0cmVhbV9zc2xfZXJyb3IocywgcmV0dXJuX2NvZGUp
OwogICAgIH0KIAogICAgIHJldHVybiByZXR1cm5fY29kZTsKQEAgLTE3MywxMiArMTk1LDExIEBA
IHN0YXRpYyBzc2l6ZV90IHN0cmVhbV9zc2xfd3JpdGVfY2IoUmVkU3RyZWFtICpzLCBjb25zdCB2
b2lkICpidWYsIHNpemVfdCBzaXplKQogc3RhdGljIHNzaXplX3Qgc3RyZWFtX3NzbF9yZWFkX2Ni
KFJlZFN0cmVhbSAqcywgdm9pZCAqYnVmLCBzaXplX3Qgc2l6ZSkKIHsKICAgICBpbnQgcmV0dXJu
X2NvZGU7Ci0gICAgU1BJQ0VfR05VQ19VTlVTRUQgaW50IHNzbF9lcnJvcjsKIAogICAgIHJldHVy
bl9jb2RlID0gU1NMX3JlYWQocy0+cHJpdi0+c3NsLCBidWYsIHNpemUpOwogCiAgICAgaWYgKHJl
dHVybl9jb2RlIDwgMCkgewotICAgICAgICBzc2xfZXJyb3IgPSBTU0xfZ2V0X2Vycm9yKHMtPnBy
aXYtPnNzbCwgcmV0dXJuX2NvZGUpOworICAgICAgICByZXR1cm4gc3RyZWFtX3NzbF9lcnJvcihz
LCByZXR1cm5fY29kZSk7CiAgICAgfQogCiAgICAgcmV0dXJuIHJldHVybl9jb2RlOwotLSAKMi4y
MC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGlj
ZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
