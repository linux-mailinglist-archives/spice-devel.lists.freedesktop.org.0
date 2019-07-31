Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB327C6B7
	for <lists+spice-devel@lfdr.de>; Wed, 31 Jul 2019 17:35:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F069589C1F;
	Wed, 31 Jul 2019 15:35:12 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F260489C1F
 for <spice-devel@lists.freedesktop.org>; Wed, 31 Jul 2019 15:35:10 +0000 (UTC)
Received: from jwhite.mn.codeweavers.com ([10.69.137.101])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1hsqdU-00074g-VL
 for spice-devel@lists.freedesktop.org; Wed, 31 Jul 2019 10:35:29 -0500
From: Jeremy White <jwhite@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 31 Jul 2019 10:35:06 -0500
Message-Id: <20190731153507.26085-1-jwhite@codeweavers.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rX3iTqB6nbn59OPB9FOx37fAbeAbcbvvu+2BjG3m3vg=; b=E6S/ojlxmYaGNx8/1RTgEsl85x
 RRdBnNm2xXhDFOyp5quY2NR2QKyAN8JDtk4Yg8U6Cmy7/7iA2x6i+dRKp2Pqq2/wg3lhid8sg5dG+
 3m46DTBk51V59YaIcTbcDezF8oLEyezjN1nWB8rjj0m78qZioEYSFdyBwoae/v0G5FCo=;
Subject: [Spice-devel] [PATCH x11spice 1/2] Provide compatibility for Glamor
 in Xorg 1.17.
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

U2lnbmVkLW9mZi1ieTogSmVyZW15IFdoaXRlIDxqd2hpdGVAY29kZXdlYXZlcnMuY29tPgotLS0K
IHNwaWNlLXZpZGVvLWR1bW15L3NyYy9kdW1teS5oICAgICAgICAgICAgIHwgIDQgKystLQogc3Bp
Y2UtdmlkZW8tZHVtbXkvc3JjL3NwaWNlZHVtbXlfZHJpdmVyLmMgfCAxMSArKysrKysrKysrLQog
MiBmaWxlcyBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL3NwaWNlLXZpZGVvLWR1bW15L3NyYy9kdW1teS5oIGIvc3BpY2UtdmlkZW8tZHVtbXkv
c3JjL2R1bW15LmgKaW5kZXggYTI1MDI5MDIuLmFmNzdjMTc3IDEwMDY0NAotLS0gYS9zcGljZS12
aWRlby1kdW1teS9zcmMvZHVtbXkuaAorKysgYi9zcGljZS12aWRlby1kdW1teS9zcmMvZHVtbXku
aApAQCAtMTEsMTEgKzExLDExIEBACiAjZW5kaWYKICNpbmNsdWRlIDxzdHJpbmcuaD4KIAotI2lu
Y2x1ZGUgImNvbXBhdC1hcGkuaCIKLQogI2RlZmluZSBHTEFNT1JfRk9SX1hPUkcgMQogI2luY2x1
ZGUgImdsYW1vci5oIgogCisjaW5jbHVkZSAiY29tcGF0LWFwaS5oIgorCiAvKiBTdXBwb3J0ZWQg
Y2hpcHNldHMgKi8KIHR5cGVkZWYgZW51bSB7CiAgICAgRFVNTVlfQ0hJUApkaWZmIC0tZ2l0IGEv
c3BpY2UtdmlkZW8tZHVtbXkvc3JjL3NwaWNlZHVtbXlfZHJpdmVyLmMgYi9zcGljZS12aWRlby1k
dW1teS9zcmMvc3BpY2VkdW1teV9kcml2ZXIuYwppbmRleCBmYzM1NWY4NS4uNDE1ZjA3ZGMgMTAw
NjQ0Ci0tLSBhL3NwaWNlLXZpZGVvLWR1bW15L3NyYy9zcGljZWR1bW15X2RyaXZlci5jCisrKyBi
L3NwaWNlLXZpZGVvLWR1bW15L3NyYy9zcGljZWR1bW15X2RyaXZlci5jCkBAIC01NTgsNiArNTU4
LDE1IEBAIERVTU1ZU2NyZWVuSW5pdChTQ1JFRU5fSU5JVF9BUkdTX0RFQ0wpCiAgICAgaW50IHJl
dDsKICAgICBWaXN1YWxQdHIgdmlzdWFsOwogICAgIHZvaWQgKnBpeGVsczsKKyAgICBpbnQgZ2xh
bW9yX2ZsYWdzID0gR0xBTU9SX1VTRV9FR0xfU0NSRUVOOworCisgICAgLyogV2l0aCBYb3JnIHBy
aW9yIHRvIDEuMTgsIHdlIHdhbnQgbW9yZSBtb3JlIGZsYWdzIGluIGdsYW1vcl9pbml0ICovCisj
aWYgZGVmaW5lZChHTEFNT1JfVVNFX1NDUkVFTikKKyAgICBnbGFtb3JfZmxhZ3MgfD0gR0xBTU9S
X1VTRV9TQ1JFRU47CisjZW5kaWYKKyNpZiBkZWZpbmVkKEdMQU1PUl9VU0VfUElDVFVSRV9TQ1JF
RU4pCisgICAgZ2xhbW9yX2ZsYWdzIHw9IEdMQU1PUl9VU0VfUElDVFVSRV9TQ1JFRU47CisjZW5k
aWYKIAogICAgIC8qCiAgICAgICogd2UgbmVlZCB0byBnZXQgdGhlIFNjcm5JbmZvUmVjIGZvciB0
aGlzIHNjcmVlbiwgc28gbGV0J3MgYWxsb2NhdGUKQEAgLTYxOCw3ICs2MjcsNyBAQCBEVU1NWVNj
cmVlbkluaXQoU0NSRUVOX0lOSVRfQVJHU19ERUNMKQogICAgIC8qIG11c3QgYmUgYWZ0ZXIgUkdC
IG9yZGVyaW5nIGZpeGVkICovCiAgICAgZmJQaWN0dXJlSW5pdChwU2NyZWVuLCAwLCAwKTsKIAot
ICAgIGlmIChkUHRyLT5nbGFtb3IgJiYgIWdsYW1vcl9pbml0KHBTY3JlZW4sIEdMQU1PUl9VU0Vf
RUdMX1NDUkVFTikpIHsKKyAgICBpZiAoZFB0ci0+Z2xhbW9yICYmICFnbGFtb3JfaW5pdChwU2Ny
ZWVuLCBnbGFtb3JfZmxhZ3MpKSB7CiAgICAgICAgIHhmODZEcnZNc2cocFNjcm4tPnNjcm5JbmRl
eCwgWF9FUlJPUiwKICAgICAgICAgICAgICAgICAgICAiRmFpbGVkIHRvIGluaXRpYWxpc2UgZ2xh
bW9yIGF0IFNjcmVlbkluaXQoKSB0aW1lLlxuIik7CiAgICAgICAgIHJldHVybiBGQUxTRTsKLS0g
CjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
U3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRl
dmVs
