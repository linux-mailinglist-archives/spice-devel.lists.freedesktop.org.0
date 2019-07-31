Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F9067C89F
	for <lists+spice-devel@lfdr.de>; Wed, 31 Jul 2019 18:27:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C01F89FA5;
	Wed, 31 Jul 2019 16:27:25 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD08A89FA5
 for <spice-devel@lists.freedesktop.org>; Wed, 31 Jul 2019 16:27:23 +0000 (UTC)
Received: from jwhite.mn.codeweavers.com ([10.69.137.101])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1hsrS1-00080d-NB
 for spice-devel@lists.freedesktop.org; Wed, 31 Jul 2019 11:27:42 -0500
From: Jeremy White <jwhite@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 31 Jul 2019 11:27:20 -0500
Message-Id: <20190731162720.27387-1-jwhite@codeweavers.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VzVaYMPRaMnVzgD+F5x0MFu8y0ZZ1PVUorLkI+pFHNI=; b=L4aCZokyMOOmk4wUuXZHbj5y2g
 WJVxJdCooK309r1jfJPxik0ui5At936i10RqnFYwpg8r1IHgxBMxUlJWJCmiNNLLU4AuTtFgDl6Mx
 HMcMtN8eT2Ni9yuAeg/qy7ZY+TS58NOfIouezdK2IRbfbrGDk1qaeIsl0ErMNiGgC+EM=;
Subject: [Spice-devel] [PATCH v2 x11spice 2/2] Provide compatibility for
 Glamor in Xorg 1.17.
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

