Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B64B6D6BD
	for <lists+spice-devel@lfdr.de>; Fri, 19 Jul 2019 00:09:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 405256E471;
	Thu, 18 Jul 2019 22:09:31 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 482B46E471
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 22:09:30 +0000 (UTC)
Received: from jwhite.mn.codeweavers.com ([10.69.137.101])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1hoEb3-0006Wu-7t
 for spice-devel@lists.freedesktop.org; Thu, 18 Jul 2019 17:09:53 -0500
From: Jeremy White <jwhite@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 18 Jul 2019 17:09:27 -0500
Message-Id: <20190718220927.17240-1-jwhite@codeweavers.com>
X-Mailer: git-send-email 2.11.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Message-Id:Date:Subject:To:From:Sender:
 Reply-To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Oiw8cKwoogMj2ApnK23MSkT+bNZL+Ri8P3c6Xjd92bM=; b=ZLzBJjlqCQFPn6InmXnKS6byEP
 3wX0uCd3+JfwxLP/m3QBu7IRduHi1/CgEkA4Y9ZbWV9K+KwMMsRUznXA+mqZx3vBE+KWGux6nsWbv
 QJMJtE32JEQ5fp6xca2uqkEfBTiCIDovLO901bsrUMdZjzaLFQK7TuFqLfVIWp3Oanrk=;
Subject: [Spice-devel] [PATCH x11spice] Fix a bug in the tests.
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

V2Ugd2VyZSBvdmVybHkgZGVwZW5kZW50IG9uIHRpbWluZyBmb3Igc3VjY2Vzczsgbm93IHdlCmRl
bGliZXJhdGVseSB3YWl0IGZvciBvdXIgR0MgYW5kIGRyYXdpbmcgdG8gZmluaXNoLgoKU2lnbmVk
LW9mZi1ieTogSmVyZW15IFdoaXRlIDxqd2hpdGVAY29kZXdlYXZlcnMuY29tPgotLS0KIHNyYy90
ZXN0cy94Y2IuYyB8IDE1ICsrKysrKysrKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDExIGluc2Vy
dGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL3Rlc3RzL3hjYi5jIGIv
c3JjL3Rlc3RzL3hjYi5jCmluZGV4IDZiZTRhNjliLi43MDljZGZkNCAxMDA2NDQKLS0tIGEvc3Jj
L3Rlc3RzL3hjYi5jCisrKyBiL3NyYy90ZXN0cy94Y2IuYwpAQCAtODIsNiArODIsOCBAQCBpbnQg
eGNiX2RyYXdfZ3JpZChjb25zdCBjaGFyICpkaXNwbGF5KQogICAgIHhjYl9nY29udGV4dF90IHJl
ZF9mZzsKICAgICB4Y2JfZ2NvbnRleHRfdCBncmVlbl9mZzsKIAorICAgIHhjYl92b2lkX2Nvb2tp
ZV90IGNvb2tpZTsKKwogICAgIHhjYl9yZWN0YW5nbGVfdCByZWRfcmVjdGFuZ2xlc1szMl07CiAg
ICAgeGNiX3JlY3RhbmdsZV90IGdyZWVuX3JlY3RhbmdsZXNbMzJdOwogCkBAIC05NiwxOSArOTgs
MjQgQEAgaW50IHhjYl9kcmF3X2dyaWQoY29uc3QgY2hhciAqZGlzcGxheSkKICAgICByZWRfZmcg
PSB4Y2JfZ2VuZXJhdGVfaWQoYyk7CiAgICAgbG9va3VwX2NvbG9yKGMsIHNjcmVlbiwgInJlZCIs
ICZwaXhlbHNbMF0pOwogICAgIHBpeGVsc1sxXSA9IDA7Ci0gICAgeGNiX2NyZWF0ZV9nYyhjLCBy
ZWRfZmcsIHNjcmVlbi0+cm9vdCwgWENCX0dDX0ZPUkVHUk9VTkQsIHBpeGVscyk7CisgICAgY29v
a2llID0geGNiX2NyZWF0ZV9nY19jaGVja2VkKGMsIHJlZF9mZywgc2NyZWVuLT5yb290LCBYQ0Jf
R0NfRk9SRUdST1VORCwgcGl4ZWxzKTsKKyAgICB4Y2JfcmVxdWVzdF9jaGVjayhjLCBjb29raWUp
OwogCiAgICAgZ3JlZW5fZmcgPSB4Y2JfZ2VuZXJhdGVfaWQoYyk7CiAgICAgbG9va3VwX2NvbG9y
KGMsIHNjcmVlbiwgImdyZWVuIiwgJnBpeGVsc1swXSk7CiAgICAgcGl4ZWxzWzFdID0gMDsKLSAg
ICB4Y2JfY3JlYXRlX2djKGMsIGdyZWVuX2ZnLCBzY3JlZW4tPnJvb3QsIFhDQl9HQ19GT1JFR1JP
VU5ELCBwaXhlbHMpOworICAgIGNvb2tpZSA9IHhjYl9jcmVhdGVfZ2NfY2hlY2tlZChjLCBncmVl
bl9mZywgc2NyZWVuLT5yb290LCBYQ0JfR0NfRk9SRUdST1VORCwgcGl4ZWxzKTsKKyAgICB4Y2Jf
cmVxdWVzdF9jaGVjayhjLCBjb29raWUpOwogCiAgICAgY3JlYXRlX3JlY3RhbmdsZXMocmVkX3Jl
Y3RhbmdsZXMsIGdyZWVuX3JlY3RhbmdsZXMsIHNjcmVlbi0+d2lkdGhfaW5fcGl4ZWxzLAogICAg
ICAgICAgICAgICAgICAgICAgIHNjcmVlbi0+aGVpZ2h0X2luX3BpeGVscyk7CiAKICAgICAvKiBX
ZSBkcmF3IHRoZSByZWN0YW5nbGVzICovCi0gICAgeGNiX3BvbHlfZmlsbF9yZWN0YW5nbGVfY2hl
Y2tlZChjLCBzY3JlZW4tPnJvb3QsIHJlZF9mZywgMzIsIHJlZF9yZWN0YW5nbGVzKTsKLSAgICB4
Y2JfcG9seV9maWxsX3JlY3RhbmdsZV9jaGVja2VkKGMsIHNjcmVlbi0+cm9vdCwgZ3JlZW5fZmcs
IDMyLCBncmVlbl9yZWN0YW5nbGVzKTsKKyAgICBjb29raWUgPSB4Y2JfcG9seV9maWxsX3JlY3Rh
bmdsZV9jaGVja2VkKGMsIHNjcmVlbi0+cm9vdCwgcmVkX2ZnLCAzMiwgcmVkX3JlY3RhbmdsZXMp
OworICAgIHhjYl9yZXF1ZXN0X2NoZWNrKGMsIGNvb2tpZSk7CisKKyAgICBjb29raWUgPSB4Y2Jf
cG9seV9maWxsX3JlY3RhbmdsZV9jaGVja2VkKGMsIHNjcmVlbi0+cm9vdCwgZ3JlZW5fZmcsIDMy
LCBncmVlbl9yZWN0YW5nbGVzKTsKKyAgICB4Y2JfcmVxdWVzdF9jaGVjayhjLCBjb29raWUpOwog
CiAgICAgLyogV2UgZmx1c2ggdGhlIHJlcXVlc3QgKi8KICAgICB4Y2JfZmx1c2goYyk7Ci0tIAoy
LjExLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNw
aWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZl
bA==
