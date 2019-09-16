Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB570B40E5
	for <lists+spice-devel@lfdr.de>; Mon, 16 Sep 2019 21:13:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B1A36EA3F;
	Mon, 16 Sep 2019 19:13:48 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC7216EA3A
 for <spice-devel@lists.freedesktop.org>; Mon, 16 Sep 2019 19:13:46 +0000 (UTC)
Received: from jwhite.mn.codeweavers.com ([10.69.137.101])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1i9wRV-0003Nb-Tn
 for spice-devel@lists.freedesktop.org; Mon, 16 Sep 2019 14:13:45 -0500
From: Jeremy White <jwhite@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 16 Sep 2019 14:13:27 -0500
Message-Id: <20190916191333.27139-5-jwhite@codeweavers.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190916191333.27139-1-jwhite@codeweavers.com>
References: <20190916191333.27139-1-jwhite@codeweavers.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=acbaRSXuX8gc9SomApQ8WeX3Da3LuL68RryH19vtNCs=; b=FAso+fyOu8s0IETjqh52pJvgcT
 ZeuiW0kUPDD2tIyY4SlQNH229mJhVGhH92717EtnYdgH9sQRTLvaCQ/hOqVFs9XefyEJzRHkldh2d
 OI//Rd8hzQMS5mLtIUAHStRe1IBa7YqZvR+dBTiaUFQXxe0qIJAuKnbqReOh2ehttfRQ=;
Subject: [Spice-devel] [PATCH x11spice 04/10] Enable warnings for
 spice-video-dummy.
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

RnJvbTogSGVucmkgVmVyYmVldCA8aHZlcmJlZXRAY29kZXdlYXZlcnMuY29tPgoKU2lnbmVkLW9m
Zi1ieTogSGVucmkgVmVyYmVldCA8aHZlcmJlZXRAY29kZXdlYXZlcnMuY29tPgpTaWduZWQtb2Zm
LWJ5OiBKZXJlbXkgV2hpdGUgPGp3aGl0ZUBjb2Rld2VhdmVycy5jb20+Ci0tLQogc3BpY2Utdmlk
ZW8tZHVtbXkvc3JjL01ha2VmaWxlLmFtIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvc3BpY2UtdmlkZW8tZHVtbXkvc3Jj
L01ha2VmaWxlLmFtIGIvc3BpY2UtdmlkZW8tZHVtbXkvc3JjL01ha2VmaWxlLmFtCmluZGV4IDZi
ZWZhNDZiLi4xZGM0ZGY4ZSAxMDA2NDQKLS0tIGEvc3BpY2UtdmlkZW8tZHVtbXkvc3JjL01ha2Vm
aWxlLmFtCisrKyBiL3NwaWNlLXZpZGVvLWR1bW15L3NyYy9NYWtlZmlsZS5hbQpAQCAtMjUsNyAr
MjUsNyBAQAogIyBfbGFkaXIgcGFzc2VzIGEgZHVtbXkgcnBhdGggdG8gbGlidG9vbCBzbyB0aGUg
dGhpbmcgd2lsbCBhY3R1YWxseSBsaW5rCiAjIFRPRE86IC1ub3N0ZGxpYi8tQnN0YXRpYy8tbGdj
YyBwbGF0Zm9ybSBtYWdpYywgbm90IGluc3RhbGxpbmcgdGhlIC5hLCBldGMuCiAKLUFNX0NGTEFH
UyA9ICQoWE9SR19DRkxBR1MpICQoUENJQUNDRVNTX0NGTEFHUykKK0FNX0NGTEFHUyA9ICQoQkFT
RV9DRkxBR1MpICQoWE9SR19DRkxBR1MpICQoUENJQUNDRVNTX0NGTEFHUykKIAogc3BpY2VkdW1t
eV9kcnZfbGFfTFRMSUJSQVJJRVMgPSBzcGljZWR1bW15X2Rydi5sYQogc3BpY2VkdW1teV9kcnZf
bGFfTERGTEFHUyA9IC1tb2R1bGUgLWF2b2lkLXZlcnNpb24KLS0gCjIuMjAuMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGlu
ZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
