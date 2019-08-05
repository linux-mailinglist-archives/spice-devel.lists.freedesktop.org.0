Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E0218258D
	for <lists+spice-devel@lfdr.de>; Mon,  5 Aug 2019 21:27:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C634C6E14A;
	Mon,  5 Aug 2019 19:27:13 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81B676E14A
 for <spice-devel@lists.freedesktop.org>; Mon,  5 Aug 2019 19:27:12 +0000 (UTC)
Received: from jwhite.mn.codeweavers.com ([10.69.137.101])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1huidk-0006Rw-BU
 for spice-devel@lists.freedesktop.org; Mon, 05 Aug 2019 14:27:29 -0500
From: Jeremy White <jwhite@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Mon,  5 Aug 2019 14:27:03 -0500
Message-Id: <20190805192707.18261-1-jwhite@codeweavers.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MxyUgKCc91qczo3zW88MhHiwks+toBqye0/2WejJrAM=; b=DY1/8uBcWAnE5VRF1Rx2VlQnTR
 KiWPlDgj+LfKBvejRfi99iT80ZDqPGeJrRGcqHro/L0IUUpReEBoP+W/wTEVZwF4WPj3QNuIeLkao
 pg7r6f0SeoAhGXbjegJim0O/wpXKt2wE+tmVytzMgGIyXlQb9LZyY2T8FbZ3cfbN6REA=;
Subject: [Spice-devel] [PATCH spice-html5 0/4] Improve spice-html5 keyboard
 code
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

VGhpcyBpcyBlZmZlY3RpdmVseSB2MiBvZiAnQWRqdXN0IHRoZSBwcmVzZW50YXRpb24gb2YgdHdv
IGJ5dGUgc2NhbiBjb2Rlcy4nCgpJdCBicmVha3Mgb3V0IGEgcGFydCBvZiB0aGUgcGF0Y2ggc2Vw
YXJhdGVseS4gIEluIHJldmlld2luZyB0aGlzLApJIGNhdWdodCBhIG51bWJlciBvZiBvdGhlciBp
c3N1ZXMuICBPbmUgd2FycmFudGVkIGEgcGF0Y2ggKGluY2x1ZGVkKS4KRm9yIHRoZSByZXN0LCBJ
IGNob3NlIHRvICdmaXgnIGl0IGJ5IHVwZGF0aW5nIHRoZSBkb2N1bWVudGF0aW9uLAp3aGljaCB3
YXMgYSBiaXQgb3V0IG9mIGRhdGUuCgpUaGUgb3JpZ2luYWwgcGF0Y2ggaGFzIGl0J3MgY29tbWVu
dCB0d2Vha2VkLiBGcmVkaWFubyBoYWQgYSBzcGVjaWZpYyByZXF1ZXN0IHRvCm5vdCBkbyB0aGUg
KDw8IDgpIG1lY2hhbmljIG9uIHRoZSBzeW1ib2xzOyBJIGhhdmUgbm90IGNoYW5nZWQgdGhhdCwK
YXMgSSBwcmVmZXIgdGhhdCBleHByZXNzaW9uLgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZl
bEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
