Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 601D690AA1
	for <lists+spice-devel@lfdr.de>; Sat, 17 Aug 2019 00:01:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C1046E3C4;
	Fri, 16 Aug 2019 22:01:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E2DB6E3C4
 for <spice-devel@lists.freedesktop.org>; Fri, 16 Aug 2019 22:01:51 +0000 (UTC)
Received: from cpe-107-184-2-226.socal.res.rr.com ([107.184.2.226]
 helo=brendan-dell.bslabs.net)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <bshanks@codeweavers.com>)
 id 1hykI9-00055d-DF; Fri, 16 Aug 2019 17:01:50 -0500
From: Brendan Shanks <bshanks@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Fri, 16 Aug 2019 15:01:26 -0700
Message-Id: <20190816220129.22027-1-bshanks@codeweavers.com>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: -106.0
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Add a cache to x11spice for SHM segments. v3 rebases, fixes
 a bug in the next-biggest-entry handling in shm_cache_get(), and adds a comment
 in display.h to explain the cache size. Brendan Shanks (3): Use unsigned
 int/size_t for display width/height/buffer size Create separate shm_segment_t
 struct for SHM segments Add cache for SHM segments 
 Content analysis details:   (-106.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -100 USER_IN_WHITELIST      From: address is in the user's white-list
 -6.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Message-Id:Date:Subject:Cc:To:From:Sender:
 Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pC7bPbal6eBHuMOV2rsN7HwgLH5wL26ob4dLVyM21gU=; b=VL7Gh7Cz9D65Hm0grrJtEy99m0
 aT4P91VvCdTezoO4ynZhVYsDzZ65w7gd+vqTGa4UrzMbs4fZPQHIzgMqeZHcQgAzG/BwYNE5ZCGnr
 wvJUkKoC0r1wUHR/bW14OJYvvhePHDyk9nbr4RAmt5be91M72V5uRLxzv+VdV9wdib9g=;
Subject: [Spice-devel] [PATCH x11spice v3 0/3] Add cache for SHM segments
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

QWRkIGEgY2FjaGUgdG8geDExc3BpY2UgZm9yIFNITSBzZWdtZW50cy4KCnYzIHJlYmFzZXMsIGZp
eGVzIGEgYnVnIGluIHRoZSBuZXh0LWJpZ2dlc3QtZW50cnkgaGFuZGxpbmcgaW4Kc2htX2NhY2hl
X2dldCgpLCBhbmQgYWRkcyBhIGNvbW1lbnQgaW4gZGlzcGxheS5oIHRvIGV4cGxhaW4gdGhlIGNh
Y2hlCnNpemUuCgpCcmVuZGFuIFNoYW5rcyAoMyk6CiAgVXNlIHVuc2lnbmVkIGludC9zaXplX3Qg
Zm9yIGRpc3BsYXkgd2lkdGgvaGVpZ2h0L2J1ZmZlciBzaXplCiAgQ3JlYXRlIHNlcGFyYXRlIHNo
bV9zZWdtZW50X3Qgc3RydWN0IGZvciBTSE0gc2VnbWVudHMKICBBZGQgY2FjaGUgZm9yIFNITSBz
ZWdtZW50cwoKIGRvYy9zcGljZV9pbmRlbnQgfCAgIDEgKwogc3JjL2Rpc3BsYXkuYyAgICB8IDIw
NyArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLQogc3JjL2Rp
c3BsYXkuaCAgICB8ICAyOSArKysrLS0tCiBzcmMvc2Nhbi5jICAgICAgIHwgICAyICstCiBzcmMv
c2Vzc2lvbi5jICAgIHwgICAyICstCiBzcmMvc3BpY2UuYyAgICAgIHwgICAyICstCiA2IGZpbGVz
IGNoYW5nZWQsIDIwMSBpbnNlcnRpb25zKCspLCA0MiBkZWxldGlvbnMoLSkKCi0tIAoyLjE3LjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRl
dmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