SW4gWG9yZyAxLjE4LCBYIGNoYW5nZWQgc28gdGhhdCBHTEFNT1JfVVNFX0VHTF9TQ1JFRU4gd2Fz
IHRoZSBvbmx5CmZsYWcgcmVxdWlyZWQgYW5kIGl0IGltcGxpZXMgdGhlIGJlaGF2aW9yIHByZXZp
b3VzbHkgcmVxdWVzdGVkCndpdGggdGhlIEdMQU1PUl9VU0VfU0NSRUVOIGFuZCBHTEFNT1JFX1VT
RV9QSUNUVVJFX1NDUkVFTiBmbGFncy4KVGh1cywgaWYgd2UgYXJlIGJ1aWxkaW5nIGFnYWluc3Qg
YW4gb2xkZXIgWG9yZywgd2UgbmVlZCB0byBzcGVjaWZ5CnRob3NlIG5vdyBkZXByZWNhdGVkIGZs
YWdzLgoKQWRkaXRpb25hbGx5LCB0aGUgY29tcGF0LWFwaSBoZWFkZXIgY29uZmxpY3RzIHdpdGgg
dGhlIG9sZGVyCmdsYW1vciBoZWFkZXIgZmlsZSwgc28gaXQgbmVlZHMgdG8gYmUgbW92ZWQgdG8g
YmUgaW5jbHVkZWQKYWZ0ZXIgZ2xhbW9yLmguCgpTaWduZWQtb2ZmLWJ5OiBKZXJlbXkgV2hpdGUg
PGp3aGl0ZUBjb2Rld2VhdmVycy5jb20+Ci0tLQp2MjogUHJvdmlkZSBtb3JlIGV4cGxhbmF0aW9u
Ci0tLQogc3BpY2UtdmlkZW8tZHVtbXkvc3JjL2R1bW15LmggICAgICAgICAgICAgfCAgNCArKy0t
CiBzcGljZS12aWRlby1kdW1teS9zcmMvc3BpY2VkdW1teV9kcml2ZXIuYyB8IDE1ICsrKysrKysr
KysrKysrLQogMiBmaWxlcyBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL3NwaWNlLXZpZGVvLWR1bW15L3NyYy9kdW1teS5oIGIvc3BpY2Utdmlk
ZW8tZHVtbXkvc3JjL2R1bW15LmgKaW5kZXggYTI1MDI5MDIuLmFmNzdjMTc3IDEwMDY0NAotLS0g
YS9zcGljZS12aWRlby1kdW1teS9zcmMvZHVtbXkuaAorKysgYi9zcGljZS12aWRlby1kdW1teS9z
cmMvZHVtbXkuaApAQCAtMTEsMTEgKzExLDExIEBACiAjZW5kaWYKICNpbmNsdWRlIDxzdHJpbmcu
aD4KIAotI2luY2x1ZGUgImNvbXBhdC1hcGkuaCIKLQogI2RlZmluZSBHTEFNT1JfRk9SX1hPUkcg
MQogI2luY2x1ZGUgImdsYW1vci5oIgogCisjaW5jbHVkZSAiY29tcGF0LWFwaS5oIgorCiAvKiBT
dXBwb3J0ZWQgY2hpcHNldHMgKi8KIHR5cGVkZWYgZW51bSB7CiAgICAgRFVNTVlfQ0hJUApkaWZm
IC0tZ2l0IGEvc3BpY2UtdmlkZW8tZHVtbXkvc3JjL3NwaWNlZHVtbXlfZHJpdmVyLmMgYi9zcGlj
ZS12aWRlby1kdW1teS9zcmMvc3BpY2VkdW1teV9kcml2ZXIuYwppbmRleCBmYzM1NWY4NS4uMWRi
ZTg3YjIgMTAwNjQ0Ci0tLSBhL3NwaWNlLXZpZGVvLWR1bW15L3NyYy9zcGljZWR1bW15X2RyaXZl
ci5jCisrKyBiL3NwaWNlLXZpZGVvLWR1bW15L3NyYy9zcGljZWR1bW15X2RyaXZlci5jCkBAIC01
NTgsNiArNTU4LDE5IEBAIERVTU1ZU2NyZWVuSW5pdChTQ1JFRU5fSU5JVF9BUkdTX0RFQ0wpCiAg
ICAgaW50IHJldDsKICAgICBWaXN1YWxQdHIgdmlzdWFsOwogICAgIHZvaWQgKnBpeGVsczsKKyAg
ICBpbnQgZ2xhbW9yX2ZsYWdzID0gR0xBTU9SX1VTRV9FR0xfU0NSRUVOOworCisgICAgLyogSW4g
WG9yZyAxLjE4LCBYIGNoYW5nZWQgc28gdGhhdCBHTEFNT1JfVVNFX0VHTF9TQ1JFRU4gd2FzIHRo
ZSBvbmx5CisgICAgICAgZmxhZyByZXF1aXJlZCBhbmQgaXQgaW1wbGllcyB0aGUgYmVoYXZpb3Ig
cHJldmlvdXNseSByZXF1ZXN0ZWQKKyAgICAgICB3aXRoIHRoZSBHTEFNT1JfVVNFX1NDUkVFTiBh
bmQgR0xBTU9SRV9VU0VfUElDVFVSRV9TQ1JFRU4gZmxhZ3MuCisgICAgICAgVGh1cywgaWYgd2Ug
YXJlIGJ1aWxkaW5nIGFnYWluc3QgYW4gb2xkZXIgWG9yZywgd2UgbmVlZCB0byBzcGVjaWZ5Cisg
ICAgICAgdGhvc2Ugbm93IGRlcHJlY2F0ZWQgZmxhZ3MuICovCisjaWYgZGVmaW5lZChHTEFNT1Jf
VVNFX1NDUkVFTikKKyAgICBnbGFtb3JfZmxhZ3MgfD0gR0xBTU9SX1VTRV9TQ1JFRU47CisjZW5k
aWYKKyNpZiBkZWZpbmVkKEdMQU1PUl9VU0VfUElDVFVSRV9TQ1JFRU4pCisgICAgZ2xhbW9yX2Zs
YWdzIHw9IEdMQU1PUl9VU0VfUElDVFVSRV9TQ1JFRU47CisjZW5kaWYKIAogICAgIC8qCiAgICAg
ICogd2UgbmVlZCB0byBnZXQgdGhlIFNjcm5JbmZvUmVjIGZvciB0aGlzIHNjcmVlbiwgc28gbGV0
J3MgYWxsb2NhdGUKQEAgLTYxOCw3ICs2MzEsNyBAQCBEVU1NWVNjcmVlbkluaXQoU0NSRUVOX0lO
SVRfQVJHU19ERUNMKQogICAgIC8qIG11c3QgYmUgYWZ0ZXIgUkdCIG9yZGVyaW5nIGZpeGVkICov
CiAgICAgZmJQaWN0dXJlSW5pdChwU2NyZWVuLCAwLCAwKTsKIAotICAgIGlmIChkUHRyLT5nbGFt
b3IgJiYgIWdsYW1vcl9pbml0KHBTY3JlZW4sIEdMQU1PUl9VU0VfRUdMX1NDUkVFTikpIHsKKyAg
ICBpZiAoZFB0ci0+Z2xhbW9yICYmICFnbGFtb3JfaW5pdChwU2NyZWVuLCBnbGFtb3JfZmxhZ3Mp
KSB7CiAgICAgICAgIHhmODZEcnZNc2cocFNjcm4tPnNjcm5JbmRleCwgWF9FUlJPUiwKICAgICAg
ICAgICAgICAgICAgICAiRmFpbGVkIHRvIGluaXRpYWxpc2UgZ2xhbW9yIGF0IFNjcmVlbkluaXQo
KSB0aW1lLlxuIik7CiAgICAgICAgIHJldHVybiBGQUxTRTsKLS0gCjIuMjAuMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGlu
ZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
