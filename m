Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE845B52DC
	for <lists+spice-devel@lfdr.de>; Tue, 17 Sep 2019 18:23:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D80216ECF7;
	Tue, 17 Sep 2019 16:23:05 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26B736ECF7
 for <spice-devel@lists.freedesktop.org>; Tue, 17 Sep 2019 16:23:04 +0000 (UTC)
Received: from jwhite.mn.codeweavers.com ([10.69.137.101])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1iAGFq-0005Kq-AO
 for spice-devel@lists.freedesktop.org; Tue, 17 Sep 2019 11:23:02 -0500
From: Jeremy White <jwhite@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 17 Sep 2019 11:23:00 -0500
Message-Id: <20190917162300.21667-1-jwhite@codeweavers.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mqo4rqtHVlk3f+NjPVpmTjFZrVENU/Y6/43POcBSCyU=; b=JTV93WDvJ8+gKXz+flXL5dbQ4g
 x2gN+8b1f3kWGjGVV1q5PK4RGbmYGveP423fCGsl7AJVKP75Rx/YGIU1fUUU3TU7jvAIkT2xs3P4T
 WLNVlgM5sFrtRNzjn2NyVikDhjOmh5N5GjvcmerJOFLkNhTnOc7FxuvKQPcmzFp0zgdU=;
Subject: [Spice-devel] [PATCH x11spice] Fix compliation on gcc 4.X.
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

Z2NjIDQueCB3YXJucyBpZiB5b3UgdXNlIGEgeyAwIH0gaW5pdGlhbGl6YXRpb24gY29uc3RydWN0
CmZvciBhIHN0cnVjdHVyZSB3aXRoIGFuIGluaXRpYWwgbWVtYmVyIHRoYXQgaXMgYWxzbyBhIHN0
cnVjdC4KClRoZSB7IH0gY29uc3RydWN0IGlzIHNpbXBsZXIgYW5kIGFwcGVhcnMgdG8gd29yayBv
biBhIHdpZGVyCnJhbmdlIG9mIGdjYyB2ZXJzaW9ucy4KClRoaXMgaXMgYSBjb3JyZWN0aW9uIHRv
IGZkZmRmMTEwN2JlMTAwYjk4M2RlMWJmZjRiZWVlOGU2MzYwZjY3MGIKClNpZ25lZC1vZmYtYnk6
IEplcmVteSBXaGl0ZSA8andoaXRlQGNvZGV3ZWF2ZXJzLmNvbT4KLS0tCiBzcmMvZ3VpLmMgICAg
fCAyICstCiBzcmMvbGlzdGVuLmMgfCAyICstCiBzcmMvbWFpbi5jICAgfCAyICstCiBzcmMvc3Bp
Y2UuYyAgfCAyICstCiA0IGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9zcmMvZ3VpLmMgYi9zcmMvZ3VpLmMKaW5kZXggODhhY2Y1Yzku
LjNjMjZiODY0IDEwMDY0NAotLS0gYS9zcmMvZ3VpLmMKKysrIGIvc3JjL2d1aS5jCkBAIC0xNDcs
NyArMTQ3LDcgQEAgdm9pZCBzZXNzaW9uX2Rpc2Nvbm5lY3RfY2xpZW50KHNlc3Npb25fdCAqc2Vz
c2lvbikKIGludCBtYWluKGludCBhcmdjLCBjaGFyICphcmd2W10pCiB7CiAgICAgZ3VpX3QgZ3Vp
OwotICAgIHNlc3Npb25fdCBzZXNzaW9uID0geyAwIH07CisgICAgc2Vzc2lvbl90IHNlc3Npb24g
PSB7IH07CiAKICAgICBzZXRsb2NhbGUoTENfQUxMLCAiIik7CiAgICAgZ3VpX2NyZWF0ZSgmZ3Vp
LCAmc2Vzc2lvbiwgYXJnYywgYXJndik7CmRpZmYgLS1naXQgYS9zcmMvbGlzdGVuLmMgYi9zcmMv
bGlzdGVuLmMKaW5kZXggNDUyZmQ4MWYuLjc2YzA3OThhIDEwMDY0NAotLS0gYS9zcmMvbGlzdGVu
LmMKKysrIGIvc3JjL2xpc3Rlbi5jCkBAIC0xMTcsNyArMTE3LDcgQEAgaW50IGxpc3Rlbl9wYXJz
ZShjb25zdCBjaGFyICpsaXN0ZW5fc3BlYywgY2hhciAqKmFkZHIsIGludCAqcG9ydF9zdGFydCwg
aW50ICpwb3IKIHN0YXRpYyBpbnQgdHJ5X3BvcnQoY29uc3QgY2hhciAqYWRkciwgaW50IHBvcnQp
CiB7CiAgICAgc3RhdGljIGNvbnN0IGludCBvbiA9IDEsIG9mZiA9IDA7Ci0gICAgc3RydWN0IGFk
ZHJpbmZvIGFpID0geyAwIH0sICpyZXMsICplOworICAgIHN0cnVjdCBhZGRyaW5mbyBhaSA9IHsg
fSwgKnJlcywgKmU7CiAgICAgY2hhciBwb3J0YnVmWzMzXTsKICAgICBpbnQgc29jaywgcmM7CiAK
ZGlmZiAtLWdpdCBhL3NyYy9tYWluLmMgYi9zcmMvbWFpbi5jCmluZGV4IDcxY2JiNDY1Li44OTBm
ZjEzMyAxMDA2NDQKLS0tIGEvc3JjL21haW4uYworKysgYi9zcmMvbWFpbi5jCkBAIC01NSw3ICs1
NSw3IEBAIGludCBtYWluKGludCBhcmdjLCBjaGFyICphcmd2W10pCiB7CiAgICAgaW50IHJjOwog
Ci0gICAgc2Vzc2lvbl90IHNlc3Npb24gPSB7IDAgfTsKKyAgICBzZXNzaW9uX3Qgc2Vzc2lvbiA9
IHsgfTsKIAogICAgIGludCBkaXNwbGF5X29wZW5lZCA9IDA7CiAgICAgaW50IHNwaWNlX3N0YXJ0
ZWQgPSAwOwpkaWZmIC0tZ2l0IGEvc3JjL3NwaWNlLmMgYi9zcmMvc3BpY2UuYwppbmRleCAwOGE1
ZDA5YS4uNTYxYzg1ZmYgMTAwNjQ0Ci0tLSBhL3NyYy9zcGljZS5jCisrKyBiL3NyYy9zcGljZS5j
CkBAIC00NzQsNyArNDc0LDcgQEAgc3RhdGljIGludCBzZW5kX21vbml0b3JzX2NvbmZpZyhzcGlj
ZV90ICpzLCBpbnQgdywgaW50IGgpCiAKIGludCBzcGljZV9jcmVhdGVfcHJpbWFyeShzcGljZV90
ICpzLCBpbnQgdywgaW50IGgsIGludCBieXRlc19wZXJfbGluZSwgdm9pZCAqc2htYWRkcikKIHsK
LSAgICBRWExEZXZTdXJmYWNlQ3JlYXRlIHN1cmZhY2UgPSB7IDAgfTsKKyAgICBRWExEZXZTdXJm
YWNlQ3JlYXRlIHN1cmZhY2UgPSB7IH07CiAKICAgICBzdXJmYWNlLmhlaWdodCA9IGg7CiAgICAg
c3VyZmFjZS53aWR0aCA9IHc7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZl
bEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
